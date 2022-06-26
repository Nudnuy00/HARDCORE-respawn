#4 команды ниже нужно прописать 1 раз для работы датапака в конкретном мире
#scoreboard objectives add r trigger
#scoreboard objectives add d deathCount
#gamerule logAdminCommands false
#gamerule commandBlockOutput false

scoreboard players enable @a[gamemode=spectator] r
execute as @a[gamemode=spectator] at @s run title @s times 0 3 0
execute as @a[gamemode=spectator] at @s run title @s subtitle {"text":"напиши /trigger r чтобы возродиться!","color":"gray","italic":true}
execute as @a[gamemode=spectator] at @s run title @s title {"text":"СМЕРТЬ"}
#команда ниже могла бы телепортирывать игрока на спавн, но это не удастся реализовать в режиме сервера "хардкор"
#execute as @a[scores={r=1..},gamemode=spectator] at @s run tp @s (spawn)
execute as @a[scores={r=1..},gamemode=spectator] at @s run gamemode survival


execute as @a[scores={r=1..,d=1..}] at @s run effect give @s minecraft:slowness 300 0
execute as @a[scores={r=1..,d=2..}] at @s run effect give @s minecraft:weakness 300 0
execute as @a[scores={r=1..,d=3..}] at @s run effect give @s minecraft:mining_fatigue 300 0
execute as @a[scores={r=1..,d=4..}] at @s run effect give @s minecraft:hunger 300 0
execute as @a[scores={r=1..,d=5..}] at @s run effect give @s minecraft:blindness 300 0

#блок команд ниже сбрасывает атрабуты наложенные ранеее, чтобы небыло конфликтов
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.armor modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.armor modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.armor_toughness modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.attack_damage modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.attack_speed modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.knockback_resistance modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.luck modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.max_health modifier remove 0000-0000-0000-0000-0
execute as @a[scores={r=1..}] at @s run attribute @s minecraft:generic.movement_speed modifier remove 0000-0000-0000-0000-0

#следующие 5 блоков команд выставляют модификаторы уменьшения атрибутов в соответствии с количеством смертей
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.armor modifier add 0000-0000-0000-0000-0 0 -0.1 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.armor_toughness modifier add 0000-0000-0000-0000-0 0 -0.1 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.attack_damage modifier add 0000-0000-0000-0000-0 0 -0.6 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.attack_speed modifier add 0000-0000-0000-0000-0 0 -0.6 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 0000-0000-0000-0000-0 0 -0.1 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.luck modifier add 0000-0000-0000-0000-0 0 -0.1 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.max_health modifier add 0000-0000-0000-0000-0 0 -0.1 multiply
execute as @a[scores={r=1..,d=1}] at @s run attribute @s minecraft:generic.movement_speed modifier add 0000-0000-0000-0000-0 0 -0.6 multiply

execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.armor modifier add 0000-0000-0000-0000-0 0 -0.2 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.armor_toughness modifier add 0000-0000-0000-0000-0 0 -0.2 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.attack_damage modifier add 0000-0000-0000-0000-0 0 -0.12 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.attack_speed modifier add 0000-0000-0000-0000-0 0 -0.12 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 0000-0000-0000-0000-0 0 -0.2 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.luck modifier add 0000-0000-0000-0000-0 0 -0.2 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.max_health modifier add 0000-0000-0000-0000-0 0 -0.2 multiply
execute as @a[scores={r=1..,d=2}] at @s run attribute @s minecraft:generic.movement_speed modifier add 0000-0000-0000-0000-0 0 -0.12 multiply

execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.armor modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.armor_toughness modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.attack_damage modifier add 0000-0000-0000-0000-0 0 -0.18 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.attack_speed modifier add 0000-0000-0000-0000-0 0 -0.18 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.luck modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.max_health modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=3}] at @s run attribute @s minecraft:generic.movement_speed modifier add 0000-0000-0000-0000-0 0 -0.18 multiply

execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.armor modifier add 0000-0000-0000-0000-0 0 -0.4 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.armor_toughness modifier add 0000-0000-0000-0000-0 0 -0.4 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.attack_damage modifier add 0000-0000-0000-0000-0 0 -0.24 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.attack_speed modifier add 0000-0000-0000-0000-0 0 -0.24 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 0000-0000-0000-0000-0 0 -0.4 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.luck modifier add 0000-0000-0000-0000-0 0 -0.4 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.max_health modifier add 0000-0000-0000-0000-0 0 -0.4 multiply
execute as @a[scores={r=1..,d=4}] at @s run attribute @s minecraft:generic.movement_speed modifier add 0000-0000-0000-0000-0 0 -0.24 multiply

execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.armor modifier add 20000-0000-0000-0000-0 0 -0.5 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.armor_toughness modifier add 0000-0000-0000-0000-0 0 -0.5 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.attack_damage modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.attack_speed modifier add 0000-0000-0000-0000-0 0 -0.3 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.knockback_resistance modifier add 0000-0000-0000-0000-0 0 -0.5 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.luck modifier add 0000-0000-0000-0000-0 0 -0.5 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.max_health modifier add 0000-0000-0000-0000-0 0 -0.5 multiply
execute as @a[scores={r=1..,d=5..}] at @s run attribute @s minecraft:generic.movement_speed modifier add 0000-0000-0000-0000-0 0 -0.3 multiply

#следующие 2 команды "оковы смерти", которые дополнительно уменьшают атрибуты и не снимаются
execute as @a[scores={r=1..,d=2..3}] at @s run item replace entity @s armor.chest with minecraft:leather_chestplate{AttributeModifiers:[{Amount:-6,AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",UUID:[I;-1211016,26628,212343,-53256]},{Amount:-2,AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"chest",UUID:[I;-1211016,26728,212343,-53456]},{Amount:-0.2d,AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"chest",UUID:[I;-1211016,26828,212343,-53656]},{Amount:-0.01d,AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"chest",UUID:[I;-1211016,26928,212343,-53856]}],Damage:30,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],HideFlags:99,display:{Lore:['[{"text":"Смерть не всегда","italic":false,"color":"gray"}]','[{"text":"отпускает легко.","italic":false,"color":"gray"}]','[{"text":"Теперь нужно их как-то сломать...","italic":false,"color":"gray"}]'],Name:'[{"text":"Оковы смерти","italic":false,"color":"red"}]',color:8158332}}

execute as @a[scores={r=1..,d=4..}] at @s run item replace entity @s armor.chest with minecraft:leather_chestplate{AttributeModifiers:[{Amount:-9,AttributeName:"generic.armor",Name:"generic.armor",Slot:"chest",UUID:[I;-1211016,26628,212343,-53256]},{Amount:-3,AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Slot:"chest",UUID:[I;-1211016,26728,212343,-53456]},{Amount:-0.3d,AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Slot:"chest",UUID:[I;-1211016,26828,212343,-53656]},{Amount:-0.015d,AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Slot:"chest",UUID:[I;-1211016,26928,212343,-53856]}],Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],HideFlags:99,display:{Lore:['[{"text":"Смерть не всегда","italic":false,"color":"gray"}]','[{"text":"отпускает легко.","italic":false,"color":"gray"}]','[{"text":"Теперь нужно их как-то сломать...","italic":false,"color":"gray"}]'],Name:'[{"text":"Оковы смерти","italic":false,"color":"red"}]',color:8158332}}


execute as @a[scores={r=1..}] at @s run scoreboard players reset @s r


