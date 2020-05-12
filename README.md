# Yabai-Spaces

A *crazy* customizable Bitbar plugin that displays the total number of spaces and highlights the current one.

![Aqua](/Images/Colors/Aqua.png)

## Features
* User Customizable colors, numbers, unicode icons, fonts and sizes.
  * Well documented. Allows for even novice users to easily make changes.
  * Emoji Support!
  * Multilingual support (_probably_).
  * Compact mode to save space.
  * Full instructions in the [Wiki](https://github.com/SxC97/Yabai-Spaces/wiki)!
* Fast! Code runs in log(n) time. Performance could probably be increased with a little refactoring to reduce programs calls.
* Supports all versions of MacOS supported by Bitbar (_probably_).
* Multi monitor support.
* Deep integration with Yabai and SKHD
* Light mode and Dark mode support!
* High Preformance! Plugin only runs when space focus is changes, space is created, or destroid.

## The Problem So Far
I use the Yabai Window Manager for MacOS. One of the freatures of Yabai is disabling the animation when changing spaces. For power users, this is a great feature that speeds up your workflow. The issue is that sometimes it can be difficult to know which space you're on without the animations. Yabai includes a default bar that gives you this information, but it isn't _that_ customizable and requires that the default menu bar be hidden. I have several other utilities in the menubar (such as iStatsMenu and Carrot Weather) and don't want them hidden all the time. Übersicht widgets also wouldn't work for this reason.

## The Solution
This plugin (based on the [yabai/skhd helper](https://getbitbar.com/plugins/Tools/yabai_skhd.1s.sh) plugin by James Won) for Bitbar, displays the total number of spaces you have open and highlights the currently focused space.

## Dependencies
[Yabai](https://github.com/koekeishiya/yabai), [SHKD](https://github.com/koekeishiya/skhd), [Bitbar](https://github.com/matryer/bitbar), [jq](https://stedolan.github.io/jq/), [Visual Studio Code](https://code.visualstudio.com), [zsh](http://www.zsh.org), and [brew](https://brew.sh)

## Installation Instructions

Download the yabai.1d.sh file and drop it into the Bitbar plugin folder. For a more in-depth guide, check out the [wiki](https://github.com/SxC97/Yabai-Spaces/wiki)!

## Known Issues
 
 * Plugin displays "Updating..." text when switching spaces. I believe this is possible to [fix](https://github.com/matryer/bitbar/issues/545) but I have not managed to get this to work.
 
 * Sometimes does not update when closing fullscreen space from Mission Control. This is a Yabai issue as it does not count closing a fullscreen space as "destroyed".
 
## Features To Add

- [ ] Allow unique colors for bookends, dividers, icons, and selectors.
- [ ] Add support for a string of the same icons. e.g. SPACES="• • • • • • • • • • • • • • • •" and select the correct one. Not supported with the current parser.
- [ ] Allow shortcut to edit files in other text editors e.x. nvim, emacs, BBEdit, etc... Difficult to implement without a cli tool for said editor. For terminal editors, a clunky solution is `open 'iTerm' && nvim ~/.yabairc` and set `terminal=true` in the echo statement at the bottom. Unfortunately, this is not very reliable.
- [ ] Better multi monitor support. Display total number of spaces and selected space for each display. Would require a lot of refactoring, but, should be possible.
- [ ] Better support for more than 16 spaces. Idea is to display as a fraction e.x. 16/30.
- [ ] Add support for images in $SPACES
- [ ] Add support for automatically activating "compact mode" of number of spaces gets beyond a set theshold.
- [ ] Add support for colored backgrounds?
## Credit
Feel free to make changes and republish as you see fit but please give credit in the form of a link to this page! A lot of sleepless nights were spent on this project and as my first shell script, I'm quite proud of it!
