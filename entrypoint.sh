#!/bin/sh

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

if [ -z "${FIREBASE_PROJECT}" ]; then
    echo "FIREBASE_PROJECT is missing"
    exit 1
fi

cd /github/workspace
echo $(ls)
firebase deploy \
    -m "GITHUB_SHA: ${GITHUB_SHA}" \
    --project "${FIREBASE_PROJECT}" \
    --only hosting
