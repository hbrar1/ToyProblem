

#Changes the email and name in the repos commit history
# Commit Info: https://help.github.com/articles/viewing-contributions-on-your-profile/
# Source: https://help.github.com/articles/changing-author-info/
# Article: https://code.bradymower.com/why-arent-my-commits-showing-up-on-my-contributions-graph-52141efa7542

#!/bin/sh

git filter-branch --env-filter '
OLD_EMAIL="your-old-email@example.com"
CORRECT_NAME="Your Correct Name"
CORRECT_EMAIL="your-correct-email@example.com"
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_NAME="$CORRECT_NAME"
    export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_NAME="$CORRECT_NAME"
    export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
fi
' --tag-name-filter cat -- --branches --tags




# Resources for changin multiple commits:
# Stack Overflow: https://stackoverflow.com/questions/4981126/how-to-amend-several-commits-in-git-to-change-author
# https://git-scm.com/book/en/v2/Git-Tools-Rewriting-History#Changing-Multiple-Commit-Messages
# https://www.git-tower.com/learn/git/faq/change-author-name-email

# https://www.git-tower.com/learn/git/faq/change-author-name-email
