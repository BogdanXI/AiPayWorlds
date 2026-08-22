# AiPayWorlds — Project State

**Snapshot:** 0.3  
**Last updated:** 2026-08-22  
**Owner:** BogdanXI

## Current phase

`Phase 2 — Dashboard Foundation (local development command center)`

Phase 0 discovery/research remains the completed foundation. The current implementation workstream is the Dashboard Foundation. This does not mean the blockchain architecture has been selected.

## Completed

- Public GitHub repository created.
- Initial project files created.
- Local development machine inspected.
- Confirmed Ubuntu 24.04.4 LTS / x86_64.
- Confirmed AMD FX-6300, approximately 6 GiB RAM, 2 GiB swap and a 1 TB Toshiba HDD.
- Confirmed approximately 424 GB free on the existing Xubuntu filesystem.
- Decision: do not repartition the disk at this stage.
- Decision: local machine is for development/testing, not a production blockchain node.
- Long-term project-memory design established.
- Research checkpoint 0.2 completed.
- Generic stablecoin agent payments identified as a crowded/rapidly standardizing layer.
- Policy-controlled autonomous spending + trust/verification identified as the leading product wedge.
- MVP strategy changed to existing EVM infrastructure first.
- Public repository security gate added and verified against a staged fake-secret test.
- Dashboard prototype baseline exists in `dashboard/`.
- Owner explicitly authorized the Dashboard Foundation workstream on 2026-08-22.

## Current product hypothesis

Agents should be able to discover a paid service, obtain a quote, operate under explicit spending policies, authorize bounded payment, receive the service result, and retain an auditable receipt/reputation trail.

Potential workflow:

`discover → quote → identity/trust → policy check → authorize → pay → verify → receipt → reputation`

## Dashboard Foundation scope

The dashboard is a local, dependency-free development command center for the owner/operator. It is intended to expose project state, learning, memory, runs, roadmap, terminal guidance, security and research through one coherent interface.

The current UI is a prototype baseline. During Phase 2 it will be incrementally replaced/refined into the long-term command-center architecture without prematurely coupling the UI to an unselected blockchain stack.

Initial Phase 2 priorities:
1. stable local shell and navigation;
2. truthful project-state data model;
3. Owner Book / learning workflow;
4. recovery and memory views;
5. security status;
6. roadmap and decision views;
7. research evidence views;
8. later, live adapters for Git and blockchain infrastructure when those systems exist.

## Architecture status

`UNDER_RESEARCH`: settlement may use an existing EVM L2 initially. A dedicated L2/appchain is optional and requires measured product justification.

Candidate future stacks include:
- OP Stack;
- Arbitrum technology;
- Polygon CDK/AggLayer;
- other rollup/appchain approaches.

No dedicated chain is approved.

## Token status

No native token is approved. No ticker, issuance schedule, sale, or token distribution has been approved.

## Hardware constraints

- ~6 GiB RAM is the main local limitation.
- Mechanical HDD is slower than SSD and unsuitable as the preferred production database/node disk.
- Local development should remain lightweight.

## Current security focus

The MVP must test payment-intent binding, spending caps, expiry, nonce/replay protection, idempotency, recipient binding, concurrency/race handling, quote expiry, receipt integrity and dispute/refund semantics.

## Current research conclusion

The project should compete on a control/trust layer for autonomous spending, not on generic blockchain payments. Existing standards such as x402, AP2/A2A and ERC-8004 should be integrated where appropriate rather than replaced without evidence.

## Next objectives

1. Implement and validate Dashboard Foundation v0.1.
2. Define the first narrow user segment and concrete pain point.
3. Design the smallest end-to-end MVP and measurable success criteria.
4. Map x402 + AP2/A2A + ERC-8004 integration points.
5. Threat-model the policy/spending layer.
6. Compare existing EVM networks for the MVP.
7. Only then install the minimum local development toolchain required for the selected MVP.
8. Build a minimal testnet payment/escrow prototype.

## Blockers

None currently.

## Important rule

Do not convert current hypotheses into permanent blockchain architecture decisions without evidence recorded in `DECISIONS.md`.
