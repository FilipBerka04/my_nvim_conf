apt update
apt install curl fuse gcc clangd tar
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod a+x nvim-linux-x86_64.appimage 
mv nvim-linux-x86_64.appimage /usr/local/bin/nvim
curl -LO https://github.com/tree-sitter/tree-sitter/releases/latest/download/tree-sitter-cli-linux-x64.zip
unzip tree-sitter-cli-linux-x64.zip
rm tree-sitter-cli-linux-x64.zip
mv tree-sitter /usr/local/bin/
