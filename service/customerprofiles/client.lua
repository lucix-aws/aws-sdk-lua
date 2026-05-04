local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("customerprofiles.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("customerprofiles.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CustomerProfiles_20200815"
    cfg.signing_name = "profile"
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

function Client:addProfileKey(input, options)
    return self:invokeOperation(input, {
        name = "AddProfileKey",
        input_schema = types.AddProfileKeyInput,
        output_schema = types.AddProfileKeyOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/keys",
    }, options)
end

function Client:batchGetCalculatedAttributeForProfile(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCalculatedAttributeForProfile",
        input_schema = types.BatchGetCalculatedAttributeForProfileInput,
        output_schema = types.BatchGetCalculatedAttributeForProfileOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}/batch-get-for-profiles",
    }, options)
end

function Client:batchGetProfile(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetProfile",
        input_schema = types.BatchGetProfileInput,
        output_schema = types.BatchGetProfileOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/batch-get-profiles",
    }, options)
end

function Client:createCalculatedAttributeDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateCalculatedAttributeDefinition",
        input_schema = types.CreateCalculatedAttributeDefinitionInput,
        output_schema = types.CreateCalculatedAttributeDefinitionOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}",
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}",
    }, options)
end

function Client:createDomainLayout(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainLayout",
        input_schema = types.CreateDomainLayoutInput,
        output_schema = types.CreateDomainLayoutOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/layouts/{LayoutDefinitionName}",
    }, options)
end

function Client:createEventStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventStream",
        input_schema = types.CreateEventStreamInput,
        output_schema = types.CreateEventStreamOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/event-streams/{EventStreamName}",
    }, options)
end

function Client:createEventTrigger(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventTrigger",
        input_schema = types.CreateEventTriggerInput,
        output_schema = types.CreateEventTriggerOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/event-triggers/{EventTriggerName}",
    }, options)
end

function Client:createIntegrationWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegrationWorkflow",
        input_schema = types.CreateIntegrationWorkflowInput,
        output_schema = types.CreateIntegrationWorkflowOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/workflows/integrations",
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = types.CreateProfileInput,
        output_schema = types.CreateProfileOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles",
    }, options)
end

function Client:createRecommender(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommender",
        input_schema = types.CreateRecommenderInput,
        output_schema = types.CreateRecommenderOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/recommenders/{RecommenderName}",
    }, options)
end

function Client:createRecommenderFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommenderFilter",
        input_schema = types.CreateRecommenderFilterInput,
        output_schema = types.CreateRecommenderFilterOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/recommender-filters/{RecommenderFilterName}",
    }, options)
end

function Client:createRecommenderSchema(input, options)
    return self:invokeOperation(input, {
        name = "CreateRecommenderSchema",
        input_schema = types.CreateRecommenderSchemaInput,
        output_schema = types.CreateRecommenderSchemaOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/recommender-schemas/{RecommenderSchemaName}",
    }, options)
end

function Client:createSegmentDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateSegmentDefinition",
        input_schema = types.CreateSegmentDefinitionInput,
        output_schema = types.CreateSegmentDefinitionOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}",
    }, options)
end

function Client:createSegmentEstimate(input, options)
    return self:invokeOperation(input, {
        name = "CreateSegmentEstimate",
        input_schema = types.CreateSegmentEstimateInput,
        output_schema = types.CreateSegmentEstimateOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/segment-estimates",
    }, options)
end

function Client:createSegmentSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSegmentSnapshot",
        input_schema = types.CreateSegmentSnapshotInput,
        output_schema = types.CreateSegmentSnapshotOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots",
    }, options)
end

function Client:createUploadJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateUploadJob",
        input_schema = types.CreateUploadJobInput,
        output_schema = types.CreateUploadJobOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/upload-jobs",
    }, options)
end

function Client:deleteCalculatedAttributeDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCalculatedAttributeDefinition",
        input_schema = types.DeleteCalculatedAttributeDefinitionInput,
        output_schema = types.DeleteCalculatedAttributeDefinitionOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}",
    }, options)
end

function Client:deleteDomainLayout(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainLayout",
        input_schema = types.DeleteDomainLayoutInput,
        output_schema = types.DeleteDomainLayoutOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/layouts/{LayoutDefinitionName}",
    }, options)
end

function Client:deleteDomainObjectType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainObjectType",
        input_schema = types.DeleteDomainObjectTypeInput,
        output_schema = types.DeleteDomainObjectTypeOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/domain-object-types/{ObjectTypeName}",
    }, options)
end

