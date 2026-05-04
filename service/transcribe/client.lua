local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("transcribe.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("transcribe.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Transcribe"
    cfg.signing_name = "transcribe"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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

function Client:createCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "CreateCallAnalyticsCategory",
        input_schema = types.CreateCallAnalyticsCategoryInput,
        output_schema = types.CreateCallAnalyticsCategoryOutput,
        http_method = "PUT",
        http_path = "/callanalyticscategories/{CategoryName}",
    }, options)
end

function Client:createLanguageModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateLanguageModel",
        input_schema = types.CreateLanguageModelInput,
        output_schema = types.CreateLanguageModelOutput,
        http_method = "PUT",
        http_path = "/languagemodels/{ModelName}",
    }, options)
end

function Client:createMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "CreateMedicalVocabulary",
        input_schema = types.CreateMedicalVocabularyInput,
        output_schema = types.CreateMedicalVocabularyOutput,
        http_method = "PUT",
        http_path = "/medicalvocabularies/{VocabularyName}",
    }, options)
end

function Client:createVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "CreateVocabulary",
        input_schema = types.CreateVocabularyInput,
        output_schema = types.CreateVocabularyOutput,
        http_method = "PUT",
        http_path = "/vocabularies/{VocabularyName}",
    }, options)
end

function Client:createVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateVocabularyFilter",
        input_schema = types.CreateVocabularyFilterInput,
        output_schema = types.CreateVocabularyFilterOutput,
        http_method = "POST",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
    }, options)
end

function Client:deleteCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCallAnalyticsCategory",
        input_schema = types.DeleteCallAnalyticsCategoryInput,
        output_schema = types.DeleteCallAnalyticsCategoryOutput,
        http_method = "DELETE",
        http_path = "/callanalyticscategories/{CategoryName}",
    }, options)
end

function Client:deleteCallAnalyticsJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCallAnalyticsJob",
        input_schema = types.DeleteCallAnalyticsJobInput,
        output_schema = types.DeleteCallAnalyticsJobOutput,
        http_method = "DELETE",
        http_path = "/callanalyticsjobs/{CallAnalyticsJobName}",
    }, options)
end

function Client:deleteLanguageModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLanguageModel",
        input_schema = types.DeleteLanguageModelInput,
        output_schema = types.DeleteLanguageModelOutput,
        http_method = "DELETE",
        http_path = "/languagemodels/{ModelName}",
    }, options)
end

function Client:deleteMedicalScribeJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMedicalScribeJob",
        input_schema = types.DeleteMedicalScribeJobInput,
        output_schema = types.DeleteMedicalScribeJobOutput,
        http_method = "DELETE",
        http_path = "/medicalscribejobs/{MedicalScribeJobName}",
    }, options)
end

function Client:deleteMedicalTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMedicalTranscriptionJob",
        input_schema = types.DeleteMedicalTranscriptionJobInput,
        output_schema = types.DeleteMedicalTranscriptionJobOutput,
        http_method = "DELETE",
        http_path = "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}",
    }, options)
end

function Client:deleteMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMedicalVocabulary",
        input_schema = types.DeleteMedicalVocabularyInput,
        output_schema = types.DeleteMedicalVocabularyOutput,
        http_method = "DELETE",
        http_path = "/medicalvocabularies/{VocabularyName}",
    }, options)
end

function Client:deleteTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTranscriptionJob",
        input_schema = types.DeleteTranscriptionJobInput,
        output_schema = types.DeleteTranscriptionJobOutput,
        http_method = "DELETE",
        http_path = "/transcriptionjobs/{TranscriptionJobName}",
    }, options)
end

function Client:deleteVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVocabulary",
        input_schema = types.DeleteVocabularyInput,
        output_schema = types.DeleteVocabularyOutput,
        http_method = "DELETE",
        http_path = "/vocabularies/{VocabularyName}",
    }, options)
end

