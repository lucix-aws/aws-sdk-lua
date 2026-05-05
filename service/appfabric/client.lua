local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("appfabric.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("appfabric.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "FabricFrontEndService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appfabric", signing_region = cfg.region } }
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

function Client:batchGetUserAccessTasks(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetUserAccessTasks",
        input_schema = schemas.BatchGetUserAccessTasksInput,
        output_schema = schemas.BatchGetUserAccessTasksOutput,
        http_method = "POST",
        http_path = "/useraccess/batchget",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:connectAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "ConnectAppAuthorization",
        input_schema = schemas.ConnectAppAuthorizationInput,
        output_schema = schemas.ConnectAppAuthorizationOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}/connect",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppAuthorization",
        input_schema = schemas.CreateAppAuthorizationInput,
        output_schema = schemas.CreateAppAuthorizationOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppBundle(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppBundle",
        input_schema = schemas.CreateAppBundleInput,
        output_schema = schemas.CreateAppBundleOutput,
        http_method = "POST",
        http_path = "/appbundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIngestion(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestion",
        input_schema = schemas.CreateIngestionInput,
        output_schema = schemas.CreateIngestionOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngestionDestination",
        input_schema = schemas.CreateIngestionDestinationInput,
        output_schema = schemas.CreateIngestionDestinationOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppAuthorization",
        input_schema = schemas.DeleteAppAuthorizationInput,
        output_schema = schemas.DeleteAppAuthorizationOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppBundle(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppBundle",
        input_schema = schemas.DeleteAppBundleInput,
        output_schema = schemas.DeleteAppBundleOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIngestion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngestion",
        input_schema = schemas.DeleteIngestionInput,
        output_schema = schemas.DeleteIngestionOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngestionDestination",
        input_schema = schemas.DeleteIngestionDestinationInput,
        output_schema = schemas.DeleteIngestionDestinationOutput,
        http_method = "DELETE",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "GetAppAuthorization",
        input_schema = schemas.GetAppAuthorizationInput,
        output_schema = schemas.GetAppAuthorizationOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAppBundle(input, options)
    return self:invokeOperation(input, {
        name = "GetAppBundle",
        input_schema = schemas.GetAppBundleInput,
        output_schema = schemas.GetAppBundleOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIngestion(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestion",
        input_schema = schemas.GetIngestionInput,
        output_schema = schemas.GetIngestionOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetIngestionDestination",
        input_schema = schemas.GetIngestionDestinationInput,
        output_schema = schemas.GetIngestionDestinationOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "ListAppAuthorizations",
        input_schema = schemas.ListAppAuthorizationsInput,
        output_schema = schemas.ListAppAuthorizationsOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppBundles(input, options)
    return self:invokeOperation(input, {
        name = "ListAppBundles",
        input_schema = schemas.ListAppBundlesInput,
        output_schema = schemas.ListAppBundlesOutput,
        http_method = "GET",
        http_path = "/appbundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIngestionDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestionDestinations",
        input_schema = schemas.ListIngestionDestinationsInput,
        output_schema = schemas.ListIngestionDestinationsOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIngestions(input, options)
    return self:invokeOperation(input, {
        name = "ListIngestions",
        input_schema = schemas.ListIngestionsInput,
        output_schema = schemas.ListIngestionsOutput,
        http_method = "GET",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startIngestion(input, options)
    return self:invokeOperation(input, {
        name = "StartIngestion",
        input_schema = schemas.StartIngestionInput,
        output_schema = schemas.StartIngestionOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startUserAccessTasks(input, options)
    return self:invokeOperation(input, {
        name = "StartUserAccessTasks",
        input_schema = schemas.StartUserAccessTasksInput,
        output_schema = schemas.StartUserAccessTasksOutput,
        http_method = "POST",
        http_path = "/useraccess/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopIngestion(input, options)
    return self:invokeOperation(input, {
        name = "StopIngestion",
        input_schema = schemas.StopIngestionInput,
        output_schema = schemas.StopIngestionOutput,
        http_method = "POST",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppAuthorization",
        input_schema = schemas.UpdateAppAuthorizationInput,
        output_schema = schemas.UpdateAppAuthorizationOutput,
        http_method = "PATCH",
        http_path = "/appbundles/{appBundleIdentifier}/appauthorizations/{appAuthorizationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIngestionDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIngestionDestination",
        input_schema = schemas.UpdateIngestionDestinationInput,
        output_schema = schemas.UpdateIngestionDestinationOutput,
        http_method = "PATCH",
        http_path = "/appbundles/{appBundleIdentifier}/ingestions/{ingestionIdentifier}/ingestiondestinations/{ingestionDestinationIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
