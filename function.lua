local t_ = {}

t_.getButton = function(boolean)
  if not boolean then
    return '`4DISABLE``'
  else 
    return '`2ENABLE``'
  end 
end

t_.log = function(str_text)
  return (logToConsole('`w[`^www.growtopiascript.my.id``] '.. str_text))
end 

t_.sendParticle = function(value, x, y, count) 
    sendVariant({
        [0] = "OnParticleEffect",
        [1] = value, 
        [2] = {
            x = x, 
            y = y
        }, 
        [3] = tostring(count / 1.0), 
        [4] = 1
    })
end

