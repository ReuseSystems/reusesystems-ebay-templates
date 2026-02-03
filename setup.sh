#!/bin/bash

# RE-USE.SYSTEMS GitHub Template Setup Script
# This script replaces YOUR-GITHUB-USERNAME with your actual username

echo "=========================================="
echo "RE-USE.SYSTEMS eBay Template Setup"
echo "=========================================="
echo ""

# Prompt for GitHub username
read -p "Enter your GitHub username: " github_username

if [ -z "$github_username" ]; then
    echo "Error: GitHub username cannot be empty"
    exit 1
fi

echo ""
echo "Updating template files with username: $github_username"
echo ""

# Files to update
files=(
    "templates/aircraft-parts.html"
    "templates/standard.html"
    "README.md"
)

# Backup original files
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        cp "$file" "$file.backup"
        echo "✓ Backed up: $file"
    fi
done

echo ""

# Replace YOUR-GITHUB-USERNAME with actual username
for file in "${files[@]}"; do
    if [ -f "$file" ]; then
        sed -i.tmp "s/YOUR-GITHUB-USERNAME/$github_username/g" "$file"
        rm "$file.tmp"
        echo "✓ Updated: $file"
    else
        echo "✗ File not found: $file"
    fi
done

echo ""
echo "=========================================="
echo "Setup Complete!"
echo "=========================================="
echo ""
echo "Next steps:"
echo "1. Review the updated files"
echo "2. Add your logo to images/logo.jpg"
echo "3. Commit and push to GitHub:"
echo "   git add ."
echo "   git commit -m 'Initial setup with templates'"
echo "   git push origin main"
echo ""
echo "4. Enable GitHub Pages in repository settings"
echo "5. Your templates will be live at:"
echo "   https://$github_username.github.io/reusesystems-ebay-templates/"
echo ""
echo "Backup files created with .backup extension"
echo "=========================================="
