---
name: interview-design
description: >-
  Use when requirements or stakeholder views must be gathered through
  one-on-one or small-group conversations — especially when perspectives are
  likely to conflict, be politically sensitive, or need probing beyond a
  first answer. Builds an interview plan with a structured opening/core/probe/
  closing flow, question sequencing that avoids leading and double-barreled
  questions, and named probing techniques for going beneath rehearsed
  answers. Produces an interview guide, interviewee list, and probe prompts.
track: atomic-technique
---
# interview-design

## Purpose
Plan stakeholder interviews that generate usable, structured insight rather than a rehearsed or superficial answer set.

## Trigger this skill when
- Requirements or stakeholder views must be elicited directly, not inferred from documents.
- Conflicting perspectives need to be unpacked one-on-one rather than negotiated live in a group.
- A question set and interview plan is needed before conversations start, not improvised during them.

## Expected inputs
- Problem or project context.
- Known stakeholders/interviewees and their role or stake.
- Anything already known or assumed that needs to be tested rather than re-asked.

## Operating procedure
1. Structure each interview in four parts: **opening** (context, purpose, confidentiality/consent), **core questions** (open-ended before closed, general before specific), **probing** (follow-up technique for shallow or rehearsed answers), **closing** (summarize back, ask what wasn't asked, next steps).
2. Sequence questions general -> specific and open -> closed, so early answers aren't anchored by your own framing.
3. Screen every question for: leading phrasing ("don't you think X is a problem?"), double-barreled construction (two questions in one), and jargon the interviewee may not share.
4. Plan explicit probe techniques in advance rather than relying on improvisation: "tell me about the last time that happened," "walk me through it step by step," silence (let the pause sit instead of filling it), and "what would need to be true for that to change?"
5. Note where you expect resistance or a diplomatic non-answer, and prepare a specific follow-up for that moment.
6. Assign one interviewee per session unless group dynamics are the explicit subject of study — mixing junior and senior stakeholders in one session suppresses candor.

## Deliverables
- Interview objectives (what decision this interview should inform).
- Interviewee list with role/stake noted.
- Question set, ordered per the structure above.
- Probe prompts, tied to specific anticipated answers.
- Logistics plan (duration, format, consent/confidentiality notes).

## Guardrails / Quality gates
- No leading or double-barreled questions in the final set.
- Every "sensitive" topic has a planned, non-leading probe — not left to improvisation.
- Junior and senior stakeholders are not interviewed together unless deliberately studying group dynamics.
- The guide separates what was actually asked from what the interviewer inferred afterward.

## Handoff targets
- `probe-question-generator` — for deeper probe-prompt variants once core questions are set.
- `requirements-interrogator` — to turn interview notes into structured, testable requirements.
- `stakeholder-communication-planner` — if the interview reveals engagement issues beyond the immediate question set.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Asking closed/leading questions first, which anchors the interviewee to your framing.
- Treating silence as a signal to fill rather than a probing tool.
- Interviewing stakeholders with a reporting-line or power imbalance together.
- Skipping the closing "what didn't I ask?" — this is often where the most useful answer appears.

## Minimum output skeleton
```md
## Objectives
## Interviewees
## Question set
1. [open, general]
...
## Probe prompts
- If [expected shallow answer] -> probe: "..."
## Logistics
```

## Worked mini-example
Objective: understand why claims approvals are delayed. Opening: context + confidentiality. Core: "Walk me through the last claim you approved, step by step" (open, general) before "Do you use the exception queue?" (closed, specific). Anticipated shallow answer: "it's just slow sometimes" -> probe: "tell me about the last specific time that happened and what you did next."
