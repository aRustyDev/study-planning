#!/bin/bash

get-unique-labels() {
    yq '[ .issues[].labels[] | select(.value | . == null or . == "") ] | unique' ./study-planning/.scripts/data/issues.yaml
}

get-issue-count() {
    yq '[ .issues[].title | select(.value | . == null or . == "") ] | unique | length' ./study-planning/.scripts/data/issues.yaml
}