local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mpa.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mpa.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSFluffyCoreService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mpa", signing_region = cfg.region } }
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

function Client:cancelSession(input, options)
    return self:invokeOperation(input, {
        name = "CancelSession",
        input_schema = types.CancelSessionInput,
        output_schema = types.CancelSessionOutput,
        http_method = "PUT",
        http_path = "/sessions/{SessionArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "CreateApprovalTeam",
        input_schema = types.CreateApprovalTeamInput,
        output_schema = types.CreateApprovalTeamOutput,
        http_method = "POST",
        http_path = "/approval-teams",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentitySource",
        input_schema = types.CreateIdentitySourceInput,
        output_schema = types.CreateIdentitySourceOutput,
        http_method = "POST",
        http_path = "/identity-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentitySource",
        input_schema = types.DeleteIdentitySourceInput,
        output_schema = types.DeleteIdentitySourceOutput,
        http_method = "DELETE",
        http_path = "/identity-sources/{IdentitySourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInactiveApprovalTeamVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInactiveApprovalTeamVersion",
        input_schema = types.DeleteInactiveApprovalTeamVersionInput,
        output_schema = types.DeleteInactiveApprovalTeamVersionOutput,
        http_method = "DELETE",
        http_path = "/approval-teams/{Arn}/{VersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "GetApprovalTeam",
        input_schema = types.GetApprovalTeamInput,
        output_schema = types.GetApprovalTeamOutput,
        http_method = "GET",
        http_path = "/approval-teams/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentitySource",
        input_schema = types.GetIdentitySourceInput,
        output_schema = types.GetIdentitySourceOutput,
        http_method = "GET",
        http_path = "/identity-sources/{IdentitySourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyVersion",
        input_schema = types.GetPolicyVersionInput,
        output_schema = types.GetPolicyVersionOutput,
        http_method = "GET",
        http_path = "/policy-versions/{PolicyVersionArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/GetResourcePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/sessions/{SessionArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApprovalTeams(input, options)
    return self:invokeOperation(input, {
        name = "ListApprovalTeams",
        input_schema = types.ListApprovalTeamsInput,
        output_schema = types.ListApprovalTeamsOutput,
        http_method = "POST",
        http_path = "/approval-teams/?List",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentitySources(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentitySources",
        input_schema = types.ListIdentitySourcesInput,
        output_schema = types.ListIdentitySourcesOutput,
        http_method = "POST",
        http_path = "/identity-sources/?List",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = types.ListPoliciesInput,
        output_schema = types.ListPoliciesOutput,
        http_method = "POST",
        http_path = "/policies/?List",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyVersions",
        input_schema = types.ListPolicyVersionsInput,
        output_schema = types.ListPolicyVersionsOutput,
        http_method = "POST",
        http_path = "/policies/{PolicyArn}/?List",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcePolicies",
        input_schema = types.ListResourcePoliciesInput,
        output_schema = types.ListResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/resource-policies/{ResourceArn}/?List",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "POST",
        http_path = "/approval-teams/{ApprovalTeamArn}/sessions/?List",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startActiveApprovalTeamDeletion(input, options)
    return self:invokeOperation(input, {
        name = "StartActiveApprovalTeamDeletion",
        input_schema = types.StartActiveApprovalTeamDeletionInput,
        output_schema = types.StartActiveApprovalTeamDeletionOutput,
        http_method = "POST",
        http_path = "/approval-teams/{Arn}?Delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startApprovalTeamBaseline(input, options)
    return self:invokeOperation(input, {
        name = "StartApprovalTeamBaseline",
        input_schema = types.StartApprovalTeamBaselineInput,
        output_schema = types.StartApprovalTeamBaselineOutput,
        http_method = "POST",
        http_path = "/approval-teams/{Arn}/baseline",
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
        http_method = "PUT",
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
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApprovalTeam(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApprovalTeam",
        input_schema = types.UpdateApprovalTeamInput,
        output_schema = types.UpdateApprovalTeamOutput,
        http_method = "PATCH",
        http_path = "/approval-teams/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
