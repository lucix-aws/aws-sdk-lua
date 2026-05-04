local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("aiops.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("aiops.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AIOps"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aiops", signing_region = cfg.region } }
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

function Client:createInvestigationGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvestigationGroup",
        input_schema = types.CreateInvestigationGroupInput,
        output_schema = types.CreateInvestigationGroupOutput,
        http_method = "POST",
        http_path = "/investigationGroups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInvestigationGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInvestigationGroup",
        input_schema = types.DeleteInvestigationGroupInput,
        output_schema = types.DeleteInvestigationGroupOutput,
        http_method = "DELETE",
        http_path = "/investigationGroups/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInvestigationGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInvestigationGroupPolicy",
        input_schema = types.DeleteInvestigationGroupPolicyInput,
        output_schema = types.DeleteInvestigationGroupPolicyOutput,
        http_method = "DELETE",
        http_path = "/investigationGroups/{identifier}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvestigationGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetInvestigationGroup",
        input_schema = types.GetInvestigationGroupInput,
        output_schema = types.GetInvestigationGroupOutput,
        http_method = "GET",
        http_path = "/investigationGroups/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvestigationGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetInvestigationGroupPolicy",
        input_schema = types.GetInvestigationGroupPolicyInput,
        output_schema = types.GetInvestigationGroupPolicyOutput,
        http_method = "GET",
        http_path = "/investigationGroups/{identifier}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvestigationGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListInvestigationGroups",
        input_schema = types.ListInvestigationGroupsInput,
        output_schema = types.ListInvestigationGroupsOutput,
        http_method = "GET",
        http_path = "/investigationGroups",
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

function Client:putInvestigationGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutInvestigationGroupPolicy",
        input_schema = types.PutInvestigationGroupPolicyInput,
        output_schema = types.PutInvestigationGroupPolicyOutput,
        http_method = "POST",
        http_path = "/investigationGroups/{identifier}/policy",
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

function Client:updateInvestigationGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInvestigationGroup",
        input_schema = types.UpdateInvestigationGroupInput,
        output_schema = types.UpdateInvestigationGroupOutput,
        http_method = "PATCH",
        http_path = "/investigationGroups/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
