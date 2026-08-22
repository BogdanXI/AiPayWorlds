# AiPayWorlds — AI Context Snapshot

> Compact recovery snapshot for any future development assistant. Factual and project-focused; not a chat transcript.

**Context version:** 0.4  
**Last updated:** 2026-08-22  
**Repository:** BogdanXI/AiPayWorlds  
**Maintainer:** BogdanXI

## Mission

Build useful infrastructure for autonomous software agents to discover services, operate under bounded spending policies, make machine-to-machine payments, receive verifiable results, and maintain auditable receipts/reputation.

## Core principle

Do not build a blockchain for its own sake. Prove the product need first. A dedicated public L1/L2 is a project requirement, but its exact design must be justified by measurable product requirements rather than branding. The chain must earn its existence.

## Current phase

Phase 2 — Dashboard Foundation. Phase 0 discovery/research is the completed foundation. Blockchain architecture remains under research.

## Current dashboard direction

AiPayWorlds OS is an owner/operator desktop command center. The long-term production application is intended to live in a separate private repository. The public repository remains the public project/source-of-truth repository for appropriate open code, architecture, public research and non-sensitive documentation.

F1 is the foundation: bilingual RU/EN UI, stable navigation, central Earth Engine, theme engine, animation budget, offline-first operation, local books/learning, recovery/security views and replaceable adapters.

## Product hypothesis

The strongest current wedge is **policy-controlled autonomous spending plus trust/verification**.

Workflow:

`discover → quote → identity/trust → policy check → bounded authorization → payment → result verification → receipt → reputation`

The user should be able to define service/vendor/task limits, price limits, allowed assets/networks and human-approval thresholds.

## 2026 market conclusion

Generic agent payments are already crowded. x402-style payments, agentic payment protocols, agent identity/reputation, stablecoin settlement and AI-agent transaction networks have substantial ecosystem activity and funded competitors. The differentiation hypothesis is therefore not "another payment chain" but a protocol-level economic control plane for bounded, auditable autonomous spending.

See `RESEARCH_2026-08.md` for the dated evidence baseline.

## Required chain direction

The project owner requires a public blockchain as the eventual target even if the first prototype uses an existing EVM network. This is an explicit project constraint, not yet an architectural selection.

Potential reasons a dedicated chain could be justified:
- specialized low-cost high-frequency agent transactions;
- protocol-native policy/authorization primitives;
- agent identity/reputation/receipts at protocol level;
- predictable fees;
- specialized account abstraction/paymaster behavior;
- coordination and economic incentives that are difficult to implement efficiently elsewhere.

The dedicated chain remains `UNDER_RESEARCH` until the product requirements demonstrate why it is necessary.

## Architecture candidates

Candidate future stacks: OP Stack, Arbitrum technology, Polygon CDK/AggLayer, ZK-rollup stacks and other suitable appchain/rollup frameworks.

OP Stack is currently a leading candidate because of EVM compatibility, Ethereum settlement, modularity, custom gas-token support and operator-fee mechanisms. Its security model depends on configuration and modifications can introduce risk. No final choice has been made.

## Existing standards to evaluate

- x402: HTTP-native agent payment rail.
- Google AP2/A2A: payment authorization and agent communication.
- ERC-8004: portable agent identity, reputation and validation.

Prefer integration over reinvention unless a measured gap requires new protocol work.

## Security focus

Treat payment-intent binding, spending caps, expiry, nonce/replay protection, idempotency, recipient binding, concurrency/race handling, quote expiry, receipt integrity and dispute/refund semantics as first-class requirements.

## Token status

No native token approved. No ticker, issuance, sale or distribution approved. Any future token plan must be designed with applicable legal/regulatory requirements from the beginning.

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

Private/outside this public repository: credentials, seed phrases, private keys, personal data, confidential contracts, private negotiations, unpublished vulnerability details and other sensitive information. The personal operator application is also intended to move to a separate private repository once that repository is created.

Do not store private project memory in this public repository merely behind `.gitignore`. Keep sensitive operational memory in a separate private location.

Do not falsely claim authorship, audits, partnerships, funding or security properties. AI assistance is internal tooling; legally required or materially relevant disclosures must remain truthful.

## Dashboard F1 architecture

Target desktop shell: Tauri 2, with TypeScript UI and a locally bundled 3D engine, initially Three.js/WebGL2 subject to local GPU validation. This is an F1 validation choice, not an irreversible chain or product architecture decision.

Required UI locales: `ru` and `en`, with Russian as Owner default. Technical English terms may appear in parentheses or tooltips.

Core operation is offline-first. Local time, Sun position, day/night and bundled Earth assets work without network. GitHub, RPC, weather and other live sources are optional adapters with explicit OFFLINE/LAST KNOWN states.

Owner approved an asset/data budget of up to 40–50 GB, but the application must not consume that space without a quality or offline-use justification.

## Memory system

`AI_CONTEXT.md` = current compact recovery snapshot.

`PROJECT_STATE.md` = current state.
`DECISIONS.md` = decision ledger.
`RESEARCH_2026-08.md` and future research files = dated evidence.
`MEMORY_AND_PRIVACY.md` = public/private memory policy.
`MEMORY_RECOVERY_RU.md` = Russian recovery procedure.
`DASHBOARD_F1_FOUNDATION_RU.md` = current F1 architecture baseline.

Update the relevant files after material milestones, architecture decisions, research/security findings and releases; during active development perform at least one state checkpoint per week.

## Decision summary

- Product-first development: APPROVED.
- Public blockchain as eventual target: APPROVED constraint.
- Existing EVM infrastructure for first MVP: APPROVED strategy.
- Dedicated L1/L2/appchain architecture: UNDER_RESEARCH.
- Generic agent-payment rail as product: REJECTED for MVP strategy.
- Policy-controlled spending/trust layer: UNDER_RESEARCH.
- Native token: unapproved.
- Dashboard Foundation: APPROVED.
- RU/EN dashboard localization: APPROVED.
- Private operator application repository: APPROVED direction.
- Offline-first desktop architecture: APPROVED.
- Tauri 2 + TypeScript + local 3D engine: APPROVED for F1 prototyping/validation.
- Local asset budget up to 40–50 GB: APPROVED as a budget, not a target size.
- No disk repartitioning: APPROVED.
- Local PC is development only: APPROVED.

## Context restoration protocol

1. Read this file.
2. Read `PROJECT_STATE.md`, `PROJECT_RULES.md`, `DECISIONS.md`, `RESEARCH_2026-08.md`, `MEMORY_AND_PRIVACY.md` and relevant current documents.
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
- What exact protocol primitives justify a dedicated chain?
- Which chain framework best satisfies those primitives?
- What legal structure/jurisdiction is appropriate if the project becomes a commercial crypto network?
- Which private GitHub repository name/location will hold the operator application?

## Next action

F1 implementation and validation: establish the desktop shell, bilingual localization, stable navigation, theme/animation infrastructure, offline asset model, first Earth scene and deterministic build/run checks. Do not deploy or issue a token.