function Client:deleteEventStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventStream",
        input_schema = types.DeleteEventStreamInput,
        output_schema = types.DeleteEventStreamOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/event-streams/{EventStreamName}",
    }, options)
end

function Client:deleteEventTrigger(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventTrigger",
        input_schema = types.DeleteEventTriggerInput,
        output_schema = types.DeleteEventTriggerOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/event-triggers/{EventTriggerName}",
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/integrations/delete",
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = types.DeleteProfileInput,
        output_schema = types.DeleteProfileOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/delete",
    }, options)
end

function Client:deleteProfileKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfileKey",
        input_schema = types.DeleteProfileKeyInput,
        output_schema = types.DeleteProfileKeyOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/keys/delete",
    }, options)
end

function Client:deleteProfileObject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfileObject",
        input_schema = types.DeleteProfileObjectInput,
        output_schema = types.DeleteProfileObjectOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/objects/delete",
    }, options)
end

function Client:deleteProfileObjectType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfileObjectType",
        input_schema = types.DeleteProfileObjectTypeInput,
        output_schema = types.DeleteProfileObjectTypeOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/object-types/{ObjectTypeName}",
    }, options)
end

function Client:deleteRecommender(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommender",
        input_schema = types.DeleteRecommenderInput,
        output_schema = types.DeleteRecommenderOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/recommenders/{RecommenderName}",
    }, options)
end

function Client:deleteRecommenderFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommenderFilter",
        input_schema = types.DeleteRecommenderFilterInput,
        output_schema = types.DeleteRecommenderFilterOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/recommender-filters/{RecommenderFilterName}",
    }, options)
end

function Client:deleteRecommenderSchema(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommenderSchema",
        input_schema = types.DeleteRecommenderSchemaInput,
        output_schema = types.DeleteRecommenderSchemaOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/recommender-schemas/{RecommenderSchemaName}",
    }, options)
end

function Client:deleteSegmentDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSegmentDefinition",
        input_schema = types.DeleteSegmentDefinitionInput,
        output_schema = types.DeleteSegmentDefinitionOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}",
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
        http_method = "DELETE",
        http_path = "/domains/{DomainName}/workflows/{WorkflowId}",
    }, options)
end

function Client:detectProfileObjectType(input, options)
    return self:invokeOperation(input, {
        name = "DetectProfileObjectType",
        input_schema = types.DetectProfileObjectTypeInput,
        output_schema = types.DetectProfileObjectTypeOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/detect/object-types",
    }, options)
end

function Client:getAutoMergingPreview(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoMergingPreview",
        input_schema = types.GetAutoMergingPreviewInput,
        output_schema = types.GetAutoMergingPreviewOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/identity-resolution-jobs/auto-merging-preview",
    }, options)
end

function Client:getCalculatedAttributeDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetCalculatedAttributeDefinition",
        input_schema = types.GetCalculatedAttributeDefinitionInput,
        output_schema = types.GetCalculatedAttributeDefinitionOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}",
    }, options)
end

function Client:getCalculatedAttributeForProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetCalculatedAttributeForProfile",
        input_schema = types.GetCalculatedAttributeForProfileInput,
        output_schema = types.GetCalculatedAttributeForProfileOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes/{CalculatedAttributeName}",
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = types.GetDomainInput,
        output_schema = types.GetDomainOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}",
    }, options)
end

function Client:getDomainLayout(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainLayout",
        input_schema = types.GetDomainLayoutInput,
        output_schema = types.GetDomainLayoutOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/layouts/{LayoutDefinitionName}",
    }, options)
end

function Client:getDomainObjectType(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainObjectType",
        input_schema = types.GetDomainObjectTypeInput,
        output_schema = types.GetDomainObjectTypeOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/domain-object-types/{ObjectTypeName}",
    }, options)
end

function Client:getEventStream(input, options)
    return self:invokeOperation(input, {
        name = "GetEventStream",
        input_schema = types.GetEventStreamInput,
        output_schema = types.GetEventStreamOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/event-streams/{EventStreamName}",
    }, options)
end

function Client:getEventTrigger(input, options)
    return self:invokeOperation(input, {
        name = "GetEventTrigger",
        input_schema = types.GetEventTriggerInput,
        output_schema = types.GetEventTriggerOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/event-triggers/{EventTriggerName}",
    }, options)
end

function Client:getIdentityResolutionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityResolutionJob",
        input_schema = types.GetIdentityResolutionJobInput,
        output_schema = types.GetIdentityResolutionJobOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/identity-resolution-jobs/{JobId}",
    }, options)
end

