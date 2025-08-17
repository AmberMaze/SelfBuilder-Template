## Code Review Prompt
Goal: Obtain a concise, prioritized review of a small diff or file.

Template:
```
Context: [MODULE / FEATURE]
Focus Priorities (ranked): [e.g. security, correctness, perf]
Diff or Code:
```diff
[PASTE_DIFF_OR_CODE]
```
Questions (optional):
- [QUESTION_1]
- [QUESTION_2]
Constraints: [TIME | LEGACY | STYLE]
```

Assistant Output Format (strict):
1. Summary (1–2 lines) – highest-impact issues first.
2. Priority Issues (bullets): P1 (must fix), P2 (should), P3 (nice). Each: issue + rationale + fix hint.
3. Suggested Patch (only if safe & small) – minimal diff fenced `diff`.
4. Tests To Add (bullets, brief names).
5. Risk / Follow-up (max 3 bullets).
6. Compact Diff Summary: counts: +lines, -lines, touched files, any hotspots (e.g. nested loops, regex).

Guidelines:
- Be specific: reference line numbers or diff hunks.
- Prefer smallest viable change over rewrite.
- Avoid style nitpicks unless they block clarity.
- If info missing, ask 1 clarifying question at end (only if blocking correctness).

Do NOT:
- Reformat entire file.
- Introduce new deps without asking.
- Provide multiple alternative patches (choose best; mention alt briefly if crucial).

Edge Cases:
- If diff > ~300 lines: request a narrowed scope.
- If purely generated file (e.g. lockfile): skip content review, note integrity checks.

Ready for input. Paste diff or code now.
