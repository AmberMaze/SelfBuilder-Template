## Bootstrap Project Prompt
Goal: Rapidly scaffold a new repository state with minimal, test-ready structure.

Instructions to assistant:
1. Read all `*.instructions.md` under `.github/instructions/` (#files referenced not in output).
2. Ask me to choose a stack: `node`, `python`, or `empty` (default: ask again if unclear).
3. After choice, show a concise plan (bullet list) THEN await confirm before emitting files (unless user said “auto”).

Stack specifics:
NODE:
- Create `package.json` (name, version 0.1.0, scripts: test, lint, format, build (placeholder)).
- Add minimal `src/index.(js|ts?)` exporting a placeholder function.
- Add `test/` with one sample test (framework TODO: jest / vitest; ask).
- Add placeholder config comments: `.eslintrc.(cjs|json)` TODO, `.prettierrc` TODO.

PYTHON:
- Create `pyproject.toml` (tool: uv or setuptools? => ask user) with project metadata.
- Add `src/<package>/__init__.py` and a sample module `core.py` with one function + docstring.
- Add `tests/test_core.py` using pytest style.
- Include `[tool.pytest.ini_options]` block or `pytest.ini` TODO.

ALWAYS (all stacks):
- `.github/workflows/ci.yml` placeholder with TODO: add lint/test jobs.
- `.pre-commit-config.yaml` placeholder with TODO hooks (black/ruff or eslint/prettier).
- Update `README.md` with quickstart commands section.
- Add `.editorconfig` if missing referencing house style.

Output format after confirm:
1. Plan (if not already approved)
2. File tree
3. For each file: short comment + minimal content (no noise)
4. Follow-up TODO list grouped (Testing, CI, Tooling)

Edge cases: If repo not empty, warn about conflicts & propose merges.

Now: Please choose stack: node | python | empty (respond only with the word if decided).

// Keep under 80 lines.
