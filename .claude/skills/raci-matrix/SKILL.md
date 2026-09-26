---
name: raci-matrix
description: >-
  Use when ownership of tasks or deliverables is ambiguous, handoffs are
  being dropped, or a governance conversation needs role clarity. Assigns
  Responsible, Accountable, Consulted, and Informed per activity, enforces
  exactly one Accountable per row, and flags failure patterns such as
  duplicate Accountables or missing Consulted expertise. Produces a RACI
  matrix and an ownership-conflicts note.
track: atomic-technique
---
# raci-matrix

## Purpose
Assign Responsible, Accountable, Consulted, and Informed roles to major tasks or deliverables so ownership and decision rights are explicit rather than assumed.

## Trigger this skill when
- Ownership of a task, deliverable, or decision is blurry or disputed.
- Handoffs between roles or teams are failing or being dropped.
- A project, work package, or steering forum needs governance/role clarity before it can proceed.

## Expected inputs
- the list of activities, tasks, or deliverables to be governed
- the roles or people involved and their formal authority
- any existing (possibly informal) division of labor to validate or correct
- the level of formality required (lightweight team RACI vs governance-forum RACI)

## Operating procedure
1. List activities or deliverables as rows — keep each row a single decision or action, not a bundled phase.
2. For each row, assign exactly one Accountable (the person who owns the outcome and answers for it) — never zero, never more than one.
3. Assign one or more Responsible parties (those who do the work) — confirm each has the authority or access needed to actually act, not just the task label.
4. Assign Consulted for anyone whose input is required before the work is finalized (typically domain experts or affected teams) — a two-way conversation, not a notification.
5. Assign Informed for anyone who needs to know the outcome but has no input into it — a one-way notification.
6. Scan the completed matrix for the named failure patterns (below) before publishing.
7. Where conflicts surface (two people believe they are Accountable, or a Responsible party lacks authority), record the conflict explicitly rather than silently resolving it — that's a decision for the governance owner, not the analyst.

## Deliverables
- RACI matrix (activities × roles)
- role definitions where role names are ambiguous
- identified ownership conflicts
- governance notes / escalation path for unresolved conflicts
- optional starting point: docs/ba/templates/raci-matrix-template.csv

## Guardrails / Quality gates
- Exactly one Accountable per row — this is the single hard rule of RACI; violate it and the matrix stops meaning anything.
- No row has zero Accountable — an unowned row is a governance gap, not an oversight to gloss over.
- Every Responsible party has the authority or access to act, not just the label.
- Consulted is present for any row with material domain risk or compliance exposure — skipping Consulted there is a common and costly shortcut.
- Informed is not used as a default dumping ground for "everyone else" — that signals nobody actually owns communication.

## Handoff targets
- raci-rasci-builder — when Support roles need to be distinguished from Responsible
- stakeholder-communication-planner — to turn Informed/Consulted assignments into an actual communication cadence

## Output style
- Be explicit about uncertainty (e.g., "Accountable unconfirmed — proposed X pending sponsor sign-off").
- Prefer short, verifiable role assignments over long justifications.
- Surface conflicts instead of quietly resolving them.
- Separate facts (confirmed roles), assumptions (proposed roles), constraints, and open questions.

## Failure modes to avoid
- Do not assign two Accountables to the same row "to be safe" — it guarantees diffusion of ownership.
- Do not leave a row without an Accountable.
- Do not mark someone Responsible who has no real authority to execute.
- Do not use Informed as a substitute for a real communication plan.

## Minimum output skeleton
```md
## Scope of governance
## RACI matrix
| Activity | R | A | C | I | Notes |
## Ownership conflicts
## Escalation / next steps
```
Optional starting point: docs/ba/templates/raci-matrix-template.csv

## Worked mini-example
Activity: "Approve production deployment." A: Release Manager (one, named). R: DevOps engineer executing the deploy. C: Security lead (compliance-sensitive change). I: Product owner. Conflict flagged: engineering lead also believed they held Accountable — escalated to sponsor for a single, final call.
