# Data snapshot — Hormuz status & oil/LNG flows

- **As-of:** 2026-06-28
- **Source:** EIA Today in Energy (`#65504`, `#65584`, `#61002`); IEA Strait of Hormuz facts; CNBC (2026-03-12); Al Jazeera (2026-04-28, 2026-06-17, 2026-06-22); The Conversation / McMaster (reopening normalization); Wikipedia "2026 Strait of Hormuz crisis" & "2025–2026 Iran–US negotiations"; NPR (2026-06-23); CNN live (2026-06-20/21); NBC News (2026-06-27); straits.live tracker (updated 2026-06-28). MCP tools: alphavantage `NEWS_SENTIMENT` (errored on payload size — skipped per protocol, no retry); yahoo-finance not required.
- **Purpose:** verify the factual premise of thesis 002 (severe, unprecedented, lasting Hormuz disruption with slow normalization).

---

## 1. Is the Strait actually closed / disrupted right now? 🟢 supports premise

**Effectively closed to commercial shipping, contested, ~4 months running.**

- Disruption began **2026-02-28** when the US and Israel launched airstrikes on Iran; IRGC issued passage warnings and traffic fell ~70% within hours. Iran declared closure **2026-03-04**; mine-laying reported from ~2026-03-10. (Wikipedia crisis timeline)
- A **2026-06-17 memorandum of understanding** (14-point interim deal) aimed to reopen Hormuz toll-free for 60 days. Implementation failed: on **2026-06-20** Iran re-declared closure, citing Israeli strikes on Lebanon as ceasefire violations. Status is **contested** — Iran's military says closed, the foreign ministry/US say transits continue. (Al Jazeera 2026-06-22; CNN 2026-06-20)
- Live traffic (straits.live, **Day 120**, PortWatch count as of 2026-06-21): **~5 vessels/day vs ~93 normal (≈5% of baseline)**; 494 vessels anchored/waiting. War-risk insurance ~8× pre-crisis. On 2026-06-27 the US Navy's JMIC announced a widened transit route near Oman to push traffic through; US CENTCOM claimed 55 ships transited one Saturday — i.e., a militarized trickle, not a normal flow.

**Historical comparison:** This is the strongest claim and it holds. The Strait was **never fully closed** during the 1980–88 Tanker War or the June 2025 Israel–Iran flare-up (Iran's parliament voted to close it; it stayed open). EIA/Wikipedia frame the 2026 event as **the largest disruption to world energy supply since the 1970s** — i.e., genuinely unprecedented in the modern oil-market era for both severity and *duration* (~4 months). The "unprecedented duration" claim is **substantiated**, not hype.

## 2. Share of global flows through Hormuz 🟢 supports premise

| Flow | Volume (2024–25) | % of global |
|---|---|---|
| Total oil (crude + condensate + products) | ~20–20.9 mbd | ~20% of global petroleum liquids consumption |
| Crude + condensate | ~15 mbd | ~34% of seaborne crude trade |
| Refined products | ~5.5 mbd | — |
| LNG | ~one-fifth of global LNG trade | ~20% (mostly Qatar) |

- Qatar routes **~93%** of its LNG and UAE **~96%** through Hormuz; **no alternative LNG route exists** — bypass is an oil story only, not gas. (EIA `#65584`; IEA)

## 3. Reroute / bypass capacity 🟡 mixed (caps the downside)

| Pipeline | Total capacity | Used | Spare bypass |
|---|---|---|---|
| Saudi East–West "Petroline" (Abqaiq→Yanbu) | ~7 mbd (with NGL line conversion) | ~2 mbd | ~3–5 mbd |
| UAE Habshan–Fujairah (ADCOP) | ~1.8 mbd (≈1.5 mbd effective) | ~1.1 mbd | up to ~0.7 mbd |
| **Combined spare** | | | **~3.5–5.5 mbd** |

- Bypass covers only **~3.5–5.5 mbd of ~20 mbd Hormuz oil ≈ 18–28%** (and **~23–37% of the ~15 mbd crude**). The other **~70–80% of oil volume — and ~100% of the LNG — has no workaround.** Infrastructure was sized for a *short* disruption, not a 4-month one. (CNBC 2026-03-12; Al Jazeera 2026-03-27; ENR)

## 4. US–Iran status 🟢 supports premise (unresolved, fragile)

- **Trend: de-escalating-but-unresolved and fragile.** First round of high-level Switzerland talks (VP Vance / Speaker Ghalibaf, mediated by Qatar + Pakistan) ended **2026-06-22** with agreement on a **"roadmap" toward a final war-ending deal** and a mechanism for technical talks — but **no signed deal**. (Al Jazeera 2026-06-22)
- Open sticking points: IAEA inspector access to bombed nuclear sites, enrichment levels / HEU stockpile, frozen assets. As of **2026-06-23**, US and Iran openly disputed whether Iran agreed to inspections; Trump said "no inspections, no negotiations." (NPR 2026-06-23)
- Violence ongoing: Iran's delegation briefly walked out over Trump threats; on **2026-06-26** Trump alleged Iran fired 4 attack drones at Hormuz, one hitting a cargo ship — a claimed ceasefire violation. Israel continued Lebanon strikes. **Net: talks alive, ceasefire shaky, no durable resolution.**

## 5. Normalization lag (if/when reopened) 🟢 supports premise

Analysts (The Conversation/McMaster; Al Jazeera 2026-04-28; Pentagon) are consistent that **physical reopening ≠ normal flow**:

- **Mine clearance: up to ~6 months**, and harder because Iran has not disclosed mine locations. It is a *prerequisite* before insurers relent.
- **War-risk insurance:** jumped from ~0.25% of hull value to **3–8%** (up to ~$8M per tanker transit); underwriters need a *sustained incident-free record* (weeks-to-months) before cutting premiums.
- **Shipping-line return: ~4 months** after security is demonstrably restored.
- **Vessel repositioning:** carriers re-routed 2026 schedules around the Cape of Good Hope; unwinding takes time.
- **Bottom line from analysts: "the better part of a year" to full commercial normalization** even on a clean reopening.

---

## Notes / caveats

- Several primary trackers (straits.live, hormuzstraitmonitor.com, iranwarlive.com) are crisis-specific sites of uncertain editorial pedigree; their *headline numbers* (≈5 vessels/day, Day 120, ~8× insurance) are corroborated by Al Jazeera, CNN, NBC, EIA and Wikipedia, so directionally reliable — but treat precise daily vessel counts as indicative, not audited.
- "Closed" is legally/operationally **contested**: Iran's military asserts closure while a US-escorted trickle continues. The honest characterization is **"effectively closed / militarized trickle (~5% of normal)"**, not a clean physical seal.
- Flow %s are 2024–25 baselines (EIA/IEA); they describe *normal* importance, not current throughput.
- alphavantage `NEWS_SENTIMENT` returned an oversized payload and was not retried (per protocol); oil/energy news tone read qualitatively from the wire searches is risk-elevated but watching the roadmap for de-escalation.

---

**Read:** The premise is **TRUE** as of 2026-06-28 — Hormuz has been effectively closed (a militarized ~5%-of-normal trickle) for ~4 months, a genuinely unprecedented duration vs. the never-fully-closed Tanker War and June 2025; ~20% of global oil and ~20% of global LNG transit it with bypass covering only ~18–28% of the oil and none of the LNG; US–Iran talks are unresolved and fragile; and analysts expect ~6 months (mines) to ~a year (full) for normalization. **Kill-criterion #1 (premise fails) is NOT triggered.**
