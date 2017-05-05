# Git hook usage

Tired of dependencies being out of date when switchin between branches? Git hooks to the rescue! This will run `yarn install` after merge and checkout, if `yarn.lock` has been changed.

Code kindly provided by Sindre Sørhus and http://stackoverflow.com/questions/16840184/how-can-i-automatically-be-warned-if-a-specific-file-changes.

Usage:

```
$ cd your_git_repo
$ ln -s ~/.dotfiles/post-checkout .git/hooks/post-checkout
$ ln -s ~/.dotfiles/post-merge .git/hooks/post-merge
$ chmod + x .git/hooks/post-checkout
$ chmod + x .git/hooks/post-merge
```

Note: if you have Husky installed there might already be checkout/merge files in the hooks directory, even if you haven't set up specific hooks in package.json. These can be safely removed, unless you're using these hooks through Husky.