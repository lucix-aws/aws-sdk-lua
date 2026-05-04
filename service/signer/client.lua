local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("signer.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("signer.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WallabyService"
    cfg.signing_name = "signer"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:addProfilePermission(input, options)
    return self:invokeOperation(input, {
        name = "AddProfilePermission",
        input_schema = types.AddProfilePermissionInput,
        output_schema = types.AddProfilePermissionOutput,
        http_method = "POST",
        http_path = "/signing-profiles/{profileName}/permissions",
    }, options)
end

function Client:cancelSigningProfile(input, options)
    return self:invokeOperation(input, {
        name = "CancelSigningProfile",
        input_schema = types.CancelSigningProfileInput,
        output_schema = types.CancelSigningProfileOutput,
        http_method = "DELETE",
        http_path = "/signing-profiles/{profileName}",
    }, options)
end

function Client:describeSigningJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSigningJob",
        input_schema = types.DescribeSigningJobInput,
        output_schema = types.DescribeSigningJobOutput,
        http_method = "GET",
        http_path = "/signing-jobs/{jobId}",
    }, options)
end

function Client:getRevocationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetRevocationStatus",
        input_schema = types.GetRevocationStatusInput,
        output_schema = types.GetRevocationStatusOutput,
        http_method = "GET",
        http_path = "/revocations",
    }, options)
end

function Client:getSigningPlatform(input, options)
    return self:invokeOperation(input, {
        name = "GetSigningPlatform",
        input_schema = types.GetSigningPlatformInput,
        output_schema = types.GetSigningPlatformOutput,
        http_method = "GET",
        http_path = "/signing-platforms/{platformId}",
    }, options)
end

function Client:getSigningProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetSigningProfile",
        input_schema = types.GetSigningProfileInput,
        output_schema = types.GetSigningProfileOutput,
        http_method = "GET",
        http_path = "/signing-profiles/{profileName}",
    }, options)
end

function Client:listProfilePermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListProfilePermissions",
        input_schema = types.ListProfilePermissionsInput,
        output_schema = types.ListProfilePermissionsOutput,
        http_method = "GET",
        http_path = "/signing-profiles/{profileName}/permissions",
    }, options)
end

function Client:listSigningJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSigningJobs",
        input_schema = types.ListSigningJobsInput,
        output_schema = types.ListSigningJobsOutput,
        http_method = "GET",
        http_path = "/signing-jobs",
    }, options)
end

function Client:listSigningPlatforms(input, options)
    return self:invokeOperation(input, {
        name = "ListSigningPlatforms",
        input_schema = types.ListSigningPlatformsInput,
        output_schema = types.ListSigningPlatformsOutput,
        http_method = "GET",
        http_path = "/signing-platforms",
    }, options)
end

function Client:listSigningProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListSigningProfiles",
        input_schema = types.ListSigningProfilesInput,
        output_schema = types.ListSigningProfilesOutput,
        http_method = "GET",
        http_path = "/signing-profiles",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:putSigningProfile(input, options)
    return self:invokeOperation(input, {
        name = "PutSigningProfile",
        input_schema = types.PutSigningProfileInput,
        output_schema = types.PutSigningProfileOutput,
        http_method = "PUT",
        http_path = "/signing-profiles/{profileName}",
    }, options)
end

function Client:removeProfilePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemoveProfilePermission",
        input_schema = types.RemoveProfilePermissionInput,
        output_schema = types.RemoveProfilePermissionOutput,
        http_method = "DELETE",
        http_path = "/signing-profiles/{profileName}/permissions/{statementId}",
    }, options)
end

function Client:revokeSignature(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSignature",
        input_schema = types.RevokeSignatureInput,
        output_schema = types.RevokeSignatureOutput,
        http_method = "PUT",
        http_path = "/signing-jobs/{jobId}/revoke",
    }, options)
end

function Client:revokeSigningProfile(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSigningProfile",
        input_schema = types.RevokeSigningProfileInput,
        output_schema = types.RevokeSigningProfileOutput,
        http_method = "PUT",
        http_path = "/signing-profiles/{profileName}/revoke",
    }, options)
end

function Client:signPayload(input, options)
    return self:invokeOperation(input, {
        name = "SignPayload",
        input_schema = types.SignPayloadInput,
        output_schema = types.SignPayloadOutput,
        http_method = "POST",
        http_path = "/signing-jobs/with-payload",
    }, options)
end

function Client:startSigningJob(input, options)
    return self:invokeOperation(input, {
        name = "StartSigningJob",
        input_schema = types.StartSigningJobInput,
        output_schema = types.StartSigningJobOutput,
        http_method = "POST",
        http_path = "/signing-jobs",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

return M
