---
name: critical-thinking-bias-check
description: >-
  Use when an analysis, decision memo, or requirements set feels suspiciously
  clean, a preferred solution seems to be shaping the evidence rather than the
  other way round, or a conclusion needs to survive scrutiny before it's
  presented to decision-makers. Checks the artifact against five named
  reasoning failures — confirmation bias, anchoring on the first idea,
  sunk-cost reasoning, groupthink/false consensus, and survivorship bias — and
  for each major conclusion asks what evidence would disprove it. Produces a
  bias and weak-logic log with targeted fixes, not generic criticism.
track: quality-check
---
# critical-thinking-bias-check

## Purpose
Detect specific reasoning failures — not vague "this feels off" criticism — in an analysis or decision before it goes to stakeholders.

## Trigger this skill when
- An analysis or recommendation feels too neat, too one-sided, or arrived at unusually fast.
- A preferred solution may be shaping which evidence got emphasized.
- Critical review is required before a decision, business case, or requirements set is finalized.

## Expected inputs
- The artifact or analysis under review (decision memo, requirements set, strategy analysis, workshop output).
- The source material and evidence the conclusions claim to be based on.
- Project context and how high-stakes the decision is (higher stakes justify a more adversarial pass).

## Operating procedure
1. Read the artifact's conclusions first, then work backward to the evidence — this surfaces conclusion-first reasoning immediately.
2. Check systematically against five named failure modes:
   - **Confirmation bias**: is contrary evidence mentioned at all, or only evidence supporting the favoured option?
   - **Anchoring**: does the first idea/option proposed dominate every subsequent comparison, with alternatives evaluated only against it rather than independently?
   - **Sunk-cost reasoning**: is a course of action justified by past investment ("we've already spent X") rather than forward-looking value?
   - **Groupthink / false consensus**: in workshop or interview-derived material, is disagreement recorded anywhere, or does everything read as unanimous (a red flag, not a good sign)?
   - **Survivorship bias**: in observation or usage data, are only the users/cases who completed the process represented, with dropouts or failures missing?
3. For each major conclusion, explicitly ask: "what evidence would disprove this?" — if the artifact can't answer, that conclusion is under-supported.
4. Record each finding with its severity (blocks the decision / weakens confidence / minor) and cite the specific passage it came from.
5. Recommend a targeted fix per finding (e.g., "add the dissenting workshop view that was dropped") rather than generic criticism ("be more balanced").
6. Re-state, in one line, what would make the artifact review-ready.

## Deliverables
- Bias and weak-logic log: finding, bias type, evidence/passage, severity, targeted fix.
- Rival-interpretation list: at least one plausible alternative reading of the same evidence per major conclusion.
- Ready/not-ready verdict with the specific blockers if not ready.

## Guardrails / Quality gates
- Every finding must name which of the five bias types applies (or state it's a different named logic weakness) — "this seems biased" alone is not acceptable.
- Do not rewrite the artifact's conclusions yourself; flag and recommend, let the author decide.
- Focus on the highest-leverage defects first — a long list of minor wording nitpicks buries the real issues.
- A "no findings" result is suspicious for anything non-trivial; if nothing was found, state explicitly what was checked and why it held up.

## Handoff targets
- evidence-gap-review — for findings that trace back to missing evidence rather than reasoning errors.
- deliverable-consistency-check — for findings that are actually cross-artifact contradictions rather than bias.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not produce generic "consider multiple perspectives" advice without naming a specific bias and passage.
- Do not treat unanimous-sounding workshop output as automatically trustworthy — check whether dissent was actually solicited.
- Do not confuse "confident tone" with "well-supported conclusion."
- Do not flag every stylistic choice as a bias; reserve findings for reasoning that actually affects the decision.

## Minimum output skeleton
```md
## Bias and weak-logic log
| Finding | Bias type | Evidence/passage | Severity | Fix |
|---------|-----------|-------------------|----------|-----|

## Rival interpretations
- 

## Verdict
Ready / Not ready — blockers: 
```

## Worked mini-example
Conclusion: "Users clearly prefer the new checkout flow." Evidence cited: 8 of 10 pilot users completed it faster. Bias check: survivorship bias — the 2 users who abandoned the flow entirely aren't counted in the "faster" average. Fix: report completion rate alongside speed, not speed alone.
