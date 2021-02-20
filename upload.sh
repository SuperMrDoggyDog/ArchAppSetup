#!/bin/bash

git add "./*"

echo -e "Please enter commit message: "

read message

git commit -m "$message"

git push all

echo "Success"
