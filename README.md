# DJ HIRROT's dotfiles
This repo is puts vim-config files.
I will modify it accordingly.

# Usage
First, you should install `vim-plug`.
```shell
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Then, create symbolic link of `.vimrc` and `.gvimrc`.
```shell
$ ln -s ~/dotfiles/.vimrc ~/.vimrc
$ ln -s ~/dotfiles/.gvimrc ~/.gvimrc
```
If you get following error, restart your console app.
```
Exception MemoryError: MemoryError() in <module 'threading' from '/System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/threading.pyc'> ignored
Segmentation fault: 11
```
**hint**
```
$ cd ~/.vim/plugged/YouCompleteMe
$ python install.py
```
# Plugs
```vim
Plug･'joshdick/onedark.vim'
```
カラースキーム[onedark]を使用するためのPlug.

```vim
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
```
ステータスラインをよしなに表示するPlug.
