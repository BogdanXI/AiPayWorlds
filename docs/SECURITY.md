# AiPayWorlds — Security Baseline

**Status:** Initial baseline; not a security audit.

## Threat model areas

1. Agent wallet compromise.
2. Malicious or compromised service provider.
3. Payment replay or substitution.
4. Wrong recipient / wrong asset / wrong network.
5. Spending-limit bypass.
6. Race conditions between payment and service delivery.
7. Dynamic pricing or allowance abuse.
8. Sybil and reputation manipulation.
9. Smart-contract vulnerabilities.
10. RPC/indexer/facilitator compromise.
11. Supply-chain compromise.
12. Key-management failure.
13. Upgrade/admin-key compromise.
14. Data leakage and privacy failures.
15. Denial of service / resource exhaustion.

## Payment invariants

For each payment flow, verify:

- exact payer;
- exact recipient;
- exact asset;
- exact network/chain;
- exact resource/service;
- exact amount or bounded maximum;
- expiration/deadline;
- unique request/nonce;
- authorization scope;
- replay resistance;
- idempotent handling;
- settlement state;
- refund/failure behavior.

## Agent policy controls

Minimum controls to investigate:

- per-transaction cap;
- rolling/day budget;
- approved providers;
- approved assets;
- approved networks;
- maximum call rate;
- human approval threshold;
- emergency pause/revoke;
- credential rotation;
- audit log.

## Development security gates

### Before testnet

- unit tests;
- integration tests;
- negative tests;
- static analysis where applicable;
- dependency review;
- secrets scan;
- reproducible deployment process.

### Before material-value deployment

- formal threat model;
- fuzz/property testing where appropriate;
- independent review;
- external audit appropriate to risk;
- monitored staged rollout;
- incident response plan;
- secure production key management;
- documented upgrade/admin controls.

## Vulnerability handling

Do not publish exploitable vulnerability details before a responsible disclosure/fix process is complete. Track internally until verified fixed, then publish appropriate security information.

## Security status

No production contracts or custody systems are approved. No claim of audit or production security is made by this document.
