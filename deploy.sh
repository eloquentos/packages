#!/bin/bash

git tag -d current
git tag current
git push --tags
