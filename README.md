```

   ██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
   ██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
   ██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
   ██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
   ██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
   ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝

```
*ASCII art created using [patorjk's TAAG](http://patorjk.com/software/taag/#p=display&f=ANSI%20Shadow&t=dotfiles)*

# [Stow](https://www.gnu.org/software/stow/)

## *POV: You didn't know Stow existed*

So I tried writing my own script (that `.dotfiles` file) to automate this **symlink hell**. Yes, I'm talking about that `ln -s`-ing thing.
This was especially getting worse in this case because I didn't know (and still I don't) how large it was going to scale, plus I wanted to organize this repository so I can find my shit more easily.
Here's a problem though: I'm not a bash andy nor a shell andy in general, so writing a script was a pain in the ass, really-

## *POV: You know Stow exist*

I don't know what to say, [Stow](https://www.gnu.org/software/stow/) is cool.

Why [Stow](https://www.gnu.org/software/stow/) is a godsend:
- Manages the symlinks for you. No more `ln -s` here and there.
- Organizes your dotfiles into neat **packages**. Each package mimics your `$HOME`, so you can safely put unorganized but related stuff in it.

Essentially, I don't know why I'm still writing this.
Anyway I don't like scripting.

# Installation

Make sure you have [Stow](https://www.gnu.org/software/stow/) installed.
After that, clone this repository in your home directory.

```sh
git clone https://github.com/aeiiver/dotfiles.git ~/dotfiles
```

Go in your newly created directory and stow whichever packages you want.

```sh
cd ~/dotfiles
stow -v neofetch
stow -v something
```
