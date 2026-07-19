# Public Architecture Overview

This document describes the product at a deliberately high level. It does not disclose proprietary matching logic, scoring formulas, schemas, internal endpoints, or implementation details.

## On-Premises Components

### Windows Endpoint Agent

- Collects approved local inventory
- Registers with the local Pr0jectZer0 server
- Receives local policy and rescan instructions
- Does not send customer inventory to the future licensing cloud

### Pr0jectZer0 Server

- Accepts endpoint check-ins
- Stores endpoint and software inventory
- Synchronizes vulnerability intelligence
- Normalizes products and versions
- Correlates installed software with affected versions
- Scores and persists findings
- Serves the management dashboard

### Local Database

Stores operational product data required by the customer's deployment, including devices, software, vulnerability intelligence, findings, policies, and synchronization state.

## Future External Services

### Threat Intelligence Distribution

May distribute normalization mappings, resolver heuristics, enrichment data, and signed intelligence updates without receiving customer findings.

### Licensing Platform

Validates subscriptions using only anonymous operational metadata such as product version and endpoint count.

## Security Boundary

The customer's vulnerability, endpoint, software, and findings data remain within the customer's deployment boundary.
