---
name: see-i-clarifier
description: >-
  Use when a term or concept is fuzzy, teams are talking past each other
  using the same word to mean different things, or a critical concept
  needs teaching before analysis can proceed. Clarifies a concept through
  all four SEE-I moves — State a precise one-sentence definition, Elaborate
  the mechanism in different words, Exemplify with a concrete real case,
  and Illustrate with an analogy or counter-example — treating the
  clarification as incomplete until all four are present. Produces a
  short teaching-ready explanation and a note on where prior usage
  diverged.
track: atomic-technique
---
# see-i-clarifier

## Purpose
Clarify a fuzzy or contested concept using the SEE-I structure — State, Elaborate, Exemplify, Illustrate — so a team converges on one shared meaning instead of continuing to talk past each other.

## Trigger this skill when
- A term is used differently by different stakeholders and nobody has noticed yet.
- Discussion keeps circling because the underlying concept was never pinned down.
- A critical concept needs to be taught or onboarded to someone new before deeper analysis proceeds.

## Expected inputs
- the term or concept in dispute or in need of clarification
- examples of how different stakeholders have used it (if divergence is suspected)
- the audience the clarification is for (peer analyst vs new stakeholder vs executive)

## Operating procedure
1. **State** — write one precise, falsifiable sentence defining the concept. If you can't do this in one sentence, the concept is still too vague to proceed past this step.
2. **Elaborate** — explain the definition in different words: what is the mechanism, boundary, or process it refers to? This step should make the State sentence unpackable for someone who didn't already know the term.
3. **Exemplify** — give one concrete, real (or realistic) example of the concept in action, specific enough that someone could point at it and say "yes, that's an instance."
4. **Illustrate** — give an analogy, diagram description, or a non-example/counter-example that sharpens the boundary of the concept (what it is NOT is often more clarifying than another positive example).
5. Compare against how each stakeholder was previously using the term; name explicitly where usage diverged and which meaning this clarification adopts going forward.

## Deliverables
- SEE-I explanation (all four parts present)
- clarified, agreed terminology
- example and non-example pair
- a short teaching-ready version for onboarding new stakeholders

## Guardrails / Quality gates
- All four SEE-I elements are present — a clarification with only State and Elaborate is not complete; Exemplify and Illustrate are what make it concrete.
- The State sentence is falsifiable/precise, not another vague synonym.
- Where stakeholders previously disagreed, the divergence is named, not smoothed over.

## Handoff targets
- business-rule-extractor — once a term is clarified, rules that depend on it can be extracted unambiguously
- ambiguity-hunter — if clarifying one term surfaces other fuzzy terms nearby

## Output style
- Be explicit about uncertainty — flag if the "agreed" definition is provisional pending a specific stakeholder's confirmation.
- Prefer short, testable statements over long prose.
- Surface where terminology previously diverged instead of pretending it was always consistent.
- Separate the definition (fact, once agreed) from open questions about edge cases.

## Failure modes to avoid
- Do not stop at State + Elaborate and skip Exemplify/Illustrate — that leaves the concept still abstract.
- Do not invent a definition no stakeholder actually holds; ground it in how the term needs to function for the work at hand.
- Do not gloss over the fact that people were using the term differently — that's the most useful finding.

## Minimum output skeleton
```md
## Term
## State
## Elaborate
## Exemplify
## Illustrate (analogy / non-example)
## Where usage diverged previously
```

## Worked mini-example
Term: "active user." State: "A user who completed at least one core action (not just a login) in the last 30 days." Elaborate: login alone was previously being counted, inflating the metric. Exemplify: a user who submitted one form last week counts; Illustrate/non-example: a user who only opened the app and closed it does not count.
