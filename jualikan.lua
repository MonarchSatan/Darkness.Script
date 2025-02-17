local tab_ = {}

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
  end
  return false
end

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
