#!/bin/bash

git add "./*"

echo -e "Please enter commit message: "

read message

git commit -m "$message"

git push git@github.com:SuperMrDoggyDog/ArchAppSetup.git

echo "Success"
