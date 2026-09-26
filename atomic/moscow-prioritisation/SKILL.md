---
name: moscow-prioritisation
description: >-
  Use when a backlog, release, or proposal has more candidate scope than
  time or budget allows and stakeholders disagree on what matters most.
  Sorts items into Must/Should/Could/Won't using a precise definition of
  "Must" (cannot ship without it, not "very important"), forces an explicit
  negotiation and tie-break step when too many items are claimed as Must,
  and documents what was descoped and why. Produces a prioritised backlog
  with rationale per item and explicit scope/release implications.
track: atomic-technique
---
# moscow-prioritisation

## Purpose
Prioritise requirements or scope items into Must, Should, Could, and Won't-have, with a defensible rationale per item rather than a popularity vote.

## Trigger this skill when
- Scope must be constrained against a fixed deadline, budget, or release.
- Stakeholders are calling too many items "critical" and a forcing function is needed.
- A negotiation or tradeoff conversation needs a structured artifact to anchor it.

## Expected inputs
- The candidate list of scope items or requirements.
- The constraint driving prioritisation (date, budget, capacity).
- Known stakeholders and who has authority to make the final call on disputed items.

## Operating procedure
1. Define "Must" precisely before sorting anything: an item is Must only if its absence means the release/deliverable cannot ship or is not legally/safely usable — not "high value" or "wanted by a senior stakeholder."
2. Sort each item into Must / Should / Could / Won't-have (this time), stating the one-sentence reason for its bucket.
3. Count the Musts as a percentage of total scope. If Musts exceed roughly 60% of the list, treat this as a signal that "Must" is being used loosely — force a re-negotiation before proceeding, since a release where almost everything is Must has not actually been prioritised.
4. Where two Must items compete for the same constrained resource (time, one team, one system), apply an explicit tie-break in this order: (a) safety/legal/regulatory necessity, (b) irreversible cost of not doing it now vs. deferring, (c) dependency — does deferring this block other Musts?
5. For every Won't-have (this time), state explicitly what would need to change for it to be reconsidered next cycle — this prevents "Won't" from being read as "never."
6. Surface dependencies between items across buckets (a Could that a Must depends on effectively becomes a Must).

## Deliverables
- MoSCoW table (item, bucket, one-line rationale, dependencies).
- Explicit list of what was descoped and why.
- Release/scope implications (what the Must-only release looks like).

## Guardrails / Quality gates
- No item is Must without a stated reason tied to "cannot ship without."
- If Musts exceed ~60% of scope, the list must be re-negotiated, not accepted as-is.
- Every dependency between a lower-bucket item and a Must is captured, not left implicit.
- Ties between competing Musts are broken by the stated order (safety/legal > irreversible cost > dependency), not by seniority of whoever asked.

## Handoff targets
- `requirements-prioritizer` — when prioritisation needs a finer-grained scoring model than four buckets.
- `requirements-packager` — once the buckets are stable, to assemble the release-ready pack.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Letting "Must" mean "important to a stakeholder" instead of "cannot ship without."
- Accepting a list where almost everything is Must without forcing renegotiation.
- Resolving Must-vs-Must conflicts by seniority or volume rather than the stated tie-break order.
- Marking items Won't-have without stating the condition that would change that.

## Minimum output skeleton
```md
## MoSCoW table
| Item | Bucket | Rationale | Depends on |
|---|---|---|---|

## Descoped (Won't-have this time)
- Item — reconsider if: ...

## Release implications
```

## Worked mini-example
Item: "Export report to PDF." Claimed Must by one stakeholder. Test: does the release fail to ship without it? No — CSV export already satisfies the compliance requirement. Reclassified Should. Item: "Encrypt data at rest" — cannot ship without it for a regulated customer segment: Must, tie-break not needed (no competing Must for the same resource).
