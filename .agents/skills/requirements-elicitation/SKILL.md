---
name: requirements-elicitation
description: >-
  Use when requirements are incomplete, unreliable, or contested, and the
  real decision is HOW to gather them, not yet what they are. Chooses the
  right elicitation mix across interviews (depth and political nuance),
  questionnaires (scale and quantification), workshops (real-time alignment
  and conflict resolution), observation (tacit behavior and workarounds),
  and prototypes (interaction ambiguity) based on the actual constraint in
  play, then produces the concrete plans for each chosen technique.
  Produces an elicitation strategy plus interview/workshop/questionnaire
  plans and a consolidated findings pack.
track: workflow
---
# requirements-elicitation

## Purpose
Decide which elicitation techniques actually fit the situation — not run all of them by default — and produce the concrete plans needed to execute the chosen mix.

## Trigger this skill when
- Requirements are incomplete, contradictory, or based on secondhand assumptions.
- Stakeholders need structured elicitation rather than an ad-hoc conversation.
- The open question is *how* to gather reliable evidence, not simply what the requirements say today.

## Expected inputs
- Project or problem context and what decision the requirements will support.
- Goals and constraints (timeline, stakeholder availability, political sensitivity).
- Known stakeholders, systems, and existing documents.
- Level of formality required.

## Operating procedure
The core of this skill is the *choice* of technique, not a fixed checklist — pick based on what the situation actually needs:
1. Clarify the elicitation objective: what decision or artifact depends on the answer, and by when.
2. For each candidate technique, match it to its actual strength rather than defaulting to habit:
   - **Interviews** (`interview-design`) — when you need depth, nuance, or access to politically sensitive information a group setting would suppress.
   - **Questionnaires** (`questionnaire-design`) — when you need to quantify how widespread an opinion or behavior is across a population too large to interview individually.
   - **Workshops** (`workshop-design`) — when conflicting stakeholder views need real-time negotiation and alignment, not just collection.
   - **Observation** (`observation-study-plan`) — when the behavior of interest is tacit or the stated process ("espoused") is suspected to differ from what people actually do ("process-in-use").
   - **Prototypes** (`prototype-elicitation`) — when textual requirements are insufficient because the ambiguity is about interaction or visual behavior, not information content.
3. Select the minimum mix that covers the objective — recommending every technique for every project is itself a failure mode.
4. Produce the concrete plan for each chosen technique (interview question bank, workshop agenda, questionnaire instrument, observation protocol, or prototype fidelity choice).
5. Consolidate resulting findings into a structured discovery pack, tagged by source technique.
6. Highlight contradictions between sources, stakeholders not yet reached, and follow-up actions.

## Deliverables
- Elicitation strategy (technique mix and rationale)
- Interview pack(s), workshop agenda, questionnaire/observation plan, or prototype recommendation — whichever were selected
- Consolidated findings summary, tagged by source
- Contradictions and follow-up-action list

## Guardrails / Quality gates
- Every technique in the plan must be justified by the specific gap it closes — "we always run a workshop" is not a justification.
- Explicitly separate fact (directly observed/stated), inference, and assumption when consolidating findings.
- Where two sources disagree (e.g. an interview claim contradicted by observation), record the conflict rather than picking one silently.
- The consolidated pack must be structured enough that the next skill (e.g. `proto-requirements-normalizer`) can consume it without re-interviewing anyone.

## Handoff targets
- `proto-requirements-normalizer` — to convert consolidated free-text findings into structured requirement rows.
- `ambiguity-hunter` — to check the elicited requirements for remaining unclear language before they're finalized.
- `requirements-gap-auditor` — to identify what elicitation still hasn't covered.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and contradiction instead of guessing or smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not default to interviews-for-everything or workshops-for-everything without matching technique to actual need.
- Do not treat questionnaire results as authoritative without checking response rate and sample bias.
- Do not run an observation study and then substitute the espoused process for what was actually observed.
- Do not consolidate findings into prose only — the discovery pack must be structured for reuse by downstream requirements skills.

## Minimum output skeleton
```md
## Elicitation objective
## Technique mix and rationale
## Interview / workshop / questionnaire / observation / prototype plan(s)
## Findings by source
## Contradictions
## Follow-up actions
```
