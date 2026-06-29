# Data snapshot — Nuclear & uranium screen

- **As-of:** 2026-06-28
- **Source:** yahoo-finance MCP (`compare_stocks`, `get_company_info`, `get_historical_prices`)
- **Purpose:** screen the nuclear/uranium butterfly for thesis 003 + test the crowding / already-priced kill criterion (#3)

Returns are price total-return from the period's first close to the latest close (close 2026-06-22 wk / latest quote $; ETF figures include the distributions shown in the data). P/E "n/m" = not meaningful (company is loss-making / pre-revenue). Mkt cap and beta from `compare_stocks` as-of 2026-06-28. ETFs return N/A on live price/cap/beta from the provider — returns derived from history.

## Screen table

| Ticker | Type | 3M ret | 1Y ret | Longer ret | P/E (fwd or n/m) | Mkt cap | Beta | Bucket |
|---|---|---:|---:|---:|---|---:|---:|---|
| CEG | Nuclear IPP/utility | -12.3% | -23.7% | +40.8% (2Y) | 22.9 ttm / 19.5 fwd | $94.3B | 1.09 | 🟢 cash-generative |
| VST | Nuclear-heavy IPP | +5.3% | -21.2% | +108.9% (2Y) | 27.3 ttm / 14.9 fwd | $55.1B | 1.41 | 🟢 cash-generative |
| CCJ | Uranium miner (producer) | +0.6% | +39.7% | +130.6% (2Y) | 100.5 ttm / 55.8 fwd | $45.5B | 0.98 | 🟢 cash-generative (rich) |
| UEC | Uranium miner | -16.4% | +24.6% | +82.1% (2Y) | n/m (EPS -0.22) | $5.3B | 1.15 | 🔴 pre-profit |
| NXE | Uranium developer | -11.7% | +45.3% | +46.2% (2Y) | n/m (EPS -0.48) | $6.5B | 1.61 | 🔴 pre-revenue |
| DNN | Uranium miner | -9.1% | +49.8% | +57.4% (2Y) | n/m (EPS -0.22) | $2.8B | 1.60 | 🔴 pre-profit |
| LEU | Enrichment (Centrus) | -9.5% | -23.2% | +278.9% (2Y) | 60.2 ttm / n/m | $3.3B | 1.34 | 🟡 profitable but volatile |
| OKLO | SMR / next-gen | -0.5% | -34.7% | +449.5% (2Y) | n/m (EPS -0.84) | $8.7B | 1.11 | 🔴 story-stock |
| SMR | SMR (NuScale) | -1.9% | -79.9% | -1.2% (2Y) | n/m (EPS -2.20) | $3.5B | 2.22 | 🔴 story-stock |
| NNE | SMR (Nano Nuclear) | -2.1% | -43.9% | +68.3% (2Y) | n/m (EPS -0.68) | $1.0B | 5.04 | 🔴 story-stock |
| URA | ETF — uranium broad | -6.5% | +16.0% | +65.5% (2Y) | ~32.6 (ETF) | n/a | n/a | basket |
| URNM | ETF — uranium miners | -11.3% | +21.4% | +20.3% (2Y) | ~10.9 (ETF) | n/a | n/a | basket |
| NLR | ETF — uranium & nuclear | -10.6% | +4.0% | +52.2% (2Y) | ~24.1 (ETF) | n/a | n/a | basket |

Current prices (as-of 2026-06-28): CEG $264.02 · VST $163.49 · CCJ $104.49 · UEC $10.80 · NXE $9.75 · DNN $3.10 · LEU $165.52 · OKLO $50.00 · SMR $10.10 · NNE $19.87. 52-wk ranges show how far off the highs: OKLO $50 vs $193.84 high (-74%), SMR $10.10 vs $57.42 (-82%), LEU $165 vs $464.25 (-64%), NNE $19.87 vs $60.87 (-67%), CEG $264 vs $412.70 (-36%).

## Notes / caveats

- **The big run was 2024–Oct 2025, not now.** Across the complex the peak prints land Oct 2025 (CEG $375, LEU $367, OKLO $133, NNE $48, SMR $50). Every name is well off those highs; most are in a multi-month correction. The 2Y total-return column is the "how far it ran" read; the 3M/1Y columns show the rollover.
- **3M is broadly negative (10 of 13 names down).** Momentum has rolled over — the complex was a down/sideways trade into 2026-06-28, not a fresh breakout. The freshest tape (week of 06-22) is red across uranium ETFs (URA -6.5% 3M, URNM -11.3%) and miners.
- **Bifurcation is the story.** Cash-generative utilities (CEG, VST) corrected from "AI-datacenter-power" euphoria; CCJ (the one producing miner with real earnings + Westinghouse) held up best 1Y (+39.7%) and is roughly flat 3M. Pre-profit miners (UEC/NXE/DNN) and SMR story stocks gave back the most.
- **Valuation flags.** CCJ trades at 100x ttm / 56x fwd — a *producer* priced like a growth story; rich even after the pullback. VST screens cheapest on forward (14.9x, PEG 0.48) and has real FCF ($477M) — the most "value" of the cash-generative bucket. CEG fwd 19.5x but FCF is negative (-$4.5B, heavy capex) — earnings real, cash flow currently consumed by buildout. LEU is profitable (60x ttm) but a 2.2x-range, single-theme enrichment name — treat as high-beta optionality, not core.
- **SMR/story stocks are pricing years of optimism, even after drawdowns.** OKLO (no revenue, EPS -$0.84) still carries an $8.7B cap; SMR down ~80% 1Y and ~flat over 2Y (round-trip); NNE beta 5.04 — these are pure momentum/narrative vehicles, not durable exposure. SMR's 1Y -79.9% is the clearest single illustration that the "story" can fully unwind.
- **Caveats:** returns are price-based snapshots, not annualized; DNN/UEC 2Y figures span periods of huge volume/float change (DNN avg volume >1B implies dilution — read per-share returns with care). ETF P/E from the provider is a blended figure and the live price/cap/beta fields returned N/A; ETF returns are derived from the history series and include the distributions shown.

## Read

**Tailwinds today?** Mixed-to-cooling — the structural energy-security narrative is intact but the *trade* peaked in late 2025 and has been correcting for months: 10 of 13 names are down over 3M and the freshest tape is red. **Crowded / already-priced (kill criterion #3)?** Partially triggered — the easy re-rating is done and the multiples that priced it (CCJ 56x fwd, OKLO/SMR/NNE on no/negative earnings) remain extended, but the 30–80% drawdowns mean this is no longer a one-way crowded long. Durable exposure lives in the cash-generative bucket (VST cheapest-on-fundamentals, CEG, CCJ), while OKLO/SMR/NNE are momentum/story stocks to treat as optionality, not thesis core.
