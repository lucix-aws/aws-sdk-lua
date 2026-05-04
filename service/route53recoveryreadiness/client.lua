local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53recoveryreadiness.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("route53recoveryreadiness.types")

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
        input_schema = types.CreateCellInput,
        output_schema = types.CreateCellOutput,
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
        input_schema = types.CreateCrossAccountAuthorizationInput,
        output_schema = types.CreateCrossAccountAuthorizationOutput,
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
        input_schema = types.CreateReadinessCheckInput,
        output_schema = types.CreateReadinessCheckOutput,
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
        input_schema = types.CreateRecoveryGroupInput,
        output_schema = types.CreateRecoveryGroupOutput,
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
        input_schema = types.CreateResourceSetInput,
        output_schema = types.CreateResourceSetOutput,
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
        input_schema = types.DeleteCellInput,
        output_schema = types.DeleteCellOutput,
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
        input_schema = types.DeleteCrossAccountAuthorizationInput,
        output_schema = types.DeleteCrossAccountAuthorizationOutput,
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
        input_schema = types.DeleteReadinessCheckInput,
        output_schema = types.DeleteReadinessCheckOutput,
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
        input_schema = types.DeleteRecoveryGroupInput,
        output_schema = types.DeleteRecoveryGroupOutput,
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
        input_schema = types.DeleteResourceSetInput,
        output_schema = types.DeleteResourceSetOutput,
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
        input_schema = types.GetArchitectureRecommendationsInput,
        output_schema = types.GetArchitectureRecommendationsOutput,
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
        input_schema = types.GetCellInput,
        output_schema = types.GetCellOutput,
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
        input_schema = types.GetCellReadinessSummaryInput,
        output_schema = types.GetCellReadinessSummaryOutput,
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
        input_schema = types.GetReadinessCheckInput,
        output_schema = types.GetReadinessCheckOutput,
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
        input_schema = types.GetReadinessCheckResourceStatusInput,
        output_schema = types.GetReadinessCheckResourceStatusOutput,
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
        input_schema = types.GetReadinessCheckStatusInput,
        output_schema = types.GetReadinessCheckStatusOutput,
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
        input_schema = types.GetRecoveryGroupInput,
        output_schema = types.GetRecoveryGroupOutput,
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
        input_schema = types.GetRecoveryGroupReadinessSummaryInput,
        output_schema = types.GetRecoveryGroupReadinessSummaryOutput,
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
        input_schema = types.GetResourceSetInput,
        output_schema = types.GetResourceSetOutput,
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
        input_schema = types.ListCellsInput,
        output_schema = types.ListCellsOutput,
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
        input_schema = types.ListCrossAccountAuthorizationsInput,
        output_schema = types.ListCrossAccountAuthorizationsOutput,
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
        input_schema = types.ListReadinessChecksInput,
        output_schema = types.ListReadinessChecksOutput,
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
        input_schema = types.ListRecoveryGroupsInput,
        output_schema = types.ListRecoveryGroupsOutput,
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
        input_schema = types.ListResourceSetsInput,
        output_schema = types.ListResourceSetsOutput,
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
        input_schema = types.ListRulesInput,
        output_schema = types.ListRulesOperationOutput,
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
        input_schema = types.ListTagsForResourcesInput,
        output_schema = types.ListTagsForResourcesOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateCellInput,
        output_schema = types.UpdateCellOutput,
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
        input_schema = types.UpdateReadinessCheckInput,
        output_schema = types.UpdateReadinessCheckOutput,
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
        input_schema = types.UpdateRecoveryGroupInput,
        output_schema = types.UpdateRecoveryGroupOutput,
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
        input_schema = types.UpdateResourceSetInput,
        output_schema = types.UpdateResourceSetOutput,
        http_method = "PUT",
        http_path = "/resourcesets/{ResourceSetName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
