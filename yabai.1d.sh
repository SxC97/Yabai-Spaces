#!/bin/zsh

# <bitbar.title>Yabai-Spaces</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Shrey Choudhary</bitbar.author>
# <bitbar.author.github>SxC97</bitbar.author.github>
# <bitbar.desc>Plugin that displays total number of spaces and highlights the current space.</bitbar.desc>
# <bitbar.dependencies>brew,yabai,skhd,jq,zsh</bitbar.dependencies>

# Info about yabai, see: https://github.com/koekeishiya/yabai
# For skhd, see: https://github.com/koekeishiya/skhd
# Although very little of the original code remains, this plugin was inspired by James Won's "yabai/skhd helper" https://getbitbar.com/plugins/Tools/yabai_skhd.1s.sh

# Sets unicode encoding to UTF-8. Fixes issues with displaying *many* but not *all* unicode charecters.
export LANG="es_ES.UTF-8"

# Exports the plugin to your $PATH to allow execution. Make sure you run `chmod +x yabai.1d.sh` after downloading
export PATH=/usr/local/bin:$PATH

# Stops yabai and skhd
if [[ "$1" = "stop" ]]; then
  brew services stop yabai
  brew services stop skhd
fi

# Restarts yabai and skhd
if [[ "$1" = "restart" ]]; then
  brew services restart yabai
  brew services restart skhd
fi

# Opens your .yabairc file in VSCode if you have the CLI tools installed. Make sure to change path to your file if needed. See https://code.visualstudio.com/docs/editor/command-line

if [[ "$1" = "editY" ]]; then
  code ~/.yabairc
fi
# Opens your .shkdrc file in VSCode
if [[ "$1" = "editS" ]]; then
  code ~/.skhdrc
fi
# Opens this file in VSCode
if [[ "$1" = "editBB" ]]; then
  code ~/Bitbar/yabai.*.sh
fi

# Makes the final string more compact by removing all spaces. Options are TRUE and FALSE
COMPACT='FALSE'

# Avaliable colors and their associated ANSI color codes. Don't change your color here unless you know what you're doing!
BLACK='\\\033[0;30m'
RED='\\\033[0;31m'
GREEN='\\\033[0;32m'
YELLOW='\\\033[0;33m'
BLUE='\\\033[0;34m'
MAGENTA='\\\033[0;35m'
CYAN='\\\033[0;36m'
WHITE='\\\033[0;37m'
RESET='\\\033[m'

# Change your color here to one of the options above! $COLOR will be the color of the current space.
# $DEFAULT will be the color of the other spaces

COLOR=$BLUE
DEFAULT=$WHITE

# Change your icons here! $LEFT and $RIGHT refer to the icons on either end of the bar and $DIV refers to the icon between spaces.
# e.x. if $LEFT='⟨', $RIGHT='⟩', and $DIV='|', your bar would look like this ⟨ | ⟩.
# NOTE: the pipe '|' is not a valid charecter as it is reserved by Bitbar. Use "vertical line" or "vertical bar" instead.
# List of all Unicode charecters can be found here: https://unicode-table.com/en/
# P.S. Check out the "Math" and "Misc" sections for cool and unique symbols to use!

LEFT=' '
DIV='｜'
RIGHT=' '
SELECTLEFT='｜'
SELECTRIGHT='｜'

# Change your font here! Make sure you only change the stuff on the right of the '='. You can get the exact name of your font from the FontBook application on MacOS.
# A monowidth font (such as FuraCode) is recomended. Ligatures are a plus!

FONT=' | font= | trim=true | size='

# Change your space indicies here! Ensure that there is a space between the indicies as the AWK command uses that as its delimiter. The last index should be the error icon.
# NOTE: Currently multiple instances of the same icon is not supported. e.g. SPACES="• • • • • • • • • • • • • • • •"
# NOTE: Yabai can disable the 16 spaces limit. In my testing, I spawned 97 spaces before everything broke down.
# Feel free to use this as a template and increase the $SPACES string as you see fit and add to the case statements below.

SPACES="1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 0"

# -------------------------------------------------------------------------#
# Don't edit anything below this point if you dont know what you're doing! #
# -------------------------------------------------------------------------#

# This is the function that queries Yabai to get the total number of spaces and displays a trimmed down version of $SPACES

