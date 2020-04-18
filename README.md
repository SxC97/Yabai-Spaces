# Yabai-Spaces
A Bitbar plugin that displays the total number of spaces and highlights the current one.

![Aqua](/Images/Colors/Aqua.png)

## Features
* User Customizable colors, numbers, unicode icons, fonts and sizes.
  * Well documented. Allows for even novice users to easily make changes.
  * Emoji Support!
  * Multilingual support (_probably_).
  * Compact mode to save space.
* Fast! Code runs in log(n) time. Performance could probably be increased with a little refactoring to reduce programs calls.
* Supports all versions of MacOS supported by Bitbar (_probably_).
* Multi monitor support.
* Deep integration with Yabai and SKHD
* High Preformance! Plugin only runs when space focus is changes, space is created, or destroid.

## The Problem So Far
I use the Yabai Window Manager for MacOS. One of the freatures of Yabai is disabling the animation when changing spaces. For power users, this is a great feature that speeds up you're workflow. The issue is that sometimes it can be difficult to know which space your on without the animation. Yabai includes a default bar that gives you this information, but it isnt _that_ customizable and requires that the default menu bar be hidden. I have several other utilities in the menubar (such as iStatsMenu and Carrot Weather) and don't want them hidden all the time. Übersicht widgets also wouldn't work for this reason.

