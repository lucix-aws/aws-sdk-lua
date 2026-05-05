local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("translate.endpoint_rules")
local schemas = require("translate.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSShineFrontendService_20170701"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "translate", signing_region = cfg.region } }
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

function Client:createParallelData(input, options)
    return self:invokeOperation(input, {
        name = "CreateParallelData",
        input_schema = schemas.CreateParallelDataInput,
        output_schema = schemas.CreateParallelDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteParallelData(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParallelData",
        input_schema = schemas.DeleteParallelDataInput,
        output_schema = schemas.DeleteParallelDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTerminology(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTerminology",
        input_schema = schemas.DeleteTerminologyInput,
        output_schema = schemas.DeleteTerminologyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTextTranslationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTextTranslationJob",
        input_schema = schemas.DescribeTextTranslationJobInput,
        output_schema = schemas.DescribeTextTranslationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getParallelData(input, options)
    return self:invokeOperation(input, {
        name = "GetParallelData",
        input_schema = schemas.GetParallelDataInput,
        output_schema = schemas.GetParallelDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTerminology(input, options)
    return self:invokeOperation(input, {
        name = "GetTerminology",
        input_schema = schemas.GetTerminologyInput,
        output_schema = schemas.GetTerminologyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importTerminology(input, options)
    return self:invokeOperation(input, {
        name = "ImportTerminology",
        input_schema = schemas.ImportTerminologyInput,
        output_schema = schemas.ImportTerminologyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLanguages(input, options)
    return self:invokeOperation(input, {
        name = "ListLanguages",
        input_schema = schemas.ListLanguagesInput,
        output_schema = schemas.ListLanguagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listParallelData(input, options)
    return self:invokeOperation(input, {
        name = "ListParallelData",
        input_schema = schemas.ListParallelDataInput,
        output_schema = schemas.ListParallelDataOutput,
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

function Client:listTerminologies(input, options)
    return self:invokeOperation(input, {
        name = "ListTerminologies",
        input_schema = schemas.ListTerminologiesInput,
        output_schema = schemas.ListTerminologiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTextTranslationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTextTranslationJobs",
        input_schema = schemas.ListTextTranslationJobsInput,
        output_schema = schemas.ListTextTranslationJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTextTranslationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTextTranslationJob",
        input_schema = schemas.StartTextTranslationJobInput,
        output_schema = schemas.StartTextTranslationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopTextTranslationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopTextTranslationJob",
        input_schema = schemas.StopTextTranslationJobInput,
        output_schema = schemas.StopTextTranslationJobOutput,
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

function Client:translateDocument(input, options)
    return self:invokeOperation(input, {
        name = "TranslateDocument",
        input_schema = schemas.TranslateDocumentInput,
        output_schema = schemas.TranslateDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:translateText(input, options)
    return self:invokeOperation(input, {
        name = "TranslateText",
        input_schema = schemas.TranslateTextInput,
        output_schema = schemas.TranslateTextOutput,
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

function Client:updateParallelData(input, options)
    return self:invokeOperation(input, {
        name = "UpdateParallelData",
        input_schema = schemas.UpdateParallelDataInput,
        output_schema = schemas.UpdateParallelDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
