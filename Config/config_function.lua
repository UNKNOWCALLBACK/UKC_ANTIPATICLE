Config_function = {}


Config_function.Extended = function()
    ESX = exports['es_extended']:getSharedObject()
end    

Config_function.ifscalefull = function(playername,source,checkscale,hashpaticle) --ถ้าpaticleเกินลิมิตที่ Config.scaledetect กำหนด
    --playername : ชื่อplayerที่server getมาจาก client โดยเป็นชื่อclient 
    --source : ไอดี
    --checkscale : คือค่าdataจำนวนsizeของpaticleที่ถูกสร้างขึ้นโดยทำงานร่วมกับ Config.scaledetect
    --hashpaticle : คือค่าhashของpaticle ซึ่งสามารถนำไปเช็คค่าต่างๆได้
    print('^2[ANTI_PARTICLE] :  ^3[' ..playername..']  ^1ID: (' .. source .. ') ^1 SCALE : (' .. checkscale .. ') ^3HASH :  ('..hashpaticle..')  ^5POWER BY UNKNOWNCALLBACK')
    DropPlayer(source,'ANTIPATICLE')
end    


Config_function.ifscalenotfull = function() --เมื่อมีการใช้paticleแต่ไม่เกินลิมิตscale
    return  --returnค่าต่างๆกลับ
end    

Config_function.backlistfound = function(playername,source,hashpaticle)
    --playername : ชื่อplayerที่server getมาจาก client โดยเป็นชื่อclient 
    --source : ไอดี
    --hashpaticle : คือค่าhashของpaticle ซึ่งสามารถนำไปเช็คค่าต่างๆได้
    DropPlayer(source,'ANTIPATICLEBACKLIST')
end    

Config_function.printdataetc = function(dataAsString,playername,source,checkscale,hashpaticle,playernamexs,jobplayer,admin)
--dataAsString : ชุดข้อมูลต่างๆที่ออกมาจากdata
--playername : ชื่อplayer ใน client 
--source : ไอดี
--checkscale : สเกลของ paticle
--hashpaticle : ค่าhashของpaticle
--playernamexs : ชื่อ player ของ xplayer
--jobplayer : job ของ player โดยget xplayer
--admin : admin โดยget xplayer
end    


Config_function.ifplayerisadmin = function() --function เมื่อplayerเป็นadmin
   return 
   --ถ้าfunctionนี้เป็น nilจะไม่bypassให้
   --ถ้า return คือจะไม่มีผลใดๆและจะreturnค่าต่างๆกลับ
end    