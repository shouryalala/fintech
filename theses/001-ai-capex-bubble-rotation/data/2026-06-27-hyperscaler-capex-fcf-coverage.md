# Data snapshot — AI spenders: capex vs cash generation & interest coverage

- **As-of:** 2026-06-27
- **Source:** `yahoo-finance` MCP → `get_financial_statements` (annual; latest fiscal year) and `get_stock_quote`
- **Purpose:** separate "patient capital" (self-funded capex) from "melting ice cube" (debt-funded)
- **Units:** USD billions unless noted. Op. Cash Flow ≈ Free Cash Flow + Capex.

## Capex vs cash generation (latest fiscal year)

| Company | Capex | Op. Cash Flow | Capex % of OCF | Free Cash Flow | Debt raised (yr) | Total debt | Verdict |
|---|---:|---:|---:|---:|---:|---:|---|
| MSFT | 65 | 136 | 47% | +72 | 0 | 61 | 🟢 self-funds easily |
| GOOGL | 91 | 165 | 56% | +73 | 65 | 59 | 🟢 self-funds (levering up) |
| META | 70 | 116 | 60% | +46 | 30 | 84 | 🟡 cushion shrinking |
| AMZN | 132 | 140 | 94% | +8 | ~25 | 153 | 🟡 cash nearly all consumed |
| ORCL | 56 | ~32 | 174% | −24 | 49 | 156 | 🔴 borrowing to build |
| CRWV | 10 | ~3 | 343% | −7 | 12 | 30 | 🔴 pure debt-funded, loss-making |

## Capex acceleration (3-year trend)

| Company | FY-2 | FY-1 | Latest |
|---|---:|---:|---:|
| MSFT | 24 | 44 | 65 |
| GOOGL | 32 | 53 | 91 |
| META | 27 | 37 | 70 |
| AMZN | 53 | 83 | 132 |
| ORCL | 7 | 21 | 56 |

Collective capex across these five ≈ $143B → ~$414B in ~3 years.

## Interest coverage — Oracle vs CoreWeave

| | EBIT / interest | EBITDA / interest | Interest bill | Total debt |
|---|---:|---:|---:|---:|
| ORCL (FY26) | 5.3x | 7.3x | $4.6B | $156B |
| CRWV (FY25) | **0.01x** | 2.0x | $1.2B | $30B |

**Key insight:** CoreWeave's EBITDA-vs-EBIT gap (~$2.45B) *is* GPU depreciation. On EBITDA it
covers interest 2.0x; on EBIT (the honest gauge for fast-depreciating compute) ~0.01x — operating
earnings cover ≈1% of the interest bill. It survives only on continued access to capital markets.
Oracle is genuinely profitable (5.3x) but FCF is −$24B and the interest bill will rise as the new
$49B of debt fully hits — coverage is a *trailing* comfort, not forward.
