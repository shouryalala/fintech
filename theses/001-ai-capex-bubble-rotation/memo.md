---
id: "001"
title: "AI capex bubble & sector rotation"
status: open            # open | monitoring | validated | invalidated | inconclusive
conviction: 3/5
thesis_type: thematic-macro
horizon: "12-24 months"
tickers: [NVDA, AMD, AVGO, INTC, MSFT, GOOGL, META, AMZN, PLTR, CRM, ADBE, ORCL, CRWV]
sectors: [tech, semis, software, healthcare, financials, energy, staples, utilities]
date_initiated: "2026-06-27"
last_updated: "2026-06-28"
review_due: "2026-09-27"
---

# 001 — AI capex bubble & sector rotation

> Capital appears to be crowding into "AI" and out of everything else. This memo tests whether
> that's real, what the *actual* dividing line is, where the genuine risk sits, and whether
> there's an investable non-AI part of the market that isn't hostage to the trade.

## 1. Kernel
A lot of capital is flowing into anything AI (Nvidia, etc.) and out of non-AI tech (Adobe, etc.) —
is this real, and is it a dangerous bubble?

## 2. Hypothesis
**Original:** Capital is rotating *into* AI names and *out of* non-AI tech.

**Refined (after testing):** The real split is *into* **AI infrastructure (semis) and cheap,
profitable value**, and *out of* **expensive application software — regardless of whether it's
AI-branded**. Separately, the leveraged AI *builders* (ORCL, CRWV) carry **solvency** risk, not
merely the **capital-allocation** risk the cash-rich hyperscalers face.

## 3. Variant Perception
- The market discusses "AI" as a *single* trade. It is actually **two opposite risk profiles**
  wearing one label: hyperscalers making a *capital-allocation* bet (worst case: poor returns)
  vs. debt-funded builders making a *solvency* bet (worst case: zero).
- **EBITDA flatters AI-infrastructure companies** because it hides GPU depreciation — which, for
  3–5-year-life compute, is the single most real cost they have. **EBIT interest coverage** is the
  honest gauge, and it tells a very different story than the EBITDA figure management quotes.
- The bull/bear debate fixates on "is AI real?" The internet was real too. The decisive question is
  whether the value justifies the spend **in time** — before assets depreciate and debt matures.

## 4. Thesis Drivers
1. AI capex continues to outrun monetization (the timing gap).
2. GPU/compute assets depreciate far faster than the fiber of the dot-com cycle (~3–5y vs ~25y),
   compressing the window to "justify it in time."
3. Who *funds* the capex (operating cash flow vs. debt) determines who survives a timing miss.
4. Index concentration (top-10 ≈ 35–37% of S&P 500) plus passive flows can transmit an AI-led
   drawdown to the whole cap-weighted index — but not necessarily to every stock.

## 5. Confirming Evidence
- Wide dispersion: semis/AI-hardware up big while expensive software falls.
- Hyperscaler free cash flow shrinking as capex surges; leveraged builders FCF-negative.
- Leveraged builders (ORCL, CRWV) already de-rating hard.
- Rotation: equal-weight holding up vs cap-weight; value/healthcare/defensives leading recently.

## 6. Kill Criteria (pre-registered)
This thesis should be **abandoned or downgraded** if, over the next 1–2 quarters:
1. **Breadth re-narrows** — RSP resumes lagging SPY by a wide margin (the AI mega-caps re-assume
   sole leadership), reversing the rotation read in [the rotation snapshot](data/2026-06-28-rotation-rsp-vs-spy-sectors.md).
2. **Monetization arrives on time** — hyperscaler free cash flow *re-expands* even as capex keeps
   rising (i.e., AI revenue is absorbing the spend), undermining the "timing gap" driver.
3. **The leveraged builders de-risk** — ORCL turns FCF-positive / CRWV reaches positive EBIT
   interest coverage, removing the solvency-bet leg.
4. **Value/healthcare leadership reverses** for two-plus consecutive quarters with no AI wobble.

## 7. Analysis Log

