# easy-nvim

So, you are tired of your old code editor and see some cool Youtube videos about Neovim? You want to start using it but don't know how? Fear not, an easy nvim-config is on its way!

## Quickstart

Before you can clone this repo to your machine, you'll need to install a dependency.

Install [Packer.nvim](https://github.com/wbthomason/packer.nvim) by running this command:

Unix and Unix-like systems
```
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

Windows Powershell
```
git clone https://github.com/wbthomason/packer.nvim "$env:LOCALAPPDATA\nvim-data\site\pack\packer\start\packer.nvim"
```

after installing, use this git command to clone the config to the right path:

Unix and Unix-like systems
```
coming soon
```

Windows Powershell
```
git clone https://github.com/28n/easy-nvim "$env:LOCALAPPDATA\nvim"
```

Once cloned, start up Neovim.

You will be presented by a lot of errors. To resolve them, run the following command in Neovim:

```
:PackerInstall
```

# How to setup secrets.lua

Firstly, navigate to the subfolder `./lua/`. Then, create a file named `secrets.lua`.

For the file to work, you'll first need to create an API Token on Github [here](https://github.com/settings/tokens).

Note that you will only need to select the `Notifications` scope. The other permissions are not needed. Another Tip is to make the Token not expire. The token is securely stored on your own machine and not imported into the Git Repository.

Then, add the following sourcecode to the file:

```lua
local  M = {}

M.username = "<YOUR_GITHUB_USERNAME>"
M.token = "<YOUR_GITHUB_TOKEN>"

return M
```
