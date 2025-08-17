# Effective Copilot Usage for This Project

This guide provides project-specific best practices for working with GitHub Copilot to maximize productivity and code quality.

## Project-Specific Copilot Guidelines

### Before Starting Any Session

1. **Reference Context Files**: Always mention relevant files from `.copilot/` directory
   - "I'm working in [MODE] mode from `.tools/modes/`"
   - "Please follow the instructions in `.copilot/instructions.md`"
   - "The project context is in `.copilot/context.md`"

2. **Set Clear Intent**: Start with your goal
   - "I need to implement [FEATURE] following our [PATTERN]"
   - "I'm debugging [ISSUE] in [COMPONENT]"
   - "I want to refactor [CODE] to improve [ASPECT]"

### Project-Specific Patterns

#### Code Generation
**Best Practice**: Always specify our project preferences
```
Following our project structure in .copilot/instructions.md, 
please generate a [COMPONENT] that [FUNCTIONALITY] using [TECH_STACK].
Include error handling and follow our [STYLE_GUIDE].
```

#### Code Review
**Best Practice**: Use our code review template
```
Using the template from .copilot/prompts/code-review.md,
please review this [COMPONENT] focusing on [SPECIFIC_AREAS].
````markdown
# Effective Copilot Usage for This Project

This guide provides project-specific best practices for working with GitHub Copilot to maximize productivity and code quality.

## Project-Specific Copilot Guidelines

### Before Starting Any Session

1. **Reference Context Files**: Always mention relevant files from `.github/` directory
   - "I'm working in [MODE] mode from `.tools/modes/`"
   - "Please follow the instructions in `.github/copilot-instructions.md`"
   - "The project context is in `.github/copilot-instructions.md`"

2. **Set Clear Intent**: Start with your goal
   - "I need to implement [FEATURE] following our [PATTERN]"
   - "I'm debugging [ISSUE] in [COMPONENT]"
   - "I want to refactor [CODE] to improve [ASPECT]"

### Project-Specific Patterns

#### Code Generation
**Best Practice**: Always specify our project preferences
```
Following our project structure in .github/copilot-instructions.md, 
please generate a [COMPONENT] that [FUNCTIONALITY] using [TECH_STACK].
Include error handling and follow our [STYLE_GUIDE].
```

#### Code Review
**Best Practice**: Use our code review template
```
Using the template from .github/prompts/code-review.prompt.md,
please review this [COMPONENT] focusing on [SPECIFIC_AREAS].
```

#### Debugging
**Best Practice**: Provide comprehensive context
```
Following the debugging template from .github/prompts/debugging.prompt.md,
I'm experiencing [ISSUE] in [COMPONENT]. Here's the error: [ERROR_MESSAGE]
```

### Working Modes Integration

#### Development Mode
- **When to Use**: Active feature development
- **Copilot Prompt**: "I'm in development mode - prioritize rapid iteration and clear code"
- **Focus**: Speed, readability, debugging assistance

#### Production Mode  
- **When to Use**: Preparing for deployment
- **Copilot Prompt**: "I'm in production mode - emphasize security, performance, and reliability"
- **Focus**: Code quality, error handling, optimization

#### Testing Mode
- **When to Use**: Writing or improving tests
- **Copilot Prompt**: "I'm in testing mode - help with comprehensive test coverage"
- **Focus**: Test quality, edge cases, automation

#### Refactoring Mode
- **When to Use**: Improving existing code
- **Copilot Prompt**: "I'm in refactoring mode - focus on maintainability and clean architecture"
- **Focus**: Code organization, patterns, technical debt

### Effective Prompt Patterns

#### For New Features
```
Context: Working on [PROJECT_NAME] in [CURRENT_MODE]
Goal: Implement [FEATURE_NAME] 
Requirements: [SPECIFIC_REQUIREMENTS]
Constraints: [PROJECT_CONSTRAINTS]
Please follow patterns from .github/copilot-instructions.md
```

#### For Code Review
```
Please review this code following our standards in .github/copilot-instructions.md:
[CODE_BLOCK]
Focus areas: [SPECIFIC_CONCERNS]
Project context: [RELEVANT_CONTEXT]
```

#### For Debugging
```
Bug Report: [ISSUE_DESCRIPTION]
Error: [ERROR_MESSAGE]
Context: [WHAT_WAS_BEING_DONE]
Environment: [RELEVANT_ENVIRONMENT_INFO]
Already tried: [ATTEMPTED_SOLUTIONS]
```

### Tool Integration Tips

#### With MCP Servers
- Reference available MCP servers: "Using our [SERVER_NAME] MCP server..."
- Leverage server capabilities: "Please use the database MCP server to..."

#### With Development Tools
- Mention configured tools: "Run this through our configured [TOOL_NAME]..."
- Reference tool settings: "Following our [TOOL] configuration..."

### Common Anti-Patterns to Avoid

❌ **Don't**: Start without context
✅ **Do**: Reference project files and current mode

❌ **Don't**: Ask for generic solutions
✅ **Do**: Request project-specific implementations

❌ **Don't**: Ignore established patterns
✅ **Do**: Follow documented conventions and styles

❌ **Don't**: Skip error handling discussions
✅ **Do**: Always consider edge cases and error scenarios

### Project-Specific Shortcuts

#### Quick Context Setting
```
Project: [PROJECT_NAME]
Mode: [CURRENT_MODE]
Language: [PRIMARY_LANGUAGE]
Following: .github/copilot-instructions.md
Task: [CURRENT_TASK]
```

#### Standard Code Request
```
Generate [COMPONENT] that [FUNCTIONALITY]
- Follow project patterns from .github/copilot-instructions.md
- Include appropriate error handling
- Add tests if in testing mode
- Consider performance if in production mode
```

### Advanced Techniques

#### Multi-File Changes
1. Start with overall plan: "I need to modify [FILES] to implement [FEATURE]"
2. Request step-by-step approach: "Break this into logical steps"
3. Validate each step: "Does this align with our architecture?"

#### Architecture Discussions
1. Reference project intent: "Given our goals in docs/project-intent.md..."
2. Consider constraints: "Within our technical constraints..."
3. Evaluate trade-offs: "What are the pros/cons of this approach?"

### Quality Assurance

#### Before Implementing Suggestions
- [ ] Does it follow project conventions?
- [ ] Is error handling appropriate?
- [ ] Are tests needed?
- [ ] Does it align with current mode?
- [ ] Is documentation needed?

#### After Implementation
- [ ] Run project linters/formatters
- [ ] Execute relevant tests
- [ ] Update documentation if needed
- [ ] Consider impact on other components

### Continuous Improvement

#### Learning from Sessions
- Note effective prompt patterns
- Identify gaps in project context
- Update .github/ files based on experience
- Share successful patterns with team

#### Feedback Loop
- Update this guide with new learnings
- Refine prompt templates based on results
- Adjust working modes based on effectiveness
- Improve project context documentation

## Quick Reference

### Essential Commands
- Set context: Reference `.github/copilot-instructions.md`
- Choose mode: Specify mode from `.tools/modes/`
- Use templates: Reference `.github/prompts/[template].prompt.md`
- Follow standards: Mention `.github/copilot-instructions.md`

### Emergency Debugging
Use the debugging template from `.github/prompts/debugging.prompt.md` with full error context, reproduction steps, and environment details.

### Feature Development
Use the feature request template from `.github/prompts/feature-request.prompt.md` with clear requirements and technical specifications.

````
