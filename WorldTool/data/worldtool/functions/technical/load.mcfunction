# Called by #minecraft:load

## DHP definitions ##
#define storage worldtool:storage
#define score_holder #ID_temp
#define score_holder $processRunning
#define tag worldtool
#define tag wt.temp
# Entities that stay around for a while
#define entity 35c1ab68-9d4c-11eb-a8b3-0242ac130003 Writer
#define entity 9880ccfe-fdf6-4538-838a-ddc75a54608e Reciever
# Entities that generally only exist for a tick
#define entity fe66c968-8ef7-4f14-b6e2-44faa2083170 World Top or Bottom
#define entity d43b8e30-51cc-4da0-918a-60a557ae676f Temporary Entity


# Detect an older version
execute if score $version worldtool matches ..3 run function worldtool:technical/upgrade_version

## Objectives ##
scoreboard objectives add worldtool dummy
scoreboard objectives add wt.use_coas used:minecraft.carrot_on_a_stick
scoreboard objectives add wt.drop_coas dropped:minecraft.carrot_on_a_stick
scoreboard objectives add wt.ID dummy
scoreboard objectives add wt.brush_size dummy
scoreboard objectives add wt.chance dummy
scoreboard objectives add wt.diameter dummy
scoreboard objectives add wt.length dummy
scoreboard objectives add wt.precision dummy
scoreboard objectives add wt.degrees dummy
scoreboard objectives add wt.rotX dummy
scoreboard objectives add wt.rotY dummy
scoreboard objectives add wt.rotZ dummy
scoreboard objectives add wt.pos1x dummy
scoreboard objectives add wt.pos1y dummy
scoreboard objectives add wt.pos1z dummy
scoreboard objectives add wt.pos2x dummy
scoreboard objectives add wt.pos2y dummy
scoreboard objectives add wt.pos2z dummy

# Default language
execute if data storage worldtool:storage Language run function worldtool:language/reload
execute unless data storage worldtool:storage Language run function worldtool:language/en_us

# Set the current version
scoreboard players set $version worldtool 4

## Default blocks per tick ##
# Set the blocks-per-tick settings to their default values if they're not of a supported value
function worldtool:technical/common/fix_bpt_vars

## Default settings ##
execute unless score $forceLoadPositions worldtool matches 0..1 run scoreboard players set $forceLoadPositions worldtool 1
execute unless score $progressBar worldtool matches 0..1 run scoreboard players set $progressBar worldtool 1
#execute unless score $monitorPerformance worldtool matches 0..1 run scoreboard players set $monitorPerformance worldtool 0
execute unless score $clearChat worldtool matches 0..1 run scoreboard players set $clearChat worldtool 1
execute unless score $sizeWarnLimit worldtool matches 0.. run scoreboard players set $sizeWarnLimit worldtool 100000
execute unless score $playUISounds worldtool matches 0..1 run scoreboard players set $playUISounds worldtool 1
execute unless score $logLimit worldtool matches -2147483648.. run scoreboard players set $logLimit worldtool 100
execute unless score $reloadMessage worldtool matches 0..1 run scoreboard players set $reloadMessage worldtool 0
execute unless score $randomizationSourceSizeWarnLimit worldtool matches 0.. run scoreboard players set $randomizationSourceSizeWarnLimit worldtool 60000

execute unless score $maxRaycastingDistance worldtool matches 1.. run scoreboard players set $maxRaycastingDistance worldtool 100

## Constants ##
scoreboard players set #-1 worldtool -1
scoreboard players set #2 worldtool 2
scoreboard players set #3 worldtool 3
scoreboard players set #4 worldtool 4
scoreboard players set #5 worldtool 5
scoreboard players set #8 worldtool 8
scoreboard players set #10 worldtool 10
scoreboard players set #20 worldtool 20
scoreboard players set #60 worldtool 60
scoreboard players set #100 worldtool 100
scoreboard players set #200 worldtool 200
scoreboard players set #360 worldtool 360
scoreboard players set #1000 worldtool 1000
scoreboard players set #3600 worldtool 3600
scoreboard players set #10000 worldtool 10000
scoreboard players set #86400 worldtool 86400
scoreboard players set #pi worldtool 31416

