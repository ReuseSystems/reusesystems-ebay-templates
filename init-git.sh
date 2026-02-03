#!/bin/bash

# RE-USE.SYSTEMS - Git Repository Initialization Script
# This script initializes the Git repository and prepares for first push

echo "=========================================="
echo "Git Repository Initialization"
echo "RE-USE.SYSTEMS eBay Templates"
echo "=========================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Error: Git is not installed"
    echo "Install Git: https://git-scm.com/downloads"
    exit 1
fi

echo "✓ Git is installed"
echo ""

# Check if already a git repository
if [ -d .git ]; then
    echo "⚠️  This directory is already a Git repository"
    read -p "Do you want to reinitialize? (y/N): " reinit
    if [ "$reinit" != "y" ] && [ "$reinit" != "Y" ]; then
        echo "Exiting..."
        exit 0
    fi
    rm -rf .git
fi

# Initialize repository
echo "Initializing Git repository..."
git init
echo "✓ Git repository initialized"
echo ""

# Create main branch
git branch -M main
echo "✓ Main branch created"
echo ""

# Prompt for GitHub username
read -p "Enter your GitHub username: " github_username

if [ -z "$github_username" ]; then
    echo "❌ Error: GitHub username cannot be empty"
    exit 1
fi

# Set remote origin
remote_url="https://github.com/$github_username/reusesystems-ebay-templates.git"
git remote add origin "$remote_url"
echo "✓ Remote origin set to: $remote_url"
echo ""

# Prompt for user details (for commits)
read -p "Enter your name for commits [Pierre Bailey]: " git_name
git_name=${git_name:-Pierre Bailey}

read -p "Enter your email for commits: " git_email

if [ ! -z "$git_email" ]; then
    git config user.name "$git_name"
    git config user.email "$git_email"
    echo "✓ Git identity configured"
else
    echo "⚠️  No email provided. Using global Git config"
fi

echo ""

# Stage all files
echo "Staging files for commit..."
git add .
echo "✓ Files staged"
echo ""

# Show status
echo "Git status:"
git status --short
echo ""

# Create initial commit
echo "Creating initial commit..."
git commit -m "Initial commit: eBay template setup for RE-USE.SYSTEMS

- Added aircraft parts template with export controls
- Added standard electronics template
- Included responsive CSS for mobile/tablet
- Setup GitHub Pages hosting structure
- Added comprehensive documentation"

echo "✓ Initial commit created"
echo ""

# Final instructions
echo "=========================================="
echo "Repository Ready!"
echo "=========================================="
echo ""
echo "Next steps:"
echo ""
echo "1. Create the repository on GitHub:"
echo "   https://github.com/new"
echo "   Name: reusesystems-ebay-templates"
echo "   Visibility: Public (required for GitHub Pages)"
echo ""
echo "2. Push your code:"
echo "   git push -u origin main"
echo ""
echo "3. Enable GitHub Pages:"
echo "   - Go to repository Settings → Pages"
echo "   - Source: Deploy from branch 'main'"
echo "   - Save"
echo ""
echo "4. Update template URLs:"
echo "   ./setup.sh"
echo ""
echo "5. Add your logo:"
echo "   cp /path/to/logo.jpg images/logo.jpg"
echo "   git add images/logo.jpg"
echo "   git commit -m 'Add company logo'"
echo "   git push"
echo ""
echo "Repository remote: $remote_url"
echo "=========================================="
