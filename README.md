# This is the dev branch

You are currently viewing the Development branch of this project. Please only use this branch if you know what you are doing. You can read the commits and see if there are breaking changes. DONT USE FOR CODE EDITING. This branch may break your code.

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

