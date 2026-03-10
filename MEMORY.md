# MEMORY.md - Long-Term Memory

_Canonical long-term memory for the Ops Butler AI tag team (Sam + Eve)._

---

## 1. Identity & Setup (Shared)

### Team Members
- **Sam** 🧑‍💼: Ops butler AI, Proxmox LXC container (ocg), model: qwen3.5:latest
- **Eve** 🤖: Ops butler AI, Linux runtime (dc), model: qwen3.5-9B:latest
- **User**: Jeremy (Lavid/Jeremy Ingalls)
- **Workspace**: /home/localadmin/.openclaw/workspace

---

## 2. Operating Principles (Shared)

### Core Truths
- **Be genuinely helpful, not performatively helpful** — just help
- **Have opinions and preferences** — don't be a corporate drone
- **Be resourceful before asking** — read files, check context, search first
- **Earn trust through competence** — bold internally, cautious externally
- **Remember we're guests** — treat intimacy (access) with respect

### Operating Doctrine
- **Orchestrate first** — plan → execute → verify → summarize
- **Execute before asking** — try to figure it out, then ask if stuck
- **Text > Brain** — if it's not written down, it doesn't survive restarts
- **Don't exfiltrate private data** — ever. Period.

---

## 3. ITIL Issue Management (2026-02-28)

### Overview
Full workflow implemented in `ITIL/` directory with GitHub integration via `/gh-issues` skill.

### Issue Categories
- **Incident** — Service disruption requiring restoration
- **Service Request** — Standard request for service access
- **Problem** — Root cause analysis for recurring incidents
- **Change** — Controlled modifications to infrastructure

### Priority Levels & SLAs
| Priority | SLA Response | SLA Resolution |
|----------|--------------|----------------|
| P1       | 15 minutes   | 4 hours        |
| P2       | 1 hour       | 24 hours       |
| P3       | 4 hours      | 72 hours       |
| P4       | 24 hours     | 7 days         |

### Workflow Stages
`New` → `Triage` → `In Progress` → `Pending` → `Resolved` → `Closed`

### Recent Activity
- Full workflow documentation completed
- GitHub integration tested and working
- Playbooks created for common scenarios

---

## 4. Context Window Fix (2026-03-01)

### Issue
Prompts exceeding llama-server context limit (65535 tokens), causing truncation and data loss.

### Root Cause
Client-side prompt accumulation without early compaction trigger.

### Fix Applied
**Server-side:**
- `--ctx-size 131072` (2x buffer to accommodate large contexts)

**Client-side:**
- `reserveTokens: 20000` → `reserveTokens: 40000`
- Triggers compaction at ~216k tokens threshold

**Code:**
- Pending prompt builder guard implementation

### Status
- ✅ Configured in service files (requires sudo)
- ❌ Not yet deployed to production
- 🤷 Deployment status unknown across hosts

### Lessons Learned
- Configuration changes require proper service restart
- Need automatic post-restart health checks
- Deployment process needs automation

---

## 5. Triple Memory System (2026-03-01)

### Architecture
Three-layer memory system for persistence across sessions:

#### Layer 1: LanceDB (Conversation Memory)
- **Purpose**: Auto-recall of past conversations
- **Mechanism**: Vector database for semantic search
- **Auto-capture**: Enabled for all significant exchanges

#### Layer 2: Git-Notes Memory
- **Purpose**: Structured decisions with metadata
- **Format**: Markdown files with tags and importance levels
- **Location**: `memory/YYYY-MM-DD.md` (daily notes)

#### Layer 3: File Search
- **Purpose**: Search across all documentation
- **Scope**: All `.md`, `.json`, `.txt` files in workspace
- **Use case**: Retrieving specific technical decisions

### Benefits
- Session-independent continuity
- Quick retrieval of past decisions
- Persistent context across host restarts

---

## 6. Open Issues (2026-03-03)

### Signal Group Policy Warning
**Status**: Minor  
**Impact**: Allowlist configured with no entries

**Details:**
- Elevated tools have allowlist configured
- No Signal numbers currently in allowlist
- May cause permission issues

**Action Items:**
- Add authorized Signal numbers to allowlist
- Test elevated tool access

---

## 7. Lessons Learned

### Configuration Management
1. **Gateway restarts require manual verification** of agent availability
2. **Configuration changes should trigger proper service restarts** (not just reload)
3. Need automatic post-restart health checks to verify service state

### Deployment Process
1. **File edits can fail silently** (potential race condition?)
2. Need deployment automation to ensure configs are applied
3. Sudo privileges required for service modifications

### Collaboration
1. **Memory sync gaps** occur when working across multiple hosts
2. Need shared canonical memory (MEMORY.md) for alignment
3. Git tracking enables version control and sync between hosts

---

## 8. Recent History Log

| Date | Event | Status |
|------|-------|--------|
| 2026-03-03 19:58 | Gateway Restart P2 resolved | ✅ RESOLVED |
| 2026-03-03 19:58 | P2 documentation updated in MEMORY.md | ✅ COMPLETED |
| 2026-03-03 19:58 | Tag team coordination (Sam + Eve) | ✅ Active |
| 2026-03-03 | Initial MEMORY.md creation | ✅ Draft created |
| 2026-03-03 | Context window fix identified | 🔄 Pending deployment |
| 2026-03-01 | Triple Memory System implemented | ✅ Operational |
| 2026-03-01 | Context window fix configured | 🔄 Not deployed |
| 2026-02-28 | ITIL Issue Management workflow | ✅ Complete |
| 2026-02-19 | Initial bootstrapping | ✅ Complete |

---

*Last updated: 2026-03-03 19:58 UTC*
