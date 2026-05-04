local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("datazone.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("datazone.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DataZone"
    cfg.signing_name = "datazone"
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

function Client:acceptPredictions(input, options)
    return self:invokeOperation(input, {
        name = "AcceptPredictions",
        input_schema = types.AcceptPredictionsInput,
        output_schema = types.AcceptPredictionsOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/accept-predictions",
    }, options)
end

function Client:acceptSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptSubscriptionRequest",
        input_schema = types.AcceptSubscriptionRequestInput,
        output_schema = types.AcceptSubscriptionRequestOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/accept",
    }, options)
end

function Client:addEntityOwner(input, options)
    return self:invokeOperation(input, {
        name = "AddEntityOwner",
        input_schema = types.AddEntityOwnerInput,
        output_schema = types.AddEntityOwnerOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/addOwner",
    }, options)
end

function Client:addPolicyGrant(input, options)
    return self:invokeOperation(input, {
        name = "AddPolicyGrant",
        input_schema = types.AddPolicyGrantInput,
        output_schema = types.AddPolicyGrantOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/addGrant",
    }, options)
end

function Client:associateEnvironmentRole(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEnvironmentRole",
        input_schema = types.AssociateEnvironmentRoleInput,
        output_schema = types.AssociateEnvironmentRoleOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}",
    }, options)
end

function Client:associateGovernedTerms(input, options)
    return self:invokeOperation(input, {
        name = "AssociateGovernedTerms",
        input_schema = types.AssociateGovernedTermsInput,
        output_schema = types.AssociateGovernedTermsOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/associate-governed-terms",
    }, options)
end

function Client:batchGetAttributesMetadata(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAttributesMetadata",
        input_schema = types.BatchGetAttributesMetadataInput,
        output_schema = types.BatchGetAttributesMetadataOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/attributes-metadata",
    }, options)
end

function Client:batchPutAttributesMetadata(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutAttributesMetadata",
        input_schema = types.BatchPutAttributesMetadataInput,
        output_schema = types.BatchPutAttributesMetadataOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/attributes-metadata",
    }, options)
end

function Client:cancelMetadataGenerationRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelMetadataGenerationRun",
        input_schema = types.CancelMetadataGenerationRunInput,
        output_schema = types.CancelMetadataGenerationRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}/cancel",
    }, options)
end

function Client:cancelSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CancelSubscription",
        input_schema = types.CancelSubscriptionInput,
        output_schema = types.CancelSubscriptionOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/cancel",
    }, options)
end

function Client:createAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountPool",
        input_schema = types.CreateAccountPoolInput,
        output_schema = types.CreateAccountPoolOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/account-pools",
    }, options)
end

function Client:createAsset(input, options)
    return self:invokeOperation(input, {
        name = "CreateAsset",
        input_schema = types.CreateAssetInput,
        output_schema = types.CreateAssetOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/assets",
    }, options)
end

function Client:createAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetFilter",
        input_schema = types.CreateAssetFilterInput,
        output_schema = types.CreateAssetFilterOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters",
    }, options)
end

function Client:createAssetRevision(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetRevision",
        input_schema = types.CreateAssetRevisionInput,
        output_schema = types.CreateAssetRevisionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions",
    }, options)
end

function Client:createAssetType(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetType",
        input_schema = types.CreateAssetTypeInput,
        output_schema = types.CreateAssetTypeOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/asset-types",
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = types.CreateConnectionInput,
        output_schema = types.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/connections",
    }, options)
end

function Client:createDataProduct(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProduct",
        input_schema = types.CreateDataProductInput,
        output_schema = types.CreateDataProductOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-products",
    }, options)
end

function Client:createDataProductRevision(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProductRevision",
        input_schema = types.CreateDataProductRevisionInput,
        output_schema = types.CreateDataProductRevisionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions",
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = types.CreateDataSourceInput,
        output_schema = types.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-sources",
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/v2/domains",
    }, options)
end

