#!/bin/bash

git tag -d testing
git push origin :refs/tags/testing
git tag testing
git push --tags
