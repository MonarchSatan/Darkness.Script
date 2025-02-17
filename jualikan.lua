local tab_, sell = {}, false

AddHook('OnVarlist', '@monarchsatan', function(var_t)
        if var_t[0]:find('OnDialogRequest') and var_t[1]:find('sellfish') then
            tab_ = {}
            for content in var_t[1]:gmatch('[^\n]+') do
                if content:find('embed_data') then
                    local embed = { content:match('embed_data|([^|]+)|([^|]+)') }
                    table.insert(tab_t, embed[1])
                    table.insert(tab_t, embed[2])
                end
            end
            return true
        end
        
        if var_t[0] == 'OnConsoleMessage' and var_t[1]:find('You caught a ```%d+ lb%. .+!``') then
            local berat, name = var[1]:match('You caught a ```(%d+) lb%. (.+)!``')
            logToConsole('`w[`4 S A T A N`` ] `oTrying To `2Sell : `9'.. besar ..'. '.. name)
            sell = true
        end
        
        return false
    end )


function createPacket(str_packet)
  if #tab_ < 8 then
    return nil
  end

  return string.format([[action|dialog_return
dialog_name|%s
%s|%s
%s|%s
%s|%s
%s|%s
buttonClicked|sell_all

fish_3440|0
fish_3820|0
fish_3620|0
fish_3544|0
fish_5100|0
fish_3746|0
]], str_packet,
    tab_[1], tab_[2],
    tab_[3], tab_[4],
    tab_[5], tab_[6],
    tab_[7], tab_[8]
  )
end

local var_useless = 100
for i = 1, var_useless do 
        logToConsole('`wScanning Script: '.. i .. '/'.. var_useless)
        sleep(math.randon(5, 10) * 100)
end

while true do 
    sleep(math.random(10, 50) * 10)
    if sell then
        sendPacket(
            2,
            createPacket('sellfish')
        )
        logToConsole('`w[`4 S A T A N`` ] `2Success``!')
        sell = false
    end
    sleep(math.random(10, 50) * 10)
end
