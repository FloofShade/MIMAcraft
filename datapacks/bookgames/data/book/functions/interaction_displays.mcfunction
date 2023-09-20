kill @e[type=interaction]
kill @e[type=text_display]

#main menu
summon text_display 9 3 16 {Tags:["parse_run"],background:-16777216,Passengers:[{id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]},text:'{"text":"Parse and Run"}'}
summon text_display 9 2 16 {Tags:["load_book"],background:-16777216,text:'{"text":"Parse"}',Passengers:[{id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 3 16 {text:'{"text":"Commands per Step"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 6 2 16 {Tags:["stepCounter"],text:'{"score":{"name":"#steps","objective":"calc"}}}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 6.9 2 15.7 {Tags:["control/action/-"],text:'{"text":"-"}',background:-16777216,Passengers:[{id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 7.3 2 15.7 {Tags:["control/action/--"],text:'{"text":"--"}',background:-16777216,Passengers:[{id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 5.9999 2 15.7 {Tags:["control/action/add"],text:'{"text":"+"}',background:-16777216,Passengers:[{id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 5.6 2 15.7 {Tags:["control/action/addadd"],text:'{"text":"++"}',background:-16777216,Passengers:[{id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}

summon text_display 3 3 16 {Tags:["control/action/stop"],text:'{"text":"Stop"}',background:-16777216,Passengers:[{id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 3 2 16 {Tags:["run"],text:'{"text":"Run"}',background:-16777216,Passengers:[{id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

scoreboard players add @e[type=text_display] menus 1
