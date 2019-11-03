#!/bin/bash
directory=_book
temp_directory=_temp_book
branch=gh-pages
build_command() {
    gitbook build
  }

echo -e "\033[0;32mDeleting old content...\033[0m"
rm -rf $directory

echo -e "\033[0;32mChecking out $branch....\033[0m"
git worktree add -f $temp_directory $branch

echo -e "\033[0;32mGenerating site...\033[0m"
build_command

echo -e "\033[0;32mCopy_site...\033[0m"
cp -r $directory $temp_directory

echo -e "\033[0;32mDeploying $branch branch...\033[0m"
cd $temp_directory &&
    git add --all &&
      git commit -m "Deploy updates" &&
        git push origin $branch

echo -e "\033[0;32mCleaning up...\033[0m"
git worktree remove $temp_directory
rm $directory
