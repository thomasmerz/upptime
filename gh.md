Use [gh](https://github.com/cli/cli/) (offical GitHub CLI) to open/edit an issue.
```
gh issue list -s closed [-a assignee] [-A author] [-l label] [-R repo-url]
gh issue edit <number> --add-label|--remove-label name [-R repo-url] [-t new_title]
gh issue comment <number> [-b "body"] [-R repo-url]
gh issue close|reopen|delete|view <number> [-R repo-url]
gh issue status [-R repo-url]
```
