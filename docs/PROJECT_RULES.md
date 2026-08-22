# AiPayWorlds — Project Rules

**Status:** Foundational draft 0.1  
**Owner / Maintainer:** BogdanXI  
**Date:** 2026-08-22

## 1. Mission

Build useful, secure infrastructure for autonomous software agents to discover services, authorize bounded spending, pay for machine-to-machine services, receive verifiable results, and keep auditable settlement records.

The blockchain is an implementation tool, not the product by itself.

## 2. Product-first rule

We do not build an L1/L2 merely because it is technically interesting. A dedicated chain is approved only when research demonstrates a real product need that cannot be served adequately by an existing network or application-layer system.

## 3. Architecture status

The EVM L2 / appchain direction is a **hypothesis under research**, not a final commitment. Candidate stacks must be compared before a production architecture is frozen.

Current candidates include existing L2 deployment, OP Stack, Arbitrum technology, Polygon CDK/AggLayer and other suitable approaches.

## 4. Development principles

- Prefer the smallest working MVP.
- Use existing standards before inventing new protocols.
- Keep components replaceable.
- Write tests before high-risk deployment.
- Never put secrets in source control.
- Never use real funds during early development unless explicitly approved and protected.
- Every production deployment requires a documented rollback / incident plan.

## 5. Security principles

- Private keys and seed phrases are never stored in the repository.
- Production signing must use appropriate key-management controls and, where applicable, multisig.
- Smart contracts must be tested, fuzzed/analyzed where appropriate, independently reviewed, and externally audited before material-value deployment.
- AI review is advisory and never counts as a formal security audit.
- Known vulnerabilities remain tracked until fixed and verified.

## 6. Public/private information

This repository is public. Public documentation describes the product, open-source implementation, architecture, standards, public test deployments, and verified research.

Private information must stay outside the public repository: credentials, personal data, private negotiations, unpublished vulnerabilities, legal advice, confidential contracts, wallet secrets, and other sensitive information.

We do not falsely claim human authorship, audits, partnerships, funding, certifications, or security properties that have not actually occurred. Internal tooling or AI assistance does not need to be highlighted in ordinary public documentation, but legally required or materially relevant disclosures must be truthful.

## 7. Research discipline

Important decisions require evidence. For each major decision record:

1. problem;
2. alternatives;
3. evidence;
4. trade-offs;
5. decision;
6. assumptions;
7. conditions that would cause reconsideration.

Time-sensitive claims must be rechecked before use.

## 8. Decision states

Use explicit states:

- `HYPOTHESIS` — idea not validated.
- `UNDER_RESEARCH` — active comparison.
- `APPROVED` — selected for current phase.
- `REJECTED` — deliberately not selected.
- `SUPERSEDED` — previously approved but replaced.

## 9. Change control

Major changes require an update to `DECISIONS.md` and `PROJECT_STATE.md`. Security-sensitive or production changes require a checkpoint before and after the change.

## 10. Project memory

`AI_CONTEXT.md` is the current compact project snapshot. It is not the complete history. The repository documents, decision log, research records, tests, releases and Git history are the long-term source of truth.

When context is restored from `AI_CONTEXT.md`, first verify it against the repository. If contradictions are found, stop before making consequential changes.

## 11. Funding

Target zero-cost development first: open-source tooling, testnets, grants, hackathons, ecosystem programs and credits. No fundraising or token sale is assumed until the product and legal path justify it.

## 12. Token rule

A native token is not approved merely because the network has one. Token utility, issuance, distribution, governance, economic security, incentives and legal implications must be researched and documented before any launch decision.

## 13. Release gates

### Prototype
- reproducible build;
- automated tests;
- no real-value custody;
- documented threat model.

### Public testnet
- reproducible deployment;
- monitoring;
- documented known risks;
- safe test funds only.

### Mainnet / material value
- independent security review;
- external audit appropriate to risk;
- operational controls;
- incident response;
- legal/compliance review appropriate to jurisdiction;
- documented upgrade and governance model.

## 14. AI-assisted work

AI systems may assist with research, design, coding, testing and review. They are not authoritative sources by themselves. Critical claims must be checked against primary documentation, code, tests, standards, or qualified professionals as appropriate.

## 15. No blind continuation

If project context is incomplete, stale or contradictory, do not guess. Report the missing information and restore the project state before continuing.
