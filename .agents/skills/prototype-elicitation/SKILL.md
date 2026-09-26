---
name: prototype-elicitation
description: >-
  Use when stakeholders struggle to react meaningfully to text-only
  requirements, interface or interaction detail matters, or ambiguity
  remains after interviews and workshops. Matches prototype fidelity
  (paper sketch, wireframe, clickable mock, working prototype) to how
  settled the requirements actually are, so stakeholders react to the right
  level of detail without anchoring on a visual design too early. Produces
  prototype goals, a fidelity recommendation, test scenarios, and a
  requirement-changes log from stakeholder reactions.
track: atomic-technique
---
# prototype-elicitation

## Purpose
Use sketches, mock-ups, or working prototypes to expose hidden assumptions and refine requirements — treating the prototype as a question-asking tool, not a design deliverable.

## Trigger this skill when
- Stakeholders struggle to react meaningfully to text-only requirements ("sounds fine" with no real engagement).
- Interface, workflow, or interaction detail matters and words alone leave too much open to interpretation.
- Ambiguity remains after interviews or workshops specifically about how something should look, flow, or feel.

## Expected inputs
- The requirement or workflow area that remains ambiguous.
- How settled the underlying requirements are (early exploration vs. near-final).
- Who will react to the prototype and what decision their reaction should inform.

## Operating procedure
1. Choose fidelity based on how settled the requirements are, not on what's fastest to build — the **fidelity ladder**: paper sketch (requirements still very open, exploring options) -> wireframe (structure agreed, detail open) -> clickable mock (flow needs validating, visual design still open) -> working prototype (only remaining question is real-world behavior, e.g. performance or integration).
2. State explicitly why the chosen fidelity was picked over a higher one — a common mistake is defaulting to a polished mock too early, which causes stakeholders to react to visual design instead of the actual open question.
3. Define what question each prototype session is meant to answer before building it (e.g. "does this grouping of fields match how users think about the form," not "do you like this screen").
4. Write test scenarios stakeholders will walk through, ordered from the riskiest/most-ambiguous interaction to the most routine.
5. Capture reactions as a requirement-changes log in real time, tagged by whether the reaction confirms, contradicts, or adds to existing requirements — not as general impressions.
6. Watch for and flag anchoring: if stakeholders start commenting on visual polish instead of the structural question being tested, that's a signal the fidelity was too high for the current stage.

## Deliverables
- Prototype goals (the specific open question(s) being tested).
- Prototype fidelity recommendation with rationale.
- Test scenarios, ordered by risk/ambiguity.
- Feedback questions to ask during the session.
- Requirement-changes log from what was learned.

## Guardrails / Quality gates
- Fidelity is justified against how settled the requirement is, not chosen by default or convenience.
- Each session has a stated question it's meant to answer, not just "get feedback."
- Reactions are logged as confirm/contradict/add against existing requirements, not as unstructured notes.
- Anchoring on visual polish is flagged explicitly when it happens, and treated as a signal to lower fidelity, not ignored.

## Handoff targets
- `edge-case-elicitor` — prototype walkthroughs often surface edge cases (invalid inputs, unusual sequences) worth cataloguing formally.
- `requirements-conflict-checker` — where a prototype reaction contradicts an existing requirement, that conflict needs formal resolution.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Building a high-fidelity mock while the underlying workflow is still genuinely undecided.
- Running a session with no stated question, producing only vague "looks good" feedback.
- Letting stakeholder commentary about color/layout substitute for validating the actual structural question.
- Failing to log which existing requirement a piece of feedback confirms, contradicts, or adds to.

## Minimum output skeleton
```md
## Prototype goals (open questions being tested)
## Fidelity recommendation + rationale
## Test scenarios (ordered by risk)
## Feedback questions
## Requirement-changes log
| Feedback | Confirms/Contradicts/Adds | Requirement affected |
|---|---|---|
```

## Worked mini-example
Open question: "does the proposed 3-step approval flow match how managers actually decide?" Fidelity chosen: clickable wireframe (flow is the open question, visuals are not). Session reveals managers expect a 4th step (delegate review) not in the flow — logged as "Contradicts REQ-014 (3-step approval)", flagged for `requirements-conflict-checker`.
