scoreboard players set $hit cloudwolf.ehm.entityid 0
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit0=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 1
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit1=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 2
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit2=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 4
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit3=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 8
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit4=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 16
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit5=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 32
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit6=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 64
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit7=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 128
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit8=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 256
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit9=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 512
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit10=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 1024
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit11=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 2048
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit12=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 4096
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit13=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 8192
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit14=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 16384
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit15=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 32768
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit16=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 65536
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit17=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 131072
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit18=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 262144
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit19=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 524288
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit20=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 1048576
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit21=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 2097152
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit22=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 4194304
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit23=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 8388608
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit24=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 16777216
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit25=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 33554432
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit26=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 67108864
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit27=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 134217728
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit28=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 268435456
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit29=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 536870912
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit30=true}}] run scoreboard players add $hit cloudwolf.ehm.entityid 1073741824
execute if entity @s[advancements={cloudwolf.entity_hit_matching:on_hit={bit31=true}}] run scoreboard players operation $hit cloudwolf.ehm.entityid *= -1 const
execute as @e if score @s cloudwolf.ehm.entityid = $hit cloudwolf.ehm.entityid run function cloudwolf.entity_hit_matching:on_hit