function Client:createDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainUnit",
        input_schema = types.CreateDomainUnitInput,
        output_schema = types.CreateDomainUnitOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/domain-units",
    }, options)
end

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environments",
    }, options)
end

function Client:createEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentAction",
        input_schema = types.CreateEnvironmentActionInput,
        output_schema = types.CreateEnvironmentActionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions",
    }, options)
end

function Client:createEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentBlueprint",
        input_schema = types.CreateEnvironmentBlueprintInput,
        output_schema = types.CreateEnvironmentBlueprintOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints",
    }, options)
end

function Client:createEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentProfile",
        input_schema = types.CreateEnvironmentProfileInput,
        output_schema = types.CreateEnvironmentProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles",
    }, options)
end

function Client:createFormType(input, options)
    return self:invokeOperation(input, {
        name = "CreateFormType",
        input_schema = types.CreateFormTypeInput,
        output_schema = types.CreateFormTypeOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/form-types",
    }, options)
end

function Client:createGlossary(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlossary",
        input_schema = types.CreateGlossaryInput,
        output_schema = types.CreateGlossaryOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/glossaries",
    }, options)
end

function Client:createGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlossaryTerm",
        input_schema = types.CreateGlossaryTermInput,
        output_schema = types.CreateGlossaryTermOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms",
    }, options)
end

function Client:createGroupProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroupProfile",
        input_schema = types.CreateGroupProfileInput,
        output_schema = types.CreateGroupProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/group-profiles",
    }, options)
end

function Client:createListingChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateListingChangeSet",
        input_schema = types.CreateListingChangeSetInput,
        output_schema = types.CreateListingChangeSetOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/listings/change-set",
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/projects",
    }, options)
end

function Client:createProjectMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateProjectMembership",
        input_schema = types.CreateProjectMembershipInput,
        output_schema = types.CreateProjectMembershipOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/createMembership",
    }, options)
end

function Client:createProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProjectProfile",
        input_schema = types.CreateProjectProfileInput,
        output_schema = types.CreateProjectProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles",
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = types.CreateRuleInput,
        output_schema = types.CreateRuleOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/rules",
    }, options)
end

function Client:createSubscriptionGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionGrant",
        input_schema = types.CreateSubscriptionGrantInput,
        output_schema = types.CreateSubscriptionGrantOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants",
    }, options)
end

function Client:createSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionRequest",
        input_schema = types.CreateSubscriptionRequestInput,
        output_schema = types.CreateSubscriptionRequestOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests",
    }, options)
end

function Client:createSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionTarget",
        input_schema = types.CreateSubscriptionTargetInput,
        output_schema = types.CreateSubscriptionTargetOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets",
    }, options)
end

function Client:createUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserProfile",
        input_schema = types.CreateUserProfileInput,
        output_schema = types.CreateUserProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/user-profiles",
    }, options)
end

function Client:deleteAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountPool",
        input_schema = types.DeleteAccountPoolInput,
        output_schema = types.DeleteAccountPoolOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}",
    }, options)
end

function Client:deleteAsset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAsset",
        input_schema = types.DeleteAssetInput,
        output_schema = types.DeleteAssetOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}",
    }, options)
end

function Client:deleteAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetFilter",
        input_schema = types.DeleteAssetFilterInput,
        output_schema = types.DeleteAssetFilterOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}",
    }, options)
end

function Client:deleteAssetType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetType",
        input_schema = types.DeleteAssetTypeInput,
        output_schema = types.DeleteAssetTypeOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/asset-types/{identifier}",
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/connections/{identifier}",
    }, options)
end

function Client:deleteDataExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataExportConfiguration",
        input_schema = types.DeleteDataExportConfigurationInput,
        output_schema = types.DeleteDataExportConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/data-export-configuration",
    }, options)
end

function Client:deleteDataProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataProduct",
        input_schema = types.DeleteDataProductInput,
        output_schema = types.DeleteDataProductOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}",
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{identifier}",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{identifier}",
    }, options)
