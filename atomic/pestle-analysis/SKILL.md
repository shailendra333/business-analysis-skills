---
name: pestle-analysis
description: >-
  Use when an initiative's viability, timing, or risk may be shaped by
  external forces outside the team's control — new regulation, a market
  shift, a technology change, or macroeconomic pressure. Scans Political,
  Economic, Social, Technological, Legal, and Environmental dimensions
  individually rather than as a vague brainstorm, rates each factor's impact
  and likelihood, and produces a PESTLE table plus a ranked list of the 3-5
  external opportunities and threats that should change the plan.
track: atomic-technique
---
# pestle-analysis

## Purpose
Systematically scan the external environment across Political, Economic, Social, Technological, Legal, and Environmental dimensions before committing to an option or plan.

## Trigger this skill when
- The project is strategy-heavy and external forces may shape viability, timing, or risk.
- Leadership wants an environment scan before options analysis, not just internal capability assessment.
- A plan has been built without checking whether external change could invalidate it.

## Expected inputs
- The initiative, market, or decision under evaluation.
- Any known regulatory, economic, or technology signals already on the team's radar.
- The time horizon the analysis should cover (a 6-month launch vs. a 5-year strategy needs different PESTLE depth).

## Operating procedure
1. Scan each of the six categories separately and in order, so no one dominant lens (usually Technological or Economic) crowds out the others:
   - **Political**: government stability, policy direction, trade/tariff exposure, election cycles.
   - **Economic**: interest rates, inflation, currency exposure, customer purchasing power, funding availability.
   - **Social**: demographic shifts, behavior/attitude change, workforce expectations.
   - **Technological**: emerging tech, automation, infrastructure change, obsolescence risk.
   - **Legal**: current and pending regulation, compliance obligations, litigation exposure.
   - **Environmental**: sustainability requirements, climate/resource constraints, physical/operational risk.
2. For each identified factor, state whether it is a **trend** (gradual, more certain, more time to react) or a **single event** (abrupt, less certain, less time to react) — these need different monitoring and response.
3. Rate each factor on impact (high/medium/low) and likelihood (high/medium/low); do not list a factor without both ratings.
4. Synthesize across all six categories into a ranked shortlist of the 3-5 factors that most change the plan — the table itself is not the deliverable, the shortlist and its implications are.
5. For each shortlisted factor, name a monitoring signal (what to watch to know if it's materializing) so the analysis isn't a one-time snapshot.

## Deliverables
- PESTLE table (category, factor, trend/event, impact, likelihood).
- Top external opportunities (ranked).
- Top external threats (ranked).
- Monitoring signals per shortlisted factor.

## Guardrails / Quality gates
- All six categories are scanned, even ones that seem obviously irrelevant at first glance (a "no factors found" row is acceptable; a skipped category is not).
- Every factor carries both an impact and a likelihood rating — an unrated factor cannot be prioritised.
- The output ends in a ranked shortlist and monitoring signals, not just a populated table.
- Political and Legal are kept distinct (Political = direction/intent; Legal = current binding obligation) rather than merged.

## Handoff targets
- `strategy-analysis` — PESTLE is one of the three lenses combined into a strategy decision memo.
- `assumptions-constraints-log` — low-certainty PESTLE factors often belong there as assumptions to validate.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Treating PESTLE as a brainstorm rather than six separate, deliberate scans.
- Leaving factors unrated on impact/likelihood.
- Stopping at the table without producing a ranked, actionable shortlist.
- Letting Economic or Technological factors dominate while Social/Environmental get one token bullet each.

## Minimum output skeleton
```md
## PESTLE table
| Category | Factor | Trend/Event | Impact | Likelihood |
|---|---|---|---|---|

## Top opportunities (ranked)
## Top threats (ranked)
## Monitoring signals
```

## Worked mini-example
Legal: "Pending data-residency regulation requiring in-country storage" — event, impact = high, likelihood = medium. Shortlisted as a top threat because it could force an architecture change mid-project; monitoring signal = track the bill's committee stage.
