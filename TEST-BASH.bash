#!/bin/bash

# Step 1: Ask for the new branch name
read -p "Enter new branch name: " branchname

# Step 2: Create and switch to the new branch
git checkout -b "$branchname" || { echo "Failed to create branch"; exit 1; }

# Step 3: Ask for the path to the new project version
read -p "Enter path to the new project version (relative or absolute): " new_version_path

# Step 4: Copy the new version into the repo (overwrite existing)
cp -r "$new_version_path"/. . || { echo "Failed to copy new version files"; exit 1; }

# Step 5: Add and commit changes
git add .
read -p "Enter commit message for the new version: " commitmsg
git commit -m "$commitmsg"

# Step 6: Ask if user wants to push
read -p "Do you want to push this branch to origin? (y/n): " pushRemote
if [[ "$pushRemote" == "y" || "$pushRemote" == "Y" ]]; then
    git push -u origin "$branchname"
fi

echo "✅ New version committed to branch '$branchname'"
