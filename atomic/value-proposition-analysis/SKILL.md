---
name: value-proposition-analysis
description: >-
  Use when an organisation's or product's value proposition feels vague,
  when a process redesign risks losing customer-value alignment, or when
  competing alternatives need customer-centric comparison. Applies
  Osterwalder's Value Proposition Canvas structure — customer jobs, pains,
  and gains on one side, pain relievers and gain creators on the other —
  and requires an explicit fit-check that every relief/creator claim maps
  to a named pain or gain rather than standing alone. Produces a value
  proposition canvas summary and a list of unfit or unsupported claims.
track: atomic-technique
---
# value-proposition-analysis

## Purpose
Clarify what value is delivered, to whom, and through which specific pain relievers or gain creators — and verify the fit between what's offered and what customers actually need.

## Trigger this skill when
- The value proposition of an organisation, product, or process redesign feels vague or assumed rather than stated.
- A process or product redesign risks drifting away from customer value.
- Two or more alternatives need a customer-centric (not just feature-centric) comparison.

## Expected inputs
- the customer segment in scope (a redesign can have several; analyze one segment at a time)
- known customer jobs, pains, and gains (from interviews, observation, or support/complaint data)
- the current or proposed offering's features
- any competing alternatives to compare against

## Operating procedure
1. Define the customer segment precisely — "customers" is too broad; name the specific segment this analysis covers.
2. Populate the customer side of the canvas: jobs (what the customer is trying to get done, functional/social/emotional), pains (what frustrates, blocks, or risks them today), gains (what outcome or benefit they're seeking beyond the bare job).
3. Populate the value side: pain relievers (how the offering specifically removes or reduces a named pain) and gain creators (how it specifically produces a named gain).
4. Run the fit-check: for every pain reliever and gain creator, confirm it maps to a specific, named pain or gain from step 2. A reliever/creator with no corresponding pain/gain is a feature in search of a need — flag it.
5. Identify any named pain or gain with no corresponding reliever/creator — that's an unmet need, and worth surfacing as a gap or opportunity.
6. If comparing alternatives, repeat the fit-check per alternative and compare fit density (proportion of pains/gains actually addressed), not just feature counts.

## Deliverables
- value proposition canvas summary (customer profile + value map)
- customer pains/gains/jobs, evidenced where possible
- fit-check results: unsupported claims and unmet needs
- proposition risks (fit gaps, unvalidated assumptions)

## Guardrails / Quality gates
- Every pain reliever/gain creator is checked against a named pain/gain — no floating claims.
- The customer segment is specific, not "all users."
- Pains/gains are evidenced (interview, observation, support data) where possible, and marked as assumed where not.
- Unmet needs (pains/gains with no reliever/creator) are surfaced explicitly, not silently dropped.

## Handoff targets
- business-problem-framing — when a fit gap reveals the real problem to solve
- swot-prioritisation — proposition risks often feed the Weaknesses/Threats quadrants

## Output style
- Be explicit about uncertainty — mark unvalidated pains/gains as assumptions.
- Prefer short, mapped statements ("Reliever X addresses Pain Y") over general claims.
- Surface unmet needs and unsupported claims instead of presenting only a tidy match.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not list features as "value" without mapping them to a named pain or gain.
- Do not analyze "all customers" as one segment when needs clearly diverge by segment.
- Do not hide an unmet need just because no current feature addresses it — that's often the most useful finding.
- Do not treat assumed pains/gains as validated without saying so.

## Minimum output skeleton
```md
## Customer segment
## Customer jobs / pains / gains
## Value map: pain relievers / gain creators
## Fit-check (mapped vs unmapped claims)
## Unmet needs
## Proposition risks
```

## Worked mini-example
Pain: "Users abandon signup after the third form page (evidenced by funnel data)." Reliever: "Reduce signup to one page" — fit confirmed, maps directly. Unfit example: "Offers dark mode" — no corresponding pain/gain found in customer research; flagged as unsupported.
