#!/usr/bin/env bash

python main.py -p1 2 -p2 2 --dump_state --no_gui --spawn 2 --last 300
echo "Rendering frames..."
python render_game.py
echo "Creating video..."
convert -delay 5 -loop 0 $(ls -1 render/*.png | sort -V) -quality 95 game.mp4
