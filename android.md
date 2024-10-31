### ‹ GENTAHAX ANDROID DOCS ›

* `Script File Path:`
```
storage/emulated/0/Android/media/GENTAHAX/Script/urScript.lua
```

# 𝖋𝖚𝖓𝖈𝖙𝖎𝖔𝖓

* [sendPacket](#sendpacket)
* [sendVariant](#sendvariant)
* [sendPacketRaw](#sendpacketraw)
* [sleep](#sleep)
* [doLog](#dolog)
* [logToConsole](#logToConsole)
* [callToast](#callToast)
* [doToast](#dotoast)
* [findPath](#findpath)
* [getLocal](#getlocal)
* [getWorld](#getworld)
* [getTile](#gettile)
* [checkTile](#checktile)
* [getExtraTile](#getextratile)
* [getNpc](#getnpc)
* [getTouchAtScreenPos](#gettouchatscreenpos)
* [getMac](#getmac)
* [getGid](#getgid)
* [setMac](#setmac)
* [setGid](#setgid)
* [randomMac](#randommac)
* [randomGid](#randomgid)
* [getCurrentTimeInternal](#getcurrenttimeinternal)
* [getDiscordID](#getdiscordid)
* [checkPath](#checkpath)
* [requestCollect](#requestCollect)
* [requestTileChange](#requesttilechange)
* [getInventory](#getinventory)
* [getWorldObject](#getworldobject)
* [getPlayerlist](#getplayerlist)
* [getPlayerByNetID](#getplayerbynteid)
* [AddHook](#addhook)
* [gentaHook](#gentahook)
* [removeHook](#removehook)
* [removeHooks](#removehooks)
* [sendWebhook](#sendwebhook)
* [makeRequest](#makerequest)
* [getItemByID](#getitembyid)
* [getItemByName](#getitembyname)
* [getCheat](#getcheat)
* [toggleCheat](#togglecheat)

# 𝖘𝖙𝖗𝖚𝖈𝖙𝖚𝖗𝖊

* [tankPacketStruct](#tankpacketstruct)
* [response](#response)
* [camera](#camera)
* [netAvatar](#netavatar)
* [tile](#tile)
* [tileExtra](#tileextra)
* [world](#world)
* [tileFlag](#tileflag)
* [itemInfo](#iteminfo)
* [worldObject](#worldobject)
* [NPCList](#npclist)
* [inventory](#inventory)
* [vec2i/vec2f](#vec2i/vec2)
* [vec3i/vec3f](#vec3i/vec3f)
* [vec4i/vec4f](#vec4i/vec4f)

`--°°--°°--°°--`

# 𝖋𝖚𝖓𝖈𝖙𝖎𝖔𝖓

### sendPacket
* `sendPacket(int: type, str: packet)`

Example:
```lua
sendPacket(2, 'action|input\n|text|hello from GENTA HAX!')
```

### sendVariant
* `sendVariant(variantlist_t: var, int: netId, int: delay)`

Example:
```lua
var = {}
var[0] = 'OnConsoleMessage'
var[1] = 'hello world!'
sendVariant(var, -1, 200)

or

sendVariant({ [0] = 'OnConsoleMessage', [1] = 'hello world! }, -1, 200)

same

sendVariant({ [0] = 'OnConsoleMessage', [1] = 'hello world! })
```

### sendPacketRaw
* `sendPacketRaw(boolean: send_to_client, tankPacketStruct)

Example:
```lua
sendPacketRaw(false,
	{ type = 3,
		value = 242,
		punchx = math.floor(getLocal().pos.x / 32),
		punchy = math.floor(getLocal().pos.y / 32) - 1,
		x = getLocal().pos.x,
		y = getLocal().pos.y }
)
```

### sleep
* `sleep(int: sleep_in_ms) -- milisecondtol`

Example:
```lua
sleep(7740)
```

### doLog
* `doLog(str: text)`

Example:
```lua
doLog('gacor kang!')
```

### logToConsole
* `logToConslole(str: text)`

Example:
```lua
logToConsole('hello from genta hax!')
```

### callToast
* `callToast(str: text, int: type)`
`1 = Long Time`
`0 = Short Time`

Example:
```lua
callToast('GENTA7740', 1)
```

### doToast
* `doToast(int: toastType, int: dissmissTimeInMilliSeconds, str: text)`

Example:
```lua
gatau gweh ini blm nyoba :troll:
```

### findPath
* `findPath(int: x, int: y)`

Example:
```lua
findPath(0, 0)
```

### getLocal
* `getLocal() -- no param`

Example:
```lua
local myName = getLocal().name
logToConsole('hello world, my name is '.. myName ..' !')
```

### getWorld
* `getWorld() -- no param`

Example:
```lua
local world = getWorld().name
logToConsole('iam standing at '.. world ..' !')
```

### getTile
* `getTile() -- no param`

Example:
```lua
for _, tile in pairs(getTile()) do 
if tile.fg == 242 then
logToConsole('Found World Lock At : ('.. tile.pos.x ..', '.. tile.pos.y ..')')
  end 
end
```

### checkTile
* `checkTile(int: x, int: y)`

Example:
```lua
local tile = checkTile(0, 0)
logToConsole('Fg ID : '.. tile.fg)
```

### getExtraTile
* `getExtraTile(int: x, int: y)`

Example:
```lua
local extra = getExtraTile(0, 0)
logToConsole('extra type: '.. extra.type)
```