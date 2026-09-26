---
name: questionnaire-design
description: >-
  Use when stakeholders are too numerous or too widely distributed for
  interviews alone, and the team needs quantified, comparable, pattern-level
  data rather than depth on a few individuals. Designs a questionnaire
  instrument with a consistent response-scale family, sequences questions
  general-before-specific, screens every item for leading or double-barreled
  phrasing, and plans a pilot pass before wide release. Produces a
  question bank, response scales, a distribution/analysis plan, and
  pilot-readiness notes.
track: atomic-technique
---
# questionnaire-design

## Purpose
Design a survey or questionnaire instrument for broad, structured, quantifiable information gathering across a stakeholder population too large or dispersed for one-to-one interviews.

## Trigger this skill when
- Stakeholders are widely distributed (geography, team, customer segment) and interviewing each one does not scale.
- The team needs quantified or pattern-level data ("what % of users hit this") rather than narrative depth.
- A hypothesis from interviews or workshops needs validating at scale before it's treated as fact.

## Expected inputs
- the questions or hypotheses the instrument must answer
- the target respondent population and how it will be reached
- any existing question banks, prior surveys, or house style for scales
- the timeline and sample size needed for a meaningful result

## Operating procedure
1. Restate the decision the questionnaire must inform — every question must trace back to one of these decisions or it gets cut.
2. Choose question types deliberately: closed/categorical for counting, scaled (Likert or similar) for intensity of opinion, open-ended only where you cannot anticipate the answer space.
3. Pick one response-scale family and hold it constant across the instrument — do not mix a 3-point and a 5-point Likert scale in the same questionnaire; inconsistent scales make cross-question comparison invalid.
4. Sequence questions general before specific, and easy/non-sensitive before harder or more personal ones.
5. Screen every question for leading phrasing ("don't you agree that...") and double-barreled phrasing (two questions joined by "and") — split or rewrite any that fail.
6. Draft an explicit analysis plan before fielding: which question maps to which decision, and what result would count as signal versus noise.
7. Route the draft to a pilot pass (see `questionnaire-pilot-checker`) before wide distribution — never skip piloting to save time; that's where ambiguous wording gets caught cheaply.

## Deliverables
- questionnaire structure (section order and rationale)
- question bank with response scales
- pilot-test notes and revisions
- distribution plan and analysis plan
- full fillable version: docs/ba/templates/questionnaire-template.md

## Guardrails / Quality gates
- No leading or double-barreled questions remain in the final draft.
- Response scales are consistent across the instrument.
- Every question maps to a stated decision or hypothesis; orphan questions are cut.
- A pilot pass happened before wide release, or the skip is explicitly justified and flagged as a risk.

## Handoff targets
- questionnaire-pilot-checker — validate the draft before wide distribution
- requirements-quality-check — if questionnaire results feed directly into requirements

## Output style
- Be explicit about uncertainty in expected response rates or sample bias.
- Prefer short, testable questions over long compound prose.
- Surface risk (e.g., sampling bias, low expected response rate) instead of guessing past it.
- Separate facts, assumptions, constraints, and open questions in the write-up.

## Failure modes to avoid
- Do not field a questionnaire with mixed or inconsistent response scales.
- Do not ask leading or double-barreled questions.
- Do not skip the pilot pass under time pressure without flagging the risk.
- Do not include questions that don't map to a decision — every question costs respondent goodwill.

## Minimum output skeleton
```md
## Objective / decisions this survey informs
## Target respondents & distribution
## Question bank
| # | Question | Type | Scale | Maps to decision |
## Pilot notes
## Analysis plan
```

## Worked mini-example
Decision: "Should onboarding move from 5 steps to 3?" → Question: "How many steps did the current onboarding feel like it needed? (1 = far too few, 5 = far too many)" — scaled, non-leading, maps directly to the decision, consistent 5-point scale used throughout the rest of the instrument.
