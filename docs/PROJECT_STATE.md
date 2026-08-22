# AiPayWorlds — Project State

**Snapshot:** 0.4  
**Last updated:** 2026-08-22  
**Owner:** BogdanXI

## Current phase

`Phase 2 — Dashboard Foundation (local development command center)`

Phase 0 discovery/research remains the completed foundation. The current implementation workstream is the Dashboard Foundation. This does not mean the blockchain architecture has been selected.

## Active run

`RUN-0004 — Dashboard F1 Foundation`

**Status:** ACTIVE  
**Owner mode:** Owner / Operator  
**Technical lead:** AI-assisted development team

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
- F1 foundation architecture documented.

## Current product hypothesis

Agents should be able to discover a paid service, obtain a quote, operate under explicit spending policies, authorize bounded payment, receive the service result, and retain an auditable receipt/reputation trail.

Potential workflow:

`discover → quote → identity/trust → policy check → authorize → pay → verify → receipt → reputation`

## Dashboard Foundation scope

The dashboard is a local, dependency-free development command center for the owner/operator. It is intended to expose project state, learning, memory, runs, roadmap, terminal guidance, security and research through one coherent interface.

The long-term personal operator application is approved to live in a separate private repository once that repository is created. The public repository remains the public project/source-of-truth repository for appropriate open code, architecture, public research and non-sensitive documentation.

### F1 requirements

1. Desktop application shell, not browser-only operation.
2. Russian and English locales.
3. Stable navigation with a large future module registry.
4. Central Earth Engine with local day/night calculation and offline assets.
5. Theme system with many selectable themes.
6. Animation Budget with Off / Low / Medium / High / Cinematic levels.
7. Offline-first core operation and graceful OFFLINE/LAST KNOWN states for live adapters.
8. Owner Book with stage-specific learning modules.
9. Recovery, Security, Git, Research, Roadmap and Decision views.
10. Replaceable adapters so future GitHub/RPC/blockchain integrations do not force a UI rewrite.

F1 architecture baseline is documented in `docs/DASHBOARD_F1_FOUNDATION_RU.md`.

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
- Up to 40–50 GB may be used as a local dashboard asset/data budget, but this is not a target size.

## Current security focus

The MVP must test payment-intent binding, spending caps, expiry, nonce/replay protection, idempotency, recipient binding, concurrency/race handling, quote expiry, receipt integrity and dispute/refund semantics.

The dashboard must not expose secrets or grant unrestricted local filesystem/shell access to its frontend.

## Current research conclusion

The project should compete on a control/trust layer for autonomous spending, not on generic blockchain payments. Existing standards such as x402, AP2/A2A and ERC-8004 should be integrated where appropriate rather than replaced without evidence.

## Next objectives

1. Complete F1 desktop shell and deterministic offline run.
2. Validate RU/EN localization and navigation.
3. Validate theme and animation infrastructure.
4. Build the first Earth Engine scene.
5. Build the Owner Book learning foundation.
6. Create the private operator repository and define its sync boundary with the public project repository.
7. Define the first narrow user segment and concrete pain point.
8. Design the smallest end-to-end MVP and measurable success criteria.
9. Map x402 + AP2/A2A + ERC-8004 integration points.
10. Threat-model the policy/spending layer.
11. Compare existing EVM networks for the MVP.
12. Only then install the minimum local development toolchain required for the selected MVP.
13. Build a minimal testnet payment/escrow prototype.

## Blockers

None for F1 architecture work. Private repository creation is a pending operational step before private application code is published remotely.

## Important rule

Do not convert current hypotheses into permanent blockchain architecture decisions without evidence recorded in `DECISIONS.md`.
