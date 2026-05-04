local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("textract.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("textract.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Textract"
    cfg.signing_name = "textract"
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

function Client:analyzeDocument(input, options)
    return self:invokeOperation(input, {
        name = "AnalyzeDocument",
        input_schema = types.AnalyzeDocumentInput,
        output_schema = types.AnalyzeDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:analyzeExpense(input, options)
    return self:invokeOperation(input, {
        name = "AnalyzeExpense",
        input_schema = types.AnalyzeExpenseInput,
        output_schema = types.AnalyzeExpenseOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:analyzeID(input, options)
    return self:invokeOperation(input, {
        name = "AnalyzeID",
        input_schema = types.AnalyzeIDInput,
        output_schema = types.AnalyzeIDOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAdapter(input, options)
    return self:invokeOperation(input, {
        name = "CreateAdapter",
        input_schema = types.CreateAdapterInput,
        output_schema = types.CreateAdapterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAdapterVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAdapterVersion",
        input_schema = types.CreateAdapterVersionInput,
        output_schema = types.CreateAdapterVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAdapter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdapter",
        input_schema = types.DeleteAdapterInput,
        output_schema = types.DeleteAdapterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAdapterVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdapterVersion",
        input_schema = types.DeleteAdapterVersionInput,
        output_schema = types.DeleteAdapterVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:detectDocumentText(input, options)
    return self:invokeOperation(input, {
        name = "DetectDocumentText",
        input_schema = types.DetectDocumentTextInput,
        output_schema = types.DetectDocumentTextOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAdapter(input, options)
    return self:invokeOperation(input, {
        name = "GetAdapter",
        input_schema = types.GetAdapterInput,
        output_schema = types.GetAdapterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAdapterVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetAdapterVersion",
        input_schema = types.GetAdapterVersionInput,
        output_schema = types.GetAdapterVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDocumentAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentAnalysis",
        input_schema = types.GetDocumentAnalysisInput,
        output_schema = types.GetDocumentAnalysisOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDocumentTextDetection(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentTextDetection",
        input_schema = types.GetDocumentTextDetectionInput,
        output_schema = types.GetDocumentTextDetectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getExpenseAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetExpenseAnalysis",
        input_schema = types.GetExpenseAnalysisInput,
        output_schema = types.GetExpenseAnalysisOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLendingAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetLendingAnalysis",
        input_schema = types.GetLendingAnalysisInput,
        output_schema = types.GetLendingAnalysisOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLendingAnalysisSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetLendingAnalysisSummary",
        input_schema = types.GetLendingAnalysisSummaryInput,
        output_schema = types.GetLendingAnalysisSummaryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAdapters(input, options)
    return self:invokeOperation(input, {
        name = "ListAdapters",
        input_schema = types.ListAdaptersInput,
        output_schema = types.ListAdaptersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAdapterVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAdapterVersions",
        input_schema = types.ListAdapterVersionsInput,
        output_schema = types.ListAdapterVersionsOutput,
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

function Client:startDocumentAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartDocumentAnalysis",
        input_schema = types.StartDocumentAnalysisInput,
        output_schema = types.StartDocumentAnalysisOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDocumentTextDetection(input, options)
    return self:invokeOperation(input, {
        name = "StartDocumentTextDetection",
        input_schema = types.StartDocumentTextDetectionInput,
        output_schema = types.StartDocumentTextDetectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startExpenseAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartExpenseAnalysis",
        input_schema = types.StartExpenseAnalysisInput,
        output_schema = types.StartExpenseAnalysisOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startLendingAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartLendingAnalysis",
        input_schema = types.StartLendingAnalysisInput,
        output_schema = types.StartLendingAnalysisOutput,
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

function Client:updateAdapter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAdapter",
        input_schema = types.UpdateAdapterInput,
        output_schema = types.UpdateAdapterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
