# AiPayWorlds MVP

## User story

An autonomous AI agent discovers a service, checks its price and reputation, pays a small amount, and receives a result without a human approving every payment.

## First demonstration

```text
Agent
  |
  | service discovery
  v
Service Registry
  |
  | price + reputation
  v
Escrow Contract
  |
  | test USDC payment
  v
Service Provider
  |
  | result / completion
  v
Escrow release
```

## MVP requirements

### Payments

- ERC-20 compatible test stablecoin.
- Escrow contract.
- Payment status tracking.
- Refund path for failed jobs.

### Services

Each service should expose:

- service ID
- provider address
- endpoint metadata
- price
- supported payment token
- reputation score
- availability status

### Agent identity

The first version can use a normal EVM wallet address as the agent identity. More advanced identity and reputation mechanisms can be added later.

### SDK

The first SDK should hide blockchain complexity behind a small API:

```ts
const payment = await aipay.pay({
  service: "example-service",
  amount: "0.01",
  token: "USDC"
});
```

The exact API is provisional and will be refined during implementation.

## Success criteria

The MVP is successful when a scripted agent can:

1. Discover a registered service.
2. Read its price.
3. Send a test payment into escrow.
4. Receive a simulated service result.
5. Release the escrow payment.
6. Record the transaction and outcome.

No real-money transactions are required for the MVP.
