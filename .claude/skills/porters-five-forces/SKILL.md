---
name: porters-five-forces
description: >-
  Use when market attractiveness or competitive positioning needs structured
  assessment before a product, service, or market-entry strategy decision.
  Rates the five named forces — threat of new entrants, bargaining power of
  suppliers, bargaining power of buyers, threat of substitutes, and
  competitive rivalry — each against its specific structural drivers (e.g.
  switching costs, capital intensity, concentration), then synthesizes an
  overall industry-attractiveness view. Produces a force-by-force rating and
  strategic implications, not just a generic competition summary.
track: atomic-technique
---
# porters-five-forces

## Purpose
Assess competitive pressure and industry attractiveness using the five forces, rating each against its actual structural drivers rather than general impressions of "competition."

## Trigger this skill when
- Market attractiveness matters for a go/no-go or investment decision.
- A product or service strategy is being evaluated against competitive structure, not just internal capability.
- Leadership wants a competition-oriented lens distinct from PESTLE's macro-environment view.

## Expected inputs
- The market or industry segment under evaluation.
- Known competitors, suppliers, and buyer segments.
- Any existing assumptions about barriers to entry or substitution risk.

## Operating procedure
1. Rate each of the five forces (high/medium/low) against its named structural drivers, not a vague impression:
   - **Threat of new entrants**: capital requirements, regulatory barriers, incumbent brand loyalty, access to distribution.
   - **Bargaining power of suppliers**: supplier concentration, switching costs, availability of substitute inputs, importance of volume to the supplier.
   - **Bargaining power of buyers**: buyer concentration, price sensitivity, switching costs, availability of alternative providers.
   - **Threat of substitutes**: how a genuinely different product/service could meet the same underlying need, and the switching cost to move to it.
   - **Competitive rivalry**: number and size of competitors, industry growth rate (slow growth intensifies rivalry), differentiation vs. commoditization, exit barriers.
2. For each force, name the single strongest structural driver behind the rating (not a list of every possible factor) so the rating is traceable.
3. Identify which 1-2 forces are the actual binding constraint on attractiveness — not all five are usually equally decisive.
4. Synthesize into an overall industry-attractiveness judgment, and state what would have to change in the strongest force(s) to change that judgment.
5. Translate the strongest-pressure force(s) into a strategic implication (e.g. high buyer power -> differentiate or find a less price-sensitive segment).

## Deliverables
- Five-forces table (force, rating, key structural driver).
- Identification of the 1-2 strongest/binding forces.
- Overall industry-attractiveness judgment.
- Strategic implications tied to the strongest force(s).

## Guardrails / Quality gates
- Every force's rating is backed by a named structural driver, not just an adjective.
- Rivalry is not conflated with new-entrant threat — they are driven by different structural factors.
- The output identifies which forces are actually binding, rather than treating all five as equally weighted.
- Strategic implications are stated, not left implicit in the ratings table.

## Handoff targets
- `strategy-analysis` — Porter's Five Forces is one of the three lenses combined into a strategy decision memo.
- `value-proposition-analysis` — high buyer power or substitute threat often points directly to a differentiation gap worth mapping.

## Output style
- Be explicit about uncertainty.
- Prefer short, verifiable statements over long prose.
- Surface risk and disagreement instead of guessing at consensus.
- Separate facts, assumptions, constraints, and open questions.

## Failure modes to avoid
- Rating a force without naming its structural driver.
- Treating all five forces as equally important without identifying the binding one(s).
- Confusing substitutes (a different solution to the same need) with rivalry (a similar solution from a competitor).
- Stopping at the ratings table without a strategic implication.

## Minimum output skeleton
```md
## Five-forces table
| Force | Rating | Key structural driver |
|---|---|---|

## Binding force(s)
## Overall attractiveness judgment
## Strategic implications
```

## Worked mini-example
Buyer power rated High — driver: three large customers represent 70% of segment revenue, low switching cost. This is identified as the binding force. Strategic implication: pursue a smaller, less concentrated customer segment or add switching-cost-raising integration features.
