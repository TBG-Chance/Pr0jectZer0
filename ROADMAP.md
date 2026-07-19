# Pr0jectZer0 Product Roadmap

> **Know Your Exposure. Prioritize What Matters. Secure with Confidence.**

This roadmap communicates current development direction. It is not a contractual delivery commitment, and priorities may change as testing and customer feedback are incorporated.

## Phase 1 — Core Product

**Goal:** Stabilize the foundational exposure-management platform.

- Complete and validate the global Findings API
- Complete dashboard findings integration
- Maintain Fix First™ prioritization
- Finalize the enterprise dashboard and token-access visual system
- Standardize the permanent product tagline and brand system
- Rework and clean the private development Git repository
- Standardize configuration and environment handling
- Strengthen logging, error handling, testing, and operational diagnostics
- Remove temporary development instrumentation
- Review performance and resource requirements
- Maintain public/private repository separation

## Phase 2 — Threat Intelligence Library

**Goal:** Improve product and version resolution without redesigning the working correlation pipeline.

- Vendor normalization
- Product aliases
- CPE mappings
- Version normalization
- Resolver heuristics
- CISA KEV enrichment
- Future EPSS enrichment
- Suppression and exception intelligence
- Independently updateable intelligence package

## Phase 3 — Public Release Preparation

**Goal:** Establish a professional public presence while keeping all source code private.

- Documentation-only public GitHub repository
- Product and architecture documentation
- Privacy statement
- Installation and operations guidance
- Screenshots and product visuals
- Release notes and changelog
- Website, support, and documentation links
- Public security reporting policy

## Phase 4 — Native Windows Platform

**Goal:** Eliminate customer dependency on Docker and developer tooling.

- Native Windows services
- Automatic startup and recovery
- Embedded or bundled dashboard assets
- Native configuration storage
- Production service logging
- Secure local credential storage
- Update-ready service architecture

## Phase 5 — Pilot Deployment

**Goal:** Validate the product on two controlled offline devices.

- Installation validation
- Endpoint enrollment validation
- Detection and correlation accuracy
- Resource consumption measurement
- Offline behavior validation
- Dashboard usability review
- Findings and Fix First™ quality review

## Phase 6 — Commercial Installer and Enrollment

**Goal:** Deliver a set-it-and-forget-it deployment experience.

- Native Windows installer
- One-click enrollment as the preferred workflow
- Enrollment token as the secure underlying mechanism
- Automatic device registration
- Automatic configuration and service startup
- No manual server-side endpoint creation
- No Go, Node.js, Docker, or PowerShell requirements for customers

## Phase 7 — Cloud Licensing Platform

**Goal:** Provide subscription and customer-portal capabilities without collecting customer security data.

- Privacy-preserving license validation
- Subscription management
- Endpoint-count billing
- Customer portal
- Download and release management
- Product-version awareness
- Active, inactive, and disconnected license states
- Grace-period handling for temporary connectivity loss
- Dashboard deactivation when the validated subscription is inactive
- No collection of vulnerability, inventory, endpoint, findings, user, IP-address, or customer-file data

## Post-1.0 Product Direction

Potential future capabilities include:

- Executive and compliance reporting
- Scheduled reports and exports
- Policy and exception management
- Active Directory and Microsoft Entra ID deployment assistance
- Multi-site and MSP-oriented administration
- Improved resolver and vulnerability-cache performance
- Remote deployment workflows

## Separate Deferred Project

Data Exfiltration Monitoring remains a separate future product and is intentionally not part of the Pr0jectZer0 core roadmap. Its future direction includes parameter-based transfer monitoring, threshold alerts, destination awareness, and actionable exfiltration risk scoring.
