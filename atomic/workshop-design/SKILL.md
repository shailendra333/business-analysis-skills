---
name: workshop-design
description: >-
  Use when multiple stakeholders must align in real time, a decision or
  artifact needs to be produced collaboratively rather than by one analyst
  working alone, or divergent views need reconciling face to face. Designs
  a workshop agenda with explicit objectives, pre-read, a silent-generation
  warm-up before group discussion (to avoid early-speaker anchoring),
  timeboxed core exercises, an explicit decision point, and named
  facilitator/scribe/decision-owner roles. Produces a workshop objective,
  agenda, participant list, and facilitation technique notes.
track: atomic-technique
---
# workshop-design

## Purpose
Plan a facilitated workshop that produces a specific decision or artifact collaboratively, structured to avoid the common failure modes of group sessions (anchoring, dominant voices, unclear outcomes).

## Trigger this skill when
- Multiple stakeholders must align in real time rather than sequentially through separate interviews.
- A workshop is the mechanism chosen to gather or reconcile divergent views.
- A specific decision or artifact must be produced collaboratively, with visible buy-in, not handed down afterward.

## Expected inputs
- the specific decision or artifact the workshop must produce
- the participant list and their stake/authority in that decision
- known points of disagreement or sensitivity among participants
- time and format constraints (in-person, remote, session length)

## Operating procedure
1. State the workshop's objective as a concrete output ("a prioritised backlog for Q3," not "discuss the roadmap") — a workshop without a named deliverable drifts into an unstructured meeting.
2. Identify participants by the role they play in producing that output (decision-owner, domain expert, affected team) — invite for a reason, not by habit.
3. Prepare pre-read so shared context is established before the session, not spent rebuilding it live.
4. Design a warm-up using silent generation (e.g., silent brainwriting, dot-voting on pre-written ideas) before open discussion — this prevents the first or most senior voice from anchoring the room.
5. Sequence core exercises toward the stated objective, each timeboxed explicitly — an exercise with no time limit expands to fill the session.
6. Build in an explicit decision point — a moment where the group (or the named decision-owner) commits to an output, rather than the workshop ending in "we'll follow up."
7. Assign roles explicitly: facilitator (runs the process, stays neutral on content), scribe (captures outputs), decision-owner (has final say if consensus doesn't emerge).
8. Plan the close: restate the decision/artifact produced, assign owners for any follow-up actions, and confirm how outputs will be circulated.

## Deliverables
- workshop objective (stated as a concrete output)
- agenda with timeboxed exercises and an explicit decision point
- participant list mapped to their role in the outcome
- facilitation techniques (warm-up, discussion structure, decision mechanism)
- artifacts to capture and who owns capturing them

## Guardrails / Quality gates
- The objective is a concrete output, not a vague topic.
- A silent-generation step precedes open group discussion, to reduce anchoring.
- Every exercise is timeboxed.
- An explicit decision point exists — the workshop does not end without either a decision or a named next step and owner.
- Facilitator, scribe, and decision-owner roles are assigned to specific people, not left implicit.

## Handoff targets
- breakout-structure-designer — when the session needs small-group breakout structure for a specific exercise
- deliverable-consistency-check — after the workshop, check the produced artifact against other BA deliverables

## Output style
- Be explicit about uncertainty — flag if a participant's availability or authority to decide is unconfirmed.
- Prefer a concrete, timeboxed agenda over a general list of "topics to cover."
- Surface known points of disagreement in the plan rather than hoping they don't surface live.
- Separate facts (confirmed participants/objective), assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not run a workshop with no stated concrete output.
- Do not open with unstructured group discussion when a sensitive or divergent topic is on the agenda — anchoring will suppress dissent.
- Do not leave exercises untimeboxed.
- Do not end without an explicit decision or a named owner for what happens next.

## Minimum output skeleton
```md
## Objective (concrete output)
## Participants & roles
## Pre-read
## Agenda (timeboxed)
## Decision point
## Facilitation techniques
## Close & follow-up owners
```

## Worked mini-example
Objective: "Agree the MVP scope for the claims-intake redesign." Warm-up: 10 min silent brainwriting on must-have capabilities before any discussion. Decision point: dot-voting narrows the list, then the named decision-owner (Product Lead) makes the final call on ties.
