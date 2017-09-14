while getopts ":am" opt; do
  case $opt in
    m)
      echo "Performing minimal installation..." >&2
      curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
      echo "source ~/.bashrc_gpi" >> ~/.bashrc
      echo "Installation complete."
      exit 0
      ;;
    a)
      echo "Installing all files..." >&2
      curl https://github.com/cmugpi/dotfiles/blob/master/bashrc > ~/.bashrc
      curl https://github.com/cmugpi/dotfiles/blob/master/bashrc_gpi > ~/.bashrc_gpi
      curl https://github.com/cmugpi/dotfiles/blob/master/vimrc > ~/.vimrc
      git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
      vim +PluginInstall +qall
      echo "Installation complete."
      exit 0
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      exit 1
      ;;
  esac
done
echo "Usage: install.sh [option]"
echo ""
echo "  -a     install all files normally"
echo "  -m     do a minimal installation"
exit 1
