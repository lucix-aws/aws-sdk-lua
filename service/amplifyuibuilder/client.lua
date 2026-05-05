local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("amplifyuibuilder.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("amplifyuibuilder.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmplifyUIBuilder"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "amplifyuibuilder", signing_region = cfg.region } }
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

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = schemas.CreateComponentInput,
        output_schema = schemas.CreateComponentOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/components",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createForm(input, options)
    return self:invokeOperation(input, {
        name = "CreateForm",
        input_schema = schemas.CreateFormInput,
        output_schema = schemas.CreateFormOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/forms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTheme(input, options)
    return self:invokeOperation(input, {
        name = "CreateTheme",
        input_schema = schemas.CreateThemeInput,
        output_schema = schemas.CreateThemeOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/themes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = schemas.DeleteComponentInput,
        output_schema = schemas.DeleteComponentOutput,
        http_method = "DELETE",
        http_path = "/app/{appId}/environment/{environmentName}/components/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteForm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteForm",
        input_schema = schemas.DeleteFormInput,
        output_schema = schemas.DeleteFormOutput,
        http_method = "DELETE",
        http_path = "/app/{appId}/environment/{environmentName}/forms/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTheme(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTheme",
        input_schema = schemas.DeleteThemeInput,
        output_schema = schemas.DeleteThemeOutput,
        http_method = "DELETE",
        http_path = "/app/{appId}/environment/{environmentName}/themes/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exchangeCodeForToken(input, options)
    return self:invokeOperation(input, {
        name = "ExchangeCodeForToken",
        input_schema = schemas.ExchangeCodeForTokenInput,
        output_schema = schemas.ExchangeCodeForTokenOutput,
        http_method = "POST",
        http_path = "/tokens/{provider}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportComponents(input, options)
    return self:invokeOperation(input, {
        name = "ExportComponents",
        input_schema = schemas.ExportComponentsInput,
        output_schema = schemas.ExportComponentsOutput,
        http_method = "GET",
        http_path = "/export/app/{appId}/environment/{environmentName}/components",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportForms(input, options)
    return self:invokeOperation(input, {
        name = "ExportForms",
        input_schema = schemas.ExportFormsInput,
        output_schema = schemas.ExportFormsOutput,
        http_method = "GET",
        http_path = "/export/app/{appId}/environment/{environmentName}/forms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportThemes(input, options)
    return self:invokeOperation(input, {
        name = "ExportThemes",
        input_schema = schemas.ExportThemesInput,
        output_schema = schemas.ExportThemesOutput,
        http_method = "GET",
        http_path = "/export/app/{appId}/environment/{environmentName}/themes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCodegenJob(input, options)
    return self:invokeOperation(input, {
        name = "GetCodegenJob",
        input_schema = schemas.GetCodegenJobInput,
        output_schema = schemas.GetCodegenJobOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/codegen-jobs/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = schemas.GetComponentInput,
        output_schema = schemas.GetComponentOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/components/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getForm(input, options)
    return self:invokeOperation(input, {
        name = "GetForm",
        input_schema = schemas.GetFormInput,
        output_schema = schemas.GetFormOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/forms/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetMetadata",
        input_schema = schemas.GetMetadataInput,
        output_schema = schemas.GetMetadataOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTheme(input, options)
    return self:invokeOperation(input, {
        name = "GetTheme",
        input_schema = schemas.GetThemeInput,
        output_schema = schemas.GetThemeOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/themes/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCodegenJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCodegenJobs",
        input_schema = schemas.ListCodegenJobsInput,
        output_schema = schemas.ListCodegenJobsOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/codegen-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = schemas.ListComponentsInput,
        output_schema = schemas.ListComponentsOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/components",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listForms(input, options)
    return self:invokeOperation(input, {
        name = "ListForms",
        input_schema = schemas.ListFormsInput,
        output_schema = schemas.ListFormsOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/forms",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThemes(input, options)
    return self:invokeOperation(input, {
        name = "ListThemes",
        input_schema = schemas.ListThemesInput,
        output_schema = schemas.ListThemesOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/themes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMetadataFlag(input, options)
    return self:invokeOperation(input, {
        name = "PutMetadataFlag",
        input_schema = schemas.PutMetadataFlagInput,
        output_schema = schemas.PutMetadataFlagOutput,
        http_method = "PUT",
        http_path = "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:refreshToken(input, options)
    return self:invokeOperation(input, {
        name = "RefreshToken",
        input_schema = schemas.RefreshTokenInput,
        output_schema = schemas.RefreshTokenOutput,
        http_method = "POST",
        http_path = "/tokens/{provider}/refresh",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCodegenJob(input, options)
    return self:invokeOperation(input, {
        name = "StartCodegenJob",
        input_schema = schemas.StartCodegenJobInput,
        output_schema = schemas.StartCodegenJobOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/codegen-jobs",
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
        http_path = "/tags/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponent",
        input_schema = schemas.UpdateComponentInput,
        output_schema = schemas.UpdateComponentOutput,
        http_method = "PATCH",
        http_path = "/app/{appId}/environment/{environmentName}/components/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateForm(input, options)
    return self:invokeOperation(input, {
        name = "UpdateForm",
        input_schema = schemas.UpdateFormInput,
        output_schema = schemas.UpdateFormOutput,
        http_method = "PATCH",
        http_path = "/app/{appId}/environment/{environmentName}/forms/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTheme(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTheme",
        input_schema = schemas.UpdateThemeInput,
        output_schema = schemas.UpdateThemeOutput,
        http_method = "PATCH",
        http_path = "/app/{appId}/environment/{environmentName}/themes/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
