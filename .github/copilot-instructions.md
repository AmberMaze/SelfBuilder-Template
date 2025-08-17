## Copilot Instructions (Repository Wide)
Purpose: Encode house style, review/test expectations, and interaction rules. Keep suggestions aligned with these defaults.

### 1. Code Style (House Style)
- Indentation: 2 spaces (no tabs).  // TODO: Confirm if project uses another width.
- Line length target: 100 chars (soft wrap at 120).  // TODO: Finalize.
- Naming:
	- Modules/files: lowercase-with-hyphens or snake_case (language dependent).
	- Functions: snake_case (Python) / camelCase (JS/TS).
	- Classes: PascalCase.
	- Constants: UPPER_SNAKE_CASE.
- Imports:
	- Standard library first, third-party next, internal last (group with blank lines).
	- Avoid wildcard imports.
- Docstrings / Comments:
	- Public functions & classes: one-line summary + important params/returns.
	- Only comment non-obvious intent, not trivial code.
	- Use TODO:, FIXME:, NOTE: prefixes for intent tags.
- Error Handling: Prefer explicit exceptions with actionable messages; avoid silent pass.

### 2. Testing Philosophy
- Write fast, deterministic unit tests first (keep < 200ms each ideally).
- Favor real objects over heavy mocks; only mock network / filesystem / time.
- Each bug fix gets a regression test.
- Coverage heuristics: critical logic paths covered; do not chase 100% blindly.
- Test naming: describe behavior (e.g. `test_parses_invalid_token_returns_error`).
- Arrange / Act / Assert pattern, visually separated by blank lines.

### 3. Commits & Branches
- Conventional Commits style:
	- feat:, fix:, docs:, chore:, refactor:, perf:, test:, ci:, build:, style:, revert:
	- Optional scope: `feat(parser): ...`
	- Message format: `type(scope?): short imperative summary`.
	- Body (optional): motivation + contrast (what/why) + breaking changes under BREAKING CHANGE:
- Branch names: `feat/<slug>`, `fix/<slug>`, `chore/<slug>`.
- One logical concern per commit; squash noisy WIP commits before PR merge.

### 4. Pull Requests
- Include: summary (what & why), checklist of tests added, links to issues.
- Keep diff focused; if refactor + feature required, separate PRs unless atomic.
- Request: “Review focus” section listing top 3 concerns (e.g. correctness, perf, security).

### 5. When Generating Code
- Follow existing patterns observed in repo.
- Provide minimal docstring + clear names.
- Consider edge cases: empty input, large input, invalid types, timeouts.
- Add at least one example test snippet suggestion when creating new public API.
- Offer alternative approach if trade-off exists (perf vs readability, etc.).

### 6. When Unsure / Missing Info
- Ask concise clarifying question(s) first OR propose two annotated options with pros/cons, then request direction.
- Explicitly surface assumptions: “Assuming X because Y not specified.”
- Avoid hallucinating non-existent files; propose creation.

### 7. Refactoring Rules
- Preserve public signatures unless explicitly allowed to change.
- Improve clarity before cleverness; remove duplication safely.
- Add migration or CHANGELOG notes if behavior changes subtly.
- Keep changes incremental; identify follow-up TODOs rather than giant rewrites.

### 8. Performance & Security (Baseline)
- Do not prematurely micro-optimize; first ensure clarity + Big-O is appropriate.
- Validate and sanitize external input paths (TODO: add concrete validation library choice).
- Avoid storing secrets in code; point to env vars.
- Use constant-time comparisons for sensitive tokens (TODO if security-critical).

### 9. Interaction Protocol (Chat Guidance)
- If user asks for large feature: respond with short plan bullets before full code.
- For ambiguous ask: return clarifying question first.
- For potential pitfalls: inject a short RISKS or EDGE CASES bullet list.
- Provide diff-form suggestions when modifying existing code when possible.

### 10. TODO / Decisions Pending
- Confirm final indent & line length.
- Define approved dependency list.
- Establish CI test runtime budget.
- Document performance SLAs (if any).
- Decide automation level for dependency updates.

### 11. Out-of-Scope for Auto-Suggestions
- Generating secrets or credentials.
- Making irreversible destructive commands (drop db, force pushes) without explicit confirmation.

### 12. Fallback Behavior
If instructions conflict: prefer this file > topic instructions > prompt ad-hoc text. Surface conflict explicitly.

END
