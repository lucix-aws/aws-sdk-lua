local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("textract.endpoint_rules")
local schemas = require("textract.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Textract"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "textract", signing_region = cfg.region } }
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

function Client:analyzeDocument(input, options)
    return self:invokeOperation(input, {
        name = "AnalyzeDocument",
        input_schema = schemas.AnalyzeDocumentInput,
        output_schema = schemas.AnalyzeDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:analyzeExpense(input, options)
    return self:invokeOperation(input, {
        name = "AnalyzeExpense",
        input_schema = schemas.AnalyzeExpenseInput,
        output_schema = schemas.AnalyzeExpenseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:analyzeID(input, options)
    return self:invokeOperation(input, {
        name = "AnalyzeID",
        input_schema = schemas.AnalyzeIDInput,
        output_schema = schemas.AnalyzeIDOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAdapter(input, options)
    return self:invokeOperation(input, {
        name = "CreateAdapter",
        input_schema = schemas.CreateAdapterInput,
        output_schema = schemas.CreateAdapterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAdapterVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateAdapterVersion",
        input_schema = schemas.CreateAdapterVersionInput,
        output_schema = schemas.CreateAdapterVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAdapter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdapter",
        input_schema = schemas.DeleteAdapterInput,
        output_schema = schemas.DeleteAdapterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAdapterVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAdapterVersion",
        input_schema = schemas.DeleteAdapterVersionInput,
        output_schema = schemas.DeleteAdapterVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectDocumentText(input, options)
    return self:invokeOperation(input, {
        name = "DetectDocumentText",
        input_schema = schemas.DetectDocumentTextInput,
        output_schema = schemas.DetectDocumentTextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdapter(input, options)
    return self:invokeOperation(input, {
        name = "GetAdapter",
        input_schema = schemas.GetAdapterInput,
        output_schema = schemas.GetAdapterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdapterVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetAdapterVersion",
        input_schema = schemas.GetAdapterVersionInput,
        output_schema = schemas.GetAdapterVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentAnalysis",
        input_schema = schemas.GetDocumentAnalysisInput,
        output_schema = schemas.GetDocumentAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentTextDetection(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentTextDetection",
        input_schema = schemas.GetDocumentTextDetectionInput,
        output_schema = schemas.GetDocumentTextDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExpenseAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetExpenseAnalysis",
        input_schema = schemas.GetExpenseAnalysisInput,
        output_schema = schemas.GetExpenseAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLendingAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "GetLendingAnalysis",
        input_schema = schemas.GetLendingAnalysisInput,
        output_schema = schemas.GetLendingAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLendingAnalysisSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetLendingAnalysisSummary",
        input_schema = schemas.GetLendingAnalysisSummaryInput,
        output_schema = schemas.GetLendingAnalysisSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAdapters(input, options)
    return self:invokeOperation(input, {
        name = "ListAdapters",
        input_schema = schemas.ListAdaptersInput,
        output_schema = schemas.ListAdaptersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAdapterVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListAdapterVersions",
        input_schema = schemas.ListAdapterVersionsInput,
        output_schema = schemas.ListAdapterVersionsOutput,
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

function Client:startDocumentAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartDocumentAnalysis",
        input_schema = schemas.StartDocumentAnalysisInput,
        output_schema = schemas.StartDocumentAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDocumentTextDetection(input, options)
    return self:invokeOperation(input, {
        name = "StartDocumentTextDetection",
        input_schema = schemas.StartDocumentTextDetectionInput,
        output_schema = schemas.StartDocumentTextDetectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startExpenseAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartExpenseAnalysis",
        input_schema = schemas.StartExpenseAnalysisInput,
        output_schema = schemas.StartExpenseAnalysisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startLendingAnalysis(input, options)
    return self:invokeOperation(input, {
        name = "StartLendingAnalysis",
        input_schema = schemas.StartLendingAnalysisInput,
        output_schema = schemas.StartLendingAnalysisOutput,
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

function Client:updateAdapter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAdapter",
        input_schema = schemas.UpdateAdapterInput,
        output_schema = schemas.UpdateAdapterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
