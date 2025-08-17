#!/usr/bin/env sh
# Bootstrap helper for Copilot Chat
# Usage:
# 1. Open Copilot Chat and paste the output of this script.
#    ./scripts/bootstrap.sh
# 2. Or pipe into your clipboard (macOS: pbcopy; Linux: xclip/xsel) and paste into the chat.
#    ./scripts/bootstrap.sh | pbcopy
# Notes: This script only prints the repository bootstrap prompt located at
# `.github/prompts/bootstrap.prompt.md`. It does NOT call any API or install deps.

PROMPT_FILE=".github/prompts/bootstrap.prompt.md"

if [ ! -f "$PROMPT_FILE" ]; then
  echo "Error: prompt file not found: $PROMPT_FILE" 1>&2
  exit 2
fi

# Print a short header then the prompt content.
printf "---\nBootstrap Prompt (copy/paste into Copilot Chat)\n---\n\n"
cat "$PROMPT_FILE"

# End
