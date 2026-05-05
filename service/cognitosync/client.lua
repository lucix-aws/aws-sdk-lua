local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cognitosync.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("cognitosync.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSCognitoSyncService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cognito-sync", signing_region = cfg.region } }
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

function Client:bulkPublish(input, options)
    return self:invokeOperation(input, {
        name = "BulkPublish",
        input_schema = schemas.BulkPublishInput,
        output_schema = schemas.BulkPublishOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/bulkpublish",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = schemas.DeleteDatasetInput,
        output_schema = schemas.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = schemas.DescribeDatasetInput,
        output_schema = schemas.DescribeDatasetOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentityPoolUsage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityPoolUsage",
        input_schema = schemas.DescribeIdentityPoolUsageInput,
        output_schema = schemas.DescribeIdentityPoolUsageOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentityUsage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityUsage",
        input_schema = schemas.DescribeIdentityUsageInput,
        output_schema = schemas.DescribeIdentityUsageOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBulkPublishDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetBulkPublishDetails",
        input_schema = schemas.GetBulkPublishDetailsInput,
        output_schema = schemas.GetBulkPublishDetailsOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/getBulkPublishDetails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCognitoEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetCognitoEvents",
        input_schema = schemas.GetCognitoEventsInput,
        output_schema = schemas.GetCognitoEventsOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentityPoolConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityPoolConfiguration",
        input_schema = schemas.GetIdentityPoolConfigurationInput,
        output_schema = schemas.GetIdentityPoolConfigurationOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = schemas.ListDatasetsInput,
        output_schema = schemas.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentityPoolUsage(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityPoolUsage",
        input_schema = schemas.ListIdentityPoolUsageInput,
        output_schema = schemas.ListIdentityPoolUsageOutput,
        http_method = "GET",
        http_path = "/identitypools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListRecords",
        input_schema = schemas.ListRecordsInput,
        output_schema = schemas.ListRecordsOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDevice(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDevice",
        input_schema = schemas.RegisterDeviceInput,
        output_schema = schemas.RegisterDeviceOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setCognitoEvents(input, options)
    return self:invokeOperation(input, {
        name = "SetCognitoEvents",
        input_schema = schemas.SetCognitoEventsInput,
        output_schema = schemas.SetCognitoEventsOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setIdentityPoolConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityPoolConfiguration",
        input_schema = schemas.SetIdentityPoolConfigurationInput,
        output_schema = schemas.SetIdentityPoolConfigurationOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:subscribeToDataset(input, options)
    return self:invokeOperation(input, {
        name = "SubscribeToDataset",
        input_schema = schemas.SubscribeToDatasetInput,
        output_schema = schemas.SubscribeToDatasetOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unsubscribeFromDataset(input, options)
    return self:invokeOperation(input, {
        name = "UnsubscribeFromDataset",
        input_schema = schemas.UnsubscribeFromDatasetInput,
        output_schema = schemas.UnsubscribeFromDatasetOutput,
        http_method = "DELETE",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecords(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecords",
        input_schema = schemas.UpdateRecordsInput,
        output_schema = schemas.UpdateRecordsOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
