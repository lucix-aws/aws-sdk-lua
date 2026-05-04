local types = require("signin.types")

local record Client
    createOAuth2Token: function(Client, types.CreateOAuth2TokenInput): types.CreateOAuth2TokenOutput, table
end

local record M
    new: function(table): Client
end

return M
