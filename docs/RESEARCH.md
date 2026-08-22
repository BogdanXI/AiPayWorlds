# AiPayWorlds — Research Baseline

**Date:** 2026-08-22  
**Status:** Checkpoint 0.2; continuous research required.

## Executive conclusion

The opportunity is real, but the generic proposition "AI agents pay with stablecoins" is already becoming infrastructure rather than a differentiated product. Coinbase/x402, Google AP2/A2A, Cloudflare, AWS and other ecosystems are moving agent payments toward open standards and large distribution channels. Therefore AiPayWorlds should not begin by building a proprietary payment rail or a new blockchain.

The strongest current product hypothesis is **policy-controlled economic infrastructure for autonomous agents**: software that lets an agent discover a service, obtain a quote, prove/identify the counterparty, check a human-defined spending policy, authorize a bounded payment, verify the requested outcome, and create an auditable receipt/reputation record.

A dedicated L2 remains optional. The first prototype should be chain-agnostic enough to run on an existing EVM network.

## 1. Market signals — 2026

- Coinbase and AWS announced x402 support that allows publishers and API providers behind AWS CloudFront/WAF to accept AI agents as customers. This is evidence that agent payments are moving toward mainstream web infrastructure.
- AWS Bedrock AgentCore payments describes agents discovering, evaluating and paying for resources during execution, with pricing potentially at fractions of a cent per call.
- Google AP2 and A2A/x402 combine agent communication, payment authorization and crypto settlement rather than requiring a new chain.
- ERC-8004 is now live on Ethereum mainnet and provides portable agent identity, reputation and validation registries that can be deployed on L2s or mainnet.
- Current ecosystem research shows a layered market: authorization/mandates, agent communication, payment protocols and settlement rails are increasingly specialized rather than replaced by one monolithic protocol.

**Implication:** our product must sit above settlement and add a difficult-to-copy control/trust layer.

## 2. Security signals

Recent research on blockchain agent-to-agent payments identifies weak intent binding, authorization misuse, payment-service decoupling and limited accountability as open problems. A 2026 Internet-Draft on x402 delegation binding also highlights the need to bind payment authority to the intended delegate agent and prevent replay/substitution.

Therefore the MVP security model must include:

- explicit payment intent binding;
- per-agent and per-task spending caps;
- expiry and nonce/replay protection;
- idempotency;
- concurrency/race handling;
- recipient/service binding;
- price/quote expiry;
- authorization scope;
- receipt integrity;
- refund/dispute semantics;
- separation between discovery, authorization, execution and settlement.

## 3. Competitive landscape

### x402

Strong candidate for the payment rail. HTTP-native, stablecoin-oriented and increasingly integrated into web infrastructure. We should integrate rather than recreate it unless a measured product gap appears.

### Google AP2 / A2A

Strong candidate for authorization and agent communication. We should study how our policy layer can complement these standards.

### ERC-8004

Strong candidate for identity/reputation/validation primitives. We should avoid creating a competing identity standard unless necessary.

### Cloudflare / AWS / Coinbase

These companies have distribution, infrastructure and capital. Competing directly on generic agent payments is not realistic for a zero-budget project.

### Specialized agent-payment products

There are already smaller products combining x402, ERC-8004 and agent marketplaces. This further supports a narrow wedge instead of a generic payment network.

## 4. Product wedge under investigation

### Working thesis

> **A policy and trust layer for autonomous spending.**

The user does not merely want an agent that can pay. The user wants to say:

- which services the agent may use;
- maximum spend per task/day/vendor;
- acceptable price range;
- which assets/networks are allowed;
- whether prepayment is allowed;
- what evidence is required before settlement;
- when a transaction must pause for human approval.

The system should then enforce those constraints and produce an auditable receipt.

## 5. Candidate MVP

`discover → quote → identity/trust check → policy evaluation → bounded authorization → payment → service execution → result verification → receipt → reputation`

