# AiPayWorlds

**Agent-native payment and trust infrastructure.**

AiPayWorlds is an open-source project exploring infrastructure that lets autonomous software agents discover services, operate under spending policies, make machine-to-machine payments, receive results, and maintain auditable settlement records.

## Vision

Software agents should be able to participate in digital commerce safely: discover a service, understand its price and terms, stay within an explicit budget, authorize payment, receive the result, and retain a verifiable receipt.

## Important architecture note

A dedicated blockchain is **not yet approved**.

The project will first validate the product using existing networks and standards where practical. An EVM Layer 2 or dedicated chain will be built only if research demonstrates a material advantage for the product.

## Core idea

```text
Agent
  |
  | discover / quote
  v
Service
  |
  | payment requirements
  v
Policy engine
  |
  | bounded authorization
  v
Payment / settlement
  |
  | verified result
  v
Receipt + reputation
```

## Research directions

- Agentic machine-to-machine payments
- Stablecoin settlement
- Payment authorization and spending policies
- Agent/service identity and trust
- Receipts and auditability
- Disputes and service quality
- Existing L2s and rollup/appchain technologies
- Economic security and future network incentives

## Development philosophy

```text
Research
   ->
Product validation
   ->
Minimal prototype
   ->
Existing-network testnet
   ->
Architecture decision
   ->
Dedicated chain only if justified
   ->
Security / legal readiness
   ->
Production
```

No production token launch is part of the initial MVP. Any future token requires demonstrated utility, economic analysis, security review and appropriate legal/compliance work.

## Repository status

🚧 Early-stage research and development.

The architecture, economics, contracts and product assumptions are expected to change during the MVP phase.

## Project memory

The project maintains a portable context and decision system:

- `docs/AI_CONTEXT.md` — compact recovery snapshot
- `docs/MEMORY_RECOVERY.md` — instructions for restoring context
- `docs/PROJECT_RULES.md` — operating rules
- `docs/PROJECT_STATE.md` — current state
- `docs/DECISIONS.md` — decision ledger
- `docs/ROADMAP.md` — roadmap
- `docs/RESEARCH.md` — research baseline
- `docs/ARCHITECTURE.md` — current architecture hypothesis
- `docs/SECURITY.md` — security baseline

## Security

Never commit private keys, seed phrases, API keys, `.env` files, personal data, confidential contracts or other secrets to this repository.

This project is experimental software. Do not use real funds with development deployments.

## License

Apache License 2.0. See [LICENSE](LICENSE).
