---
name: assumptions-constraints-log
description: >-
  Use when project framing, requirements, or a business case rests on unstated
  beliefs, or when hard limits (budget, regulation, legacy systems, deadlines)
  are scattered across documents instead of tracked in one place. Scans
  upstream artifacts for unverified "presumably..." language and separates
  true assumptions (beliefs that could turn out wrong, each rated by
  likelihood-wrong and impact-if-false) from constraints (external limits that
  are not beliefs and cannot be negotiated away). Produces an assumptions
  register, a constraints register, and a watchlist of the items most likely
  to invalidate the plan if left unchecked.
track: quality-check
---
# assumptions-constraints-log

## Purpose
Extract and separate assumptions from constraints, rating each so the highest-risk unknowns are visible before they cause rework.

## Trigger this skill when
- Project framing, a business case, or requirements reference unstated beliefs ("presumably users have X", "assuming the vendor supports Y").
- Constraints are scattered across multiple documents instead of tracked in one register.
- A decision is about to be locked in and the team needs to know what it's still trusting without evidence.

## Expected inputs
- The artifact(s) to scan: problem statement, requirements set, process model, business case, or workshop notes.
- Known hard constraints already stated explicitly (budget, deadline, regulatory, technical/legacy).
- Project context and risk tolerance (how much unverified assumption is acceptable at this stage).

## Operating procedure
1. Define the two categories precisely before scanning, so items don't get miscategorized:
   - **Assumption**: a belief treated as true without current evidence. It could turn out to be wrong. Every assumption gets a *likelihood-wrong* rating (low/medium/high) and an *impact-if-false* rating (low/medium/high).
   - **Constraint**: an external hard or soft limit (regulatory, contractual, budget, timeline, technical/legacy) that is not a belief — it doesn't get "verified true or false," it gets tracked as a boundary the solution must respect.
2. Scan every upstream artifact line by line for unstated "presumably...", "should be fine", "I assume", "obviously", "as usual" language — these phrases are the tell that an assumption is hiding unstated.
3. Extract each assumption and constraint verbatim with its source (document + section/quote), so it can be traced back later.
4. Rate each assumption's likelihood-wrong × impact-if-false; anything rated high on both goes on the watchlist.
5. Cross-check constraints against each other for conflicts (e.g., a deadline constraint that conflicts with a regulatory review-time constraint) and flag the conflict rather than silently picking one.
6. Recommend a targeted verification action per high-risk assumption (who can confirm it, and how) rather than just flagging it as risky.

## Deliverables
- Assumptions register: assumption, source, likelihood-wrong, impact-if-false, verification action, owner.
- Constraints register: constraint, type (regulatory/budget/timeline/technical/contractual), source, hard or soft, owner.
- Watchlist: the assumptions rated high×high, with a one-line "what breaks if this is false."

## Guardrails / Quality gates
- Never record a constraint as if it were an assumption to be "verified" — constraints are tracked, not tested.
- Every assumption must have both ratings filled in; an unrated assumption is not complete.
- Do not invent assumptions that aren't actually present in the source material — only extract what's really there, implicitly or explicitly.
- Conflicting constraints must be surfaced explicitly, not resolved silently by the skill.

## Handoff targets
- evidence-gap-review — to plan how the watchlist's high-risk assumptions actually get verified.
- requirements-quality-check — traceable requirements should reference which assumptions/constraints they depend on.
- business-problem-framing / requirements-elicitation — upstream skills whose output is the usual scan target.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not blend assumptions and constraints into one undifferentiated list.
- Do not skip the likelihood/impact ratings "to save time" — that's the entire value of the register.
- Do not rewrite the source artifact; only extract and log.
- Do not treat a low-likelihood-wrong assumption as safe to ignore if its impact-if-false is high — flag it anyway.

## Minimum output skeleton
```md
## Assumptions register
| ID | Assumption | Source | Likelihood wrong | Impact if false | Verification action | Owner |
|----|-----------|--------|-------------------|------------------|----------------------|-------|

## Constraints register
| ID | Constraint | Type | Source | Hard/Soft | Owner |
|----|-----------|------|--------|-----------|-------|

## Watchlist
- 

## Open questions
```
Full fillable version: docs/ba/templates/assumptions-and-constraints-template.md

## Worked mini-example
Source line: "Assuming the payments vendor's sandbox behaves like production." → Assumption, likelihood-wrong: medium, impact-if-false: high (release-blocking if sandbox diverges) → verification action: run one production-mode test transaction before sign-off.
