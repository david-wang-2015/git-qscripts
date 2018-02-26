#!/bin/bash
# Remove the Change-Id from the commit message of current repository
if [ $# -gt 0 ]; then
	echo "Patching latest $1 commit(s)"
	git filter-branch -f --prune-empty --msg-filter 'sed "/^Change-Id: /"d' HEAD~$1..HEAD
else
	echo Patching ALL commits
	git filter-branch -f --prune-empty --msg-filter 'sed "/^Change-Id: /"d'
fi
