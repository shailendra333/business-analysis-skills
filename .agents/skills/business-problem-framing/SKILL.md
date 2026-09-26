---
name: business-problem-framing
description: >-
  Use when a project is being initiated, a team is jumping straight to a
  named solution before the underlying problem is validated, or the scope,
  objectives, and assumptions behind an initiative are still blurry.
  Orchestrates problem-statement-refiner, stakeholder-register,
  power-interest-grid, and assumptions-constraints-log into one sequence
  that separates symptoms from root causes, defines success criteria and
  scope boundaries, and compares candidate solution directions before any
  one of them is committed to. Produces a problem-framing pack: problem
  statement, scope statement, assumptions/constraints log, and an options
  summary with a recommended framing.
track: workflow
---
# business-problem-framing

## Purpose
Frame a business problem or opportunity rigorously before anyone commits to a solution, by sequencing the atomic problem-framing and stakeholder skills in this pack into one coherent pass.

## Trigger this skill when
- A project or initiative is being initiated and no validated problem statement exists yet.
- The team (or a sponsor) is already naming a solution ("build X") before the problem, objectives, or constraints have been stated.
- Scope, objectives, assumptions, and viable options are blurry or contested among stakeholders.

## Expected inputs
- The business situation or trigger event, in whatever raw form it exists (a request, an incident, a strategy memo).
- Known goals, constraints, and non-negotiables.
- Known stakeholders, systems, and documents that bear on the problem.
- The level of formality/rigor required (a one-page framing vs. a full pack).

## Operating procedure
This is an orchestration skill: it sequences other skills in this pack rather than re-deriving their techniques.
1. Run `problem-statement-refiner` first, even if a problem statement already exists — restate the situation, distinguish symptoms from root causes, and produce a validated one-paragraph problem statement before anything else proceeds.
2. Run `stakeholder-register` to capture who is affected, who decides, and who must be consulted, then `power-interest-grid` to classify them for engagement strategy.
3. Run `assumptions-constraints-log` to surface unstated "presumably..." beliefs and hard constraints (budget, regulatory, technical) before objectives are locked.
4. Define objectives, desired outcomes, and success criteria explicitly, tied back to the root cause from step 1, not the symptom.
5. Define in-scope and out-of-scope boundaries in writing.
6. Only now generate multiple candidate solution directions — never before steps 1-5 are done.
7. Compare options against business need, constraints, and feasibility, flagging which stakeholders (from step 2) each option most affects.
8. End with a recommended framing, the options considered and rejected (with reasons), and unresolved questions.

## Deliverables
- Problem statement (see `problem-statement-refiner`; should follow `docs/ba/templates/problem-statement-template.md`)
- Stakeholder register and power-interest classification
- Assumptions/constraints log
- Objective and success-criteria set
- Scope statement (in/out of scope)
- Options summary with recommended framing

## Guardrails / Quality gates
- Never let a named solution enter the conversation before the problem statement (step 1) is validated — this is the single most common failure mode this skill exists to prevent.
- Explicitly separate fact, inference, and assumption throughout; don't let step 4's objectives smuggle in unvalidated assumptions from step 3.
- Where stakeholders disagree on the problem itself, record the disagreement rather than smoothing it into a false consensus.
- Every artifact produced must be inspectable, editable, and reusable by the next skill in the chain — not prose-only.

## Handoff targets
- `requirements-elicitation` — once the problem, scope, and objectives are framed, decide how to gather the detailed requirements.
- `strategy-analysis` — when the framing surfaces significant external/competitive uncertainty that needs its own lens before committing to a direction.
- `requirements-packager` — once downstream requirements work exists, to assemble it against this framing's scope statement.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing or smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not skip straight to step 6 (candidate solutions) because a sponsor already has a preferred answer.
- Do not treat "no stakeholders disagreed" as validation if only one stakeholder was actually consulted.
- Do not conflate a symptom ("support tickets are up") with the root cause ("the last release changed a workflow without notice").
- Do not leave the options summary without an explicit recommendation — an unresolved options list is not a completed framing.

## Minimum output skeleton
```md
## Problem statement
## Root cause vs symptom
## Stakeholders and engagement strategy
## Assumptions and constraints
## Objectives and success criteria
## Scope (in / out)
## Options considered
## Recommended framing
## Open questions
```