function Client:deleteVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVocabularyFilter",
        input_schema = types.DeleteVocabularyFilterInput,
        output_schema = types.DeleteVocabularyFilterOutput,
        http_method = "DELETE",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
    }, options)
end

function Client:describeLanguageModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLanguageModel",
        input_schema = types.DescribeLanguageModelInput,
        output_schema = types.DescribeLanguageModelOutput,
        http_method = "GET",
        http_path = "/languagemodels/{ModelName}",
    }, options)
end

function Client:getCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "GetCallAnalyticsCategory",
        input_schema = types.GetCallAnalyticsCategoryInput,
        output_schema = types.GetCallAnalyticsCategoryOutput,
        http_method = "GET",
        http_path = "/callanalyticscategories/{CategoryName}",
    }, options)
end

function Client:getCallAnalyticsJob(input, options)
    return self:invokeOperation(input, {
        name = "GetCallAnalyticsJob",
        input_schema = types.GetCallAnalyticsJobInput,
        output_schema = types.GetCallAnalyticsJobOutput,
        http_method = "GET",
        http_path = "/callanalyticsjobs/{CallAnalyticsJobName}",
    }, options)
end

function Client:getMedicalScribeJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalScribeJob",
        input_schema = types.GetMedicalScribeJobInput,
        output_schema = types.GetMedicalScribeJobOutput,
        http_method = "GET",
        http_path = "/medicalscribejobs/{MedicalScribeJobName}",
    }, options)
end

function Client:getMedicalTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalTranscriptionJob",
        input_schema = types.GetMedicalTranscriptionJobInput,
        output_schema = types.GetMedicalTranscriptionJobOutput,
        http_method = "GET",
        http_path = "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}",
    }, options)
end

function Client:getMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "GetMedicalVocabulary",
        input_schema = types.GetMedicalVocabularyInput,
        output_schema = types.GetMedicalVocabularyOutput,
        http_method = "GET",
        http_path = "/medicalvocabularies/{VocabularyName}",
    }, options)
end

function Client:getTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetTranscriptionJob",
        input_schema = types.GetTranscriptionJobInput,
        output_schema = types.GetTranscriptionJobOutput,
        http_method = "GET",
        http_path = "/transcriptionjobs/{TranscriptionJobName}",
    }, options)
end

function Client:getVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "GetVocabulary",
        input_schema = types.GetVocabularyInput,
        output_schema = types.GetVocabularyOutput,
        http_method = "GET",
        http_path = "/vocabularies/{VocabularyName}",
    }, options)
end

function Client:getVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetVocabularyFilter",
        input_schema = types.GetVocabularyFilterInput,
        output_schema = types.GetVocabularyFilterOutput,
        http_method = "GET",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
    }, options)
end

function Client:listCallAnalyticsCategories(input, options)
    return self:invokeOperation(input, {
        name = "ListCallAnalyticsCategories",
        input_schema = types.ListCallAnalyticsCategoriesInput,
        output_schema = types.ListCallAnalyticsCategoriesOutput,
        http_method = "GET",
        http_path = "/callanalyticscategories",
    }, options)
end

function Client:listCallAnalyticsJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCallAnalyticsJobs",
        input_schema = types.ListCallAnalyticsJobsInput,
        output_schema = types.ListCallAnalyticsJobsOutput,
        http_method = "GET",
        http_path = "/callanalyticsjobs",
    }, options)
end

function Client:listLanguageModels(input, options)
    return self:invokeOperation(input, {
        name = "ListLanguageModels",
        input_schema = types.ListLanguageModelsInput,
        output_schema = types.ListLanguageModelsOutput,
        http_method = "GET",
        http_path = "/languagemodels",
    }, options)
end

function Client:listMedicalScribeJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMedicalScribeJobs",
        input_schema = types.ListMedicalScribeJobsInput,
        output_schema = types.ListMedicalScribeJobsOutput,
        http_method = "GET",
        http_path = "/medicalscribejobs",
    }, options)
end

