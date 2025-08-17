# MCP Directory WhoAmI
Purpose: Prepare for future Model Context Protocol server integrations (file ops, git ops, analysis, testing automation).

Structure:
- `servers/` – one file per server (config or notes).

Planned Use:
- Provide machine-readable config for agents to discover capabilities.
- Document required auth (env vars) + permissions.

Minimal Server Note Template:
```
# server-name
Purpose: ...
Capabilities: [list]
Auth: ENV VARS: [VAR_NAMES]
Limits: [rate/timeouts]
TODO: Production rollout steps.
```

TODO:
- [ ] Decide first server (likely file-manager or git-ops).
- [ ] Define auth/env naming convention.
- [ ] Add security review checklist for servers.
