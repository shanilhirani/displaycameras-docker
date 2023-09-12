#!/usr/bin/env bash
set -ev

echo "Initiate Textlint"
npx textlint -c .github/linters/.textlintrc --fix .
echo "Textlint finished"
