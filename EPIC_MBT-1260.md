# Epic: MBT-1260 - New Cloudflare AuthFlow

## Epic Details
- **Jira Key:** MBT-1260
- **Title:** New Cloudflare AuthFlow
- **Project:** MBT (datatoolsproapp)
- **Status:** To Do
- **Priority:** Medium
- **Created:** December 17, 2025
- **Link:** https://goodmangroup.atlassian.net/browse/MBT-1260

## Project Context
This repository (`cloudflare_routing`) contains all work related to implementing the new Cloudflare authentication flow. **All work in this project should be linked to Epic MBT-1260.**

## Related Issues
- **GTM-96:** New DataTools Pro Routing, Auth (Story) - Related routing and auth work
- **MBT-1164:** Security Posture - WAF / Network Traffic In (Story) - Security considerations

## Tasks/Stories

### Phase 1: Planning & Architecture
**Story:** [MBT-1279](https://goodmangroup.atlassian.net/browse/MBT-1279) - Document current authentication flow and design new Cloudflare Worker-based auth flow
- [ ] Document current authentication flow
- [ ] Design new Cloudflare Worker-based auth flow
- [ ] Define tenant directory structure
- [ ] Create sequence diagrams for auth flows
- [ ] Document API endpoints and routing rules

### Phase 2: Cloudflare Worker Setup
**Story:** [MBT-1280](https://goodmangroup.atlassian.net/browse/MBT-1280) - Set up Cloudflare Worker for auth routing and tenant identification
- [ ] Set up Cloudflare Worker for auth routing
- [ ] Implement tenant identification logic
- [ ] Create routing rules for pooled vs dedicated tenants
- [ ] Set up redirect logic to central auth domain
- [ ] Implement handoff code generation and validation

### Phase 3: Central Auth Service
**Story:** [MBT-1281](https://goodmangroup.atlassian.net/browse/MBT-1281) - Implement central auth service on auth.datatoolspro.com
- [ ] Set up auth.datatoolspro.com service
- [ ] Implement tenant lookup from email domain
- [ ] Integrate with Stytch for authentication
- [ ] Handle SSO vs non-SSO flows
- [ ] Generate and manage handoff codes

### Phase 4: Pooled App Integration
**Story:** [MBT-1282](https://goodmangroup.atlassian.net/browse/MBT-1282) - Integrate pooled app with new auth flow
- [ ] Implement `/auth/consume` endpoint in Laravel app
- [ ] Create server-to-server code exchange with auth service
- [ ] Set up host-only session cookies
- [ ] Implement tenant scoping in pooled app
- [ ] Add organization_id/tenant_id extraction from session

### Phase 5: Testing & Security
- [ ] Test end-to-end auth flow
- [ ] Verify cookie isolation (no cross-domain sharing)
- [ ] Test tenant isolation in pooled environment
- [ ] Security review of handoff code mechanism
- [ ] Load testing for auth endpoints

### Phase 6: Documentation & Deployment
- [ ] Document the new auth flow
- [ ] Create runbooks for operations
- [ ] Set up monitoring and alerting
- [ ] Deploy to staging environment
- [ ] Deploy to production

## Workflow Instructions

### When Starting New Work
1. **Always create a Jira issue** linked to Epic MBT-1260
2. **Link the issue** in your commit messages: `[MBT-1260] Description`
3. **Update this file** as tasks are completed

### Creating Jira Issues
Use the MCP tools or Jira web interface to create issues:
- **Issue Type:** Story, Task, or Subtask (depending on size)
- **Parent Epic:** MBT-1260
- **Project:** MBT (datatoolsproapp)

### Commit Message Format
```
[MBT-1260] Brief description

More detailed explanation if needed.

Related: MBT-XXXX (if linking to specific subtask)
```

### Branch Naming
Use format: `MBT-1260/feature-name` or `MBT-1260/task-description`

## Key Requirements

### Authentication Flow Requirements
1. **No cookie sharing** between auth.datatoolspro.com and tenant domains
2. **Tenant identification** via email domain or workspace selection
3. **Regional routing** support (us1, eu1, etc.)
4. **Handoff code mechanism** for secure token exchange
5. **Host-only cookies** for pooled app sessions

### Technical Stack
- **Cloudflare Workers** for edge routing
- **Laravel** for pooled app backend
- **Stytch** for authentication provider
- **Tenant Directory** for tenant lookup and configuration

## Next Steps
1. Review and refine task list
2. Create initial Jira stories/tasks
3. Prioritize work items
4. Begin implementation

## Notes
- This epic is related to the broader DataTools Pro routing and authentication initiative
- Security considerations from MBT-1164 should be incorporated
- Consider multi-region deployment from the start

