#!/bin/bash
# Script to generate release names in the format:
# [project_name]_[branch_name]_[version_prefix].[YY].[DDD].[commit_count]

PROJECT_NAME="${1:-$(basename $(git rev-parse --show-toplevel))}"
BRANCH_NAME="${2:-$(git rev-parse --abbrev-ref HEAD)}"
VERSION_PREFIX="${3:-v1.0}"

YEAR=$(date +"%y")
DAY_OF_YEAR=$(date +"%j")
COMMIT_COUNT=$(git rev-list --count HEAD)

RELEASE_NAME="${PROJECT_NAME}_${BRANCH_NAME}_${VERSION_PREFIX}.${YEAR}.${DAY_OF_YEAR}.${COMMIT_COUNT}"

echo "$RELEASE_NAME"
