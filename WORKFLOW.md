# Workflow Guide for Cloudflare Routing Project

## Epic Tracking
**Epic:** [MBT-1260: New Cloudflare AuthFlow](https://goodmangroup.atlassian.net/browse/MBT-1260)

All work in this repository must be linked to Epic MBT-1260.

## Starting New Work

### 1. Create a Jira Issue
Before starting any work, create a Jira issue:
- **Project:** MBT (datatoolsproapp)
- **Issue Type:** Story, Task, or Subtask
- **Link to Epic:** MBT-1260
- **Summary:** Clear description of the work

### 2. Create a Branch
```bash
git checkout -b MBT-1260/feature-name
# or
git checkout -b MBT-1260/task-description
```

### 3. Make Changes
Work on your feature/task as normal.

### 4. Commit Changes
Use the commit message template (configured automatically):
```bash
git commit
```

Or manually format:
```
[MBT-1260] Brief description

More detailed explanation if needed.

Related: MBT-XXXX (if linking to specific subtask)
```

### 5. Push and Create PR
```bash
git push origin MBT-1260/feature-name
```

In your PR description, include:
- Link to Jira issue: `Related: MBT-XXXX`
- Brief description of changes
- Any testing notes

## Jira Integration

### Using MCP Tools
You can use the MCP Atlassian tools to:
- Create issues: `mcp_mcp-atlassian_createJiraIssue`
- Update issues: `mcp_mcp-atlassian_editJiraIssue`
- Search issues: `mcp_mcp-atlassian_searchJiraIssuesUsingJql`
- Get issue details: `mcp_mcp-atlassian_getJiraIssue`

### Example: Creating a Task
```python
# Using MCP tool
createJiraIssue(
    cloudId="8866317c-23d5-4a7d-8e9e-e02cdef7e160",
    projectKey="MBT",
    issueTypeName="Task",
    summary="Implement Cloudflare Worker routing logic",
    description="...",
    # Link to epic via parent or custom field
)
```

## Task Breakdown

See `EPIC_MBT-1260.md` for the complete task breakdown organized by phase:
1. Planning & Architecture
2. Cloudflare Worker Setup
3. Central Auth Service
4. Pooled App Integration
5. Testing & Security
6. Documentation & Deployment

## Status Updates

As you complete tasks:
1. Update the Jira issue status
2. Check off completed items in `EPIC_MBT-1260.md`
3. Add notes about what was accomplished

## Questions?

- Review `EPIC_MBT-1260.md` for epic details
- Check related issues: GTM-96, MBT-1164
- Use MCP tools to query Jira for more context

