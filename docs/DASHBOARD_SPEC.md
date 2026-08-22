# AiPayWorlds — Local Development Dashboard Specification

**Status:** APPROVED FOR DESIGN / NOT YET IMPLEMENTED  
**Version:** 0.1  
**Audience:** Project owner / beginner developer

## 1. Purpose

The AiPayWorlds Development Dashboard is a local-first desktop web application for operating, learning, and recovering the project without requiring the owner to be a programmer.

It is a project control center, not a blockchain wallet and not a production deployment console.

## 2. Core principles

1. **Local-first:** project knowledge and learning content remain available offline.
2. **Beginner-first:** every action explains what it does, why it is needed, expected output, risk, and recovery.
3. **No hidden commands:** terminal actions are presented as complete copyable blocks.
4. **Safe by default:** destructive and privileged actions require an explicit confirmation screen.
5. **Project memory is inspectable:** the owner can see the current context, decisions, runs, and state.
6. **GitHub is synchronization, not the only memory source.**
7. **No secrets in project memory.** Credentials remain in dedicated secret storage.
8. **Offline capable:** core documentation, glossary, learning modules, and recovery instructions work without internet.
9. **Accessible:** clear typography, keyboard navigation, responsive layout, readable charts, and high contrast.
10. **No crypto-casino aesthetic:** dark graphite/charcoal foundation, restrained blue accents, red only for warnings/danger, no green neon.

## 3. Navigation

- Command Center
- Project State
- Roadmap
- Memory Center
- RUN Journal
- Decisions
- Architecture Lab
- Security Center
- Research Lab
- Funding & Business
- Learning Academy
- Terminal Playbooks
- Git Center
- Glossary
- Backup & Recovery
- Settings

## 4. Command Center

The home screen should show:

- current project phase;
- current checkpoint;
- next single action;
- blockers;
- active risks;
- latest RUN;
- latest decision;
- Git synchronization state;
- local backup state;
- learning progress;
- project health indicators.

The dashboard must never encourage the owner to perform multiple risky actions at once.

## 5. Memory Center

Displays:

- AI_CONTEXT.md
- PROJECT_STATE.md
- PROJECT_RULES.md
- AI_OPERATING_MODEL.md
- DECISIONS.md
- SESSION_LOG.md
- CHANGELOG.md
- MEMORY_RECOVERY_RU.md

Functions:

- view current snapshot;
- show last update;
- show consistency/checkpoint status;
- create a new local snapshot;
- export a recovery bundle;
- explain what each memory file means.

The UI must distinguish **public project memory** from **private memory** and must never silently copy private material into the public repository.

## 6. Learning Academy

Learning is integrated into the project rather than being a separate generic course.

Modules begin with:

1. Linux/Xubuntu basics
2. Terminal basics
3. Files and permissions
4. Git and GitHub
5. Programming fundamentals
6. JavaScript/TypeScript basics
7. Python basics
8. Networking
9. APIs
10. Databases
11. Cryptography fundamentals
12. Blockchain fundamentals
13. EVM and smart contracts
14. L1/L2 architecture
15. Wallets and keys
16. Testing and debugging
17. Security
18. DevOps
19. Tokenomics
20. AI-agent infrastructure

Each lesson has:

- objective;
- plain-language explanation;
- visual concept map;
- safe exercise;
- expected result;
- common mistakes;
- recovery instructions;
- progress marker.

## 7. Terminal Playbooks

Every playbook follows the project terminal protocol:

- What this does
- Risk level
- Open terminal
- Copy this exact command
- Press Enter
- Expected output
- Verification command
- If it fails: stop and send complete output
- Emergency stop: Ctrl+C when applicable

For interactive editors, the UI explicitly displays controls such as `Ctrl+O`, `Enter`, and `Ctrl+X`.

## 8. Git Center

Shows:

- current branch;
- working tree status;
- latest commit;
- commits since last checkpoint;
- local vs remote sync state;
- changed files;
- safe copyable commands.

Potentially destructive Git operations are hidden behind an explanation and confirmation step.

## 9. Architecture Lab

Interactive views for:

- system architecture;
- network topology;
- transaction lifecycle;
- agent-payment lifecycle;
- trust/identity model;
- data flow;
- threat boundaries;
- future L1/L2 components.

Diagrams should be understandable to a beginner first and technically precise second.

## 10. Security Center

Displays:

- current threat model;
- security assumptions;
- known risks;
- unresolved findings;
- dependency/security status;
- key-management rules;
- incident procedures;
- audit status.

It must clearly distinguish internal review from an independent professional audit.

## 11. Research Lab

Stores local research notes with:

- source;
- date;
- claim;
- evidence;
- confidence;
- hypothesis/decision state;
- affected project files.

When internet access is unavailable, previously saved research remains readable.

## 12. Funding & Business

Tracks:

- target users;
- customer problems;
- experiments;
- revenue hypotheses;
- grants;
- accelerators;
- investors;
- funding milestones;
- unit economics.

No fabricated investor, grant, customer, or funding status is permitted.

## 13. RUN Journal

Each substantial cycle is a `RUN-XXXX` record containing:

- objective;
- parallel workstreams;
- completed work;
- decisions;
- files changed;
- evidence;
- risks;
- open questions;
- next action;
- checkpoint status.

The dashboard provides timeline and filter views.

## 14. Backup & Recovery

The owner can generate a recovery bundle containing only safe project-memory files.

The recovery screen explains:

- what to copy into a new AI chat;
- what not to copy;
- how to restore project state;
- how to verify the restored context;
- how to recover from a corrupted local checkout;
- how to recover from GitHub being unavailable.

Secrets are never included in recovery bundles.

## 15. Visual design

Target aesthetic:

- dark graphite/charcoal base;
- deep neutral surfaces;
- restrained blue primary accent;
- red for warnings/danger;
- neutral secondary accents;
- subtle borders and depth;
- modern technical typography;
- compact but breathable information density;
- smooth navigation transitions;
- charts with restrained visual hierarchy;
- no neon green;
- no excessive gradients;
- no fake 3D crypto styling.

## 16. Technical constraints

The first version must run comfortably on the owner's current machine:

- AMD FX-6300;
- 6 GiB RAM;
- Radeon HD 7470-class GPU;
- Xubuntu/Ubuntu 24.04 LTS;
- approximately 473 GiB available on the Linux filesystem at the time of the initial hardware check.

The first implementation should therefore avoid heavyweight desktop runtimes and unnecessary background services.

## 17. Implementation strategy

Phase A — static local prototype  
Phase B — local data layer and memory viewer  
Phase C — Git status/read-only integration  
Phase D — learning system  
Phase E — safe terminal playbooks  
Phase F — backup/recovery tooling  
Phase G — optional controlled write operations  
Phase H — polish, testing, accessibility, packaging

No production blockchain deployment controls belong in the first dashboard release.

## 18. Non-goals

The dashboard is not:

- a production wallet;
- a private-key manager;
- an automatic mainnet deployer;
- an autonomous AI agent with unrestricted shell access;
- a substitute for security audits;
- a replacement for Git history.

## 19. Acceptance criteria for v1

A beginner owner can:

1. open the dashboard without internet;
2. understand the current project state;
3. open the current memory snapshot;
4. see what happened in recent RUNs;
5. follow a terminal playbook step-by-step;
6. see exactly what to do when a command fails;
7. study the next learning lesson;
8. inspect architecture diagrams;
9. generate a safe recovery bundle;
10. understand whether local files are synchronized with GitHub.

## 20. Design rule

The dashboard should make the project easier to understand, not hide complexity behind automation. Every important automation has an inspectable explanation and a safe manual fallback.
