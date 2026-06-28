# Data snapshot — Global energy majors + disruption beneficiaries (tankers, LNG)

- **As-of:** 2026-06-28
- **Source:** yahoo-finance MCP (compare_stocks, get_company_info, get_historical_prices) + WebSearch for freight rates
- **Purpose:** identify global + disruption-specific energy exposure for thesis 002 (Strait of Hormuz disruption & under-priced oil)

## Screen

3M return = current price vs ~3-months-prior monthly close (≈ Mar 2026 close); price-only, dividends not added back.
1Y return = total return (incl. dividends) from yahoo-finance `get_historical_prices` summary. P/E, P/B, Div yield, Beta from `get_company_info` (trailing).

| Ticker | Type | 3M ret | 1Y ret | P/E (ttm) | EV/EBITDA | P/B | Div yield | Beta | Disruption linkage note |
|--------|------|--------|--------|-----------|-----------|-----|-----------|------|-------------------------|
| SHEL | Intl integrated major | -17.0% | +10.1% | 11.9 | n/a* | 1.24 | 4.08% | -0.25 | Diversified oil+LNG; gains on higher crude/LNG, not Hormuz-specific. Large Integrated Gas/LNG book = indirect LNG tightness beneficiary. |
| BP | Intl integrated major | -20.1% | +21.7% | 29.9† | n/a* | 6.84 | 5.38% | -0.24 | Highest div yield of UK majors; ttm P/E distorted by low EPS ($1.24). Fwd P/E 9.1. Pure higher-oil leverage, not rerouting. |
| TTE | Intl integrated major | -14.7% | +34.5% | 11.4 | n/a* | 1.43 | 5.49% | +0.05 | Cheapest large intl major on P/E with 5.5% yield; big LNG portfolio (Qatar/US offtake) gives LNG-disruption sensitivity. |
| E (Eni) | Intl integrated major | -16.7% | +38.5% | 20.4† | n/a* | 1.21 | 5.30% | +0.23 | Lowest P/B; ttm P/E inflated by weak EPS, fwd P/E 8.5. GG&LNG segment + Mozambique/Qatar LNG exposure. |
| EQNR | Intl integrated major | -25.7% | +27.2% | 14.0 | n/a* | 3.56 | 4.90% | -0.75 | Norway gas = security-of-supply premium if Mideast supply at risk; biggest 3M pullback. Pipeline gas to Europe is a Hormuz-bypass beneficiary. |
| FRO | Tanker (VLCC/Suezmax) | +9.7% | +107.6% | 8.7 | n/a* | 2.78 | 8.81% | +0.02 | Most direct rerouting play: 41 VLCCs + 21 Suezmax. Longer-haul ton-mile = higher rates. +1.55 special div in Jun. |
| STNG | Tanker (product/LR2-MR) | -1.6% | +63.9% | 7.2 | n/a* | 0.98 | 2.48% | -0.27 | Product/clean tankers; benefits from refined-product rerouting. Trades <1x book. Lower div but cheapest on P/B among tankers. |
| INSW | Tanker (crude+product) | +19.0% | +124.8% | 7.2 | n/a* | 1.79 | 4.91% | -0.10 | Strongest 3M momentum; mixed VLCC/Suezmax/Aframax + MR. Big variable/special dividends ($4.55 in Jun). Direct rerouting beneficiary. |
| DHT | Tanker (pure VLCC) | +0.1% | +69.1% | 8.6 | n/a* | 2.31 | 14.50% | -0.14 | Purest VLCC play (22 VLCCs) = cleanest crude ton-mile leverage. Highest headline yield (14.5%, largely variable). Lagged peers over 3M. |
| LNG (Cheniere) | US LNG export | -14.6% | +3.4% | 40.8† | n/a* | 13.5 | 0.92% | -0.00 | US Gulf LNG with no Hormuz transit = relative winner if Qatari LNG (~20% of global, no pipeline bypass) is disrupted. ttm P/E high; fwd P/E ~12.4. Lagged badly over 1Y. |

\* **EV/EBITDA: not available** — the yahoo-finance MCP `get_company_info` payload does not return an EBITDA field, so a clean EV/EBITDA cannot be computed without inventing it. Enterprise Values reported by the MCP for reference: SHEL $269B, BP $442B (likely gross-debt inflated), TTE $201B, Eni $95B, EQNR $167B, FRO $10.1B, STNG $2.9B, INSW $4.2B, DHT $3.2B, LNG $82B.
† **ttm P/E flagged:** BP (29.9), Eni (20.4), Cheniere (40.8) carry depressed/one-off trailing EPS; forward P/Es are far lower (BP 9.1, Eni 8.5, LNG 12.4). Treat ttm P/E with caution for these three.

