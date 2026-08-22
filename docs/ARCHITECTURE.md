# AiPayWorlds Architecture

## Goal

Build an EVM-compatible Layer 2 and application layer optimized for autonomous-agent payments.

## MVP architecture

```text
                    Ethereum
                       |
                 settlement / data
                       |
                 +-----v------+
                 | AiPayWorlds|
                 |    L2      |
                 |  OP Stack  |
                 +-----+------+
                       |
          +------------+-------------+
          |            |             |
        USDC         Escrow      Reputation
          |            |             |
          +------------+-------------+
                       |
                 Marketplace
                       |
             +---------+---------+
             |         |         |
            APIs      GPU       Data
```

## Principles

- Start with an MVP instead of a general-purpose chain.
- Use Ethereum as the security and settlement foundation.
- Prefer existing stablecoin rails for payments instead of issuing a stablecoin.
- Keep the first testnet simple and use standard ETH gas.
- Delay any production token until there is demonstrated product utility.
- Treat security, key management, and legal compliance as first-class requirements.

## Milestones

### Phase 0 — specification

- [x] Repository created
- [x] Project vision documented
- [x] Initial architecture documented
- [ ] Define MVP transaction flow
- [ ] Define service marketplace model

### Phase 1 — local prototype

- [ ] Local EVM environment
- [ ] First escrow contract
- [ ] Mock USDC
- [ ] Agent-to-service payment demo
- [ ] Basic TypeScript SDK

### Phase 2 — L2 testnet

- [ ] OP Stack deployment configuration
- [ ] Local L2
- [ ] Public testnet
- [ ] Block explorer
- [ ] RPC endpoint
- [ ] Wallet integration

### Phase 3 — product

- [ ] Service registry
- [ ] Marketplace API
- [ ] Agent identity
- [ ] Provider reputation
- [ ] Payment SDK
- [ ] Example AI agent

### Phase 4 — production readiness

- [ ] Threat model
- [ ] Independent security review
- [ ] Monitoring
- [ ] Incident response plan
- [ ] Legal review
- [ ] Mainnet design

## Out of scope for the first MVP

- Token sale
- Public token launch
- Custom stablecoin
- Permissionless validator economics
- Complex cross-chain bridge infrastructure
- Production custody of user funds
