# Giwa DEX Periphery

[![CI status](https://github.com/Giwa-DEX/periphery/actions/workflows/test.yaml/badge.svg)](https://github.com/Giwa-DEX/periphery/actions/workflows/test.yaml)

Periphery Contract of Giwa DEX

## Table of Contents

- [Giwa DEX Periphery](#giwa-dex-periphery)
  - [Table of Contents](#table-of-contents)
  - [Deployments](#deployments)
  - [Install](#install)
  - [Usage](#usage)
    - [Tests](#tests)
    - [Linting](#linting)

## Deployments

All deployments can be found in the [deployments](./deployments) directory.

## Install

### Prerequisites

- We use [Forge Foundry](https://github.com/foundry-rs/foundry) for test. Follow the [guide](https://github.com/foundry-rs/foundry#installation) to install Foundry.

### Installing From Source

```bash
git clone https://github.com/Giwa-DEX/periphery && cd periphery
npm install
```

## Usage

### Tests

```bash
npm run test
```

### Linting

To run lint checks:

```bash
npm run prettier:ts
npm run lint:sol
```

To run lint fixes:

```bash
npm run prettier:fix:ts
npm run lint:fix:sol
```
