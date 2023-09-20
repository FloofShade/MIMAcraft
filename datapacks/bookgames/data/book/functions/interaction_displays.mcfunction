kill @e[type=interaction]
kill @e[type=text_display]

#main menu
summon text_display 9 3 16 {Tags:["main_menu"],background:-16777216,Passengers:[{Tags:["parse_run"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]},text:'{"text":"Parse and Run"}'}
summon text_display 9 2 16 {Tags:["main_menu"],background:-16777216,text:'{"text":"Parse"}',Passengers:[{Tags:["load_book"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 4 16 {Tags:["main_menu"],text:'{"text":"Open Debug Menu"}',background:-16777216,Passengers:[{Tags:["control/action/display_debug"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 3 3 16 {Tags:["main_menu"],text:'{"text":"Stop"}',background:-16777216,Passengers:[{Tags:["control/action/stop"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 3 2 16 {Tags:["main_menu"],text:'{"text":"Run"}',background:-16777216,Passengers:[{Tags:["run"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

#debug menu

summon text_display 9 -17 16 {Tags:["debug_menu"],text:'{"text":"Step Forward"}',background:-16777216,Passengers:[{Tags:["control/action/step_forward"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 9 -18 16 {Tags:["debug_menu"],text:'{"text":"Step Backward"}',background:-16777216,Passengers:[{Tags:["control/action/step_backward"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 -16 16 {Tags:["debug_menu"],text:'{"text":"Open Main Menu"}',background:-16777216,Passengers:[{Tags:["control/action/display_main"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

summon text_display 6 -17 16 {Tags:["debug_menu"],text:'{"text":"Commands per Step"}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 6 -18 16 {Tags:["debug_menu","stepCounter"],text:'{"score":{"name":"#steps","objective":"calc"}}}',transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}
summon text_display 6.9 -18 15.7 {Tags:["debug_menu"],text:'{"text":"-"}',background:-16777216,Passengers:[{Tags:["control/action/-"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 7.3 -18 15.7 {Tags:["debug_menu"],text:'{"text":"--"}',background:-16777216,Passengers:[{Tags:["control/action/--"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 5.9999 -18 15.7 {Tags:["debug_menu"],text:'{"text":"+"}',background:-16777216,Passengers:[{Tags:["control/action/add"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}
summon text_display 5.6 -18 15.7 {Tags:["debug_menu"],text:'{"text":"++"}',background:-16777216,Passengers:[{Tags:["control/action/addadd"],id:"minecraft:interaction",width:0.3,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-0.2f],scale:[1f,1f,1f]}}

summon text_display 3 -17 16 {Tags:["debug_menu"],text:'{"text":"Help"}',background:-16777216,Passengers:[{Tags:["control/action/help"],id:"minecraft:interaction",width:2,height:0.5}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.1f,-1f],scale:[1f,1f,1f]}}

#other
