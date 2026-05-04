local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appfabric.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appfabric.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "FabricFrontEndService"
    cfg.signing_name = "fabricfrontendservice"
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

function Client:batchGetUserAccessTasks(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetUserAccessTasks",
        input_schema = types.BatchGetUserAccessTasksInput,
        output_schema = types.BatchGetUserAccessTasksOutput,
        http_method = "POST",
        http_path = "/useraccess/batchget",
    }, options)
end

function Client:connectAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "ConnectAppAuthorization",
        input_schema = types.ConnectAppAuthorizationInput,
        output_schema = types.ConnectAppAuthorizationOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect",
    }, options)
end

function Client:createAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppAuthorization",
        input_schema = types.CreateAppAuthorizationInput,
        output_schema = types.CreateAppAuthorizationOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations",
    }, options)
end

function Client:createAppBundle(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBundle",
        input_schema = types.CreateAppBundleInput,
        output_schema = types.CreateAppBundleOutput,
        http_method = "POST",
        http_path = "/appbundles",
    }, options)
end

function Client:createIngestion(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestion",
        input_schema = types.CreateIngestionInput,
        output_schema = types.CreateIngestionOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions",
    }, options)
end

function Client:createIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestionDestination",
        input_schema = types.CreateIngestionDestinationInput,
        output_schema = types.CreateIngestionDestinationOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations",
    }, options)
end

function Client:deleteAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppAuthorization",
        input_schema = types.DeleteAppAuthorizationInput,
        output_schema = types.DeleteAppAuthorizationOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}",
    }, options)
end

function Client:deleteAppBundle(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppBundle",
        input_schema = types.DeleteAppBundleInput,
        output_schema = types.DeleteAppBundleOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}",
    }, options)
end

function Client:deleteIngestion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngestion",
        input_schema = types.DeleteIngestionInput,
        output_schema = types.DeleteIngestionOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}",
    }, options)
end

function Client:deleteIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngestionDestination",
        input_schema = types.DeleteIngestionDestinationInput,
        output_schema = types.DeleteIngestionDestinationOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}",
    }, options)
end

function Client:getAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "GetAppAuthorization",
        input_schema = types.GetAppAuthorizationInput,
        output_schema = types.GetAppAuthorizationOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}",
    }, options)
end

function Client:getAppBundle(input, options)
    return self:invokeOperation(input, {
        name = "GetAppBundle",
        input_schema = types.GetAppBundleInput,
        output_schema = types.GetAppBundleOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}",
    }, options)
end

function Client:getIngestion(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestion",
        input_schema = types.GetIngestionInput,
        output_schema = types.GetIngestionOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}",
    }, options)
end

function Client:getIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestionDestination",
        input_schema = types.GetIngestionDestinationInput,
        output_schema = types.GetIngestionDestinationOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}",
    }, options)
end

function Client:listAppAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "ListAppAuthorizations",
        input_schema = types.ListAppAuthorizationsInput,
        output_schema = types.ListAppAuthorizationsOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations",
    }, options)
end

function Client:listAppBundles(input, options)
    return self:invokeOperation(input, {
        name = "ListAppBundles",
        input_schema = types.ListAppBundlesInput,
        output_schema = types.ListAppBundlesOutput,
        http_method = "GET",
        http_path = "/appbundles",
    }, options)
end

function Client:listIngestionDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestionDestinations",
        input_schema = types.ListIngestionDestinationsInput,
        output_schema = types.ListIngestionDestinationsOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations",
    }, options)
end

function Client:listIngestions(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestions",
        input_schema = types.ListIngestionsInput,
        output_schema = types.ListIngestionsOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:startIngestion(input, options)
    return self:invokeOperation(input, {
        name = "StartIngestion",
        input_schema = types.StartIngestionInput,
        output_schema = types.StartIngestionOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/start",
    }, options)
end

function Client:startUserAccessTasks(input, options)
    return self:invokeOperation(input, {
        name = "StartUserAccessTasks",
        input_schema = types.StartUserAccessTasksInput,
        output_schema = types.StartUserAccessTasksOutput,
        http_method = "POST",
        http_path = "/useraccess/start",
    }, options)
end

function Client:stopIngestion(input, options)
    return self:invokeOperation(input, {
        name = "StopIngestion",
        input_schema = types.StopIngestionInput,
        output_schema = types.StopIngestionOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/stop",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppAuthorization",
        input_schema = types.UpdateAppAuthorizationInput,
        output_schema = types.UpdateAppAuthorizationOutput,
        http_method = "PATCH",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}",
    }, options)
end

function Client:updateIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIngestionDestination",
        input_schema = types.UpdateIngestionDestinationInput,
        output_schema = types.UpdateIngestionDestinationOutput,
        http_method = "PATCH",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}",
    }, options)
end

return M
