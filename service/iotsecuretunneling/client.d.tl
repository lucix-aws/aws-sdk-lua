local types = require("iotsecuretunneling.types")

local record Client
    closeTunnel: function(Client, types.CloseTunnelInput): types.CloseTunnelOutput, table
    describeTunnel: function(Client, types.DescribeTunnelInput): types.DescribeTunnelOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTunnels: function(Client, types.ListTunnelsInput): types.ListTunnelsOutput, table
    openTunnel: function(Client, types.OpenTunnelInput): types.OpenTunnelOutput, table
    rotateTunnelAccessToken: function(Client, types.RotateTunnelAccessTokenInput): types.RotateTunnelAccessTokenOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
