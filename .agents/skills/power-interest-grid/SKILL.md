---
name: power-interest-grid
description: >-
  Use when stakeholder engagement effort needs to be allocated deliberately
  rather than treating everyone the same, especially under resource
  constraints or unclear escalation paths. Classifies each stakeholder on a
  2x2 grid by power (ability to affect the outcome) and interest (how much
  they care), and assigns one of the four named engagement strategies —
  Manage Closely, Keep Satisfied, Keep Informed, Monitor — per quadrant.
  Produces a power-interest matrix with an engagement posture and escalation
  notes per stakeholder.
track: atomic-technique
---
# power-interest-grid

## Purpose
Classify stakeholders by power and interest to allocate engagement effort deliberately, using the four standard quadrant strategies rather than treating every stakeholder the same.

## Trigger this skill when
- Stakeholder management is needed and effort must be prioritised, not spread evenly.
- Resource constraints mean not everyone can get the same level of engagement.
- Escalation paths are unclear — who needs to be consulted before a decision, versus just informed after.

## Expected inputs
- Stakeholder list (ideally already populated via `stakeholder-register`).
- Known or estimated power (ability to affect the outcome — budget, veto, organisational authority) and interest (how much this stakeholder cares about the outcome) per stakeholder.
- The decision or project phase this classification is for (placement can shift between phases).

## Operating procedure
1. Rate each stakeholder on two axes independently: **Power** (high/low — can they materially help or block this?) and **Interest** (high/low — do they actually care about the outcome, regardless of power?). Do not let one axis bleed into the other (a senior sponsor with high power may have low day-to-day interest).
2. Place each stakeholder into one of the four quadrants and apply its named strategy:
   - **High power, high interest -> Manage Closely**: engage frequently, involve in decisions, treat as a co-owner of outcomes.
   - **High power, low interest -> Keep Satisfied**: enough information to prevent surprises or objections, but don't over-engage with detail they don't want.
   - **Low power, high interest -> Keep Informed**: regular updates; they can't block or accelerate, but their support or resistance shapes sentiment.
   - **Low power, low interest -> Monitor**: minimal effort; watch for any shift into another quadrant.
3. For each High-power stakeholder, name the specific escalation trigger (what decision or risk requires bringing them in) rather than leaving "keep them updated" vague.
4. Explicitly flag that placement is not static — note the project phase or trigger event that would move a stakeholder between quadrants (e.g. a Monitor-quadrant stakeholder becomes high-interest once their team is directly affected).
5. Cross-check: a stakeholder registered as "supportive" in the stakeholder register but placed in Manage Closely should have an engagement plan matched to that quadrant, not just their attitude.

## Deliverables
- Power-interest matrix (stakeholder, power, interest, quadrant).
- Engagement posture per stakeholder, using the named quadrant strategy.
- Escalation notes (what triggers moving a decision to a High-power stakeholder).

## Guardrails / Quality gates
- Power and interest are rated independently — a stakeholder is not assumed high-interest just because they're high-power.
- Every stakeholder gets one of the four named strategies, not a bespoke description.
- Placement is revisited at project phase changes, not treated as fixed for the project's lifetime.
- High-power/low-interest stakeholders are not over-engaged with detail that risks turning "Keep Satisfied" into unwanted noise.

## Handoff targets
- `stakeholder-communication-planner` — turns the quadrant strategy into an actual cadence/channel/owner plan.
- `raci-matrix` — Manage Closely stakeholders are often Accountable or Consulted in governance.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Assuming power and interest correlate (they frequently don't).
- Leaving placement static across an entire multi-phase project.
- Giving every stakeholder the same engagement effort regardless of quadrant.
- Vague escalation notes ("keep them updated") instead of naming the specific trigger.

## Minimum output skeleton
```md
## Power-interest matrix
| Stakeholder | Power | Interest | Quadrant | Strategy |
|---|---|---|---|---|

## Escalation notes
## Phase-change watchlist (who might move quadrants)
```

## Worked mini-example
CFO: high power (budget authority), low interest (not involved day-to-day) -> Keep Satisfied; escalation trigger = any scope change affecting budget by more than 10%. Frontline team lead: low power, high interest -> Keep Informed via biweekly digest, watch for move to Manage Closely if their team becomes directly responsible for the new process.
