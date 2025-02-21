local darknessTable = {}
logToConsole('use `5/show`` to check last joined world!')

AddHook('OnGameUpdatePacket', 'growtopiascript.my.id', function(darkness)
    if darkness.type == 4 then
      local lastwargh = getWorld().name 
      if lastwargh and lastwargh ~= 'EXIT' and lastwargh ~= '' then
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
set_bg_color|43,34,74,200
add_label_with_icon|big|`9Last Joined List|left|3802|
add_textbox|`#Success Joined : ``]] .. #world_t .. [[ Worlds.|
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
