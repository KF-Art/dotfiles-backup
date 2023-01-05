# Sierra-Dark-Fluxbox
MacOS Sierra inspired dark theme for Fluxbox window manager. This is a fork based on JUANFGS's Sierra theme at <a href="https://www.pling.com/p/1229892/">Pling</a>. All credits goes to him.

![preview1](preview1.png?raw=true)

![preview2](preview2.png?raw=true)
Note that the composition is from <a href="https://github.com/jonaburg/picom">Jonaburg's Picom fork</a> (Yes I'm using Plasma with Fluxbox, which may appear a strange combination but it's nice for me).

<H1>Installation</H1>

First clone this repository:

    git clone https://github.com/KF-Art/Sierra-Dark-Fluxbox

Proceed with installation. For one user:

    cp -r Sierra-Dark-Fluxbox $HOME/.fluxbox/styles/

For system level:

    # Linux based systems
        # cp -r Sierra-Dark-Fluxbox /usr/share/fluxbox/styles/
    
    # FreeBSD systems
        # cp -r Sierra-Dark-Fluxbox /usr/local/share/fluxbox/styles/
        
After that you can apply it via the built-in Fluxbox's menus, or directly at <code>~/.fluxbox/init</code> (you will need to restart the window manager if do this):

    session.styleFile:      /home/USER/.fluxbox/styles/Sierra-Dark-Fluxbox
    
If you want that new users have this theme installed, copy this theme to <code>skel</code> directory:

    # Linux based systems
        # mkdir -p /etc/skel/.fluxbox/styles/
        # cp -r Sierra-Dark-Fluxbox /etc/skel/.fluxbox/styles/
        
    # FreeBSD
        # mkdir -p /usr/local/etc/skel/.fluxbox/styles/
        # cp -r Sierra-Dark-Fluxbox /usr/local/etc/skel/.fluxbox/styles/
        
<H2>Additional font dependency</H2>    
The Roboto fonts are necessary for the theme work properly, unless you change the default font as is explained below.


Void Linux:

    # xbps-install -S fonts-roboto-ttf

OpenSUSE:

    # zypper refresh
    # zypper in google-roboto-fonts
    
FreeBSD:

    # pkg install fonts-roboto-ttf
    
Debian, Ubuntu and derivatives:

    # apt update
    # apt install fonts-roboto
    
Arch Linux and derivatives:

    # pacman -S roboto-ttf
     
 <H1>Recommendations</H2>
 
 <H2>GTK theme</H2>
 
This theme was made with the idea on combining well with <a href="https://github.com/vinceliuice/Graphite-gtk-theme">Vinceliuice's Graphite theme</a> (the blackness version), so if you want to use them together, install his theme:

    git clone https://github.com/vinceliuice/Graphite-gtk-theme
    cd Graphite-gtk-theme
    ./install.sh -t all -c dark --tweaks black
    
 <H2>Kvantum theme</H2> 
 
Following the Graphite's line, and in order to have a desktop consistency, I also recommend the kvantum version. This one is tricky, because it does not include any other color variant, but we can change the color scheme with any "Find & Replace" function. Here, we'll use <code>sed</code>.

    git clone https://github.com/vinceliuice/Graphite-kde-theme
    cp -r Graphite-kde-theme/Kvantum/Graphite $HOME/.config/Kvantum
    
    # Change to blackness color scheme.
    sed -i 's/#2c2c2c/#0f0f0f/g' $HOME/.config/Kvantum/Graphite/GraphiteDark.{kvconfig,svg}
    
    # Accent color (optional)
    # Replace the #4DB6AC (Teal) accent color by the one you prefer.
    sed -i 's/#e0e0e0/#4DB6AC/g' $HOME/.config/Kvantum/Graphite/GraphiteDark.svg
    
    # Only do this if some menus text look weird with the new accent color.
    sed -i 's/text.focus.color=#dfdfdf/text.focus.color=white/g' $HOME/.config/Kvantum/Graphite/GraphiteDark.kvconfig
    
Install Qt5ct and export the following variable to your <code>profile</code> file.

    echo "export QT_QPA_PLATFORMTHEME=qt5ct" >> ~/.profile
    
Finally change your current style to Kvantum. This can be done at the GUI or editing <code>~/.config/qt5ct/qt5ct.conf</code>:

    style=kvantum-dark
    
<H2>Alternative fonts</H2>

If for some reason you want to change the default font, you will need to replace the lines that declares it. I initially made this fork with the <a href="https://github.com/sahibjotsaggu/San-Francisco-Pro-Fonts">San Francisco Pro Fonts</a> but I can't include them by legal reasons, so I will use them for this example.

    sed -i 's/Roboto/SF Pro Display/g' $HOME/.fluxbox/styles/Sierra-Dark-Fluxbox/theme.cfg
    
This can be applied for whatever font you want. After the change, restart the window manager.

<H1>Why not upload this to Pling/OpenDesktop?</H1>

I had a bad experience uploading a theme fork at OpenDesktop. Even giving the respective credits and adding the original GitHub repository, my account got banned. After that, I decided that the only way that I would upload something to there, is if the theme is 100% mine and not a fork. But feel free to fork this theme and upload it to OpenDesktop or any platform.

    
