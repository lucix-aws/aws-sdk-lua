local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("entityresolution.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("entityresolution.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSVeniceService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "entityresolution", signing_region = cfg.region } }
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

function Client:addPolicyStatement(input, options)
    return self:invokeOperation(input, {
        name = "AddPolicyStatement",
        input_schema = types.AddPolicyStatementInput,
        output_schema = types.AddPolicyStatementOutput,
        http_method = "POST",
        http_path = "/policies/{arn}/{statementId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteUniqueId(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteUniqueId",
        input_schema = types.BatchDeleteUniqueIdInput,
        output_schema = types.BatchDeleteUniqueIdOutput,
        http_method = "DELETE",
        http_path = "/matchingworkflows/{workflowName}/uniqueids",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdMappingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdMappingWorkflow",
        input_schema = types.CreateIdMappingWorkflowInput,
        output_schema = types.CreateIdMappingWorkflowOutput,
        http_method = "POST",
        http_path = "/idmappingworkflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdNamespace",
        input_schema = types.CreateIdNamespaceInput,
        output_schema = types.CreateIdNamespaceOutput,
        http_method = "POST",
        http_path = "/idnamespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMatchingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateMatchingWorkflow",
        input_schema = types.CreateMatchingWorkflowInput,
        output_schema = types.CreateMatchingWorkflowOutput,
        http_method = "POST",
        http_path = "/matchingworkflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSchemaMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchemaMapping",
        input_schema = types.CreateSchemaMappingInput,
        output_schema = types.CreateSchemaMappingOutput,
        http_method = "POST",
        http_path = "/schemas",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdMappingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdMappingWorkflow",
        input_schema = types.DeleteIdMappingWorkflowInput,
        output_schema = types.DeleteIdMappingWorkflowOutput,
        http_method = "DELETE",
        http_path = "/idmappingworkflows/{workflowName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdNamespace",
        input_schema = types.DeleteIdNamespaceInput,
        output_schema = types.DeleteIdNamespaceOutput,
        http_method = "DELETE",
        http_path = "/idnamespaces/{idNamespaceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMatchingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMatchingWorkflow",
        input_schema = types.DeleteMatchingWorkflowInput,
        output_schema = types.DeleteMatchingWorkflowOutput,
        http_method = "DELETE",
        http_path = "/matchingworkflows/{workflowName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicyStatement(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyStatement",
        input_schema = types.DeletePolicyStatementInput,
        output_schema = types.DeletePolicyStatementOutput,
        http_method = "DELETE",
        http_path = "/policies/{arn}/{statementId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchemaMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchemaMapping",
        input_schema = types.DeleteSchemaMappingInput,
        output_schema = types.DeleteSchemaMappingOutput,
        http_method = "DELETE",
        http_path = "/schemas/{schemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateMatchId(input, options)
    return self:invokeOperation(input, {
        name = "GenerateMatchId",
        input_schema = types.GenerateMatchIdInput,
        output_schema = types.GenerateMatchIdOutput,
        http_method = "POST",
        http_path = "/matchingworkflows/{workflowName}/generateMatches",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdMappingJob(input, options)
    return self:invokeOperation(input, {
        name = "GetIdMappingJob",
        input_schema = types.GetIdMappingJobInput,
        output_schema = types.GetIdMappingJobOutput,
        http_method = "GET",
        http_path = "/idmappingworkflows/{workflowName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdMappingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetIdMappingWorkflow",
        input_schema = types.GetIdMappingWorkflowInput,
        output_schema = types.GetIdMappingWorkflowOutput,
        http_method = "GET",
        http_path = "/idmappingworkflows/{workflowName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetIdNamespace",
        input_schema = types.GetIdNamespaceInput,
        output_schema = types.GetIdNamespaceOutput,
        http_method = "GET",
        http_path = "/idnamespaces/{idNamespaceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMatchId(input, options)
    return self:invokeOperation(input, {
        name = "GetMatchId",
        input_schema = types.GetMatchIdInput,
        output_schema = types.GetMatchIdOutput,
        http_method = "POST",
        http_path = "/matchingworkflows/{workflowName}/matches",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMatchingJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMatchingJob",
        input_schema = types.GetMatchingJobInput,
        output_schema = types.GetMatchingJobOutput,
        http_method = "GET",
        http_path = "/matchingworkflows/{workflowName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMatchingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetMatchingWorkflow",
        input_schema = types.GetMatchingWorkflowInput,
        output_schema = types.GetMatchingWorkflowOutput,
        http_method = "GET",
        http_path = "/matchingworkflows/{workflowName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "GET",
        http_path = "/policies/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProviderService(input, options)
    return self:invokeOperation(input, {
        name = "GetProviderService",
        input_schema = types.GetProviderServiceInput,
        output_schema = types.GetProviderServiceOutput,
        http_method = "GET",
        http_path = "/providerservices/{providerName}/{providerServiceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchemaMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaMapping",
        input_schema = types.GetSchemaMappingInput,
        output_schema = types.GetSchemaMappingOutput,
        http_method = "GET",
        http_path = "/schemas/{schemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdMappingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListIdMappingJobs",
        input_schema = types.ListIdMappingJobsInput,
        output_schema = types.ListIdMappingJobsOutput,
        http_method = "GET",
        http_path = "/idmappingworkflows/{workflowName}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdMappingWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListIdMappingWorkflows",
        input_schema = types.ListIdMappingWorkflowsInput,
        output_schema = types.ListIdMappingWorkflowsOutput,
        http_method = "GET",
        http_path = "/idmappingworkflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListIdNamespaces",
        input_schema = types.ListIdNamespacesInput,
        output_schema = types.ListIdNamespacesOutput,
        http_method = "GET",
        http_path = "/idnamespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMatchingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMatchingJobs",
        input_schema = types.ListMatchingJobsInput,
        output_schema = types.ListMatchingJobsOutput,
        http_method = "GET",
        http_path = "/matchingworkflows/{workflowName}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMatchingWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListMatchingWorkflows",
        input_schema = types.ListMatchingWorkflowsInput,
        output_schema = types.ListMatchingWorkflowsOutput,
        http_method = "GET",
        http_path = "/matchingworkflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProviderServices(input, options)
    return self:invokeOperation(input, {
        name = "ListProviderServices",
        input_schema = types.ListProviderServicesInput,
        output_schema = types.ListProviderServicesOutput,
        http_method = "GET",
        http_path = "/providerservices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemaMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemaMappings",
        input_schema = types.ListSchemaMappingsInput,
        output_schema = types.ListSchemaMappingsOutput,
        http_method = "GET",
        http_path = "/schemas",
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

function Client:putPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPolicy",
        input_schema = types.PutPolicyInput,
        output_schema = types.PutPolicyOutput,
        http_method = "PUT",
        http_path = "/policies/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startIdMappingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartIdMappingJob",
        input_schema = types.StartIdMappingJobInput,
        output_schema = types.StartIdMappingJobOutput,
        http_method = "POST",
        http_path = "/idmappingworkflows/{workflowName}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMatchingJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMatchingJob",
        input_schema = types.StartMatchingJobInput,
        output_schema = types.StartMatchingJobOutput,
        http_method = "POST",
        http_path = "/matchingworkflows/{workflowName}/jobs",
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

function Client:updateIdMappingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdMappingWorkflow",
        input_schema = types.UpdateIdMappingWorkflowInput,
        output_schema = types.UpdateIdMappingWorkflowOutput,
        http_method = "PUT",
        http_path = "/idmappingworkflows/{workflowName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIdNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdNamespace",
        input_schema = types.UpdateIdNamespaceInput,
        output_schema = types.UpdateIdNamespaceOutput,
        http_method = "PUT",
        http_path = "/idnamespaces/{idNamespaceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMatchingWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMatchingWorkflow",
        input_schema = types.UpdateMatchingWorkflowInput,
        output_schema = types.UpdateMatchingWorkflowOutput,
        http_method = "PUT",
        http_path = "/matchingworkflows/{workflowName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSchemaMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchemaMapping",
        input_schema = types.UpdateSchemaMappingInput,
        output_schema = types.UpdateSchemaMappingOutput,
        http_method = "PUT",
        http_path = "/schemas/{schemaName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
