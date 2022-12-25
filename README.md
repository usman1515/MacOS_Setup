# MacOS Setup

-   This repo contains all the information on installing all the apps, tools, settings and configs.
-   The following environment was developed on an Apple MacBook Air M1 2020.
    -   RAM: 8 GB
    -   SSD: 256 GB
    -   You can read more about it [here](https://www.apple.com/macbook-air-m1/).

## How to Use
-   Clone or copy the repo in `$HOME` directory.
-   Simply run the script `main.sh` to run all individual scripts.
    ```bash
    cd MacOS_Setup
    source main.sh
    ```
-   **NOTE:** The script will ask for sudo privileges at various points.

## How to setup MacOS
-   Run `main.sh` using the command mentioned above and execute the scripts in the following order.
1.  Install Homebrew
1.  Install iTerm2
2.  Setup BASH Shell
3.  Install Compilers
4.  Setup SSH key for GitHub
5.  Install Homebrew formulae
6.  Install Homebrew casks

## Setup iTerm2
-   Profiles
    -   general
        -   working directory, reuse previous session directory
    -   colors
        -   background, #000000
        -   foreground, #ffffff
        -   brighten bold text
    -   text
        -   font, set type and size
        -   [x] use ligatures
    -   keys
        -   my keymappings, menu at bottom
            -   [x] natural text editing


## Recommendations:
The idea for making this repo came when setting my own Mac and the following links were very helpful. So I decided to automate their tasks as per my needs.
-   [MacOS setup guide by Sourabh Bajaj](https://sourabhbajaj.com/mac-setup/)
-   [Mac Setup by CJ R.](https://github.com/CodingGarden/mac-setup)