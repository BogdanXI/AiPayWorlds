# AiPayWorlds

**Agent-native payment infrastructure and EVM Layer 2.**

AiPayWorlds is an open-source project exploring a low-cost blockchain settlement layer and developer ecosystem for autonomous AI agents.

## Vision

AI agents should be able to discover services, pay for them programmatically, receive results, and build economic reputation without requiring a human to approve every transaction.

The initial product direction is an EVM-compatible Layer 2 optimized for machine-to-machine and agent-to-service payments.

## Core idea

```text
AI Agent
   |
   | discovers service
   v
AiPayWorlds Marketplace
   |
   | micropayment / escrow
   v
Service Provider
   |
   | result
   v
AI Agent
```

## Initial scope

1. EVM-compatible L2 based on the OP Stack.
2. Low-cost transactions suitable for small payments.
3. USDC-oriented settlement for service payments.
4. Smart-contract escrow for agent-to-service transactions.
5. Service discovery and marketplace primitives.
6. Agent and provider reputation primitives.
7. SDKs that make blockchain payments accessible to AI-agent developers.

## Development philosophy

We will build in stages:

```text
Local development
      ->
Private testnet
      ->
Public testnet
      ->
Real users and services
      ->
Security review / audit
      ->
Mainnet
```

No production token launch is part of the initial MVP. Network economics and any future token will be designed only after the product demonstrates real utility and after appropriate legal and security review.

## Repository status

🚧 Early-stage research and development.

The architecture, economics, contracts, and product assumptions are expected to change during the MVP phase.

## Security

Never commit private keys, seed phrases, API keys, `.env` files, or other secrets to this repository.

This project is experimental software. Do not use real funds with development deployments.

## License

Apache License 2.0. See [LICENSE](LICENSE).