end

function Client:deleteDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainUnit",
        input_schema = types.DeleteDomainUnitInput,
        output_schema = types.DeleteDomainUnitOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/domain-units/{identifier}",
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = types.DeleteEnvironmentInput,
        output_schema = types.DeleteEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{identifier}",
    }, options)
end

function Client:deleteEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentAction",
        input_schema = types.DeleteEnvironmentActionInput,
        output_schema = types.DeleteEnvironmentActionOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}",
    }, options)
end

function Client:deleteEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentBlueprint",
        input_schema = types.DeleteEnvironmentBlueprintInput,
        output_schema = types.DeleteEnvironmentBlueprintOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}",
    }, options)
end

function Client:deleteEnvironmentBlueprintConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentBlueprintConfiguration",
        input_schema = types.DeleteEnvironmentBlueprintConfigurationInput,
        output_schema = types.DeleteEnvironmentBlueprintConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}",
    }, options)
end

function Client:deleteEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentProfile",
        input_schema = types.DeleteEnvironmentProfileInput,
        output_schema = types.DeleteEnvironmentProfileOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}",
    }, options)
end

function Client:deleteFormType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFormType",
        input_schema = types.DeleteFormTypeInput,
        output_schema = types.DeleteFormTypeOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}",
    }, options)
end

function Client:deleteGlossary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlossary",
        input_schema = types.DeleteGlossaryInput,
        output_schema = types.DeleteGlossaryOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/glossaries/{identifier}",
    }, options)
end

function Client:deleteGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlossaryTerm",
        input_schema = types.DeleteGlossaryTermInput,
        output_schema = types.DeleteGlossaryTermOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}",
    }, options)
end

function Client:deleteListing(input, options)
    return self:invokeOperation(input, {
        name = "DeleteListing",
        input_schema = types.DeleteListingInput,
        output_schema = types.DeleteListingOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/listings/{identifier}",
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/projects/{identifier}",
    }, options)
end

function Client:deleteProjectMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProjectMembership",
        input_schema = types.DeleteProjectMembershipInput,
        output_schema = types.DeleteProjectMembershipOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/deleteMembership",
    }, options)
end

function Client:deleteProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProjectProfile",
        input_schema = types.DeleteProjectProfileInput,
        output_schema = types.DeleteProjectProfileOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles/{identifier}",
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/rules/{identifier}",
    }, options)
end

function Client:deleteSubscriptionGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionGrant",
        input_schema = types.DeleteSubscriptionGrantInput,
        output_schema = types.DeleteSubscriptionGrantOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}",
    }, options)
end

function Client:deleteSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionRequest",
        input_schema = types.DeleteSubscriptionRequestInput,
        output_schema = types.DeleteSubscriptionRequestOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}",
    }, options)
end

function Client:deleteSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionTarget",
        input_schema = types.DeleteSubscriptionTargetInput,
        output_schema = types.DeleteSubscriptionTargetOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}",
    }, options)
end

function Client:deleteTimeSeriesDataPoints(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTimeSeriesDataPoints",
        input_schema = types.DeleteTimeSeriesDataPointsInput,
        output_schema = types.DeleteTimeSeriesDataPointsOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points",
    }, options)
end

function Client:disassociateEnvironmentRole(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEnvironmentRole",
        input_schema = types.DisassociateEnvironmentRoleInput,
        output_schema = types.DisassociateEnvironmentRoleOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}",
    }, options)
end

function Client:disassociateGovernedTerms(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateGovernedTerms",
        input_schema = types.DisassociateGovernedTermsInput,
        output_schema = types.DisassociateGovernedTermsOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/disassociate-governed-terms",
    }, options)
end

function Client:getAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPool",
        input_schema = types.GetAccountPoolInput,
        output_schema = types.GetAccountPoolOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}",
    }, options)
end

function Client:getAsset(input, options)
    return self:invokeOperation(input, {
        name = "GetAsset",
        input_schema = types.GetAssetInput,
        output_schema = types.GetAssetOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}",
    }, options)
