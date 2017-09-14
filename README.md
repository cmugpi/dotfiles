# GPI does dotfiles

Here you can find the files that GPI uses for initial terminal setup.

## Instructions

If you already have a bashrc or a vimrc, wait before running these commands.
Read "Advanced Usage" below and use your best judgement.

Otherwise, run these commands while SSH'ed into an Andrew Unix machine:

```console
curl https://github.com/cmugpi/dotfiles/blob/master/bashrc > ~/.bashrc
curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi

curl https://github.com/cmugpi/dotfiles/blob/master/vimrc > ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
```

Alternatively, you can run these all with a single command

```console
bash <(curl https://raw.githubusercontent.com/cmugpi/dotfiles/master/install.sh 2> /dev/null) -a
```

Don't worry, we'll teach you all about what just happened before the semester
ends!


## Advanced Usage

The bare minimum for taking GPI is that you need to make sure that the contents
of [bashrc_gpi](bashrc_gpi) are included in your shell configuration on Andrew
Unix. The easiest way to do that is with:

```console
curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
echo "source ~/.bashrc_gpi" >> ~/.bashrc
```

Alternatively, you can run a single command

```console
bash <(curl https://raw.githubusercontent.com/cmugpi/dotfiles/master/install.sh 2> /dev/null) -m
```

This repo contains sample configuration files. Feel free to browse the files to
discover some new tricks! They try to be sort of minimal; we'll get into some
more advanced configuration tricks near the end of the semester.
