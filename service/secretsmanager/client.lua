local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("secretsmanager.endpoint_rules")
local schemas = require("secretsmanager.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "secretsmanager"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "secretsmanager", signing_region = cfg.region } }
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

function Client:batchGetSecretValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSecretValue",
        input_schema = schemas.BatchGetSecretValueInput,
        output_schema = schemas.BatchGetSecretValueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelRotateSecret(input, options)
    return self:invokeOperation(input, {
        name = "CancelRotateSecret",
        input_schema = schemas.CancelRotateSecretInput,
        output_schema = schemas.CancelRotateSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecret(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecret",
        input_schema = schemas.CreateSecretInput,
        output_schema = schemas.CreateSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecret(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecret",
        input_schema = schemas.DeleteSecretInput,
        output_schema = schemas.DeleteSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecret(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecret",
        input_schema = schemas.DescribeSecretInput,
        output_schema = schemas.DescribeSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRandomPassword(input, options)
    return self:invokeOperation(input, {
        name = "GetRandomPassword",
        input_schema = schemas.GetRandomPasswordInput,
        output_schema = schemas.GetRandomPasswordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSecretValue(input, options)
    return self:invokeOperation(input, {
        name = "GetSecretValue",
        input_schema = schemas.GetSecretValueInput,
        output_schema = schemas.GetSecretValueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecrets(input, options)
    return self:invokeOperation(input, {
        name = "ListSecrets",
        input_schema = schemas.ListSecretsInput,
        output_schema = schemas.ListSecretsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecretVersionIds(input, options)
    return self:invokeOperation(input, {
        name = "ListSecretVersionIds",
        input_schema = schemas.ListSecretVersionIdsInput,
        output_schema = schemas.ListSecretVersionIdsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSecretValue(input, options)
    return self:invokeOperation(input, {
        name = "PutSecretValue",
        input_schema = schemas.PutSecretValueInput,
        output_schema = schemas.PutSecretValueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeRegionsFromReplication(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRegionsFromReplication",
        input_schema = schemas.RemoveRegionsFromReplicationInput,
        output_schema = schemas.RemoveRegionsFromReplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replicateSecretToRegions(input, options)
    return self:invokeOperation(input, {
        name = "ReplicateSecretToRegions",
        input_schema = schemas.ReplicateSecretToRegionsInput,
        output_schema = schemas.ReplicateSecretToRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreSecret(input, options)
    return self:invokeOperation(input, {
        name = "RestoreSecret",
        input_schema = schemas.RestoreSecretInput,
        output_schema = schemas.RestoreSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rotateSecret(input, options)
    return self:invokeOperation(input, {
        name = "RotateSecret",
        input_schema = schemas.RotateSecretInput,
        output_schema = schemas.RotateSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopReplicationToReplica(input, options)
    return self:invokeOperation(input, {
        name = "StopReplicationToReplica",
        input_schema = schemas.StopReplicationToReplicaInput,
        output_schema = schemas.StopReplicationToReplicaOutput,
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

function Client:updateSecret(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecret",
        input_schema = schemas.UpdateSecretInput,
        output_schema = schemas.UpdateSecretOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecretVersionStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecretVersionStage",
        input_schema = schemas.UpdateSecretVersionStageInput,
        output_schema = schemas.UpdateSecretVersionStageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "ValidateResourcePolicy",
        input_schema = schemas.ValidateResourcePolicyInput,
        output_schema = schemas.ValidateResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
