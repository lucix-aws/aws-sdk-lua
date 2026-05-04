local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("amplifyuibuilder.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("amplifyuibuilder.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmplifyUIBuilder"
    cfg.signing_name = "amplifyuibuilder"
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

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = types.CreateComponentInput,
        output_schema = types.CreateComponentOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/components",
    }, options)
end

function Client:createForm(input, options)
    return self:invokeOperation(input, {
        name = "CreateForm",
        input_schema = types.CreateFormInput,
        output_schema = types.CreateFormOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/forms",
    }, options)
end

function Client:createTheme(input, options)
    return self:invokeOperation(input, {
        name = "CreateTheme",
        input_schema = types.CreateThemeInput,
        output_schema = types.CreateThemeOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/themes",
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = types.DeleteComponentInput,
        output_schema = types.DeleteComponentOutput,
        http_method = "DELETE",
        http_path = "/app/{appId}/environment/{environmentName}/components/{id}",
    }, options)
end

function Client:deleteForm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteForm",
        input_schema = types.DeleteFormInput,
        output_schema = types.DeleteFormOutput,
        http_method = "DELETE",
        http_path = "/app/{appId}/environment/{environmentName}/forms/{id}",
    }, options)
end

function Client:deleteTheme(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTheme",
        input_schema = types.DeleteThemeInput,
        output_schema = types.DeleteThemeOutput,
        http_method = "DELETE",
        http_path = "/app/{appId}/environment/{environmentName}/themes/{id}",
    }, options)
end

function Client:exchangeCodeForToken(input, options)
    return self:invokeOperation(input, {
        name = "ExchangeCodeForToken",
        input_schema = types.ExchangeCodeForTokenInput,
        output_schema = types.ExchangeCodeForTokenOutput,
        http_method = "POST",
        http_path = "/tokens/{provider}",
    }, options)
end

function Client:exportComponents(input, options)
    return self:invokeOperation(input, {
        name = "ExportComponents",
        input_schema = types.ExportComponentsInput,
        output_schema = types.ExportComponentsOutput,
        http_method = "GET",
        http_path = "/export/app/{appId}/environment/{environmentName}/components",
    }, options)
end

function Client:exportForms(input, options)
    return self:invokeOperation(input, {
        name = "ExportForms",
        input_schema = types.ExportFormsInput,
        output_schema = types.ExportFormsOutput,
        http_method = "GET",
        http_path = "/export/app/{appId}/environment/{environmentName}/forms",
    }, options)
end

function Client:exportThemes(input, options)
    return self:invokeOperation(input, {
        name = "ExportThemes",
        input_schema = types.ExportThemesInput,
        output_schema = types.ExportThemesOutput,
        http_method = "GET",
        http_path = "/export/app/{appId}/environment/{environmentName}/themes",
    }, options)
end

function Client:getCodegenJob(input, options)
    return self:invokeOperation(input, {
        name = "GetCodegenJob",
        input_schema = types.GetCodegenJobInput,
        output_schema = types.GetCodegenJobOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/codegen-jobs/{id}",
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = types.GetComponentInput,
        output_schema = types.GetComponentOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/components/{id}",
    }, options)
end

function Client:getForm(input, options)
    return self:invokeOperation(input, {
        name = "GetForm",
        input_schema = types.GetFormInput,
        output_schema = types.GetFormOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/forms/{id}",
    }, options)
end

function Client:getMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetMetadata",
        input_schema = types.GetMetadataInput,
        output_schema = types.GetMetadataOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/metadata",
    }, options)
end

function Client:getTheme(input, options)
    return self:invokeOperation(input, {
        name = "GetTheme",
        input_schema = types.GetThemeInput,
        output_schema = types.GetThemeOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/themes/{id}",
    }, options)
end

function Client:listCodegenJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCodegenJobs",
        input_schema = types.ListCodegenJobsInput,
        output_schema = types.ListCodegenJobsOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/codegen-jobs",
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/components",
    }, options)
end

function Client:listForms(input, options)
    return self:invokeOperation(input, {
        name = "ListForms",
        input_schema = types.ListFormsInput,
        output_schema = types.ListFormsOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/forms",
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

function Client:listThemes(input, options)
    return self:invokeOperation(input, {
        name = "ListThemes",
        input_schema = types.ListThemesInput,
        output_schema = types.ListThemesOutput,
        http_method = "GET",
        http_path = "/app/{appId}/environment/{environmentName}/themes",
    }, options)
end

function Client:putMetadataFlag(input, options)
    return self:invokeOperation(input, {
        name = "PutMetadataFlag",
        input_schema = types.PutMetadataFlagInput,
        output_schema = types.PutMetadataFlagOutput,
        http_method = "PUT",
        http_path = "/app/{appId}/environment/{environmentName}/metadata/features/{featureName}",
    }, options)
end

function Client:refreshToken(input, options)
    return self:invokeOperation(input, {
        name = "RefreshToken",
        input_schema = types.RefreshTokenInput,
        output_schema = types.RefreshTokenOutput,
        http_method = "POST",
        http_path = "/tokens/{provider}/refresh",
    }, options)
end

function Client:startCodegenJob(input, options)
    return self:invokeOperation(input, {
        name = "StartCodegenJob",
        input_schema = types.StartCodegenJobInput,
        output_schema = types.StartCodegenJobOutput,
        http_method = "POST",
        http_path = "/app/{appId}/environment/{environmentName}/codegen-jobs",
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

function Client:updateComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponent",
        input_schema = types.UpdateComponentInput,
        output_schema = types.UpdateComponentOutput,
        http_method = "PATCH",
        http_path = "/app/{appId}/environment/{environmentName}/components/{id}",
    }, options)
end

function Client:updateForm(input, options)
    return self:invokeOperation(input, {
        name = "UpdateForm",
        input_schema = types.UpdateFormInput,
        output_schema = types.UpdateFormOutput,
        http_method = "PATCH",
        http_path = "/app/{appId}/environment/{environmentName}/forms/{id}",
    }, options)
end

function Client:updateTheme(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTheme",
        input_schema = types.UpdateThemeInput,
        output_schema = types.UpdateThemeOutput,
        http_method = "PATCH",
        http_path = "/app/{appId}/environment/{environmentName}/themes/{id}",
    }, options)
end

return M
