local types = require("rtbfabric.types")

local record Client
    acceptLink: function(Client, types.AcceptLinkInput): types.AcceptLinkOutput, table
    createInboundExternalLink: function(Client, types.CreateInboundExternalLinkInput): types.CreateInboundExternalLinkOutput, table
    createLink: function(Client, types.CreateLinkInput): types.CreateLinkOutput, table
    createOutboundExternalLink: function(Client, types.CreateOutboundExternalLinkInput): types.CreateOutboundExternalLinkOutput, table
    createRequesterGateway: function(Client, types.CreateRequesterGatewayInput): types.CreateRequesterGatewayOutput, table
    createResponderGateway: function(Client, types.CreateResponderGatewayInput): types.CreateResponderGatewayOutput, table
    deleteInboundExternalLink: function(Client, types.DeleteInboundExternalLinkInput): types.DeleteInboundExternalLinkOutput, table
    deleteLink: function(Client, types.DeleteLinkInput): types.DeleteLinkOutput, table
    deleteOutboundExternalLink: function(Client, types.DeleteOutboundExternalLinkInput): types.DeleteOutboundExternalLinkOutput, table
    deleteRequesterGateway: function(Client, types.DeleteRequesterGatewayInput): types.DeleteRequesterGatewayOutput, table
    deleteResponderGateway: function(Client, types.DeleteResponderGatewayInput): types.DeleteResponderGatewayOutput, table
    getInboundExternalLink: function(Client, types.GetInboundExternalLinkInput): types.GetInboundExternalLinkOutput, table
    getLink: function(Client, types.GetLinkInput): types.GetLinkOutput, table
    getOutboundExternalLink: function(Client, types.GetOutboundExternalLinkInput): types.GetOutboundExternalLinkOutput, table
    getRequesterGateway: function(Client, types.GetRequesterGatewayInput): types.GetRequesterGatewayOutput, table
    getResponderGateway: function(Client, types.GetResponderGatewayInput): types.GetResponderGatewayOutput, table
    listLinks: function(Client, types.ListLinksInput): types.ListLinksOutput, table
    listRequesterGateways: function(Client, types.ListRequesterGatewaysInput): types.ListRequesterGatewaysOutput, table
    listResponderGateways: function(Client, types.ListResponderGatewaysInput): types.ListResponderGatewaysOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    rejectLink: function(Client, types.RejectLinkInput): types.RejectLinkOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateLink: function(Client, types.UpdateLinkInput): types.UpdateLinkOutput, table
    updateLinkModuleFlow: function(Client, types.UpdateLinkModuleFlowInput): types.UpdateLinkModuleFlowOutput, table
    updateRequesterGateway: function(Client, types.UpdateRequesterGatewayInput): types.UpdateRequesterGatewayOutput, table
    updateResponderGateway: function(Client, types.UpdateResponderGatewayInput): types.UpdateResponderGatewayOutput, table
end

local record M
    new: function(table): Client
end

return M
