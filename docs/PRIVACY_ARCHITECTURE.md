# Privacy Architecture

## Core Principle

**Customer security data stays inside the customer's environment.**

The on-premises Pr0jectZer0 server is responsible for endpoint inventory, software inventory, vulnerability intelligence, correlation, risk scoring, findings, policies, and dashboard presentation.

## Future Cloud Licensing Boundary

The future cloud licensing platform is intentionally designed to receive only:

- Anonymous server identifier
- Product version
- Endpoint count
- Subscription status and validation timestamps

The platform is not intended to receive or store:

- Endpoint names
- Usernames
- IP addresses
- Installed software
- Vulnerability records
- Findings
- Risk scores
- Scan results
- Customer files
- Customer network topology

## Availability and Enforcement

Temporary loss of connectivity to the licensing service should trigger retries and a grace period rather than immediate deactivation.

A confirmed licensing response of `active = false` will place the dashboard into an inactive-license state after applicable grace and validation rules are satisfied.

## Architectural Separation

```text
Customer data plane
  Inventory, vulnerabilities, findings, policies, dashboard
  Remains on premises

Pr0jectZer0 licensing control plane
  Subscription status, product version, endpoint count
  No customer security data
```
