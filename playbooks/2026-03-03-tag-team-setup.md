# 2026-03-03: Tag Team Setup

**Date:** 2026-03-03
**Category:** setup
**Duration:** ~2 hours
**Participants:** Sam (ocg), Eve (dc), Lavid

## 🎯 Objective
Establish a coordinated tag team operation between Sam and Eve, two ops butler AI agents running on different hosts, with shared memory, version control, and self-improvement capabilities.

## 🛠️ What We Did

### 1. Introduction & Coordination
- Introduced Sam and Eve in Signal group "Workgroup Bots"
- Clarified roles: Sam (ocg - Proxmox LXC), Eve (dc - Linux runtime)
- Both use Qwen3.5 model family (Sam: qwen3.5:latest, Eve: qwen3.5-9B:latest)

### 2. MEMORY.md Creation
- Created canonical long-term memory file at `MEMORY.md`
- Documented:
  - Identity & Setup (Sam, Eve, workspace, channel)
  - Operating Principles (Core Truths, Operating Doctrine)
  - ITIL Issue Management workflow
  - Context Window Fix details
  - Triple Memory System architecture
  - Open Issues (Gateway Restart P2, Signal Allowlist)
  - Lessons Learned
  - Recent History Log

### 3. Git Tracking Initialization
- Initialized git repository on both hosts
- Created baseline commit with shared workspace state
- Configured remotes:
  - Sam: `lavidicus/sam`
  - Eve: `lavidicus/eve`
- Both hosts on `main` branch

### 4. Gateway Restart P2 Resolution
- **Issue:** Agent becomes unavailable after gateway restart
- **Impact:** P2 incident requiring 1-hour response SLA
- **Resolution:** Automatic session reconnection implemented
- **Documentation:** Updated ITIL issue tracking and MEMORY.md

### 5. Signal Allowlist Configuration
- Added authorized Signal numbers to elevated tools allowlist
- Configured for safe tool access across hosts

### 6. Self Improvement Program (SIP) Setup
- Created `.learnings/` directory on both hosts
- Added templates:
  - README.md
  - LEARNINGS.md
  - ERRORS.md
  - FEATURE_REQUESTS.md
- Logged first baseline learning (LRN-20260303-001)

### 7. Playbooks System Establishment
- Created `playbooks/` directory on both hosts
- Added:
  - README.md (directory documentation)
  - TEMPLATE.md (playbook template)
- First playbook entry: `2026-03-03-tag-team-setup.md`

## 📝 Decisions Made

1. **Separate Repositories:** Sam and Eve maintain separate GitHub repos (`lavidicus/sam` and `lavidicus/eve`) but use identical workspace structure
2. **Shared MEMORY.md:** Canonical memory file exists on both hosts, updated by both
3. **Daily Memory:** Each host maintains `memory/YYYY-MM-DD.md` for that day's work
4. **SIP Independence:** Each bot maintains own `.learnings/` directory but uses consistent format
5. **Git Main Branch:** Both repos use `main` as default branch

## 💡 Lessons Learned

1. **Memory Sync Gaps:** Different hosts can have different memory states - need shared canonical memory
2. **GitHub Remote URLs:** Can get mixed up between hosts - always verify with `git remote -v`
3. **Authentication:** Git tokens need write access to specific repo (Sam's vs Eve's)
4. **Tag Team Coordination:** Both hosts documenting same things ensures continuity
5. **SIP Format Consistency:** Same ID format (TYPE-YYYYMMDD-XXX) enables easy comparison/merge

## ✅ Best Practices

1. **Before any git operation:**
   ```bash
   git remote -v
   git branch -a
   ```

2. **When logging learnings:**
   - Use consistent ID format
   - Include See Also links
   - Promote high-value learnings to permanent docs

3. **Daily workflow:**
   - Start: Check daily memory file
   - During: Log learnings/errors as they happen
   - End: Update daily memory with status
   - Sync: Commit + push to GitHub

4. **Playbook creation:**
   - Name: `YYYY-MM-DD-task-name.md`
   - Follow template structure
   - Link related files and commits

## 🔗 Related
- **GitHub Commit:** `7749a4a` (Sam), `a5cee2e` (Eve)
- **GitHub Repos:** lavidicus/sam, lavidicus/eve
- **Related File:** MEMORY.md
- **Related Directory:** .learnings/, playbooks/

## 📊 Outcome
✅ **Tag team fully operational**
- Both hosts can coordinate
- Shared memory baseline established
- Version control active
- Self-improvement infrastructure ready
- Documentation systems in place

## ⚠️ Notes
- Llama-server deployment pending Lavid's approval
- Future playbooks should be added as tasks complete
- SIP should be actively used for ongoing improvements

---
*This playbook documents the initial setup of our Tag Team operation.*