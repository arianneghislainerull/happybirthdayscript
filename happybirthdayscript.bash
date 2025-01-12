#!/bin/bash

# Clear the terminal and hide the cursor
clear
tput civis

# Define large ASCII Art frames for the animation
frames=(
"
          🎉🎉🎉 Happy Birthday, YourName! 🎉🎉🎉

              ✨✨✨ ✨✨✨ ✨✨✨
                     _._     _,-'\"\"\`-._
                    (,-.\`._,'(       |\\\`-/|
                        \`-.-' \\ )-\`(   |\\ /|
                              \`-    \\   |\\' 🎂

              May your day be filled with joy!
"
"
         🎂🎂🎂 Happy Birthday to You, YourName! 🎂🎂🎂

           ✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨
                      |\\      _,,,---,,_
              ZZZzz  /,`.-'`'    -.  ;-;;,_
                   |,4-  ) )-,_. ,\\ (  \`'-'
                  '---''(_/--'  \`-'\\_)

              Here's a purr-fect wish for you!
"
"
         🌟🌟🌟 Wishing You a Pawsome Day, YourName! 🌟🌟🌟

           ✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨✨
                      |\\      _,,,---,,_
               Meow~  /,`.-'`'    -.  ;-;;,_
                    |,4-  ) )-,_. ,\\ (  \`'-'
                   '---''(_/--'  \`-'\\_)

              You're paws-itively awesome!
"
)

# Colors to cycle through for a vibrant animation
colors=(1 2 3 4 5 6)

# Animation loop
for ((i=1; i<=30; i++)); do
  frame=${frames[$((i % ${#frames[@]}))]}  # Select frame
  color=${colors[$((i % ${#colors[@]}))]}  # Cycle through colors

  tput setaf $color   # Set color
  echo "$frame"       # Display frame
  sleep 0.4           # Pause for effect
  clear               # Clear screen
done

# Final message
tput setaf 2  # Set green color for final screen
echo "
   🎉🎉🎉✨✨✨ HAPPY BIRTHDAY, YOURNAME! ✨✨✨🎉🎉🎉

              You've got catitude! 🐾
"
echo "Enjoy your special day! 🎂"
tput sgr0  # Reset terminal colors
tput cnorm # Show cursor
