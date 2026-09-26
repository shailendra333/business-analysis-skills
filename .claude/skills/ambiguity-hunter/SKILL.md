---
name: ambiguity-hunter
description: >-
  Use when a spec, story, or policy text uses flexible or subjective wording,
  when multiple teams could reasonably interpret the same requirement
  differently, or before a document heads to sign-off or implementation.
  Scans for subjective adjectives, overloaded nouns, missing units, missing
  actors, unclear referents, and hidden conditions, explains why each flagged
  segment is risky, and suggests a tighter rewrite or a clarifying question.
  Produces an ambiguity report, rewrite suggestions, and a question list.
track: requirements-and-specification
---
# ambiguity-hunter

## Purpose
Find ambiguous wording that makes a requirement unverifiable, inconsistent, or open to multiple interpretations.

## Trigger this skill when
- A spec uses flexible language.
- Multiple teams will interpret the same requirement.
- A document is heading toward sign-off or implementation.

## Expected inputs
- requirements
- stories
- spec sections
- policy text

## Deliverables
- ambiguity report
- rewrite suggestions
- question list

## Operating procedure
1. Scan for subjective adjectives, overloaded nouns, missing units, missing actors, unclear referents, and hidden conditions.
2. Flag each ambiguous segment and explain why it is risky.
3. Suggest a tighter rewrite or a clarifying question.

## Guardrails / Quality gates
- Every flag explains the actual ambiguity, not just that the wording is bad.
- Rewrites improve testability.
- Questions are specific enough to answer decisively.

## Handoff targets
- requirements-interrogator
- acceptance-criteria-writer
- requirements-conflict-checker

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
```md
## Summary
## Findings
## Structured outputs
## Assumptions
## Constraints
## Open questions
## Recommended next skill
```
