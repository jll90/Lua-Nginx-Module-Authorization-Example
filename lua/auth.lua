function parseAuthHeader(headers)
  local authHeader = headers['Authorization']
  if authHeader == nil then
    return nil
  end

  return string.match(authHeader, "Bearer%s(%a+)")
end

function write403Message ()
  ngx.header.content_type = 'text/plain'
  ngx.status = 403
  ngx.say("403 Forbidden: You don\'t have access to this resource.")
  return ngx.exit(403)
end

local headers = ngx.req.get_headers()
local authHeader = parseAuthHeader(headers)

if authHeader ~= nil then

else
  write403Message()
end



