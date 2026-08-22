# AiPayWorlds — AI Context Snapshot

> This file is the compact recovery snapshot for any future development assistant. It is intentionally factual and project-focused.

**Context version:** 0.1  
**Last updated:** 2026-08-22  
**Repository:** BogdanXI/AiPayWorlds  
**Maintainer:** BogdanXI

## Mission

Build useful infrastructure for autonomous software agents to discover services, make bounded machine-to-machine payments, receive results, and maintain auditable settlement records.

## Core principle

Do not build a blockchain for its own sake. Prove the product need first. A dedicated L1/L2 is justified only if it materially improves the product versus existing networks and protocols.

## Current phase

Discovery + architecture research + environment preparation.

## Current hypothesis

Agent commerce needs reliable discovery, identity/trust, bounded authorization, payment, settlement, receipts and dispute/risk controls. A blockchain may provide programmable settlement and open interoperability, but it is not automatically required.

## Current MVP hypothesis

1. Agent discovers a paid service.
2. Service publishes price/payment requirements.
3. Agent operates under a spending cap.
4. Agent authorizes payment.
5. Service verifies payment.
6. Agent receives the result.
7. A receipt and settlement record are retained.

## Architecture status

`HYPOTHESIS`: EVM-compatible settlement / L2 / dedicated chain.

Candidate approaches must be compared before approval, including:
- existing L2/application deployment;
- OP Stack;
- Arbitrum technology;
- Polygon CDK/AggLayer;
- other suitable rollup/appchain approaches.

## Token status

No native token is approved. Any token must have demonstrated utility, economic-security purpose, defensible distribution/incentive design and an appropriate legal path.

## Local development machine

- Ubuntu 24.04.4 LTS, x86_64
- AMD FX-6300, 6 cores
- ~5.8 GiB RAM
- 2 GiB swap
- 1 TB Toshiba SATA HDD
- ~424 GB free on the existing Xubuntu filesystem
- Do not repartition at this stage
- Do not run a production blockchain node locally

## Project roles

Architecture, product, engineering, blockchain, AI-agent systems, DevOps/SRE, QA, security, economics/tokenomics, research, funding/growth and legal/compliance analysis are treated as project workstreams. External qualified professionals remain necessary for formal legal advice and appropriate independent security audits.

## Public/private boundary

Public: source code, public architecture, public documentation, verified research, public test deployments, release notes and truthful required disclosures.

Private/outside this public repository: credentials, seed phrases, private keys, personal data, confidential contracts, private negotiations, unpublished vulnerability details and other sensitive information.

## Required behavior when context is restored

1. Read this file.
2. Read `PROJECT_STATE.md`, `PROJECT_RULES.md`, `DECISIONS.md` and the relevant current documents.
3. Compare the snapshot with the current repository and recent history.
4. Report any drift, contradiction or missing information.
5. Do not make consequential changes until contradictions are resolved.

## Current decisions

- Product-first development.
- No disk repartitioning now.
- Local PC is a development machine, not a production node.
- Dedicated chain remains unapproved.
- Native token remains unapproved.
- Public repository must not contain secrets or private project information.

## Open questions

- Which user segment has the strongest immediate pain?
- Which agent-payment standards should be adopted rather than recreated?
- Is an existing L2 sufficient?
- What trust/reputation primitive is actually necessary?
- What service category makes the best first marketplace?
- What are the minimum viable payment and dispute mechanisms?
- What legal structure and jurisdiction are appropriate if the project becomes a commercial crypto network?

## Next action

Complete the architecture/market research checkpoint and record findings in `RESEARCH.md` and decisions in `DECISIONS.md` before installing the heavier blockchain toolchain.