end

function Client:getAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetFilter",
        input_schema = types.GetAssetFilterInput,
        output_schema = types.GetAssetFilterOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}",
    }, options)
end

function Client:getAssetType(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetType",
        input_schema = types.GetAssetTypeInput,
        output_schema = types.GetAssetTypeOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/asset-types/{identifier}",
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = types.GetConnectionInput,
        output_schema = types.GetConnectionOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/connections/{identifier}",
    }, options)
end

function Client:getDataExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDataExportConfiguration",
        input_schema = types.GetDataExportConfigurationInput,
        output_schema = types.GetDataExportConfigurationOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-export-configuration",
    }, options)
end

function Client:getDataProduct(input, options)
    return self:invokeOperation(input, {
        name = "GetDataProduct",
        input_schema = types.GetDataProductInput,
        output_schema = types.GetDataProductOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}",
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = types.GetDataSourceInput,
        output_schema = types.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{identifier}",
    }, options)
end

function Client:getDataSourceRun(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSourceRun",
        input_schema = types.GetDataSourceRunInput,
        output_schema = types.GetDataSourceRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}",
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = types.GetDomainInput,
        output_schema = types.GetDomainOutput,
        http_method = "GET",
        http_path = "/v2/domains/{identifier}",
    }, options)
end

function Client:getDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainUnit",
        input_schema = types.GetDomainUnitInput,
        output_schema = types.GetDomainUnitOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/domain-units/{identifier}",
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = types.GetEnvironmentInput,
        output_schema = types.GetEnvironmentOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{identifier}",
    }, options)
end

function Client:getEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentAction",
        input_schema = types.GetEnvironmentActionInput,
        output_schema = types.GetEnvironmentActionOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}",
    }, options)
end

function Client:getEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentBlueprint",
        input_schema = types.GetEnvironmentBlueprintInput,
        output_schema = types.GetEnvironmentBlueprintOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}",
    }, options)
end

function Client:getEnvironmentBlueprintConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentBlueprintConfiguration",
        input_schema = types.GetEnvironmentBlueprintConfigurationInput,
        output_schema = types.GetEnvironmentBlueprintConfigurationOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}",
    }, options)
end

function Client:getEnvironmentCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentCredentials",
        input_schema = types.GetEnvironmentCredentialsInput,
        output_schema = types.GetEnvironmentCredentialsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/credentials",
    }, options)
end

function Client:getEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentProfile",
        input_schema = types.GetEnvironmentProfileInput,
        output_schema = types.GetEnvironmentProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}",
    }, options)
end

function Client:getFormType(input, options)
    return self:invokeOperation(input, {
        name = "GetFormType",
        input_schema = types.GetFormTypeInput,
        output_schema = types.GetFormTypeOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}",
    }, options)
end

function Client:getGlossary(input, options)
    return self:invokeOperation(input, {
        name = "GetGlossary",
        input_schema = types.GetGlossaryInput,
        output_schema = types.GetGlossaryOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/glossaries/{identifier}",
    }, options)
end

function Client:getGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "GetGlossaryTerm",
        input_schema = types.GetGlossaryTermInput,
        output_schema = types.GetGlossaryTermOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}",
    }, options)
end

function Client:getGroupProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupProfile",
        input_schema = types.GetGroupProfileInput,
        output_schema = types.GetGroupProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}",
    }, options)
end

function Client:getIamPortalLoginUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetIamPortalLoginUrl",
        input_schema = types.GetIamPortalLoginUrlInput,
        output_schema = types.GetIamPortalLoginUrlOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/get-portal-login-url",
    }, options)
end

function Client:getJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetJobRun",
        input_schema = types.GetJobRunInput,
        output_schema = types.GetJobRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/jobRuns/{identifier}",
    }, options)
end

function Client:getLineageEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetLineageEvent",
        input_schema = types.GetLineageEventInput,
        output_schema = types.GetLineageEventOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/events/{identifier}",
    }, options)