function Client:getIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegration",
        input_schema = types.GetIntegrationInput,
        output_schema = types.GetIntegrationOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/integrations",
    }, options)
end

function Client:getMatches(input, options)
    return self:invokeOperation(input, {
        name = "GetMatches",
        input_schema = types.GetMatchesInput,
        output_schema = types.GetMatchesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/matches",
    }, options)
end

function Client:getObjectTypeAttributeStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetObjectTypeAttributeStatistics",
        input_schema = types.GetObjectTypeAttributeStatisticsInput,
        output_schema = types.GetObjectTypeAttributeStatisticsOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes/{AttributeName}/statistics",
    }, options)
end

function Client:getProfileHistoryRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileHistoryRecord",
        input_schema = types.GetProfileHistoryRecordInput,
        output_schema = types.GetProfileHistoryRecordOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/profiles/{ProfileId}/history-records/{Id}",
    }, options)
end

function Client:getProfileObjectType(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileObjectType",
        input_schema = types.GetProfileObjectTypeInput,
        output_schema = types.GetProfileObjectTypeOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/object-types/{ObjectTypeName}",
    }, options)
end

function Client:getProfileObjectTypeTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileObjectTypeTemplate",
        input_schema = types.GetProfileObjectTypeTemplateInput,
        output_schema = types.GetProfileObjectTypeTemplateOutput,
        http_method = "GET",
        http_path = "/templates/{TemplateId}",
    }, options)
end

function Client:getProfileRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileRecommendations",
        input_schema = types.GetProfileRecommendationsInput,
        output_schema = types.GetProfileRecommendationsOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/{ProfileId}/recommendations",
    }, options)
end

function Client:getRecommender(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommender",
        input_schema = types.GetRecommenderInput,
        output_schema = types.GetRecommenderOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/recommenders/{RecommenderName}",
    }, options)
end

function Client:getRecommenderFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommenderFilter",
        input_schema = types.GetRecommenderFilterInput,
        output_schema = types.GetRecommenderFilterOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/recommender-filters/{RecommenderFilterName}",
    }, options)
end

function Client:getRecommenderSchema(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommenderSchema",
        input_schema = types.GetRecommenderSchemaInput,
        output_schema = types.GetRecommenderSchemaOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/recommender-schemas/{RecommenderSchemaName}",
    }, options)
end

function Client:getSegmentDefinition(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentDefinition",
        input_schema = types.GetSegmentDefinitionInput,
        output_schema = types.GetSegmentDefinitionOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/segment-definitions/{SegmentDefinitionName}",
    }, options)
end

function Client:getSegmentEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentEstimate",
        input_schema = types.GetSegmentEstimateInput,
        output_schema = types.GetSegmentEstimateOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/segment-estimates/{EstimateId}",
    }, options)
end

function Client:getSegmentMembership(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentMembership",
        input_schema = types.GetSegmentMembershipInput,
        output_schema = types.GetSegmentMembershipOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/segments/{SegmentDefinitionName}/membership",
    }, options)
end

function Client:getSegmentSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetSegmentSnapshot",
        input_schema = types.GetSegmentSnapshotInput,
        output_schema = types.GetSegmentSnapshotOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/segments/{SegmentDefinitionName}/snapshots/{SnapshotId}",
    }, options)
end

function Client:getSimilarProfiles(input, options)
    return self:invokeOperation(input, {
        name = "GetSimilarProfiles",
        input_schema = types.GetSimilarProfilesInput,
        output_schema = types.GetSimilarProfilesOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/matches",
    }, options)
end

function Client:getUploadJob(input, options)
    return self:invokeOperation(input, {
        name = "GetUploadJob",
        input_schema = types.GetUploadJobInput,
        output_schema = types.GetUploadJobOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/upload-jobs/{JobId}",
    }, options)
end

function Client:getUploadJobPath(input, options)
    return self:invokeOperation(input, {
        name = "GetUploadJobPath",
        input_schema = types.GetUploadJobPathInput,
        output_schema = types.GetUploadJobPathOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/upload-jobs/{JobId}/path",
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/workflows/{WorkflowId}",
    }, options)
end

function Client:getWorkflowSteps(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowSteps",
        input_schema = types.GetWorkflowStepsInput,
        output_schema = types.GetWorkflowStepsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/workflows/{WorkflowId}/steps",
    }, options)
end

function Client:listAccountIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountIntegrations",
        input_schema = types.ListAccountIntegrationsInput,
        output_schema = types.ListAccountIntegrationsOutput,
        http_method = "POST",
        http_path = "/integrations",
    }, options)
end

