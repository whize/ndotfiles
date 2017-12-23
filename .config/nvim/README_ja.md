# NeoVim Settings

## Installation Memo

### vim-go

インストール後に`:GoInstallBinaries`を実行してgoパッケージのインストールを行う。

### vim-airline
#### Install fonts

1. Install powerline fonts

```shell
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

2. Change font setting for iterm2
    1. iTerm2 menu -> Profiles -> Text
    2. Change Font and Non-ASCII Font to SourceCodePro for Powerline


