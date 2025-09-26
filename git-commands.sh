#!/bin/bash
# Git Commands Quick Reference for GitHub Profile Setup

# ========================================
# INITIAL SETUP (Run these first)
# ========================================

# Navigate to your repository
cd /Users/sangram/Personal_Projects/SangramSA

# Initialize git (if not already done)
git init

# Configure git user
git config user.name "Sangram SA"
git config user.email "your-email@example.com"  # CHANGE THIS!

# Add all files and commit
git add .
git commit -m "Initial commit: Add GitHub profile README"

# Set main as default branch
git branch -M main

# ========================================
# CONNECT TO GITHUB
# ========================================

# Add GitHub remote (HTTPS)
git remote add origin https://github.com/SangramSA/SangramSA.git

# OR use SSH (if you have SSH keys set up)
# git remote add origin git@github.com:SangramSA/SangramSA.git

# Push to GitHub
git push -u origin main

# ========================================
# CREATE OUTPUT BRANCH (For Snake Animation)
# ========================================

# Create orphan branch for outputs
git checkout --orphan output

# Remove all files from this branch
git rm -rf .

# Create a simple README for this branch
echo "# Output branch for GitHub Actions" > README.md

# Commit and push output branch
git add README.md
git commit -m "Initial output branch"
git push origin output

# Switch back to main branch
git checkout main

# ========================================
# MAKING UPDATES
# ========================================

# After editing files, stage changes
git add README.md  # or git add . for all files

# Commit with descriptive message
git commit -m "Update profile information"

# Push changes
git push

# ========================================
# USEFUL COMMANDS
# ========================================

# Check status
git status

# View commit history
git log --oneline

# See what files are tracked
git ls-files

# View remote repository info
git remote -v

# Pull latest changes from GitHub
git pull

# Create a new branch
git checkout -b feature-branch-name

# Switch branches
git checkout branch-name

# ========================================
# TROUBLESHOOTING
# ========================================

# If you made a mistake in the last commit
git commit --amend -m "New commit message"

# Discard local changes to a file
git checkout -- filename

# Remove a file from staging
git reset HEAD filename

# See differences before committing
git diff
git diff --staged  # for staged changes

# ========================================
# TIPS
# ========================================
# 1. Always pull before pushing if working from multiple computers
# 2. Write clear commit messages
# 3. Commit often with small, logical changes
# 4. Use .gitignore to exclude unwanted files
# 5. Review changes before committing with 'git diff'
