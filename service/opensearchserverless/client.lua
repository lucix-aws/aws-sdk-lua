local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("opensearchserverless.endpoint_rules")
local schemas = require("opensearchserverless.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "OpenSearchServerless"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aoss", signing_region = cfg.region } }
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

function Client:batchGetCollection(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCollection",
        input_schema = schemas.BatchGetCollectionInput,
        output_schema = schemas.BatchGetCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCollectionGroup",
        input_schema = schemas.BatchGetCollectionGroupInput,
        output_schema = schemas.BatchGetCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetEffectiveLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetEffectiveLifecyclePolicy",
        input_schema = schemas.BatchGetEffectiveLifecyclePolicyInput,
        output_schema = schemas.BatchGetEffectiveLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetLifecyclePolicy",
        input_schema = schemas.BatchGetLifecyclePolicyInput,
        output_schema = schemas.BatchGetLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetVpcEndpoint",
        input_schema = schemas.BatchGetVpcEndpointInput,
        output_schema = schemas.BatchGetVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPolicy",
        input_schema = schemas.CreateAccessPolicyInput,
        output_schema = schemas.CreateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCollection(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollection",
        input_schema = schemas.CreateCollectionInput,
        output_schema = schemas.CreateCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollectionGroup",
        input_schema = schemas.CreateCollectionGroupInput,
        output_schema = schemas.CreateCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = schemas.CreateIndexInput,
        output_schema = schemas.CreateIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLifecyclePolicy",
        input_schema = schemas.CreateLifecyclePolicyInput,
        output_schema = schemas.CreateLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityConfig",
        input_schema = schemas.CreateSecurityConfigInput,
        output_schema = schemas.CreateSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityPolicy",
        input_schema = schemas.CreateSecurityPolicyInput,
        output_schema = schemas.CreateSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpoint",
        input_schema = schemas.CreateVpcEndpointInput,
        output_schema = schemas.CreateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPolicy",
        input_schema = schemas.DeleteAccessPolicyInput,
        output_schema = schemas.DeleteAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCollection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCollection",
        input_schema = schemas.DeleteCollectionInput,
        output_schema = schemas.DeleteCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCollectionGroup",
        input_schema = schemas.DeleteCollectionGroupInput,
        output_schema = schemas.DeleteCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = schemas.DeleteIndexInput,
        output_schema = schemas.DeleteIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = schemas.DeleteLifecyclePolicyInput,
        output_schema = schemas.DeleteLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityConfig",
        input_schema = schemas.DeleteSecurityConfigInput,
        output_schema = schemas.DeleteSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityPolicy",
        input_schema = schemas.DeleteSecurityPolicyInput,
        output_schema = schemas.DeleteSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpoint",
        input_schema = schemas.DeleteVpcEndpointInput,
        output_schema = schemas.DeleteVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPolicy",
        input_schema = schemas.GetAccessPolicyInput,
        output_schema = schemas.GetAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = schemas.GetAccountSettingsInput,
        output_schema = schemas.GetAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = schemas.GetIndexInput,
        output_schema = schemas.GetIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPoliciesStats(input, options)
    return self:invokeOperation(input, {
        name = "GetPoliciesStats",
        input_schema = schemas.GetPoliciesStatsInput,
        output_schema = schemas.GetPoliciesStatsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityConfig",
        input_schema = schemas.GetSecurityConfigInput,
        output_schema = schemas.GetSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityPolicy",
        input_schema = schemas.GetSecurityPolicyInput,
        output_schema = schemas.GetSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPolicies",
        input_schema = schemas.ListAccessPoliciesInput,
        output_schema = schemas.ListAccessPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollectionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListCollectionGroups",
        input_schema = schemas.ListCollectionGroupsInput,
        output_schema = schemas.ListCollectionGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCollections(input, options)
    return self:invokeOperation(input, {
        name = "ListCollections",
        input_schema = schemas.ListCollectionsInput,
        output_schema = schemas.ListCollectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLifecyclePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListLifecyclePolicies",
        input_schema = schemas.ListLifecyclePoliciesInput,
        output_schema = schemas.ListLifecyclePoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityConfigs",
        input_schema = schemas.ListSecurityConfigsInput,
        output_schema = schemas.ListSecurityConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityPolicies",
        input_schema = schemas.ListSecurityPoliciesInput,
        output_schema = schemas.ListSecurityPoliciesOutput,
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

function Client:listVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpoints",
        input_schema = schemas.ListVpcEndpointsInput,
        output_schema = schemas.ListVpcEndpointsOutput,
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

function Client:updateAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessPolicy",
        input_schema = schemas.UpdateAccessPolicyInput,
        output_schema = schemas.UpdateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = schemas.UpdateAccountSettingsInput,
        output_schema = schemas.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCollection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCollection",
        input_schema = schemas.UpdateCollectionInput,
        output_schema = schemas.UpdateCollectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCollectionGroup",
        input_schema = schemas.UpdateCollectionGroupInput,
        output_schema = schemas.UpdateCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = schemas.UpdateIndexInput,
        output_schema = schemas.UpdateIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLifecyclePolicy",
        input_schema = schemas.UpdateLifecyclePolicyInput,
        output_schema = schemas.UpdateLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityConfig",
        input_schema = schemas.UpdateSecurityConfigInput,
        output_schema = schemas.UpdateSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityPolicy",
        input_schema = schemas.UpdateSecurityPolicyInput,
        output_schema = schemas.UpdateSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcEndpoint",
        input_schema = schemas.UpdateVpcEndpointInput,
        output_schema = schemas.UpdateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
