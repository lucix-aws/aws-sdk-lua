local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appmesh.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appmesh.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AppMesh"
    cfg.signing_name = "appmesh"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateGatewayRoute",
        input_schema = types.CreateGatewayRouteInput,
        output_schema = types.CreateGatewayRouteOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes",
    }, options)
end

function Client:createMesh(input, options)
    return self:invokeOperation(input, {
        name = "CreateMesh",
        input_schema = types.CreateMeshInput,
        output_schema = types.CreateMeshOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes",
    }, options)
end

function Client:createRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoute",
        input_schema = types.CreateRouteInput,
        output_schema = types.CreateRouteOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes",
    }, options)
end

function Client:createVirtualGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualGateway",
        input_schema = types.CreateVirtualGatewayInput,
        output_schema = types.CreateVirtualGatewayOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualGateways",
    }, options)
end

function Client:createVirtualNode(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualNode",
        input_schema = types.CreateVirtualNodeInput,
        output_schema = types.CreateVirtualNodeOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualNodes",
    }, options)
end

function Client:createVirtualRouter(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualRouter",
        input_schema = types.CreateVirtualRouterInput,
        output_schema = types.CreateVirtualRouterOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualRouters",
    }, options)
end

function Client:createVirtualService(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualService",
        input_schema = types.CreateVirtualServiceInput,
        output_schema = types.CreateVirtualServiceOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualServices",
    }, options)
end

function Client:deleteGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGatewayRoute",
        input_schema = types.DeleteGatewayRouteInput,
        output_schema = types.DeleteGatewayRouteOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}",
    }, options)
end

function Client:deleteMesh(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMesh",
        input_schema = types.DeleteMeshInput,
        output_schema = types.DeleteMeshOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}",
    }, options)
end

function Client:deleteRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoute",
        input_schema = types.DeleteRouteInput,
        output_schema = types.DeleteRouteOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}",
    }, options)
end

function Client:deleteVirtualGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualGateway",
        input_schema = types.DeleteVirtualGatewayInput,
        output_schema = types.DeleteVirtualGatewayOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}",
    }, options)
end

function Client:deleteVirtualNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualNode",
        input_schema = types.DeleteVirtualNodeInput,
        output_schema = types.DeleteVirtualNodeOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}",
    }, options)
end

function Client:deleteVirtualRouter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualRouter",
        input_schema = types.DeleteVirtualRouterInput,
        output_schema = types.DeleteVirtualRouterOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}",
    }, options)
end

function Client:deleteVirtualService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualService",
        input_schema = types.DeleteVirtualServiceInput,
        output_schema = types.DeleteVirtualServiceOutput,
        http_method = "DELETE",
        http_path = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}",
    }, options)
end

function Client:describeGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGatewayRoute",
        input_schema = types.DescribeGatewayRouteInput,
        output_schema = types.DescribeGatewayRouteOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}",
    }, options)
end

function Client:describeMesh(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMesh",
        input_schema = types.DescribeMeshInput,
        output_schema = types.DescribeMeshOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}",
    }, options)
end

function Client:describeRoute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoute",
        input_schema = types.DescribeRouteInput,
        output_schema = types.DescribeRouteOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}",
    }, options)
end

function Client:describeVirtualGateway(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualGateway",
        input_schema = types.DescribeVirtualGatewayInput,
        output_schema = types.DescribeVirtualGatewayOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}",
    }, options)
end

function Client:describeVirtualNode(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualNode",
        input_schema = types.DescribeVirtualNodeInput,
        output_schema = types.DescribeVirtualNodeOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}",
    }, options)
end

function Client:describeVirtualRouter(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualRouter",
        input_schema = types.DescribeVirtualRouterInput,
        output_schema = types.DescribeVirtualRouterOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}",
    }, options)
end

function Client:describeVirtualService(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualService",
        input_schema = types.DescribeVirtualServiceInput,
        output_schema = types.DescribeVirtualServiceOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}",
    }, options)
end

function Client:listGatewayRoutes(input, options)
    return self:invokeOperation(input, {
        name = "ListGatewayRoutes",
        input_schema = types.ListGatewayRoutesInput,
        output_schema = types.ListGatewayRoutesOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes",
    }, options)
end

function Client:listMeshes(input, options)
    return self:invokeOperation(input, {
        name = "ListMeshes",
        input_schema = types.ListMeshesInput,
        output_schema = types.ListMeshesOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes",
    }, options)
end

function Client:listRoutes(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutes",
        input_schema = types.ListRoutesInput,
        output_schema = types.ListRoutesOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v20190125/tags",
    }, options)
end

function Client:listVirtualGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualGateways",
        input_schema = types.ListVirtualGatewaysInput,
        output_schema = types.ListVirtualGatewaysOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualGateways",
    }, options)
end

function Client:listVirtualNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualNodes",
        input_schema = types.ListVirtualNodesInput,
        output_schema = types.ListVirtualNodesOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualNodes",
    }, options)
end

function Client:listVirtualRouters(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualRouters",
        input_schema = types.ListVirtualRoutersInput,
        output_schema = types.ListVirtualRoutersOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualRouters",
    }, options)
end

function Client:listVirtualServices(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualServices",
        input_schema = types.ListVirtualServicesInput,
        output_schema = types.ListVirtualServicesOutput,
        http_method = "GET",
        http_path = "/v20190125/meshes/{meshName}/virtualServices",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
        http_path = "/v20190125/tag",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "PUT",
        http_path = "/v20190125/untag",
    }, options)
end

function Client:updateGatewayRoute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayRoute",
        input_schema = types.UpdateGatewayRouteInput,
        output_schema = types.UpdateGatewayRouteOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualGateway/{virtualGatewayName}/gatewayRoutes/{gatewayRouteName}",
    }, options)
end

function Client:updateMesh(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMesh",
        input_schema = types.UpdateMeshInput,
        output_schema = types.UpdateMeshOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}",
    }, options)
end

function Client:updateRoute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoute",
        input_schema = types.UpdateRouteInput,
        output_schema = types.UpdateRouteOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualRouter/{virtualRouterName}/routes/{routeName}",
    }, options)
end

function Client:updateVirtualGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVirtualGateway",
        input_schema = types.UpdateVirtualGatewayInput,
        output_schema = types.UpdateVirtualGatewayOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualGateways/{virtualGatewayName}",
    }, options)
end

function Client:updateVirtualNode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVirtualNode",
        input_schema = types.UpdateVirtualNodeInput,
        output_schema = types.UpdateVirtualNodeOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualNodes/{virtualNodeName}",
    }, options)
end

function Client:updateVirtualRouter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVirtualRouter",
        input_schema = types.UpdateVirtualRouterInput,
        output_schema = types.UpdateVirtualRouterOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualRouters/{virtualRouterName}",
    }, options)
end

function Client:updateVirtualService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVirtualService",
        input_schema = types.UpdateVirtualServiceInput,
        output_schema = types.UpdateVirtualServiceOutput,
        http_method = "PUT",
        http_path = "/v20190125/meshes/{meshName}/virtualServices/{virtualServiceName}",
    }, options)
end

return M
