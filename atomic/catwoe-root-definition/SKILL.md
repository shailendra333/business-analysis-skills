---
name: catwoe-root-definition
description: >-
  Use when a problem is messy, political, or systemic and it isn't clear
  whose perspective defines "success" — for example when different
  stakeholders describe the same initiative as solving completely different
  problems. Builds a CATWOE analysis (Customers, Actors, Transformation,
  Worldview, Owner, Environment) as part of Soft Systems Methodology, forcing
  each of the six elements to be named explicitly before a single root
  definition sentence is written. Produces a CATWOE table and a root
  definition that can be checked against stakeholder disagreement.
track: atomic-technique
---
# catwoe-root-definition

## Purpose
Define a purposeful activity system using CATWOE and produce a single root definition sentence that states, unambiguously, what the system does, for whom, and from whose worldview.

## Trigger this skill when
- The problem is messy, political, or systemic and stakeholders disagree about what "the system" even is.
- Soft Systems Methodology (SSM)-style framing is needed, e.g. as part of `ssm-analysis`.
- Different stakeholders would describe the purpose of the same initiative in incompatible ways.

## Expected inputs
- A description of the situation or system under study (however messy or contested).
- Known stakeholders, actors, and any stated or assumed purpose.
- Any existing problem statement or objectives (if one exists, CATWOE should test it, not just restate it).

## Operating procedure
1. Populate each of the six CATWOE elements separately, in this order, before attempting a root definition:
   - **C — Customers**: who is on the receiving end of the transformation (beneficiaries or victims)?
   - **A — Actors**: who actually carries out the transformation?
   - **T — Transformation**: the core process, expressed strictly as input-state -> output-state (e.g. "unassessed claim -> assessed claim"). If this can't be written as a state change, the system isn't yet well defined.
   - **W — Worldview (Weltanschauung)**: the perspective or assumption that makes this transformation meaningful. This is the element most often skipped — name it explicitly (e.g. "assumes claims should be assessed for fraud risk before payout, not just processed for speed").
   - **O — Owner**: who could stop the transformation if they chose to?
   - **E — Environment**: constraints outside the system's control (regulatory, resource, cultural) that shape but don't belong inside T.
2. Where stakeholders would fill in an element differently, capture each version rather than picking one — this is often where the real disagreement lives.
3. Only after all six are populated, compose the root definition using the template: "A system to do T, by A, for C, owned by O, operating in E, given the worldview W."
4. Check the root definition against the original problem framing: does it reveal a different problem than the one stakeholders stated?

## Deliverables
- CATWOE table (one row per element, with alternative versions noted where stakeholders disagree).
- A single root definition sentence.
- A short note on which element was hardest to pin down and why — this is usually the actual point of contention.

## Guardrails / Quality gates
- Transformation must be a state change (X -> Y), not an activity description ("process claims" is not a transformation; "unverified claim -> verified claim" is).
- Worldview must be stated even when it seems obvious — an implicit worldview is exactly what causes stakeholders to talk past each other.
- Do not merge Actors and Owner: the people doing the work are rarely the people who could stop it.
- If two stakeholders produce genuinely different root definitions, that is a finding to report, not an error to resolve by picking one.

## Handoff targets
- `ssm-analysis` — CATWOE feeds directly into SSM stage 3 (root definitions), ahead of conceptual modelling.
- `stakeholder-analysis` — divergent worldviews surfaced here often explain stakeholder conflict found separately.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Writing a root definition before all six elements are populated (skips the disagreement-surfacing step CATWOE exists for).
- Treating Worldview as optional or self-evident.
- Producing a transformation that describes an activity rather than a state change.
- Collapsing multiple stakeholders' versions into one before recording the divergence.

## Minimum output skeleton
```md
## CATWOE
- Customers:
- Actors:
- Transformation: [input state] -> [output state]
- Worldview:
- Owner:
- Environment:

## Root definition
A system to ___, by ___, for ___, owned by ___, operating in ___, given the worldview that ___.

## Divergence notes
```

## Worked mini-example
Situation: "Speed up claims processing." Transformation (naive): "claim received -> claim closed." Pushing on Worldview reveals two competing versions: ops leadership's W = "closing claims fast is the goal"; compliance's W = "claims should be closed fast only after fraud checks pass." Root definitions differ accordingly — this divergence, not the process steps, is the real issue to resolve before requirements work continues.
