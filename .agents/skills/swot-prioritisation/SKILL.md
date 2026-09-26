---
name: swot-prioritisation
description: >-
  Use when a compact strategic diagnosis is needed, or the team must move
  from broad situational analysis to a short list of priority actions.
  Populates Strengths and Weaknesses as internal, controllable factors and
  Opportunities and Threats as external, uncontrollable factors — never
  mixing the two axes — then cross-references them via a TOWS-style pass
  (Strength-Opportunity, Weakness-Opportunity, Strength-Threat,
  Weakness-Threat) to convert the raw list into 3-5 prioritised strategic
  actions. Produces a prioritised SWOT matrix with rationale.
track: atomic-technique
---
# swot-prioritisation

## Purpose
Map Strengths, Weaknesses, Opportunities, and Threats, then prioritise the few that actually change strategy — converting a static 2x2 into a short, ranked list of actions.

## Trigger this skill when
- A SWOT is explicitly requested for a decision or proposal.
- A compact strategic diagnosis is needed before deeper analysis.
- The team has done broad situational analysis (e.g. PESTLE, Porter) and needs to transition to focused, prioritised action.

## Expected inputs
- the strategic question or decision the SWOT should inform
- internal capability/resource information (for Strengths/Weaknesses)
- external environment information (for Opportunities/Threats) — reuse pestle-analysis or porters-five-forces output if it exists rather than re-deriving it
- any existing strategic priorities to check consistency against

## Operating procedure
1. Populate Strengths and Weaknesses first, and only from internal, controllable factors — capabilities, resources, reputation, cost position. The single most common SWOT error is letting an external factor ("the market is growing") drift into this side; if a factor isn't within the organisation's control, it does not belong here.
2. Populate Opportunities and Threats only from external, uncontrollable factors — market shifts, competitor moves, regulation, technology change. Reuse pestle-analysis/porters-five-forces findings where they exist instead of re-deriving them.
3. For each of the four lists, cut it down to the load-bearing items only — a SWOT with 15 bullets per quadrant hides the 3 that matter.
4. Run a TOWS-style cross: for each Strength-Opportunity pair ask "how do we use this strength to capture this opportunity"; Weakness-Opportunity ask "what weakness could stop us from capturing this opportunity, and must it be fixed first"; Strength-Threat ask "how do we use this strength to defend against this threat"; Weakness-Threat ask "where are we most exposed, and does it need urgent mitigation."
5. From the TOWS cross, select 3-5 prioritised actions — a SWOT is not complete until it converts into a short recommended-action list.

## Deliverables
- prioritised SWOT matrix (internal vs external axis clearly separated)
- TOWS cross-reference (SO/WO/ST/WT)
- 3-5 prioritised strategic actions with rationale
- suggested owners or next steps per action

## Guardrails / Quality gates
- Internal-vs-external axis is never violated — every Strength/Weakness is genuinely controllable; every Opportunity/Threat is genuinely external.
- Each quadrant is pruned to load-bearing items, not an exhaustive brainstorm dump.
- The output ends in a prioritised action list (via TOWS), not just a static 2x2.
- Where a factor could plausibly sit in two quadrants, the placement rationale is stated explicitly.

## Handoff targets
- moscow-prioritisation — once strategic actions exist, prioritise them against delivery scope/timeline
- strategy-analysis — SWOT is typically one lens combined with PESTLE/Porter's Five Forces in that workflow

## Output style
- Be explicit about uncertainty — mark speculative Opportunities/Threats distinctly from confirmed ones.
- Prefer short, verifiable statements over vague strategic language.
- Surface tension between quadrants (e.g., a Strength that is actually eroding) instead of smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not let an external factor appear under Strengths/Weaknesses or an internal one under Opportunities/Threats.
- Do not stop at a populated 2x2 without the TOWS cross and prioritised actions.
- Do not list so many items per quadrant that nothing stands out as load-bearing.
- Do not treat the SWOT as static — flag if inputs are time-sensitive and likely to shift.

## Minimum output skeleton
```md
## Strategic question
## Strengths (internal)
## Weaknesses (internal)
## Opportunities (external)
## Threats (external)
## TOWS cross (SO / WO / ST / WT)
## Prioritised actions (3-5)
```

## Worked mini-example
Strength: "Established distribution network" (internal, controllable). Opportunity: "New regulation opens a licensed segment" (external, per pestle-analysis). SO action: "Use existing distribution to enter the newly licensed segment before competitors build one" — a concrete action, not a restated observation.
