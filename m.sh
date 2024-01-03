#!/bin/bash

#!/bin/bash

# Check if changes exist
if [[ $(git status --porcelain) ]]; then
    # Add all changes
    git add .
    
    # Prompt user for commit message
    echo -n "Enter commit message: "
    read commit_message
    
     # Commit changes with the provided message or a default one
    git commit -m "${commit_message:-No message provided} - $(date '+%Y-%m-%d %H:%M:%S')"

    # Push changes to the remote repository
    git push origin master
    
    echo "Changes added, committed, and pushed."
else
    echo "No changes to commit."
fi

