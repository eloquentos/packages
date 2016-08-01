#!/bin/bash

git tag -d stable
git push origin :refs/tags/stable
git tag stable
git push --tags
