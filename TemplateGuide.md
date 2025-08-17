# Template Guide
Purpose: Teach a newcomer (human or AI assistant) how to use this repository structure + Copilot to build a new project efficiently.

---
## 1. Orientation
Core principle: Minimal upfront scaffolding; add complexity only when there is a clear need. The .github folder encodes interaction rules and prompt building blocks so you can get consistent, high‑quality assistance quickly.

Key Directories:
- `.github/` – rules & prompts (start here)
- `docs/` – project intent + usage guidelines
- `src/` – application/library code (empty initially)
- `tests/` – test code (seed after first function/module)

---
## 2. First-Time Setup
1. Open `.github/copilot-instructions.md` – adjust language, line length, and any testing defaults.
2. Fill in `docs/project-intent.md` (vision, users, constraints). Keep it light; iterate.
3. Skim `engineering-standards.instructions.md` + `git-hygiene.instructions.md` so your first commits align.
4. Confirm editor environment uses recommended extensions (see `.vscode/extensions.json`).
5. (Optional) Decide stack (Node vs Python) before bootstrapping.

---
## 3. Bootstrapping a Project
Use `bootstrap.prompt.md`:
1. Copy its content to Copilot Chat.
2. Choose stack: `node`, `python`, or `empty`.
3. Review the proposed plan (file tree + rationale).
4. Approve generation or request adjustments (naming, test framework, packaging tool).
5. Commit generated baseline (follow git hygiene conventions).

Node Baseline (expected):
- `package.json` (scripts: build, test, lint, format)
- `src/index.js|ts`
- `test/` sample test
- Placeholder configs: ESLint / Prettier (TODOs)

Python Baseline (expected):
- `pyproject.toml` (choose uv or setuptools / poetry later)
- `src/<package>/` with `__init__.py` + `core.py`
- `tests/test_core.py`
- Pytest config placeholder

---
## 4. Implementing Features
For each new capability:
1. Copy `feature-request.prompt.md` and fill placeholders (feature name, value, constraints).
2. Ask Copilot for: assumptions, architecture sketch, plan, test outline.
3. Confirm or refine plan (enforce scope discipline).
4. Generate code module-by-module (small diffs).
5. Write tests immediately; iterate until green.
6. Refactor for clarity before adding next feature.

---
## 5. Reviewing & Refining
Use `code-review.prompt.md`:
1. Paste diff (prefer ≤ 300 changed lines) and specify focus priorities.
2. Apply P1 fixes first, then P2; defer low-value nits.
3. When patch safe, have Copilot suggest minimal diff edits (avoid broad reformat).

Refactoring:
- Reference `engineering-standards.instructions.md` for design constraints.
- Ask for a small refactor plan before executing large structural changes.

---
## 6. Debugging Issues
Use `debugging.prompt.md`:
1. Provide reproduction steps, logs/stack traces, recent changes.
2. Get ranked root-cause hypotheses + next instrumentation steps.
3. Add a regression test before applying fix.

---
## 7. Git Workflow
- Branch naming & commits: follow `git-hygiene.instructions.md`.
- Commit early, commit clean: isolate concerns; squash noisy WIP before PR merge.
- PR template (future): include context, risk notes, test evidence.

---
## 8. Evolving the Template
Trigger points to add tooling:
- >10 tests: add explicit test runner config.
- Repeated style friction: add linter + formatter manifests under `.github/tools/`.
- Security-sensitive endpoints: add security mode or instructions file.
- Performance work: add a performance mode or dedicated doc.

Add modes in `.github/modes/` only when consistent alternative behavior is beneficial (e.g., security_review, performance_tuning).

---
## 9. MCP & Tool Integration (Future)
When adopting MCP servers:
1. Create server note in `.github/mcp/servers/` (template inside WhoAmI).
2. Define env vars for secrets (never commit credentials).
3. Describe capabilities so an agent can discover them programmatically.

Tool manifests belong under `.github/tools/` (linter, formatter, test-runner). Agents can surface or enforce these policies once defined.

---
## 10. Maintaining High Signal
Practices:
- Keep instruction files concise; prune outdated rules.
- Explicitly log assumptions in feature requests.
- Add TODO blocks instead of premature heavy configuration.
- Prefer small iterative merges over large multi-purpose PRs.

Anti-Patterns:
- Giant bootstrap including unused frameworks.
- Copy/paste prompt usage without tailoring variables.
- Letting instruction files grow into essays (split them).

---
## 11. Daily Workflow (Cheat Sheet)
Morning:
1. Review open TODOs in instructions & WhoAmI files.
2. Plan next task with feature or debugging prompt.
3. Implement code + tests (small commits).
4. Request review with code-review prompt.
5. Update docs / project-intent if scope shifted.

---
## 12. Escalation & Uncertainty Handling
If Copilot output is vague:
- Add explicit references: file paths, instruction filenames.
- Narrow scope (one function vs whole subsystem).
- Ask for 2 contrasting approaches with trade-offs.

If stuck debugging:
- Provide fresh logs & diff since last known good commit.
- Request instrumentation suggestions.

---
## 13. Onboarding New Contributors
1. Read this `TemplateGuide.md` + root `README.md`.
2. Skim `.github/copilot-instructions.md`.
3. Fill a mini feature request prompt as a practice run.
4. Submit a small PR adding a trivial function + test to validate workflow.

---
## 14. Customization Checklist
- [ ] Decide programming language baseline.
- [ ] Fill project intent.
- [ ] Set style + test frameworks in copilot instructions.
- [ ] Choose dependency management approach.
- [ ] Add first tool manifest when needed.
- [ ] Decide on CI workflow (add real jobs to placeholder).

---
## 15. FAQ (Starter)
Q: Do I need modes now?  A: Not until distinct behavior patterns emerge.
Q: Where do I put architectural decisions?  A: Add `docs/adr/0001-title.md` (create directory first).
Q: How detailed should feature prompts be?  A: Enough to constrain ambiguity; err on brevity + clarity.

---
## 16. Next Improvements (Backlog)
- Add example CI workflow skeleton.
- Provide sample test frameworks for Node & Python side-by-side.
- Introduce security review prompt once threat model draft exists.
- Add performance profiling prompt template.

END
