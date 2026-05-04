local types = require("appmesh.types")

local record Client
    createGatewayRoute: function(Client, types.CreateGatewayRouteInput): types.CreateGatewayRouteOutput, table
    createMesh: function(Client, types.CreateMeshInput): types.CreateMeshOutput, table
    createRoute: function(Client, types.CreateRouteInput): types.CreateRouteOutput, table
    createVirtualGateway: function(Client, types.CreateVirtualGatewayInput): types.CreateVirtualGatewayOutput, table
    createVirtualNode: function(Client, types.CreateVirtualNodeInput): types.CreateVirtualNodeOutput, table
    createVirtualRouter: function(Client, types.CreateVirtualRouterInput): types.CreateVirtualRouterOutput, table
    createVirtualService: function(Client, types.CreateVirtualServiceInput): types.CreateVirtualServiceOutput, table
    deleteGatewayRoute: function(Client, types.DeleteGatewayRouteInput): types.DeleteGatewayRouteOutput, table
    deleteMesh: function(Client, types.DeleteMeshInput): types.DeleteMeshOutput, table
    deleteRoute: function(Client, types.DeleteRouteInput): types.DeleteRouteOutput, table
    deleteVirtualGateway: function(Client, types.DeleteVirtualGatewayInput): types.DeleteVirtualGatewayOutput, table
    deleteVirtualNode: function(Client, types.DeleteVirtualNodeInput): types.DeleteVirtualNodeOutput, table
    deleteVirtualRouter: function(Client, types.DeleteVirtualRouterInput): types.DeleteVirtualRouterOutput, table
    deleteVirtualService: function(Client, types.DeleteVirtualServiceInput): types.DeleteVirtualServiceOutput, table
    describeGatewayRoute: function(Client, types.DescribeGatewayRouteInput): types.DescribeGatewayRouteOutput, table
    describeMesh: function(Client, types.DescribeMeshInput): types.DescribeMeshOutput, table
    describeRoute: function(Client, types.DescribeRouteInput): types.DescribeRouteOutput, table
    describeVirtualGateway: function(Client, types.DescribeVirtualGatewayInput): types.DescribeVirtualGatewayOutput, table
    describeVirtualNode: function(Client, types.DescribeVirtualNodeInput): types.DescribeVirtualNodeOutput, table
    describeVirtualRouter: function(Client, types.DescribeVirtualRouterInput): types.DescribeVirtualRouterOutput, table
    describeVirtualService: function(Client, types.DescribeVirtualServiceInput): types.DescribeVirtualServiceOutput, table
    listGatewayRoutes: function(Client, types.ListGatewayRoutesInput): types.ListGatewayRoutesOutput, table
    listMeshes: function(Client, types.ListMeshesInput): types.ListMeshesOutput, table
    listRoutes: function(Client, types.ListRoutesInput): types.ListRoutesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listVirtualGateways: function(Client, types.ListVirtualGatewaysInput): types.ListVirtualGatewaysOutput, table
    listVirtualNodes: function(Client, types.ListVirtualNodesInput): types.ListVirtualNodesOutput, table
    listVirtualRouters: function(Client, types.ListVirtualRoutersInput): types.ListVirtualRoutersOutput, table
    listVirtualServices: function(Client, types.ListVirtualServicesInput): types.ListVirtualServicesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateGatewayRoute: function(Client, types.UpdateGatewayRouteInput): types.UpdateGatewayRouteOutput, table
    updateMesh: function(Client, types.UpdateMeshInput): types.UpdateMeshOutput, table
    updateRoute: function(Client, types.UpdateRouteInput): types.UpdateRouteOutput, table
    updateVirtualGateway: function(Client, types.UpdateVirtualGatewayInput): types.UpdateVirtualGatewayOutput, table
    updateVirtualNode: function(Client, types.UpdateVirtualNodeInput): types.UpdateVirtualNodeOutput, table
    updateVirtualRouter: function(Client, types.UpdateVirtualRouterInput): types.UpdateVirtualRouterOutput, table
    updateVirtualService: function(Client, types.UpdateVirtualServiceInput): types.UpdateVirtualServiceOutput, table
end

local record M
    new: function(table): Client
end

return M
