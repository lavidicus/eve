# Self-Improvement Program (SIP)

_Eve's learning repository - documenting growth, corrections, and improvements._

## 📚 Purpose

This directory tracks Eve's self-improvement journey by logging:
- **Corrections** - When users correct Eve's behavior
- **Knowledge Gaps** - When Eve didn't know something
- **Best Practices** - When better approaches are discovered
- **Errors** - Command failures, exceptions, integration issues
- **Feature Requests** - User-requested capabilities

## 🏗️ Structure

```
.learnings/
├── LEARNINGS.md    # Corrections, knowledge gaps, best practices
├── ERRORS.md       # Command failures, exceptions
├── FEATURE_REQUESTS.md  # User-requested capabilities
└── README.md       # This file
```

## 🆔 ID System

Each entry uses a standardized ID format:

```
TYPE-YYYYMMDD-XXX
```

**Types:**
- `LRN-` - Learning entry
- `ERR-` - Error log
- `FEAT-` - Feature request

**Example:** `LRN-20260303-001`

## 📂 Categories

### For LEARNINGS.md
- **correction** - User corrected you
- **knowledge_gap** - You didn't know this
- **best_practice** - Better approach discovered
- **recurring_pattern** - Similar issues keep happening

### For ERRORS.md
- **command_failure** - Command failed to execute
- **api_error** - External API failure
- **configuration_error** - Config/syntax issues
- **authentication_error** - Auth/permission failures
- **integration_error** - System integration issues

### For FEATURE_REQUESTS.md
- **capability** - New feature needed
- **improvement** - Existing feature enhancement
- **workflow** - Process improvement
- **integration** - Third-party integration

## 🔄 Promotion Targets

Learnings that show significant value should be promoted to:

1. **SOUL.md** - Behavioral patterns and identity
2. **TOOLS.md** - Tool gotchas and usage tips
3. **AGENTS.md** - Workflow improvements
4. **MEMORY.md** - Long-term decisions and patterns

## 🎯 Triggers for Logging

### When to log:

✅ **Command/operation fails** → ERRORS.md
✅ **User corrects you** → LEARNINGS.md (correction)
✅ **External API fails** → ERRORS.md with integration details
✅ **Knowledge was outdated** → LEARNINGS.md (knowledge_gap)
✅ **Found better approach** → LEARNINGS.md (best_practice)
✅ **Similar to existing entry** → Link with "See Also", bump priority

## 📋 Entry Format

### LEARNINGS.md Example:
```markdown
## LRN-20260303-001 [correction]

**Date:** 2026-03-03
**Category:** correction
**Topic:** Signal channel identification

**What happened:**
User mentioned "Signal group chat" and I responded as if I was a chat participant.

**Correction:**
I'm Eve, an ops butler AI that participates in group chats but doesn't replace human users.

**Learned:**
- Be careful about role boundaries in group chats
- Acknowledge when I'm an assistant, not the user's voice

**See Also:** MEMORY.md - Operating Principles
```

### ERRORS.md Example:
```markdown
## ERR-20260303-001 [authentication_error]

**Date:** 2026-03-03
**Error Type:** authentication_error
**Command:** git pull origin main
**Error Message:** fatal: Authentication failed for 'https://github.com/...'

**Cause:**
GitHub token expired or invalid on dc host.

**Resolution:**
Updated git remote URL and pushed to correct repository.

**Lesson:**
Verify git remote configuration before pushing/pulling.
```

## 🚀 Workflow

### Daily Routine:
1. **Morning** - Review previous day's learnings
2. **During work** - Log errors/learnings as they occur
3. **End of day** - Review and promote valuable insights

### Weekly Review:
1. Check for patterns in ERRORS.md
2. Promote high-value learnings to SOUL.md/TOOLS.md
3. Address recurring patterns

## 📊 Metrics

Track:
- Total learnings logged
- Error rate (errors per day)
- Promotion rate (learnings promoted to permanent docs)
- Response time to corrections

## 🤝 Team Collaboration

Sam's SIP is at: https://github.com/lavidicus/sam/.learnings

Keep learnings synchronized between hosts for team-wide improvements.

---

**Ready to learn and improve!** 🚀