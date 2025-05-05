#!/bin/bash

# Exit immediately on error
set -e

# Ask for the new branch name
read -p "Enter new branch name: " branchname

# Check if branch already exists
if git show-ref --verify --quiet "refs/heads/$branchname"; then
    echo "Branch '$branchname' already exists locally."
    exit 1
fi

# Create and switch to the new branch
git checkout -b "$branchname"

# Ask for new project version path
read -p "Enter path to the new project version: " new_version_path

# Check if the folder exists
if [ ! -d "$new_version_path" ]; then
    echo "❌ Directory '$new_version_path' does not exist."
    exit 1
fi

# Copy all files into repo (overwrite)
cp -a "$new_version_path"/. ./

# Show changes
echo "📄 Git status before commit:"
git status

# Ask to proceed
read -p "Continue with commit? (y/n): " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
    echo "❌ Aborted."
    exit 0
fi

# Add and commit changes
git add .
read -p "Enter commit message: " commitmsg
git commit -m "$commitmsg"

# Push to origin
git push -u origin "$branchname"

echo "✅ New version pushed to remote branch '$branchname'."
