---
name: questionnaire-pilot-checker
description: >-
  Use when a questionnaire has been drafted but not pressure-tested, or early
  feedback suggests confusion or low response quality, and you want to avoid
  distributing a flawed instrument. Reviews the draft for ambiguity, jargon,
  double meanings, leading language, order effects, respondent burden,
  missing answer options, and broken logic, and checks wording fit against
  the target audience. Produces pilot review findings, risk flags, and
  recommended fixes before wider distribution.
track: elicitation-and-process-extension
---
# questionnaire-pilot-checker

## Purpose
Review a draft questionnaire for ambiguity, bias, fatigue, ordering issues, and poor measurement design before distribution.

## Trigger this skill when
- A questionnaire exists but has not been pressure-tested.
- You want to avoid distributing a flawed instrument.
- Early feedback suggests confusion or low response quality.

## Expected inputs
- questionnaire draft
- target audience
- research goal

## Deliverables
- pilot review findings
- revised questionnaire notes
- risk flags
- recommended fixes

## Operating procedure
1. Review the draft for ambiguity, jargon, double meanings, and leading language.
2. Check order effects, respondent burden, missing answer options, and broken logic.
3. Assess whether the wording fits the audience.
4. Recommend pilot changes before broader distribution.
5. Highlight questions that will be hard to analyze.

## Guardrails / Quality gates
- Findings are concrete and actionable.
- Bias and fatigue risks are visible.
- Review considers the audience, not just wording quality.

## Handoff targets
- questionnaire-design
- stakeholder-communication-planner
- benefit-hypothesis-writer

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
See also: docs/ba/templates/questionnaire-template.md — checks should reference this template's Questions section.
```md
## Summary
## Findings
## Structured outputs
## Risks or tensions
## Open questions
## Recommended next skill
```