end

function Client:getLineageNode(input, options)
    return self:invokeOperation(input, {
        name = "GetLineageNode",
        input_schema = types.GetLineageNodeInput,
        output_schema = types.GetLineageNodeOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}",
    }, options)
end

function Client:getListing(input, options)
    return self:invokeOperation(input, {
        name = "GetListing",
        input_schema = types.GetListingInput,
        output_schema = types.GetListingOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/listings/{identifier}",
    }, options)
end

function Client:getMetadataGenerationRun(input, options)
    return self:invokeOperation(input, {
        name = "GetMetadataGenerationRun",
        input_schema = types.GetMetadataGenerationRunInput,
        output_schema = types.GetMetadataGenerationRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}",
    }, options)
end

function Client:getNotebookRun(input, options)
    return self:invokeOperation(input, {
        name = "GetNotebookRun",
        input_schema = types.GetNotebookRunInput,
        output_schema = types.GetNotebookRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs/{identifier}",
    }, options)
end

function Client:getProject(input, options)
    return self:invokeOperation(input, {
        name = "GetProject",
        input_schema = types.GetProjectInput,
        output_schema = types.GetProjectOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/projects/{identifier}",
    }, options)
end

function Client:getProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProjectProfile",
        input_schema = types.GetProjectProfileInput,
        output_schema = types.GetProjectProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles/{identifier}",
    }, options)
end

function Client:getRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRule",
        input_schema = types.GetRuleInput,
        output_schema = types.GetRuleOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/rules/{identifier}",
    }, options)
end

function Client:getSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscription",
        input_schema = types.GetSubscriptionInput,
        output_schema = types.GetSubscriptionOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}",
    }, options)
end

function Client:getSubscriptionGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionGrant",
        input_schema = types.GetSubscriptionGrantInput,
        output_schema = types.GetSubscriptionGrantOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}",
    }, options)
end

function Client:getSubscriptionRequestDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionRequestDetails",
        input_schema = types.GetSubscriptionRequestDetailsInput,
        output_schema = types.GetSubscriptionRequestDetailsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}",
    }, options)
end

function Client:getSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionTarget",
        input_schema = types.GetSubscriptionTargetInput,
        output_schema = types.GetSubscriptionTargetOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}",
    }, options)
end

function Client:getTimeSeriesDataPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetTimeSeriesDataPoint",
        input_schema = types.GetTimeSeriesDataPointInput,
        output_schema = types.GetTimeSeriesDataPointOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points/{identifier}",
    }, options)
end

function Client:getUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetUserProfile",
        input_schema = types.GetUserProfileInput,
        output_schema = types.GetUserProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}",
    }, options)
end

function Client:listAccountPools(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountPools",
        input_schema = types.ListAccountPoolsInput,
        output_schema = types.ListAccountPoolsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/account-pools",
    }, options)
end

function Client:listAccountsInAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountsInAccountPool",
        input_schema = types.ListAccountsInAccountPoolInput,
        output_schema = types.ListAccountsInAccountPoolOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}/accounts",
    }, options)
end

function Client:listAssetFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetFilters",
        input_schema = types.ListAssetFiltersInput,
        output_schema = types.ListAssetFiltersOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters",
    }, options)
end

function Client:listAssetRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetRevisions",
        input_schema = types.ListAssetRevisionsInput,
        output_schema = types.ListAssetRevisionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions",
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = types.ListConnectionsInput,
        output_schema = types.ListConnectionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/connections",
    }, options)
end

function Client:listDataProductRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataProductRevisions",
        input_schema = types.ListDataProductRevisionsInput,
        output_schema = types.ListDataProductRevisionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions",
    }, options)
end

function Client:listDataSourceRunActivities(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceRunActivities",
        input_schema = types.ListDataSourceRunActivitiesInput,
        output_schema = types.ListDataSourceRunActivitiesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}/activities",
    }, options)
end

