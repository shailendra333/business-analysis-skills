---
name: evidence-gap-review
description: >-
  Use when requirements or strategy work is being finalized, stakeholder
  claims conflict with each other, or a decision memo asserts conclusions
  that need to be checked against what's actually been verified. Tags every
  claim in an artifact as fact (directly observed/sourced), inference
  (reasoned from facts), assumption (unverified belief), or unknown (not yet
  investigated), then produces a targeted follow-up plan only for the
  assumption- and unknown-tagged items rather than a generic "get more
  evidence" recommendation.
track: quality-check
---
# evidence-gap-review

## Purpose
Find where conclusions in an artifact outrun the evidence actually behind them, and produce a targeted follow-up plan for exactly the gaps that matter.

## Trigger this skill when
- Requirements, a business case, or a strategy analysis is being finalized and needs a check before sign-off.
- Stakeholder claims conflict and it's unclear which version is actually evidenced.
- The team needs a concrete, prioritized follow-up plan rather than a vague "validate assumptions" action item.

## Expected inputs
- The artifact under review and every source it claims to draw from (interview notes, data, documents, prior decisions).
- Access to (or knowledge of) what evidence actually exists behind each claim, not just the claim itself.
- How much follow-up capacity exists (this shapes how many gaps can realistically be prioritized).

## Operating procedure
1. Extract every discrete claim in the artifact as an individual, checkable statement (a paragraph often contains several claims bundled together — separate them).
2. Tag each claim with exactly one of four labels:
   - **Fact**: directly observed, sourced, or documented — cite the source.
   - **Inference**: a reasoned conclusion drawn from stated facts (valid, but only as strong as the facts and the reasoning connecting them).
   - **Assumption**: an unverified belief presented as if settled.
   - **Unknown**: acknowledged or unacknowledged gap — nobody has actually investigated this yet.
3. For claims tagged Inference, check the reasoning chain explicitly: do the cited facts actually support this conclusion, or is there a leap?
4. For claims tagged Assumption or Unknown, do NOT just flag them — assess impact: if this turned out false/unresolved, what decision would change?
5. Rank the Assumption/Unknown items by impact × how cheap they'd be to verify, and produce a follow-up plan only for the highest-value subset — not a request to "verify everything."
6. Where stakeholder claims directly conflict, tag each side's claim separately and state explicitly that they contradict, rather than averaging or picking one silently.

## Deliverables
- Evidence-gap table: claim, tag (fact/inference/assumption/unknown), source or reasoning, impact if wrong/unresolved.
- Unsupported-claims list: the subset presented with unwarranted confidence.
- Follow-up plan: ranked list of what to verify next, how, and who.
- Conflict log: stakeholder claims that directly contradict each other.

## Guardrails / Quality gates
- Every claim gets exactly one tag — if a claim seems to mix fact and inference, split it into two claims first.
- Do not produce a follow-up plan item for every Assumption/Unknown — only the ones with real decision impact; a long undifferentiated list is not useful.
- Do not silently resolve a stakeholder conflict by picking a side; log it as a conflict.
- "Inference" is not automatically weaker than "fact" — the check is whether the reasoning is sound, not just the label.

## Handoff targets
- assumptions-constraints-log — the Assumption-tagged items feed directly into that register.
- requirements-quality-check — for requirements specifically, evidence gaps often show up as untestable or unfeasible items.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not tag a claim "fact" just because it's stated confidently — check for an actual source.
- Do not treat every gap as equally urgent; prioritize by decision impact.
- Do not rewrite the artifact's conclusions; report the gap and let the owner decide.
- Do not merge the "conflicting claims" case into a single averaged claim — keep both sides visible.

## Minimum output skeleton
```md
## Evidence-gap table
| Claim | Tag | Source/reasoning | Impact if wrong/unresolved |
|-------|-----|-------------------|------------------------------|

## Unsupported claims
- 

## Conflict log
- 

## Follow-up plan (ranked)
1. 
```

## Worked mini-example
Claim: "Customers prefer self-service over calling support." Tag: inference (drawn from a 15% drop in call volume after self-service launch). Check: does the drop in calls actually mean preference, or could it mean customers gave up? Impact if wrong: high — could justify cutting support staff on a false premise. Follow-up: pull a satisfaction/completion-rate survey for self-service users before treating this as settled.
