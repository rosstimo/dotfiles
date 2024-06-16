# dotfiles

## bare git repo to keep track of my linux dotfiles

This is forever a work in progress.

To deploy run the following script:

```
#!/bin/sh

conf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# clone the repository
git clone --bare https://github.com/rosstimo/dotfiles.git "$HOME"/.dotfiles

# if any files will be overwritten append the file names with '~'
$conf checkout 2>&1 | \
grep -E "\s+\." | \
awk \{'print $1'\} | \
xargs -pr -I{} mv {} {}~

# verify checkout
$conf checkout

# don't display untracked files
$conf config --local status.showUntrackedFiles no
```

conf is aliased as:

```alias conf="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"```

Use conf in place of git when interacting with this repo.

```
conf add myfile
conf commit -m "add myfile"
conf push
```

***

See the following for more information:

https://news.ycombinator.com/item?id=11071754

https://www.atlassian.com/git/tutorials/dotfiles

https://youtu.be/tBoLDpTWVOMv


## Submodule Notes

### Add Hyprdots as a submodule
```
conf submodule add https://github.com/prasanthrangan/hyprdots.git .config/hyprdots
conf submodule init
conf submodule update
conf add .gitmodules .config/hyprdots
conf commit -m "Add Hyprdots as a submodule"
conf push
```

### Create aliases for submodule management
```
conf config --global alias.supdate 'submodule update --remote --merge'
conf config --global alias.spush 'push --recurse-submodules=on-demand'
conf config --global alias.sdiff '!'"git diff && git submodule foreach 'git diff'"
``` 

### Use the aliases
```
conf supdate
conf spush
conf sdiff
```
