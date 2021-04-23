# NotQuiteHardcore

A Minecraft 1.16 datapack to allow player revival, but at a doubling cost per revival. 

I created this datapack as I wanted to play Hardcore with a group, but still have a way to recover members who died early, so nobody gets abandoned. 
The way this currently works is the required price -- in diamonds, by default -- is doubled per death, initially at a cost of 2. 
This ensures the cost is attainable as you improve, while still making it quite punishing at any level.

There is also a special resurrection spell effect, but that can stay as a surprise ;P. 

## Usage
To trigger a revive, be holding at least the required number of diamonds and run `/trigger resurrect`

To reset the cost, delete the scoreboard `nqh_values`.
