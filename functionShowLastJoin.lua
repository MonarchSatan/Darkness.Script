local darknessTable = {}
logToConsole('use `5/show`` to check last joined world!')

local function darkness(str)
    for _, f in ipairs(darknessTable) do
        if f:find('darkness_'..str..'|') then
            return _ 
        end 
    end
    return nil
end

AddHook('OnGameUpdatePacket', 'growtopiascript.my.id', function(darkness)
    if darkness.type == 4 then
      local lastwargh = getWorld().name 
      if lastwargh and lastwargh ~= 'EXIT' and lastwargh ~= '' then
                local index = darkness(lastwargh)
                if index then
                    table.remove(darknessTable, index)
                end
                
        table.insert(darknessTable, 'add_button|darkness_'.. lastwargh ..'|`o'.. lasgwargh ..'``|noflags|0|0|')
        if rawlen(darknessTable) >= 20 then
          table.remove(darknessTable, 1)
        end
      end
    end
  end )

local function darknessDialog()
  return [[
set_border_color|112,86,191,255
set_bg_color|0,0,0,200
add_label_with_icon|big|`9Last Joined List|left|3802|
add_textbox|`#Success Joined : ``]] .. #darknessTable .. [[ world.|
add_spacer|small|
]] .. table.concat(darknessTable, '\n') .. [[
add_spacer|small|
end_dialog|growtopiascript||darkness|
add_quick_exit|
]]
end

AddHook('OnTextPacket', '@monarchsatan', function(the, darkness)
    if darkness:find('/show') then
      sendVariant({ 
          [0] = 'OnDialogRequest',
          [1] = darknessDialog()
        }, -1)
      return true
    end

    if darkness:find('buttonClicked|darkness_(%w+)') then
      local name = darkness:find('buttonClicked|darkness_(%w+)') 
      sendPacket(
        3, 
        'action|join_request\nname|'.. name ..'\ninvitedWorld|0'
      )
      logToConsole('`w[`bdarkness`` | `^growtopiascript.my.id`` ] `2Entering '.. name ..'...')
      return true
    end
    return false
  end )