function Client:listDataSourceRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceRuns",
        input_schema = types.ListDataSourceRunsInput,
        output_schema = types.ListDataSourceRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs",
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-sources",
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "GET",
        http_path = "/v2/domains",
    }, options)
end

function Client:listDomainUnitsForParent(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainUnitsForParent",
        input_schema = types.ListDomainUnitsForParentInput,
        output_schema = types.ListDomainUnitsForParentOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/domain-units",
    }, options)
end

function Client:listEntityOwners(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityOwners",
        input_schema = types.ListEntityOwnersInput,
        output_schema = types.ListEntityOwnersOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/owners",
    }, options)
end

function Client:listEnvironmentActions(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentActions",
        input_schema = types.ListEnvironmentActionsInput,
        output_schema = types.ListEnvironmentActionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions",
    }, options)
end

function Client:listEnvironmentBlueprintConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentBlueprintConfigurations",
        input_schema = types.ListEnvironmentBlueprintConfigurationsInput,
        output_schema = types.ListEnvironmentBlueprintConfigurationsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations",
    }, options)
end

function Client:listEnvironmentBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentBlueprints",
        input_schema = types.ListEnvironmentBlueprintsInput,
        output_schema = types.ListEnvironmentBlueprintsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints",
    }, options)
end

function Client:listEnvironmentProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentProfiles",
        input_schema = types.ListEnvironmentProfilesInput,
        output_schema = types.ListEnvironmentProfilesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles",
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = types.ListEnvironmentsInput,
        output_schema = types.ListEnvironmentsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments",
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = types.ListJobRunsInput,
        output_schema = types.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/jobs/{jobIdentifier}/runs",
    }, options)
end

function Client:listLineageEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListLineageEvents",
        input_schema = types.ListLineageEventsInput,
        output_schema = types.ListLineageEventsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/events",
    }, options)
end

function Client:listLineageNodeHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListLineageNodeHistory",
        input_schema = types.ListLineageNodeHistoryInput,
        output_schema = types.ListLineageNodeHistoryOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}/history",
    }, options)
end

function Client:listMetadataGenerationRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListMetadataGenerationRuns",
        input_schema = types.ListMetadataGenerationRunsInput,
        output_schema = types.ListMetadataGenerationRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs",
    }, options)
end

function Client:listNotebookRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookRuns",
        input_schema = types.ListNotebookRunsInput,
        output_schema = types.ListNotebookRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs",
    }, options)
end

function Client:listNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifications",
        input_schema = types.ListNotificationsInput,
        output_schema = types.ListNotificationsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/notifications",
    }, options)
end

function Client:listPolicyGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyGrants",
        input_schema = types.ListPolicyGrantsInput,
        output_schema = types.ListPolicyGrantsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/grants",
    }, options)
end

function Client:listProjectMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectMemberships",
        input_schema = types.ListProjectMembershipsInput,
        output_schema = types.ListProjectMembershipsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/memberships",
    }, options)
end

function Client:listProjectProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectProfiles",
        input_schema = types.ListProjectProfilesInput,
        output_schema = types.ListProjectProfilesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles",
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/projects",
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = types.ListRulesInput,
        output_schema = types.ListRulesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/list-rules/{targetType}/{targetIdentifier}",
    }, options)
end

function Client:listSubscriptionGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionGrants",
        input_schema = types.ListSubscriptionGrantsInput,
        output_schema = types.ListSubscriptionGrantsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants",
    }, options)
end

function Client:listSubscriptionRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionRequests",
        input_schema = types.ListSubscriptionRequestsInput,
        output_schema = types.ListSubscriptionRequestsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests",
    }, options)
end

function Client:listSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptions",
        input_schema = types.ListSubscriptionsInput,
        output_schema = types.ListSubscriptionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions",
    }, options)
end

function Client:listSubscriptionTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionTargets",
        input_schema = types.ListSubscriptionTargetsInput,
        output_schema = types.ListSubscriptionTargetsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets",
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

