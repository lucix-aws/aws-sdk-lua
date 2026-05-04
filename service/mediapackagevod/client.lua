local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediapackagevod.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediapackagevod.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaPackageVod"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediapackage-vod", signing_region = cfg.region } }
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

function Client:configureLogs(input, options)
    return self:invokeOperation(input, {
        name = "ConfigureLogs",
        input_schema = types.ConfigureLogsInput,
        output_schema = types.ConfigureLogsOutput,
        http_method = "PUT",
        http_path = "/packaging_groups/{Id}/configure_logs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAsset(input, options)
    return self:invokeOperation(input, {
        name = "CreateAsset",
        input_schema = types.CreateAssetInput,
        output_schema = types.CreateAssetOutput,
        http_method = "POST",
        http_path = "/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackagingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackagingConfiguration",
        input_schema = types.CreatePackagingConfigurationInput,
        output_schema = types.CreatePackagingConfigurationOutput,
        http_method = "POST",
        http_path = "/packaging_configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackagingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackagingGroup",
        input_schema = types.CreatePackagingGroupInput,
        output_schema = types.CreatePackagingGroupOutput,
        http_method = "POST",
        http_path = "/packaging_groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAsset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAsset",
        input_schema = types.DeleteAssetInput,
        output_schema = types.DeleteAssetOutput,
        http_method = "DELETE",
        http_path = "/assets/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackagingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackagingConfiguration",
        input_schema = types.DeletePackagingConfigurationInput,
        output_schema = types.DeletePackagingConfigurationOutput,
        http_method = "DELETE",
        http_path = "/packaging_configurations/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackagingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackagingGroup",
        input_schema = types.DeletePackagingGroupInput,
        output_schema = types.DeletePackagingGroupOutput,
        http_method = "DELETE",
        http_path = "/packaging_groups/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAsset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAsset",
        input_schema = types.DescribeAssetInput,
        output_schema = types.DescribeAssetOutput,
        http_method = "GET",
        http_path = "/assets/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackagingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackagingConfiguration",
        input_schema = types.DescribePackagingConfigurationInput,
        output_schema = types.DescribePackagingConfigurationOutput,
        http_method = "GET",
        http_path = "/packaging_configurations/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackagingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackagingGroup",
        input_schema = types.DescribePackagingGroupInput,
        output_schema = types.DescribePackagingGroupOutput,
        http_method = "GET",
        http_path = "/packaging_groups/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssets",
        input_schema = types.ListAssetsInput,
        output_schema = types.ListAssetsOutput,
        http_method = "GET",
        http_path = "/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackagingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListPackagingConfigurations",
        input_schema = types.ListPackagingConfigurationsInput,
        output_schema = types.ListPackagingConfigurationsOutput,
        http_method = "GET",
        http_path = "/packaging_configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackagingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListPackagingGroups",
        input_schema = types.ListPackagingGroupsInput,
        output_schema = types.ListPackagingGroupsOutput,
        http_method = "GET",
        http_path = "/packaging_groups",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackagingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackagingGroup",
        input_schema = types.UpdatePackagingGroupInput,
        output_schema = types.UpdatePackagingGroupOutput,
        http_method = "PUT",
        http_path = "/packaging_groups/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
