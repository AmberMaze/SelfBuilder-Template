# SelfBuilder Template

A minimal project template designed to maximize Copilot effectiveness through clear structure and context.

## Quick Start

1. Read `.github/copilot-instructions.md` (house style + interaction rules).
2. Browse `.github/instructions/` for topic-specific guidance (engineering, git hygiene).
3. Use `.github/prompts/` templates (bootstrap, feature-request, code-review, debugging).
4. (Optional later) Define agent modes in `.github/modes/`.
5. For MCP / tool integration placeholders see `.github/mcp/` and `.github/tools/`.

## Directory Structure (Essentials)

```
.github/
	copilot-instructions.md
	instructions/ (engineering + git standards)
	prompts/ (reusable *.prompt.md)
	modes/ (future agent behavior profiles)
	tools/ (future tool manifests)
	mcp/ (future MCP server notes)
.vscode/ (editor + Copilot defaults)
docs/ (project intent, Copilot usage, guides)
src/ (your code – empty now)
tests/ (test files)
TemplateGuide.md (how to use this template end-to-end)
```

## Key Files

- `.github/copilot-instructions.md` – canonical rules Copilot follows.
- `.github/instructions/engineering-standards.instructions.md` – design + code rules.
- `.github/instructions/git-hygiene.instructions.md` – branching & commits.
- `.github/prompts/*.prompt.md` – copy/paste prompt starters.
- `docs/project-intent.md` – high‑level goals (fill in).
- `TemplateGuide.md` – walkthrough for new users.

## Working with Copilot

- Start by citing relevant instruction files (improves responses).
- Use prompt templates instead of ad‑hoc phrasing for consistency.
- Keep `copilot-instructions.md` + instruction files current.
- Add modes only when distinct behavior shifts are needed.

## Getting Started

1. Fill out `docs/project-intent.md` (vision, goals, constraints).
2. Adjust `.github/copilot-instructions.md` to your stack (language, style, testing).
3. Use `bootstrap.prompt.md` to scaffold (answer stack choice).
4. Add initial code in `src/`; create matching tests in `tests/`.
5. Use `feature-request.prompt.md` for new features; keep scope tight.
6. Run code reviews with `code-review.prompt.md` and iterate.
7. Document decisions progressively (extend `project-intent.md` or new ADRs).

## Template Philosophy

Keep everything minimal, explicit, and evolvable. Add tooling only after the problem is felt; placeholders exist to guide future growth without premature complexity.
