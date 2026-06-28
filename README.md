# fintech — market-data workspace

Folder-scoped Claude Code workspace for stock-market data & financial analysis.
MCP servers here are **Layer 1: market data only** (public data, no account access, no trading).

## Configured MCP servers (`.mcp.json`)

| Server | Transport | API key | What it gives Claude |
|---|---|---|---|
| `yahoo-finance` | local (npx) | none | Real-time quotes, historical prices, company profiles, financial statements, analyst ratings, multi-stock comparisons |
| `alphavantage` | remote (HTTP) | **free key required** | Stocks/forex/crypto/commodities + built-in technical indicators (RSI, MACD, SMA, etc.) |

## Setup

### 1. Yahoo Finance — works out of the box
No key. First run, `npx` downloads `yahoo-finance-mcp-server`. Nothing to do.

### 2. Alpha Vantage — add a free key
1. Copy the template to a real (git-ignored) config: `cp .mcp.json.example .mcp.json`
2. Get a free key: https://www.alphavantage.co/support/#api-key
3. In `.mcp.json`, replace `REPLACE_WITH_YOUR_ALPHAVANTAGE_KEY` with your key.
   - Free tier ≈ 25 requests/day, 5/min — fine for personal analysis.
   - `.mcp.json` is git-ignored on purpose — it holds your live key. Only `.mcp.json.example` is committed.

### 3. Activate in Claude Code
Project-scoped servers require approval. Run Claude Code from this folder
(`cd ~/CodeHaven/fintech`), and when prompted, approve the project MCP servers.
Check status with `/mcp` inside Claude Code, or `claude mcp list` in a terminal.

## Investment Thesis Log

Ideas/hypotheses are tracked in [`theses/`](theses/) — an investment-research journal run with
decision-journal discipline (falsifiable hypothesis, *variant perception*, pre-registered kill
criteria, date-stamped analysis log, closing post-mortem). Start a new one with:

```sh
scripts/new-thesis.sh "your idea title"
```

See [`theses/README.md`](theses/README.md) for conventions and [`theses/INDEX.md`](theses/INDEX.md)
for the catalog. Worked example: [Memo 001 — AI capex bubble & rotation](theses/001-ai-capex-bubble-rotation/memo.md).

## Scope & safety
- This is **read-only public market data** — it never touches your brokerage.
- Schwab account access / trading (Layer 2) is intentionally **not** set up here.
  When ready, that goes in a separate, carefully-scoped (ideally read-only) config.
