local types = require("kinesisvideosignaling.types")

local record Client
    getIceServerConfig: function(Client, types.GetIceServerConfigInput): types.GetIceServerConfigOutput, table
    sendAlexaOfferToMaster: function(Client, types.SendAlexaOfferToMasterInput): types.SendAlexaOfferToMasterOutput, table
end

local record M
    new: function(table): Client
end

return M
