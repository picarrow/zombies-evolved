## AUTHOR : Picarrow

# Track variables and constants
scoreboard objectives add meq._ dummy

# ...
data modify storage mob_equip:data _.func.equip_if_better.lookup.slot_alias set value { \
  "mainhand": "weapon.mainhand",                                                        \
  "offhand": "weapon.offhand",                                                          \
                                                                                        \
  "head": "armor.head",                                                                 \
  "chest": "armor.chest",                                                               \
  "legs": "armor.legs",                                                                 \
  "feet": "armor.feet"                                                                  \
}
data modify storage mob_equip:data _.func.equip_if_better.lookup.item_equip_slot_fallback set value { \
  "minecraft:shield": "offhand",                                                                      \
                                                                                                      \
  "minecraft:carved_pumpkin": "head",                                                                 \
  "minecraft:chainmail_helmet": "head",                                                               \
  "minecraft:creeper_head": "head",                                                                   \
  "minecraft:diamond_helmet": "head",                                                                 \
  "minecraft:dragon_head": "head",                                                                    \
  "minecraft:golden_helmet": "head",                                                                  \
  "minecraft:iron_helmet": "head",                                                                    \
  "minecraft:leather_helmet": "head",                                                                 \
  "minecraft:netherite_helmet": "head",                                                               \
  "minecraft:player_head": "head",                                                                    \
  "minecraft:skeleton_skull": "head",                                                                 \
  "minecraft:turtle_helmet": "head",                                                                  \
  "minecraft:wither_skeleton_skull": "head",                                                          \
  "minecraft:zombie_head": "head",                                                                    \
                                                                                                      \
  "minecraft:chainmail_chestplate": "chest",                                                          \
  "minecraft:diamond_chestplate": "chest",                                                            \
  "minecraft:elytra": "chest",                                                                        \
  "minecraft:golden_chestplate": "chest",                                                             \
  "minecraft:iron_chestplate": "chest",                                                               \
  "minecraft:leather_chestplate": "chest",                                                            \
  "minecraft:netherite_chestplate": "chest",                                                          \
                                                                                                      \
  "minecraft:chainmail_leggings": "legs",                                                             \
  "minecraft:diamond_leggings": "legs",                                                               \
  "minecraft:golden_leggings": "legs",                                                                \
  "minecraft:iron_leggings": "legs",                                                                  \
  "minecraft:leather_leggings": "legs",                                                               \
  "minecraft:netherite_leggings": "legs",                                                             \
                                                                                                      \
  "minecraft:chainmail_boots": "feet",                                                                \
  "minecraft:diamond_boots": "feet",                                                                  \
  "minecraft:golden_boots": "feet",                                                                   \
  "minecraft:iron_boots": "feet",                                                                     \
  "minecraft:leather_boots": "feet",                                                                  \
  "minecraft:netherite_boots": "feet"                                                                 \
}

# ...
data modify storage mob_equip:data _.func.equip_if_better.common.mainhand_tier set value { \
  "minecraft:wooden_axe": 13b,                                                             \
  "minecraft:golden_axe": 13b,                                                             \
  "minecraft:stone_axe": 14b,                                                              \
  "minecraft:iron_axe": 14b,                                                               \
  "minecraft:diamond_axe": 14b,                                                            \
  "minecraft:netherite_axe": 15b,                                                          \
                                                                                           \
  "minecraft:wooden_hoe": 2b,                                                              \
  "minecraft:golden_hoe": 2b,                                                              \
  "minecraft:stone_hoe": 2b,                                                               \
  "minecraft:iron_hoe": 2b,                                                                \
  "minecraft:diamond_hoe": 2b,                                                             \
  "minecraft:netherite_hoe": 2b,                                                           \
                                                                                           \
  "minecraft:wooden_pickaxe": 3b,                                                          \
  "minecraft:golden_pickaxe": 3b,                                                          \
  "minecraft:stone_pickaxe": 5b,                                                           \
  "minecraft:iron_pickaxe": 7b,                                                            \
  "minecraft:diamond_pickaxe": 9b,                                                         \
  "minecraft:netherite_pickaxe": 11b,                                                      \
                                                                                           \
  "minecraft:wooden_shovel": 4b,                                                           \
  "minecraft:golden_shovel": 4b,                                                           \
  "minecraft:stone_shovel": 6b,                                                            \
  "minecraft:iron_shovel": 8b,                                                             \
  "minecraft:diamond_shovel": 10b,                                                         \
  "minecraft:netherite_shovel": 12b,                                                       \
                                                                                           \
  "minecraft:wooden_sword": 17b,                                                           \
  "minecraft:golden_sword": 17b,                                                           \
  "minecraft:stone_sword": 18b,                                                            \
  "minecraft:iron_sword": 19b,                                                             \
  "minecraft:diamond_sword": 20b,                                                          \
  "minecraft:netherite_sword": 21b,                                                        \
                                                                                           \
  "minecraft:mace": 16b,                                                                   \
  "minecraft:trident": 16b                                                                 \
}
data modify storage mob_equip:data _.func.equip_if_better.common.offhand_tier set value { \
  "minecraft:shield": 2b                                                                  \
}
data modify storage mob_equip:data _.func.equip_if_better.common.head_tier set value { \
  "minecraft:leather_helmet": 2b,                                                      \
  "minecraft:golden_helmet": 3b,                                                       \
  "minecraft:chainmail_helmet": 4b,                                                    \
  "minecraft:iron_helmet": 5b,                                                         \
  "minecraft:turtle_helmet": 6b,                                                       \
  "minecraft:diamond_helmet": 7b,                                                      \
  "minecraft:netherite_helmet": 8b                                                     \
}
data modify storage mob_equip:data _.func.equip_if_better.common.chest_tier set value { \
  "minecraft:leather_chestplate": 2b,                                                   \
  "minecraft:golden_chestplate": 3b,                                                    \
  "minecraft:chainmail_chestplate": 4b,                                                 \
  "minecraft:iron_chestplate": 5b,                                                      \
  "minecraft:diamond_chestplate": 6b,                                                   \
  "minecraft:netherite_chestplate": 7b                                                  \
}
data modify storage mob_equip:data _.func.equip_if_better.common.legs_tier set value { \
  "minecraft:leather_leggings": 2b,                                                    \
  "minecraft:golden_leggings": 3b,                                                     \
  "minecraft:chainmail_leggings": 4b,                                                  \
  "minecraft:iron_leggings": 5b,                                                       \
  "minecraft:diamond_leggings": 6b,                                                    \
  "minecraft:netherite_leggings": 7b                                                   \
}
data modify storage mob_equip:data _.func.equip_if_better.common.feet_tier set value { \
  "minecraft:leather_boots": 2b,                                                       \
  "minecraft:golden_boots": 3b,                                                        \
  "minecraft:chainmail_boots": 4b,                                                     \
  "minecraft:iron_boots": 5b,                                                          \
  "minecraft:diamond_boots": 6b,                                                       \
  "minecraft:netherite_boots": 7b                                                      \
}

# Indicate the namespace has been initialized
data modify storage mob_equip:data _.loaded set value {}
