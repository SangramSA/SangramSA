# 🚀 GitHub Profile Setup Instructions

## ✅ Files Created

Your GitHub profile repository has been created with the following structure:

```
SangramSA/
├── README.md                          # Your main profile README
├── LICENSE                            # MIT License
├── .gitignore                         # Git ignore file
├── SETUP_INSTRUCTIONS.md             # This file
└── .github/
    └── workflows/
        ├── snake.yml                  # GitHub Action for contribution snake
        └── blog-post-workflow.yml     # GitHub Action for blog posts
```

## 📝 Important: Customize Your Information

Before pushing to GitHub, update these fields in `README.md`:

1. **Line 13**: Replace `mailto:your.email@example.com` with your actual email
2. **Line 11**: Update LinkedIn URL if needed: `https://linkedin.com/in/sangramsa`
3. **Lines 246-247** (Blog workflow): Update blog feed URLs:
   - Replace `https://dev.to/feed/yourusername` with your Dev.to username
   - Replace `https://medium.com/feed/@yourusername` with your Medium username
   - Or remove if you don't have blogs

## 🔧 Git Setup Commands

Open Terminal and navigate to your project directory, then run these commands:

```bash
# Navigate to the project directory
cd /Users/sangram/Personal_Projects/SangramSA

# Initialize git repository
git init

# Configure git (if not already configured globally)
git config user.name "Sangram SA"
git config user.email "your-email@example.com"

# Add all files
git add .

# Make initial commit
git commit -m "Initial commit: Add GitHub profile README"

# Create main branch (if not already on main)
git branch -M main
```

## 🌐 Push to GitHub

### Step 1: Create Repository on GitHub

1. Go to [GitHub.com](https://github.com)
2. Click the **"+"** button → **"New repository"**
3. **IMPORTANT**: Name it exactly: `SangramSA` (your username)
4. Set to **Public**
5. **DO NOT** initialize with README, .gitignore, or license (we already have them)
6. Click **"Create repository"**

### Step 2: Push Your Local Repository

After creating the empty repository on GitHub, run:

```bash
# Add GitHub remote (replace with your repository URL)
git remote add origin https://github.com/SangramSA/SangramSA.git

# Push to GitHub
git push -u origin main
```

If you use SSH instead of HTTPS:
```bash
git remote add origin git@github.com:SangramSA/SangramSA.git
git push -u origin main
```

## 🎨 After Pushing to GitHub

### Enable GitHub Actions

1. Go to your repository on GitHub
2. Click on **"Actions"** tab
3. If prompted, enable GitHub Actions
4. The workflows will run automatically:
   - Snake animation: Every 6 hours
   - Blog posts: Every hour (if configured)

### Create Output Branch for Snake Animation

The snake animation needs an output branch. After your first push:

```bash
# Create and push output branch
git checkout --orphan output
git rm -rf .
echo "# Output branch for GitHub Actions" > README.md
git add README.md
git commit -m "Initial output branch"
git push origin output

# Switch back to main branch
git checkout main
```

## 🔐 Optional: Set Up Secrets

If you want to use advanced features, add these secrets:

1. Go to your repository → **Settings** → **Secrets and variables** → **Actions**
2. Click **"New repository secret"**
3. Add any needed secrets (e.g., for WakaTime integration)

## ✨ Quick Customization Tips

### Change Color Theme
In `README.md`, find and replace:
- `color=2E86AB` - Main color for typing animation
- `theme=tokyonight` - Theme for stats cards
- Color options: `3498DB` (blue), `27AE60` (green), `E74C3C` (red)

### Update Featured Projects
Find the "Featured Projects" section and update repository names:
```markdown
[![Your Project](https://github-readme-stats.vercel.app/api/pin/?username=SangramSA&repo=your-repo-name&theme=tokyonight)](https://github.com/SangramSA/your-repo-name)
```

## 🚨 Troubleshooting

### If Profile README Doesn't Show
- Repository name must be exactly `SangramSA`
- Repository must be Public
- README.md must be in root directory

### If Actions Fail
- Check Actions tab for error messages
- Ensure branch names are correct
- Snake animation needs `output` branch

### If Stats Don't Load
- Wait a few minutes (API rate limits)
- Refresh the page
- Check if your repositories are public

## 📊 Verify Everything Works

After pushing, check:
1. ✅ Your profile at: https://github.com/SangramSA
2. ✅ README displays on your profile
3. ✅ Stats cards load properly
4. ✅ Actions run successfully (check Actions tab)

## 🎯 Next Steps

1. **Pin your best repositories** (up to 6) on your profile
2. **Add a profile picture** if you haven't already
3. **Update your bio** (160 characters max)
4. **Star** some repositories you like
5. **Follow** other developers in your field

## 💡 Making Changes

To update your profile later:

```bash
# Make your changes to README.md
cd /Users/sangram/Personal_Projects/SangramSA

# Add and commit changes
git add README.md
git commit -m "Update profile description"

# Push to GitHub
git push origin main
```

## 🆘 Need Help?

- GitHub Profile README Docs: https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme
- GitHub Actions Docs: https://docs.github.com/en/actions
- Shields.io for badges: https://shields.io

---

**Remember to update your email and social links before pushing!** 🎉
