# Basic Contract Hardhat Example

A minimal Hardhat project that deploys a `Storage` contract to Polkadot Hub, demonstrating the foundational workflow for EVM-compatible smart contract development on Polkadot.

## Overview

This project shows how to write, compile, and deploy a simple storage contract using Hardhat and Hardhat Ignition. The `Storage` contract stores a single `uint256` value on-chain and exposes two functions — `store` and `retrieve` — making it ideal as a first hands-on example.

## Contract

The `Storage` contract implements:

- **`store(uint256 num)`** — writes a number to contract state
- **`retrieve()`** — reads and returns the stored number

## Project Structure

```
basic-hardhat/
├── contracts/
│   └── Storage.sol               # Core storage contract
├── ignition/
│   └── modules/
│       └── Storage.ts            # Ignition deployment module
├── artifacts/                    # Compiled contracts (auto-generated)
├── cache/                        # Hardhat cache (auto-generated)
├── typechain-types/              # TypeScript types (auto-generated)
├── hardhat.config.ts             # Hardhat configuration
├── package.json                  # Project dependencies
├── tsconfig.json                 # TypeScript configuration
└── README.md                     # This file
```

## Quick Start

### 1. Install Dependencies

```bash
npm install
```

### 2. Set Your Private Key

```bash
npx hardhat vars set PRIVATE_KEY
```

### 3. Compile the Contract

```bash
npx hardhat compile
```

### 4. Deploy to Polkadot TestNet

```bash
npx hardhat ignition deploy ignition/modules/Storage.ts --network polkadotTestnet
```

Confirm the network prompt when asked. The deployment output will include the deployed contract address.

## Configuration Variables

Hardhat Configuration Variables provide secure, local storage for sensitive data.

| Variable | Required | Description |
|---|---|---|
| `PRIVATE_KEY` | Yes | Private key of a funded account (no `0x` prefix) |

**Useful commands:**

```bash
# Set a variable (prompts for value)
npx hardhat vars set PRIVATE_KEY

# List all variables
npx hardhat vars list

# Read a variable
npx hardhat vars get PRIVATE_KEY

# Delete a variable
npx hardhat vars delete PRIVATE_KEY

# Show storage location
npx hardhat vars path
```

## Prerequisites

- Node.js v22.13.1 or later
- npm
- A funded account on Polkadot Hub TestNet — get tokens from the [Polkadot Faucet](https://faucet.polkadot.io/)

## Versions

| Component | Version |
|---|---|
| Hardhat | ^2.22.16 |
| Solidity | 0.8.28 |
| Node.js | v22.13.1+ |

## Learn More

- [Deploy a Basic Contract with Hardhat](https://docs.polkadot.com/smart-contracts/cookbook/smart-contracts/deploy-basic/basic-hardhat/) — step-by-step guide on docs.polkadot.com
- [Hardhat Documentation](https://hardhat.org/hardhat-runner/docs/getting-started)
- [Hardhat Ignition](https://hardhat.org/ignition/docs/getting-started)
- [Hardhat Configuration Variables](https://hardhat.org/hardhat-runner/docs/guides/configuration-variables)