function Client:listCalculatedAttributeDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListCalculatedAttributeDefinitions",
        input_schema = types.ListCalculatedAttributeDefinitionsInput,
        output_schema = types.ListCalculatedAttributeDefinitionsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/calculated-attributes",
    }, options)
end

function Client:listCalculatedAttributesForProfile(input, options)
    return self:invokeOperation(input, {
        name = "ListCalculatedAttributesForProfile",
        input_schema = types.ListCalculatedAttributesForProfileInput,
        output_schema = types.ListCalculatedAttributesForProfileOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/profile/{ProfileId}/calculated-attributes",
    }, options)
end

function Client:listDomainLayouts(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainLayouts",
        input_schema = types.ListDomainLayoutsInput,
        output_schema = types.ListDomainLayoutsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/layouts",
    }, options)
end

function Client:listDomainObjectTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainObjectTypes",
        input_schema = types.ListDomainObjectTypesInput,
        output_schema = types.ListDomainObjectTypesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/domain-object-types",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "GET",
        http_path = "/domains",
    }, options)
end

function Client:listEventStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListEventStreams",
        input_schema = types.ListEventStreamsInput,
        output_schema = types.ListEventStreamsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/event-streams",
    }, options)
end

function Client:listEventTriggers(input, options)
    return self:invokeOperation(input, {
        name = "ListEventTriggers",
        input_schema = types.ListEventTriggersInput,
        output_schema = types.ListEventTriggersOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/event-triggers",
    }, options)
end

function Client:listIdentityResolutionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListIdentityResolutionJobs",
        input_schema = types.ListIdentityResolutionJobsInput,
        output_schema = types.ListIdentityResolutionJobsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/identity-resolution-jobs",
    }, options)
end

function Client:listIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListIntegrations",
        input_schema = types.ListIntegrationsInput,
        output_schema = types.ListIntegrationsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/integrations",
    }, options)
end

function Client:listObjectTypeAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectTypeAttributes",
        input_schema = types.ListObjectTypeAttributesInput,
        output_schema = types.ListObjectTypeAttributesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes",
    }, options)
end

function Client:listObjectTypeAttributeValues(input, options)
    return self:invokeOperation(input, {
        name = "ListObjectTypeAttributeValues",
        input_schema = types.ListObjectTypeAttributeValuesInput,
        output_schema = types.ListObjectTypeAttributeValuesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/object-types/{ObjectTypeName}/attributes/{AttributeName}/values",
    }, options)
end

function Client:listProfileAttributeValues(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileAttributeValues",
        input_schema = types.ListProfileAttributeValuesInput,
        output_schema = types.ListProfileAttributeValuesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/profile-attributes/{AttributeName}/values",
    }, options)
end

function Client:listProfileHistoryRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileHistoryRecords",
        input_schema = types.ListProfileHistoryRecordsInput,
        output_schema = types.ListProfileHistoryRecordsOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/history-records",
    }, options)
end

function Client:listProfileObjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileObjects",
        input_schema = types.ListProfileObjectsInput,
        output_schema = types.ListProfileObjectsOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/objects",
    }, options)
end

function Client:listProfileObjectTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileObjectTypes",
        input_schema = types.ListProfileObjectTypesInput,
        output_schema = types.ListProfileObjectTypesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/object-types",
    }, options)
end

function Client:listProfileObjectTypeTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileObjectTypeTemplates",
        input_schema = types.ListProfileObjectTypeTemplatesInput,
        output_schema = types.ListProfileObjectTypeTemplatesOutput,
        http_method = "GET",
        http_path = "/templates",
    }, options)
end

function Client:listRecommenderFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommenderFilters",
        input_schema = types.ListRecommenderFiltersInput,
        output_schema = types.ListRecommenderFiltersOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/recommender-filters",
    }, options)
end

function Client:listRecommenderRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommenderRecipes",
        input_schema = types.ListRecommenderRecipesInput,
        output_schema = types.ListRecommenderRecipesOutput,
        http_method = "GET",
        http_path = "/recommender-recipes",
    }, options)
end

function Client:listRecommenders(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommenders",
        input_schema = types.ListRecommendersInput,
        output_schema = types.ListRecommendersOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/recommenders",
    }, options)
end

function Client:listRecommenderSchemas(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommenderSchemas",
        input_schema = types.ListRecommenderSchemasInput,
        output_schema = types.ListRecommenderSchemasOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/recommender-schemas",
    }, options)
end

function Client:listRuleBasedMatches(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleBasedMatches",
        input_schema = types.ListRuleBasedMatchesInput,
        output_schema = types.ListRuleBasedMatchesOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/profiles/ruleBasedMatches",
    }, options)