The first MVP should use an existing EVM testnet and a mock or test stablecoin. It should demonstrate one complete workflow end-to-end.

## 6. Why a dedicated L2 is not yet justified

Existing infrastructure already offers low-cost EVM settlement. Building a chain adds operational, security, bridge, sequencing, DA, upgrade, RPC, monitoring and legal complexity.

A dedicated chain becomes interesting only if measured MVP usage demonstrates one or more of:

- economically meaningful transaction volume that existing rails cannot serve efficiently;
- required execution/fee semantics unavailable elsewhere;
- specialized policy/precompile requirements;
- privacy or compliance requirements that cannot be met at application level;
- predictable fee requirements at high agent-call frequency;
- network effects that justify controlling dedicated blockspace;
- a defensible ecosystem reason for independent chain governance.

## 7. Chain candidates — preliminary assessment

### Existing EVM L2

**Current preference for MVP.** Lowest capital and operational risk. Lets us validate product demand before operating a network.

### OP Stack

Technically credible and highly configurable. Current documentation supports Ethereum settlement, configurable DA, custom gas tokens and operator fees. However, chain configuration, upgrades and security remain substantial operational responsibilities. Standard OP Stack chains also have specific compliance/security requirements for ecosystem classification.

### Arbitrum technology / dedicated chains

Credible alternative with configurable execution, gas token, DA, governance and validation. Worth benchmarking against OP Stack if the product later needs a dedicated chain.

### Polygon CDK / AggLayer

Credible if interoperability and shared liquidity across connected chains become a core product requirement. AggLayer emphasizes atomic cross-chain operations and cryptographic security boundaries.

### Other appchain/rollup approaches

Keep open until product requirements are measurable.

## 8. Decision criteria for a future chain

Score candidates on:

1. total cost of ownership;
2. Ethereum security model;
3. fault/dispute model;
4. DA cost and security;
5. throughput and latency;
6. stablecoin support;
7. custom fee/token support;
8. interoperability;
9. developer tooling;
10. upgrade/governance risk;
11. operational complexity;
12. ecosystem/network effects;
13. funding opportunities;
14. legal/compliance implications;
15. ability to create differentiated product value.

No chain is approved until this matrix is completed.

## 9. Token conclusion

No native token is currently justified. Existing stablecoins can provide settlement, while agent identity/reputation and policy controls can be implemented without speculative token economics.

A future token may become relevant for governance, network security, service incentives or fee economics, but only after demonstrated utility and a legal/economic design review.

## 10. Zero-budget strategy

Prioritize:

- existing public testnets;
- free/open-source development tools;
- GitHub;
- hackathons;
- ecosystem grants;
- cloud/developer credits;
- partnerships with testnet service providers;
- a public demo that proves a real agent-payment workflow.

Do not spend money on a dedicated chain before product validation.

## 11. Research backlog

- Quantify the first user segment and pain point.
- Benchmark x402, AP2/A2A and ERC-8004 integration paths.
- Define a formal policy language for bounded agent spending.
- Threat-model policy bypass and confused-deputy attacks.
- Define receipt format and verification model.
- Compare smart-wallet/account-abstraction options.
- Compare existing EVM L2s for the MVP.
- Determine whether escrow is actually required for the first service category.
- Research EU/Germany legal structure and MiCA implications with qualified counsel before any public token or regulated activity.
- Design an experiment that can obtain first users without capital.

## Sources checked on 2026-08-22

- Coinbase: x402 + AWS CloudFront/WAF agent payments.
- AWS: Bedrock AgentCore payments.
- Google Cloud: AP2 and A2A/x402.
- Ethereum ERC-8004 specification.
- Academic research on blockchain agent-to-agent payments and ERC-8004.
- IETF Internet-Draft on x402 delegation binding.
- Optimism OP Stack documentation.
- Arbitrum developer documentation.
- Polygon AggLayer documentation.
