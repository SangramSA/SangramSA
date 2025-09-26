#!/bin/bash

# GitHub Profile Repository Setup Script
# This script initializes git and prepares your repository for pushing to GitHub

echo "🚀 Setting up your GitHub Profile Repository..."
echo "============================================"

# Navigate to the repository directory
cd /Users/sangram/Personal_Projects/SangramSA

# Initialize git repository
echo "📦 Initializing git repository..."
git init

# Configure git (you may want to update the email)
echo "⚙️  Configuring git..."
git config user.name "Sangram SA"
git config user.email "your-email@example.com"  # UPDATE THIS!

# Add all files
echo "📝 Adding files to git..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Add GitHub profile README with animations and workflows"

# Switch to main branch
echo "🌿 Switching to main branch..."
git branch -M main

# Display status
echo ""
echo "✅ SUCCESS! Your repository is ready!"
echo "============================================"
git status

echo ""
echo "📋 Next Steps:"
echo "1. Update your email in this script and README.md"
echo "2. Create a new repository on GitHub named 'SangramSA'"
echo "3. Run the following commands to push:"
echo ""
echo "   git remote add origin https://github.com/SangramSA/SangramSA.git"
echo "   git push -u origin main"
echo ""
echo "4. After pushing, create the output branch for snake animation:"
echo "   git checkout --orphan output"
echo "   git rm -rf ."
echo "   echo '# Output branch for GitHub Actions' > README.md"
echo "   git add README.md"
echo "   git commit -m 'Initial output branch'"
echo "   git push origin output"
echo "   git checkout main"
echo ""
echo "📁 Repository location: /Users/sangram/Personal_Projects/SangramSA"
