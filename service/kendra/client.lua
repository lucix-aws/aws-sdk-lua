local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kendra.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("kendra.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSKendraFrontendService"
    cfg.signing_name = "kendra"
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

function Client:associateEntitiesToExperience(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEntitiesToExperience",
        input_schema = types.AssociateEntitiesToExperienceInput,
        output_schema = types.AssociateEntitiesToExperienceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associatePersonasToEntities(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePersonasToEntities",
        input_schema = types.AssociatePersonasToEntitiesInput,
        output_schema = types.AssociatePersonasToEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDocument",
        input_schema = types.BatchDeleteDocumentInput,
        output_schema = types.BatchDeleteDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteFeaturedResultsSet",
        input_schema = types.BatchDeleteFeaturedResultsSetInput,
        output_schema = types.BatchDeleteFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDocumentStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDocumentStatus",
        input_schema = types.BatchGetDocumentStatusInput,
        output_schema = types.BatchGetDocumentStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchPutDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutDocument",
        input_schema = types.BatchPutDocumentInput,
        output_schema = types.BatchPutDocumentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:clearQuerySuggestions(input, options)
    return self:invokeOperation(input, {
        name = "ClearQuerySuggestions",
        input_schema = types.ClearQuerySuggestionsInput,
        output_schema = types.ClearQuerySuggestionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessControlConfiguration",
        input_schema = types.CreateAccessControlConfigurationInput,
        output_schema = types.CreateAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = types.CreateDataSourceInput,
        output_schema = types.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createExperience(input, options)
    return self:invokeOperation(input, {
        name = "CreateExperience",
        input_schema = types.CreateExperienceInput,
        output_schema = types.CreateExperienceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFaq(input, options)
    return self:invokeOperation(input, {
        name = "CreateFaq",
        input_schema = types.CreateFaqInput,
        output_schema = types.CreateFaqOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFeaturedResultsSet",
        input_schema = types.CreateFeaturedResultsSetInput,
        output_schema = types.CreateFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = types.CreateIndexInput,
        output_schema = types.CreateIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuerySuggestionsBlockList",
        input_schema = types.CreateQuerySuggestionsBlockListInput,
        output_schema = types.CreateQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "CreateThesaurus",
        input_schema = types.CreateThesaurusInput,
        output_schema = types.CreateThesaurusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessControlConfiguration",
        input_schema = types.DeleteAccessControlConfigurationInput,
        output_schema = types.DeleteAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteExperience(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExperience",
        input_schema = types.DeleteExperienceInput,
        output_schema = types.DeleteExperienceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFaq(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFaq",
        input_schema = types.DeleteFaqInput,
        output_schema = types.DeleteFaqOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = types.DeleteIndexInput,
        output_schema = types.DeleteIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePrincipalMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrincipalMapping",
        input_schema = types.DeletePrincipalMappingInput,
        output_schema = types.DeletePrincipalMappingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuerySuggestionsBlockList",
        input_schema = types.DeleteQuerySuggestionsBlockListInput,
        output_schema = types.DeleteQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThesaurus",
        input_schema = types.DeleteThesaurusInput,
        output_schema = types.DeleteThesaurusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessControlConfiguration",
        input_schema = types.DescribeAccessControlConfigurationInput,
        output_schema = types.DescribeAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSource",
        input_schema = types.DescribeDataSourceInput,
        output_schema = types.DescribeDataSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExperience(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExperience",
        input_schema = types.DescribeExperienceInput,
        output_schema = types.DescribeExperienceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFaq(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFaq",
        input_schema = types.DescribeFaqInput,
        output_schema = types.DescribeFaqOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeaturedResultsSet",
        input_schema = types.DescribeFeaturedResultsSetInput,
        output_schema = types.DescribeFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeIndex(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIndex",
        input_schema = types.DescribeIndexInput,
        output_schema = types.DescribeIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePrincipalMapping(input, options)
    return self:invokeOperation(input, {
        name = "DescribePrincipalMapping",
        input_schema = types.DescribePrincipalMappingInput,
        output_schema = types.DescribePrincipalMappingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuerySuggestionsBlockList",
        input_schema = types.DescribeQuerySuggestionsBlockListInput,
        output_schema = types.DescribeQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeQuerySuggestionsConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuerySuggestionsConfig",
        input_schema = types.DescribeQuerySuggestionsConfigInput,
        output_schema = types.DescribeQuerySuggestionsConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThesaurus",
        input_schema = types.DescribeThesaurusInput,
        output_schema = types.DescribeThesaurusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateEntitiesFromExperience(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEntitiesFromExperience",
        input_schema = types.DisassociateEntitiesFromExperienceInput,
        output_schema = types.DisassociateEntitiesFromExperienceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociatePersonasFromEntities(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePersonasFromEntities",
        input_schema = types.DisassociatePersonasFromEntitiesInput,
        output_schema = types.DisassociatePersonasFromEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getQuerySuggestions(input, options)
    return self:invokeOperation(input, {
        name = "GetQuerySuggestions",
        input_schema = types.GetQuerySuggestionsInput,
        output_schema = types.GetQuerySuggestionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshots",
        input_schema = types.GetSnapshotsInput,
        output_schema = types.GetSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccessControlConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessControlConfigurations",
        input_schema = types.ListAccessControlConfigurationsInput,
        output_schema = types.ListAccessControlConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataSourceSyncJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceSyncJobs",
        input_schema = types.ListDataSourceSyncJobsInput,
        output_schema = types.ListDataSourceSyncJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEntityPersonas(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityPersonas",
        input_schema = types.ListEntityPersonasInput,
        output_schema = types.ListEntityPersonasOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExperienceEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListExperienceEntities",
        input_schema = types.ListExperienceEntitiesInput,
        output_schema = types.ListExperienceEntitiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExperiences(input, options)
    return self:invokeOperation(input, {
        name = "ListExperiences",
        input_schema = types.ListExperiencesInput,
        output_schema = types.ListExperiencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFaqs(input, options)
    return self:invokeOperation(input, {
        name = "ListFaqs",
        input_schema = types.ListFaqsInput,
        output_schema = types.ListFaqsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFeaturedResultsSets(input, options)
    return self:invokeOperation(input, {
        name = "ListFeaturedResultsSets",
        input_schema = types.ListFeaturedResultsSetsInput,
        output_schema = types.ListFeaturedResultsSetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGroupsOlderThanOrderingId(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsOlderThanOrderingId",
        input_schema = types.ListGroupsOlderThanOrderingIdInput,
        output_schema = types.ListGroupsOlderThanOrderingIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListIndices",
        input_schema = types.ListIndicesInput,
        output_schema = types.ListIndicesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listQuerySuggestionsBlockLists(input, options)
    return self:invokeOperation(input, {
        name = "ListQuerySuggestionsBlockLists",
        input_schema = types.ListQuerySuggestionsBlockListsInput,
        output_schema = types.ListQuerySuggestionsBlockListsOutput,
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

function Client:listThesauri(input, options)
    return self:invokeOperation(input, {
        name = "ListThesauri",
        input_schema = types.ListThesauriInput,
        output_schema = types.ListThesauriOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putPrincipalMapping(input, options)
    return self:invokeOperation(input, {
        name = "PutPrincipalMapping",
        input_schema = types.PutPrincipalMappingInput,
        output_schema = types.PutPrincipalMappingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:query(input, options)
    return self:invokeOperation(input, {
        name = "Query",
        input_schema = types.QueryInput,
        output_schema = types.QueryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:retrieve(input, options)
    return self:invokeOperation(input, {
        name = "Retrieve",
        input_schema = types.RetrieveInput,
        output_schema = types.RetrieveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceSyncJob",
        input_schema = types.StartDataSourceSyncJobInput,
        output_schema = types.StartDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StopDataSourceSyncJob",
        input_schema = types.StopDataSourceSyncJobInput,
        output_schema = types.StopDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:submitFeedback(input, options)
    return self:invokeOperation(input, {
        name = "SubmitFeedback",
        input_schema = types.SubmitFeedbackInput,
        output_schema = types.SubmitFeedbackOutput,
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

function Client:updateAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessControlConfiguration",
        input_schema = types.UpdateAccessControlConfigurationInput,
        output_schema = types.UpdateAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateExperience(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExperience",
        input_schema = types.UpdateExperienceInput,
        output_schema = types.UpdateExperienceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFeaturedResultsSet",
        input_schema = types.UpdateFeaturedResultsSetInput,
        output_schema = types.UpdateFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = types.UpdateIndexInput,
        output_schema = types.UpdateIndexOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuerySuggestionsBlockList",
        input_schema = types.UpdateQuerySuggestionsBlockListInput,
        output_schema = types.UpdateQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateQuerySuggestionsConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuerySuggestionsConfig",
        input_schema = types.UpdateQuerySuggestionsConfigInput,
        output_schema = types.UpdateQuerySuggestionsConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThesaurus",
        input_schema = types.UpdateThesaurusInput,
        output_schema = types.UpdateThesaurusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
