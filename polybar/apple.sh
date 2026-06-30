#!/usr/bin/env bash

# Check for Apple Music Desktop or Cider engines specifically
if playerctl -p apple-music-desktop status &>/dev/null; then
    PLAYER="apple-music-desktop"
elif playerctl -p cider status &>/dev/null; then
    PLAYER="cider"
else
    # Fallback to any active MPRIS player if the explicit names aren't running
    PLAYER=$(playerctl -l 2>/dev/null | head -n 1)
fi

# If no players are running, exit silently
if [ -z "$PLAYER" ]; then
    echo ""
    exit 0
fi

STATUS=$(playerctl -p "$PLAYER" status 2>/dev/null)

if [ "$STATUS" = "Playing" ]; then
    # Prints "Song Title - Artist Name" (Trims to 30 characters maximum)
    playerctl -p "$PLAYER" metadata --format "{{ title }} - {{ artist }}" 2>/dev/null | cut -c1-30
elif [ "$STATUS" = "Paused" ]; then
    echo "Paused"
else
    echo ""
fi

