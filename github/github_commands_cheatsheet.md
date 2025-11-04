# GitHub Commands Cheatsheet

## 📦 Initial Setup & Configuration

### Configure Git

```bash
# Set username and email
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Check configuration
git config --list
git config user.name
git config user.email

# Set default branch name
git config --global init.defaultBranch main

# Set default editor
git config --global core.editor "code --wait"  # VS Code
git config --global core.editor "vim"          # Vim
```

### SSH Setup

```bash
# Generate SSH key
ssh-keygen -t ed25519 -C "your.email@example.com"

# Start SSH agent
eval "$(ssh-agent -s)"

# Add SSH key
ssh-add ~/.ssh/id_ed25519

# Copy public key to clipboard (Mac)
pbcopy < ~/.ssh/id_ed25519.pub

# Copy public key to clipboard (Linux)
xclip -sel clip < ~/.ssh/id_ed25519.pub

# Test SSH connection
ssh -T git@github.com
```

---

## 🚀 Repository Initialization

### Create New Repository

```bash
# Initialize local repository
git init

# Initialize with specific branch name
git init -b main

# Clone existing repository
git clone https://github.com/username/repo.git

# Clone with specific folder name
git clone https://github.com/username/repo.git my-folder

# Clone specific branch
git clone -b branch-name https://github.com/username/repo.git
```

### Link Local to Remote

```bash
# Add remote origin
git remote add origin https://github.com/username/repo.git

# Add remote with SSH
git remote add origin git@github.com:username/repo.git

# View remotes
git remote -v

# Change remote URL
git remote set-url origin https://github.com/username/new-repo.git

# Remove remote
git remote remove origin

# Rename remote
git remote rename origin upstream
```

---

## 📝 Basic Git Commands

### Stage & Commit

```bash
# Check status
git status
git status -s  # Short format

# Stage files
git add filename.txt                # Stage specific file
git add .                          # Stage all changes
git add *.js                       # Stage all JS files
git add folder/                    # Stage entire folder
git add -A                         # Stage all (new, modified, deleted)
git add -u                         # Stage modified and deleted only

# Unstage files
git reset filename.txt             # Unstage specific file
git reset                          # Unstage all

# Commit changes
git commit -m "Commit message"
git commit -m "Title" -m "Description"

# Commit all tracked files (skip staging)
git commit -am "Commit message"

# Amend last commit
git commit --amend -m "New message"
git commit --amend --no-edit       # Keep same message

# Empty commit (for CI trigger)
git commit --allow-empty -m "Empty commit"
```

### View Changes

```bash
# View changes (unstaged)
git diff

# View changes (staged)
git diff --staged
git diff --cached

# View changes for specific file
git diff filename.txt

# View changes between branches
git diff branch1..branch2

# View file at specific commit
git show commit-hash:path/to/file
```

---

## 🌿 Branch Management

### Create & Switch Branches

```bash
# List branches
git branch                         # Local branches
git branch -r                      # Remote branches
git branch -a                      # All branches

# Create new branch
git branch feature-name

# Switch to branch
git checkout feature-name
git switch feature-name            # Newer command

# Create and switch in one command
git checkout -b feature-name
git switch -c feature-name

# Create branch from specific commit
git branch feature-name commit-hash

# Rename branch
git branch -m old-name new-name
git branch -M old-name new-name    # Force rename

# Delete branch
git branch -d feature-name         # Safe delete
git branch -D feature-name         # Force delete

# Delete remote branch
git push origin --delete feature-name
```

### Merge & Rebase

```bash
# Merge branch into current
git merge feature-name

# Merge with no fast-forward
git merge --no-ff feature-name

# Abort merge
git merge --abort

# Rebase current branch onto main
git rebase main

# Interactive rebase (last 3 commits)
git rebase -i HEAD~3

# Continue rebase after resolving conflicts
git rebase --continue

# Abort rebase
git rebase --abort
```

---

## 🔄 Push & Pull

### Push Changes

```bash
# Push to remote
git push origin branch-name

# Push and set upstream
git push -u origin branch-name
git push --set-upstream origin branch-name

# Push all branches
git push --all origin

# Push tags
git push --tags

# Force push (dangerous!)
git push --force origin branch-name
git push --force-with-lease origin branch-name  # Safer

# Delete remote branch
git push origin --delete branch-name
```

### Pull Changes

