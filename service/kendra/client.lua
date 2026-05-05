local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("kendra.endpoint_rules")
local schemas = require("kendra.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSKendraFrontendService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kendra", signing_region = cfg.region } }
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

function Client:associateEntitiesToExperience(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEntitiesToExperience",
        input_schema = schemas.AssociateEntitiesToExperienceInput,
        output_schema = schemas.AssociateEntitiesToExperienceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePersonasToEntities(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePersonasToEntities",
        input_schema = schemas.AssociatePersonasToEntitiesInput,
        output_schema = schemas.AssociatePersonasToEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDocument",
        input_schema = schemas.BatchDeleteDocumentInput,
        output_schema = schemas.BatchDeleteDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteFeaturedResultsSet",
        input_schema = schemas.BatchDeleteFeaturedResultsSetInput,
        output_schema = schemas.BatchDeleteFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetDocumentStatus(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDocumentStatus",
        input_schema = schemas.BatchGetDocumentStatusInput,
        output_schema = schemas.BatchGetDocumentStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutDocument(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutDocument",
        input_schema = schemas.BatchPutDocumentInput,
        output_schema = schemas.BatchPutDocumentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:clearQuerySuggestions(input, options)
    return self:invokeOperation(input, {
        name = "ClearQuerySuggestions",
        input_schema = schemas.ClearQuerySuggestionsInput,
        output_schema = schemas.ClearQuerySuggestionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessControlConfiguration",
        input_schema = schemas.CreateAccessControlConfigurationInput,
        output_schema = schemas.CreateAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = schemas.CreateDataSourceInput,
        output_schema = schemas.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExperience(input, options)
    return self:invokeOperation(input, {
        name = "CreateExperience",
        input_schema = schemas.CreateExperienceInput,
        output_schema = schemas.CreateExperienceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFaq(input, options)
    return self:invokeOperation(input, {
        name = "CreateFaq",
        input_schema = schemas.CreateFaqInput,
        output_schema = schemas.CreateFaqOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFeaturedResultsSet",
        input_schema = schemas.CreateFeaturedResultsSetInput,
        output_schema = schemas.CreateFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIndex(input, options)
    return self:invokeOperation(input, {
        name = "CreateIndex",
        input_schema = schemas.CreateIndexInput,
        output_schema = schemas.CreateIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuerySuggestionsBlockList",
        input_schema = schemas.CreateQuerySuggestionsBlockListInput,
        output_schema = schemas.CreateQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "CreateThesaurus",
        input_schema = schemas.CreateThesaurusInput,
        output_schema = schemas.CreateThesaurusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessControlConfiguration",
        input_schema = schemas.DeleteAccessControlConfigurationInput,
        output_schema = schemas.DeleteAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = schemas.DeleteDataSourceInput,
        output_schema = schemas.DeleteDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExperience(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExperience",
        input_schema = schemas.DeleteExperienceInput,
        output_schema = schemas.DeleteExperienceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFaq(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFaq",
        input_schema = schemas.DeleteFaqInput,
        output_schema = schemas.DeleteFaqOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndex(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndex",
        input_schema = schemas.DeleteIndexInput,
        output_schema = schemas.DeleteIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePrincipalMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrincipalMapping",
        input_schema = schemas.DeletePrincipalMappingInput,
        output_schema = schemas.DeletePrincipalMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuerySuggestionsBlockList",
        input_schema = schemas.DeleteQuerySuggestionsBlockListInput,
        output_schema = schemas.DeleteQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThesaurus",
        input_schema = schemas.DeleteThesaurusInput,
        output_schema = schemas.DeleteThesaurusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessControlConfiguration",
        input_schema = schemas.DescribeAccessControlConfigurationInput,
        output_schema = schemas.DescribeAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSource",
        input_schema = schemas.DescribeDataSourceInput,
        output_schema = schemas.DescribeDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExperience(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExperience",
        input_schema = schemas.DescribeExperienceInput,
        output_schema = schemas.DescribeExperienceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFaq(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFaq",
        input_schema = schemas.DescribeFaqInput,
        output_schema = schemas.DescribeFaqOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeaturedResultsSet",
        input_schema = schemas.DescribeFeaturedResultsSetInput,
        output_schema = schemas.DescribeFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIndex(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIndex",
        input_schema = schemas.DescribeIndexInput,
        output_schema = schemas.DescribeIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePrincipalMapping(input, options)
    return self:invokeOperation(input, {
        name = "DescribePrincipalMapping",
        input_schema = schemas.DescribePrincipalMappingInput,
        output_schema = schemas.DescribePrincipalMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuerySuggestionsBlockList",
        input_schema = schemas.DescribeQuerySuggestionsBlockListInput,
        output_schema = schemas.DescribeQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQuerySuggestionsConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuerySuggestionsConfig",
        input_schema = schemas.DescribeQuerySuggestionsConfigInput,
        output_schema = schemas.DescribeQuerySuggestionsConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThesaurus",
        input_schema = schemas.DescribeThesaurusInput,
        output_schema = schemas.DescribeThesaurusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateEntitiesFromExperience(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEntitiesFromExperience",
        input_schema = schemas.DisassociateEntitiesFromExperienceInput,
        output_schema = schemas.DisassociateEntitiesFromExperienceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePersonasFromEntities(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePersonasFromEntities",
        input_schema = schemas.DisassociatePersonasFromEntitiesInput,
        output_schema = schemas.DisassociatePersonasFromEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQuerySuggestions(input, options)
    return self:invokeOperation(input, {
        name = "GetQuerySuggestions",
        input_schema = schemas.GetQuerySuggestionsInput,
        output_schema = schemas.GetQuerySuggestionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshots",
        input_schema = schemas.GetSnapshotsInput,
        output_schema = schemas.GetSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessControlConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessControlConfigurations",
        input_schema = schemas.ListAccessControlConfigurationsInput,
        output_schema = schemas.ListAccessControlConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = schemas.ListDataSourcesInput,
        output_schema = schemas.ListDataSourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSourceSyncJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceSyncJobs",
        input_schema = schemas.ListDataSourceSyncJobsInput,
        output_schema = schemas.ListDataSourceSyncJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntityPersonas(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityPersonas",
        input_schema = schemas.ListEntityPersonasInput,
        output_schema = schemas.ListEntityPersonasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperienceEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListExperienceEntities",
        input_schema = schemas.ListExperienceEntitiesInput,
        output_schema = schemas.ListExperienceEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperiences(input, options)
    return self:invokeOperation(input, {
        name = "ListExperiences",
        input_schema = schemas.ListExperiencesInput,
        output_schema = schemas.ListExperiencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFaqs(input, options)
    return self:invokeOperation(input, {
        name = "ListFaqs",
        input_schema = schemas.ListFaqsInput,
        output_schema = schemas.ListFaqsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFeaturedResultsSets(input, options)
    return self:invokeOperation(input, {
        name = "ListFeaturedResultsSets",
        input_schema = schemas.ListFeaturedResultsSetsInput,
        output_schema = schemas.ListFeaturedResultsSetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGroupsOlderThanOrderingId(input, options)
    return self:invokeOperation(input, {
        name = "ListGroupsOlderThanOrderingId",
        input_schema = schemas.ListGroupsOlderThanOrderingIdInput,
        output_schema = schemas.ListGroupsOlderThanOrderingIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListIndices",
        input_schema = schemas.ListIndicesInput,
        output_schema = schemas.ListIndicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQuerySuggestionsBlockLists(input, options)
    return self:invokeOperation(input, {
        name = "ListQuerySuggestionsBlockLists",
        input_schema = schemas.ListQuerySuggestionsBlockListsInput,
        output_schema = schemas.ListQuerySuggestionsBlockListsOutput,
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

function Client:listThesauri(input, options)
    return self:invokeOperation(input, {
        name = "ListThesauri",
        input_schema = schemas.ListThesauriInput,
        output_schema = schemas.ListThesauriOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPrincipalMapping(input, options)
    return self:invokeOperation(input, {
        name = "PutPrincipalMapping",
        input_schema = schemas.PutPrincipalMappingInput,
        output_schema = schemas.PutPrincipalMappingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:query(input, options)
    return self:invokeOperation(input, {
        name = "Query",
        input_schema = schemas.QueryInput,
        output_schema = schemas.QueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieve(input, options)
    return self:invokeOperation(input, {
        name = "Retrieve",
        input_schema = schemas.RetrieveInput,
        output_schema = schemas.RetrieveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceSyncJob",
        input_schema = schemas.StartDataSourceSyncJobInput,
        output_schema = schemas.StartDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDataSourceSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "StopDataSourceSyncJob",
        input_schema = schemas.StopDataSourceSyncJobInput,
        output_schema = schemas.StopDataSourceSyncJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitFeedback(input, options)
    return self:invokeOperation(input, {
        name = "SubmitFeedback",
        input_schema = schemas.SubmitFeedbackInput,
        output_schema = schemas.SubmitFeedbackOutput,
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

function Client:updateAccessControlConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessControlConfiguration",
        input_schema = schemas.UpdateAccessControlConfigurationInput,
        output_schema = schemas.UpdateAccessControlConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = schemas.UpdateDataSourceInput,
        output_schema = schemas.UpdateDataSourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExperience(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExperience",
        input_schema = schemas.UpdateExperienceInput,
        output_schema = schemas.UpdateExperienceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFeaturedResultsSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFeaturedResultsSet",
        input_schema = schemas.UpdateFeaturedResultsSetInput,
        output_schema = schemas.UpdateFeaturedResultsSetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndex(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndex",
        input_schema = schemas.UpdateIndexInput,
        output_schema = schemas.UpdateIndexOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuerySuggestionsBlockList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuerySuggestionsBlockList",
        input_schema = schemas.UpdateQuerySuggestionsBlockListInput,
        output_schema = schemas.UpdateQuerySuggestionsBlockListOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuerySuggestionsConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuerySuggestionsConfig",
        input_schema = schemas.UpdateQuerySuggestionsConfigInput,
        output_schema = schemas.UpdateQuerySuggestionsConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThesaurus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThesaurus",
        input_schema = schemas.UpdateThesaurusInput,
        output_schema = schemas.UpdateThesaurusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
