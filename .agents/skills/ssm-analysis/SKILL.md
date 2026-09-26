---
name: ssm-analysis
description: >-
  Use when a problem situation is messy, contested, or sociotechnical enough
  that a conventional requirements frame is too narrow — different
  stakeholders hold genuinely different worldviews about what the "problem"
  even is. Applies Checkland's Soft Systems Methodology through its seven
  named stages (unstructured situation, rich picture, CATWOE root
  definitions, conceptual models, comparison to reality, feasible/desirable
  change, action) rather than jumping straight to solutions. Produces a
  rich-picture summary, CATWOE tables, root definitions, conceptual models,
  and a set of feasible, desirable intervention options.
track: workflow
---
# ssm-analysis

## Purpose
Apply Soft Systems Methodology (SSM) to ambiguous, multi-perspective, sociotechnical problems where different stakeholders disagree not just on the solution but on what the problem even is.

## Trigger this skill when
- The situation is messy and contested, with no single agreed problem statement.
- A conventional requirements framing (`business-problem-framing`) feels too narrow because whose worldview is applied changes what counts as a "problem" at all.
- Worldview, ownership, and environmental constraints matter as much as the mechanics of the process itself.

## Expected inputs
- Project or problem context, described in as much raw, unstructured detail as exists — do not pre-summarize it away.
- Known goals and constraints, understanding that different stakeholders may state these differently.
- Known stakeholders, systems, and documents.
- Level of formality required.

## Operating procedure
Apply Checkland's seven-stage SSM in order — skipping a stage (especially stage 5) is the most common way this technique is misapplied:
1. **Problem situation unstructured** — describe the messy situation in stakeholders' own terms, without forcing premature structure or picking a single "correct" framing.
2. **Problem situation expressed** — produce a rich-picture-oriented summary: actors, relationships, conflicts, and structures, in prose or a diagram-ready spec, resisting the urge to simplify away genuine tension.
3. **Root definitions** — identify the relevant purposeful activity systems, then run `catwoe-root-definition` for each: Customers, Actors, Transformation, Worldview, Owner, Environment.
4. Write the root definition sentence(s) from step 3's CATWOE output: "A system to do T, by A, for C, owned by O, in the context of E, given the worldview W."
5. **Conceptual models** — build the conceptual activity model implied by each root definition: what activities would this system logically need to perform, in what order, if the root definition were true.
6. **Compare models to reality** — this is the stage most attempts skip straight past. Explicitly compare each conceptual model to what actually happens today, and record every gap, not just the convenient ones.
7. **Feasible and desirable change** — from the comparison, recommend changes that are both culturally feasible (stakeholders would actually accept them) and systemically desirable (they address the root definition), and name the tensions that remain unresolved.
8. **Action** — state what action is proposed to improve the situation, acknowledging this is one intervention in an ongoing situation, not a final fix.

## Deliverables
- Messy-situation summary (stage 1)
- Rich picture prompt/spec (stage 2)
- CATWOE tables and root definitions (stages 3-4)
- Conceptual activity model notes (stage 5)
- Comparison-to-reality findings (stage 6)
- Intervention options and open tensions (stages 7-8)

## Guardrails / Quality gates
- Do not collapse stages 1-2 into a quick problem statement — SSM exists precisely because that collapse loses the contested, multi-perspective nature of the situation.
- Every CATWOE element must be populated before the root definition sentence is written; an incomplete CATWOE produces an incoherent root definition.
- Stage 6 (compare models to reality) must happen explicitly and separately from stage 5 — do not merge model-building and reality-comparison into one step.
- Record irreducible tensions between stakeholder worldviews rather than resolving them by fiat.

## Handoff targets
- `business-problem-framing` — once a root definition and feasible change direction exist, to formalize scope and objectives in conventional terms.
- `to-be-process-designer` — where the recommended change is process-level and can now be designed concretely.
- `stakeholder-analysis` — where worldview conflicts surfaced in stage 2 need a formal engagement strategy.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface conflicting worldviews and tension instead of smoothing them into false consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not treat SSM as a heavier version of ordinary requirements gathering — its point is to hold multiple valid worldviews simultaneously, not converge on one early.
- Do not skip CATWOE's Worldview element because it feels the least concrete — it's usually the element that explains why stakeholders disagree.
- Do not present intervention options without naming which worldview each option serves and which it leaves unresolved.
- Do not jump to stage 7 recommendations without having done stage 6's explicit comparison.

## Minimum output skeleton
```md
## 1. Problem situation (unstructured)
## 2. Rich picture summary
## 3. Purposeful activity systems + CATWOE
## 4. Root definition(s)
## 5. Conceptual activity model(s)
## 6. Comparison to reality (gaps)
## 7. Feasible and desirable changes
## 8. Proposed action and open tensions
```