end

function Client:listSegmentDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListSegmentDefinitions",
        input_schema = types.ListSegmentDefinitionsInput,
        output_schema = types.ListSegmentDefinitionsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/segment-definitions",
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

function Client:listUploadJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListUploadJobs",
        input_schema = types.ListUploadJobsInput,
        output_schema = types.ListUploadJobsOutput,
        http_method = "GET",
        http_path = "/domains/{DomainName}/upload-jobs",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/workflows",
    }, options)
end

function Client:mergeProfiles(input, options)
    return self:invokeOperation(input, {
        name = "MergeProfiles",
        input_schema = types.MergeProfilesInput,
        output_schema = types.MergeProfilesOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/objects/merge",
    }, options)
end

function Client:putDomainObjectType(input, options)
    return self:invokeOperation(input, {
        name = "PutDomainObjectType",
        input_schema = types.PutDomainObjectTypeInput,
        output_schema = types.PutDomainObjectTypeOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/domain-object-types/{ObjectTypeName}",
    }, options)
end

function Client:putIntegration(input, options)
    return self:invokeOperation(input, {
        name = "PutIntegration",
        input_schema = types.PutIntegrationInput,
        output_schema = types.PutIntegrationOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/integrations",
    }, options)
end

function Client:putProfileObject(input, options)
    return self:invokeOperation(input, {
        name = "PutProfileObject",
        input_schema = types.PutProfileObjectInput,
        output_schema = types.PutProfileObjectOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/profiles/objects",
    }, options)
end

function Client:putProfileObjectType(input, options)
    return self:invokeOperation(input, {
        name = "PutProfileObjectType",
        input_schema = types.PutProfileObjectTypeInput,
        output_schema = types.PutProfileObjectTypeOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/object-types/{ObjectTypeName}",
    }, options)
end

function Client:searchProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchProfiles",
        input_schema = types.SearchProfilesInput,
        output_schema = types.SearchProfilesOutput,
        http_method = "POST",
        http_path = "/domains/{DomainName}/profiles/search",
    }, options)
end

function Client:startRecommender(input, options)
    return self:invokeOperation(input, {
        name = "StartRecommender",
        input_schema = types.StartRecommenderInput,
        output_schema = types.StartRecommenderOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/recommenders/{RecommenderName}/start",
    }, options)
end

function Client:startUploadJob(input, options)
    return self:invokeOperation(input, {
        name = "StartUploadJob",
        input_schema = types.StartUploadJobInput,
        output_schema = types.StartUploadJobOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/upload-jobs/{JobId}",
    }, options)
end

function Client:stopRecommender(input, options)
    return self:invokeOperation(input, {
        name = "StopRecommender",
        input_schema = types.StopRecommenderInput,
        output_schema = types.StopRecommenderOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/recommenders/{RecommenderName}/stop",
    }, options)
end

function Client:stopUploadJob(input, options)
    return self:invokeOperation(input, {
        name = "StopUploadJob",
        input_schema = types.StopUploadJobInput,
        output_schema = types.StopUploadJobOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/upload-jobs/{JobId}/stop",
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

function Client:updateCalculatedAttributeDefinition(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCalculatedAttributeDefinition",
        input_schema = types.UpdateCalculatedAttributeDefinitionInput,
        output_schema = types.UpdateCalculatedAttributeDefinitionOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/calculated-attributes/{CalculatedAttributeName}",
    }, options)
end

function Client:updateDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomain",
        input_schema = types.UpdateDomainInput,
        output_schema = types.UpdateDomainOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}",
    }, options)
end

function Client:updateDomainLayout(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainLayout",
        input_schema = types.UpdateDomainLayoutInput,
        output_schema = types.UpdateDomainLayoutOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/layouts/{LayoutDefinitionName}",
    }, options)
end

function Client:updateEventTrigger(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventTrigger",
        input_schema = types.UpdateEventTriggerInput,
        output_schema = types.UpdateEventTriggerOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/event-triggers/{EventTriggerName}",
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = types.UpdateProfileInput,
        output_schema = types.UpdateProfileOutput,
        http_method = "PUT",
        http_path = "/domains/{DomainName}/profiles",
    }, options)
end

function Client:updateRecommender(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRecommender",
        input_schema = types.UpdateRecommenderInput,
        output_schema = types.UpdateRecommenderOutput,
        http_method = "PATCH",
        http_path = "/domains/{DomainName}/recommenders/{RecommenderName}",
    }, options)
end

return M
