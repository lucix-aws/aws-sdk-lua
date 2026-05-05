local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("verifiedpermissions.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("verifiedpermissions.types")

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
        input_schema = types.BatchGetPolicyInput,
        output_schema = types.BatchGetPolicyOutput,
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
        input_schema = types.BatchIsAuthorizedInput,
        output_schema = types.BatchIsAuthorizedOutput,
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
        input_schema = types.BatchIsAuthorizedWithTokenInput,
        output_schema = types.BatchIsAuthorizedWithTokenOutput,
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
        input_schema = types.CreateIdentitySourceInput,
        output_schema = types.CreateIdentitySourceOutput,
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
        input_schema = types.CreatePolicyInput,
        output_schema = types.CreatePolicyOutput,
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
        input_schema = types.CreatePolicyStoreInput,
        output_schema = types.CreatePolicyStoreOutput,
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
        input_schema = types.CreatePolicyStoreAliasInput,
        output_schema = types.CreatePolicyStoreAliasOutput,
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
        input_schema = types.CreatePolicyTemplateInput,
        output_schema = types.CreatePolicyTemplateOutput,
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
        input_schema = types.DeleteIdentitySourceInput,
        output_schema = types.DeleteIdentitySourceOutput,
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
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
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
        input_schema = types.DeletePolicyStoreInput,
        output_schema = types.DeletePolicyStoreOutput,
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
        input_schema = types.DeletePolicyStoreAliasInput,
        output_schema = types.DeletePolicyStoreAliasOutput,
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
        input_schema = types.DeletePolicyTemplateInput,
        output_schema = types.DeletePolicyTemplateOutput,
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
        input_schema = types.GetIdentitySourceInput,
        output_schema = types.GetIdentitySourceOutput,
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
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
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
        input_schema = types.GetPolicyStoreInput,
        output_schema = types.GetPolicyStoreOutput,
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
        input_schema = types.GetPolicyStoreAliasInput,
        output_schema = types.GetPolicyStoreAliasOutput,
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
        input_schema = types.GetPolicyTemplateInput,
        output_schema = types.GetPolicyTemplateOutput,
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
        input_schema = types.GetSchemaInput,
        output_schema = types.GetSchemaOutput,
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
        input_schema = types.IsAuthorizedInput,
        output_schema = types.IsAuthorizedOutput,
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
        input_schema = types.IsAuthorizedWithTokenInput,
        output_schema = types.IsAuthorizedWithTokenOutput,
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
        input_schema = types.ListIdentitySourcesInput,
        output_schema = types.ListIdentitySourcesOutput,
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
        input_schema = types.ListPoliciesInput,
        output_schema = types.ListPoliciesOutput,
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
        input_schema = types.ListPolicyStoreAliasesInput,
        output_schema = types.ListPolicyStoreAliasesOutput,
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
        input_schema = types.ListPolicyStoresInput,
        output_schema = types.ListPolicyStoresOutput,
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
        input_schema = types.ListPolicyTemplatesInput,
        output_schema = types.ListPolicyTemplatesOutput,
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

function Client:putSchema(input, options)
    return self:invokeOperation(input, {
        name = "PutSchema",
        input_schema = types.PutSchemaInput,
        output_schema = types.PutSchemaOutput,
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

function Client:updateIdentitySource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIdentitySource",
        input_schema = types.UpdateIdentitySourceInput,
        output_schema = types.UpdateIdentitySourceOutput,
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
        input_schema = types.UpdatePolicyInput,
        output_schema = types.UpdatePolicyOutput,
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
        input_schema = types.UpdatePolicyStoreInput,
        output_schema = types.UpdatePolicyStoreOutput,
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
        input_schema = types.UpdatePolicyTemplateInput,
        output_schema = types.UpdatePolicyTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
