* `--@shortcut_func purchase item in store gems.`

```lua
function purchase(str)
sendPacket(2, 'action|buy\nitem|'.. str)
end 

purchase('world_lock')
```

* `--@shorcut_func get amount of item in inventory.`

```lua
function getItemCount(int_item)
for _, item in pairs(getInventory()) do
if item.id == tonumber(int_item) then
return item.amount
end
end
return 0
end

logToConsole('i have '.. getItemCount(242) ..' world lock!')
```

* `--@shortcut_func block dialog`

```lua
-- block only lock ( for gamble helper script )

AddHook('OnVarlist', 'S  x  T', function(var_t, net_id)
if var_t[0] == 'OnDialogRequest' and var_t[1]:find('drop_item') then
if var_t[1]:find('World Lock') or var_t[1]:find('Diamond Lock') or var_t[1]:find('Blue Gem Lock') then
return true
end
end
return false
end )

-- block all dialog

AddHook('OnVarlist', 'S  x  T', function(var_t, net_id)
if var_t[0] == 'OnDialogRequest' then
return true
end
return false
end )
```

