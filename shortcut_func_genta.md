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

* `--@shortcut_func  hit / ( place same as plant )`

```lua
-- u can use requestTileChange(int_x, int_y, int_value) instead.
-- or:

function hit(a, b)
sendPacketRaw(false, {
type = 3,
value = 18,
punchx = a,
punchy = b,
x = getLocal().pos.x,
y = getLocal().pos.y
})
end 

function place(a, b, value) -- its same as plant, u can use this too
sendPacketRaw(false, {
type = 3,
value = value
punchx = a,
punchy = b,
x = getLocal().pos.x
y = getLocal().pos.y
})
end 
```
