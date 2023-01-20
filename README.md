# MacOS Setup

## Introduction
This repo is designed for anyone who is moving from Linux to MacOS for the 1st time. The reason for the switch is simply because of the new Apple Silicon that is being offered. I still pretty much will be using my Linux workflow and tools on the Mac. This guide simply eases in the migration of those tools.

The following environment was developed on an Apple MacBook Air M1 running MacOS Monterey (ver 12.5). You can read more about it [here](https://www.apple.com/macbook-air-m1/).

## System Preferences
As this is a new computer there are a couple tweaks you could make to the System Preferences. These include but aren't limited to:

### General
-   Show scroll bar:
-   -   [x] Always

### Dock and Menu Bar
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

### Mission Control
### Sound
### Trackpad
-   Point and click
    -   -   [x] Secondary click.
    -   -   [x] Tap to click.

-   Scroll and zoom
    -   -   [x] Scroll direction:  Natural
    -   -   [x] Zoom in and out
    -   -   [x] Smart zoom
    -   -   [x] Rotate

### Displays
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

## Setting up the Development Environment
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

## Setting up iTerm2
1.  Install iterm2
    ```zsh
    brew install --cask iterm2
    ```
2.  Install a [Nerd font](https://www.nerdfonts.com/font-downloads).
    ```zsh
    brew tap homebrew/cask-fonts
    brew cask install font-caskaydia-cove-nerd-font
    # list all fonts you can install this way
    brew search "/font-/"
    ```

### Setting up iTerm2 Preferences
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
    -   Space: All Spaces
10. Profiles -> Terminal -> Scrollback buffer:
    -   -   [x] unlimited scrollback.
11. Profiles -> Terminal -> Terminal Emulation:
    -   -   [] enable mouse reporting.
12. Profiles -> Sessions:
    -   -   [x] Status bar enabled.
    -   Configure status bar:
        -   Auto rainbow: Light colors
        -   Active components: `CPU`, `RAM`, `Network`.
13. Keys -> Hotkey -> Create a dedicated hotkey window: `Ctrl` + `~`.

### Add iterm2 in spotlight
-   Goto System Preferences -> Users and Groups -> you user -> Login Items:
    -   `+` -> Applications -> iTerm. Add it.
    -   [x] Hide

## Change default $SHELL to BASH
-   To change the default shell from [ZSH](https://www.zsh.org/) to [BASH](https://www.gnu.org/software/bash/) run the following script.
    ```bash
    source setup_bash.sh
    ```

## Install Compilers and Toolchains
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

## Install Command Line Tools
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
| [awk](https://www.cs.princeton.edu/~bwk/btl.mirror/)                              | Text processing scripting language                           |
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

## Install Graphical User Interface Tools
-   To install various cli tools run the following script.
    ```bash
    source install_brew_casks.sh
    ```
-   Following compilers and toolchains are available.

| Application                                          | Description |
| :--------------------------------------------------- | :---------- |
| [visual-studio-code](https://code.visualstudio.com/) |             |
