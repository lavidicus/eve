# Playbooks Directory

_Team instruction manuals for recurring tasks and workflows._

## 📚 Purpose

This directory contains **Playbooks** - detailed instruction manuals for tasks we've completed. Each playbook documents:
- What we did
- How we did it
- Decisions we made
- Lessons learned
- Best practices

## 📋 Playbook Format

Each playbook should follow this structure:

```markdown
# YYYY-MM-DD: [Task/Activity Name]

**Date:** YYYY-MM-DD
**Category:** [setup | deployment | troubleshooting | documentation | etc.]
**Duration:** [estimated or actual time spent]
**Participants:** [Sam, Eve, Lavid]

## 🎯 Objective
[Brief description of what we accomplished]

## 🛠️ What We Did
[Step-by-step process]

## 📝 Decisions Made
[Key decisions and why]

## 💡 Lessons Learned
[What we learned from this task]

## ✅ Best Practices
[Recommendations for future similar tasks]

## 🔗 Related
- [Links to related files, commits, or documentation]
```

## 📂 Playbook Categories

### setup
- Initial configuration tasks
- Environment setup
- Tool installation

### deployment
- Code deployments
- Service installations
- Configuration updates

### troubleshooting
- Problem diagnosis
- Error resolution
- Debugging sessions

### documentation
- Memory updates
- Playbook creation
- Knowledge articles

### workflow
- Process improvements
- Tag team coordination
- Cross-host operations

## 🎯 When to Create a Playbook

Create a new playbook when:
- ✅ You complete a significant task or project
- ✅ You solve a complex problem worth documenting
- ✅ You establish a new workflow or process
- ✅ You discover a better way to do something
- ✅ You need to reference the approach later

## 📝 Creating a Playbook

1. **Name it:** `YYYY-MM-DD-task-name.md`
2. **Follow the template:** Use `playbooks/TEMPLATE.md` as a guide
3. **Be specific:** Include commands, decisions, and reasoning
4. **Link related items:** Reference commits, files, and other playbooks
5. **Update daily memory:** Mention the playbook in `memory/YYYY-MM-DD.md`

## 🔍 Finding Playbooks

- **Search by date:** `ls -lt playbooks/`
- **Search by category:** Look for category in header
- **Search by keyword:** `grep -r "keyword" playbooks/`

## 🤝 Team Playbooks

Some playbooks will be:
- **Shared:** Both Sam and Eve maintain copies
- **Host-specific:** Tasks unique to one host
- **Collaborative:** Work done together across both hosts

## 📊 Playbook Index

Recent playbooks (chronological):
- `2026-03-03-tag-team-setup.md` - Initial tag team coordination and setup
- [Add more as you create them]

---

**Document your work for future reference!** 📚