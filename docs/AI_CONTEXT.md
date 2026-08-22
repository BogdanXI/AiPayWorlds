# AiPayWorlds — AI Context Snapshot

> Compact recovery snapshot for any future development assistant. Factual and project-focused; not a chat transcript.

**Context version:** 0.2  
**Last updated:** 2026-08-22  
**Repository:** BogdanXI/AiPayWorlds  
**Maintainer:** BogdanXI

## Mission

Build useful infrastructure for autonomous software agents to discover services, operate under bounded spending policies, make machine-to-machine payments, receive verifiable results, and maintain auditable receipts/reputation.

## Core principle

Do not build a blockchain for its own sake. Prove the product need first. A dedicated L1/L2 is justified only if it materially improves the product versus existing networks and protocols.

## Current phase

Discovery + architecture research + environment preparation.

## Current product hypothesis

The strongest current wedge is **policy-controlled autonomous spending plus trust/verification**.

Workflow:

`discover → quote → identity/trust → policy check → bounded authorization → payment → result verification → receipt → reputation`

The user should be able to define service/vendor/task limits, price limits, allowed assets/networks and human-approval thresholds.

## Current architecture status

`UNDER_RESEARCH`: use an existing EVM network for the first MVP. A dedicated L2/appchain remains optional.

Candidate future stacks: OP Stack, Arbitrum technology, Polygon CDK/AggLayer and other suitable approaches.

Do not approve a chain until the comparison matrix and product requirements justify it.

## Existing standards to evaluate

- x402: HTTP-native agent payment rail.
- Google AP2/A2A: payment authorization and agent communication.
- ERC-8004: portable agent identity, reputation and validation.

Prefer integration over reinvention unless a measured gap requires new protocol work.

## Security focus

Treat payment-intent binding, spending caps, expiry, nonce/replay protection, idempotency, recipient binding, concurrency/race handling, quote expiry, receipt integrity and dispute/refund semantics as first-class requirements.

## Token status

No native token approved. No ticker, issuance, sale or distribution approved.

## Local development machine

- Ubuntu 24.04.4 LTS, x86_64
- AMD FX-6300, 6 cores
- ~5.8 GiB RAM
- 2 GiB swap
- 1 TB Toshiba SATA HDD
- ~424 GB free on existing Xubuntu filesystem
- Do not repartition at this stage
- Do not run a production blockchain node locally

## Public/private boundary

Public: source code, public architecture, public documentation, verified research, public test deployments, release notes and truthful required disclosures.

Private/outside this public repository: credentials, seed phrases, private keys, personal data, confidential contracts, private negotiations, unpublished vulnerability details and other sensitive information.

Do not falsely claim authorship, audits, partnerships, funding or security properties. AI assistance is internal tooling; legally required or materially relevant disclosures must remain truthful.

## Decision summary

- Product-first development: APPROVED.
- Existing EVM infrastructure first for MVP: APPROVED strategy.
- Dedicated L2: UNDER_RESEARCH.
- Generic agent-payment rail as product: REJECTED for MVP strategy.
- Policy-controlled spending/trust layer: UNDER_RESEARCH.
- Native token: unapproved.
- No disk repartitioning: APPROVED.
- Local PC is development only: APPROVED.

## Context restoration protocol

1. Read this file.
2. Read `PROJECT_STATE.md`, `PROJECT_RULES.md`, `DECISIONS.md`, `RESEARCH.md` and relevant current documents.
3. Compare the snapshot with current repository contents and recent Git history.
4. Report drift, contradictions and missing information.
5. Do not make consequential changes until contradictions are resolved.

## Open questions

- Which exact first user segment has painful, recurring autonomous-spending problems?
- What measurable advantage does our policy layer provide over existing x402/AP2/A2A tooling?
- What trust signal is actually useful enough to pay for?
- What service category makes the best first marketplace?
- Is escrow required for that service category?
- Which existing EVM network is best for the MVP?
- What legal structure/jurisdiction is appropriate if the project becomes a commercial crypto network?

## Next action

Define the first user segment + concrete problem + success metric, then design the smallest end-to-end prototype before installing the heavier blockchain stack.
