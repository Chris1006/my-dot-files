# Chris' Dotfiles

Here are my Linux dotfiles. They are made for Arch Linux but should also work on other Distributions as well as far as the required packages are available.

#### Installation

In the Example I use Arch Linux with the AUR Package Manager `yay`. The Dependencies can be installed with

`
    yay -S nvim git stow xorg-server xorg-xinit i3-gaps i3blocks i3lock picom dmenu dunst st zsh zsh-completions zsh-syntax-highlighting pulseaudio pavucontrol ranger gnome-keyring seahorse sxiv xwallpaper scrot mpd mpc ncmpcpp mpv neomutt offlineimap msmtp dialog htop networkmanager wget curl firefox chronie acpid dbus avahi noto-fonts noto-fonts-emoji newsboat calcurse zathura zathura-pdf-mpdf
`

After that you can clone the repository and install the dotfiles with

`
stow * -t ~
`

inside the cloned repo-folder. Don't forget to copy the ~/.config/secretsrc.example and set your env-vars and to install your video driver for Xorg.

#### Dependencies in detail

- GIT (of course)

- Xorg-Server with xorg-xbacklight

- Window Manager

        i3-gaps
        i3blocks 
        i3lock
        dmenu
        dunst
        picom

- Terminal && Shell

        st (I recommend my patched repository)
        zsh
        zsh-completions
        zsh-syntax-highlighting

- Fonts

    	noto-fonts
	    noto-fonts-emoji

- Editor

	    nvim

- Browser

	    firefox

- Sound

        pulseaudio
        pavucontrol

- File Manager

        ranger

- Security

        gnome-keyring
        seahorse

- Images

        sxiv
        scrot
        xwallpaper

- Music
        
        mpd
        mpc
        ncmpcpp

- Video

        mvc

- Mail

        neomutt
        offlineimap
        msmtp
        dialog
        (I also recommend mutt-wizard by luke smith)

- News
	    
        newsboat

  Calendar
        
        calcurse

- Utilities

        htop
        networkmanager
        wget && curl
