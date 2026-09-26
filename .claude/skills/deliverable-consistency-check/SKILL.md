---
name: deliverable-consistency-check
description: >-
  Use when a business analysis pack has been assembled from multiple
  artifacts (stakeholder register, process models, requirements, RACI,
  acceptance criteria, traceability matrix) built at different times or by
  different people, and is about to go to review or handoff. Runs concrete
  cross-artifact checks — the same actor and role names used consistently
  across the stakeholder register, RACI, and process model; the same
  requirement IDs referenced consistently between the requirements register
  and traceability matrix; no acceptance criteria orphaned from a parent
  requirement ID. Produces an inconsistency report with exact locations and a
  correction checklist.
track: quality-check
---
# deliverable-consistency-check

## Purpose
Find where a multi-artifact BA pack has drifted internally inconsistent — mismatched names, IDs, or scope across documents that were meant to describe the same thing.

## Trigger this skill when
- Multiple BA artifacts (stakeholder register, process models, requirements, RACI, acceptance criteria, traceability matrix) must agree and were built or edited separately.
- Diagrams and text descriptions may have drifted apart over successive edits.
- A pack is about to go to formal review, sign-off, or handoff to delivery.

## Expected inputs
- The full set of artifacts to cross-check (not just one document — consistency checking requires at least two to compare).
- Any existing naming/ID conventions the pack is supposed to follow.
- The review or handoff deadline, to prioritize which mismatches must be fixed first.

## Operating procedure
1. Build a cross-reference index first: every actor/role name mentioned anywhere, every requirement ID, every process step ID, every acceptance criteria ID, and which artifact(s) each appears in.
2. Check actor/role name consistency: does the stakeholder register's "Claims Assessor" match the RACI's "Claims Handler" match the process model's "Assessor" — same role, three names? Flag every naming drift, don't silently assume they match.
3. Check requirement ID consistency: does every requirement ID in the traceability matrix actually exist in the requirements register, and vice versa (no orphaned IDs on either side)?
4. Check acceptance-criteria parentage: does every acceptance criterion trace back to a specific requirement ID, or are any floating with no parent?
5. Check scope consistency: does the process model's in-scope/out-of-scope boundary match the problem statement's scope section, or has one been updated without the other?
6. Check terminology consistency: are the same business terms used the same way across documents (a glossary mismatch is a consistency defect, not just a style issue).
7. Record every mismatch with its exact locations (both/all artifacts and the specific line or ID), rate severity (blocks review / should fix / cosmetic), and recommend which artifact is likely the authoritative one to correct the others against.

## Deliverables
- Inconsistency report: mismatch description, artifacts and locations involved, severity, recommended correction direction.
- Terminology/naming fixes: canonical name recommended per drifted term.
- Traceability mismatches: orphaned or dangling IDs.
- Correction checklist ordered by severity.

## Guardrails / Quality gates
- Every finding must cite the exact artifacts and locations being compared — "these seem inconsistent" without pointing at both sides is not acceptable.
- Do not silently pick a "correct" version and rewrite; recommend the correction, let the artifact owners confirm.
- Focus on inconsistencies that would actually confuse a reader or break traceability, not every trivial wording difference.
- A pack with zero cross-references between artifacts (nothing to compare) is itself a finding — the pack lacks traceability.

## Handoff targets
- requirements-traceability-starter — when the traceability matrix itself is the artifact with the most orphaned IDs.
- requirements-packager — to re-assemble the pack once fixes are applied.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and ambiguity instead of guessing.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not check only one artifact in isolation — this skill's entire value is comparison across artifacts.
- Do not flag a naming difference as an error if it's genuinely a valid synonym already defined in a glossary — check for a glossary before flagging.
- Do not bury the blocking issues in a long list of cosmetic ones; lead with severity.

## Minimum output skeleton
```md
## Inconsistency report
| Finding | Artifacts/locations | Severity | Recommended fix |
|---------|----------------------|----------|------------------|

## Terminology fixes
| Term used | Where | Canonical form |
|-----------|-------|-----------------|

## Traceability mismatches
- Orphaned requirement IDs: 
- Orphaned acceptance criteria: 

## Correction checklist
- [ ] 
```

## Worked mini-example
Stakeholder register lists "Regional Manager" as an actor; the process model's swimlane is labeled "Area Lead" for what the interview notes describe as the same role. Finding: role-name drift across 2 artifacts, severity: should-fix (breaks RACI traceability), recommended fix: standardize on "Regional Manager" (the stakeholder register is the authoritative source for role names).
