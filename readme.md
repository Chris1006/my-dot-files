# Chris' Dotfiles

Here are my Linux dotfiles. They are made for Arch Linux but should also work on other Distributions as well as far as the required packages are available.

#### Installation

In the Example I use Arch Linux with the AUR Package Manager `trizen`. The Dependencies can be installed with

`
    trizen -S git stow xorg-server xorg-xinit i3-gaps i3block i3lock dmenu dunst st zsh zsh-completions pulseaudio pavucontrol ranger gnome-keyring seahorse feh sxiv scrot mpd mpc ncmpcpp mplayer neomutt offlineimap msmtp dialog htop networkmanager wget curl
`

After that you can clone the repository and install the dotfiles with

`
stow * -t ~
`

inside the cloned repo-folder. Don't forget to copy the ~/.reg_env_vars.example and set your env-vars and to install your video driver for Xorg.

#### Dependencies in detail

- GIT (of course)

- Xorg-Server with xorg-xbacklight

- Window Manager

        i3 (gaps)
        i3block 
        i3 lock
        dmenu
        dunst
        compton

- Terminal && Shell

        st (I recommend my patched repository)
        zsh
        zsh-completions

- Sound

        pulseaudio
        pavucontrol

- File Manager

        ranger

- Security

        gnome-keyring
        seahorse

- Images

        feh
        sxiv
        scrot

- Music
        
        mpd
        mpc
        ncmpcpp

- Video

        mplayer

- Mail

        neomutt
        offlineimap
        msmtp
        dialog
        (I also recommend mutt-wizard by luke smith)

- Utilities

        htop
        networkmanager
        wget && curl
