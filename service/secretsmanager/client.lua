local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("secretsmanager.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("secretsmanager.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "secretsmanager"
    cfg.signing_name = "secretsmanager"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:batchGetSecretValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSecretValue",
        input_schema = types.BatchGetSecretValueInput,
        output_schema = types.BatchGetSecretValueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:cancelRotateSecret(input, options)
    return self:invokeOperation(input, {
        name = "CancelRotateSecret",
        input_schema = types.CancelRotateSecretInput,
        output_schema = types.CancelRotateSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSecret(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecret",
        input_schema = types.CreateSecretInput,
        output_schema = types.CreateSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSecret(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecret",
        input_schema = types.DeleteSecretInput,
        output_schema = types.DeleteSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSecret(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecret",
        input_schema = types.DescribeSecretInput,
        output_schema = types.DescribeSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRandomPassword(input, options)
    return self:invokeOperation(input, {
        name = "GetRandomPassword",
        input_schema = types.GetRandomPasswordInput,
        output_schema = types.GetRandomPasswordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSecretValue(input, options)
    return self:invokeOperation(input, {
        name = "GetSecretValue",
        input_schema = types.GetSecretValueInput,
        output_schema = types.GetSecretValueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSecrets(input, options)
    return self:invokeOperation(input, {
        name = "ListSecrets",
        input_schema = types.ListSecretsInput,
        output_schema = types.ListSecretsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSecretVersionIds(input, options)
    return self:invokeOperation(input, {
        name = "ListSecretVersionIds",
        input_schema = types.ListSecretVersionIdsInput,
        output_schema = types.ListSecretVersionIdsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putSecretValue(input, options)
    return self:invokeOperation(input, {
        name = "PutSecretValue",
        input_schema = types.PutSecretValueInput,
        output_schema = types.PutSecretValueOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeRegionsFromReplication(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRegionsFromReplication",
        input_schema = types.RemoveRegionsFromReplicationInput,
        output_schema = types.RemoveRegionsFromReplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:replicateSecretToRegions(input, options)
    return self:invokeOperation(input, {
        name = "ReplicateSecretToRegions",
        input_schema = types.ReplicateSecretToRegionsInput,
        output_schema = types.ReplicateSecretToRegionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:restoreSecret(input, options)
    return self:invokeOperation(input, {
        name = "RestoreSecret",
        input_schema = types.RestoreSecretInput,
        output_schema = types.RestoreSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rotateSecret(input, options)
    return self:invokeOperation(input, {
        name = "RotateSecret",
        input_schema = types.RotateSecretInput,
        output_schema = types.RotateSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopReplicationToReplica(input, options)
    return self:invokeOperation(input, {
        name = "StopReplicationToReplica",
        input_schema = types.StopReplicationToReplicaInput,
        output_schema = types.StopReplicationToReplicaOutput,
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

function Client:updateSecret(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecret",
        input_schema = types.UpdateSecretInput,
        output_schema = types.UpdateSecretOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSecretVersionStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecretVersionStage",
        input_schema = types.UpdateSecretVersionStageInput,
        output_schema = types.UpdateSecretVersionStageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:validateResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "ValidateResourcePolicy",
        input_schema = types.ValidateResourcePolicyInput,
        output_schema = types.ValidateResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
