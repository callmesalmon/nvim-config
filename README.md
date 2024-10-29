MochaVim
--------
![Version](https://img.shields.io/badge/version-1.1.0-2dd245?style=for-the-badge) ![Language](https://img.shields.io/badge/lang-lua-darkblue?logo=lua&style=for-the-badge)
![Build](https://img.shields.io/badge/build%20(fedora)-passing-blue?logo=fedora&style=for-the-badge)<br>
MochaVim is a lightweight Neovim config simply focusing on giving beginners a starting point! It uses the *lazy.nvim* plugins
manager, has autopairs installed, and has some colour-schemes!

Install
--------
#### Requirements
Neovim - The base of MochaVim.
#### Download for Linux/Mac (Unix)
```shell
# Backup your current config
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Clone the repo
git clone --depth 1 https://github.com/ElisStaaf/MochaVim ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Run neovim
nvim
```

#### Download for Windows (PowerShell)
```pwsh
# Backup your current config
Rename-Item -Path $env:LOCALAPPDATA\nvim -NewName $env:LOCALAPPDATA\nvim.bak
Rename-Item -Path $env:LOCALAPPDATA\nvim-data -NewName $env:LOCALAPPDATA\nvim-data.bak

# Clone the repo
git clone --depth 1 https://github.com/ElisStaaf/MochaVim $env:LOCALAPPDATA\nvim

# Run neovim
nvim
```

Table of contents
--------
The file structure of the config looks like this: 
```
~/.config/nvim
    ├── init.lua
    ├── lazy-lock.json
    └── lua
        ├── options.lua
        └── plugins
            ├── alpha.lua
            ├── autopairs.lua
            ├── dracula.lua
            ├── lualine.lua
            ├── neo-tree.lua
            ├── oil.lua
            └── telescope.lua
```

Let's take a look, the `init.lua` file is used for strapping everything together, it's pretty fragile, so modify at your own risk.
Then we enter the `lua` directory, this stores most of our `.lua` files. Let's move further in, to the directory: `plugins`. The 
plugin manager that MochaVim uses is lazy.nvim, you might have noticed that fact while we were in the `init.lua` file and saw the 
`lazy.lua` file! Anyways, lets continue. While there are *some* preinstalled plugins, there are not a lot, so i will provide you 
with a guide on how to add some. 

Plugins
--------
Let's say we want to install 
[noice.nvim](https://github.com/folke/noice.nvim), we would want to create a new file:
```shell
cd ~/.config/nvim/lua/plugins
touch noice.lua
```
*Then*, we would want to edit it:
```lua
return {

}
```
Okay... So what now? *Well*, we need to use lazy.nvim for that. I looked up the github repo
for noice.nvim and it's made by *folke*. And what's the repo called? *noice.nvim*. Let's rewrite the file,
change it to:
```lua
return {
    { "folke/noice.nvim" }
}
```
Here we create a table, that holds a string leading us to the github repo `folke/noice.nvim`. Makes total sense, i hope. 
So yeah, add your own personal touches and tailor this to your liking, but most importantly, enjoy!
