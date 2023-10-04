kill @e[type=interaction]
kill @e[type=text_display]
scoreboard players set @a left 0
#textedit
summon text_display ~ ~-50 ~ {Tags:["textedit"]}
#main menu
summon text_display 9 3 16 {Tags:["main_menu"],background:-16777216,Passengers:[{Tags:["parse_run"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]},text:'{"text":"Parse and Run"}'}
summon text_display 9 2 16 {Tags:["main_menu"],background:-16777216,text:'{"text":"Parse"}',Passengers:[{Tags:["load_book"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 4 16 {Tags:["main_menu"],text:'{"text":"Open Debug Menu"}',background:-16777216,Passengers:[{Tags:["control/action/display_debug"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 3 3 16 {Tags:["main_menu"],text:'{"text":"Stop"}',background:-16777216,Passengers:[{Tags:["control/action/stop"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 3 2 16 {Tags:["main_menu"],text:'{"text":"Run"}',background:-16777216,Passengers:[{Tags:["run"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

#debug menu

summon text_display 9 -17 16 {Tags:["debug_menu"],text:'{"text":"Step Forward"}',background:-16777216,Passengers:[{Tags:["control/action/step_forward"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 9 -18 16 {Tags:["debug_menu"],text:'{"text":"Run"}',background:-16777216,Passengers:[{Tags:["run"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 -16 16 {Tags:["debug_menu"],text:'{"text":"Open Main Menu"}',background:-16777216,Passengers:[{Tags:["control/action/display_main"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 -17 16 {Tags:["debug_menu"],text:'{"text":"Commands per Step"}',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 6 -18 16 {Tags:["debug_menu","stepCounter"],text:'{"score":{"name":"#steps","objective":"calc"}}',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 6.9 -18 15.7 {Tags:["debug_menu"],text:'{"text":"-"}',background:-16777216,Passengers:[{Tags:["control/action/-"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 7.3 -18 15.7 {Tags:["debug_menu"],text:'{"text":"--"}',background:-16777216,Passengers:[{Tags:["control/action/--"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 5.9999 -18 15.7 {Tags:["debug_menu"],text:'{"text":"+"}',background:-16777216,Passengers:[{Tags:["control/action/add"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 5.6 -18 15.7 {Tags:["debug_menu"],text:'{"text":"++"}',background:-16777216,Passengers:[{Tags:["control/action/addadd"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}

summon text_display 3 -17 16 {Tags:["debug_menu"],text:'{"text":"Help"}',background:-16777216,Passengers:[{Tags:["control/action/help"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

#area
summon text_display -1 3 17 {Tags:["area_menu"],text:'{"text":"Current Test Area"}',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display -0.1 2 16.7 {Tags:["area_menu"],text:'{"text":"-"}',background:-16777216,Passengers:[{Tags:["control/action/prev_area"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display -1 2 17 {Tags:["area_menu","areaCounter"],text:'{"score":{"name":"#area","objective":"calc"}}',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display -0.9 2 16.7 {Tags:["area_menu"],text:'{"text":"+"}',background:-16777216,Passengers:[{Tags:["control/action/next_area"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}


summon text_display -3 3 17 {Tags:["area_menu"],text:'{"text":"Save"}',background:-16777216,Passengers:[{Tags:["control/action/save_area"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display -3 2 17 {Tags:["area_menu"],text:'{"text":"Load"}',background:-16777216,Passengers:[{Tags:["control/action/load_area"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

#challenges
scoreboard players set #challenge calc 1
data modify storage bookgames:challenge challenge set from storage bookgames:challenge challenges[0]
summon text_display 16 4.5 17 {Tags:["challenge_menu","challenge_counter"],text:'[{"score":{"name":"#challenge","objective":"calc"}},{"text":"/"},{"score":{"name":"#max_challenge","objective":"calc"}}]',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 16 4 17 {Tags:["challenge_menu","challenge_name"],text:'{"text":"Challenge: The Most Simple Program","color":"green"}',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 16 3 17 {Tags:["challenge_menu","challenge_difficulty"],text:'{"text":"Easy","color":"aqua"}',background:1677721600,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 18 3 17 {Tags:["challenge_menu"],background:-16777216,text:'{"text":"Prev"}',Passengers:[{Tags:["challenge/prev"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 14 3 17 {Tags:["challenge_menu"],background:-16777216,text:'{"text":"Next"}',Passengers:[{Tags:["challenge/next"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 14 2 17 {Tags:["challenge_menu"],background:-16777216,text:'{"text":"Try Challenge"}',Passengers:[{Tags:["challenge/try"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 16 2 17 {Tags:["challenge_menu"],background:-16777216,text:'{"text":"Show Challenge"}',Passengers:[{Tags:["challenge/show"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 18 2 17 {Tags:["challenge_menu"],background:-16777216,text:'{"text":"Help"}',Passengers:[{Tags:["challenge/help"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
