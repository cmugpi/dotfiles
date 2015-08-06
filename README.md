# GPI does dotfiles

Here you can find the files that GPI uses for initial terminal setup.

## Instructions

If you already have a bashrc, see "Advanced Usage" below and use your best
judgemant. Otherwise, run these commands while SSH'ed into an Andrew Unix
machine:

```console
$ curl https://github.com/cmugpi/dotfiles/blob/master/bashrc > ~/.bashrc
$ curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
```

TODO: Vim instructions

Don't worry, we'll teach you all about what just happened before the semester
ends!


## Advanced Usage

The bare minimum for taking GPI is that you need to make sure that the contents
of [bashrc_gpi](bashrc_gpi) are included in your shell configuration on Andrew
Unix. The easiest way to do that is with:

```console
$ curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
$ echo "source ~/.bashrc_gpi" >> ~/.bashrc
```

This repo contains sample configuration files. Feel free to browse the files to
discover some new tricks! They try to be sort of minimal; we'll get into some
more advanced configuration tricks near the end of the semester.