## The Solution
This plugin (based on the [yabai/skhd helper](https://getbitbar.com/plugins/Tools/yabai_skhd.1s.sh) plugin by James Won) for Bitbar, displays the total number of spaces you have open and highlights the currently focused space.

## Customization
This plugin has support for unique left and right bookshelfs, dividors between numbers, and coloring for both the text fot the spaces and a different color for the selected space. Also includes a compact mode to save space!

### Colors
The plugin supports all 8 ANSI colors `BLACK` `RED` `GREEN` `YELLOW` `BLUE` `MAGENTA` `CYAN` and `WHITE`.
You can set a unique color for both the selected space and the unselected spaces. That gives you a total of 56 unique color combinations!

Some example color schemes to get you started.

Name | Settings | Preview
-----|----------|--------
Aqua | `COLOR=$BLUE Default=$WHITE` | ![Aqua](/Images/Colors/Aqua.png)
Christmas | `COLOR=$RED Default=$GREEN` | ![Christmas](/Images/Colors/Christmas.png)
Cash | `COLOR=$WHITE Default=$GREEN` | ![Cash](/Images/Colors/Cash.png)
Vaporwave | `COLOR=$MAGENTA Default=$WHITE` | ![Vapor](/Images/Colors/Vapor.png)
Outrun | `COLOR=$YELLOW Default=$MAGENTA` | ![Outrun](/Images/Colors/Outrun.png)
Ikea | `COLOR=$YELLOW Default=$BLUE` | ![Ikea](/Images/Colors/Ikea.png)
Mirrors Edge | `COLOR=$RED Default=$WHITE` | ![Mirror](/Images/Colors/Mirror.png)
Mono | `COLOR=$WHITE Default=$BLACK` | ![Mono](/Images/Colors/Mono.png)

### Separators
This plugin also supports most unicode charecters and emojis for the dividors between spaces and the bookendings.

Here are some example configurations to get you started.

Name | Settings | Preview
-----|----------|--------
Simple | `LEFT=' ' DIV=' ｜ ' RIGHT=' ' SELECTLEFT='｜' SELECTRIGHT='｜'` | ![Simple](/Images/Separators/Simple.png)
Web Developer | `LEFT='{ ' DIV=' \\ ' RIGHT=' }' SELECTLEFT='<' SELECTRIGHT='>'` | ![Web](/Images/Separators/Web.png)
Jason | `LEFT='[ ' DIV=' : ' RIGHT=' ]' SELECTLEFT='{' SELECTRIGHT='}'` | ![Jason](/Images/Separators/Jason.png)
Writer | `LEFT='\( ' DIV=' \" ' RIGHT=' \)' SELECTLEFT='\*' SELECTRIGHT='\*'` | ![Writer](/Images/Separators/Writer.png)
Mathematics | `LEFT='≺ ' DIV=' ∿ ' RIGHT=' ≻' SELECTLEFT='⟦' SELECTRIGHT='⟧'` | ![Math](/Images/Separators/Math.png)
Menacing | `LEFT='「 ' DIV=' ° ' RIGHT=' 」' SELECTLEFT='「' SELECTRIGHT='」'` | ![Menacing](/Images/Separators/Menacing.png)
Peacefull | `LEFT='☛ ' DIV=' ✦ ' RIGHT=' ☚' SELECTLEFT='~' SELECTRIGHT='~'` | ![Peace](/Images/Separators/Peace.png)

### Space Indicators)
This plugin supports different dividors to go between spaces. 

Here are some example configurations to get you started.
Name | Settings | Preview
-----|----------|--------
Arabic | `SPACES="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 0"` | ![Arabic](/Images/Spaces/Arabic.png)
Numbers | `SPACES="ONE TWO THREE FOUR FIVE SIX SEVEN EIGHT NINE TEN ELEVEN TWELVE THIRTEEN FOURTEEN FIFTEEN SIXTEEN ZERO"` | ![Numbers](/Images/Spaces/Numbers.png)
Roman | `SPACES="I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI N"` | ![Roman](/Images/Spaces/Roman.png)
Circles | `SPACES="① ② ③ ④ ⑤ ⑥ ⑦ ⑧ ⑨ ⑩ ⑪ ⑫ ⑬ ⑭ ⑮ ⑯ ⓪"` | ![Circles](/Images/Spaces/Circles.png)
Negative | `SPACES="❶ ❷ ❸ ❹ ❺ ❻ ❼ ❽ ❾ ❿ ⓫ ⓬ ⓭ ⓮ ⓯ ⓰ ⓿"` | ![Negative](/Images/Spaces/Negative.png)
Emoji | `SPACES="😀 🐶 🍎 ⚾️ 📱 💎 📩 ❤️ 🌐 🔔 🇮🇳 🐵 🎬 🎲 🚗 🚀 🚫"` | ![Emoji](/Images/Spaces/Emoji.png)

### Compact Mode
Compact Mode eliminates all spaces from the string and saves some space if menubar real estate is at a premium.

Normal Mode | Compact Mode
------------|-------------
![Normal](/Images/Compact/Normal.png) | ![Compact](/Images/Compact/Compact.png)

### Fonts
Font variable allows you to change the font and size. Also supports font ligatures! The screenshots show the font [FuraCode Retina Nerd Font Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode/Retina).

Note: A monowidth font is recomended. [List of monowidth programming fonts](https://app.programmingfonts.org)
Note: If you use a [Nerd Font Patched](https://www.nerdfonts.com) font, you will have access to several _more_ unique icons!

### Language support
Included UTF Encoding variable _should_ allow support for multiple languages. Testers are welcome!

### Emoji Support
🤓

## Dependencies
[Yabai](https://github.com/koekeishiya/yabai), [SHKD](https://github.com/koekeishiya/skhd), [Bitbar](https://github.com/matryer/bitbar), [jq](https://stedolan.github.io/jq/), [Visual Studio Code](https://code.visualstudio.com), [zsh](http://www.zsh.org), and [brew](https://brew.sh)

## Installation and Configuration Instructions

1. Download the yabai.1d.sh file and drop into the Bitbar plugin folder.
    * By default the plugin runs once a day, if you don't want to implement the Yabai integration below, you can rename it to yabai.1s.sh to have it run once a day. This is still slower than the Yabai integration outlined below and increases cpu usage quite a bit. This configuration is supported but is not recomended.
1. (optional)Set UTF encoding for your language. By default this plugin should support english and spanish. Please open an issue if you have problems with other languages.
1. Ensure that the location of your .yabairc, .shkdrc, and yabai plugin file are accurately reflected in the if statements at the top of the document.
1. Set COMPACT to `TRUE` or `FALSE`
1. Set COLOR and DEFAULT
1. Set bookend icons, dividor icons, and selected icons.
1. Set font and size
1. Set Spaces to arabic numerals, written numbers, roman numbers, emojis, or unicode icons.

## Yabai and SHKD Integration

1. open the .yabairc file and add the following at the bottom. See example .yabairc file linked above if you are confused.

```
yabai -m signal --add event=space_changed action="open 'bitbar://refreshPlugin?name=yabai.1d.sh'"
yabai -m signal --add event=display_added action="open 'bitbar://refreshPlugin?name=yabai.1d.sh'"
yabai -m signal --add event=display_removed action="open 'bitbar://refreshPlugin?name=yabai.1d.sh'"
yabai -m signal --add event=display_changed action="open 'bitbar://refreshPlugin?name=yabai.1d.sh'"
yabai -m signal --add event=display_moved action="open 'bitbar://refreshPlugin?name=yabai.1d.sh'"
```
This adds rules that refresh the yabai plugin whenever the space is changed, display is added, removed, changed, or moved.

1. open the .skhdrc file and append the following to the `create desktop, move window and follow focus`, `create desktop and follow focus`, `destroy desktop`, `fast focus desktop`, `send window to desktop and follow focus`, `send window to monitor and follow focus`, `Move space left`, `Move space right`, and `focus monitor` hotkeys. 
See example .skhdrc file linked above if you are confused.

` && open 'bitbar://refreshPlugin?name=yabai.1d.sh'`

This refreshes the plugin whenever you enter the shortcut for creating, destroying, moving, or focusing spaces. If you changed the file name to update more often, that needs to be reflected here.

## Known issues

 * when switching spaces, no windows on the newly focused space are selected. Requires clicking to start interacting with said window. This is due to calling the `open 'bitbar://refreshPlugin?name=yabai.1d.sh'` command. The Bitbar application takes focus when called and doesnt return focus to a window in the new space. Have not found a way to circumvent this. Suggestions welcome!
 
 * Plugin displays "Updating..." text when switching spaces. I believe this is possible to [fix](https://github.com/matryer/bitbar/issues/545) but I have not managed to get this to work.
 
 * Sometimes does not update when closing fullscreen space from Mission Control. This is a Yabai issue as it does not count closing a fullscreen space as "destroyed".
 
## Features to add

- [ ] Allow unique colors for bookends, dividers, icons, and selectors.
- [ ] Add support for a string of same icons. e.g. SPACES="• • • • • • • • • • • • • • • •" and select the correct one. Not supported with the current parser.
- [ ] Allow shortcut to edit files in other text editors e.x. nvim, emacs, BBEdit, etc... Difficult to implement without a cli tool for said editor. For terminal editors a clunky solution is `open 'iTerm' && nvim ~/.yabairc` and set `terminal=true` in the echo statement at the bottom. Unfortunately, this is not reliable.
- [ ] Better multi monitor support. Display total number of spaces and selected space for each display. Would require a lot of refactoring but should be possible.
- [ ] Better support for more than 16 spaces. Idea is to display as a fraction e.x. 16/30.

## Credit
Feel free to make changes and republish as you see fit but please give credit in the form of a link to this page! A lot of sleepless nights were spent on this project and as my first shell script i'm quite proud of it!
