```

   ██████╗  ██████╗ ████████╗███████╗
   ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝
   ██║  ██║██║   ██║   ██║   ███████╗
   ██║  ██║██║   ██║   ██║   ╚════██║
   ██████╔╝╚██████╔╝   ██║   ███████║
   ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝

```
*ASCII art created using [patorjk's TAAG](http://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=dots)*

# Installation

Make sure you have [Stow](https://www.gnu.org/software/stow/) installed.
After that, clone this repository in your home directory.

```sh
git clone https://github.com/aeiiver/dotfiles.git ~/dots
```

Go in your newly created directory and stow whichever packages you want.

```sh
cd ~/dots
stow -Sv neofetch
stow -Sv something
```

# dots.sh

Sick of typing stow commands? `dots.sh` will do it for you.

Give yourself permissions to execute `dots.sh`.

```sh
chmod u+x dots.sh
```
