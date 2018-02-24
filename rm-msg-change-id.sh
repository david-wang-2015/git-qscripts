#!/bin/bash
# Remove the Change-Id from the commit message of current repository
git filter-branch -f --prune-empty --msg-filter 'sed "/^Change-Id: /"d'