totalSpaces () {

# This case statement is broken into 2 parts. The first part gets the total number of spaces, the second part AWKs the required indicies of $SPACES and places the $DIV inbetween and $LEFT and $RIGHT icons on either side.
# The error index is returned if there is an error or too many spaces.

  TOTAL=$(yabai -m query --spaces | jq '. | length')

  case $TOTAL in
    "1") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 " "RIGHT}')";;
    "2") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 " "RIGHT}')";;
    "3") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 " "RIGHT}')";;
    "4") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 " "RIGHT}')";;
    "5") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 " "RIGHT}')";;
    "6") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 " "RIGHT}')";;
    "7") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 " "RIGHT}')";;
    "8") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 " "RIGHT}')";;
    "9") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 " "RIGHT}')";;
   "10") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 " "RIGHT}')";;
   "11") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 DIV $11 " "RIGHT}')";;
   "12") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 DIV $11 DIV $12 " "RIGHT}')";;
   "13") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 DIV $11 DIV $12 DIV $13 " "RIGHT}')";;
   "14") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 DIV $11 DIV $12 DIV $13 DIV $14 " "RIGHT}')";;
   "15") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 DIV $11 DIV $12 DIV $13 DIV $14 DIV $15 " "RIGHT}')";;
   "16") echo "$(echo $SPACES | awk -v DIV=" $DIV " -v LEFT="$LEFT " -v RIGHT=" $RIGHT" '{print LEFT $1 DIV $2 DIV $3 DIV $4 DIV $5 DIV $6 DIV $7 DIV $8 DIV $9 DIV $10 DIV $11 DIV $12 DIV $13 DIV $14 DIV $15 DIV $16 " "RIGHT}')";;
   *) echo "$(echo $SPACES | awk '{print $NF}')";;
  esac
}

# This is the function that queries Yabai to get the current focused space and highlights the space with $COLOR and colors everything else with $DEFAULT

currentSpace () {

  # This function first calls the previous function and gets a string containing the proper number of spaces with dividers
  STRING=$(totalSpaces)

  CURRENT=$(yabai -m query --spaces --display | jq 'map(select(."focused" == 1))[-1].index')
  # This case statement is broken into 4 different pieces.
  # The first echo statement sets the $DEFAULT color to the whole string
  # The second part uses a sed statement to replace the indicies with the $COLOR chosen above then set the $DEFAULT color again.
  # The third part is another sed statement to remove a lingering backslash '\' from the beginning of the string. Why does this happen only at the first color set? Why does this regex fix it? ¯\_(?)_/¯
  # The final part appends the $FONT variable we set earlier

  case $CURRENT in
    "1") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/ $(echo $SPACES | awk '{print $1}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $1}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "2") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $2}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $2}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "3") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $3}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $3}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "4") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $4}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $4}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "5") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $5}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $5}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "6") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $6}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $6}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "7") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $7}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $7}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "8") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $8}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $8}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
    "9") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $9}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $9}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "10") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $10}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $10}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "11") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $11}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $11}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "12") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $12}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $12}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "13") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $13}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $13}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "14") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $14}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $14}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "15") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $15}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $15}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   "16") echo -e "$(echo "$DEFAULT$STRING"  | sed -E " s/. $(echo $SPACES | awk '{print $16}') ./$COLOR$SELECTLEFT $(echo $SPACES | awk '{print $16}') $SELECTRIGHT$DEFAULT/g" | sed -E s/^.//g)"$FONT;;
   *) echo "$(echo $SPACES | awk '{print $NF}')";;
  esac
}

final () {
  # This is where the above function is finally called and a sed command cleans up any accidental double spaces. Some refactoring might be able to simplity this.
  FINAL="$(currentSpace)"
  echo -e "$(echo $FINAL | sed -E "s/  / /g")"
}

finalCompact () {
  # This is where the above function is finally called and a sed command removes any spaces if $COMPACT is true.
  FINAL="$(currentSpace)"
  echo -e "$(echo $FINAL | sed -E "s/ //g")"
}

if [[ "$COMPACT" = "FALSE" ]]; then
  final
fi

if [[ "$COMPACT" = "TRUE" ]]; then
  finalCompact
fi

# the following are the dropdown menu for the if statements at the top of this script and makes sure the terminal is not focused when running the script.
# If you make any changes, make sure the 'param1' matches the variable in the if-statement conditionals above

echo "---"
echo "Restart yabai & skhd | bash='$0' param1=restart terminal=false"
echo "Stop yabai & skhd | bash='$0' param1=stop terminal=false"
echo "Edit yabairc | bash='$0' param1=editY terminal=true"
echo "Edit skhdrc | bash='$0' param1=editS terminal=false"
echo "Edit this plugin | bash='$0' param1=editBB terminal=false"