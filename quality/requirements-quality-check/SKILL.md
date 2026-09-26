---
name: requirements-quality-check
description: >-
  Use when a requirements set is nearing sign-off, acceptance or
  implementation work will depend on requirement quality, or the team wants
  an objective release-readiness gate instead of a subjective opinion. Scores
  each requirement individually across five named dimensions — clear
  (unambiguous, single interpretation), feasible, testable (has or can derive
  acceptance criteria), prioritised (has a MoSCoW/priority tag), and
  traceable (has an ID referenced elsewhere) — rather than giving the whole
  set one pass/fail verdict. Produces a per-requirement quality assessment
  and a release-readiness judgement.
track: quality-check
---
# requirements-quality-check

## Purpose
Score requirements individually against five named quality dimensions so weak items are visible, instead of giving the whole set a single subjective pass/fail.

## Trigger this skill when
- A requirements set is nearing sign-off and needs an objective quality gate.
- Acceptance criteria, estimation, or implementation work is about to depend on requirement quality.
- The team wants defensible, explainable release-readiness criteria rather than an opinion.

## Expected inputs
- The requirements set to assess (with IDs, ideally).
- Any existing acceptance criteria, priority tags, or traceability links already attached.
- The quality bar appropriate to this stage (early discovery tolerates more gaps than a pre-build sign-off).

## Operating procedure
1. List every requirement with its ID (or assign a temporary one if missing — a requirement without an ID cannot be traceable, which is itself a finding).
2. Score each requirement, individually, on five named dimensions (not a single aggregate score):
   - **Clear**: does the statement have exactly one reasonable interpretation, with concrete actors/triggers/conditions rather than vague adjectives?
   - **Feasible**: is there no known technical, legal, or resource blocker that makes this impossible as stated?
   - **Testable**: does it have, or can one directly derive, an observable acceptance criterion (Given/When/Then or equivalent)?
   - **Prioritised**: does it carry a MoSCoW or equivalent priority tag (see moscow-prioritisation)?
   - **Traceable**: does it have an ID that is actually referenced elsewhere (acceptance criteria, traceability matrix, design doc)?
3. Mark each dimension pass/fail/partial per requirement — do not collapse the five into one score, since a requirement can be perfectly clear but untestable, and that distinction drives a different fix.
4. For each fail/partial, write the specific reason (not just "unclear") and the minimum edit that would fix it.
5. Aggregate only at the end: compute the overall release-readiness judgement from the pattern of failures (e.g., "12 of 40 requirements fail Testable — acceptance-criteria-writer should run before this set is sign-off ready"), not from a single number.

## Deliverables
- Per-requirement quality assessment: ID, statement, Clear/Feasible/Testable/Prioritised/Traceable scores, specific issue per fail.
- Ambiguous/non-testable items list.
- Prioritisation gaps list (missing or contested priority tags).
- Traceability gaps list (missing or unreferenced IDs).
- Release-readiness judgement with the specific blocking dimension(s).

## Guardrails / Quality gates
- Score every dimension independently — a high score on one dimension never excuses a fail on another.
- Every fail must state the specific reason and a concrete fix, not generic criticism.
- Do not give a single pass/fail for the whole set; the release-readiness judgement must name which dimension(s) are actually blocking.
- Do not invent acceptance criteria yourself to make a requirement "pass" Testable — flag it and hand off to acceptance-criteria-writer instead.

## Handoff targets
- acceptance-criteria-writer — for requirements failing Testable.
- ambiguity-hunter — for requirements failing Clear.
- moscow-prioritisation / requirements-prioritizer — for requirements failing Prioritised.
- requirements-traceability-starter — for requirements failing Traceable.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not average the five dimensions into one score — that hides exactly which fix is needed.
- Do not mark a requirement "feasible" just because no blocker was mentioned; state explicitly that feasibility wasn't contradicted rather than confirmed.
- Do not skip low-priority requirements in the scoring pass; low priority isn't the same as low quality-risk.

## Minimum output skeleton
```md
## Per-requirement quality assessment
| ID | Requirement | Clear | Feasible | Testable | Prioritised | Traceable | Issues |
|----|-------------|-------|----------|----------|-------------|-----------|--------|

## Release readiness judgement
Ready / Not ready — blocking dimension(s): 
```

## Worked mini-example
REQ-014: "The system should be fast." Clear: fail (no threshold, no actor, "fast" is subjective) → fix: rewrite with a measurable target (e.g. "search results return within 2s for 95% of queries"). Feasible: partial (depends on infra not yet confirmed). Testable: fail (no acceptance criterion possible until Clear is fixed). Prioritised: pass (tagged Should). Traceable: fail (no ID referenced by any acceptance criteria yet).
