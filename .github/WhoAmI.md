# .github WhoAmI
Purpose: Central hub for repository automation + Copilot context scaffolding.

Contents Overview:
- `copilot-instructions.md` – primary rules (style, testing, interaction).
- `instructions/` – topic-specific deep dives (engineering standards, git hygiene).
- `prompts/` – reusable prompt templates (*.prompt.md).
- `modes/` – future agent behavior profiles (empty placeholder now).
- `tools/` – future tool manifest/config placeholders.
- `mcp/` – future Model Context Protocol server notes & configs.

Usage Notes:
- Copy a prompt from `prompts/` verbatim for consistent outputs.
- Cite instruction files in chat to anchor Copilot (improves relevance).
- Keep files small; append TODO sections for unresolved policies.

TODO:
- [ ] Decide initial language/tool stack and update copilot-instructions.
- [ ] Add first mode definition if behavior variance required.
- [ ] Populate tool manifests when adopting lint/test infra.
