# Data snapshot — US energy equities screen

- **As-of:** 2026-06-28
- **Source:** yahoo-finance MCP (compare_stocks, get_company_info, get_historical_prices, get_analyst_recommendations)
- **Purpose:** test whether US energy has re-rated (kill criterion #4) + segment compounders vs oil-beta plays for thesis 002

## Screen table

| Ticker | Type | 3M ret | 1Y ret | P/E (TTM) | P/E (fwd) | EV/EBITDA | P/B | FCF yield | Div yield | Beta | Bucket |
|--------|------|--------|--------|-----------|-----------|-----------|-----|-----------|-----------|------|--------|
| XLE  | ETF — broad energy | −10.9% | +27.3% | 20.1 | n/a | n/a | n/a | n/a | 2.65% | n/a | — |
| XOP  | ETF — E&P          | −14.2% | +23.5% | 12.0 | n/a | n/a | n/a | n/a | 1.98% | n/a | 🟠 oil-beta |
| OIH  | ETF — services     | −7.1%  | +56.8% | 19.8 | n/a | n/a | n/a | n/a | 1.16% | n/a | 🟠 oil-beta |
| USO  | ETF — oil tracker  | −17.1% | +32.5% | n/a  | n/a | n/a | n/a | n/a | 0%    | n/a | 🟠 pure oil |
| XOM  | Integrated major   | −19.0% | +26.2% | 23.0 | 12.6 | n/a | 2.20 | 2.1% | 3.02% | 0.15 | 🟢 compounder |
| CVX  | Integrated major   | −16.6% | +17.5% | 29.7 | 13.5 | n/a | 1.84 | 3.5% | 4.16% | 0.47 | 🟢 compounder |
| COP  | E&P (large)        | −19.1% | +14.8% | 18.0 | 11.5 | n/a | 2.00 | 4.1% | 3.17% | 0.11 | 🟢 compounder |
| EOG  | E&P                | −7.6%  | +14.4% | 13.0 | 9.0  | n/a | 2.29 | 4.0% | 3.08% | 0.26 | 🟢 compounder |
| OXY  | E&P (oil-levered)  | −22.4% | +16.1% | 67.6 | 12.5 | n/a | 1.62 | 6.1% | 2.08% | 0.12 | 🟠 oil-beta |
| DVN  | E&P (oil-levered)  | −15.1% | +30.4% | 11.8 | 7.7  | n/a | 1.70 | 3.3% | 2.46% | 0.42 | 🟠 oil-beta |
| FANG | E&P (Permian)      | −8.0%  | +24.1% | 185.5| 10.2 | n/a | 1.39 | 2.8% | 2.45% | 0.39 | 🟠 oil-beta |
| SLB  | Services           | −8.1%  | +42.9% | 20.7 | 14.0 | n/a | 2.68 | 4.3% | 2.51% | 0.71 | 🟠 oil-beta |
| HAL  | Services           | −11.5% | +56.3% | 18.9 | 11.7 | n/a | 2.65 | 7.1% | 1.99% | 0.70 | 🟠 oil-beta |

### How fields were derived
- **3M ret:** current price (as-of 2026-06-28) ÷ 2026-03-01 monthly close − 1. Approximates the ~3-month window off the March spike high.
- **1Y ret:** total return from get_historical_prices (1y, dividend-inclusive).
- **FCF yield:** trailing Free Cash Flow ÷ Market Cap (both from get_company_info). ETFs: not applicable.
- **Beta:** Yahoo's reported beta (compressed/low across the board — see caveats).

## Price path (why 3M is negative but 1Y is strongly positive)

The complex spiked hard Jan–Apr 2026 then sold off into June:
- **USO** (oil proxy): Dec-25 low ~$69 → Apr-26 peak ~$147 (+113%), now ~$105 (−28% off peak).
- **XLE:** Dec ~$44 → Mar peak ~$60, now ~$54.
- Every name peaked Mar–Apr 2026 and has since given back 7–22%. The disruption premium was **built and then partially unwound** over the past quarter.

## Analyst snapshots (as-of 2026-06-28)

| Ticker | Consensus | # | Mean target | Upside to mean |
|--------|-----------|---|-------------|----------------|
| XOM | Buy (mean 2.29, "Hold"-ish) | 21 | $170.29 | +24.7% |
| CVX | Buy (mean 1.79) | 22 | $217.14 | +26.9% |
| COP | Buy (mean 1.73) | 25 | $143.44 | +35.4% |

Targets sit well above spot for all three; recent revisions (May–Jun) were mostly target **raises**, i.e. the sell-side did not chase the price down with the June pullback — they still see upside. COP shows the widest gap to target.

## Notes / caveats

- **EV/EBITDA not available** from the yahoo-finance tool's output — left as n/a rather than invented. Enterprise Value *is* available per name (XOM $611.8B, CVX $384.0B, COP $146.1B, OXY $71.4B, DVN $33.2B, EOG $75.1B, SLB $79.6B, HAL $34.7B, FANG $70.5B) but EBITDA is not, so the ratio is not computed here.
- **ETF fields:** XLE/XOP/OIH/USO returned no live price, market cap, beta, or per-share fundamentals from compare_stocks (only trailing P/E and div yield). FCF yield / beta / P/B therefore n/a for ETFs. USO is a futures vehicle — no dividend, no P/E meaningfully.
- **Betas look uniformly low (0.1–0.7)** and are likely depressed by Yahoo's lookback window over a period when energy decoupled from the broad market. Treat beta here as *relative* sensitivity within the group (SLB/HAL/CVX/DVN highest; COP/OXY/XOM lowest) rather than an absolute market-beta.
- **OXY P/E (67.6) and FANG P/E (185.5)** are distorted by depressed trailing EPS (OXY $0.74, FANG $0.97); forward P/E (12.5 and 10.2) is the cleaner read. FANG also shows a near-zero TTM ROE/ROA — trailing earnings hit by charges/D&A; forward EPS $17.70.
- **3M return** is anchored to the March monthly close (the local high). It captures the post-spike drawdown; it is not a precise calendar 3-months-to-the-day figure.
- All figures are point-in-time snapshots; true only as-of 2026-06-28.

## Read

**Read:** US energy has NOT priced in a *new* disruption as of 2026-06-28 — the complex spiked Jan–Apr 2026 (oil/USO +110%, XLE to ~$60) and has since **given back 7–22% over the last quarter**, so kill criterion #4 (equities have already re-rated to embed a disruption premium) is **not triggered** at current levels; the premium has largely deflated. The cheapest, highest-quality **compounders** are COP, EOG, and the integrated majors XOM/CVX (low forward P/E ~9–14, 3–4% dividend yield, 2–4% FCF yield, sell-side targets ~25–35% above spot); the **purest high-beta oil-price expressions** are the services names SLB/HAL (beta ~0.7, biggest 1Y moves +43–56%) and oil-levered E&Ps OXY/DVN/FANG plus the XOP/USO ETFs — these will move most on any actual Hormuz event but carry the most balance-sheet and price-deflation risk.