function Client:listMedicalTranscriptionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMedicalTranscriptionJobs",
        input_schema = types.ListMedicalTranscriptionJobsInput,
        output_schema = types.ListMedicalTranscriptionJobsOutput,
        http_method = "GET",
        http_path = "/medicaltranscriptionjobs",
    }, options)
end

function Client:listMedicalVocabularies(input, options)
    return self:invokeOperation(input, {
        name = "ListMedicalVocabularies",
        input_schema = types.ListMedicalVocabulariesInput,
        output_schema = types.ListMedicalVocabulariesOutput,
        http_method = "GET",
        http_path = "/medicalvocabularies",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:listTranscriptionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTranscriptionJobs",
        input_schema = types.ListTranscriptionJobsInput,
        output_schema = types.ListTranscriptionJobsOutput,
        http_method = "GET",
        http_path = "/transcriptionjobs",
    }, options)
end

function Client:listVocabularies(input, options)
    return self:invokeOperation(input, {
        name = "ListVocabularies",
        input_schema = types.ListVocabulariesInput,
        output_schema = types.ListVocabulariesOutput,
        http_method = "GET",
        http_path = "/vocabularies",
    }, options)
end

function Client:listVocabularyFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListVocabularyFilters",
        input_schema = types.ListVocabularyFiltersInput,
        output_schema = types.ListVocabularyFiltersOutput,
        http_method = "GET",
        http_path = "/vocabularyFilters",
    }, options)
end

function Client:startCallAnalyticsJob(input, options)
    return self:invokeOperation(input, {
        name = "StartCallAnalyticsJob",
        input_schema = types.StartCallAnalyticsJobInput,
        output_schema = types.StartCallAnalyticsJobOutput,
        http_method = "PUT",
        http_path = "/callanalyticsjobs/{CallAnalyticsJobName}",
    }, options)
end

function Client:startMedicalScribeJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMedicalScribeJob",
        input_schema = types.StartMedicalScribeJobInput,
        output_schema = types.StartMedicalScribeJobOutput,
        http_method = "PUT",
        http_path = "/medicalscribejobs/{MedicalScribeJobName}",
    }, options)
end

function Client:startMedicalTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartMedicalTranscriptionJob",
        input_schema = types.StartMedicalTranscriptionJobInput,
        output_schema = types.StartMedicalTranscriptionJobOutput,
        http_method = "PUT",
        http_path = "/medicaltranscriptionjobs/{MedicalTranscriptionJobName}",
    }, options)
end

function Client:startTranscriptionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartTranscriptionJob",
        input_schema = types.StartTranscriptionJobInput,
        output_schema = types.StartTranscriptionJobOutput,
        http_method = "PUT",
        http_path = "/transcriptionjobs/{TranscriptionJobName}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateCallAnalyticsCategory(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCallAnalyticsCategory",
        input_schema = types.UpdateCallAnalyticsCategoryInput,
        output_schema = types.UpdateCallAnalyticsCategoryOutput,
        http_method = "PATCH",
        http_path = "/callanalyticscategories/{CategoryName}",
    }, options)
end

function Client:updateMedicalVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMedicalVocabulary",
        input_schema = types.UpdateMedicalVocabularyInput,
        output_schema = types.UpdateMedicalVocabularyOutput,
        http_method = "PATCH",
        http_path = "/medicalvocabularies/{VocabularyName}",
    }, options)
end

function Client:updateVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVocabulary",
        input_schema = types.UpdateVocabularyInput,
        output_schema = types.UpdateVocabularyOutput,
        http_method = "PATCH",
        http_path = "/vocabularies/{VocabularyName}",
    }, options)
end

function Client:updateVocabularyFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVocabularyFilter",
        input_schema = types.UpdateVocabularyFilterInput,
        output_schema = types.UpdateVocabularyFilterOutput,
        http_method = "PUT",
        http_path = "/vocabularyFilters/{VocabularyFilterName}",
    }, options)
end

return M
