# Data snapshot — Solar & domestic renewables screen

- **As-of:** 2026-06-28
- **Source:** yahoo-finance MCP (`compare_stocks`, `get_company_info`, `get_historical_prices` 1y/1mo)
- **Purpose:** screen the solar/renewables leg of thesis 003 + read tailwinds-today and assess whether it's a genuine energy-security beneficiary or the weakest leg of the butterfly.

## Screen table

| Ticker | Type | Price | 3M ret | 1Y ret | P/E (fwd) | P/E (ttm) | P/B | Div yld | Beta | Mkt cap | Energy-security linkage |
|--------|------|-------|--------|--------|-----------|-----------|-----|---------|------|---------|--------------------------|
| FSLR | Solar — US thin-film mfg | $239.07 | +21.2% | +36.8% | 10.2 | 15.4 | 2.60 | — | 1.69 | $25.7B | strong 🟢 |
| ENPH | Solar — microinverters (resi) | $47.58 | +25.8% | +47.0% | 19.7 | 47.1 | 5.69 | — | 1.57 | $6.3B | weak 🟡 |
| SEDG | Solar — inverters/optimizers | $51.75 | +1.4% | +101.7% | 33.0 | n/a (EPS −$6.13) | 7.66 | — | 1.42 | $3.1B | weak 🟡 (Israel-domiciled) |
| RUN | Solar — resi lease/finance | $13.49 | −0.5% | +31.5% | 15.8 | 6.3 | 0.95 | — | 2.30 | $3.2B | weak 🟡 |
| NEE | Renewables-heavy utility | $88.56 | −3.9% | +28.2% | 20.1 | 22.5 | 3.34 | 2.81% | 0.67 | $184.7B | strong 🟢 |
| TAN | ETF — solar | $56.85 | +2.0% | +54.5% | 17.1 (port) | — | — | 0.0% | n/a | mixed 🟡 |
| ICLN | ETF — global clean energy | $19.50 | +6.9% | +46.9% | 18.2 (port) | — | — | 1.14% | n/a | mixed 🟡 |

*Returns: 1Y = total return from yahoo 1y/1mo series (2025-07 → 2026-06). 3M = price change vs. 2026-03 monthly close (FSLR 197.26, ENPH 37.81, SEDG 51.05, RUN 13.56, NEE 92.20, TAN 55.71, ICLN 18.24). P/E/P/B from `get_company_info`; ETF P/E is portfolio-weighted from `compare_stocks`. All names ex-FSLR/NEE carry no dividend.*

## Notes / caveats

- **Tailwinds are real now — the multi-year solar slump has decisively turned.** Every name is up sharply over 1Y (TAN +54%, SEDG +102% off a near-bankruptcy base, ICLN/ENPH +47%, FSLR +37%, NEE +28%). The narrative of "depressed solar on rates/policy" describes 2022–24, not the as-of picture. The complex has re-rated.
- **But the rally is late-cycle and violent.** Note the **May 2026 melt-up and June give-back**: SEDG ran 43→81→52, ENPH 33→74→48, FSLR 200→314→239 inside two months. These are the high-beta moves of a sentiment/short-squeeze regime (RUN beta 2.30, FSLR 1.69), not a steady fundamental grind. Entering after a vertical move is a momentum-chasing risk, not a value entry. 3M returns already show the leaders (SEDG, RUN, NEE) rolling over while only FSLR/ENPH still have momentum.
- **Quality split is stark.** FSLR is the only genuinely profitable, cash-generative name: 30.7% net margin, $1.15B FCF, fwd P/E 10.2, PEG 0.63, net cash. The rest are structurally weaker — SEDG still loses money (ttm EPS −$6.13, −28.6% margin, P/B 7.7), ENPH carries a 47x trailing P/E for 9.6% margins, and RUN is a leveraged finance entity ($14.9B debt, −$2.24B FCF, EV $19B vs $3.2B mkt cap) trading below book for a reason.
- **Energy-SECURITY linkage is thin for most of this complex — this is the honest crux.** The thesis is energy *security* (domestic supply, grid reliability, fuel independence), not climate policy. On that test:
  - **FSLR 🟢** — the one clean fit. US-based cadmium-telluride manufacturing (Phoenix HQ, domestic fabs) is a literal domestic-supply / China-decoupling / IRA-domestic-content story. Security buyer = US policy wanting non-Chinese panels.
  - **NEE 🟢** — qualifies via grid/baseload, but mostly because it's a diversified utility (nuclear + gas + storage + the largest US wind/solar fleet), not because it's "solar." Its security value is reliability and load growth (AI/datacenter demand), and it's the lowest-beta, only-yielding name here (0.67 beta, 2.81%).
  - **ENPH / SEDG / RUN 🟡** — these are hostage to **interest rates and consumer demand**, not energy security. They sell into residential rooftop, a discretionary, financing-dependent, rate-sensitive end market. SEDG is also Israel-domiciled — it is not a "US domestic supply" play at all. Their 1Y rallies track a rates-relief / risk-on impulse, not a security bid.
  - **TAN / ICLN 🟡** — diluted baskets; TAN is heavy in the rooftop/inverter names just flagged as weak, ICLN is global (non-US supply). Neither is a focused energy-security expression.

## Read

**Read:** Tailwinds are genuinely on — the whole complex has re-rated +28–102% over 1Y after a brutal vertical May melt-up — but **solar is the weakest leg of the energy-security butterfly: only FSLR (US manufacturing) and, loosely, NEE (grid/baseload diversification) carry a true security bid, while ENPH/SEDG/RUN and the ETFs are rate-and-consumer-demand plays riding a sentiment wave, not domestic-supply security; energy security remains far more naturally an oil/gas and nuclear story than a solar one.**
