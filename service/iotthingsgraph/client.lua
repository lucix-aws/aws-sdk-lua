local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotthingsgraph.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("iotthingsgraph.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotThingsGraphFrontEndService"
    cfg.signing_name = "iotthingsgraph"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:associateEntityToThing(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEntityToThing",
        input_schema = types.AssociateEntityToThingInput,
        output_schema = types.AssociateEntityToThingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlowTemplate",
        input_schema = types.CreateFlowTemplateInput,
        output_schema = types.CreateFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateSystemInstance",
        input_schema = types.CreateSystemInstanceInput,
        output_schema = types.CreateSystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateSystemTemplate",
        input_schema = types.CreateSystemTemplateInput,
        output_schema = types.CreateSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlowTemplate",
        input_schema = types.DeleteFlowTemplateInput,
        output_schema = types.DeleteFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = types.DeleteNamespaceInput,
        output_schema = types.DeleteNamespaceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSystemInstance",
        input_schema = types.DeleteSystemInstanceInput,
        output_schema = types.DeleteSystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSystemTemplate",
        input_schema = types.DeleteSystemTemplateInput,
        output_schema = types.DeleteSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deploySystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeploySystemInstance",
        input_schema = types.DeploySystemInstanceInput,
        output_schema = types.DeploySystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deprecateFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateFlowTemplate",
        input_schema = types.DeprecateFlowTemplateInput,
        output_schema = types.DeprecateFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deprecateSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateSystemTemplate",
        input_schema = types.DeprecateSystemTemplateInput,
        output_schema = types.DeprecateSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNamespace",
        input_schema = types.DescribeNamespaceInput,
        output_schema = types.DescribeNamespaceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:dissociateEntityFromThing(input, options)
    return self:invokeOperation(input, {
        name = "DissociateEntityFromThing",
        input_schema = types.DissociateEntityFromThingInput,
        output_schema = types.DissociateEntityFromThingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEntities(input, options)
    return self:invokeOperation(input, {
        name = "GetEntities",
        input_schema = types.GetEntitiesInput,
        output_schema = types.GetEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowTemplate",
        input_schema = types.GetFlowTemplateInput,
        output_schema = types.GetFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getFlowTemplateRevisions(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowTemplateRevisions",
        input_schema = types.GetFlowTemplateRevisionsInput,
        output_schema = types.GetFlowTemplateRevisionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getNamespaceDeletionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespaceDeletionStatus",
        input_schema = types.GetNamespaceDeletionStatusInput,
        output_schema = types.GetNamespaceDeletionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetSystemInstance",
        input_schema = types.GetSystemInstanceInput,
        output_schema = types.GetSystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetSystemTemplate",
        input_schema = types.GetSystemTemplateInput,
        output_schema = types.GetSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSystemTemplateRevisions(input, options)
    return self:invokeOperation(input, {
        name = "GetSystemTemplateRevisions",
        input_schema = types.GetSystemTemplateRevisionsInput,
        output_schema = types.GetSystemTemplateRevisionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getUploadStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetUploadStatus",
        input_schema = types.GetUploadStatusInput,
        output_schema = types.GetUploadStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFlowExecutionMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowExecutionMessages",
        input_schema = types.ListFlowExecutionMessagesInput,
        output_schema = types.ListFlowExecutionMessagesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchEntities(input, options)
    return self:invokeOperation(input, {
        name = "SearchEntities",
        input_schema = types.SearchEntitiesInput,
        output_schema = types.SearchEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchFlowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "SearchFlowExecutions",
        input_schema = types.SearchFlowExecutionsInput,
        output_schema = types.SearchFlowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchFlowTemplates(input, options)
    return self:invokeOperation(input, {
        name = "SearchFlowTemplates",
        input_schema = types.SearchFlowTemplatesInput,
        output_schema = types.SearchFlowTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchSystemInstances(input, options)
    return self:invokeOperation(input, {
        name = "SearchSystemInstances",
        input_schema = types.SearchSystemInstancesInput,
        output_schema = types.SearchSystemInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchSystemTemplates(input, options)
    return self:invokeOperation(input, {
        name = "SearchSystemTemplates",
        input_schema = types.SearchSystemTemplatesInput,
        output_schema = types.SearchSystemTemplatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchThings(input, options)
    return self:invokeOperation(input, {
        name = "SearchThings",
        input_schema = types.SearchThingsInput,
        output_schema = types.SearchThingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:undeploySystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "UndeploySystemInstance",
        input_schema = types.UndeploySystemInstanceInput,
        output_schema = types.UndeploySystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowTemplate",
        input_schema = types.UpdateFlowTemplateInput,
        output_schema = types.UpdateFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSystemTemplate",
        input_schema = types.UpdateSystemTemplateInput,
        output_schema = types.UpdateSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:uploadEntityDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "UploadEntityDefinitions",
        input_schema = types.UploadEntityDefinitionsInput,
        output_schema = types.UploadEntityDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
