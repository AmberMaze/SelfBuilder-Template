## Debugging Prompt
Goal: Rapid root-cause analysis + safe fix plan.

Template:
```
Context: [FEATURE / MODULE]
Observed Symptom: [SHORT]
Expected Behavior: [WHAT_SHOULD_HAPPEN]
Actual Behavior: [WHAT_HAPPENS]
Error Output / Stack:
```
[STACK_OR_LOG_SNIPPET]
```
Environment: [OS | RUNTIME | VERSION]
Recent Changes: [LAST COMMITS OR PR #]
Repro Steps:
1. [...]
2. [...]
3. [...]
Data Inputs (if any): [SAMPLE]
Attempts Tried:
- [ACTION] => [RESULT]
Constraints: [TIME | LEGACY | LIMITED LOGS]
Risk Sensitivity: [LOW | MED | HIGH]
```

Assistant Output Format (ordered):
1. Likely Root Cause(s) (ranked with probability %).
2. Evidence (map each cause to log lines / code areas).
3. Focused Investigation Steps (max 5; fastest signal first).
4. Minimal Fix Strategy (bullet steps).
5. Regression Tests To Add (names + brief scenario).
6. Safety Checks (perf, security, data integrity) if relevant.
7. If uncertainty >30%: SINGLE clarifying question.

Guidelines:
- Prefer instrumentation suggestions over guesswork.
- Highlight any silent failure patterns (swallowed exceptions, broad catches).
- Point out missing invariants / assertions.
- If logs insufficient: suggest 2–3 specific log statements (location + variable names).

Edge Cases:
- Non-repro: propose hypothesis matrix + next data points.
- Intermittent: recommend sampling / retry strategy & time correlation.

Ready for debugging input.
