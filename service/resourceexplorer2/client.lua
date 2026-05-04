local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("resourceexplorer2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("resourceexplorer2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ResourceExplorer"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "resource-explorer-2", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateDefaultView(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDefaultView",
        input_schema = types.AssociateDefaultViewInput,
        output_schema = types.AssociateDefaultViewOutput,
        http_method = "POST",
        http_path = "/AssociateDefaultView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetView(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetView",
        input_schema = types.BatchGetViewInput,
        output_schema = types.BatchGetViewOutput,
        http_method = "POST",
        http_path = "/BatchGetView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "POST",
        http_path = "/CreateIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceExplorerSetup(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceExplorerSetup",
        input_schema = types.CreateResourceExplorerSetupInput,
        output_schema = types.CreateResourceExplorerSetupOutput,
        http_method = "POST",
        http_path = "/CreateResourceExplorerSetup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createView(input, options)
    return self:invokeOperation(input, {
        name = "CreateView",
        input_schema = types.CreateViewInput,
        output_schema = types.CreateViewOutput,
        http_method = "POST",
        http_path = "/CreateView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = types.DeleteIndexInput,
        output_schema = types.DeleteIndexOutput,
        http_method = "POST",
        http_path = "/DeleteIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceExplorerSetup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceExplorerSetup",
        input_schema = types.DeleteResourceExplorerSetupInput,
        output_schema = types.DeleteResourceExplorerSetupOutput,
        http_method = "POST",
        http_path = "/DeleteResourceExplorerSetup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteView(input, options)
    return self:invokeOperation(input, {
        name = "DeleteView",
        input_schema = types.DeleteViewInput,
        output_schema = types.DeleteViewOutput,
        http_method = "POST",
        http_path = "/DeleteView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDefaultView(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDefaultView",
        input_schema = types.DisassociateDefaultViewInput,
        output_schema = types.DisassociateDefaultViewOutput,
        http_method = "POST",
        http_path = "/DisassociateDefaultView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountLevelServiceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountLevelServiceConfiguration",
        input_schema = types.GetAccountLevelServiceConfigurationInput,
        output_schema = types.GetAccountLevelServiceConfigurationOutput,
        http_method = "POST",
        http_path = "/GetAccountLevelServiceConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDefaultView(input, options)
    return self:invokeOperation(input, {
        name = "GetDefaultView",
        input_schema = types.GetDefaultViewInput,
        output_schema = types.GetDefaultViewOutput,
        http_method = "POST",
        http_path = "/GetDefaultView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = types.GetIndexInput,
        output_schema = types.GetIndexOutput,
        http_method = "POST",
        http_path = "/GetIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedView(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedView",
        input_schema = types.GetManagedViewInput,
        output_schema = types.GetManagedViewOutput,
        http_method = "POST",
        http_path = "/GetManagedView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceExplorerSetup(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceExplorerSetup",
        input_schema = types.GetResourceExplorerSetupInput,
        output_schema = types.GetResourceExplorerSetupOutput,
        http_method = "POST",
        http_path = "/GetResourceExplorerSetup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceIndex",
        input_schema = types.GetServiceIndexInput,
        output_schema = types.GetServiceIndexOutput,
        http_method = "POST",
        http_path = "/GetServiceIndex",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceView(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceView",
        input_schema = types.GetServiceViewInput,
        output_schema = types.GetServiceViewOutput,
        http_method = "POST",
        http_path = "/GetServiceView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getView(input, options)
    return self:invokeOperation(input, {
        name = "GetView",
        input_schema = types.GetViewInput,
        output_schema = types.GetViewOutput,
        http_method = "POST",
        http_path = "/GetView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndexes(input, options)
    return self:invokeOperation(input, {
        name = "ListIndexes",
        input_schema = types.ListIndexesInput,
        output_schema = types.ListIndexesOutput,
        http_method = "POST",
        http_path = "/ListIndexes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndexesForMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListIndexesForMembers",
        input_schema = types.ListIndexesForMembersInput,
        output_schema = types.ListIndexesForMembersOutput,
        http_method = "POST",
        http_path = "/ListIndexesForMembers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedViews(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedViews",
        input_schema = types.ListManagedViewsInput,
        output_schema = types.ListManagedViewsOutput,
        http_method = "POST",
        http_path = "/ListManagedViews",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResources",
        input_schema = types.ListResourcesInput,
        output_schema = types.ListResourcesOutput,
        http_method = "POST",
        http_path = "/ListResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceIndexes(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceIndexes",
        input_schema = types.ListServiceIndexesInput,
        output_schema = types.ListServiceIndexesOutput,
        http_method = "POST",
        http_path = "/ListServiceIndexes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceViews(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceViews",
        input_schema = types.ListServiceViewsInput,
        output_schema = types.ListServiceViewsOutput,
        http_method = "POST",
        http_path = "/ListServiceViews",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreamingAccessForServices(input, options)
    return self:invokeOperation(input, {
        name = "ListStreamingAccessForServices",
        input_schema = types.ListStreamingAccessForServicesInput,
        output_schema = types.ListStreamingAccessForServicesOutput,
        http_method = "POST",
        http_path = "/ListStreamingAccessForServices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSupportedResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListSupportedResourceTypes",
        input_schema = types.ListSupportedResourceTypesInput,
        output_schema = types.ListSupportedResourceTypesOutput,
        http_method = "POST",
        http_path = "/ListSupportedResourceTypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listViews(input, options)
    return self:invokeOperation(input, {
        name = "ListViews",
        input_schema = types.ListViewsInput,
        output_schema = types.ListViewsOutput,
        http_method = "POST",
        http_path = "/ListViews",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:search(input, options)
    return self:invokeOperation(input, {
        name = "Search",
        input_schema = types.SearchInput,
        output_schema = types.SearchOutput,
        http_method = "POST",
        http_path = "/Search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndexType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndexType",
        input_schema = types.UpdateIndexTypeInput,
        output_schema = types.UpdateIndexTypeOutput,
        http_method = "POST",
        http_path = "/UpdateIndexType",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateView(input, options)
    return self:invokeOperation(input, {
        name = "UpdateView",
        input_schema = types.UpdateViewInput,
        output_schema = types.UpdateViewOutput,
        http_method = "POST",
        http_path = "/UpdateView",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
