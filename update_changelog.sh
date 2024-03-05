#!/bin/bash

# ## [1.0.1] - 2024-01-01
# ### Added
# - New feature 1
# - New feature 2

# ### Fixed
# - Bug 1
# - Bug 2

# example: ./scripts/update-changelog.sh 1.0.1 "### Added\n- New feature 1\n- New feature 2\n\n### Fixed\n- Bug 1\n- Bug 2"

# Get the version and changes from the command line arguments
version=$1
changes=$2

# Define the date
date=$(date +"%Y-%m-%d")

# Define the new version details
new_version="
## [$version] - $date
$changes
"

# Get the existing changelog content
existing_content=$(cat CHANGELOG.md)

# Combine the new version details with the existing content
echo -e "$new_version\n$existing_content" > CHANGELOG.md