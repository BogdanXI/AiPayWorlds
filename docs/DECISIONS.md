# AiPayWorlds — Decision Ledger

Decisions are recorded with explicit status so hypotheses are not mistaken for commitments.

## D-0001 — Product-first development

**Status:** APPROVED  
**Date:** 2026-08-22

Build and validate a useful agent-commerce product before committing to a dedicated blockchain.

**Reason:** reduces technical and capital risk and prevents building infrastructure without a validated user need.

## D-0002 — No disk repartitioning during initial development

**Status:** APPROVED  
**Date:** 2026-08-22

Use the existing Xubuntu filesystem. Do not resize the Windows or Linux partitions at this stage.

**Reason:** approximately 424 GB is already free and repartitioning adds unnecessary risk.

## D-0003 — Local computer is a development machine, not a production node

**Status:** APPROVED  
**Date:** 2026-08-22

**Reason:** approximately 6 GiB RAM and a mechanical HDD are suitable for lightweight development but not an appropriate production blockchain environment.

## D-0004 — Dedicated L2 remains a hypothesis

**Status:** UNDER_RESEARCH  
**Date:** 2026-08-22

Candidate approaches must be compared before committing to a dedicated network.

## D-0005 — Native token remains unapproved

**Status:** APPROVED (as a gate)  
**Date:** 2026-08-22

No token launch until utility, economics, security role, incentives, distribution and legal requirements are justified.

## D-0006 — Public/private information boundary

**Status:** APPROVED  
**Date:** 2026-08-22

Public repository contains project code and appropriate public documentation. Secrets, personal data, confidential negotiations and sensitive security information stay outside it.

## D-0007 — Project memory uses a compact context snapshot

**Status:** APPROVED  
**Date:** 2026-08-22

`AI_CONTEXT.md` is the portable recovery snapshot; the repository and Git history remain the broader source of truth.

## D-0008 — Agent payment standards must be researched before custom protocol work

**Status:** UNDER_RESEARCH  
**Date:** 2026-08-22

Existing approaches such as x402 and related machine-payment protocols must be evaluated before designing a proprietary payment protocol.

## D-0009 — Do not compete on generic agent payments

**Status:** APPROVED for MVP strategy  
**Date:** 2026-08-22

The project will not position itself as merely another stablecoin payment rail for AI agents. Current ecosystem activity shows strong incumbents and open standards already targeting that layer.

**Evidence:** x402 is being integrated into web/cloud infrastructure; Google AP2/A2A, ERC-8004 and other standards cover adjacent authorization, communication and trust functions.

**Working product wedge:** policy-controlled autonomous spending plus trust, verification and auditable receipts.

**Reconsider if:** research identifies a narrow payment problem where a new settlement rail is demonstrably superior.

## D-0010 — MVP should run on existing EVM infrastructure first

**Status:** APPROVED for MVP strategy  
**Date:** 2026-08-22

Build the first end-to-end workflow on an existing EVM test environment rather than operating a dedicated chain.

**Reason:** minimizes capital and operational risk and lets us measure real product demand.

**Reconsider if:** measured requirements demonstrate that existing settlement cannot meet product needs.

## D-0011 — Policy-controlled spending is the primary product hypothesis

**Status:** UNDER_RESEARCH  
**Date:** 2026-08-22

The first product hypothesis is a control/trust layer that lets an agent discover a service, obtain a quote, evaluate spending policy, authorize bounded payment, verify the result and retain a receipt/reputation record.

**Security assumptions to test:** intent binding, spend caps, expiry, nonce/replay protection, idempotency, recipient binding, concurrency control and dispute/refund semantics.

## D-0012 — Existing agent identity/trust standards must be reused where suitable

**Status:** UNDER_RESEARCH  
**Date:** 2026-08-22

ERC-8004 should be evaluated for identity/reputation/validation rather than immediately designing a competing registry. AP2/A2A and x402 should likewise be evaluated as complementary standards.

## D-0013 — Dashboard Foundation workstream

**Status:** APPROVED  
**Date:** 2026-08-22

**Problem:** The project needs a lightweight local command center that makes state, learning, recovery, research, security and roadmap visible without coupling the UI to an unselected blockchain architecture.

**Alternatives:** defer the dashboard; build a heavyweight web application; build a local dependency-free command center.

**Evidence:** `PROJECT_RULES.md` already defines `dashboard/` as a fully local, dependency-free development command center. A prototype baseline already exists in the repository.

**Decision:** Implement Dashboard Foundation v0.1 incrementally as a local, offline-capable development command center. Treat the existing dashboard as a prototype baseline and keep adapters replaceable.

**Trade-offs:** A local static foundation is less feature-rich initially than a full application stack, but it minimizes hardware/dependency risk and avoids premature architectural coupling.

**Assumptions:** The dashboard is an owner/operator development tool, not the public user wallet or public explorer at this stage.

**Reconsider if:** the MVP requirements demonstrate a need for a different runtime architecture or deployment model.

## Decision template

### D-XXXX — Title

**Status:** HYPOTHESIS / UNDER_RESEARCH / APPROVED / REJECTED / SUPERSEDED  
**Date:** YYYY-MM-DD

**Problem:**  
**Alternatives:**  
**Evidence:**  
**Decision:**  
**Trade-offs:**  
**Assumptions:**  
**Reconsider if:**  
