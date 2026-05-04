local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appintegrations.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appintegrations.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonAppIntegrationService"
    cfg.signing_name = "app-integrations"
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

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/applications",
    }, options)
end

function Client:createDataIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataIntegration",
        input_schema = types.CreateDataIntegrationInput,
        output_schema = types.CreateDataIntegrationOutput,
        http_method = "POST",
        http_path = "/dataIntegrations",
    }, options)
end

function Client:createDataIntegrationAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataIntegrationAssociation",
        input_schema = types.CreateDataIntegrationAssociationInput,
        output_schema = types.CreateDataIntegrationAssociationOutput,
        http_method = "POST",
        http_path = "/dataIntegrations/{DataIntegrationIdentifier}/associations",
    }, options)
end

function Client:createEventIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventIntegration",
        input_schema = types.CreateEventIntegrationInput,
        output_schema = types.CreateEventIntegrationOutput,
        http_method = "POST",
        http_path = "/eventIntegrations",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{Arn}",
    }, options)
end

function Client:deleteDataIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataIntegration",
        input_schema = types.DeleteDataIntegrationInput,
        output_schema = types.DeleteDataIntegrationOutput,
        http_method = "DELETE",
        http_path = "/dataIntegrations/{DataIntegrationIdentifier}",
    }, options)
end

function Client:deleteEventIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventIntegration",
        input_schema = types.DeleteEventIntegrationInput,
        output_schema = types.DeleteEventIntegrationOutput,
        http_method = "DELETE",
        http_path = "/eventIntegrations/{Name}",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{Arn}",
    }, options)
end

function Client:getDataIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetDataIntegration",
        input_schema = types.GetDataIntegrationInput,
        output_schema = types.GetDataIntegrationOutput,
        http_method = "GET",
        http_path = "/dataIntegrations/{Identifier}",
    }, options)
end

function Client:getEventIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetEventIntegration",
        input_schema = types.GetEventIntegrationInput,
        output_schema = types.GetEventIntegrationOutput,
        http_method = "GET",
        http_path = "/eventIntegrations/{Name}",
    }, options)
end

function Client:listApplicationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationAssociations",
        input_schema = types.ListApplicationAssociationsInput,
        output_schema = types.ListApplicationAssociationsOutput,
        http_method = "GET",
        http_path = "/applications/{ApplicationId}/associations",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "GET",
        http_path = "/applications",
    }, options)
end

function Client:listDataIntegrationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIntegrationAssociations",
        input_schema = types.ListDataIntegrationAssociationsInput,
        output_schema = types.ListDataIntegrationAssociationsOutput,
        http_method = "GET",
        http_path = "/dataIntegrations/{DataIntegrationIdentifier}/associations",
    }, options)
end

function Client:listDataIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIntegrations",
        input_schema = types.ListDataIntegrationsInput,
        output_schema = types.ListDataIntegrationsOutput,
        http_method = "GET",
        http_path = "/dataIntegrations",
    }, options)
end

function Client:listEventIntegrationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListEventIntegrationAssociations",
        input_schema = types.ListEventIntegrationAssociationsInput,
        output_schema = types.ListEventIntegrationAssociationsOutput,
        http_method = "GET",
        http_path = "/eventIntegrations/{EventIntegrationName}/associations",
    }, options)
end

function Client:listEventIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListEventIntegrations",
        input_schema = types.ListEventIntegrationsInput,
        output_schema = types.ListEventIntegrationsOutput,
        http_method = "GET",
        http_path = "/eventIntegrations",
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

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "PATCH",
        http_path = "/applications/{Arn}",
    }, options)
end

function Client:updateDataIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataIntegration",
        input_schema = types.UpdateDataIntegrationInput,
        output_schema = types.UpdateDataIntegrationOutput,
        http_method = "PATCH",
        http_path = "/dataIntegrations/{Identifier}",
    }, options)
end

function Client:updateDataIntegrationAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataIntegrationAssociation",
        input_schema = types.UpdateDataIntegrationAssociationInput,
        output_schema = types.UpdateDataIntegrationAssociationOutput,
        http_method = "PATCH",
        http_path = "/dataIntegrations/{DataIntegrationIdentifier}/associations/{DataIntegrationAssociationIdentifier}",
    }, options)
end

function Client:updateEventIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventIntegration",
        input_schema = types.UpdateEventIntegrationInput,
        output_schema = types.UpdateEventIntegrationOutput,
        http_method = "PATCH",
        http_path = "/eventIntegrations/{Name}",
    }, options)
end

return M
