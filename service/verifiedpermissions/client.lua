local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("verifiedpermissions.endpoint_rules")
local schemas = require("verifiedpermissions.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "VerifiedPermissions"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "verifiedpermissions", signing_region = cfg.region } }
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

function Client:batchGetPolicy(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetPolicy",
        input_schema = schemas.BatchGetPolicyInput,
        output_schema = schemas.BatchGetPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchIsAuthorized(input, options)
    return self:invokeOperation(input, {
        name = "BatchIsAuthorized",
        input_schema = schemas.BatchIsAuthorizedInput,
        output_schema = schemas.BatchIsAuthorizedOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchIsAuthorizedWithToken(input, options)
    return self:invokeOperation(input, {
        name = "BatchIsAuthorizedWithToken",
        input_schema = schemas.BatchIsAuthorizedWithTokenInput,
        output_schema = schemas.BatchIsAuthorizedWithTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "CreateIdentitySource",
        input_schema = schemas.CreateIdentitySourceInput,
        output_schema = schemas.CreateIdentitySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = schemas.CreatePolicyInput,
        output_schema = schemas.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicyStore(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyStore",
        input_schema = schemas.CreatePolicyStoreInput,
        output_schema = schemas.CreatePolicyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicyStoreAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyStoreAlias",
        input_schema = schemas.CreatePolicyStoreAliasInput,
        output_schema = schemas.CreatePolicyStoreAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicyTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyTemplate",
        input_schema = schemas.CreatePolicyTemplateInput,
        output_schema = schemas.CreatePolicyTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIdentitySource",
        input_schema = schemas.DeleteIdentitySourceInput,
        output_schema = schemas.DeleteIdentitySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicyStore(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyStore",
        input_schema = schemas.DeletePolicyStoreInput,
        output_schema = schemas.DeletePolicyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicyStoreAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyStoreAlias",
        input_schema = schemas.DeletePolicyStoreAliasInput,
        output_schema = schemas.DeletePolicyStoreAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicyTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyTemplate",
        input_schema = schemas.DeletePolicyTemplateInput,
        output_schema = schemas.DeletePolicyTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentitySource",
        input_schema = schemas.GetIdentitySourceInput,
        output_schema = schemas.GetIdentitySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyStore(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyStore",
        input_schema = schemas.GetPolicyStoreInput,
        output_schema = schemas.GetPolicyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyStoreAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyStoreAlias",
        input_schema = schemas.GetPolicyStoreAliasInput,
        output_schema = schemas.GetPolicyStoreAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyTemplate",
        input_schema = schemas.GetPolicyTemplateInput,
        output_schema = schemas.GetPolicyTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchema(input, options)
    return self:invokeOperation(input, {
        name = "GetSchema",
        input_schema = schemas.GetSchemaInput,
        output_schema = schemas.GetSchemaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:isAuthorized(input, options)
    return self:invokeOperation(input, {
        name = "IsAuthorized",
        input_schema = schemas.IsAuthorizedInput,
        output_schema = schemas.IsAuthorizedOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:isAuthorizedWithToken(input, options)
    return self:invokeOperation(input, {
        name = "IsAuthorizedWithToken",
        input_schema = schemas.IsAuthorizedWithTokenInput,
        output_schema = schemas.IsAuthorizedWithTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIdentitySources(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentitySources",
        input_schema = schemas.ListIdentitySourcesInput,
        output_schema = schemas.ListIdentitySourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = schemas.ListPoliciesInput,
        output_schema = schemas.ListPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyStoreAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyStoreAliases",
        input_schema = schemas.ListPolicyStoreAliasesInput,
        output_schema = schemas.ListPolicyStoreAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyStores(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyStores",
        input_schema = schemas.ListPolicyStoresInput,
        output_schema = schemas.ListPolicyStoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyTemplates",
        input_schema = schemas.ListPolicyTemplatesInput,
        output_schema = schemas.ListPolicyTemplatesOutput,
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

function Client:putSchema(input, options)
    return self:invokeOperation(input, {
        name = "PutSchema",
        input_schema = schemas.PutSchemaInput,
        output_schema = schemas.PutSchemaOutput,
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

function Client:updateIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentitySource",
        input_schema = schemas.UpdateIdentitySourceInput,
        output_schema = schemas.UpdateIdentitySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePolicy",
        input_schema = schemas.UpdatePolicyInput,
        output_schema = schemas.UpdatePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePolicyStore(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePolicyStore",
        input_schema = schemas.UpdatePolicyStoreInput,
        output_schema = schemas.UpdatePolicyStoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePolicyTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePolicyTemplate",
        input_schema = schemas.UpdatePolicyTemplateInput,
        output_schema = schemas.UpdatePolicyTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
