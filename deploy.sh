#!/bin/bash
directory=_book
branch=gh-pages
build_command() {
    gitbook build
  }

echo -e "\033[0;32mDeleting old content...\033[0m"
rm -rf $directory

echo -e "\033[0;32mChecking out $branch....\033[0m"
git worktree add -f $directory $branch

echo -e "\033[0;32mGenerating site...\033[0m"
build_command

echo -e "\033[0;32mDeploying $branch branch...\033[0m"
cd $directory &&
    git add --all &&
      git commit -m "Deploy updates" &&
        git push origin $branch

echo -e "\033[0;32mCleaning up...\033[0m"
git worktree prune
