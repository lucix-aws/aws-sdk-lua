local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotthingsgraph.endpoint_rules")
local schemas = require("iotthingsgraph.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "IotThingsGraphFrontEndService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotthingsgraph", signing_region = cfg.region } }
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

function Client:associateEntityToThing(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEntityToThing",
        input_schema = schemas.AssociateEntityToThingInput,
        output_schema = schemas.AssociateEntityToThingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlowTemplate",
        input_schema = schemas.CreateFlowTemplateInput,
        output_schema = schemas.CreateFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateSystemInstance",
        input_schema = schemas.CreateSystemInstanceInput,
        output_schema = schemas.CreateSystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateSystemTemplate",
        input_schema = schemas.CreateSystemTemplateInput,
        output_schema = schemas.CreateSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlowTemplate",
        input_schema = schemas.DeleteFlowTemplateInput,
        output_schema = schemas.DeleteFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = schemas.DeleteNamespaceInput,
        output_schema = schemas.DeleteNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSystemInstance",
        input_schema = schemas.DeleteSystemInstanceInput,
        output_schema = schemas.DeleteSystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSystemTemplate",
        input_schema = schemas.DeleteSystemTemplateInput,
        output_schema = schemas.DeleteSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deploySystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeploySystemInstance",
        input_schema = schemas.DeploySystemInstanceInput,
        output_schema = schemas.DeploySystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprecateFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateFlowTemplate",
        input_schema = schemas.DeprecateFlowTemplateInput,
        output_schema = schemas.DeprecateFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprecateSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateSystemTemplate",
        input_schema = schemas.DeprecateSystemTemplateInput,
        output_schema = schemas.DeprecateSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNamespace",
        input_schema = schemas.DescribeNamespaceInput,
        output_schema = schemas.DescribeNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:dissociateEntityFromThing(input, options)
    return self:invokeOperation(input, {
        name = "DissociateEntityFromThing",
        input_schema = schemas.DissociateEntityFromThingInput,
        output_schema = schemas.DissociateEntityFromThingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEntities(input, options)
    return self:invokeOperation(input, {
        name = "GetEntities",
        input_schema = schemas.GetEntitiesInput,
        output_schema = schemas.GetEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowTemplate",
        input_schema = schemas.GetFlowTemplateInput,
        output_schema = schemas.GetFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowTemplateRevisions(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowTemplateRevisions",
        input_schema = schemas.GetFlowTemplateRevisionsInput,
        output_schema = schemas.GetFlowTemplateRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNamespaceDeletionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespaceDeletionStatus",
        input_schema = schemas.GetNamespaceDeletionStatusInput,
        output_schema = schemas.GetNamespaceDeletionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetSystemInstance",
        input_schema = schemas.GetSystemInstanceInput,
        output_schema = schemas.GetSystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetSystemTemplate",
        input_schema = schemas.GetSystemTemplateInput,
        output_schema = schemas.GetSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSystemTemplateRevisions(input, options)
    return self:invokeOperation(input, {
        name = "GetSystemTemplateRevisions",
        input_schema = schemas.GetSystemTemplateRevisionsInput,
        output_schema = schemas.GetSystemTemplateRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUploadStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetUploadStatus",
        input_schema = schemas.GetUploadStatusInput,
        output_schema = schemas.GetUploadStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowExecutionMessages(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowExecutionMessages",
        input_schema = schemas.ListFlowExecutionMessagesInput,
        output_schema = schemas.ListFlowExecutionMessagesOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchEntities(input, options)
    return self:invokeOperation(input, {
        name = "SearchEntities",
        input_schema = schemas.SearchEntitiesInput,
        output_schema = schemas.SearchEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFlowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "SearchFlowExecutions",
        input_schema = schemas.SearchFlowExecutionsInput,
        output_schema = schemas.SearchFlowExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchFlowTemplates(input, options)
    return self:invokeOperation(input, {
        name = "SearchFlowTemplates",
        input_schema = schemas.SearchFlowTemplatesInput,
        output_schema = schemas.SearchFlowTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchSystemInstances(input, options)
    return self:invokeOperation(input, {
        name = "SearchSystemInstances",
        input_schema = schemas.SearchSystemInstancesInput,
        output_schema = schemas.SearchSystemInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchSystemTemplates(input, options)
    return self:invokeOperation(input, {
        name = "SearchSystemTemplates",
        input_schema = schemas.SearchSystemTemplatesInput,
        output_schema = schemas.SearchSystemTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchThings(input, options)
    return self:invokeOperation(input, {
        name = "SearchThings",
        input_schema = schemas.SearchThingsInput,
        output_schema = schemas.SearchThingsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:undeploySystemInstance(input, options)
    return self:invokeOperation(input, {
        name = "UndeploySystemInstance",
        input_schema = schemas.UndeploySystemInstanceInput,
        output_schema = schemas.UndeploySystemInstanceOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFlowTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFlowTemplate",
        input_schema = schemas.UpdateFlowTemplateInput,
        output_schema = schemas.UpdateFlowTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSystemTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSystemTemplate",
        input_schema = schemas.UpdateSystemTemplateInput,
        output_schema = schemas.UpdateSystemTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:uploadEntityDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "UploadEntityDefinitions",
        input_schema = schemas.UploadEntityDefinitionsInput,
        output_schema = schemas.UploadEntityDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
