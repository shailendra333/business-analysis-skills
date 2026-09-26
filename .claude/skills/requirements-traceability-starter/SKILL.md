---
name: requirements-traceability-starter
description: >-
  Use when a project is becoming large enough that requirement drift is a
  risk, when multiple artifacts or teams are involved, or when change-impact
  visibility will be needed later. Assigns stable IDs to goals, requirements,
  and acceptance criteria, links each requirement to its source goal or
  stakeholder need, links criteria to requirements with placeholders for
  future design/test links, and flags requirements with no source or no
  acceptance coverage. Produces a traceability matrix starter, an ID scheme,
  and a coverage-gaps list.
track: requirements-and-specification
---
# requirements-traceability-starter

## Purpose
Create an initial traceability structure linking goals, requirements, acceptance criteria, design items, and tests.

## Trigger this skill when
- A project is becoming large enough that requirement drift is a risk.
- There will be multiple artifacts or teams.
- You need change impact visibility later.

## Expected inputs
- goals
- requirements
- acceptance criteria
- design placeholders

## Deliverables
- traceability matrix starter
- ID scheme
- coverage gaps

## Operating procedure
1. Assign stable IDs to goals, requirements, and criteria.
2. Link each requirement to source goal/stakeholder need.
3. Link criteria to requirements and note future design/test links.
4. Flag requirements with no source or no acceptance coverage.

## Guardrails / Quality gates
- IDs are stable and readable.
- Every requirement has a source.
- Uncovered requirements are explicitly flagged.

## Handoff targets
- requirements-gap-auditor
- test-design packs later
- change-impact work later

## Output style
- Be explicit about uncertainty.
- Prefer short, testable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not invent stakeholder intent.
- Do not convert preferences into mandatory requirements without evidence.
- Do not hide unresolved ambiguity behind polished wording.
- Do not collapse functional, non-functional, and business rule concerns into one blob.

## Minimum output skeleton
Full fillable version: docs/ba/templates/traceability-matrix-template.csv
```md
## Summary
## Findings
## Structured outputs
## Assumptions
## Constraints
## Open questions
## Recommended next skill
```
