local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("translate.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("translate.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSShineFrontendService_20170701"
    cfg.signing_name = "translate"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:createParallelData(input, options)
    return self:invokeOperation(input, {
        name = "CreateParallelData",
        input_schema = types.CreateParallelDataInput,
        output_schema = types.CreateParallelDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteParallelData(input, options)
    return self:invokeOperation(input, {
        name = "DeleteParallelData",
        input_schema = types.DeleteParallelDataInput,
        output_schema = types.DeleteParallelDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTerminology(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTerminology",
        input_schema = types.DeleteTerminologyInput,
        output_schema = types.DeleteTerminologyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTextTranslationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTextTranslationJob",
        input_schema = types.DescribeTextTranslationJobInput,
        output_schema = types.DescribeTextTranslationJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getParallelData(input, options)
    return self:invokeOperation(input, {
        name = "GetParallelData",
        input_schema = types.GetParallelDataInput,
        output_schema = types.GetParallelDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTerminology(input, options)
    return self:invokeOperation(input, {
        name = "GetTerminology",
        input_schema = types.GetTerminologyInput,
        output_schema = types.GetTerminologyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importTerminology(input, options)
    return self:invokeOperation(input, {
        name = "ImportTerminology",
        input_schema = types.ImportTerminologyInput,
        output_schema = types.ImportTerminologyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLanguages(input, options)
    return self:invokeOperation(input, {
        name = "ListLanguages",
        input_schema = types.ListLanguagesInput,
        output_schema = types.ListLanguagesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listParallelData(input, options)
    return self:invokeOperation(input, {
        name = "ListParallelData",
        input_schema = types.ListParallelDataInput,
        output_schema = types.ListParallelDataOutput,
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

function Client:listTerminologies(input, options)
    return self:invokeOperation(input, {
        name = "ListTerminologies",
        input_schema = types.ListTerminologiesInput,
        output_schema = types.ListTerminologiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTextTranslationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTextTranslationJobs",
        input_schema = types.ListTextTranslationJobsInput,
        output_schema = types.ListTextTranslationJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startTextTranslationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTextTranslationJob",
        input_schema = types.StartTextTranslationJobInput,
        output_schema = types.StartTextTranslationJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopTextTranslationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopTextTranslationJob",
        input_schema = types.StopTextTranslationJobInput,
        output_schema = types.StopTextTranslationJobOutput,
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

function Client:translateDocument(input, options)
    return self:invokeOperation(input, {
        name = "TranslateDocument",
        input_schema = types.TranslateDocumentInput,
        output_schema = types.TranslateDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:translateText(input, options)
    return self:invokeOperation(input, {
        name = "TranslateText",
        input_schema = types.TranslateTextInput,
        output_schema = types.TranslateTextOutput,
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

function Client:updateParallelData(input, options)
    return self:invokeOperation(input, {
        name = "UpdateParallelData",
        input_schema = types.UpdateParallelDataInput,
        output_schema = types.UpdateParallelDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
