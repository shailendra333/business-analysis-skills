---
name: strategy-analysis
description: >-
  Use when an initiative's viability depends on market, competitive, or
  macro-environmental forces, and leadership wants integrated strategic
  diagnosis rather than only requirements work. Combines pestle-analysis
  (external macro trends), porters-five-forces (industry/competitive
  structure), and swot-prioritisation (internal+external synthesis) into
  one decision memo, explicitly naming each lens's blind spot so no single
  technique is mistaken for the whole picture. Produces an integrated
  strategy memo with a PESTLE table, prioritised SWOT, five-forces summary,
  and a strategic recommendation.
track: workflow
---
# strategy-analysis

## Purpose
Combine complementary strategic lenses into one coherent diagnosis and decision memo, rather than relying on a single technique that has its own blind spot.

## Trigger this skill when
- An initiative needs market, environment, or competitive framing, not just internal requirements work.
- Leadership explicitly wants strategic analysis and a recommendation, not a requirements document.
- External forces (regulation, competition, technology shifts, macroeconomics) strongly affect the initiative's viability.

## Expected inputs
- Project or problem context and the strategic decision it must support.
- Goals and constraints.
- Known stakeholders, systems, and documents (market data, competitor information, prior strategy work).
- Level of formality required.

## Operating procedure
Each lens below has a specific blind spot; naming it is part of the deliverable, not an afterthought:
1. Clarify the strategic decision to be supported — a strategy memo written before the decision is named tends to become an unfocused survey.
2. Run `pestle-analysis` for the external macro environment (Political, Economic, Social, Technological, Legal, Environmental). Blind spot: PESTLE says nothing about competitive structure — a favorable macro trend can still sit inside an unattractive industry.
3. Run `porters-five-forces` if competition and market structure matter to the decision (new entrants, supplier/buyer power, substitutes, rivalry). Blind spot: Porter's analysis is largely static and says nothing about macro trend direction — pair it with the PESTLE output from step 2.
4. Run `swot-prioritisation`, explicitly enforcing the internal (Strengths/Weaknesses) vs external (Opportunities/Threats) axis, and prioritise via a TOWS cross into the few load-bearing items. Blind spot: SWOT is only as good as the inputs fed into it — garbage in, garbage out, so feed it the PESTLE and Porter findings rather than starting from a blank brainstorm.
5. Clarify the value proposition and customer-facing implications using `value-proposition-analysis` where the decision affects what is offered to customers.
6. Identify strategic risks, openings, and positioning choices by cross-referencing all three lenses — a genuine strategic insight usually shows up as agreement or tension across at least two of them.
7. Produce a concise decision memo: the strategic question, the synthesis across lenses, the options considered, and a recommendation.

## Deliverables
- Integrated strategy memo (question, synthesis, options, recommendation)
- PESTLE table
- Five-forces summary (when run)
- Prioritised SWOT with TOWS cross
- Value proposition assessment (when run)
- Strategic recommendation with named risks and openings

## Guardrails / Quality gates
- Never present a single lens's output as "the strategy" — the memo must synthesize across at least two lenses when both are in scope.
- Explicitly name each lens's blind spot in the memo so the reader doesn't over-trust one technique.
- Explicitly separate fact, inference, and assumption, especially for market/competitor claims that are often asserted with more confidence than the evidence supports.
- Where the PESTLE, Porter, and SWOT outputs conflict, record the tension rather than silently favoring one.

## Handoff targets
- `business-problem-framing` — to translate a strategic recommendation into a scoped initiative.
- `benefit-hypothesis-writer` — to state the recommendation as a testable benefit hypothesis before investment.
- `evidence-gap-review` — to check which strategic claims are under-evidenced before the memo goes to leadership.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and cross-lens tension instead of guessing or smoothing it away.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Do not run all four techniques (PESTLE/Porter/SWOT/value proposition) reflexively when the decision only needs one or two — match lenses to the actual question from step 1.
- Do not populate SWOT from a fresh brainstorm when PESTLE/Porter findings already exist — feed them in.
- Do not let internal wishes ("we want to be a leader here") leak into the Opportunities/Threats (external) quadrants of SWOT.
- Do not present a decision memo without an explicit recommendation — a synthesis without a recommendation is not a finished strategy analysis.

## Minimum output skeleton
```md
## Strategic decision
## PESTLE table
## Five forces summary (if run)
## SWOT + TOWS cross
## Value proposition assessment (if run)
## Cross-lens synthesis and tensions
## Recommendation
```