```bash
# Pull from remote
git pull origin branch-name

# Pull with rebase
git pull --rebase origin branch-name

# Fetch without merging
git fetch origin

# Fetch all remotes
git fetch --all

# Fetch and prune deleted branches
git fetch --prune
git remote prune origin
```

---

## 📜 Commit History

### View History

```bash
# View commit log
git log

# Compact log
git log --oneline

# Graph view
git log --graph --oneline --all

# Last N commits
git log -3

# Commits by author
git log --author="John Doe"

# Commits in date range
git log --since="2024-01-01" --until="2024-12-31"

# Commits affecting specific file
git log -- filename.txt

# Show changes in commits
git log -p

# Pretty format
git log --pretty=format:"%h - %an, %ar : %s"
```

### Search History

```bash
# Search commit messages
git log --grep="fix bug"

# Search code changes
git log -S "function_name"

# Show who changed each line
git blame filename.txt

# Show specific lines
git blame -L 10,20 filename.txt
```

---

## ⏮️ Undo Changes

### Discard Changes

```bash
# Discard unstaged changes
git checkout -- filename.txt
git restore filename.txt           # Newer command

# Discard all unstaged changes
git checkout -- .
git restore .

# Discard staged changes
git reset HEAD filename.txt
git restore --staged filename.txt
```

### Reset Commits

```bash
# Soft reset (keep changes staged)
git reset --soft HEAD~1

# Mixed reset (keep changes unstaged) - DEFAULT
git reset HEAD~1
git reset --mixed HEAD~1

# Hard reset (discard all changes)
git reset --hard HEAD~1

# Reset to specific commit
git reset --hard commit-hash

# Reset to remote state
git reset --hard origin/main
```

### Revert Commits

```bash
# Create new commit that undoes changes
git revert commit-hash

# Revert without committing
git revert -n commit-hash

# Revert merge commit
git revert -m 1 commit-hash
```

---

## 🏷️ Tags

### Create & Manage Tags

```bash
# Create lightweight tag
git tag v1.0.0

# Create annotated tag
git tag -a v1.0.0 -m "Version 1.0.0"

# Tag specific commit
git tag v1.0.0 commit-hash

# List tags
git tag
git tag -l "v1.*"

# Show tag info
git show v1.0.0

# Delete local tag
git tag -d v1.0.0

# Delete remote tag
git push origin --delete v1.0.0

# Push tag to remote
git push origin v1.0.0

# Push all tags
git push --tags
```

---

## 🗑️ Cleanup & Maintenance

### Clean Working Directory

```bash
# Remove untracked files (dry run)
git clean -n

# Remove untracked files
git clean -f

# Remove untracked directories
git clean -fd

# Remove ignored files too
git clean -fdx
```

### Stash Changes

```bash
# Stash changes
git stash
git stash save "Work in progress"

# List stashes
git stash list

# Apply stash
git stash apply
git stash apply stash@{2}

# Apply and remove stash
git stash pop

# Drop stash
git stash drop stash@{0}

# Clear all stashes
git stash clear

# Stash including untracked files
git stash -u
```

### Optimize Repository

```bash
# Garbage collection
git gc

# Aggressive garbage collection
git gc --aggressive --prune=now

# Check repository integrity
git fsck

# Show repository size
git count-objects -vH
```

---

## 🔍 Advanced Commands

### Cherry-Pick

```bash
# Apply specific commit to current branch
git cherry-pick commit-hash

# Cherry-pick without committing
git cherry-pick -n commit-hash

# Cherry-pick range of commits
git cherry-pick commit1..commit5
```

### Submodules

```bash
# Add submodule
git submodule add https://github.com/user/repo.git path/to/submodule

# Initialize submodules
git submodule init

# Update submodules
git submodule update

# Clone repo with submodules
git clone --recursive https://github.com/user/repo.git

# Update all submodules
git submodule update --remote --merge
```

### Worktrees

```bash
# Create worktree
git worktree add ../feature-branch feature-branch

# List worktrees
git worktree list

# Remove worktree
git worktree remove ../feature-branch

# Prune worktrees
git worktree prune
```

---

## 🔐 GitHub CLI Commands

### Installation

```bash
# Install GitHub CLI
# macOS
brew install gh

# Windows
winget install --id GitHub.cli

# Linux
sudo apt install gh
```

### Authentication

```bash
# Login
gh auth login

# Check status
gh auth status

# Logout
gh auth logout
```

### Repository Operations

