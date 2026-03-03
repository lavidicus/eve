#!/bin/bash
# File Search Script for OpenClaw Workspace
# Searches files in the workspace for a keyword and shows matching lines

WORKSPACE_DIR="$HOME/.openclaw/workspace"
KEYWORD="$1"
LIMIT="${2:-10}"

if [ -z "$KEYWORD" ]; then
    echo "Usage: $0 <keyword> [limit]"
    echo "Example: $0 'security' 10"
    exit 1
fi

echo "Searching for: $KEYWORD (max $LIMIT results)"
echo "========================================"

# Search markdown files in workspace
cd "$WORKSPACE_DIR"
grep -rn "$KEYWORD" --include="*.md" . 2>/dev/null | head -n "$LIMIT"

echo ""
echo "Search completed. $(grep -rn "$KEYWORD" --include="*.md" . 2>/dev/null | wc -l) total matches found."