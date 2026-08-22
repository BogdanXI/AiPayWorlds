# AiPayWorlds — Project State

**Snapshot:** 0.1  
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

## Current technical hypothesis

A payment and trust infrastructure for autonomous software agents, potentially using an EVM-compatible L2 or dedicated chain if research proves it necessary.

## Current product hypothesis

Agents should be able to discover a paid service, operate under explicit spending limits, authorize a machine-to-machine payment, receive the service result, and retain an auditable payment/receipt trail.

## Not approved yet

- Dedicated L1.
- Dedicated L2 stack.
- OP Stack.
- Arbitrum technology.
- Polygon CDK/AggLayer.
- Native token.
- Token ticker or token sale.
- Mainnet.
- Production custody of funds.

## Hardware constraints

- ~6 GiB RAM is the main local limitation.
- Mechanical HDD is slower than SSD and unsuitable as the preferred production database/node disk.
- Local development should remain lightweight.

## Next objectives

1. Complete architecture and market research.
2. Compare existing agent-payment standards and existing settlement networks.
3. Define the smallest useful MVP.
4. Create the full project memory/recovery system.
5. Prepare the Ubuntu development environment only after the architecture research checkpoint.
6. Build a minimal payment/escrow prototype before considering a dedicated chain.

## Blockers

None currently.

## Important rule

Do not convert current hypotheses into permanent architecture decisions without evidence recorded in `DECISIONS.md`.
