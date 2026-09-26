---
name: use-case-specification
description: >-
  Use when functional user-system interaction behavior must be described
  precisely, when requirements need structured interaction modelling before
  design or build, or when design/testing traceability matters. Defines
  actors, triggers, preconditions, a numbered main success flow, alternate
  and exception flows that each branch from and return to (or terminate)
  a specific main-flow step, and postconditions. Produces a use case list
  and full use case specifications ready to hand to acceptance-criteria
  writing.
track: atomic-technique
---
# use-case-specification

## Purpose
Define actors, triggers, flows, exceptions, and outcomes for a user-system interaction precisely enough to support design, build, and test traceability.

## Trigger this skill when
- Functional behavior must be described clearly enough that design and testing can trace back to it.
- Requirements are currently prose and need structured interaction modelling.
- Design or QA needs a stable reference for "what should happen, step by step."

## Expected inputs
- the feature or interaction to be specified
- the actor(s) who initiate or participate in it
- any known business rules or constraints that shape the flow
- existing acceptance criteria or user stories to reconcile against, if any

## Operating procedure
1. Name the primary actor (who initiates the use case) and any secondary actors (systems or roles that participate but don't initiate).
2. State the trigger — the specific event that starts this use case.
3. State preconditions — what must be true before the use case can begin (e.g., "user is authenticated").
4. Write the main success flow as numbered steps, one system/actor action per step, in the order they happen — this is the "happy path" and nothing else.
5. Write alternate and exception flows separately. Each one must explicitly reference the numbered main-flow step it branches from (e.g., "At step 4, if payment is declined...") and state where it rejoins the main flow or that it terminates the use case.
6. State postconditions — what is guaranteed true after successful completion (and, separately, after each exception flow terminates).
7. Cross-check: every alternate/exception flow references a real main-flow step number, and every main-flow step that has a plausible failure mode has a corresponding exception flow — gaps here become untested edge cases later.

## Deliverables
- use case list (names + one-line summaries)
- full use case specifications (actor, trigger, preconditions, main flow, alt/exception flows, postconditions)
- full fillable version: docs/ba/templates/process-analysis-template.md (for the surrounding process context) — use case specifications themselves follow the structure above directly

## Guardrails / Quality gates
- Every alternate/exception flow names the specific main-flow step it branches from, and states its rejoin point or termination.
- The main success flow contains only the happy path — no "if/else" branching buried inside it.
- Preconditions and postconditions are stated, not implied.
- Every main-flow step with an obvious failure mode (validation, permission, external system failure) has a corresponding exception flow — silence here is a gap, not a non-issue.

## Handoff targets
- acceptance-criteria-writer — convert each flow into Given/When/Then acceptance criteria
- edge-case-elicitor — pressure-test for missed exception flows

## Output style
- Be explicit about uncertainty (e.g., "assumed system behavior on timeout — needs confirmation").
- Prefer short, numbered, observable steps over narrative prose.
- Surface missing exception flows instead of assuming they don't exist.
- Separate facts (confirmed business rules), assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not bury alternate paths inside the main flow's numbered steps.
- Do not leave an alternate/exception flow without a specific main-flow step reference.
- Do not omit postconditions for exception flows — "what state is the system left in" matters as much for failures as for success.
- Do not invent actor behavior not grounded in a stated business rule or confirmed assumption.

## Minimum output skeleton
```md
## Use case: <name>
### Primary actor / Secondary actors
### Trigger
### Preconditions
### Main success flow
1. ...
2. ...
### Alternate/exception flows
- At step N: <condition> -> <resulting behavior> -> rejoins at step M / terminates
### Postconditions
```

## Worked mini-example
Use case: "Submit leave request." Main flow step 3: "System validates requested dates against remaining balance." Exception flow: "At step 3, if balance is insufficient, system displays an error and use case terminates (postcondition: no request created)."
