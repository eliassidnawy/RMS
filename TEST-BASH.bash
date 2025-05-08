#!/bin/bash

# Exit on any error
set -e

# Ask for the new branch name
read -p "Enter new branch name: " branchname

# Check if you're inside a Git repo
if ! git rev-parse --is-inside-work-tree &> /dev/null; then
  echo "❌ Not inside a Git repository."
  exit 1
fi

# Check if branch already exists
if git show-ref --quiet refs/heads/"$branchname"; then
  echo "❌ Branch '$branchname' already exists."
  exit 1
fi

# Create and switch to new branch
git checkout -b "$branchname"

# Ask for the path to the new version
read -p "Enter path to the new project version: " new_path

# Verify the directory exists
if [ ! -d "$new_path" ]; then
  echo "❌ Directory '$new_path' does not exist."
  exit 1
fi

# Copy new files into repo (overwrite all)
cp -a "$new_path"/. .

# Show status
git status

# Confirm commit
read -p "Continue with commit? (y/n): " confirm
if [[ "$confirm" != "y" && "$confirm" != "Y" ]]; then
  echo "❌ Aborted."
  exit 1
fi

# Commit the new version
git add .
read -p "Enter commit message: " msg
git commit -m "$msg"

# Push to GitHub (SSH)
git push -u origin "$branchname"

echo "✅ Branch '$branchname' created and pushed to remote with new version."
