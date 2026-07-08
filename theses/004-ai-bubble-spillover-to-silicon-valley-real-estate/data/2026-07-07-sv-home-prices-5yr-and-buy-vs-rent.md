# Silicon Valley home prices — 5-year trajectory & buy-vs-rent (as-of 2026-07-07)

**Sources:** Zillow ZHVI, Redfin, RentCafe/Zumper, RentalCalcs, MTC Vital Signs, FRED Case-Shiller
SF (SFXRSA), `yahoo-finance` MCP (ESS). FRED/Zillow/Redfin blocked automated fetch (403) — figures
below are from WebSearch snippets + one MCP pull; **treat dollar levels as approximate, cross-source.**
Educational only — not personalized advice.

## Note on data: Case-Shiller does NOT cover San Jose
The S&P Case-Shiller family **excludes San Jose** (also Houston, Philadelphia, San Antonio). The
"San Francisco" Case-Shiller metro covers SF + East Bay + Peninsula, *not* the San Jose core. For
San Jose/Santa Clara use Zillow ZHVI or FHFA (ATNHPIUS41940Q / ATNHPIUS06085A).

## The 5-year shape (2021 → 2026): melt-up → correction → AI recovery → flattening
Not a straight line — a round trip that ended higher:

| Phase | When | What happened |
|---|---|---|
| **COVID melt-up** | 2020 – mid-2022 | Low rates → sharp run-up. **SF Case-Shiller peaked May 2022 at 383.07** (record). |
| **Rate-shock correction** | mid-2022 – early 2023 | Fastest Fed hikes in 40yr → prices fell ~high-single to low-double digits. Local low ≈ **March 2023 (the SVB-collapse month)**. |
| **AI-money recovery** | 2023 – 2025 | Back toward / past records at the top end (Palo Alto median **$3.8M**, 2025 record). |
| **2026 flattening** | now | Broad Valley **flat-to-slightly-negative YoY** — sources disagree (see below). |

**Current typical values (2026):**
- Santa Clara County ZHVI ≈ **$1.57M** (Zillow: −1.6% YoY)
- San Jose ZHVI ≈ **$1.45M** (Zillow: −2.5% YoY); San Jose city median sale ≈ **$1.4–1.58M**
  (Redfin: **+2.7% YoY**; San Jose–Sunnyvale–SC avg value +1.1% YoY)
- Bay Area *regional* median (Vital Signs): peaked **$1.306M (2022)** → **$1.17M (2025)**, ~−10% from peak

**Verdict on "how much has it gone up?"** Over the full 5–6 years, **up substantially** — roughly
**+25–40%** vs pre-COVID (2019–20 typical ≈ $1.1–1.2M) depending on measure/geography — **but the
last 12 months are essentially flat** (−2.5% to +2.7% by source). The 2020–22 gains did the heavy
lifting; 2026 is stalling as high rates bite.

**Verified proxy (MCP, `yahoo-finance` ESS, Essex Property Trust — West-Coast apartment REIT):**
5-year total return **+8.09%**; low **$184.90 (Mar 2023)**, high/now **$298.32 (Jul 2026)**. It
round-tripped: **−38% peak→2023 trough, then back to new highs** — a cleaner mirror of the
rate-shock-then-recovery cycle than the sticky home-price series.

## Buy vs rent (as-of 2026-07-07)
**Headline: the numbers favor RENTING.** San Jose **price-to-rent ratio ≈ 38.5** (>20–21 = rent
favored; SJ is among the highest in the US).

| Input | Value |
|---|---|
| San Jose median home | ~$1.5M |
| 30-yr mortgage rate | 6.61% (2026-07-07) |
| SJ avg apartment rent | $3,295/mo (+9% YoY); SFH rent higher (~$4.5–6k) |
| Price-to-rent | **38.5 → rent** |

**Illustrative carry math** ($1.5M home, 20% down = $300k, $1.2M loan @ 6.61%):
- P&I ≈ **$7,670/mo** + property tax ~1.25% ≈ $1,560/mo + insurance/maintenance ~$800/mo
  ≈ **~$10,000/mo** to own (pre-tax-benefit), vs **~$4,500–6,000/mo** to rent the equivalent.
- Owning costs **~1.6–2x** renting monthly today. The gap = the appreciation bet + intangibles.

## Educational read (run through PRINCIPLES.md)
- **Horizon (P3/P5):** buying only pencils on a **long (7–10yr+) hold** — ~6–8% round-trip
  transaction cost + the own-vs-rent premium need years + appreciation to amortize. <5yr → rent.
- **Thesis-004 risk:** buying into the **AI-inflated top tier** right now is buying a melt-up that
  (per [004](../memo.md)) lacks 2000's rate cushion if AI wobbles. But median SV housing is sticky
  and supply-starved → a *crash* is unlikely; a **stall / soft top-end give-back** is the base case.
  The asymmetric risk is **overpaying at the luxury top at the melt-up peak.**
- **Rate optionality:** 6.61% is an expensive mortgage. "Marry the house, date the rate" — but
  thesis 004 says don't *count* on big cuts (less Fed room). Renting keeps flexibility and lets the
  down-payment capital compound elsewhere while price-to-rent is this stretched.
- **Net:** on today's math **renting wins**, and it preserves optionality into exactly the AI/rate
  uncertainty 004 flags. **Buy only if** long horizon + you value the non-financial ownership + not
  stretching into the AI-inflated tier + you can carry it without needing the appreciation bet to pay.
