# GPI does dotfiles

Here you can find the files that GPI uses for initial terminal setup.

## Bash Instructions

### If you already have a bashrc that you use

You need to make sure that the contents of [bashrc_gpi](bashrc_gpi) are included
in your shell configuration on Andrew Unix. The easiest way to do that is with

```console
$ curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
$ echo "source ~/.bashrc_gpi" >> ~/.bashrc
```

### If you don't have a bashrc or you don't know what I'm talking about

Don't worry, if you're enrolled in this class you'll learn about what a bashrc
is soon enough! We'll be covering them later in the semester. For now, just run
these commands:

```console
$ curl https://github.com/cmugpi/dotfiles/blob/master/bashrc > ~/.bashrc
$ curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
```


## Vim Instructions

Coming soon!