### 2026-06-27 — Are flows really "into AI, out of non-AI tech"?
- **Tools / data used:** `alphavantage` PING + `yahoo-finance` MARKET_STATUS (connection check);
  `yahoo-finance get_historical_prices` (1y) for NVDA, AMD, AVGO, INTC, GOOGL, MSFT, META, PLTR,
  CRM, ADBE. → [snapshot](data/2026-06-27-ai-vs-nonai-1y-returns.md)
- **What I found:** Semis/hardware ripped (AMD +196%, INTC +548% [outlier]); GOOGL +76%; but MSFT
  −30%, META −29%, PLTR −29% (all *AI* names) and CRM/ADBE −38%/−43%. NVDA only +8%.
- **Conclusion / change to the thesis:** Refined the hypothesis. Not "AI vs non-AI" — it's
  *AI-infrastructure + cheap value* up vs *expensive software (AI-branded or not)* down. Logged a
  software multiple-compression component.

### 2026-06-27 — Who can survive a timing miss? (capex vs cash, interest coverage)
- **Tools / data used:** `yahoo-finance get_financial_statements` for MSFT, GOOGL, META, AMZN,
  ORCL, CRWV; `get_stock_quote` CRWV/ORCL. → [snapshot](data/2026-06-27-hyperscaler-capex-fcf-coverage.md)
- **What I found:** Capex as % of operating cash flow: MSFT 47% / GOOGL 56% / META 60% / AMZN 94%
  / ORCL 174% / CRWV 343%. MSFT & GOOGL still FCF-positive (+$72B/+$73B); AMZN FCF collapsed to
  +$8B; ORCL −$24B FCF, CRWV −$7B and loss-making. Interest coverage: ORCL 5.3x EBIT, CRWV **0.01x
  EBIT** (2.0x EBITDA — the gap is GPU depreciation).
- **Conclusion / change to the thesis:** Confirmed the variant perception: two risk profiles.
  Hyperscalers can "afford to be wrong about timing"; ORCL/CRWV cannot. CRWV is the WorldCom analog.

### 2026-06-28 — Is the broad market hostage to AI, and has rotation begun?
- **Tools / data used:** `yahoo-finance get_historical_prices` (1y) for SPY, RSP, QQQ, XLK, IWM,
  VTV, XLV, XLE, XLF, XLP, XLU; `get_stock_quote` across all 11 SPDR sectors + SCHD/VYM/VTV/IWM.
  → [rotation snapshot](data/2026-06-28-rotation-rsp-vs-spy-sectors.md) ·
  [valuation screen](data/2026-06-28-sector-valuation-dividend-screen.md)
- **What I found:** SPY +14.6% ≈ RSP +13.8% (breadth healthier than the concentration stat
  implies). Latest quarter: XLK −5%, QQQ −4%, SPY −3% while RSP +1.5%, value +4.2%, financials
  +4.8%, utilities +5.4%, healthcare +8.2% — rotation in real time. Cheapest *clean* non-AI:
  XLF 16.9x; best cheap+income+strong: SCHD (18.9x, 3.25%) and XLV (at highs). Traps: XLC & XLU
  are AI-adjacent.
- **Conclusion / change to the thesis:** There IS an investable non-AI sleeve, and it's already
  outperforming. Rotation is currently *orderly* (the benign version of the worry), not a crash.

## 8. Findings & Evidence
Four as-of snapshots in [`data/`](data/):
1. [`2026-06-27-ai-vs-nonai-1y-returns.md`](data/2026-06-27-ai-vs-nonai-1y-returns.md) — the dispersion.
2. [`2026-06-27-hyperscaler-capex-fcf-coverage.md`](data/2026-06-27-hyperscaler-capex-fcf-coverage.md) — survivability + interest coverage.
3. [`2026-06-28-rotation-rsp-vs-spy-sectors.md`](data/2026-06-28-rotation-rsp-vs-spy-sectors.md) — rotation evidence.
4. [`2026-06-28-sector-valuation-dividend-screen.md`](data/2026-06-28-sector-valuation-dividend-screen.md) — what's cheap/clean/income/strong.

