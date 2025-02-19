local darkness = {
  item = 5640,
  interval = { place = 3, hit = 3 },
  pos = { math.floor(getLocal().pos.x / 32), math.floor(getLocal().pos.y / 32) },
  far = 8
}

function multiraw(the, dark, ness)
  sendPacketRaw(false,
    { type = 3,
      value = ness or 18,
      punchx = the,
      punchy = dark,
      x = the * 32,
      y = dark * 32
    }
  )
end

function putnbreak()
  for i = 1, darkness.far do
    multiraw(darkness.pos[1] + i, darkness.pos[2], darkness.item)
    sleep(darkness.interval.place)
    multiraw(darkness.pos[1], darkness.pos[2])
    sleep(darkness.interval.hit)
  end
  sleep(1)
end
logToConsole('`^Script Active``!')

while true do
  if getWorld().name ~= nil then
    putnbreak()
  else
    sleep(1010)
  end
  sleep(1)
end
