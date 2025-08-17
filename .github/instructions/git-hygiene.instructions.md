## Git Hygiene & Flow
Purpose: Consistent, auditable history enabling fast reviews and safe rollback. Assistant must align commit suggestions and branch naming to these rules.

### 1. Branching Strategy
- `main`: always deployable; protected (CI green required).
- `develop` (optional): integration of multiple feature streams (TODO: decide usage).
- Feature branches: `feat/<slug>` (new functionality).
- Fix branches: `fix/<slug>` (bug/security).
- Refactor branches: `refactor/<slug>`.
- Chore branches: `chore/<slug>` (infra, tooling, deps).
- Hotfix: `hotfix/<slug>` branched off latest tag or `main`.

### 2. Commit Message Format (Conventional Commits)
```
<type>(<optional scope>): <imperative short summary>

[optional body]
[optional BREAKING CHANGE: description]
```
Types: feat, fix, docs, style, refactor, perf, test, build, ci, chore, revert.
Guidelines:
- Use present tense (“add feature” not “added”).
- Keep summary ≤ 72 chars.
- Body explains motivation & contrast (what/why, not how) when non-trivial.

### 3. Commit Granularity
- One logical concern per commit.
- Separate formatting-only changes from logic changes.
- Squash noisy WIP commits before merging PR (automerge rules must pass CI).

### 4. Pull Request Expectations
- Title mirrors final squash commit summary (if squashing).
- Description template sections: Context, Changes, Risks, Test Coverage, Follow-ups.
- Include screenshots or CLI output for UX / CLI changes.
- Link related issues (`Closes #ID`).
- Provide “Review Focus” (top 2–3 areas needing scrutiny).

### 5. Review Process
- Small PRs (< ~400 lines changed) preferred; if larger, justify.
- Reviewer leaves actionable suggestions (not vague “clean this up”).
- Author addresses or explicitly resolves each comment (never silent ignore).
- Assistant-proposed patches should appear as separate suggestion blocks.

### 6. Merge Policy
- Rebase + merge preferred to keep history linear (unless preserving merge context is vital).
- No direct commits to protected branches.
- CI must pass (lint, tests, type checks) before merge.
- Security scanning (TODO: integrate) must be green for `main`.

### 7. Handling Breaking Changes
- Use `BREAKING CHANGE:` footer with migration notes.
- Tag semantic version bump accordingly (TODO: adopt semantic-release?).
- Provide upgrade snippet / script if mechanical.

### 8. Emergency Fixes (Hotfix Flow)
- Branch from current `main` tag -> apply minimal patch -> PR -> fast-track review -> tag release.
- Backport to `develop` (if using) to avoid divergence.

### 9. Commit Content Rules
- No secrets, API keys, tokens; if leaked: revoke + force rotate.
- Avoid committing generated artifacts (except lockfiles or intentionally vendored code with notice).
- Large binary files: use artifact storage or LFS (TODO: decide LFS policy).

### 10. Assistant Behavior Guidelines
- If diff touches unrelated areas: propose split commits.
- Flag mixed concerns (refactor + new feature) and suggest separation.
- When auto-suggesting commit message: include scope if clear; else omit.
- Ask clarifying question if change purpose ambiguous.

### 11. Tagging & Releases
- Tags follow `vMAJOR.MINOR.PATCH`.
- Pre-releases use `-alpha.N`, `-beta.N`, `-rc.N`.
- Changelog: generate from conventional commits (TODO: tooling decision).

### 12. TODO (Human Decisions)
- [ ] Decide if `develop` branch is required.
- [ ] Choose release automation (semantic-release, Changesets, custom).
- [ ] Define required CI checks list.
