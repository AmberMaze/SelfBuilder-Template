## Feature Request Prompt
Goal: Structured spec -> implementation plan + minimal scaffold.

Template:
```
Feature Name: [NAME]
Business Value: [SHORT IMPACT]
Primary User: [ROLE]
Success Metric: [QUANTIFIABLE]
Scope (In): [BULLETS]
Scope (Out): [BULLETS]
Core Flow:
1. ...
2. ...
3. ...
Data / Contracts:
- Input: [SHAPE]
- Output: [SHAPE]
Non-Functional:
- Performance: [TARGET]
- Security: [REQ]
- Reliability: [SLO]
Constraints: [LIMITS]
Dependencies: [SYSTEMS | SERVICES]
Risk Areas: [LIST]
Open Questions: [LIST]
```

Assistant Output Format:
1. Clarifications Needed (if blocking) – else state "None".
2. Assumptions (explicit list).
3. Architecture Sketch (concise bullets: components -> responsibilities).
4. Data / Interface Contracts (structured snippet; highlight TODO fields).
5. Implementation Plan (ordered steps; parallelizable groups).
6. Test Strategy (unit, integration, edge cases).
7. Migration / Rollout (flags, phased deployment, fallback).
8. Risk Mitigation (top 3 with countermeasures).
9. Initial File Tree & Key File Contents (skeleton only, no bloat).
10. Follow-up TODO Backlog (post-MVP tasks).

Guidelines:
- Prefer smallest viable slice enabling metric measurement.
- Defer optimizations unless required by constraints.
- Highlight any circular dependency risks.
- If spec ambiguous: produce two contrasted options with trade-offs.

Ready for feature spec.
