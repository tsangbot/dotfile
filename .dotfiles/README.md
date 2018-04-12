# Dotfiles

This repo contains a few usefull tools and programs you might want to use in a basic developer setup.

Please read this [blog post on atlassian](https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/) on how to migrate/prepare your machine.

## TL;DR

In a nutshell follow these steps:

* Ignore the git repo to avoid possible recursion...
```
echo ".cfg" >> .gitignore
```

* Clone the repo.
```
git clone --bare git@github.comcast.com:cs/dotfiles.git $HOME/.cfg
```

* The following should be added to `.bashrc` or similar depending on you preferences when using shell...
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```

* Time to do the actual checkout.
```
config checkout
```

If that all worked fine `cd .dotfiles` and `./install`

## One last thing...

You can add any kind of config file to the repo, even `.bashrc` files or similar. They need not be in the `.dotfiles` directory because your home directory is the git working directory.
Obviously everyone will have different preferences and tools so it is recommended you not clone this project but rather fork it and then clone and work on the fork. Contributing back to this repo is analog to contribiting to other git repositories.
