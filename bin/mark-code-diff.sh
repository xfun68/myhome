#!/bin/sh

readonly TARGET=${1:-head}
readonly TAG_NAME=$( date +"%Y-%m-%d_%H-%M-%S" )

echo
echo "# Tag is: $TAG_NAME"
echo

git tag $TAG_NAME $TARGET
git push origin $TAG_NAME

