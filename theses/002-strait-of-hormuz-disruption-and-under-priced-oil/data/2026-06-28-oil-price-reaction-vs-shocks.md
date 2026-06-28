# Data snapshot — Oil price reaction vs historical supply shocks

**As-of:** 2026-06-28 · **Source:** yahoo-finance MCP (`get_historical_prices` CL=F / BZ=F / ^OVX, `get_stock_quote` CL=F / BZ=F / ^OVX / CLZ26 / CLZ27) + noted historical benchmarks · **Purpose:** the P1 "priced-in" test for thesis 002 (kill criterion #2)

> Headline: oil **already spiked ~+65–78% into the disruption (Mar–Apr 2026), matching the 2022 Russia/Ukraine shock**, and has since **round-tripped almost entirely back to its pre-event baseline**. The market priced a severe supply event, then unwound it. This is the central fact the thesis must contend with.

---

## 1. Current levels & moves (as-of 2026-06-28)

| Instrument | Pre-disruption baseline | Spike peak | Current | Spike vs baseline | Current vs baseline | Current vs peak |
|---|---|---|---|---|---|---|
| **WTI front (CL=F)** | ~$67 (wk 2026-02-23 close); $56.66 Dec-2025 low | **$111.54** wk-close 2026-03-30 (intraweek high **$119.48**) | **$69.23** | **+66%** (to wk-close) / +78% (to high) | **+3% to +22%** (vs $56–67 base) | **−38%** |
| **Brent front (BZ=F)** | ~$67–80 (late-Feb 2026); $60.47 Dec-2025 low | **$112.57** wk-close 2026-03-23 (intraweek high **$126.10**) | **$72.60** | **~+65%** | roughly flat-to-base | **−36%** |
| **Oil vol (^OVX)** | ~28–50 (Dec-2025 low 28.4) | **119.02** (2026-03-09) | **46.46** | +120%+ | mildly elevated | collapsing |

Path characterization: **not a grind — a violent spike that has already faded.** Quiet $56–67 base through 2H-2025/early-2026 → vertical repricing late Feb–Mar 2026 to ~$110–120 → choppy elevated plateau Apr–May (~$95–106) → steady decline through June back to **high-$60s/low-$70s**. As of today oil is essentially back at the pre-disruption baseline; OVX off its 119 peak to ~46 (elevated but draining).

## 2. Term structure (backwardation vs contango)

| Contract | Price (2026-06-28) |
|---|---|
| WTI front (CL=F) | $69.23 |
| WTI Dec-2026 (CLZ26) | $67.90 |
| WTI Dec-2027 (CLZ27) | $65.71 |

Front > Dec-26 > Dec-27: a **shallow backwardation** of ~$3.50 (~5%) front-to-18-months. This is a *gently declining* curve, **not** the steep, front-loaded backwardation you'd expect if the market were pricing acute near-term scarcity that fades. Read: the market is **not pricing sustained Hormuz scarcity** — it expects supply roughly normal across the whole curve, with only a small spot premium. (Caveat: front-month CL=F vs the dated NYM contracts are pulled at slightly different snapshot times; the shape, not the basis points, is what matters.)

## 3. Realized volatility

OVX collapsed from a **119** March peak (extreme — Gulf-War / GFC territory) to **46.46** today, and the WTI weekly series shows ranges narrowing (June weeks $73–82, $68–79) vs the Mar–Apr $85–120 swings. Volatility is **normalizing downward** — consistent with the market treating the event as resolving, not escalating.

## 4. Benchmark vs historical supply shocks (scaled to barrels-at-risk)

| Shock | Barrels at risk | Move (peak vs pre-event) | Implied $/barrel-at-risk sensitivity |
|---|---|---|---|
| **1990 Gulf War** | ~4–5 mbd (Iraq+Kuwait) | oil ~doubled (~$16→$36, **+100%+**) | very high (thin spare capacity, no SPR releases yet) |
| **2022 Russia/Ukraine** | ~7–8 mbd Russian exports at risk | Brent ~$80→~$130 (**+60%**) | ~8%/mbd |
| **Hormuz 2026 — *implied* (proportionate)** | **~20 mbd (~20% of supply)** | a *proportionate* event should imply a move **≥ 2022, plausibly toward/over a double** | — |
| **Hormuz 2026 — *observed peak*** | ~20 mbd headline at risk | **+65–78%** at the Mar–Apr peak | broadly *in line with 2022* per-headline, **below** what 20 mbd "should" command |
| **Hormuz 2026 — *observed today*** | ~20 mbd headline at risk | **~+3% to +22% vs base; round-trip to baseline** | **far below** any supply-shock benchmark |

Two distinct readings depending on the reference point:

- 🔴 **At the peak (Mar–Apr 2026): PRICED IN.** Oil delivered a +65–78% spike and OVX hit 119 — a textbook severe-supply-shock reaction, fully comparable to 2022. The market *did* price a major disruption. If you anchor on the peak, kill criterion #2 **already fired** once.
- 🟢 **Today (2026-06-28): the spike has FADED to baseline.** Front-month is back in the high-$60s and the curve is flat-to-slightly-backwardated. *Right now*, oil is **not** carrying a sustained ~20-mbd-loss premium. Whether that's a 🟢 gap (market wrongly fading a real, lasting disruption — the thesis) or 🟡/🔴 (market correctly fading a disruption that is resolving/being rerouted — kill #1 / kill #3) **cannot be settled by price alone.**

🟡 **Net for the priced-in test specifically:** the *sustained* disruption premium is **NOT currently in the price** (current levels ≈ pre-event base, curve flat). So on a point-in-time basis the "gap is real" leg is satisfied — but the fade is exactly what you'd see if the disruption were transitory, so this snapshot **cannot distinguish thesis from null on its own.** The fade pattern shifts the burden of proof onto the premise (kill #1) and the dampeners (kill #3).

## 5. Notes / caveats

- **Baseline is a judgment call.** WTI ranged $56.66 (Dec-2025) to ~$67 (late-Feb 2026) pre-spike; the % move depends on which you anchor. Stated both. The spike itself is unambiguous (~$67 → ~$111 weekly close).
- **Term structure is inferred from listed monthly contracts** (CL=F / CLZ26 / CLZ27), not a full forward strip; snapshot times differ slightly. The *shape* (shallow backwardation, no steep front load) is the robust signal.
- **Price alone is silent on causation.** A round-trip to baseline is consistent with EITHER (a) the disruption being brief / flows rerouting (kill #1), (b) dampeners structurally offsetting it (kill #3), OR (c) the market under-pricing a real, lasting loss (the thesis). **The next tests — is Hormuz actually still impaired (premise), and are SPR/OPEC+ buffers finite or durable — decide which.** Do not over-read this single snapshot.
- **^OVX open/low print as 0.00 in the quote** is a Yahoo artifact; the 46.46 close/level is the usable figure.
- 1990/2022 magnitudes are well-established historical benchmarks (analyst knowledge), not pulled from MCP.

---

**Read:** As-of 2026-06-28, oil **spiked proportionately into the disruption (+65–78%, matching 2022) but has since round-tripped to its pre-event baseline (~$69 WTI / ~$73 Brent), with a flat-to-shallow-backwardated curve and OVX collapsing from 119 to ~46** — so a *sustained* Hormuz premium is **NOT currently priced in (🟢 gap exists at today's levels)**, yet the market clearly *tested and then rejected* severe-shock pricing. Kill criterion #2 is **NOT cleanly triggered today** (the durable premium is absent), but it **flashed once at the March–April peak** and the fade itself is equally consistent with the efficient-market null — so the verdict now hinges on the premise (kill #1: is Hormuz still materially impaired?) and the dampeners (kill #3: are the buffers finite or durable?), not on price.
