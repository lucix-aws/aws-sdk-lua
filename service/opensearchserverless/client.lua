local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("opensearchserverless.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("opensearchserverless.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "OpenSearchServerless"
    cfg.signing_name = "opensearchserverless"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:batchGetCollection(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCollection",
        input_schema = types.BatchGetCollectionInput,
        output_schema = types.BatchGetCollectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCollectionGroup",
        input_schema = types.BatchGetCollectionGroupInput,
        output_schema = types.BatchGetCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetEffectiveLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetEffectiveLifecyclePolicy",
        input_schema = types.BatchGetEffectiveLifecyclePolicyInput,
        output_schema = types.BatchGetEffectiveLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetLifecyclePolicy",
        input_schema = types.BatchGetLifecyclePolicyInput,
        output_schema = types.BatchGetLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetVpcEndpoint",
        input_schema = types.BatchGetVpcEndpointInput,
        output_schema = types.BatchGetVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPolicy",
        input_schema = types.CreateAccessPolicyInput,
        output_schema = types.CreateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCollection(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollection",
        input_schema = types.CreateCollectionInput,
        output_schema = types.CreateCollectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCollectionGroup",
        input_schema = types.CreateCollectionGroupInput,
        output_schema = types.CreateCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLifecyclePolicy",
        input_schema = types.CreateLifecyclePolicyInput,
        output_schema = types.CreateLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityConfig",
        input_schema = types.CreateSecurityConfigInput,
        output_schema = types.CreateSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityPolicy",
        input_schema = types.CreateSecurityPolicyInput,
        output_schema = types.CreateSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcEndpoint",
        input_schema = types.CreateVpcEndpointInput,
        output_schema = types.CreateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPolicy",
        input_schema = types.DeleteAccessPolicyInput,
        output_schema = types.DeleteAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCollection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCollection",
        input_schema = types.DeleteCollectionInput,
        output_schema = types.DeleteCollectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCollectionGroup",
        input_schema = types.DeleteCollectionGroupInput,
        output_schema = types.DeleteCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = types.DeleteIndexInput,
        output_schema = types.DeleteIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = types.DeleteLifecyclePolicyInput,
        output_schema = types.DeleteLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityConfig",
        input_schema = types.DeleteSecurityConfigInput,
        output_schema = types.DeleteSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityPolicy",
        input_schema = types.DeleteSecurityPolicyInput,
        output_schema = types.DeleteSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcEndpoint",
        input_schema = types.DeleteVpcEndpointInput,
        output_schema = types.DeleteVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessPolicy",
        input_schema = types.GetAccessPolicyInput,
        output_schema = types.GetAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountSettings",
        input_schema = types.GetAccountSettingsInput,
        output_schema = types.GetAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIndex(input, options)
    return self:invokeOperation(input, {
        name = "GetIndex",
        input_schema = types.GetIndexInput,
        output_schema = types.GetIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPoliciesStats(input, options)
    return self:invokeOperation(input, {
        name = "GetPoliciesStats",
        input_schema = types.GetPoliciesStatsInput,
        output_schema = types.GetPoliciesStatsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityConfig",
        input_schema = types.GetSecurityConfigInput,
        output_schema = types.GetSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetSecurityPolicy",
        input_schema = types.GetSecurityPolicyInput,
        output_schema = types.GetSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPolicies",
        input_schema = types.ListAccessPoliciesInput,
        output_schema = types.ListAccessPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCollectionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListCollectionGroups",
        input_schema = types.ListCollectionGroupsInput,
        output_schema = types.ListCollectionGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCollections(input, options)
    return self:invokeOperation(input, {
        name = "ListCollections",
        input_schema = types.ListCollectionsInput,
        output_schema = types.ListCollectionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLifecyclePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListLifecyclePolicies",
        input_schema = types.ListLifecyclePoliciesInput,
        output_schema = types.ListLifecyclePoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSecurityConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityConfigs",
        input_schema = types.ListSecurityConfigsInput,
        output_schema = types.ListSecurityConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSecurityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityPolicies",
        input_schema = types.ListSecurityPoliciesInput,
        output_schema = types.ListSecurityPoliciesOutput,
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

function Client:listVpcEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcEndpoints",
        input_schema = types.ListVpcEndpointsInput,
        output_schema = types.ListVpcEndpointsOutput,
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

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessPolicy",
        input_schema = types.UpdateAccessPolicyInput,
        output_schema = types.UpdateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccountSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountSettings",
        input_schema = types.UpdateAccountSettingsInput,
        output_schema = types.UpdateAccountSettingsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCollection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCollection",
        input_schema = types.UpdateCollectionInput,
        output_schema = types.UpdateCollectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCollectionGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCollectionGroup",
        input_schema = types.UpdateCollectionGroupInput,
        output_schema = types.UpdateCollectionGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = types.UpdateIndexInput,
        output_schema = types.UpdateIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLifecyclePolicy",
        input_schema = types.UpdateLifecyclePolicyInput,
        output_schema = types.UpdateLifecyclePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSecurityConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityConfig",
        input_schema = types.UpdateSecurityConfigInput,
        output_schema = types.UpdateSecurityConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityPolicy",
        input_schema = types.UpdateSecurityPolicyInput,
        output_schema = types.UpdateSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateVpcEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcEndpoint",
        input_schema = types.UpdateVpcEndpointInput,
        output_schema = types.UpdateVpcEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
