# AiPayWorlds — Architecture

**Status:** Research-stage architecture; not production-final.

## Product layer

```text
Agent / User
     ↓
Discovery
     ↓
Quote / Service Terms
     ↓
Spending Policy
     ↓
Payment Authorization
     ↓
Settlement
     ↓
Service Execution
     ↓
Receipt / Result
     ↓
Reputation / History
```

## Proposed modules

### 1. Agent identity
A stable identifier for an agent plus authorization metadata. The first MVP should avoid unnecessary identity complexity.

### 2. Service discovery
A machine-readable description of services, pricing, capabilities and payment requirements.

### 3. Policy engine
Rules such as maximum amount per request, daily budget, approved providers, approved asset/network and human-approval thresholds.

### 4. Payment adapter
An abstraction over existing payment standards and networks. The application must not be locked to one chain or protocol.

### 5. Settlement / escrow
Use only where required. Simple pay-per-request flows should not be forced through escrow.

### 6. Receipt
Record the request, payment authorization, payment reference, service-result reference and relevant timestamps/nonces. Avoid sensitive data on-chain.

### 7. Reputation
A later module. Reputation must distinguish payment reliability from service quality and resist Sybil/manipulation attacks.

## Blockchain boundary

The application should remain usable without a dedicated chain during the MVP.

Possible later boundary:

```text
Application / Agent SDK
        ↓
Policy + Payment Protocol
        ↓
Existing L2 or Dedicated L2
        ↓
Ethereum settlement / data availability
```

## Dedicated-chain gate

A dedicated chain becomes justified only if evidence shows that it materially improves one or more of:

- transaction economics at target volume;
- payment latency/finality;
- programmable policy execution;
- interoperability;
- privacy requirements;
- service-specific throughput;
- predictable fees;
- economic security;
- ecosystem incentives.

## Security-critical properties

- request/payment intent binding;
- replay protection;
- nonce/idempotency controls;
- spend caps;
- authorization expiry;
- chain/network binding;
- asset binding;
- recipient binding;
- service/resource binding;
- concurrency safety;
- refund/failure handling;
- clear settlement finality assumptions.

## Data principle

Do not put private user data, credentials, secrets or large service payloads on-chain. Prefer hashes, references, proofs or suitable off-chain storage.

## Candidate chain technologies

Research before commitment:

- Existing L2/application deployment
- OP Stack
- Arbitrum technology
- Polygon CDK/AggLayer
- Other rollup/appchain approaches

## Non-goals for the first prototype

- custom consensus;
- custom cryptography;
- complex native tokenomics;
- permissionless validator economics;
- full decentralized governance;
- production bridge;
- mainnet custody.
