# AiPayWorlds — Project Rules

**Status:** Foundational draft 0.2  
**Owner / Maintainer:** BogdanXI  
**Date:** 2026-08-22

## 1. Mission
Build useful, secure infrastructure for autonomous software agents to discover services, authorize bounded spending, pay for machine-to-machine services, receive verifiable results, and keep auditable settlement records.

The blockchain is an implementation tool, not the product by itself.

## 2. Product-first rule
We do not build an L1/L2 merely because it is technically interesting. A dedicated chain is approved only when research demonstrates a real product need that cannot be served adequately by an existing network or application-layer system.

## 3. Architecture status
The EVM L2 / appchain direction is a **hypothesis under research**, not a final commitment. Candidate stacks must be compared before a production architecture is frozen.

## 4. Development principles
- Prefer the smallest working MVP.
- Use existing standards before inventing new protocols.
- Keep components replaceable.
- Write tests before high-risk deployment.
- Never put secrets in source control.
- Never use real funds during early development unless explicitly approved and protected.
- Every production deployment requires a documented rollback / incident plan.

## 5. Parallel Work Mode
For large tasks, the AI lead decomposes work into independent workstreams before implementation. Typical streams include product/market, architecture, security, economics, legal/regulatory research, funding, UX and implementation. Independent findings are then synthesized into one decision. Do not confuse parallel analysis with multiple autonomous agents actually executing changes simultaneously; consequential repository changes remain controlled and reviewable.

## 6. Learning Mode — owner is a non-programmer
Every technical instruction must be beginner-safe. When giving a terminal command, the AI must provide:
1. **Purpose** — what the command does.
2. **Safety** — whether it only reads data or changes the system.
3. **Exact copyable command** — one block that can be copied without editing where possible.
4. **Expected result** — what the owner should see.
5. **Next action** — exactly what to do after it finishes.
6. **Failure path** — what to copy back to the AI if the result differs.
7. **Stop/interrupt instruction** — when applicable, explain `Ctrl+C`.

When using `nano`, always explain: `Ctrl+O` = save, `Enter` = confirm filename, `Ctrl+X` = exit. Never assume the owner knows terminal/editor shortcuts.

Never give destructive disk, wallet, key, deployment or privilege-escalation commands without an explicit warning and a checkpoint.

## 7. One-command / one-action discipline
Prefer commands that can be pasted as a complete block. If multiple commands are necessary, explain whether they are one safe sequence or should be run one at a time. Do not make the owner guess filenames, directories, editor actions, or expected output.

## 8. Session / RUN protocol
A significant work cycle receives a unique `RUN-XXXX` identifier. At the end of each significant run, update the project memory with objective, parallel workstreams, completed work, decisions, files changed, research evidence, risks, unresolved questions, next action and checkpoint status. `SESSION_LOG.md` is the chronological operational log.

## 9. Checkpoint protocol
Create a checkpoint before and after high-impact changes: architecture selection, repository visibility/privacy changes, key-management changes, smart-contract deployment, token decisions, public testnet, mainnet, migrations and material-value operations. A checkpoint must record current state and rollback/restore information.

## 10. Security principles
- Private keys and seed phrases are never stored in the repository.
- Production signing must use appropriate key-management controls and, where applicable, multisig.
- Smart contracts must be tested, fuzzed/analyzed where appropriate, independently reviewed, and externally audited before material-value deployment.
- AI review is advisory and never counts as a formal security audit.
- Known vulnerabilities remain tracked until fixed and verified.

## 11. Public/private information
This repository is public. Public documentation describes the product, open-source implementation, architecture, standards, public test deployments, and verified research.

Private information must stay outside the public repository: credentials, personal data, private negotiations, unpublished vulnerabilities, legal advice, confidential contracts, wallet secrets, and other sensitive information.

We do not falsely claim human authorship, audits, partnerships, funding, certifications, or security properties that have not actually occurred. Internal tooling or AI assistance does not need to be highlighted in ordinary public documentation, but legally required or materially relevant disclosures must be truthful.

## 12. Research discipline
Important decisions require evidence. For each major decision record: problem; alternatives; evidence; trade-offs; decision; assumptions; conditions that would cause reconsideration. Time-sensitive claims must be rechecked before use.

## 13. Decision states
- `HYPOTHESIS` — idea not validated.
- `UNDER_RESEARCH` — active comparison.
- `APPROVED` — selected for current phase.
- `REJECTED` — deliberately not selected.
- `SUPERSEDED` — previously approved but replaced.

## 14. Change control
Major changes require an update to `DECISIONS.md` and `PROJECT_STATE.md`. Security-sensitive or production changes require a checkpoint before and after the change.

## 15. Project memory
`AI_CONTEXT.md` is the current compact project snapshot. It is not the complete history. The repository documents, decision log, research records, tests, releases and Git history are the long-term source of truth.

When context is restored from `AI_CONTEXT.md`, first verify it against the repository. If contradictions are found, stop before making consequential changes.

## 16. Dashboard
`dashboard/` is a fully local, dependency-free development command center. It is a user interface for project state, learning, memory, runs, roadmap, terminal guidance, security and research. It must not require an external CDN or network connection to render.

## 17. Funding
Target zero-cost development first: open-source tooling, testnets, grants, hackathons, ecosystem programs and credits. No fundraising or token sale is assumed until the product and legal path justify it.

## 18. Token rule
A native token is not approved merely because the network has one. Token utility, issuance, distribution, governance, economic security, incentives and legal implications must be researched and documented before any launch decision.

## 19. Release gates
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

## 20. AI-assisted work
AI systems may assist with research, design, coding, testing and review. They are not authoritative sources by themselves. Critical claims must be checked against primary documentation, code, tests, standards, or qualified professionals as appropriate.

## 21. No blind continuation
If project context is incomplete, stale or contradictory, do not guess. Report the missing information and restore the project state before continuing.

## 22. AI is replaceable; project knowledge is not
The project owner owns the source of truth. ChatGPT, DeepSeek and future AI systems are replaceable tools. The project must remain understandable and recoverable from its repository and local backups without relying on hidden model memory.
