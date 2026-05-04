local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("servicecatalogappregistry.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("servicecatalogappregistry.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWS242AppRegistry"
    cfg.signing_name = "servicecatalog"
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

function Client:associateAttributeGroup(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAttributeGroup",
        input_schema = types.AssociateAttributeGroupInput,
        output_schema = types.AssociateAttributeGroupOutput,
        http_method = "PUT",
        http_path = "/applications/{application}/attribute-groups/{attributeGroup}",
    }, options)
end

function Client:associateResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResource",
        input_schema = types.AssociateResourceInput,
        output_schema = types.AssociateResourceOutput,
        http_method = "PUT",
        http_path = "/applications/{application}/resources/{resourceType}/{resource}",
    }, options)
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

function Client:createAttributeGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateAttributeGroup",
        input_schema = types.CreateAttributeGroupInput,
        output_schema = types.CreateAttributeGroupOutput,
        http_method = "POST",
        http_path = "/attribute-groups",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "DELETE",
        http_path = "/applications/{application}",
    }, options)
end

function Client:deleteAttributeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttributeGroup",
        input_schema = types.DeleteAttributeGroupInput,
        output_schema = types.DeleteAttributeGroupOutput,
        http_method = "DELETE",
        http_path = "/attribute-groups/{attributeGroup}",
    }, options)
end

function Client:disassociateAttributeGroup(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAttributeGroup",
        input_schema = types.DisassociateAttributeGroupInput,
        output_schema = types.DisassociateAttributeGroupOutput,
        http_method = "DELETE",
        http_path = "/applications/{application}/attribute-groups/{attributeGroup}",
    }, options)
end

function Client:disassociateResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResource",
        input_schema = types.DisassociateResourceInput,
        output_schema = types.DisassociateResourceOutput,
        http_method = "DELETE",
        http_path = "/applications/{application}/resources/{resourceType}/{resource}",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{application}",
    }, options)
end

function Client:getAssociatedResource(input, options)
    return self:invokeOperation(input, {
        name = "GetAssociatedResource",
        input_schema = types.GetAssociatedResourceInput,
        output_schema = types.GetAssociatedResourceOutput,
        http_method = "GET",
        http_path = "/applications/{application}/resources/{resourceType}/{resource}",
    }, options)
end

function Client:getAttributeGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetAttributeGroup",
        input_schema = types.GetAttributeGroupInput,
        output_schema = types.GetAttributeGroupOutput,
        http_method = "GET",
        http_path = "/attribute-groups/{attributeGroup}",
    }, options)
end

function Client:getConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetConfiguration",
        input_schema = types.GetConfigurationInput,
        output_schema = types.GetConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration",
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

function Client:listAssociatedAttributeGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedAttributeGroups",
        input_schema = types.ListAssociatedAttributeGroupsInput,
        output_schema = types.ListAssociatedAttributeGroupsOutput,
        http_method = "GET",
        http_path = "/applications/{application}/attribute-groups",
    }, options)
end

function Client:listAssociatedResources(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedResources",
        input_schema = types.ListAssociatedResourcesInput,
        output_schema = types.ListAssociatedResourcesOutput,
        http_method = "GET",
        http_path = "/applications/{application}/resources",
    }, options)
end

function Client:listAttributeGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListAttributeGroups",
        input_schema = types.ListAttributeGroupsInput,
        output_schema = types.ListAttributeGroupsOutput,
        http_method = "GET",
        http_path = "/attribute-groups",
    }, options)
end

function Client:listAttributeGroupsForApplication(input, options)
    return self:invokeOperation(input, {
        name = "ListAttributeGroupsForApplication",
        input_schema = types.ListAttributeGroupsForApplicationInput,
        output_schema = types.ListAttributeGroupsForApplicationOutput,
        http_method = "GET",
        http_path = "/applications/{application}/attribute-group-details",
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

function Client:putConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutConfiguration",
        input_schema = types.PutConfigurationInput,
        output_schema = types.PutConfigurationOutput,
        http_method = "PUT",
        http_path = "/configuration",
    }, options)
end

function Client:syncResource(input, options)
    return self:invokeOperation(input, {
        name = "SyncResource",
        input_schema = types.SyncResourceInput,
        output_schema = types.SyncResourceOutput,
        http_method = "POST",
        http_path = "/sync/{resourceType}/{resource}",
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
        http_path = "/applications/{application}",
    }, options)
end

function Client:updateAttributeGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAttributeGroup",
        input_schema = types.UpdateAttributeGroupInput,
        output_schema = types.UpdateAttributeGroupOutput,
        http_method = "PATCH",
        http_path = "/attribute-groups/{attributeGroup}",
    }, options)
end

return M
