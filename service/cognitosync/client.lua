local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cognitosync.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("cognitosync.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSCognitoSyncService"
    cfg.signing_name = "awscognitosyncservice"
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

function Client:bulkPublish(input, options)
    return self:invokeOperation(input, {
        name = "BulkPublish",
        input_schema = types.BulkPublishInput,
        output_schema = types.BulkPublishOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/bulkpublish",
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
    }, options)
end

function Client:describeIdentityPoolUsage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityPoolUsage",
        input_schema = types.DescribeIdentityPoolUsageInput,
        output_schema = types.DescribeIdentityPoolUsageOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}",
    }, options)
end

function Client:describeIdentityUsage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityUsage",
        input_schema = types.DescribeIdentityUsageInput,
        output_schema = types.DescribeIdentityUsageOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}",
    }, options)
end

function Client:getBulkPublishDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetBulkPublishDetails",
        input_schema = types.GetBulkPublishDetailsInput,
        output_schema = types.GetBulkPublishDetailsOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/getBulkPublishDetails",
    }, options)
end

function Client:getCognitoEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetCognitoEvents",
        input_schema = types.GetCognitoEventsInput,
        output_schema = types.GetCognitoEventsOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/events",
    }, options)
end

function Client:getIdentityPoolConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityPoolConfiguration",
        input_schema = types.GetIdentityPoolConfigurationInput,
        output_schema = types.GetIdentityPoolConfigurationOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/configuration",
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets",
    }, options)
end

function Client:listIdentityPoolUsage(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityPoolUsage",
        input_schema = types.ListIdentityPoolUsageInput,
        output_schema = types.ListIdentityPoolUsageOutput,
        http_method = "GET",
        http_path = "/identitypools",
    }, options)
end

function Client:listRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListRecords",
        input_schema = types.ListRecordsInput,
        output_schema = types.ListRecordsOutput,
        http_method = "GET",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/records",
    }, options)
end

function Client:registerDevice(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDevice",
        input_schema = types.RegisterDeviceInput,
        output_schema = types.RegisterDeviceOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/identity/{IdentityId}/device",
    }, options)
end

function Client:setCognitoEvents(input, options)
    return self:invokeOperation(input, {
        name = "SetCognitoEvents",
        input_schema = types.SetCognitoEventsInput,
        output_schema = types.SetCognitoEventsOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/events",
    }, options)
end

function Client:setIdentityPoolConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityPoolConfiguration",
        input_schema = types.SetIdentityPoolConfigurationInput,
        output_schema = types.SetIdentityPoolConfigurationOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/configuration",
    }, options)
end

function Client:subscribeToDataset(input, options)
    return self:invokeOperation(input, {
        name = "SubscribeToDataset",
        input_schema = types.SubscribeToDatasetInput,
        output_schema = types.SubscribeToDatasetOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}",
    }, options)
end

function Client:unsubscribeFromDataset(input, options)
    return self:invokeOperation(input, {
        name = "UnsubscribeFromDataset",
        input_schema = types.UnsubscribeFromDatasetInput,
        output_schema = types.UnsubscribeFromDatasetOutput,
        http_method = "DELETE",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}/subscriptions/{DeviceId}",
    }, options)
end

function Client:updateRecords(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecords",
        input_schema = types.UpdateRecordsInput,
        output_schema = types.UpdateRecordsOutput,
        http_method = "POST",
        http_path = "/identitypools/{IdentityPoolId}/identities/{IdentityId}/datasets/{DatasetName}",
    }, options)
end

return M
