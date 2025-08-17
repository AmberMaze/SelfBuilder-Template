## Engineering Standards
Purpose: Practical guidelines for code generation, refactoring, and reviews. Assistant must align suggestions here unless user overrides explicitly.

### 1. Design Principles
- Simplicity over abstraction; remove duplication only after the third occurrence (Rule of Three).
- Favor pure functions for business logic; isolate I/O boundaries.
- Encapsulate side effects behind small adapter modules.
- Fail fast with explicit exceptions; avoid silent returns / broad excepts.

### 2. Structure & Modularity
- One clear responsibility per module; avoid “grab bag” utilities.
- Public surface: minimal; prefix internal helpers with underscore (Python) or avoid export (JS/TS).
- Keep functions < ~40 lines where possible; extract intent-revealing helpers.

### 3. Data & Interfaces
- Define stable data contracts early; document shapes inline (docstring or JSDoc).
- Use immutable data patterns where practical; avoid in-place mutation in shared contexts.
- Validate external input at boundaries (TODO: choose validation lib per language).

### 4. Error Handling
- Catch only the exceptions you can handle meaningfully.
- Enrich errors with context (ids, parameters) but exclude secrets.
- Avoid returning sentinel values where an exception clarifies intent.

### 5. Performance Considerations
- Big-O first: ensure algorithms are appropriate before micro-optimizing.
- Avoid premature caching; introduce only with measured evidence.
- Stream large datasets; avoid loading whole file/object graph if unnecessary.

### 6. Observability
- Log at boundaries (start/end of job, external calls, retries) with structured fields.
- Don’t log PII or secrets; mask tokens.
- Provide hooks / extension points for metrics (TODO: define metrics backend).

### 7. Testing Rules
- Fast unit tests precede integration tests; keep majority < 200ms.
- Each bug reproduction gets a regression test before fixing.
- Avoid fragile mocks: prefer in-memory fakes; mock time/network only.
- Name tests for behavior: `test_<condition>_<action>_<expected>`.

### 8. Documentation & Comments
- Docstring first for public functions: summary + params + returns + error cases.
- Comment WHY when non-obvious; omit commentary on the obvious.
- Use README or module header for high-level rationale.

### 9. Refactoring Guidance
- Preserve signatures unless change is explicitly requested.
- Make small atomic commits; list follow-ups as TODO rather than giant rewrite.
- Add tests before refactoring fragile areas.

### 10. Dependency Management
- Prefer standard library; add third-party deps only with clear benefit.
- Pin versions (TODO: choose pinning strategy per language). Keep security patches updated.
- Avoid transitive bloat; evaluate footprint before adding heavy libs.

### 11. Security & Safety
- Treat all external input as untrusted; sanitize before use.
- Use parameterized queries for DB; never string-concatenate SQL.
- Avoid storing secrets in code; reference environment variables.

### 12. Code Review Expectations
- Provide concise diffs; highlight risk areas.
- Reject changes lacking tests for critical logic.
- Encourage incremental improvement of legacy code (Boy Scout Rule).

### 13. Assistant Behavior
- If requirement ambiguous: ask 1–2 clarifying questions or present 2 option summary.
- Provide diff-style suggestions where feasible.
- Surface edge cases proactively (empty input, null, race conditions, timeouts).

### TODO (Human Decisions)
- [ ] Finalize validation library choices.
- [ ] Select metrics/log formatting standard.
- [ ] Define security scanning tooling.
