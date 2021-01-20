<div align="center">

```
                      __  _ __          
   ____  ____ ___  __/ /_(_) /_  _______
  / __ \/ __ `/ / / / __/ / / / / / ___/
 / / / / /_/ / /_/ / /_/ / / /_/ (__  ) 
/_/ /_/\__,_/\__,_/\__/_/_/\__,_/____/  
                                        
```

### :diamond_shape_with_a_dot_inside: Arch :diamond_shape_with_a_dot_inside: i3 :diamond_shape_with_a_dot_inside: Nord    :diamond_shape_with_a_dot_inside:
</div>

<img src="https://raw.githubusercontent.com/chebro/dotfiles/master/Misc/screenshots/merge.png" alt="img" align="right" width="400px">

Had some spare time so I installed Arch and setup up something nice!

+ **OS**: Arch Linux
+ **WM**: [i3 gaps](https://github.com/Airblader/i3)
+ **Shell**: [Zsh](https://wiki.archlinux.org/index.php/Zsh) + [ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
+ **Terminal**: [Kitty](https://github.com/kovidgoyal/kitty/) + [nord-kitty](https://github.com/connorholyday/nord-kitty)
+ **Editor**: [Vim](https://github.com/vim/vim) + [vim-plug](https://github.com/junegunn/vim-plug)
+ **File Manager**: [Ranger](https://github.com/ranger/ranger)
+ **Document Viewer**: [Zathura](https://pwmt.org/projects/zathura/)
+ **Color Scheme**: [Nord](https://www.nordtheme.com/)

Jump to the [Setup](#setup) section for more details!

This setup still has a long way to go before it comes anywhere close to perfection, however, it works for me and I seek to improve it with time :)

Why nautilus? It just fits with all the blue :P

## Setup

_Configs were not written with portability in mind, while I'm trying to make it better, things might break._

1. Install [Airblader's i3](https://github.com/Airblader/i3/wiki/installation) (i3-gaps), [i3blocks](https://github.com/vivien/i3blocks) and i3lock.
   
   Optionally, replace i3lock with [i3lock-color](https://github.com/Raymo111/i3lock-color). Arch users can get the [i3lock-color-git](https://aur.archlinux.org/packages/i3lock-color-git/) (AUR) package instead.

2. Get other dependencies:

     - **Arch Linux** (using `yay`)

         ```shell
         yay -S rofi acpid dunst-git feh playerctl alsa-utils acpilight wireless_tools networkmanager
         ```     
     - **Enable acpid:**

         ```shell
         # For .config/notifications/(un)plugged.sh
         sudo systemctl enable acpid.service
         sudo systemctl start acpid.service
         ```
     - **Summary:**
         
| **Package**                                                               | **Description**                                                                   |
|---------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| [Rofi](https://github.com/DaveDavenport/rofi)                             | Dmenu replacement                                                                 |
| [Picom](https://github.com/yshui/picom)                                   | A lightweight compositor for X11                                                  |
| [Playerctl](https://github.com/acrisci/playerctl)                         | To fetch metadata about the song/video being played                               |
| [Feh](https://github.com/derf/feh)                                        | A fast and light image viewer, can set a wallpaper                                |
| [dunst](https://github.com/dunst-project/dunst)                           | Lightweight notification daemon                                                   |
| `acpid`                                                                   | Daemon for delivering ACPI events                                                 |
| `acpilight`                                                               | Provides xbacklight utility for brightness control                                |
| `alsa-utils`                                                              | Provides amixer utility for volume control                                        |
| `wireless_tools`, `networkmanager`                                        | Necessary for the wifi and vpn i3blocks                                           |       

3. Get them fonts!

   + **JetBrains Mono** - [website](https://www.jetbrains.com/lp/mono/#how-to-install)
   + **Material Design Icons** - [website](https://materialdesignicons.com/)
   + **Product Sans** - [for personal use](https://www.dafontfree.io/product-sans-font-family/)
   
   Unzip the fonts to `~/.fonts` or `~/.local/share/fonts` and run `fc-cache -v` to build the font info cache.

4. Clone my repo and put all files under `.config` in your `~/.config` and you should be good to go!

5. Optional Stuff
   + I use [kitty](https://github.com/kovidgoyal/kitty/) with [nord-kitty](https://github.com/connorholyday/nord-kitty) theme for my terminal.
   + Vim can be configured by installing [vim-plug](https://github.com/junegunn/vim-plug) and clone my `.vimrc`.
   + I use the `zsh` shell, use my `install_zsh.sh` script if you're interested to get the same!

## Gallery

<img src="https://raw.githubusercontent.com/chebro/dotfiles/master/Misc/screenshots/merge.png" alt="img" align="center" width="900px">

<img src="https://raw.githubusercontent.com/chebro/dotfiles/master/Misc/wallpapers/nord-lines.png" alt="img" align="center" width="900px">
