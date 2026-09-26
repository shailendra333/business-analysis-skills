---
name: process-model-spec
description: >-
  Use when a business process needs to be visualised consistently — as-is or
  to-be — and actors, decisions, and outcomes must be unambiguous enough for
  a UML activity diagram or BPMN model to be drawn the same way by anyone.
  Specifies swimlanes per actor and BPMN-lite notation (start/end events,
  tasks, exclusive/parallel gateways with every branch explicitly labeled by
  its condition), and requires every path to reach a defined end event.
  Produces a process narrative, task/actor/decision breakdown, and a model
  spec ready to diagram.
track: atomic-technique
---
# process-model-spec

## Purpose
Specify a process model precisely enough that a UML activity diagram or BPMN model can be drawn consistently by anyone, with no ambiguity about actors, decision branches, or endpoints.

## Trigger this skill when
- A process must be visualised and today only exists as prose or tribal knowledge.
- As-is or to-be work needs an explicit flow definition, not a narrative description.
- Actors, decision points, and outcomes need to be pinned down before a diagram is drawn (so the diagram is a direct rendering of the spec, not a separate interpretation).

## Expected inputs
- A process narrative or observed/interview-derived process description.
- The actors involved (roles, not necessarily named individuals).
- Whether this is an as-is model (documenting current state) or a to-be model (documenting intended future state).

## Operating procedure
1. Assign one swimlane per actor/role — every step in the process belongs to exactly one lane; a step with no clear owning actor is a gap to flag, not to guess at.
2. Use BPMN-lite notation: a single **start event**, one or more **end events**, **tasks** (single unit of work by one actor), and **gateways** for branching — exclusive (only one path taken) or parallel (all paths taken concurrently).
3. For every exclusive gateway, label each outgoing branch with the exact condition that routes to it (e.g. "claim amount > $10,000" / "claim amount <= $10,000") — an unlabeled branch is not acceptable.
4. Trace every path from the start event and confirm it reaches a defined end event; a path that dead-ends without resolution is a modelling gap, not an acceptable omission.
5. Distinguish a **decision** (a business rule or judgment call, belongs in a gateway) from a **handoff** (work passing from one actor's lane to another's, same task continuing) — conflating the two produces diagrams that misrepresent where the actual decision-making happens.
6. For a to-be model, explicitly annotate what changed relative to the as-is model and why (removed step, new gateway, changed owner) so the improvement rationale travels with the model.

## Deliverables
- Process narrative (plain-language walkthrough).
- Task/actor/decision/outcome breakdown table.
- As-is or to-be model spec (swimlanes, events, tasks, labeled gateways) ready to render as a diagram.
- Modelling assumptions (anywhere the source material was ambiguous about actor or condition).

## Guardrails / Quality gates
- Every task has exactly one owning lane/actor.
- Every gateway branch carries an explicit, checkable condition — no unlabeled arrows.
- Every path reaches an end event; no dangling steps.
- Decisions (business rules/judgment) and handoffs (actor-to-actor continuation) are visually and structurally distinct.

## Handoff targets
- `as-is-process-investigator` — supplies the source material this skill turns into a formal spec.
- `to-be-process-designer` — consumes the as-is spec to design the improved version.
- `business-rule-extractor` — gateway conditions often reveal undocumented business rules worth extracting formally.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Drawing a gateway branch without a labeled condition.
- Leaving a path that never reaches an end event.
- Assigning a step to "the system" or "the team" instead of a specific actor lane.
- Treating a handoff as if it were a decision gateway (or vice versa).

## Minimum output skeleton
```md
## Process narrative
## Swimlanes (actors)
## Task/decision/outcome table
| Step | Actor/lane | Type (task/gateway/event) | Condition (if gateway) | Next step |
|---|---|---|---|---|
## Modelling assumptions
```

## Worked mini-example
Step: "Claim routed for review." Gateway (exclusive): "claim amount > $10,000" -> Senior Adjuster lane; "claim amount <= $10,000" -> Adjuster lane. Both paths eventually reach the end event "Claim decision recorded." Handoff (not a gateway): Adjuster's approved claim passes to Payments lane for disbursement — no decision is made at that step, so it is modeled as a lane transition, not a gateway.
