local types = require("kinesisvideomedia.types")

local record Client
    getMedia: function(Client, types.GetMediaInput): types.GetMediaOutput, table
end

local record M
    new: function(table): Client
end

return M
