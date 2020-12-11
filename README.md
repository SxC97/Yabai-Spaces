# Yabai-Spaces

A *crazy* customizable Bitbar plugin that displays the total number of spaces and highlights the current one.

![Aqua](/Images/Colors/Aqua.png)

## Features
* User Customizable colors, numbers, unicode icons, fonts and sizes.
  * Well documented. Allows for even novice users to easily make changes.
  * Emoji Support!
  * Support for a string of the same icons. e.g. SPACES="• • • • • • • • • • • • • • • •"
  * Support for an infinite number of spaces
  * Support for space type (bsp, stack, and float)
  * Support for window status (float, unfloat)
  * Multilingual support (_probably_).
  * Full instructions in the [Wiki](https://github.com/SxC97/Yabai-Spaces/wiki)!
* Supports all versions of MacOS supported by Bitbar (_probably_).
* Multi monitor support.
* Deep integration with Yabai and SKHD
* Light mode and Dark mode support!
* Fast! Code runs in log(n) time.
* High Preformance! Plugin only runs when space focus is changes, space is created, or destroyed.

## The Problem So Far
I use the Yabai Window Manager for MacOS. One of the freatures of Yabai is disabling the animation when changing spaces. For power users, this is a great feature that speeds up your workflow. The issue is that sometimes it can be difficult to know which space you're on without the animations. Yabai forked its default bar into [SpaceBar](https://github.com/cmacrae/spacebar); it gives you this information, but it isn't _that_ customizable and requires that the default menu bar be hidden. I have several other utilities in the menubar (such as iStatsMenu and Carrot Weather) and don't want them hidden all the time. Übersicht widgets also wouldn't work for this reason.

## The Solution
This plugin (based on the [yabai/skhd helper](https://getbitbar.com/plugins/Tools/yabai_skhd.1s.sh) plugin by James Won) for Bitbar, displays the total number of spaces you have open and highlights the currently focused space.

## Dependencies
[Yabai](https://github.com/koekeishiya/yabai), [SHKD](https://github.com/koekeishiya/skhd), [Bitbar](https://github.com/matryer/bitbar), [jq](https://stedolan.github.io/jq/), [Visual Studio Code](https://code.visualstudio.com), [zsh](http://www.zsh.org), and [brew](https://brew.sh)

## Installation Instructions

Download the yabai.1d.sh file and drop it into the Bitbar plugin folder. For a more in-depth guide, check out the [wiki](https://github.com/SxC97/Yabai-Spaces/wiki)!

## Known Issues
 
 * Plugin displays "Updating..." text when switching spaces. I believe this is possible to [fix](https://github.com/matryer/bitbar/issues/545) but I have not managed to get this to work.
 
 * Final output needs cleanup to fix:

   * $DIV$DIV → $DIV
   * $DIV$SELECTLEFT → $SELECTLEFT
   * $SELECTRIGHT$DIV → $SELECTRIGHT
 
## Features To Add

- [x] Better support for more than 16 spaces.
- [x] Add support for a string of the same icons. e.g. SPACES="• • • • • • • • • • • • • • • •" and select the correct one.
- [ ] Allow unique colors for bookends, dividers, icons, and selectors.
- [ ] Allow shortcut to edit files in other text editors e.x. nvim, emacs, BBEdit, etc... Difficult to implement without a cli tool for said editor. For terminal editors, a clunky solution is `open 'iTerm' && nvim ~/.yabairc` and set `terminal=true` in the echo statement at the bottom. Unfortunately, this is not very reliable.
- [ ] Better multi monitor support. Support grouping based on which display the space is on.
- [ ] Add support for images in $SPACES?
- [ ] Add support for automatically activating "compact mode" if number of spaces gets beyond a set theshold.
- [ ] Add support for colored backgrounds?
## Credit
Feel free to make changes and republish as you see fit but please give credit in the form of a link to this page! A lot of sleepless nights were spent on this project and as my first shell script, I'm quite proud of it!
