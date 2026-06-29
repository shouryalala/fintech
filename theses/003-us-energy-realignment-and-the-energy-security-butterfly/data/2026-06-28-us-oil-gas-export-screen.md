# Data snapshot — US oil & gas export complex screen

- **As-of:** 2026-06-28
- **Source:** yahoo-finance MCP (compare_stocks, get_company_info, get_historical_prices)
- **Purpose:** screen US export-leverage beneficiaries for thesis 003 + read tailwinds-today

## Screen table

| Ticker | Type | Price | 3M ret | 1Y ret | P/E fwd | P/E trail | EV/EBITDA | P/B | Div yld | Beta | Thesis linkage |
|---|---|---|---|---|---|---|---|---|---|---|---|
| LNG (Cheniere) | LNG exporter | $241.64 | -14.6% | +3.5% | 12.4 | 40.8 | n/a* | 13.5 | 0.9% | ~0.0† | Direct LNG export leverage — owns/operates Sabine Pass + Corpus Christi terminals; pure-play export tolling/SPA model |
| VG (Venture Global) | LNG exporter | $10.95 | -30.3% | -28.1% | 11.3 | 11.4 | n/a* | 3.8 | 0.7% | n/a† | Direct LNG export; Calcasieu/Plaquemines online, CP2 in build. High-leverage, FCF negative (-$9.3B) — execution/financing risk |
| SRE (Sempra) | LNG exporter / utility | $94.27 | -1.6% | +18.8% | 17.0 | 32.1 | n/a* | 1.9 | 2.8% | 0.576 | Indirect — Sempra Infrastructure (Port Arthur, Cameron, ECA) gives LNG export optionality wrapped in a regulated utility base |
| NEXT (NextDecade) | LNG developer | $7.46 | -2.6% | -34.3% | 106.6 | n/a (EPS -1.34) | n/a* | -64.3 | none | 1.505 | Pre-cash-flow developer — Rio Grande LNG (Brownsville). Pure option on future export capacity; no current export earnings |
| ENB (Enbridge) | Midstream | $56.24 | +5.2% | +29.3% | 24.9 | 27.2 | n/a* | 3.0 | 5.0% | 0.807 | Toll-model throughput; gas transmission + Gulf export feed-gas pipes + LNG-linked infrastructure. High-yield compounder |
| ET (Energy Transfer) | Midstream | $19.17 | +1.1% | +14.5% | 12.6 | 16.0 | n/a* | 2.1 | 7.0% | 0.544 | Toll/throughput across gas, NGL, crude; Lake Charles LNG export ambition + NGL export terminals. Cheapest fwd P/E + top yield |
| KMI (Kinder Morgan) | Midstream | $33.19 | -0.1% | +23.2% | 22.0 | 22.3 | n/a* | 2.4 | 3.5% | 0.539 | Natural-gas pipeline backbone feeding Gulf LNG terminals; LNG facilities + feed-gas volume toll model |
| WMB (Williams) | Midstream | $77.92 | +8.6% | +34.1% | 30.3 | 34.2 | n/a* | 7.5 | 2.7% | 0.601 | Transco backbone into Gulf/Southeast LNG demand; gas-transmission throughput. Best momentum but richest on P/B (7.5) |
| OKE (Oneok) | Midstream | $89.22 | -0.1% | +14.7% | 14.4 | 15.9 | n/a* | 2.5 | 4.8% | 0.714 | NGL + gas gathering/processing with marine export services; toll model. Cheap fwd P/E + strong yield |

3M return computed as current price vs. ~2026-03-01 monthly close (interval=1mo). 1Y return is the tool's reported total return (price, 2025-06 → 2026-06).

## Notes / caveats

- **EV/EBITDA (*) not directly provided** by the yahoo-finance MCP tools used (get_company_info returns Enterprise Value but no EBITDA line). Not computed to avoid fabricating a denominator. EV is on file if a clean EBITDA source is added later: LNG $82.1B, VG $68.3B, SRE $107.8B, NEXT $13.7B, ENB $241.1B, ET $155.0B, KMI $107.2B, WMB $126.8B, OKE $89.8B.
- **LNG beta ≈ -0.0** and **VG beta = N/A** as reported by the source (†). Treat LNG's near-zero/negative beta as a data artifact, not a real defensive signal. VG only IPO'd recently, so beta is unavailable.
- **Trailing P/E is noisy** for several names (LNG 40.8 vs fwd 12.4; SRE 32.1 vs fwd 17.0; LNG operating margin printed -53.8% — a data/derivative-mark artifact). Forward P/E is the more reliable valuation read here.
- **NEXT** is pre-revenue / pre-cash-flow: trailing P/E N/A, negative book (P/B -64.3), fwd P/E 106.6 — valuation multiples are not meaningful; it trades as an option on Rio Grande LNG.
- **VG, NEXT, SRE, ENB show negative FCF** — heavy build-out capex (LNG trains, pipelines). Cash-generative compounders here are the established midstreams (ET, KMI, OKE, LNG itself) with positive FCF.
- 3M-return reference date is the nearest available monthly close (2026-03-01), so figures are approximate to the calendar quarter.

## Read

Tailwinds are visible in the **established midstream toll-model names** — WMB (+34% 1Y), ENB (+29%), KMI (+23%) have already rallied hard and now look crowded/richly valued (WMB P/B 7.5, fwd P/E 30; ENB fwd P/E 25); meanwhile **ET and OKE stand out as the cheap, high-yield, cash-generative compounders** (fwd P/E ~12–14, yields ~5–7%, positive FCF) that haven't run as far, and the **direct LNG pure-plays have lagged or fallen** (LNG +3.5% and pulled back ~15% over 3M; VG -28% and NEXT -34%), so the export-leverage trade is only partly priced — concentrated in midstream throughput, not yet in the exporters themselves.
