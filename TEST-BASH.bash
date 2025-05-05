#!/bin/bash

# Ask for the new branch name
read -p "Enter new branch name: " branchname

# Create and switch to new branch
git checkout -b "$branchname" || { echo "Failed to create branch."; exit 1; }

# Ask for path to the new version of the project
read -p "Enter path to the new project version (relative or absolute): " new_version_path

# Check if the path exists
if [ ! -d "$new_version_path" ]; then
    echo "Directory does not exist: $new_version_path"
    exit 1
fi

# Copy new version into current repo folder (overwrite existing files)
cp -r "$new_version_path"/. . || { echo "Copy failed."; exit 1; }

# Add all changes
git add .

# Ask for commit message
read -p "Enter commit message: " commitmsg
git commit -m "$commitmsg" || { echo "Commit failed."; exit 1; }

# Push new branch to remote and set upstream
git push -u origin "$branchname" || { echo "Push failed. Make sure you have access."; exit 1; }

echo "✅ New version committed and pushed to remote branch '$branchname'."
