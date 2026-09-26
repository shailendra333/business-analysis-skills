---
name: stakeholder-analysis
description: >-
  Use when multiple parties shape requirements or delivery, when politics,
  conflict, or unclear authority are affecting a project, or when
  accountability and engagement need to be formalised rather than handled
  ad hoc. Sequences stakeholder-register, power-interest-grid,
  stakeholder-communication-planner, and raci-matrix into one management
  pack — the difference between a mere list of names and a working
  engagement and governance plan. Produces a stakeholder register,
  power-interest classification, RACI matrix, conflict map, and a
  cadence-based engagement plan.
track: workflow
---
# stakeholder-analysis

## Purpose
Build a practical stakeholder management pack — not just a list of names — by sequencing the register, classification, communication, and governance skills in this pack.

## Trigger this skill when
- Multiple parties shape requirements or delivery outcomes.
- Politics, conflict, or unclear authority are already visibly affecting the work.
- Accountability and engagement need formal structure rather than ad hoc handling.

## Expected inputs
- Project or problem context and what decisions stakeholders will influence.
- Goals and constraints that shape who has authority over what.
- Known stakeholders, systems, and documents.
- Level of formality required.

## Operating procedure
A stakeholder list alone is insufficient — this skill's job is to turn a list into a governance and engagement pack:
1. Run `stakeholder-register` to identify all stakeholder groups and key individuals, capturing interest, influence/power, attitude, and current vs. desired engagement level.
2. Run `power-interest-grid` on the register to classify each stakeholder into one of the four engagement strategies (Manage Closely / Keep Satisfied / Keep Informed / Monitor).
3. Run `raci-matrix` for the project's major tasks or deliverables, using the register to assign Responsible/Accountable/Consulted/Informed — this is what turns "who cares" (steps 1-2) into "who decides and who does" (step 3).
4. Run `stakeholder-communication-planner` to turn the power-interest classification into a concrete cadence, channel, and format per stakeholder segment.
5. Highlight conflicts, blockers, and negotiation needs explicitly — e.g. two stakeholders both marked Accountable on the same RACI row, or a Manage Closely stakeholder with no communication cadence assigned.
6. Recommend an engagement plan that ties cadence to governance: which forums make decisions, which are informational only.

## Deliverables
- Stakeholder register (name/role, interest, power, attitude, engagement level)
- Power-interest grid classification
- RACI matrix for major tasks/deliverables
- Conflict map (naming specific unresolved authority or interest conflicts)
- Engagement plan (cadence, channel, format, owner per segment)

## Guardrails / Quality gates
- A stakeholder register with no power-interest classification and no RACI is a list, not a management pack — all three must exist together.
- Every RACI row must resolve to exactly one Accountable; a conflict here must be surfaced in the conflict map, not silently picked by the analyst.
- Where stakeholders visibly disagree about priorities or authority, record it as a conflict rather than smoothing it into a single "stakeholder view."
- Engagement cadence must be justified by the power-interest classification, not applied uniformly to everyone.

## Handoff targets
- `raci-rasci-builder` — where a plain RACI is too coarse and a distinct Support role is needed.
- `business-problem-framing` — to feed the stakeholder view back into problem scoping if this analysis surfaces a framing dispute.
- `requirements-elicitation` — once engagement posture is set, to decide how to gather requirements from each stakeholder segment appropriately.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface conflict instead of guessing or smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not stop at a stakeholder list and call it "stakeholder analysis" — the grid, RACI, and engagement plan are the actual deliverable.
- Do not assign RACI roles without validating them against the power-interest classification (a "Monitor" stakeholder should rarely be Accountable for anything).
- Do not apply one engagement cadence to all stakeholders regardless of their classification.
- Do not resolve a named authority conflict unilaterally — flag it for the project's actual decision-maker.

## Minimum output skeleton
```md
## Stakeholder register
## Power-interest classification
## RACI matrix
## Conflicts and blockers
## Engagement plan (cadence, channel, owner)
```
