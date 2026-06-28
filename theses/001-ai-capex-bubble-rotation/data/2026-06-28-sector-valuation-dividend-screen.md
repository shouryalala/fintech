# Data snapshot — sector valuation & dividend screen

- **As-of:** 2026-06-28
- **Source:** `yahoo-finance` MCP → `get_stock_quote` (P/E, dividend yield, 52-week range)
- **Purpose:** find what's cheap, non-AI, income-paying, and strong. Benchmark: SPY P/E 26.1.

| Sector / Factor | P/E | Div yield | % below 52wk high | 1Y return | AI relationship |
|---|---:|---:|---:|---:|---|
| XLC Comm. Services | 16.2 | 1.2% | −11.8% | — | ⚠️ AI in disguise (GOOGL/META) |
| XLF Financials | 16.9 | 1.5% | −5.2% | +1.1% | ✅ clean non-AI |
| SCHD Dividend quality | 18.9 | 3.25% | −2.5% | — | ✅ clean non-AI |
| IWM Small caps | 20.0 | 0.9% | −0.6% | +29.2% | ✅ mostly non-AI |
| XLE Energy | 20.1 | 2.65% | −15.2% | +23.8% | ✅ clean non-AI |
| VYM High dividend | 20.8 | 2.21% | −2.0% | — | ✅ clean non-AI |
| XLU Utilities | 21.3 | 2.68% | −3.3% | +13.4% | ⚠️ AI-adjacent (data-center power) |
| VTV Value | 21.6 | 1.9% | −1.7% | +22.4% | ✅ mostly non-AI |
| RSP Equal-weight S&P | 22.8 | 1.5% | −1.9% | +13.8% | diversified |
| XLP Staples | 25.5 | 2.62% | −6.0% | +8.5% | ✅ clean non-AI |
| XLV Healthcare | 25.9 | 1.68% | −0.2% (at high) | +19.3% | ✅ clean non-AI |
| XLB Materials | 26.1 | 1.7% | −4.7% | — | ✅ clean non-AI |
| SPY S&P 500 | 26.1 | 1.0% | −4.1% | +14.6% | ⚠️ ~35% AI mega-cap |
| XLY Consumer Disc. | 28.5 | 0.7% | −8.5% | — | ⚠️ AMZN/TSLA heavy |
| XLI Industrials | 31.5 | 1.2% | −2.6% | — | ⚠️ data-center buildout |
| XLRE Real Estate | 33.3* | 3.18% | −0.9% | — | rate-sensitive |
| XLK Technology | 36.1 | 0.4% | −8.9% | +39.0% | 🚨 AI core |

\*REIT P/E is misleading (REITs valued on FFO, not earnings).

**Traps (look cheap/safe but aren't clean non-AI hedges):**
- XLC — cheapest sector but GOOGL/META heavy → it *is* the AI trade at a cheap multiple.
- XLU — screens defensive/high-yield but data-center power demand makes it AI-adjacent.
- XLY — Amazon/Tesla heavy.

**Sweet spot (cheap + income + clean non-AI + already-working):**
- **SCHD** — 18.9x, 3.25% yield, near high, diversified non-AI. Best all-in-one.
- **XLV (Healthcare)** — at 52wk high, fair value, clean non-AI, defensive. Strongest momentum.
- **XLF (Financials)** — cheapest clean sector (16.9x) but lagging → deep value, "waiting to work."
- **XLE (Energy)** — 20x, 2.65% yield, but commodity-price risk and rolled over (−15% off high).

**Caveats:** cheap ≠ won't fall (correlations →1 in a panic); each cheap sector is cheap for a
reason (financials = recession risk, energy = oil risk); defensives (XLP/XLU) are priced full;
small caps lead now but are highest-beta in a crash.
