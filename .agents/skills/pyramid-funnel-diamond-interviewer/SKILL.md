---
name: pyramid-funnel-diamond-interviewer
description: >-
  Use when choosing how to sequence interview questions for a stakeholder,
  especially when the topic is sensitive, ambiguous, or at risk of producing
  vague answers, and different stakeholder types need different pacing.
  Matches stakeholder type and topic sensitivity to a pyramid (narrow-to-broad),
  funnel (broad-to-narrow), or diamond (narrow-broad-narrow) question structure,
  drafts an ordered sequence with transition and contingency prompts, and
  explains why that structure fits the objective. Produces a recommended
  structure, question order, and rationale.
track: elicitation-and-process-extension
---
# pyramid-funnel-diamond-interviewer

## Purpose
Choose and apply the right interview question structure: pyramid, funnel, or diamond, based on stakeholder type and elicitation objective.

## Trigger this skill when
- You need help choosing how to sequence interview questions.
- The topic is sensitive, ambiguous, or at risk of producing vague answers.
- Different stakeholder types require different elicitation pacing.

## Expected inputs
- interview goal
- stakeholder type
- topic sensitivity
- known context

## Deliverables
- recommended structure
- question order
- rationale
- example sequence

## Operating procedure
1. Assess whether the interview should open broad, open narrow, or combine both.
2. Match stakeholder type and topic sensitivity to pyramid, funnel, or diamond structure.
3. Draft an ordered question sequence.
4. Add transition prompts and contingency prompts.
5. Explain why this structure fits the objective.

## Guardrails / Quality gates
- Structure matches the stakeholder and topic.
- Questions move from one layer to the next deliberately.
- The output includes rationale, not just a list.

## Handoff targets
- probe-question-generator
- interview-design
- business-rule-extractor

## Output style
- Be explicit about uncertainty.
- Prefer structured outputs over loose prose.
- Separate confirmed findings, inferred findings, and open questions.
- Preserve source context where practical.

## Failure modes to avoid
- Do not pretend weak evidence is confirmed fact.
- Do not confuse stakeholder opinion with validated rule or process truth.
- Do not hide missing coverage behind polished wording.
- Do not flatten politically different stakeholders into one generic audience.

## Minimum output skeleton
```md
## Summary
## Findings
## Structured outputs
## Risks or tensions
## Open questions
## Recommended next skill
```
