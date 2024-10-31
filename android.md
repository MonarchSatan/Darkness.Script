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

## sendPacket
`sendPacket(int: type, str: packet)`

Example:
```lua
sendPacket(2, 'action|input\n|text|hello from GENTA HAX!')
```