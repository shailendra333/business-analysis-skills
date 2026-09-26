---
name: observation-study-plan
description: >-
  Use when reported process behavior might not match actual process
  behavior — workarounds, informal handoffs, or tacit practices that
  interviewees would not think to mention. Designs a workplace observation
  plan that distinguishes the "espoused process" (what people say they do)
  from the "process-in-use" (what they actually do), plans for the Hawthorne
  effect (behavior changing because it's watched), and structures shadowing
  and think-aloud techniques. Produces an observation plan, checklist, and
  synthesis prompts.
track: atomic-technique
---
# observation-study-plan

## Purpose
Design a workplace observation approach to uncover real process behavior, not just reported behavior.

## Trigger this skill when
- Workarounds, informal handoffs, or tacit practices are suspected to matter but haven't surfaced in interviews.
- Interview data may be unreliable, incomplete, or too polished (people describe the process as it "should" work).
- Process understanding must be grounded in what actually happens, not just documentation or self-report.

## Expected inputs
- The process or work area to be observed.
- Known participants and their role in the process.
- Any existing process documentation or interview notes to compare observed behavior against.

## Operating procedure
1. Explicitly separate the **espoused process** (what documentation or interviews say happens) from the **process-in-use** (what observation is expected to reveal) — plan to record both, not just one.
2. Choose an observation technique matched to the goal: **shadowing** (following one person through their real work) for handoffs and sequencing; **think-aloud** (asking the participant to narrate their reasoning as they work) for decision points and judgment calls; **artifact/workaround collection** (spreadsheets, sticky notes, personal checklists people built themselves) for gaps the official process doesn't cover.
3. Plan explicitly for the **Hawthorne effect**: people behave differently when watched. Mitigate by observing over a long enough window that novelty wears off, avoiding announcing exactly what you're looking for, and cross-checking observed behavior against artifacts created when no one was watching (log files, ticket histories).
4. Build a structured note-taking template in advance (time, actor, action, tool/artifact used, deviation from documented process, apparent reason for deviation) rather than free-form notes.
5. Note ethical/consent considerations up front: who has been told they're being observed, and for what stated purpose.
6. Plan a synthesis pass immediately after each session while memory is fresh, separating observed fact from your own inference about why something happened.

## Deliverables
- Observation plan (who, where, when, technique per session).
- Observation checklist / note-taking structure.
- Risk and ethics considerations (consent, what's disclosed).
- Synthesis prompts for turning notes into findings.

## Guardrails / Quality gates
- Espoused process and process-in-use are recorded as two distinct things, not merged.
- Every observed deviation from the documented process is logged even if it looks minor — workarounds are frequently where the real requirement lives.
- Observed fact and observer inference are visually or structurally separated in notes.
- Consent/disclosure approach is stated, not assumed.

## Handoff targets
- `as-is-process-investigator` — observation findings feed directly into as-is process documentation.
- `business-rule-extractor` — workarounds observed in practice often encode undocumented business rules.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Recording only the documented process because that's what the participant narrates, without watching for what they actually do.
- Ignoring the Hawthorne effect and treating first-session behavior as representative.
- Mixing observed fact and observer interpretation in the same note without distinguishing them.
- Skipping consent/disclosure planning.

## Minimum output skeleton
```md
## Observation plan
| Session | Participant | Technique | Focus |
|---|---|---|---|

## Note-taking template
Time | Actor | Action | Tool/artifact | Deviation from documented process | Apparent reason

## Ethics/consent notes
## Synthesis prompts
```

## Worked mini-example
Documented process says claims are approved after a single checklist review. Shadowing one adjuster reveals they always cross-check a personal spreadsheet of "known problem policyholders" before approving — an undocumented workaround. Logged as: deviation = personal risk-check step; apparent reason = past false approvals; hands off to business-rule-extractor as a candidate undocumented rule.
