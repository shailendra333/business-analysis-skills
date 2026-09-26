---
name: stakeholder-register
description: >-
  Use when a project is starting, or when engagement and governance
  planning needs a factual baseline of who is affected and who has
  influence. Captures each stakeholder's role, interest, current attitude
  (supportive, neutral, resistant), power/influence level, key concerns,
  and current versus desired engagement level, as a single fact base other
  techniques (power-interest-grid, RACI, communication planning) build on.
  Produces a stakeholder register.
track: atomic-technique
---
# stakeholder-register

## Purpose
Build the factual baseline of who is affected by or influences the work — their role, interest, attitude, and power — so later engagement and governance decisions rest on evidence rather than assumption.

## Trigger this skill when
- The stakeholder landscape for a piece of work is unclear or has never been written down.
- A project or initiative is beginning and needs an engagement baseline.
- Governance, RACI, or communication planning work needs a stakeholder fact base to build on.

## Expected inputs
- the project or problem scope
- any known stakeholder names, roles, or org chart context
- prior engagement history or friction points, if any

## Operating procedure
1. List every individual or group with a material stake in the outcome — don't limit to whoever is already in the room; actively ask "who else is affected by this?"
2. For each, record role/title, their interest in the outcome (what they want or fear), and current attitude — supportive, neutral, or resistant — based on evidence (things said or done), not guesswork.
3. Rate power/influence separately from interest — a stakeholder can have high influence and low interest, or the reverse; conflating the two is the most common error here.
4. Record current engagement level (how involved they actually are today) versus desired engagement level (how involved they need to be) — the gap between these is the actionable finding.
5. Note key concerns in the stakeholder's own terms where possible, not paraphrased into analyst jargon.
6. Hand the populated register to `power-interest-grid` for classification into engagement strategies rather than inventing a strategy here.

## Deliverables
- stakeholder register (name/role, interest, power, attitude, current vs desired engagement, key concerns)
- notes on evidence behind each attitude/power rating
- flags where a rating is inferred rather than confirmed

## Guardrails / Quality gates
- Power and interest are rated independently, not as one combined "importance" score.
- Every attitude rating cites the evidence behind it (a stated position, a past action) — do not present a guess as a fact.
- The register is revisited as the project moves through phases; stakeholder positions are not static.
- Do not omit stakeholders who are inconvenient or likely to be resistant — the register's value is completeness, not comfort.

## Handoff targets
- power-interest-grid — classify each stakeholder into an engagement strategy
- stakeholder-communication-planner — turn engagement gaps into a communication cadence
- raci-matrix — once roles are clear, assign decision rights

## Output style
- Be explicit about uncertainty — mark inferred ratings as inferred.
- Prefer short, evidenced statements over character judgments.
- Surface resistant or hard-to-reach stakeholders rather than omitting them.
- Separate facts (confirmed statements/actions), assumptions (inferred attitude), and open questions.

## Failure modes to avoid
- Do not conflate power and interest into a single score.
- Do not skip stakeholders who are likely to resist the change.
- Do not treat the register as a one-time exercise — refresh it at each major project phase.
- Do not present inferred attitudes as confirmed fact.

## Minimum output skeleton
```md
## Scope
## Stakeholder register
| Name/Role | Interest | Power | Attitude | Current engagement | Desired engagement | Key concerns | Evidence |
## Engagement gaps to close
```

## Worked mini-example
"Finance Director — Interest: high (budget owner). Power: high. Attitude: neutral (has not blocked, has asked pointed cost questions in 2 meetings — evidence). Current engagement: informed only. Desired: consulted before budget commitments. Gap: needs a seat in budget-review checkpoints."
