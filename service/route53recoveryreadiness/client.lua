local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53recoveryreadiness.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("route53recoveryreadiness.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53RecoveryReadiness"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53-recovery-readiness", signing_region = cfg.region } }
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

function Client:createCell(input, options)
    return self:invokeOperation(input, {
        name = "CreateCell",
        input_schema = schemas.CreateCellInput,
        output_schema = schemas.CreateCellOutput,
        http_method = "POST",
        http_path = "/cells",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCrossAccountAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "CreateCrossAccountAuthorization",
        input_schema = schemas.CreateCrossAccountAuthorizationInput,
        output_schema = schemas.CreateCrossAccountAuthorizationOutput,
        http_method = "POST",
        http_path = "/crossaccountauthorizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReadinessCheck(input, options)
    return self:invokeOperation(input, {
        name = "CreateReadinessCheck",
        input_schema = schemas.CreateReadinessCheckInput,
        output_schema = schemas.CreateReadinessCheckOutput,
        http_method = "POST",
        http_path = "/readinesschecks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRecoveryGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecoveryGroup",
        input_schema = schemas.CreateRecoveryGroupInput,
        output_schema = schemas.CreateRecoveryGroupOutput,
        http_method = "POST",
        http_path = "/recoverygroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceSet",
        input_schema = schemas.CreateResourceSetInput,
        output_schema = schemas.CreateResourceSetOutput,
        http_method = "POST",
        http_path = "/resourcesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCell(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCell",
        input_schema = schemas.DeleteCellInput,
        output_schema = schemas.DeleteCellOutput,
        http_method = "DELETE",
        http_path = "/cells/{CellName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCrossAccountAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCrossAccountAuthorization",
        input_schema = schemas.DeleteCrossAccountAuthorizationInput,
        output_schema = schemas.DeleteCrossAccountAuthorizationOutput,
        http_method = "DELETE",
        http_path = "/crossaccountauthorizations/{CrossAccountAuthorization}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReadinessCheck(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReadinessCheck",
        input_schema = schemas.DeleteReadinessCheckInput,
        output_schema = schemas.DeleteReadinessCheckOutput,
        http_method = "DELETE",
        http_path = "/readinesschecks/{ReadinessCheckName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRecoveryGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecoveryGroup",
        input_schema = schemas.DeleteRecoveryGroupInput,
        output_schema = schemas.DeleteRecoveryGroupOutput,
        http_method = "DELETE",
        http_path = "/recoverygroups/{RecoveryGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceSet",
        input_schema = schemas.DeleteResourceSetInput,
        output_schema = schemas.DeleteResourceSetOutput,
        http_method = "DELETE",
        http_path = "/resourcesets/{ResourceSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getArchitectureRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetArchitectureRecommendations",
        input_schema = schemas.GetArchitectureRecommendationsInput,
        output_schema = schemas.GetArchitectureRecommendationsOutput,
        http_method = "GET",
        http_path = "/recoverygroups/{RecoveryGroupName}/architectureRecommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCell(input, options)
    return self:invokeOperation(input, {
        name = "GetCell",
        input_schema = schemas.GetCellInput,
        output_schema = schemas.GetCellOutput,
        http_method = "GET",
        http_path = "/cells/{CellName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCellReadinessSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetCellReadinessSummary",
        input_schema = schemas.GetCellReadinessSummaryInput,
        output_schema = schemas.GetCellReadinessSummaryOutput,
        http_method = "GET",
        http_path = "/cellreadiness/{CellName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReadinessCheck(input, options)
    return self:invokeOperation(input, {
        name = "GetReadinessCheck",
        input_schema = schemas.GetReadinessCheckInput,
        output_schema = schemas.GetReadinessCheckOutput,
        http_method = "GET",
        http_path = "/readinesschecks/{ReadinessCheckName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReadinessCheckResourceStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetReadinessCheckResourceStatus",
        input_schema = schemas.GetReadinessCheckResourceStatusInput,
        output_schema = schemas.GetReadinessCheckResourceStatusOutput,
        http_method = "GET",
        http_path = "/readinesschecks/{ReadinessCheckName}/resource/{ResourceIdentifier}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReadinessCheckStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetReadinessCheckStatus",
        input_schema = schemas.GetReadinessCheckStatusInput,
        output_schema = schemas.GetReadinessCheckStatusOutput,
        http_method = "GET",
        http_path = "/readinesschecks/{ReadinessCheckName}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecoveryGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryGroup",
        input_schema = schemas.GetRecoveryGroupInput,
        output_schema = schemas.GetRecoveryGroupOutput,
        http_method = "GET",
        http_path = "/recoverygroups/{RecoveryGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRecoveryGroupReadinessSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetRecoveryGroupReadinessSummary",
        input_schema = schemas.GetRecoveryGroupReadinessSummaryInput,
        output_schema = schemas.GetRecoveryGroupReadinessSummaryOutput,
        http_method = "GET",
        http_path = "/recoverygroupreadiness/{RecoveryGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceSet",
        input_schema = schemas.GetResourceSetInput,
        output_schema = schemas.GetResourceSetOutput,
        http_method = "GET",
        http_path = "/resourcesets/{ResourceSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCells(input, options)
    return self:invokeOperation(input, {
        name = "ListCells",
        input_schema = schemas.ListCellsInput,
        output_schema = schemas.ListCellsOutput,
        http_method = "GET",
        http_path = "/cells",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCrossAccountAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "ListCrossAccountAuthorizations",
        input_schema = schemas.ListCrossAccountAuthorizationsInput,
        output_schema = schemas.ListCrossAccountAuthorizationsOutput,
        http_method = "GET",
        http_path = "/crossaccountauthorizations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReadinessChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListReadinessChecks",
        input_schema = schemas.ListReadinessChecksInput,
        output_schema = schemas.ListReadinessChecksOutput,
        http_method = "GET",
        http_path = "/readinesschecks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecoveryGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListRecoveryGroups",
        input_schema = schemas.ListRecoveryGroupsInput,
        output_schema = schemas.ListRecoveryGroupsOutput,
        http_method = "GET",
        http_path = "/recoverygroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceSets(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSets",
        input_schema = schemas.ListResourceSetsInput,
        output_schema = schemas.ListResourceSetsOutput,
        http_method = "GET",
        http_path = "/resourcesets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = schemas.ListRulesInput,
        output_schema = schemas.ListRulesOperationOutput,
        http_method = "GET",
        http_path = "/rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResources(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResources",
        input_schema = schemas.ListTagsForResourcesInput,
        output_schema = schemas.ListTagsForResourcesOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCell(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCell",
        input_schema = schemas.UpdateCellInput,
        output_schema = schemas.UpdateCellOutput,
        http_method = "PUT",
        http_path = "/cells/{CellName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReadinessCheck(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReadinessCheck",
        input_schema = schemas.UpdateReadinessCheckInput,
        output_schema = schemas.UpdateReadinessCheckOutput,
        http_method = "PUT",
        http_path = "/readinesschecks/{ReadinessCheckName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRecoveryGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecoveryGroup",
        input_schema = schemas.UpdateRecoveryGroupInput,
        output_schema = schemas.UpdateRecoveryGroupOutput,
        http_method = "PUT",
        http_path = "/recoverygroups/{RecoveryGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceSet",
        input_schema = schemas.UpdateResourceSetInput,
        output_schema = schemas.UpdateResourceSetOutput,
        http_method = "PUT",
        http_path = "/resourcesets/{ResourceSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
