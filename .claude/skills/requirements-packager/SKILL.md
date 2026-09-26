---
name: requirements-packager
description: >-
  Use when elicitation and analysis outputs already exist but are scattered
  across notes, interviews, and drafts, and a formal, reviewable requirements
  pack is now needed. Assembles the requirements register, business rules,
  assumptions/constraints log, acceptance criteria, and traceability matrix
  into one coherent, navigable document, links every requirement back to its
  source and stakeholder, and runs a consistency check before calling the
  pack done. Produces a review-ready requirements document with catalogue,
  glossary, traceability notes, and an open-issues register.
track: workflow
---
# requirements-packager

## Purpose
Assemble fragmented BA outputs into a single coherent, traceable, review-ready requirements pack — the last step before handoff to design, delivery, or governance.

## Trigger this skill when
- Elicitation and analysis outputs already exist but are fragmented across separate notes, interviews, or drafts.
- A formal document or pack is needed for review, sign-off, or handoff.
- Traceability between requirements, sources, and acceptance criteria matters and doesn't exist yet.

## Expected inputs
- All existing elicitation and analysis artifacts (interview notes, workshop outputs, requirement drafts, business rules, acceptance criteria).
- Project or problem context and the level of formality required.
- Known stakeholders and sources, so each requirement can be traced back.

## Operating procedure
1. Gather every existing artifact and normalise terminology — the same actor or system must not appear under two different names across sources.
2. Feed free-text requirement candidates through `proto-requirements-normalizer` if they haven't already been structured into rows.
3. Organise content into background, scope, models, requirements catalogue, and open issues.
4. Structure requirements into a navigable hierarchy (e.g. epic/feature/requirement), each with a stable ID.
5. Link every requirement back to its originating need, stakeholder, and source document — this is what makes the pack traceable, not just organized. Populate a traceability matrix following `docs/ba/templates/traceability-matrix-template.csv` (Goal ID -> Requirement ID -> Acceptance Criteria ID -> Design/Test refs).
6. Assemble the requirements register itself following `docs/ba/templates/requirements-register-template.md`, plus the business rules catalogue and assumptions/constraints log as separate linked sections.
7. Insert diagrams, glossary, and cross-references where needed for navigability.
8. Before declaring the pack done, run `deliverable-consistency-check` against it — actor names, requirement IDs, and acceptance criteria references must be consistent across every section.
9. Flag unresolved contradictions and pending decisions explicitly rather than resolving them unilaterally.

## Deliverables
- Requirements document structure (background, scope, models, catalogue, open issues)
- Requirements catalogue (`docs/ba/templates/requirements-register-template.md` shape)
- Glossary of normalised terminology
- Traceability matrix (`docs/ba/templates/traceability-matrix-template.csv` shape)
- Open issues register

## Guardrails / Quality gates
- Every requirement must have a stable ID and trace to at least one source and one stakeholder need.
- Do not merge conflicting requirement drafts silently — record the conflict in the open issues register.
- The pack must pass a `deliverable-consistency-check` pass before being called review-ready.
- Explicitly separate fact, inference, and assumption in any narrative sections (background, scope rationale).

## Handoff targets
- `deliverable-consistency-check` — mandatory pass before the pack is considered complete (see step 8).
- `requirements-quality-check` — to score each requirement against clarity/feasibility/testability/priority/traceability before sign-off.
- `requirements-traceability-starter` — if traceability wasn't already established upstream.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and contradiction instead of guessing or smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not package requirements that lack a source or stakeholder link — an untraceable requirement is a defect in the pack, not a detail to fix later.
- Do not silently rename or merge duplicate requirements without recording that a merge happened and why.
- Do not skip the consistency check because the pack "looks done" — inconsistency is exactly what doesn't show up on a casual read.
- Do not leave the open issues register empty by default — an empty register on a non-trivial pack is a sign issues were missed, not resolved.

## Minimum output skeleton
```md
## Background
## Scope
## Requirements catalogue (ID, statement, source, stakeholder)
## Business rules
## Assumptions and constraints
## Acceptance criteria references
## Traceability matrix
## Glossary
## Open issues
```
