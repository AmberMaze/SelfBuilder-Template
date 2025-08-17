# Tools Directory WhoAmI
Purpose: Placeholder for future tool manifest/config files Copilot can reference (linters, formatters, test runners, coverage, security scanners).

Suggested Future Files:
- `linter.json` – rule set + enforcement level.
- `formatter.json` – formatting preferences.
- `test-runner.json` – parallelism, timeouts, coverage thresholds.

Adoption Strategy:
1. Start with lint + format only when friction emerges.
2. Add test runner config after first >10 tests.
3. Introduce security scanning once external inputs exist.

TODO:
- [ ] Decide on primary linter.
- [ ] Decide if pre-commit hooks manage lint/format.
- [ ] Add minimal baseline configs referencing `copilot-instructions.md`.
