# Investment Thesis Log

A structured place to capture investment **ideas**, test them against real market data
(via this workspace's Yahoo Finance + Alpha Vantage MCP servers), and record **date-stamped
findings** — so every analysis is cataloged as of the day it was done.

This combines three established practices:

| Practice | Origin | What it contributes here |
|---|---|---|
| **Investment thesis memo** | hedge-fund / sell-side analysts | The written argument for an idea — incl. a *variant perception* (the edge) |
| **Decision journal** | Kahneman; Mauboussin; Farnam Street | Record reasoning *at the time*, date-stamped, to defeat hindsight bias |
| **Pre-registration / falsifiability** | scientific method | Commit *in advance* to **kill criteria** that would prove the idea wrong |

## How it works

1. **Pitch an idea.** A kernel — one sentence — is enough to start.
2. **Scaffold a thesis:** `scripts/new-thesis.sh "your idea title"` creates a numbered folder
   from the template, stamped with today's date, and adds a row to [`INDEX.md`](INDEX.md).
3. **Write the hypothesis, variant perception, and kill criteria** *before* heavy testing.
4. **Test it** against MCP data. Each work session appends a dated entry to the **Analysis Log**
   recording what was checked, which tools were used, and the conclusion.
5. **Update the Current Read** and, when resolved, write a **Post-Mortem** that scores whether
   the call was right relative to the stated conviction.

## Layout

```
theses/
  README.md          ← you are here
  INDEX.md           ← the dashboard: every thesis, its status, dates
  _template/         ← copied by the scaffold script (don't edit entries here)
  _reviews/          ← periodic cross-thesis reviews (e.g. quarterly)
  NNN-slug/
    memo.md          ← the thesis memo
    data/            ← as-of data snapshots (the raw numbers behind each finding)
```

## Conventions

- **As-of dating.** Every data pull is stamped with the date it was pulled. Markets move; a
  finding is only true *as of* its date. Snapshot files are named `YYYY-MM-DD-description.md`.
- **Append, don't overwrite.** The Analysis Log is append-only. Preserve what you thought that
  day even after the view changes — that record is the whole point.
- **Kill criteria are pre-registered.** Write them before testing; never edit them to fit results.
- **One idea per thesis.** Split unrelated ideas into separate memos so each can be scored.

## Status lifecycle & legend

`open → monitoring → validated | invalidated | inconclusive`

| Icon | Status | Meaning |
|---|---|---|
| 🟡 | open / monitoring | Active; being tested or watched |
| 🟢 | validated | Evidence supported the hypothesis |
| 🔴 | invalidated | A kill criterion was hit |
| ⚪ | inconclusive | Closed without a clear verdict |

## Scope & disclaimer

This is **read-only public market data** for research and education. Nothing here is
personalized financial advice, and the workspace never touches a brokerage account
(see the root [`README.md`](../README.md) — "Layer 1: market data only").