```bash
# Create repository
gh repo create repo-name --public
gh repo create repo-name --private

# Create from current directory
gh repo create --source=. --public --push

# Clone repository
gh repo clone username/repo

# View repository
gh repo view
gh repo view username/repo

# Fork repository
gh repo fork username/repo

# List repositories
gh repo list username

# Delete repository
gh repo delete username/repo
```

### Issues

```bash
# Create issue
gh issue create --title "Bug fix" --body "Description"

# List issues
gh issue list

# View issue
gh issue view 123

# Close issue
gh issue close 123

# Reopen issue
gh issue reopen 123
```

### Pull Requests

```bash
# Create PR
gh pr create --title "Feature" --body "Description"
gh pr create --fill  # Use commit info

# List PRs
gh pr list

# View PR
gh pr view 123

# Checkout PR locally
gh pr checkout 123

# Review PR
gh pr review 123 --approve
gh pr review 123 --comment -b "Looks good"
gh pr review 123 --request-changes

# Merge PR
gh pr merge 123
gh pr merge 123 --squash
gh pr merge 123 --rebase

# Close PR
gh pr close 123
```

### Workflows (Actions)

```bash
# List workflows
gh workflow list

# View workflow runs
gh run list

# View specific run
gh run view

# Rerun workflow
gh run rerun

# Watch workflow
gh run watch
```

---

## 🎯 Common Workflows

### Starting New Feature

```bash
git checkout main
git pull origin main
git checkout -b feature/new-feature
# Make changes
git add .
git commit -m "Add new feature"
git push -u origin feature/new-feature
gh pr create --fill
```

### Sync Fork with Upstream

```bash
git remote add upstream https://github.com/original/repo.git
git fetch upstream
git checkout main
git merge upstream/main
git push origin main
```

### Fix Merge Conflicts

```bash
git pull origin main
# Resolve conflicts in files
git add .
git commit -m "Resolve merge conflicts"
git push origin feature-branch
```

### Squash Last N Commits

```bash
git rebase -i HEAD~3
# Change 'pick' to 'squash' for commits to squash
# Save and edit commit message
git push --force-with-lease
```

### Update Last Commit Author

```bash
git commit --amend --author="Name <email@example.com>" --no-edit
git push --force-with-lease
```

---

## 🛡️ .gitignore Examples

### Common Patterns

```bash
# Node.js
node_modules/
npm-debug.log
.env
.env.local

# Python
__pycache__/
*.py[cod]
venv/
.python-version

# OS
.DS_Store
Thumbs.db

# IDEs
.vscode/
.idea/
*.swp

# Build
dist/
build/
*.log
```

---

## 💡 Pro Tips

### Aliases (Add to ~/.gitconfig or ~/.zshrc)

```bash
# Git aliases
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'
git config --global alias.visual 'log --graph --oneline --all'

# Shell aliases (add to ~/.zshrc or ~/.bashrc)
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'
alias gl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gm='git merge'
alias gb='git branch'
alias glog='git log --oneline --graph --all'
```

### Useful Git Configurations

```bash
# Colorful output
git config --global color.ui auto

# Better diff
git config --global diff.tool vimdiff

# Prune on fetch
git config --global fetch.prune true

# Default push behavior
git config --global push.default current

# Rebase on pull
git config --global pull.rebase true

# Auto-correct commands
git config --global help.autocorrect 1
```

---

## 🚨 Emergency Commands

### Lost Commits Recovery

```bash
# View reflog
git reflog

# Recover lost commit
git checkout commit-hash
git cherry-pick commit-hash
```

### Accidentally Committed to Wrong Branch

```bash
# Move commits to new branch
git branch feature-branch
git reset --hard HEAD~3
git checkout feature-branch
```

### Remove Sensitive Data

```bash
# Remove file from all history
git filter-branch --force --index-filter \
  'git rm --cached --ignore-unmatch path/to/file' \
  --prune-empty --tag-name-filter cat -- --all

# Using BFG (faster)
bfg --delete-files sensitive-file.txt
git reflog expire --expire=now --all
git gc --prune=now --aggressive
```

---

## 📚 Resources

- **Official Git Docs**: https://git-scm.com/doc
- **GitHub Docs**: https://docs.github.com
- **GitHub CLI**: https://cli.github.com/manual/
- **Git Cheatsheet**: https://education.github.com/git-cheat-sheet-education.pdf
- **Interactive Learning**: https://learngitbranching.js.org/

---

**Last Updated**: November 2024  
**Version**: 2.0