## Tanker-rate / freight note (WebSearch, as-of 2026-06-28)

A **2026 Strait of Hormuz crisis** is live (Israel–Iran escalation, then US strike on Iran and an Iranian retaliatory strike on a US base in Qatar). Freight/insurance signals:

- **VLCC spot rates** through/around Hormuz jumped from ~**$30k/day** early June to ~**$50k/day** after the initial Israeli strikes, briefly spiking to ~**$60k/day** on the latest escalation.
- **War-risk insurance** for a prompt Ras Tanura–Ningbo VLCC went from **~$0.25/bbl to $0.70–0.80/bbl** in a single session; cargo war-risk premiums rose to ~**0.5% of cargo value** vs ~0.2% a week earlier — roughly a 3–4x jump.
- Notably, the **freight-rate spike came BEFORE the insurance spike**: rates moved on rerouting/voyage-flexibility demand first; insurance repriced only after the US strike and Iranian retaliation.

**Regime call:** This is the **bullish "rerouting / longer-haul" regime**, not a full closure. Cargoes are still moving but taking longer voyages and paying war-risk premia → higher ton-mile demand and higher VLCC day-rates — directly positive for crude tankers (FRO, DHT, INSW) and product tankers (STNG). The **double-edge caveat holds**: an actual *full* closure would trap tankers inside the Gulf and can crater realized rates short-term (vessels stuck, voyages cancelled), so the bull case depends on disruption-by-rerouting persisting rather than tipping into outright closure.

Sources:
- [2026 Strait of Hormuz crisis — Wikipedia](https://en.wikipedia.org/wiki/2026_Strait_of_Hormuz_crisis)
- [VLCC insurance jumps as freight rates escalate — SAFETY4SEA](https://safety4sea.com/vlcc-insurance-jumps-as-freight-rates-escalate-due-to-tensions/)
- [The Insurance Market Closed The Strait Of Hormuz Before Iran Did — gosships](https://www.gosships.com/p/the-insurance-market-closed-the-strait)
- [Oil supertanker rates hit all-time high as insurers drop war risk protection — CNBC](https://www.cnbc.com/2026/03/03/middle-east-crisis-iran-us-shipping-oil-tankers-strait-of-hormuz.html)

## Notes / caveats

- **As-of dating:** all prices/quotes are the 2026-06-28 snapshot; valuations are trailing. True only as of this date.
- **Tankers have ALREADY moved hard on a 1Y basis** — FRO +108%, INSW +125%, DHT +69%, STNG +64%. The thesis-relevant question is the *3M* leg: tankers are mixed (INSW +19%, FRO +10% have run; STNG -2%, DHT ~flat have lagged). The majors all *fell* 3M (-15% to -26%) on softening crude after the spring rally — i.e. the energy complex de-rated into the snapshot even as the Hormuz crisis re-escalated.
- **Beta is negative/near-zero for most names** (yahoo trailing beta) — reflects energy/oil decoupling from the broad market this window; do not read as low risk.
- **Dividend yields for tankers are partly variable/special** (FRO $1.55, INSW $4.55, DHT high payout) — headline yields overstate the recurring base dividend; treat as cyclical distributions tied to spot rates.
- **EV/EBITDA gap:** flagged above; would need `get_financial_statements` (EBITDA build) or alphavantage to fill — alphavantage deliberately not called to preserve rate limit.
- **Cheniere P/B (13.5) and ttm P/E (40.8)** are not comparable to upstream majors — capital-light/contracted-cashflow model; fwd P/E ~12.4 is the relevant lens.
- **Educational, not advice.**

**Read:** The most *direct* disruption play is **crude tankers**, and they have only *partly* moved — the 1Y run is huge but the 3M leg is split, with **DHT (pure VLCC, ~flat 3M) and STNG (<1x book, -2% 3M) the laggards** that have not yet repriced the latest re-escalation, while INSW/FRO have. Among **majors, TTE and Eni screen cheapest** (low P/B, fwd P/E ~8, ~5.3–5.5% yield) with real LNG optionality, and **EQNR** offers a Hormuz-*bypass* angle (Norwegian pipeline gas) after the deepest 3M pullback; **Cheniere** is the relative LNG winner on Qatari-transit risk but has lagged and is the priciest on book/trailing earnings — net: tankers are the cleanest under-priced-disruption exposure and have *not* fully moved, especially DHT and STNG.
