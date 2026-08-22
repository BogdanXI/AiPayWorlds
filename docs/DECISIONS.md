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

## D-0014 — Dashboard UI language model

**Status:** APPROVED  
**Date:** 2026-08-22

**Problem:** The Owner needs a comfortable Russian-first interface while retaining exact technical terminology and a future international English mode.

**Alternatives:** Russian only; English only; mixed labels everywhere; explicit RU/EN localization.

**Evidence:** Owner explicitly requested Russian and English modes, with Russian as the primary working language and English technical terms where useful.

**Decision:** Provide two complete UI locales: `ru` and `en`. Russian is the default Owner locale. Russian UI uses English technical terms in parentheses where clarity requires them; optional tooltips may expose the canonical English term.

**Trade-offs:** Localization adds a small amount of architecture, but prevents later destructive UI rewrites.

**Assumptions:** All user-visible strings are localization keys rather than hard-coded text.

**Reconsider if:** accessibility or internationalization research shows a materially better localization model.

## D-0015 — Private operator application boundary

**Status:** APPROVED  
**Date:** 2026-08-22

**Problem:** The Owner wants the personal operator application separated from the public project repository and does not want the application to depend on public hosting or online services for normal operation.

**Alternatives:** keep the entire application in the public repository; create a separate private application repository; keep only a local unversioned copy.

**Evidence:** The application is an owner/operator control center and may later contain private adapters, local operational configuration and private workflows. The public/private boundary already requires sensitive operational material to remain outside the public repository.

**Decision:** The long-term production source of the personal AiPayWorlds OS application will live in a separate private repository. The public repository remains the public project/source-of-truth repository for appropriate open code, architecture, public research and non-sensitive documentation. The private application repository is the canonical source for private operator UI and local-only adapters once created.

**Trade-offs:** Two repositories add synchronization discipline. The benefit is a clear security boundary and freedom to keep private operator functionality private.

**Assumptions:** A private repository will be created under the Owner's GitHub account before private application code is published remotely. Until then, do not place secrets or private operational data into the public repository.

**Reconsider if:** a future open-source decision deliberately makes the operator application public.

## D-0016 — Offline-first desktop application architecture

**Status:** APPROVED  
**Date:** 2026-08-22

**Problem:** The Owner wants the application to work with or without internet access and to retain animations, navigation, documentation and core Earth visualization offline.

**Alternatives:** browser-only application; always-online desktop client; offline-first desktop client with optional network adapters.

**Evidence:** Tauri 2 provides a lightweight cross-platform desktop shell, local application assets, a Rust backend and a granular capabilities/permissions model. Its architecture relies on the operating system WebView rather than bundling a complete browser engine.

**Decision:** Build AiPayWorlds OS as an offline-first desktop application. Core UI, animations, local Earth assets, books, project state and navigation must not require a network. Network integrations are optional adapters with explicit status and graceful offline fallback.

**Trade-offs:** Offline asset packs increase disk usage and require asset versioning. This is accepted because reliability and independence are higher priorities.

**Assumptions:** Real-time external data is available only when a network adapter is online; local time, Sun position and day/night calculations remain available offline.

**Reconsider if:** platform constraints make the chosen desktop runtime unsuitable.

## D-0017 — F1 desktop technology hypothesis

**Status:** APPROVED FOR F1 PROTOTYPING / VALIDATION  
**Date:** 2026-08-22

**Problem:** F1 needs a modern desktop shell that is lightweight on the Owner's limited development hardware but capable of GPU-driven visual interfaces.

**Alternatives:** Electron; browser/PWA; Tauri 2; native-only Rust GUI.

**Evidence:** Tauri 2 is designed for small cross-platform desktop applications, supports arbitrary frontend stacks, uses Rust for backend logic, and provides capabilities/permissions for limiting access. Its security documentation also supports strict CSP and local asset loading.

**Decision:** Prototype F1 with Tauri 2 + TypeScript frontend + a locally bundled 3D engine (initially Three.js/WebGL2 unless GPU capability testing justifies another renderer). This is a validation choice, not a permanent irreversible commitment.

**Trade-offs:** System WebView differences require cross-platform testing. The benefit is a smaller desktop footprint and a clear security boundary compared with a full embedded browser runtime.

**Assumptions:** The Linux development machine can support the required WebKit/WebGL path without becoming unusably heavy.

**Reconsider if:** local performance, rendering quality, security review or cross-platform packaging proves inadequate.

## D-0018 — Local asset budget

**Status:** APPROVED AS A BUDGET, NOT A SIZE TARGET  
**Date:** 2026-08-22

**Decision:** Up to 40–50 GB may be allocated to local application assets/data if justified by quality and offline requirements. The application is not required to consume the entire allowance. Large binary assets must be versioned separately from ordinary source history where practical.

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
