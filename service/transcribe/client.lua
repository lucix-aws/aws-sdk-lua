local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("transcribe.endpoint_rules")
local schemas = require("transcribe.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Transcribe"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "transcribe", signing_region = cfg.region } }
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

function Client:createCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "CreateCallAnalyticsCategory",
        input_schema = schemas.CreateCallAnalyticsCategoryInput,
        output_schema = schemas.CreateCallAnalyticsCategoryOutput,
        http_method = "PUT",
        http_path = "/callanalyticscategories/{CategoryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLanguageModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateLanguageModel",
        input_schema = schemas.CreateLanguageModelInput,
        output_schema = schemas.CreateLanguageModelOutput,
        http_method = "PUT",
        http_path = "/languagemodels/{ModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "CreateMedicalVocabulary",
        input_schema = schemas.CreateMedicalVocabularyInput,
        output_schema = schemas.CreateMedicalVocabularyOutput,
        http_method = "PUT",
        http_path = "/medicalvocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "CreateVocabulary",
        input_schema = schemas.CreateVocabularyInput,
        output_schema = schemas.CreateVocabularyOutput,
        http_method = "PUT",
        http_path = "/vocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateVocabularyFilter",
        input_schema = schemas.CreateVocabularyFilterInput,
        output_schema = schemas.CreateVocabularyFilterOutput,
        http_method = "POST",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCallAnalyticsCategory",
        input_schema = schemas.DeleteCallAnalyticsCategoryInput,
        output_schema = schemas.DeleteCallAnalyticsCategoryOutput,
        http_method = "DELETE",
        http_path = "/callanalyticscategories/{CategoryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCallAnalyticsJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCallAnalyticsJob",
        input_schema = schemas.DeleteCallAnalyticsJobInput,
        output_schema = schemas.DeleteCallAnalyticsJobOutput,
        http_method = "DELETE",
        http_path = "/callanalyticsjobs/{CallAnalyticsJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLanguageModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLanguageModel",
        input_schema = schemas.DeleteLanguageModelInput,
        output_schema = schemas.DeleteLanguageModelOutput,
        http_method = "DELETE",
        http_path = "/languagemodels/{ModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMedicalScribeJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMedicalScribeJob",
        input_schema = schemas.DeleteMedicalScribeJobInput,
        output_schema = schemas.DeleteMedicalScribeJobOutput,
        http_method = "DELETE",
        http_path = "/medicalscribejobs/{MedicalScribeJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMedicalTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMedicalTranscriptionJob",
        input_schema = schemas.DeleteMedicalTranscriptionJobInput,
        output_schema = schemas.DeleteMedicalTranscriptionJobOutput,
        http_method = "DELETE",
        http_path = "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMedicalVocabulary",
        input_schema = schemas.DeleteMedicalVocabularyInput,
        output_schema = schemas.DeleteMedicalVocabularyOutput,
        http_method = "DELETE",
        http_path = "/medicalvocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTranscriptionJob",
        input_schema = schemas.DeleteTranscriptionJobInput,
        output_schema = schemas.DeleteTranscriptionJobOutput,
        http_method = "DELETE",
        http_path = "/transcriptionjobs/{TranscriptionJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVocabulary",
        input_schema = schemas.DeleteVocabularyInput,
        output_schema = schemas.DeleteVocabularyOutput,
        http_method = "DELETE",
        http_path = "/vocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVocabularyFilter",
        input_schema = schemas.DeleteVocabularyFilterInput,
        output_schema = schemas.DeleteVocabularyFilterOutput,
        http_method = "DELETE",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLanguageModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLanguageModel",
        input_schema = schemas.DescribeLanguageModelInput,
        output_schema = schemas.DescribeLanguageModelOutput,
        http_method = "GET",
        http_path = "/languagemodels/{ModelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "GetCallAnalyticsCategory",
        input_schema = schemas.GetCallAnalyticsCategoryInput,
        output_schema = schemas.GetCallAnalyticsCategoryOutput,
        http_method = "GET",
        http_path = "/callanalyticscategories/{CategoryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCallAnalyticsJob(input, options)
    return self:invokeOperation(input, {
        name = "GetCallAnalyticsJob",
        input_schema = schemas.GetCallAnalyticsJobInput,
        output_schema = schemas.GetCallAnalyticsJobOutput,
        http_method = "GET",
        http_path = "/callanalyticsjobs/{CallAnalyticsJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMedicalScribeJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalScribeJob",
        input_schema = schemas.GetMedicalScribeJobInput,
        output_schema = schemas.GetMedicalScribeJobOutput,
        http_method = "GET",
        http_path = "/medicalscribejobs/{MedicalScribeJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMedicalTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalTranscriptionJob",
        input_schema = schemas.GetMedicalTranscriptionJobInput,
        output_schema = schemas.GetMedicalTranscriptionJobOutput,
        http_method = "GET",
        http_path = "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalVocabulary",
        input_schema = schemas.GetMedicalVocabularyInput,
        output_schema = schemas.GetMedicalVocabularyOutput,
        http_method = "GET",
        http_path = "/medicalvocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetTranscriptionJob",
        input_schema = schemas.GetTranscriptionJobInput,
        output_schema = schemas.GetTranscriptionJobOutput,
        http_method = "GET",
        http_path = "/transcriptionjobs/{TranscriptionJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "GetVocabulary",
        input_schema = schemas.GetVocabularyInput,
        output_schema = schemas.GetVocabularyOutput,
        http_method = "GET",
        http_path = "/vocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetVocabularyFilter",
        input_schema = schemas.GetVocabularyFilterInput,
        output_schema = schemas.GetVocabularyFilterOutput,
        http_method = "GET",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCallAnalyticsCategories(input, options)
    return self:invokeOperation(input, {
        name = "ListCallAnalyticsCategories",
        input_schema = schemas.ListCallAnalyticsCategoriesInput,
        output_schema = schemas.ListCallAnalyticsCategoriesOutput,
        http_method = "GET",
        http_path = "/callanalyticscategories",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCallAnalyticsJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCallAnalyticsJobs",
        input_schema = schemas.ListCallAnalyticsJobsInput,
        output_schema = schemas.ListCallAnalyticsJobsOutput,
        http_method = "GET",
        http_path = "/callanalyticsjobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLanguageModels(input, options)
    return self:invokeOperation(input, {
        name = "ListLanguageModels",
        input_schema = schemas.ListLanguageModelsInput,
        output_schema = schemas.ListLanguageModelsOutput,
        http_method = "GET",
        http_path = "/languagemodels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMedicalScribeJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMedicalScribeJobs",
        input_schema = schemas.ListMedicalScribeJobsInput,
        output_schema = schemas.ListMedicalScribeJobsOutput,
        http_method = "GET",
        http_path = "/medicalscribejobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMedicalTranscriptionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMedicalTranscriptionJobs",
        input_schema = schemas.ListMedicalTranscriptionJobsInput,
        output_schema = schemas.ListMedicalTranscriptionJobsOutput,
        http_method = "GET",
        http_path = "/medicaltranscriptionjobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMedicalVocabularies(input, options)
    return self:invokeOperation(input, {
        name = "ListMedicalVocabularies",
        input_schema = schemas.ListMedicalVocabulariesInput,
        output_schema = schemas.ListMedicalVocabulariesOutput,
        http_method = "GET",
        http_path = "/medicalvocabularies",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTranscriptionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTranscriptionJobs",
        input_schema = schemas.ListTranscriptionJobsInput,
        output_schema = schemas.ListTranscriptionJobsOutput,
        http_method = "GET",
        http_path = "/transcriptionjobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVocabularies(input, options)
    return self:invokeOperation(input, {
        name = "ListVocabularies",
        input_schema = schemas.ListVocabulariesInput,
        output_schema = schemas.ListVocabulariesOutput,
        http_method = "GET",
        http_path = "/vocabularies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVocabularyFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListVocabularyFilters",
        input_schema = schemas.ListVocabularyFiltersInput,
        output_schema = schemas.ListVocabularyFiltersOutput,
        http_method = "GET",
        http_path = "/vocabularyFilters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCallAnalyticsJob(input, options)
    return self:invokeOperation(input, {
        name = "StartCallAnalyticsJob",
        input_schema = schemas.StartCallAnalyticsJobInput,
        output_schema = schemas.StartCallAnalyticsJobOutput,
        http_method = "PUT",
        http_path = "/callanalyticsjobs/{CallAnalyticsJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMedicalScribeJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMedicalScribeJob",
        input_schema = schemas.StartMedicalScribeJobInput,
        output_schema = schemas.StartMedicalScribeJobOutput,
        http_method = "PUT",
        http_path = "/medicalscribejobs/{MedicalScribeJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMedicalTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMedicalTranscriptionJob",
        input_schema = schemas.StartMedicalTranscriptionJobInput,
        output_schema = schemas.StartMedicalTranscriptionJobOutput,
        http_method = "PUT",
        http_path = "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTranscriptionJob",
        input_schema = schemas.StartTranscriptionJobInput,
        output_schema = schemas.StartTranscriptionJobOutput,
        http_method = "PUT",
        http_path = "/transcriptionjobs/{TranscriptionJobName}",
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
        http_method = "PUT",
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCallAnalyticsCategory",
        input_schema = schemas.UpdateCallAnalyticsCategoryInput,
        output_schema = schemas.UpdateCallAnalyticsCategoryOutput,
        http_method = "PATCH",
        http_path = "/callanalyticscategories/{CategoryName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMedicalVocabulary",
        input_schema = schemas.UpdateMedicalVocabularyInput,
        output_schema = schemas.UpdateMedicalVocabularyOutput,
        http_method = "PATCH",
        http_path = "/medicalvocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVocabulary",
        input_schema = schemas.UpdateVocabularyInput,
        output_schema = schemas.UpdateVocabularyOutput,
        http_method = "PATCH",
        http_path = "/vocabularies/{VocabularyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVocabularyFilter",
        input_schema = schemas.UpdateVocabularyFilterInput,
        output_schema = schemas.UpdateVocabularyFilterOutput,
        http_method = "PUT",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
