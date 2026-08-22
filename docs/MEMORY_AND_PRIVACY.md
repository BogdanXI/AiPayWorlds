# AiPayWorlds — Memory & Privacy Policy

Status: ACTIVE
Version: 1.0
Date: 2026-08-22

## 1. Purpose

AiPayWorlds is a public blockchain project, but its public repository must not become a record of private conversations, credentials, unpublished negotiations, or sensitive security information.

The canonical long-term project memory is divided into public project knowledge and private operational knowledge.

## 2. Public project memory

The public repository may contain:
- public architecture and protocol specifications;
- source code and tests;
- public roadmap and changelog;
- public research and citations;
- finalized public token/economic documentation when appropriate;
- responsible disclosure information after remediation;
- public deployment information that is safe to disclose.

The public repository must not contain a transcript of private AI conversations.

## 3. Private project memory

Keep outside the public repository:
- private AI context and session notes;
- unpublished business strategy;
- grant/investor negotiations;
- non-public legal advice;
- personal data;
- confidential partner/customer information;
- undisclosed security vulnerabilities;
- wallet seeds, private keys, API keys, passwords, tokens, certificates, or other credentials.

A `.gitignore` entry is not a security boundary. Private information must not be stored in the public repository even if ignored by Git.

## 4. AI attribution

Public project documentation describes the project, its maintainer, architecture, implementation, and contributors. Internal use of ChatGPT or DeepSeek does not need to be advertised throughout the codebase.

However, the project must never fabricate authorship, audits, certifications, partnerships, legal status, or security claims. If disclosure is legally or contractually required, it must be made accurately.

## 5. AI_CONTEXT.md

`AI_CONTEXT.md` is the compact operational snapshot intended to restore an AI working context. It must contain only information safe for its intended storage location.

It is a map of current state, not a transcript of conversations.

## 6. Recovery protocol

When context is lost:
1. Provide `AI_CONTEXT.md` to the new AI session.
2. Ask the AI to restore context without making changes.
3. The AI must compare the snapshot with the repository and identify drift.
4. The AI must list missing, stale, or contradictory information.
5. Only after restoration is confirmed should development continue.

## 7. Checkpoint protocol

Update the relevant project memory after:
- every major milestone;
- every material architectural decision;
- every substantial research finding;
- every security review;
- every release/deployment milestone;
- any event that changes project strategy.

During active development, perform at least one state checkpoint per working week.

## 8. Security incident rule

If a secret is ever exposed, treat it as compromised: revoke/rotate it first, then clean the repository history as necessary. Merely deleting a later copy does not make an exposed secret safe.

## 9. Source of truth hierarchy

1. Current code and reproducible build/test results
2. Current project-state documents
3. Decision ledger
4. Architecture and research documents
5. AI context snapshot
6. Chat history

Chat history is never the sole source of truth for a critical project decision.