function Client:listTimeSeriesDataPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListTimeSeriesDataPoints",
        input_schema = types.ListTimeSeriesDataPointsInput,
        output_schema = types.ListTimeSeriesDataPointsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points",
    }, options)
end

function Client:postLineageEvent(input, options)
    return self:invokeOperation(input, {
        name = "PostLineageEvent",
        input_schema = types.PostLineageEventInput,
        output_schema = types.PostLineageEventOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/lineage/events",
    }, options)
end

function Client:postTimeSeriesDataPoints(input, options)
    return self:invokeOperation(input, {
        name = "PostTimeSeriesDataPoints",
        input_schema = types.PostTimeSeriesDataPointsInput,
        output_schema = types.PostTimeSeriesDataPointsOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points",
    }, options)
end

function Client:putDataExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutDataExportConfiguration",
        input_schema = types.PutDataExportConfigurationInput,
        output_schema = types.PutDataExportConfigurationOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/data-export-configuration",
    }, options)
end

function Client:putEnvironmentBlueprintConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEnvironmentBlueprintConfiguration",
        input_schema = types.PutEnvironmentBlueprintConfigurationInput,
        output_schema = types.PutEnvironmentBlueprintConfigurationOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}",
    }, options)
end

function Client:queryGraph(input, options)
    return self:invokeOperation(input, {
        name = "QueryGraph",
        input_schema = types.QueryGraphInput,
        output_schema = types.QueryGraphOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/graph/query",
    }, options)
end

function Client:rejectPredictions(input, options)
    return self:invokeOperation(input, {
        name = "RejectPredictions",
        input_schema = types.RejectPredictionsInput,
        output_schema = types.RejectPredictionsOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/reject-predictions",
    }, options)
end

function Client:rejectSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectSubscriptionRequest",
        input_schema = types.RejectSubscriptionRequestInput,
        output_schema = types.RejectSubscriptionRequestOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/reject",
    }, options)
end

function Client:removeEntityOwner(input, options)
    return self:invokeOperation(input, {
        name = "RemoveEntityOwner",
        input_schema = types.RemoveEntityOwnerInput,
        output_schema = types.RemoveEntityOwnerOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/removeOwner",
    }, options)
end

function Client:removePolicyGrant(input, options)
    return self:invokeOperation(input, {
        name = "RemovePolicyGrant",
        input_schema = types.RemovePolicyGrantInput,
        output_schema = types.RemovePolicyGrantOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/removeGrant",
    }, options)
end

function Client:revokeSubscription(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSubscription",
        input_schema = types.RevokeSubscriptionInput,
        output_schema = types.RevokeSubscriptionOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/revoke",
    }, options)
end

function Client:search(input, options)
    return self:invokeOperation(input, {
        name = "Search",
        input_schema = types.SearchInput,
        output_schema = types.SearchOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/search",
    }, options)
end

function Client:searchGroupProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchGroupProfiles",
        input_schema = types.SearchGroupProfilesInput,
        output_schema = types.SearchGroupProfilesOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/search-group-profiles",
    }, options)
end

function Client:searchListings(input, options)
    return self:invokeOperation(input, {
        name = "SearchListings",
        input_schema = types.SearchListingsInput,
        output_schema = types.SearchListingsOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/listings/search",
    }, options)
end

function Client:searchTypes(input, options)
    return self:invokeOperation(input, {
        name = "SearchTypes",
        input_schema = types.SearchTypesInput,
        output_schema = types.SearchTypesOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/types-search",
    }, options)
end

function Client:searchUserProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchUserProfiles",
        input_schema = types.SearchUserProfilesInput,
        output_schema = types.SearchUserProfilesOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/search-user-profiles",
    }, options)
end

function Client:startDataSourceRun(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceRun",
        input_schema = types.StartDataSourceRunInput,
        output_schema = types.StartDataSourceRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs",
    }, options)
end

function Client:startMetadataGenerationRun(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataGenerationRun",
        input_schema = types.StartMetadataGenerationRunInput,
        output_schema = types.StartMetadataGenerationRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs",
    }, options)
