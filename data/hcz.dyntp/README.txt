# This namespace ("dyntp", alias for Dynamic Teleport) is used to teleport an entity dynamically by setting the relative integer distance to teleport in terms of x, y, and z.
# Requires load function: YES
# Requires tick function: NO

# 1. Set the change in x y z (these are NOT preserved after execution!)
scoreboard players set #dx dyntp <blocks>
scoreboard players set #dy dyntp <blocks>
scoreboard players set #dz dyntp <blocks>

# 2. Have the entity run the execution function
execute as @e[tag=example_entity] run function dyntp:exe

# 3. The entity is teleported to the new location
