#!/bin/bash

# Check if changes exist
if [[ $(git status --porcelain) ]]; then
    # Add all changes
    git add .
    
    # Commit changes with a default message or customize it
    git commit -m "Auto commit: $(date '+%Y-%m-%d %H:%M:%S')"
    
    # Push changes to the remote repository
    git push origin master
    
    echo "Changes added, committed, and pushed."
else
    echo "No changes to commit."
fi

