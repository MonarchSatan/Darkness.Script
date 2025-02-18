local config = {
  bot_token = '',
  server_id = ''
}

local function getDiscord(int_)
  if config.bot_token == '' then
    return 'fill the bot token first, for access DISCORD_API !'
  end
  
  if not json then
    json = load(makeRequest("https://raw.githubusercontent.com/LuaDist/dkjson/refs/heads/master/dkjson.lua","GET").content)()
  end

  local user_ = {
    name = '',
    global_name = '',
    avatar_url = '',
    getRole = function(config.server_id)
      local valid_roles = 'https://discord.com/api/v10/guilds/' .. config.server_id .. '/members/' .. int_
      local the_header = {
        ['Content-Type'] = 'application/json',
        ['Authorization'] = 'Bot '.. config.bot_token
      }
      local isResponse = makeRequest(valid_roles, 'GET', the_header)
      if isResponse then
        local userHas = json.decode(isResponse)
        return userHas.roles
      else
        return nil
      end
    end }

  local valid_user = 'https://discord.com/api/v10/users/' .. int_
  local user_header = {
    ['Content-Type'] = 'application/json',
    ['Authorization'] = 'Bot '.. config.bot_token
  }
  local response = makeRequest(valid_user, 'GET', user_header)
  if response then
    local getUser = json.decode(response)
    user_.name = getUser.username
    user_.global_name = getUser.global_name
    user_.avatar_url = 'https://cdn.discordapp.com/avatars/' .. int_ .. '/' .. getUser.avatar .. '.png'
  end
  return user_
end

-- usage:
discord = getDiscord(1071637569147768903)
doLog(discord)