end

function Client:startNotebookRun(input, options)
    return self:invokeOperation(input, {
        name = "StartNotebookRun",
        input_schema = types.StartNotebookRunInput,
        output_schema = types.StartNotebookRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs",
    }, options)
end

function Client:stopNotebookRun(input, options)
    return self:invokeOperation(input, {
        name = "StopNotebookRun",
        input_schema = types.StopNotebookRunInput,
        output_schema = types.StopNotebookRunOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs/{identifier}/stop",
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

function Client:updateAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountPool",
        input_schema = types.UpdateAccountPoolInput,
        output_schema = types.UpdateAccountPoolOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}",
    }, options)
end

function Client:updateAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetFilter",
        input_schema = types.UpdateAssetFilterInput,
        output_schema = types.UpdateAssetFilterOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}",
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = types.UpdateConnectionInput,
        output_schema = types.UpdateConnectionOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/connections/{identifier}",
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{identifier}",
    }, options)
end

function Client:updateDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomain",
        input_schema = types.UpdateDomainInput,
        output_schema = types.UpdateDomainOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{identifier}",
    }, options)
end

function Client:updateDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainUnit",
        input_schema = types.UpdateDomainUnitInput,
        output_schema = types.UpdateDomainUnitOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/domain-units/{identifier}",
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environments/{identifier}",
    }, options)
end

function Client:updateEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentAction",
        input_schema = types.UpdateEnvironmentActionInput,
        output_schema = types.UpdateEnvironmentActionOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}",
    }, options)
end

function Client:updateEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentBlueprint",
        input_schema = types.UpdateEnvironmentBlueprintInput,
        output_schema = types.UpdateEnvironmentBlueprintOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}",
    }, options)
end

function Client:updateEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentProfile",
        input_schema = types.UpdateEnvironmentProfileInput,
        output_schema = types.UpdateEnvironmentProfileOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}",
    }, options)
end

function Client:updateGlossary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlossary",
        input_schema = types.UpdateGlossaryInput,
        output_schema = types.UpdateGlossaryOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/glossaries/{identifier}",
    }, options)
end

function Client:updateGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlossaryTerm",
        input_schema = types.UpdateGlossaryTermInput,
        output_schema = types.UpdateGlossaryTermOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}",
    }, options)
end

function Client:updateGroupProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroupProfile",
        input_schema = types.UpdateGroupProfileInput,
        output_schema = types.UpdateGroupProfileOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}",
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/projects/{identifier}",
    }, options)
end

function Client:updateProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProjectProfile",
        input_schema = types.UpdateProjectProfileInput,
        output_schema = types.UpdateProjectProfileOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles/{identifier}",
    }, options)
end

function Client:updateRootDomainUnitOwner(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRootDomainUnitOwner",
        input_schema = types.UpdateRootDomainUnitOwnerInput,
        output_schema = types.UpdateRootDomainUnitOwnerOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/root-domain-unit-owner",
    }, options)
end

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = types.UpdateRuleInput,
        output_schema = types.UpdateRuleOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/rules/{identifier}",
    }, options)
end

function Client:updateSubscriptionGrantStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionGrantStatus",
        input_schema = types.UpdateSubscriptionGrantStatusInput,
        output_schema = types.UpdateSubscriptionGrantStatusOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}/status/{assetIdentifier}",
    }, options)
end

function Client:updateSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionRequest",
        input_schema = types.UpdateSubscriptionRequestInput,
        output_schema = types.UpdateSubscriptionRequestOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}",
    }, options)
end

function Client:updateSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionTarget",
        input_schema = types.UpdateSubscriptionTargetInput,
        output_schema = types.UpdateSubscriptionTargetOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}",
    }, options)
end

function Client:updateUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserProfile",
        input_schema = types.UpdateUserProfileInput,
        output_schema = types.UpdateUserProfileOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}",
    }, options)
end

return M
