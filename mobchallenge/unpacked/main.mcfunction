# tellraw
execute as @e[type=area_effect_cloud,tag=mobchallenge] run title @a actionbar ["",{"score":{"name":"@s","objective":"mc_points"},"color":"gold","bold":true}]

#timer
execute unless entity @e[type=area_effect_cloud,scores={startEpisode=1..},tag=mobchallenge] run scoreboard players enable @a startEpisode
execute if entity @a[scores={startEpisode=1..}] run scoreboard players set @e[type=area_effect_cloud,tag=mobchallenge] startEpisode 1
execute if entity @a[scores={startEpisode=1..}] run scoreboard players set @e[type=area_effect_cloud,tag=mobchallenge] border 0
execute if entity @a[scores={startEpisode=1..}] run worldborder set 60000000
execute if entity @a[scores={startEpisode=1..}] run worldborder set 59998800 1200
execute if entity @a[scores={startEpisode=1..}] run gamerule doDaylightCycle true
execute if entity @a[scores={startEpisode=1..}] as @a run trigger startEpisode set 0 
execute as @e[type=area_effect_cloud,scores={startEpisode=1..},tag=mobchallenge] run function mobchallenge:check_worldborder


