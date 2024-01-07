# DeckLight

Script to launch Moonlight with the current primary display's resolution on a Steam Deck. 
Works in both gaming and desktop mode.

### My usecase
I primarily use my Steam Deck as a Moonlight client both handheld and docked. If I use Moonlight in handheld mode (16:10) and then dock the Steam Deck, the resolution would still be the same but instead on my TV (16:9). I wanted to find a way to match Moonlight's resolution with my primary screen's resolution on startup. This way I just need to quit Moonlight, dock or undock the Steam Deck and start Moonlight again and I'm all set.
I use Sunshine on my host machine and have global commands which set its primary screen's resolution to match whatever the Moonlight client sends through. This way my entire screen is filled no matter the Moonlight client!
  
## Setup

#### Prerequisites
 - Moonlight is installed on your Steam Deck

**Setup can only be done in Steam Deck's desktop mode** 

 1. Download the DeckLight.sh file and place it wherever you like
 2. Make the DeckLight.sh file executable
 3. Add the DeckLight.sh as a non-Steam game
 4. Dock your Steam Deck
 5. Set the DeckLight.sh non-Steam game resolution to something other than default
 6. (Optional) Make your DeckLight.sh non-Steam game look pretty with a custom name and artwork
 7. (Optional) Enjoy!

### What the script does:
This script launches Moonlight, but before it does that it checks the primary display's current resolution. (For example 1080p on a monitor and 1280x800 in Steam Deck's handheld mode). Then edits Moonlight's config file to set its resolution to the primary display's current resolution.