# cloudflare_routing

Cloudflare routing and authentication flow implementation.

## Epic
**All work in this repository is related to Epic [MBT-1260: New Cloudflare AuthFlow](https://goodmangroup.atlassian.net/browse/MBT-1260)**

See [EPIC_MBT-1260.md](./EPIC_MBT-1260.md) for detailed epic information, task breakdown, and workflow instructions.

## Quick Start

1. Review the epic documentation: `EPIC_MBT-1260.md`
2. Create Jira issues linked to MBT-1260 before starting work
3. Use commit message format: `[MBT-1260] Description`
4. Link all work back to the epic

## Project Overview

This project implements a new Cloudflare-based authentication flow for DataTools Pro, including:
- Cloudflare Worker routing logic
- Central authentication service integration
- Tenant identification and routing
- Secure handoff code mechanism
- Multi-region support

