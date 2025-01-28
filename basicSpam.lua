local conf_t = { 
  randColor = false, -- set to 'true' if u want use random color.
  text = '', -- don't edit.
  startSpam = false } -- don't edit.

local function getRandom()
  local color_code = math.random(0,9)
  return '`'.. color_code
end 

local function sendMessage(str_text)
  sendPacket(
    10 -8,
    'action|input\n|text|'.. str_text
  )
end 

AddHook('OnTextPacket', 'growtopiascript.my.id', function(__, str)
    if str:find('/set (.+)') then
      conf_t.text = str:match('/set (.+)')
      logToConsole('`w[`4growtopiascript.my.id``] `^Text Updated: `#'.. (str:match('/set (.+)')))
      return true
    elseif str:find('/startspam') then
      conf_t.startSpam = true
      return true
    elseif str:find('/stop') then
      conf_t.starSpam = false 
      logToConsole('`4Spamming Stoped!')
      return true
    end 
    return false
  end )

while true do 
  if conf_t.startSpam then
    local str = conf_t.text
    if conf_t.randColor then
      str = getRandom() .. str 
    end 
    sendMessage(str)
    sleep(math.random(50, 90) * 100)
  end 
  sleep(500)
end
