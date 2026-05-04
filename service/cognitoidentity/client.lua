local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cognitoidentity.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cognitoidentity.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSCognitoIdentityService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cognito-identity", signing_region = cfg.region } }
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

function Client:createIdentityPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentityPool",
        input_schema = types.CreateIdentityPoolInput,
        output_schema = types.CreateIdentityPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentities(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentities",
        input_schema = types.DeleteIdentitiesInput,
        output_schema = types.DeleteIdentitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentityPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentityPool",
        input_schema = types.DeleteIdentityPoolInput,
        output_schema = types.DeleteIdentityPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentity",
        input_schema = types.DescribeIdentityInput,
        output_schema = types.DescribeIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIdentityPool(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIdentityPool",
        input_schema = types.DescribeIdentityPoolInput,
        output_schema = types.DescribeIdentityPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCredentialsForIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetCredentialsForIdentity",
        input_schema = types.GetCredentialsForIdentityInput,
        output_schema = types.GetCredentialsForIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:getId(input, options)
    return self:invokeOperation(input, {
        name = "GetId",
        input_schema = types.GetIdInput,
        output_schema = types.GetIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:getIdentityPoolRoles(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityPoolRoles",
        input_schema = types.GetIdentityPoolRolesInput,
        output_schema = types.GetIdentityPoolRolesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOpenIdToken(input, options)
    return self:invokeOperation(input, {
        name = "GetOpenIdToken",
        input_schema = types.GetOpenIdTokenInput,
        output_schema = types.GetOpenIdTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:getOpenIdTokenForDeveloperIdentity(input, options)
    return self:invokeOperation(input, {
        name = "GetOpenIdTokenForDeveloperIdentity",
        input_schema = types.GetOpenIdTokenForDeveloperIdentityInput,
        output_schema = types.GetOpenIdTokenForDeveloperIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPrincipalTagAttributeMap(input, options)
    return self:invokeOperation(input, {
        name = "GetPrincipalTagAttributeMap",
        input_schema = types.GetPrincipalTagAttributeMapInput,
        output_schema = types.GetPrincipalTagAttributeMapOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentities(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentities",
        input_schema = types.ListIdentitiesInput,
        output_schema = types.ListIdentitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentityPools(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityPools",
        input_schema = types.ListIdentityPoolsInput,
        output_schema = types.ListIdentityPoolsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:lookupDeveloperIdentity(input, options)
    return self:invokeOperation(input, {
        name = "LookupDeveloperIdentity",
        input_schema = types.LookupDeveloperIdentityInput,
        output_schema = types.LookupDeveloperIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:mergeDeveloperIdentities(input, options)
    return self:invokeOperation(input, {
        name = "MergeDeveloperIdentities",
        input_schema = types.MergeDeveloperIdentitiesInput,
        output_schema = types.MergeDeveloperIdentitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setIdentityPoolRoles(input, options)
    return self:invokeOperation(input, {
        name = "SetIdentityPoolRoles",
        input_schema = types.SetIdentityPoolRolesInput,
        output_schema = types.SetIdentityPoolRolesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setPrincipalTagAttributeMap(input, options)
    return self:invokeOperation(input, {
        name = "SetPrincipalTagAttributeMap",
        input_schema = types.SetPrincipalTagAttributeMapInput,
        output_schema = types.SetPrincipalTagAttributeMapOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unlinkDeveloperIdentity(input, options)
    return self:invokeOperation(input, {
        name = "UnlinkDeveloperIdentity",
        input_schema = types.UnlinkDeveloperIdentityInput,
        output_schema = types.UnlinkDeveloperIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unlinkIdentity(input, options)
    return self:invokeOperation(input, {
        name = "UnlinkIdentity",
        input_schema = types.UnlinkIdentityInput,
        output_schema = types.UnlinkIdentityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIdentityPool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentityPool",
        input_schema = types.UpdateIdentityPoolInput,
        output_schema = types.UpdateIdentityPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
