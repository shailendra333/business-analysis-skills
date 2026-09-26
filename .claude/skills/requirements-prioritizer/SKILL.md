---
name: requirements-prioritizer
description: >-
  Use when there are too many requirements for one release, a backlog or
  scope cut is needed, or tradeoff decisions need a disciplined basis beyond
  opinion. Scores each requirement across value, risk reduction, dependency
  centrality, urgency, and effort sensitivity, proposes Must/Should/Could/
  Won't or equivalent categories (see moscow-prioritisation for the full
  negotiation method), highlights low-value-but-high-cost items, and
  suggests a release cut line with rationale. Produces priority-ranked
  requirements, a MoSCoW-equivalent classification, and cut-line suggestions.
track: requirements-and-specification
---
# requirements-prioritizer

## Purpose
Prioritize requirements using impact, risk, dependency, stakeholder value, and delivery sequencing.

## Trigger this skill when
- There are too many requirements for one release.
- A backlog or scope cut is needed.
- Tradeoff decisions need a disciplined basis.

## Expected inputs
- requirements
- business goals
- constraints
- dependencies
- risks

## Deliverables
- priority-ranked requirements
- MoSCoW or equivalent classification
- cut-line suggestions

## Operating procedure
1. Score each requirement across value, risk reduction, dependency centrality, urgency, and effort sensitivity.
2. Propose Must/Should/Could/Won't or equivalent categories.
3. Highlight items that are low-value but high-cost or high-risk.
4. Suggest a release cut line and rationale.

## Guardrails / Quality gates
- Priority rationale is explicit.
- Dependencies are respected.
- Critical compliance/security requirements are not accidentally demoted.

## Handoff targets
- definition-of-done-drafter
- project-planning packs later
- requirements-traceability-starter

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
See also: docs/ba/templates/requirements-register-template.md (Priority column)
```md
## Summary
## Findings
## Structured outputs
## Assumptions
## Constraints
## Open questions
## Recommended next skill
```
