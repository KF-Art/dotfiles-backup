# Powerline Colorscheme - ANSI

Everyone these days uses twenty-dozen colors. For those of us attempting to use a consistent, high-contrast terminal color scheme, this can be frustrating. We don't want a true-color terminal application that suddenly clashes with environment shifts, or disrespects our choices. Packages like Powerline often ship with these complicated 256-color schemes which make default assumptions about terminal colors that don't work with our 16-color schemes.

Because of this, it's about time for a simple color scheme: an ANSI scheme.

## Requirements
- [powerline-status](https://github.com/powerline/powerline)
- (Optional) [powerline-gitstatus](https://github.com/jaspernbrouwer/powerline-gitstatus)

## The Colors

For maximum compatibility, the included `colors.json` file defines the 16 base ANSI colors as their own color variables, all prefixed with the `ansi:` namespace. Thus we have:

```
ansi:black
ansi:brightblack
ansi:red
ansi:brightred
ansi:green
ansi:brightgreen
ansi:yellow
ansi:brightyellow
ansi:blue
ansi:brightblue
ansi:magenta
ansi:brightmagenta
ansi:cyan
ansi:brightcyan
ansi:white
ansi:brightwhite
```

There are also two simple "gradients" included: `ansi:good_bad` (green, yellow, red) and `ansi:ok_bad` (white, yellow, red).

Unlike other schemes, which use hex codes or pick "nice" values out of the 256-color X11 table, this scheme simply directly maps these color variables to your personally-defined 16 environment colors. That means that regardless of whether you use `.Xresources` or **xfce4-terminal** or etc., it will pull your basic color scheme and use those colors for your powerline.

Finally.

## The Scheme

Included is a default colorscheme that includes all default powerline elements as well as all elements from the excellent **gitstatus** extension.

## Installation

Merge this folder with `~/.config/powerline`. You will need to set `colorscheme` to `ANSI` under `config.json` for any extensions you wish to activate it on. For example, for shell use:

```
{
	"ext": {
		"shell": {
			"colorscheme": "ANSI"
		}
	}
}
```

**If you aren't using gitstatus:** I believe you will have to remove the related lines from `colors.json`. This should be relatively straightforward, and i have left a linebreak to seperate them in the file.