# AiPayWorlds — Project State

**Snapshot:** 0.2  
**Last updated:** 2026-08-22  
**Owner:** BogdanXI

## Current phase

`0 — Discovery, architecture research and development-environment preparation`

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

## Current product hypothesis

Agents should be able to discover a paid service, obtain a quote, operate under explicit spending policies, authorize bounded payment, receive the service result, and retain an auditable receipt/reputation trail.

Potential workflow:

`discover → quote → identity/trust → policy check → authorize → pay → verify → receipt → reputation`

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

1. Define the first narrow user segment and concrete pain point.
2. Design the smallest end-to-end MVP and measurable success criteria.
3. Map x402 + AP2/A2A + ERC-8004 integration points.
4. Threat-model the policy/spending layer.
5. Compare existing EVM networks for the MVP.
6. Only then install the minimum local development toolchain.
7. Build a minimal testnet payment/escrow prototype.

## Blockers

None currently.

## Important rule

Do not convert current hypotheses into permanent architecture decisions without evidence recorded in `DECISIONS.md`.