**Historical anchor (dot-com comp):** S&P CAPE ~37 today vs ~44 at the 2000 peak — elevated but
below the record; today's leaders have *real* earnings (30–50x with profits) vs 2000's 100–200x or
no earnings. But index concentration is *higher* now (~36% top-10 vs ~27% in 2000). Survivors of
2000 (MSFT −65%, Cisco −89%, Amazon −90%) prove a great *business* can still suffer a brutal
multi-year *stock* drawdown — survival ≠ price protection.

## Principles Gate (pre-verdict check — see [PRINCIPLES.md](../../PRINCIPLES.md))
- **P1 — Priced in?** Largely yes — and that's the point. ORCL (−57% from high) and CRWV (−44%)
  are *already* repricing; the market is not asleep. The edge is not "I found the risk" but the
  *framing* read below.
- **P2 — Behavioral/structural edge?** Two: (a) **narrative overshoot** — "AI" treated as one trade
  when it's two risk profiles (allocation bet vs. solvency bet), amplified by EBITDA-quoting bulls
  ignoring GPU depreciation; (b) **structural** — passive-flow concentration (~36% top-10) that
  mechanically transmits an AI-led drop to the whole cap-weighted index. Other side: momentum/passive
  buyers and index funds. Corrects as the capex-vs-monetization timing resolves.
- **P3 — Horizon?** Yes — explicitly a 12–24 month thematic view; no precise timing required.
- **P4 — Portfolio fit?** The implication (favor cheap non-AI value/income, cap AI concentration,
  avoid the solvency-bet builders) is a diversifying, survive-being-early stance — consistent with P4.
- **P5 — Compounding?** Yes — the favored exposures (durable cash-generative compounders like
  MSFT/GOOGL held undisturbed, plus dividend-quality) are built to compound; the explicit avoidance
  of the solvency-bet builders (CRWV/ORCL) is a no-ruin choice that protects the compounding chain.

## 9. Current Read / Verdict
**Partially validated and materially refined.** (Conviction 3/5.)
- ✅ Real dispersion and a real capex bubble (5 hyperscalers: ~$143B → ~$414B capex in ~3y).
- ✅ Two distinct risk profiles; ORCL/CRWV solvency leg confirmed and *already* repricing
  (ORCL −57% from high, CRWV −44%).
- 🔁 The clean "AI vs non-AI" framing was wrong; corrected to "AI infra + value vs expensive software."
- 🟡 The crash leg is unproven: rotation is currently orderly, breadth is healthy (RSP ≈ SPY). Open.

## 10. Implications
*Educational only — not personalized financial advice.*
- The non-AI escape hatch exists and clusters in **Healthcare (XLV), dividend-quality (SCHD),
  Financials (XLF), Energy (XLE), Staples (XLP)**.
- Cleanest "cheap + income + non-AI + already-working": **SCHD** and **XLV**. Deepest value:
  **XLF**. Avoid **XLC/XLU** as *hedges* — they're AI exposure in disguise.
- The posture the analysis points to: don't try to time the burst; manage concentration and entry
  valuation; own things that survive being wrong about timing (the same test we applied to the
  companies, pointed at the portfolio).

## 11. Open Questions / Next Tests
- Pull **forward** P/E and earnings-revision trends to separate "cheap value" from "value trap."
- Look at top holdings *inside* SCHD/XLV to see exactly what one would own.
- Track ORCL/CRWV interest coverage quarter-over-quarter (the solvency clock).
- Watch RSP vs SPY weekly — the single cleanest tell for rotation vs. re-narrowing.
- Add Alpha Vantage `NEWS_SENTIMENT` to see whether narrative matches the flows.

## 12. Post-Mortem
_Not yet closed. To be filled when a kill criterion fires or the review date resolves the call._

## 13. Sources & Data Appendix
- **MCP servers:** `yahoo-finance` (`get_historical_prices`, `get_financial_statements`,
  `get_stock_quote`, `get_market_status`), `alphavantage` (`PING`, `MARKET_STATUS`).
- **As-of dates:** market data 2026-06-27 and 2026-06-28; price history through 2026-06-01 bars.
- **Reproducibility:** re-running the same tool calls on a later date will differ — markets move.
  Each `data/` snapshot is fixed to its as-of date by design.
