# Modes Directory WhoAmI
Purpose: Define alternate assistant behaviors (e.g., development, production-hardening, audit, performance).

Current State: Placeholder only. No active modes defined.

Recommended Mode File Schema (example `development.mode.json`):
```
{
  "name": "development",
  "priorities": ["iteration", "readability", "tests"],
  "suggestions": {"include_tests": true, "opt_level": "basic"},
  "notes": "Fast feedback over micro-optimization."
}
```
Usage:
- Reference mode by name in prompts: "Using mode: development".
- Keep mode definitions small; avoid duplicating global rules.

TODO:
- [ ] Decide initial set of modes (if any truly needed).
- [ ] Add security_review mode if code scans become frequent.
