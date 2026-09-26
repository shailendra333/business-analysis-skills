---
name: process-modelling-and-improvement
description: >-
  Use when a business process is inefficient, inconsistent, or poorly
  understood, when handoffs, roles, or decision points are unclear, or when
  stakeholders need an as-is/to-be comparison before committing to a
  redesign. Orchestrates as-is-process-investigator and process-model-spec
  to document the current process, surfaces bottlenecks and failure points,
  then runs to-be-process-designer and process-model-spec again to define
  and diagram an improved target process. Produces an as-is spec, a to-be
  spec, a gap analysis, and diagram-ready swimlane/BPMN-lite instructions.
track: workflow
---
# process-modelling-and-improvement

## Purpose
Understand a current business process rigorously, surface its real pain points, and design an improved target process — by sequencing the as-is/to-be and process-modelling skills in this pack rather than jumping straight to a redesign.

## Trigger this skill when
- Process inefficiency, inconsistency, or excessive handoffs are a core reported issue.
- As-is/to-be modelling is explicitly needed to justify or scope a change.
- Roles, decisions, or ownership within an existing process are not well understood by the team asking for help.

## Expected inputs
- Project or problem context, and why the process is under scrutiny now.
- Goals and constraints on any redesign (budget, systems, regulatory).
- Known stakeholders, systems, and documents describing the process today.
- Level of formality required (a quick pain-point list vs. full diagram-ready specs).

## Operating procedure
This is an orchestration skill: it sequences other skills in this pack rather than re-deriving modelling notation itself.
1. Run `as-is-process-investigator` to document the current process: business event, actors, boundaries, trigger, and outcome, plus every task, decision, and handoff as it actually happens (not as documented policy claims it happens).
2. Feed that investigation into `process-model-spec` to produce a diagram-ready as-is spec (swimlanes per actor, BPMN-lite gateways with labeled branches).
3. Identify bottlenecks, duplication, ambiguity, and failure points directly from the as-is spec — each pain point should cite the specific step or gateway it occurs at.
4. Challenge assumptions and prior piecemeal modifications: ask why each workaround exists before assuming it should be preserved.
5. Run `to-be-process-designer` to design the improved process with explicit, named improvements (which step is removed, merged, automated, or re-ordered, and why).
6. Feed the to-be design into `process-model-spec` again to produce the diagram-ready to-be spec.
7. Compare as-is and to-be step-by-step via an explicit gap list — don't just present two diagrams and expect the reader to spot the difference.
8. Capture benefits, risks, and change/migration implications (who needs retraining, what systems change, what the cutover risk is).

## Deliverables
- As-is process spec (swimlanes, tasks, decisions, handoffs) — see `docs/ba/templates/process-analysis-template.md`
- To-be process spec (same shape, improved) — see `docs/ba/templates/process-analysis-template.md`
- Gap analysis (as-is vs to-be, step-by-step)
- Improvement actions with owners
- Diagram-ready instructions for UML activity or BPMN tooling

## Guardrails / Quality gates
- Document the process as it is actually performed, not as policy says it should be — this is what `as-is-process-investigator` exists to enforce.
- Explicitly separate fact (observed), inference, and assumption throughout the as-is documentation.
- Every to-be improvement must trace to a specific as-is pain point; don't introduce redesign ideas with no corresponding gap.
- Where stakeholders disagree about how the current process actually works, record the disagreement rather than picking one version silently.

## Handoff targets
- `requirements-elicitation` — where the to-be process implies new system functionality that needs requirements gathering.
- `benefit-hypothesis-writer` — to turn the captured benefits into a testable benefit hypothesis before investment is committed.
- `deliverable-consistency-check` — to confirm actor names and step references are consistent between the as-is spec, to-be spec, and gap list before handoff.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing or smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not design the to-be process before the as-is process and its pain points are documented and agreed.
- Do not silently "fix" an ambiguous handoff in the as-is diagram — flag it as a finding instead.
- Do not present a gap list that is really just a restatement of the to-be diagram; each gap must name the as-is problem it resolves.
- Do not skip the migration/change-impact capture in step 8 — a redesign without a change plan is incomplete.

## Minimum output skeleton
```md
## Business event, actors, boundaries
## As-is process (swimlanes, decisions, handoffs)
## Pain points (cite specific step/gateway)
## To-be process (swimlanes, decisions, handoffs)
## Gap analysis (as-is -> to-be, step by step)
## Benefits, risks, change implications
## Diagram-ready notes
```
