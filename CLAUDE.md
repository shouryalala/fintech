# CLAUDE.md — operating guide for this repo

`fintech` is a **read-only market-data workspace** plus an **Investment Thesis Log**. Use it to
research investment ideas against live market data and record date-stamped findings. It never
touches a brokerage — "Layer 1: market data only."

## Tools available here (MCP)
- **`yahoo-finance`** — quotes, historical prices, company info, financial statements, analyst
  data, multi-stock comparison. No key. Primary source.
- **`alphavantage`** — stocks/forex/crypto/commodities + technical indicators & economic data.
  Needs a free key in `.mcp.json` (git-ignored); free tier ≈ 25 req/day, 5/min — use sparingly.

MCP tool schemas are deferred — fetch them with ToolSearch (`select:<name>` or keywords) before
calling. If a server shows as "connecting," search anyway; ToolSearch waits for it.

## The core workflow: Investment Thesis Log (`theses/`)
When the user pitches a market idea, hunch, or hypothesis, **default to the thesis log** rather
than only answering inline:

1. **Scaffold:** `scripts/new-thesis.sh "idea title"` — auto-increments the ID, stamps today's
   date + a 90-day review date, and adds a row to `theses/INDEX.md`.
2. **Frame before testing:** capture the **hypothesis** (falsifiable), the **variant perception**
   (what the user believes that consensus doesn't — the edge), and **pre-registered kill criteria**
   (the evidence that would prove it wrong).
3. **Test** against the MCP data.
4. **Log:** append a dated entry to the memo's **Analysis Log** recording the question, the tools
   used, the key numbers, and the conclusion.
5. **Close** with a **post-mortem** that scores the call against the stated conviction.

## Non-negotiable conventions
- **As-of dating** — stamp every data pull with its date; a finding is only true as of then.
  Snapshot files: `data/YYYY-MM-DD-description.md`.
- **Append, don't overwrite** the Analysis Log — preserve what was thought *that day*.
- **Kill criteria are pre-registered** — written before testing, never edited to fit results.
- **One idea per thesis.**
- **Educational, not advice** — frame all positioning notes as such; no personalized financial advice.

## Where things live
- `theses/README.md` — full conventions & lifecycle (🟡 open · 🟢 validated · 🔴 invalidated · ⚪ inconclusive).
- `theses/INDEX.md` — the catalog/dashboard.
- `theses/001-ai-capex-bubble-rotation/` — worked example.
- `theses/_template/` — the memo template (copied by the script; don't author entries here).

## Git
- Commit or push **only when the user asks**. This is the user's personal research repo; they work
  directly on `main`.
- Secrets (`.mcp.json`) are git-ignored — never commit them.
