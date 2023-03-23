# MacOS Setup

<!-- ## Table of Contents -->
- [MacOS Setup](#macos-setup)
  - [Introduction](#introduction)
  - [1.   Setting Up System Preferences](#1---setting-up-system-preferences)
    - [1.1 General](#11-general)
    - [1.2 Dock and Menu Bar](#12-dock-and-menu-bar)
    - [1.5 Trackpad](#15-trackpad)
    - [1.6 Displays](#16-displays)
  - [2.   Setting up the Development Environment](#2---setting-up-the-development-environment)
  - [3.   Setting up iTerm2](#3---setting-up-iterm2)
    - [3.1 Setting up iTerm2 Preferences](#31-setting-up-iterm2-preferences)
    - [3.2 Add iterm2 in spotlight](#32-add-iterm2-in-spotlight)
  - [4.   Change default $SHELL to BASH](#4---change-default-shell-to-bash)
  - [5.   Install Compilers and Toolchains](#5---install-compilers-and-toolchains)
  - [6.   Setup SSH for GitHub/GitLab etc](#6---setup-ssh-for-githubgitlab-etc)
  - [7.   Change HostName of PC](#7---change-hostname-of-pc)
  - [8.   Setting up Keyboard Shortcuts](#8---setting-up-keyboard-shortcuts)
  - [9.   Install Command Line Tools](#9---install-command-line-tools)
  - [10.  Install Graphical User Interface Tools](#10--install-graphical-user-interface-tools)
  - [11.  Basic Configurations](#11--basic-configurations)
    - [11.1    Setup configs for CLI based tools](#111----setup-configs-for-cli-based-tools)
    - [11.2    Sort all apps in Launchpad](#112----sort-all-apps-in-launchpad)
    - [11.3    Set the dock to not show recently opened apps](#113----set-the-dock-to-not-show-recently-opened-apps)
    - [11.4    Setup Mission Control](#114----setup-mission-control)
    - [11.4    Display only apps on current desktop when using alt-tab](#114----display-only-apps-on-current-desktop-when-using-alt-tab)
    - [11.5    Finder](#115----finder)
    - [11.6    Set desktop scaling](#116----set-desktop-scaling)


## Introduction
This repo is designed for anyone who is moving from Linux to MacOS for the 1st time. The reason for the switch is simply because of the new Apple Silicon that is being offered. I still pretty much will be using my Linux workflow and tools on the Mac. This guide simply eases in the migration of those tools.

The following environment was developed on an Apple MacBook Air M1 running MacOS Monterey (ver 12.5). You can read more about it [here](https://www.apple.com/macbook-air-m1/).

## 1.   Setting Up System Preferences
As this is a new computer there are a couple tweaks you could make to the System Preferences. These include but aren't limited to:

### 1.1 General
-   Show scroll bar:
-   -   [x] Always

### 1.2 Dock and Menu Bar
-   Dock size: set slider to approx 20%
-   -   [x] Magnification: set slider to approx 50%.
-   -   [x] Automatically hide and show the dock.
-   Bluetooth:
    -   [x] Show in menu bar
-   Keyboard brightness:
    -   [x] Show in menu bar
-   Battery
    -   [x] Show percentage.
-   Clock:
    -   Show date: Always
    -   [x] Display the time with seconds.
-   Spotlight:
    -   [ ] Show in menu bar.

### 1.5 Trackpad
-   Point and click
    -   -   [x] Secondary click.
    -   -   [x] Tap to click.

-   Scroll and zoom
    -   -   [x] Scroll direction:  Natural
    -   -   [x] Zoom in and out
    -   -   [x] Smart zoom
    -   -   [x] Rotate

### 1.6 Displays
-   -   [ ] Automatically adjust brightness

Once all this done run he following commands in the terminal and restart the machine.
```zsh
# Remove workspace auto-switching by running the following command:
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
# Restart the Dock process
killall Dock

# Enable repeating keys by pressing and holding down keys:
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # (restart any app that you need to repeat keys in)

# Change the default folder for screenshots
# create screenshots folder
mkdir -p ~/Pictures/Screenshots
# Then run the following command
defaults write com.apple.screencapture location ~/Pictures/Screenshots && killall SystemUIServer
```

## 2.   Setting up the Development Environment
1.  Install xcode:
    ```zsh
    sudo xcode-select --install
    ```
2.  Install Homebrew:
    ```zsh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew doctor
    brew install brew-cask-completion
    ```
3.  Install [Rosetta](https://support.apple.com/en-us/HT211861):
    ```zsh
    /usr/sbin/softwareupdate --install-rosetta --agree-to-license
    ```

## 3.   Setting up iTerm2
1.  Install iterm2
    ```zsh
    brew install --cask iterm2
    ```
2.  Install a [Nerd font](https://www.nerdfonts.com/font-downloads).
    ```zsh
    brew tap homebrew/cask-fonts
    brew install --cask font-caskaydia-cove-nerd-font

    # install fonts
    brew install --cask font-anonymous-pro
    brew install --cask font-anonymice-nerd-font
    brew install --cask font-caskaydia-cove-nerd-font
    brew install --cask font-fira-code-nerd-font
    brew install --cask font-iosevka-nerd-font
    brew install --cask font-inconsolata-nerd-font
    brew install --cask font-inconsolata-lgc-nerd-font
    brew install --cask font-inconsolata-go-nerd-font
    brew install --cask font-jetbrains-mono-nerd-font
    brew install --cask font-overpass-nerd-font
    brew install --cask font-roboto-mono-nerd-font

    # list all fonts you can install this way
    brew search "/font-/"
    ```

### 3.1 Setting up iTerm2 Preferences
1.   -   [x] Make iTerm2 default term.
2.  General -> selection:
    -   -   [x] Copied text includes trailing new line.
    -   -   [x] Applications in terminal may access clipboard.
3.  Appearance -> General -> Status bar location: bottom
4.  Appearance -> Windows:
    -   -   [x] Show borders around windows.
5.  Appearance -> Tabs:
    -   -   [x] Show tab bar even when there is only one tab.
6.  Profile -> General:
    -   Basics -> name: `dark_profile1`.
    -   Basics -> title: `Name (Job) -- User`.
    -   Icon: Built-in icon for current app.
    -   working directory:
    -   -   [x] reuse previous sessions directory.
7.  Profile -> Colors:
    -   basic colors -> foreground: `FFFFFF`.
    -   cursor colors -> cursor: `FFFFFF`.
    -   cursor colors -> cursor text : `FFFFFF`.
    -   colors presets: tango dark.
8.  Profiles -> Text:
    -   -   [x] blinking cursor.
    -   Font -> type: `CaskaydiaCove Nerd font Mono Regular`.
    -   Font -> size: `11`.
    -   -   [x] use ligatures.
9.  Profiles -> Window -> Settings for new windows:
    -   Style: Normal
    -   Space: Space N
10. Profiles -> Terminal -> Scrollback buffer:
    -   -   [x] unlimited scrollback.
11. Profiles -> Terminal -> Terminal Emulation:
    -   -   [ ] enable mouse reporting.
12. Profiles -> Sessions:
    -   -   [x] Status bar enabled.
    -   Configure status bar:
        -   Auto rainbow: Light colors
        -   Active components: `CPU`, `RAM`, `Network`.
13. Keys -> Hotkey -> Create a dedicated hotkey window: `Ctrl` + `~`.

### 3.2 Add iterm2 in spotlight
-   Goto System Preferences -> Users and Groups -> you user -> Login Items:
    -   `+` -> Applications -> iTerm. Add it.
    -   [x] Hide

## 4.   Change default $SHELL to BASH
-   To change the default shell from [ZSH](https://www.zsh.org/) to [BASH](https://www.gnu.org/software/bash/) run the following script.
    ```bash
    source setup_bash.sh
    ```

## 5.   Install Compilers and Toolchains
-   To install various compilers and tool-chains run the following script.
    ```bash
    source install_compilers.sh
    ```
-   Following compilers and tool-chains are available.

| Compiler                                   | Description                    |
| :----------------------------------------- | :----------------------------- |
| [git](https://git-scm.com/)                | Git version control            |
| [gcc](https://gcc.gnu.org/)                | GNU GCC and G++ C/C++ compiler |
| [make](https://www.gnu.org/software/make/) | GNU make compile utility       |
| [python 3.10](https://www.python.org/)     | Python 3.10                    |
| [openjdk](https://openjdk.java.net/)       | Developement kit for Java      |
| [scala](https://www.scala-lang.org/)       | JVM-based programming language |
| [docker](https://www.docker.com/)          | Container environment          |

## 6.   Setup SSH for GitHub/GitLab etc
-   To generate a SSH key run the following script.
    ```bash
    source setup_sshkey.sh
    ```

## 7.   Change HostName of PC
-   To change the hostname of the PC via terminal enter the following commands:
    ```zsh
    sudo scutil --get HostName
    sudo scutil --set HostName <your_host_name>
    ```

## 8.   Setting up Keyboard Shortcuts
-   To create new and change existing keyboard shortcuts goto:
    System Preferences -> Keyboard -> Shortcuts
-   Some of my shortcut keymappings include:

| App       | Key Mapping    |
| :-------- | :------------- |
| Launchpad | Option + Space |

## 9.   Install Command Line Tools
-   To install various cli tools run the following script.
    ```bash
    source install_brew_formulae.sh
    ```
-   Following CLI tools are available.

| Tool                                                                              | Description                                                  |
| :-------------------------------------------------------------------------------- | :----------------------------------------------------------- |
| [curl](https://curl.se/)                                                          | Get file from HTTP, FTP server                               |
| [wget](https://www.gnu.org/software/wget/)                                        | Internet file retriever                                      |
| [grep](https://www.gnu.org/software/grep/)                                        | GNU grep, egrep and fgrep                                    |
| [sed](https://www.gnu.org/software/sed/)                                          | GNU sed                                                      |
| [gawk](https://www.gnu.org/software/gawk/)                                        | GNU awk utility                                              |
| [tree](http://mama.indstate.edu/users/ice/tree/)                                  | Display directories as trees                                 |
| [fortune](https://www.ibiblio.org/pub/linux/games/amusements/fortune/!INDEX.html) | Infamous electronic fortune-cookie generator                 |
| [cowsay](https://github.com/tnalpgge/rank-amateur-cowsay)                         | Configurable talking characters in ASCII art                 |
| [neofetch](https://github.com/dylanaraps/neofetch)                                | Fast, highly customizable system info script                 |
| [vim](https://www.vim.org/)                                                       | Vi 'workalike' with many additional features                 |
| [neovim](https://neovim.io/)                                                      | Ambitious Vim-fork focused on extensibility and agility      |
| [cmatrix](https://github.com/abishekvashok/cmatrix/)                              | Console Matrix                                               |
| [tmux](https://tmux.github.io/)                                                   | Terminal multiplexer                                         |
| [exa](https://the.exa.website/)                                                   | Modern replacement for 'ls'                                  |
| [htop](https://htop.dev/)                                                         | Improved top (interactive process viewer)                    |
| [ncdu](https://dev.yorhel.nl/ncdu)                                                | NCurses Disk Usage                                           |
| [bat](https://github.com/sharkdp/bat)                                             | Clone of cat(1) with syntax highlighting and Git integration |
| [imagemagick](https://imagemagick.org/index.php)                                  | Tools and libraries to manipulate images in many formats     |
| [speedtest-cli](https://github.com/sivel/speedtest-cli)                           | CLI for https://speedtest.net                                |
| [youtube-dl](https://youtube-dl.org/)                                             | Download YouTube videos from the command-line                |

## 10.  Install Graphical User Interface Tools
-   To install various cli tools run the following script.
    ```bash
    source install_brew_casks.sh
    ```
-   Following softwares are available.

| Application                                          | Description                                      |
| :--------------------------------------------------- | :----------------------------------------------- |
| [visual-studio-code](https://code.visualstudio.com/) | Code Editor                                      |
| [alacriity](https://github.com/alacritty/alacritty/) | GPU-accelerated terminal emulator                |
| [firefox](https://www.mozilla.org/firefox/)          | Web Browser                                      |
| [opera](https://www.opera.com/)                      | Web Browser                                      |
| [rectangle](https://rectangleapp.com/)               | Move and resize windows                          |
| [alt-tab](https://github.com/lwouis/alt-tab-macos)   | Enable Windows-like alt-tab                      |
| [slack](https://slack.com/)                          | Team communication and collaboration software    |
| [vlc](https://www.videolan.org/vlc/)                 | Multimedia player                                |
| [iina](https://www.videolan.org/vlc/)                | Free and open-source media player                |
| [sublimetext](https://www.sublimetext.com/)          | Text editor for code, markup and prose           |
| [qbittorrent](https://www.qbittorrent.org/)          | Peer to peer Bitorrent client                    |
| [steam](https://store.steampowered.com/about/)       | Video game digital distribution service          |
| [epicgames](https://www.epicgames.com/)              | Video game digital distribution service          |
| [spotify](https://www.spotify.com/)                  | Music streaming service                          |
| [gtkwave](https://gtkwave.sourceforge.io/)           | GTK+ based wave viewer                           |
| [whatsapp](https://www.whatsapp.com/)                | Desktop client for whatsapp                      |
| [google drive](https://www.google.com/drive/)        | Client for the Google Drive storage service      |
| [dropbox](https://www.dropbox.com/)                  | Client for the Dropbox cloud storage service     |
| [discord](https://discord.com/)                      | Voice and text chat software                     |
| [joplin](https://joplinapp.org/)                     | Markdown note taking and to-do application       |
| [keycastr](https://github.com/keycastr/keycastr)     | Open-source keystroke visualizer                 |
| [balena etcher](https://balena.io/etcher)            | Tool to flash OS images to SD cards & USB drives |

## 11.  Basic Configurations
### 11.1    Setup configs for CLI based tools
To setup configs for various CLi tools including git, neovim, tmux look into this [dotfiles](https://github.com/usman1515/dotfiles) repo.

### 11.2    Sort all apps in Launchpad
```zsh
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```
The following command will arrange all MacOS apps on the 1st page and all installed apps on the other pages.

### 11.3    Set the dock to not show recently opened apps
System Preferences -> Dock and Menu Bar
-   [ ] Show recent applications in dock.

### 11.4    Setup Mission Control
-   Setup particular apps to open only on specific spaces (desktops.)
    -   Desktop 1: Finder
    -   Desktop 2: Web Browser
    -   Desktop 3: VS Code
    -   Desktop 4: iTerm
    -   Desktop 5:

dock, right click, assign to, this desktop

### 11.4    Display only apps on current desktop when using alt-tab
Goto Alt-Tab preferences
Controls -> Shortcut 1 -> Show windows from: Visible spaces.

### 11.5    Finder
-   Set new finder window to always display $HOME dir.
    -   Preferences -> New finder window shows: home dir
-   Display home directory in favourites.
    -   Preferences -> Sidebar:
        -   [x] user_name
-   Other settings:
    -   Preferences -> Advanced:
        -   [x] Show all filename extensions.
        -   [x] Remove items form bin after 30 days
        -   [x] Keep folders on top: In windows when sorting by name.

### 11.6    Set desktop scaling
-   System Preferences -> Displays -> Resolution:
    -   [x] Scaled -> More space