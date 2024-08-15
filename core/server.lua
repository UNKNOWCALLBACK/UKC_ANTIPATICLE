ESX = Config_function.Extended()
local admin = false
local playerishaspaticle = false
AddEventHandler('ptFxEvent', function(source, data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)
    local dataAsString = json.encode(data) 
    local checkscale = data.scale
    local hashpaticle = data.effectHash
    local playername = GetPlayerName(_source)
    local playernamexs = xPlayer.getName()
    local jobplayer = xPlayer.getJob()
    local admins = xPlayer.getGroup()
    local source = _source 
   if admins == 'superadmin' or admins == 'admin' or admins == 'mod' then
      pcall(function() Config_function.ifplayerisadmin() end) 
      admin = false
      if Config_function.ifplayerisadmin ~= nil then
        admin = true
      end
   end 
    if checkscale ~= nil and tonumber(checkscale) < Config.scaledetect then
      pcall(function() Config_function.ifscalenotfull() end)
      playerishaspaticle = true
    else
        if admin  then
            pcall(function() Config_function.ifscalefull() end)
        end    
        playerishaspaticle = false
    end

    if hashpaticle ~= nil and Config.backlisthash ~= nil then
        for _, blacklistedHash in ipairs(Config.backlisthash) do
            if hashpaticle == blacklistedHash then
                pcall(function()
                    Config_function.backlistfound(v)
                end)
                break
            end
        end
    end

end)

function admins()
    if admin then
        admins = true
    else   
        admins = false 
    end    
end    


function paticlecheck()
    if playerishaspaticle then
        paticlecheck = true
    else   
        paticlecheck = false 
    end    
end    

exports('admincheck',admins)
exports('playerishaspaticle', paticlecheck)