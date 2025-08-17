# Instructions Directory WhoAmI
Focus: Narrow, topic-specific guidance that augments `copilot-instructions.md`.

Files:
- `engineering-standards.instructions.md` – architecture, design, testing norms.
- `git-hygiene.instructions.md` – branching, commits, review flow.

How to Use:
1. Reference relevant file names in your prompt (improves contextual grounding).
2. Keep each instructions file < ~120 lines; split if growing.
3. Append TODO lists instead of over-specifying prematurely.

When Adding New Instructions:
- Start with Purpose, Scope, Principles.
- Provide actionable bullet rules, not essays.
- Include a TODO for unresolved decisions.

TODO:
- [ ] Evaluate if security-specific instructions file is needed.
- [ ] Decide on ADR (Architecture Decision Record) process file location.
