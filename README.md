# MacOS Setup

## Table of Contents

## Introduction
This repo is designed for anyone who is moving from Linux to MacOS for the 1st time. This guide focuses on setting up a MacBook Air M1 running macOS Sequoia (15.0). I will still pretty much will be using my Linux workflow and tools on the Mac. This guide simply eases in the migration of those tools.

## 1.   Setting Up System Preferences
As this is a new computer there are a couple tweaks you could make to the System Preferences. These include but aren't limited to:

### 1.1 System Settings
-   Network
    - firewall: Enable
-   Battery
    -   battery health
        -   optimized battery charging: Enable
-   Appearance
    -   appearance: Dark
    -   accent color: multi color
    -   sidebar icon size: medium
    -   show scroll bars: always
-   Control Center
    -   control center modules
        -   wifi: show in menu bar
        -   bluetooth: show in menu bar
        -   airdrop: show in menu bar
        -   display: always show in menu bar
        -   sound: show when active
        -   now playing: show when active
    -   other modules
        -   battery
            -   show percentage: enable
        -   keyboard brightness
            -   show in menu bar: enable
-   Desktop and Dock
    -   Dock
        -   position on screen: bottom
        -   minimize windows using: genie effect
        -   double click a windows title bar to: fill
        -   automatically hide and show the dock: enable
    -   Desktop and Stage Manager
    -   Widgets
        -   default web browser: safari
    -   Windows
        -   ask to keep changes when closing documents: enable
-   Display
    -   automatically adjust brightness: disable
    -   true tone: enable
    -   color profile: color LCD
    -   Setup Night Shift as needed
-   Siri
    -   siri: disable
-   Notifications
-   Sound
    -   alert sound: breeze
-   Lock Screen
    -   show large clock: on screen saver and lock screen
    -   show 24 hour time: enable
-   iCloud
    -   access iCloud data on the web: enable
-   Keyboard
    -   adjust keyboard brightness in low light: disable
    -   Dictation: disable
-   Trackpad
    -   tap to click: enable
    -   secondary click: click or tap with two fingers

### 1.2 Remove workspace auto auto-switching
```bash
# Remove workspace auto-switching by running the following command:
defaults write com.apple.dock workspaces-auto-swoosh -bool NO
# Restart the Dock process
killall Dock
```

### 1.3 Enable repeating keys
```bash
# Enable repeating keys by pressing and holding down keys:
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # (restart any app that you need to repeat keys in)
```

### 1.4 Change default folder for screenshots
```bash
# create screenshots folder
mkdir -p ~/Pictures/Screenshots

# Then run the following command
defaults write com.apple.screencapture location ~/Pictures/Screenshots && killall SystemUIServer
```

## 2. Install Developer Tools

### 2.1 Install XCode
```bash
# install command line tools for xcode
sudo xcode-select --install
```

### 2.2 Install [Homebrew](https://brew.sh/)
```bash
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# check if all is ok
# NOTE: it might prompt you to update xcode command line tools.
brew doctor

# check install packages
brew list
```

### 2.3 Install Git
```bash
brew install git
```

<!-- BUG: start from here -->




## 3.  Setting up the Terminal

### 3.1 Kitty and Alacritty
1.  Install Kitty and Alacritty
    ```bash
    brew install --cask kitty
    brew install --cask alacritty
    ```