gamerule commandBlockOutput false

bossbar add worldtool:progress {"nbt":"Translation.\"progress.default\"","storage": "worldtool:storage"}

#execute unless score #defaultWorldborderSize worldtool matches 1.. store result score #defaultWorldborderSize worldtool run worldborder get
#scoreboard players operation #minWorldborderSize worldtool = #defaultWorldborderSize worldtool
#scoreboard players remove #minWorldborderSize worldtool 20
#scoreboard players set #displayLagWarning worldtool 1

## LCG ##
scoreboard players set #rng_multiplier worldtool 1664525
scoreboard players set #rng_increment worldtool 1013904223
execute unless score #rng worldtool = #rng worldtool store result score #rng worldtool run seed

# Add 1000 slots for area backups
execute unless data storage worldtool:storage AvailableBackupSlots run data modify storage worldtool:storage AvailableBackupSlots set value ["worldtool:1","worldtool:2","worldtool:3","worldtool:4","worldtool:5","worldtool:6","worldtool:7","worldtool:8","worldtool:9","worldtool:10","worldtool:11","worldtool:12","worldtool:13","worldtool:14","worldtool:15","worldtool:16","worldtool:17","worldtool:18","worldtool:19","worldtool:20","worldtool:21","worldtool:22","worldtool:23","worldtool:24","worldtool:25","worldtool:26","worldtool:27","worldtool:28","worldtool:29","worldtool:30","worldtool:31","worldtool:32","worldtool:33","worldtool:34","worldtool:35","worldtool:36","worldtool:37","worldtool:38","worldtool:39","worldtool:40","worldtool:41","worldtool:42","worldtool:43","worldtool:44","worldtool:45","worldtool:46","worldtool:47","worldtool:48","worldtool:49","worldtool:50","worldtool:51","worldtool:52","worldtool:53","worldtool:54","worldtool:55","worldtool:56","worldtool:57","worldtool:58","worldtool:59","worldtool:60","worldtool:61","worldtool:62","worldtool:63","worldtool:64","worldtool:65","worldtool:66","worldtool:67","worldtool:68","worldtool:69","worldtool:70","worldtool:71","worldtool:72","worldtool:73","worldtool:74","worldtool:75","worldtool:76","worldtool:77","worldtool:78","worldtool:79","worldtool:80","worldtool:81","worldtool:82","worldtool:83","worldtool:84","worldtool:85","worldtool:86","worldtool:87","worldtool:88","worldtool:89","worldtool:90","worldtool:91","worldtool:92","worldtool:93","worldtool:94","worldtool:95","worldtool:96","worldtool:97","worldtool:98","worldtool:99","worldtool:100","worldtool:101","worldtool:102","worldtool:103","worldtool:104","worldtool:105","worldtool:106","worldtool:107","worldtool:108","worldtool:109","worldtool:110","worldtool:111","worldtool:112","worldtool:113","worldtool:114","worldtool:115","worldtool:116","worldtool:117","worldtool:118","worldtool:119","worldtool:120","worldtool:121","worldtool:122","worldtool:123","worldtool:124","worldtool:125","worldtool:126","worldtool:127","worldtool:128","worldtool:129","worldtool:130","worldtool:131","worldtool:132","worldtool:133","worldtool:134","worldtool:135","worldtool:136","worldtool:137","worldtool:138","worldtool:139","worldtool:140","worldtool:141","worldtool:142","worldtool:143","worldtool:144","worldtool:145","worldtool:146","worldtool:147","worldtool:148","worldtool:149","worldtool:150","worldtool:151","worldtool:152","worldtool:153","worldtool:154","worldtool:155","worldtool:156","worldtool:157","worldtool:158","worldtool:159","worldtool:160","worldtool:161","worldtool:162","worldtool:163","worldtool:164","worldtool:165","worldtool:166","worldtool:167","worldtool:168","worldtool:169","worldtool:170","worldtool:171","worldtool:172","worldtool:173","worldtool:174","worldtool:175","worldtool:176","worldtool:177","worldtool:178","worldtool:179","worldtool:180","worldtool:181","worldtool:182","worldtool:183","worldtool:184","worldtool:185","worldtool:186","worldtool:187","worldtool:188","worldtool:189","worldtool:190","worldtool:191","worldtool:192","worldtool:193","worldtool:194","worldtool:195","worldtool:196","worldtool:197","worldtool:198","worldtool:199","worldtool:200","worldtool:201","worldtool:202","worldtool:203","worldtool:204","worldtool:205","worldtool:206","worldtool:207","worldtool:208","worldtool:209","worldtool:210","worldtool:211","worldtool:212","worldtool:213","worldtool:214","worldtool:215","worldtool:216","worldtool:217","worldtool:218","worldtool:219","worldtool:220","worldtool:221","worldtool:222","worldtool:223","worldtool:224","worldtool:225","worldtool:226","worldtool:227","worldtool:228","worldtool:229","worldtool:230","worldtool:231","worldtool:232","worldtool:233","worldtool:234","worldtool:235","worldtool:236","worldtool:237","worldtool:238","worldtool:239","worldtool:240","worldtool:241","worldtool:242","worldtool:243","worldtool:244","worldtool:245","worldtool:246","worldtool:247","worldtool:248","worldtool:249","worldtool:250","worldtool:251","worldtool:252","worldtool:253","worldtool:254","worldtool:255","worldtool:256","worldtool:257","worldtool:258","worldtool:259","worldtool:260","worldtool:261","worldtool:262","worldtool:263","worldtool:264","worldtool:265","worldtool:266","worldtool:267","worldtool:268","worldtool:269","worldtool:270","worldtool:271","worldtool:272","worldtool:273","worldtool:274","worldtool:275","worldtool:276","worldtool:277","worldtool:278","worldtool:279","worldtool:280","worldtool:281","worldtool:282","worldtool:283","worldtool:284","worldtool:285","worldtool:286","worldtool:287","worldtool:288","worldtool:289","worldtool:290","worldtool:291","worldtool:292","worldtool:293","worldtool:294","worldtool:295","worldtool:296","worldtool:297","worldtool:298","worldtool:299","worldtool:300","worldtool:301","worldtool:302","worldtool:303","worldtool:304","worldtool:305","worldtool:306","worldtool:307","worldtool:308","worldtool:309","worldtool:310","worldtool:311","worldtool:312","worldtool:313","worldtool:314","worldtool:315","worldtool:316","worldtool:317","worldtool:318","worldtool:319","worldtool:320","worldtool:321","worldtool:322","worldtool:323","worldtool:324","worldtool:325","worldtool:326","worldtool:327","worldtool:328","worldtool:329","worldtool:330","worldtool:331","worldtool:332","worldtool:333","worldtool:334","worldtool:335","worldtool:336","worldtool:337","worldtool:338","worldtool:339","worldtool:340","worldtool:341","worldtool:342","worldtool:343","worldtool:344","worldtool:345","worldtool:346","worldtool:347","worldtool:348","worldtool:349","worldtool:350","worldtool:351","worldtool:352","worldtool:353","worldtool:354","worldtool:355","worldtool:356","worldtool:357","worldtool:358","worldtool:359","worldtool:360","worldtool:361","worldtool:362","worldtool:363","worldtool:364","worldtool:365","worldtool:366","worldtool:367","worldtool:368","worldtool:369","worldtool:370","worldtool:371","worldtool:372","worldtool:373","worldtool:374","worldtool:375","worldtool:376","worldtool:377","worldtool:378","worldtool:379","worldtool:380","worldtool:381","worldtool:382","worldtool:383","worldtool:384","worldtool:385","worldtool:386","worldtool:387","worldtool:388","worldtool:389","worldtool:390","worldtool:391","worldtool:392","worldtool:393","worldtool:394","worldtool:395","worldtool:396","worldtool:397","worldtool:398","worldtool:399","worldtool:400","worldtool:401","worldtool:402","worldtool:403","worldtool:404","worldtool:405","worldtool:406","worldtool:407","worldtool:408","worldtool:409","worldtool:410","worldtool:411","worldtool:412","worldtool:413","worldtool:414","worldtool:415","worldtool:416","worldtool:417","worldtool:418","worldtool:419","worldtool:420","worldtool:421","worldtool:422","worldtool:423","worldtool:424","worldtool:425","worldtool:426","worldtool:427","worldtool:428","worldtool:429","worldtool:430","worldtool:431","worldtool:432","worldtool:433","worldtool:434","worldtool:435","worldtool:436","worldtool:437","worldtool:438","worldtool:439","worldtool:440","worldtool:441","worldtool:442","worldtool:443","worldtool:444","worldtool:445","worldtool:446","worldtool:447","worldtool:448","worldtool:449","worldtool:450","worldtool:451","worldtool:452","worldtool:453","worldtool:454","worldtool:455","worldtool:456","worldtool:457","worldtool:458","worldtool:459","worldtool:460","worldtool:461","worldtool:462","worldtool:463","worldtool:464","worldtool:465","worldtool:466","worldtool:467","worldtool:468","worldtool:469","worldtool:470","worldtool:471","worldtool:472","worldtool:473","worldtool:474","worldtool:475","worldtool:476","worldtool:477","worldtool:478","worldtool:479","worldtool:480","worldtool:481","worldtool:482","worldtool:483","worldtool:484","worldtool:485","worldtool:486","worldtool:487","worldtool:488","worldtool:489","worldtool:490","worldtool:491","worldtool:492","worldtool:493","worldtool:494","worldtool:495","worldtool:496","worldtool:497","worldtool:498","worldtool:499","worldtool:500","worldtool:501","worldtool:502","worldtool:503","worldtool:504","worldtool:505","worldtool:506","worldtool:507","worldtool:508","worldtool:509","worldtool:510","worldtool:511","worldtool:512","worldtool:513","worldtool:514","worldtool:515","worldtool:516","worldtool:517","worldtool:518","worldtool:519","worldtool:520","worldtool:521","worldtool:522","worldtool:523","worldtool:524","worldtool:525","worldtool:526","worldtool:527","worldtool:528","worldtool:529","worldtool:530","worldtool:531","worldtool:532","worldtool:533","worldtool:534","worldtool:535","worldtool:536","worldtool:537","worldtool:538","worldtool:539","worldtool:540","worldtool:541","worldtool:542","worldtool:543","worldtool:544","worldtool:545","worldtool:546","worldtool:547","worldtool:548","worldtool:549","worldtool:550","worldtool:551","worldtool:552","worldtool:553","worldtool:554","worldtool:555","worldtool:556","worldtool:557","worldtool:558","worldtool:559","worldtool:560","worldtool:561","worldtool:562","worldtool:563","worldtool:564","worldtool:565","worldtool:566","worldtool:567","worldtool:568","worldtool:569","worldtool:570","worldtool:571","worldtool:572","worldtool:573","worldtool:574","worldtool:575","worldtool:576","worldtool:577","worldtool:578","worldtool:579","worldtool:580","worldtool:581","worldtool:582","worldtool:583","worldtool:584","worldtool:585","worldtool:586","worldtool:587","worldtool:588","worldtool:589","worldtool:590","worldtool:591","worldtool:592","worldtool:593","worldtool:594","worldtool:595","worldtool:596","worldtool:597","worldtool:598","worldtool:599","worldtool:600","worldtool:601","worldtool:602","worldtool:603","worldtool:604","worldtool:605","worldtool:606","worldtool:607","worldtool:608","worldtool:609","worldtool:610","worldtool:611","worldtool:612","worldtool:613","worldtool:614","worldtool:615","worldtool:616","worldtool:617","worldtool:618","worldtool:619","worldtool:620","worldtool:621","worldtool:622","worldtool:623","worldtool:624","worldtool:625","worldtool:626","worldtool:627","worldtool:628","worldtool:629","worldtool:630","worldtool:631","worldtool:632","worldtool:633","worldtool:634","worldtool:635","worldtool:636","worldtool:637","worldtool:638","worldtool:639","worldtool:640","worldtool:641","worldtool:642","worldtool:643","worldtool:644","worldtool:645","worldtool:646","worldtool:647","worldtool:648","worldtool:649","worldtool:650","worldtool:651","worldtool:652","worldtool:653","worldtool:654","worldtool:655","worldtool:656","worldtool:657","worldtool:658","worldtool:659","worldtool:660","worldtool:661","worldtool:662","worldtool:663","worldtool:664","worldtool:665","worldtool:666","worldtool:667","worldtool:668","worldtool:669","worldtool:670","worldtool:671","worldtool:672","worldtool:673","worldtool:674","worldtool:675","worldtool:676","worldtool:677","worldtool:678","worldtool:679","worldtool:680","worldtool:681","worldtool:682","worldtool:683","worldtool:684","worldtool:685","worldtool:686","worldtool:687","worldtool:688","worldtool:689","worldtool:690","worldtool:691","worldtool:692","worldtool:693","worldtool:694","worldtool:695","worldtool:696","worldtool:697","worldtool:698","worldtool:699","worldtool:700","worldtool:701","worldtool:702","worldtool:703","worldtool:704","worldtool:705","worldtool:706","worldtool:707","worldtool:708","worldtool:709","worldtool:710","worldtool:711","worldtool:712","worldtool:713","worldtool:714","worldtool:715","worldtool:716","worldtool:717","worldtool:718","worldtool:719","worldtool:720","worldtool:721","worldtool:722","worldtool:723","worldtool:724","worldtool:725","worldtool:726","worldtool:727","worldtool:728","worldtool:729","worldtool:730","worldtool:731","worldtool:732","worldtool:733","worldtool:734","worldtool:735","worldtool:736","worldtool:737","worldtool:738","worldtool:739","worldtool:740","worldtool:741","worldtool:742","worldtool:743","worldtool:744","worldtool:745","worldtool:746","worldtool:747","worldtool:748","worldtool:749","worldtool:750","worldtool:751","worldtool:752","worldtool:753","worldtool:754","worldtool:755","worldtool:756","worldtool:757","worldtool:758","worldtool:759","worldtool:760","worldtool:761","worldtool:762","worldtool:763","worldtool:764","worldtool:765","worldtool:766","worldtool:767","worldtool:768","worldtool:769","worldtool:770","worldtool:771","worldtool:772","worldtool:773","worldtool:774","worldtool:775","worldtool:776","worldtool:777","worldtool:778","worldtool:779","worldtool:780","worldtool:781","worldtool:782","worldtool:783","worldtool:784","worldtool:785","worldtool:786","worldtool:787","worldtool:788","worldtool:789","worldtool:790","worldtool:791","worldtool:792","worldtool:793","worldtool:794","worldtool:795","worldtool:796","worldtool:797","worldtool:798","worldtool:799","worldtool:800","worldtool:801","worldtool:802","worldtool:803","worldtool:804","worldtool:805","worldtool:806","worldtool:807","worldtool:808","worldtool:809","worldtool:810","worldtool:811","worldtool:812","worldtool:813","worldtool:814","worldtool:815","worldtool:816","worldtool:817","worldtool:818","worldtool:819","worldtool:820","worldtool:821","worldtool:822","worldtool:823","worldtool:824","worldtool:825","worldtool:826","worldtool:827","worldtool:828","worldtool:829","worldtool:830","worldtool:831","worldtool:832","worldtool:833","worldtool:834","worldtool:835","worldtool:836","worldtool:837","worldtool:838","worldtool:839","worldtool:840","worldtool:841","worldtool:842","worldtool:843","worldtool:844","worldtool:845","worldtool:846","worldtool:847","worldtool:848","worldtool:849","worldtool:850","worldtool:851","worldtool:852","worldtool:853","worldtool:854","worldtool:855","worldtool:856","worldtool:857","worldtool:858","worldtool:859","worldtool:860","worldtool:861","worldtool:862","worldtool:863","worldtool:864","worldtool:865","worldtool:866","worldtool:867","worldtool:868","worldtool:869","worldtool:870","worldtool:871","worldtool:872","worldtool:873","worldtool:874","worldtool:875","worldtool:876","worldtool:877","worldtool:878","worldtool:879","worldtool:880","worldtool:881","worldtool:882","worldtool:883","worldtool:884","worldtool:885","worldtool:886","worldtool:887","worldtool:888","worldtool:889","worldtool:890","worldtool:891","worldtool:892","worldtool:893","worldtool:894","worldtool:895","worldtool:896","worldtool:897","worldtool:898","worldtool:899","worldtool:900","worldtool:901","worldtool:902","worldtool:903","worldtool:904","worldtool:905","worldtool:906","worldtool:907","worldtool:908","worldtool:909","worldtool:910","worldtool:911","worldtool:912","worldtool:913","worldtool:914","worldtool:915","worldtool:916","worldtool:917","worldtool:918","worldtool:919","worldtool:920","worldtool:921","worldtool:922","worldtool:923","worldtool:924","worldtool:925","worldtool:926","worldtool:927","worldtool:928","worldtool:929","worldtool:930","worldtool:931","worldtool:932","worldtool:933","worldtool:934","worldtool:935","worldtool:936","worldtool:937","worldtool:938","worldtool:939","worldtool:940","worldtool:941","worldtool:942","worldtool:943","worldtool:944","worldtool:945","worldtool:946","worldtool:947","worldtool:948","worldtool:949","worldtool:950","worldtool:951","worldtool:952","worldtool:953","worldtool:954","worldtool:955","worldtool:956","worldtool:957","worldtool:958","worldtool:959","worldtool:960","worldtool:961","worldtool:962","worldtool:963","worldtool:964","worldtool:965","worldtool:966","worldtool:967","worldtool:968","worldtool:969","worldtool:970","worldtool:971","worldtool:972","worldtool:973","worldtool:974","worldtool:975","worldtool:976","worldtool:977","worldtool:978","worldtool:979","worldtool:980","worldtool:981","worldtool:982","worldtool:983","worldtool:984","worldtool:985","worldtool:986","worldtool:987","worldtool:988","worldtool:989","worldtool:990","worldtool:991","worldtool:992","worldtool:993","worldtool:994","worldtool:995","worldtool:996","worldtool:997","worldtool:998","worldtool:999","worldtool:1000"]

## Addon stuff ##

# Addon list storage
data modify storage worldtool:storage AddonList set value []

# Addon variables
scoreboard players set $addons worldtool 0
scoreboard players set $generalToolAddons worldtool 0
scoreboard players set $brushToolAddons worldtool 0
scoreboard players set $shapeToolAddons worldtool 0
scoreboard players set $settingAddons worldtool 0
scoreboard players set $optionAddons worldtool 0
scoreboard players set $greeneryAddons worldtool 0
function #worldtool:addon/load

# Forceload for access to storing blocks at 27450 19
execute in minecraft:overworld run forceload add 27450 19
execute in minecraft:the_nether run forceload add 27450 19
execute in minecraft:the_end run forceload add 27450 19
function #worldtool:addon/init_dimensions/forceload
scoreboard players set #loadWaitTime worldtool 0
execute unless score $processRunning worldtool matches 1.. run function worldtool:technical/load/wait_for_load

execute if score $reloadMessage worldtool matches 1 run tellraw @a ["",{"text": "[WorldTool]: ","hoverEvent": {"action": "show_text","value": "Version 0.6-experimental"}},{"text": "Data reloaded!","color": "green"}]

function worldtool:particles/clock
