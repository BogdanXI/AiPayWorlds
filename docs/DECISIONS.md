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
