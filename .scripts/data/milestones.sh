#!/bin/bash

gh api \
  --method POST \
  -H "Accept: application/vnd.github.v3+json" \
  /repos/adriens/demo-milestone-from-cli/milestones \
  -f title='Demo'
 -f state='open'
 -f description='Dumb milestone for demo purpose'
 -f due_on='2012-10-09T23:39:01Z'