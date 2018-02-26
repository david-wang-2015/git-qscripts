# git-qscripts
## Purpose of git-qscripts
This repository is to host some useful scripts for Git.

`rm-msg-change-id.sh`: Remove the "Change-Id" line from all commit messages
If you use Gerrit for your internal code review system, it requires the "Change-Id" line in the commit message
which is usually meaningless when pushing to Github.
`Parameter`: If no parameter, then by default, it will remove this line from `ALL` commits.
If you just want to patch the latest few commits, please pass the number of commits you want to patch as the 1st command line parameter.
How to use:
1. Create a temporary branch for the code you want to remove "Change-Id" lins in commit messages.
2. Run this script
That's done.