2.  Install a [Nerd font](https://www.nerdfonts.com/font-downloads).
    ```bash
    brew tap homebrew/cask-fonts

    # my favourite font
    brew install --cask font-caskaydia-cove-nerd-font

    # install other fonts (if you want)
    brew install --cask font-anonymous-pro
    brew install --cask font-anonymice-nerd-font
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
3.  Install git:
    ```bash
    brew install git
    ```
4.  Clone the [dotfiles](https://github.com/usman1515/dotfiles) repo.
    ```bash
    git clone https://github.com/usman1515/dotfiles.git
    ```
5.  Copy the [git](https://github.com/usman1515/dotfiles/tree/main/git) config file `.gitconfig` into the `$HOME` directory.
6.  Setup [alacritty](https://github.com/usman1515/dotfiles/tree/main/alacritty) terminal config using the dotfiles repo.
    ```bash
    # copy config
    cp -rv dotfiles/alacritty ~/.config

    # Download themes repo
    git clone https://github.com/alacritty/alacritty-theme ~/.config/alacritty/themes
    ```
7.  Setup [kitty](https://github.com/usman1515/dotfiles/tree/main/kitty) terminal config using the dotfiles repo.
    ```bash
    # copy config
    cp -rv dotfiles/kitty ~/.config

    # setup theme
    kitty +kitten themes
    ```

### 3.2 iTerm2
1.  Install iterm2
    ```bash
    brew install --cask iterm2
    ```

### 3.3 Setting up iTerm2 Preferences
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

### 3.4 Add iterm2 in spotlight
-   Goto System Preferences -> Users and Groups -> you user -> Login Items:
    -   `+` -> Applications -> iTerm. Add it.
    -   [x] Hide

## 4.   Setting up the SHELLS
### 4.1 Setup ZSH
-   I use ZSH for everyday usage of the terminal.
-   To setup [ZSH](https://www.zsh.org/) run the following script.
    ```bash
    source setup_zsh.sh
    ```
-   Copy the [zsh](https://github.com/usman1515/dotfiles/tree/main/zsh) config files into the `$HOME` dir.
-   Source the file: `source ~/.zshrc`
-   Once complete restart the machine.

### 4.2  Setup BASH
-   My shell of choice for scripting is BASH.
-   To setup [BASH](https://www.gnu.org/software/bash/) run the following script.
    ```bash
    source setup_bash.sh
    ```
-   Copy the [bash](https://github.com/usman1515/dotfiles/tree/main/bash) config files into the `$HOME` dir.

## 5.   Install Compilers and Toolchains
-   To install various compilers and tool-chains run the following script.
    ```bash
    source install_compilers.sh
    ```
-   Following compilers and tool-chains are available.

| Compiler                                   | Description                          |
| :----------------------------------------- | :----------------------------------- |
| [git](https://git-scm.com/)                | Git version control                  |
| [gcc](https://gcc.gnu.org/)                | GNU GCC and G++ C/C++ compiler       |
| [make](https://www.gnu.org/software/make/) | GNU make compile utility             |
| [python 3.10](https://www.python.org/)     | Python 3.10                          |
| [openjdk](https://openjdk.java.net/)       | Development kit for Java             |
| [scala](https://www.scala-lang.org/)       | JVM-based programming language       |
| [rust](https://www.rust-lang.org/)         | Safe, concurrent, practical language |
| [docker](https://www.docker.com/)          | Container environment                |

## 6.   Install CLI Tools
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
| [awk](https://www.gnu.org/software/gawk/)                                         | GNU awk utility                                              |
| [fzf](https://github.com/junegunn/fzf)                                            | Command-line fuzzy finder written in Go                      |
| [ripgrep](https://github.com/BurntSushi/ripgrep)                                  | Search tool like grep and The Silver Searcher                |
| [fd](https://github.com/sharkdp/fd)                                               | Simple, fast and user-friendly alternative to find           |
| [tree](http://mama.indstate.edu/users/ice/tree/)                                  | Display directories as trees                                 |
| [exa](https://the.exa.website/)                                                   | Modern replacement for 'ls'                                  |
| [fortune](https://www.ibiblio.org/pub/linux/games/amusements/fortune/!INDEX.html) | Infamous electronic fortune-cookie generator                 |
| [cowsay](https://github.com/tnalpgge/rank-amateur-cowsay)                         | Configurable talking characters in ASCII art                 |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch)                           | Fast, highly customizable system info script                 |
| [cmatrix](https://github.com/abishekvashok/cmatrix/)                              | Console Matrix                                               |
| [vim](https://www.vim.org/)                                                       | Vi 'workalike' with many additional features                 |
| [neovim](https://neovim.io/)                                                      | Ambitious Vim-fork focused on extensibility and agility      |
| [bat](https://github.com/sharkdp/bat)                                             | Clone of cat(1) with syntax highlighting and Git integration |
| [tmux](https://tmux.github.io/)                                                   | Terminal multiplexer                                         |
| [htop](https://htop.dev/)                                                         | Improved top (interactive process viewer)                    |
| [ncdu](https://dev.yorhel.nl/ncdu)                                                | NCurses Disk Usage                                           |
| [imagemagick](https://imagemagick.org/index.php)                                  | Tools and libraries to manipulate images in many formats     |
| [speedtest-cli](https://github.com/sivel/speedtest-cli)                           | CLI for https://speedtest.net                                |
| [youtube-dl](https://youtube-dl.org/)                                             | Download YouTube videos from the command-line                |
| [ranger](https://ranger.github.io/)                                               | File Browser                                                 |

## 7.   Install GUI Tools
-   To install various cli tools run the following script.
    ```bash
    source install_brew_casks.sh
    ```
-   Following softwares are available.

| Application                                          | Description                                      |
| :--------------------------------------------------- | :----------------------------------------------- |
| [visual-studio-code](https://code.visualstudio.com/) | Code Editor                                      |
| [sublimetext](https://www.sublimetext.com/)          | Text editor for code, markup and prose           |
| [alacritty](https://github.com/alacritty/alacritty/) | GPU-accelerated terminal emulator                |
| [kitty](https://github.com/kovidgoyal/kitty)         | GPU-based terminal emulator                      |
| [firefox](https://www.mozilla.org/firefox/)          | Web Browser                                      |
| [opera](https://www.opera.com/)                      | Web Browser                                      |
| [joplin](https://joplinapp.org/)                     | Markdown note taking and to-do application       |
| [notion](https://www.notion.so/)                     | App to write, plan, collaborate                  |
| [google drive](https://www.google.com/drive/)        | Client for the Google Drive storage service      |
| [dropbox](https://www.dropbox.com/)                  | Client for the Dropbox cloud storage service     |
| [slack](https://slack.com/)                          | Team communication and collaboration software    |
| [whatsapp](https://www.whatsapp.com/)                | Desktop client for whatsapp                      |
| [discord](https://discord.com/)                      | Voice and text chat software                     |
| [spotify](https://www.spotify.com/)                  | Music streaming service                          |
| [vlc](https://www.videolan.org/vlc/)                 | Multimedia player                                |
| [iina](https://www.videolan.org/vlc/)                | Free and open-source media player                |
| [qbittorrent](https://www.qbittorrent.org/)          | Peer to peer Bitorrent client                    |
| [folx](https://mac.eltima.com/download-manager.html) | Download manager with a torrent client           |
| [anydesk](https://anydesk.com/)                      | Allows connection to a computer remotely         |
| [vnc viewer](https://www.realvnc.com/)               | Remote desktop application                       |
| [steam](https://store.steampowered.com/about/)       | Video game digital distribution service          |
| [epicgames](https://www.epicgames.com/)              | Video game digital distribution service          |
| [keka](https://www.keka.io/)                         | File archiver                                    |
| [rectangle](https://rectangleapp.com/)               | Move and resize windows                          |
| [alt-tab](https://github.com/lwouis/alt-tab-macos)   | Enable Windows-like alt-tab                      |
| [alfred](https://www.alfredapp.com/)                 | Application launcher and productivity software   |
| [raycast](https://raycast.com/)                      | Control your tools with a few keystrokes         |
| [gtkwave](https://gtkwave.sourceforge.io/)           | GTK+ based wave viewer                           |
| [keycastr](https://github.com/keycastr/keycastr)     | Open-source keystroke visualizer                 |
| [balena etcher](https://balena.io/etcher)            | Tool to flash OS images to SD cards & USB drives |

## 8.   Setup SSH for GitHub/GitLab etc
-   To generate a SSH key run the following script.
    ```bash
    source setup_sshkey.sh
    ```

## 9.   Change HostName of PC
-   To change the hostname of the PC via terminal enter the following commands:
    ```bash
    sudo scutil --get HostName
    sudo scutil --set HostName <your_host_name>
    ```

## 10.   Setting up Keyboard Shortcuts
-   To create new and change existing keyboard shortcuts goto:
    System Preferences -> Keyboard -> Shortcuts
-   Some of my shortcut keymappings include:

| App       | Key Mapping    |
| :-------- | :------------- |
| Launchpad | Option + Space |

## 11.  Basic Configurations
### 11.1    Setup configs for CLI based tools
To setup configs for various CLi tools including git, neovim, tmux look into the [dotfiles](https://github.com/usman1515/dotfiles) repo.

### 11.2    Sort all apps in Launchpad
```bash
defaults write com.apple.dock ResetLaunchPad -bool true; killall Dock
```
The following command will arrange all MacOS apps on the 1st page and all installed apps on the other pages.
