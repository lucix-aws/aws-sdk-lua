local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("datazone.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("datazone.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DataZone"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "datazone", signing_region = cfg.region } }
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

function Client:acceptPredictions(input, options)
    return self:invokeOperation(input, {
        name = "AcceptPredictions",
        input_schema = schemas.AcceptPredictionsInput,
        output_schema = schemas.AcceptPredictionsOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/accept-predictions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptSubscriptionRequest",
        input_schema = schemas.AcceptSubscriptionRequestInput,
        output_schema = schemas.AcceptSubscriptionRequestOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addEntityOwner(input, options)
    return self:invokeOperation(input, {
        name = "AddEntityOwner",
        input_schema = schemas.AddEntityOwnerInput,
        output_schema = schemas.AddEntityOwnerOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/addOwner",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addPolicyGrant(input, options)
    return self:invokeOperation(input, {
        name = "AddPolicyGrant",
        input_schema = schemas.AddPolicyGrantInput,
        output_schema = schemas.AddPolicyGrantOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/addGrant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateEnvironmentRole(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEnvironmentRole",
        input_schema = schemas.AssociateEnvironmentRoleInput,
        output_schema = schemas.AssociateEnvironmentRoleOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateGovernedTerms(input, options)
    return self:invokeOperation(input, {
        name = "AssociateGovernedTerms",
        input_schema = schemas.AssociateGovernedTermsInput,
        output_schema = schemas.AssociateGovernedTermsOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/associate-governed-terms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAttributesMetadata(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAttributesMetadata",
        input_schema = schemas.BatchGetAttributesMetadataInput,
        output_schema = schemas.BatchGetAttributesMetadataOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/attributes-metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutAttributesMetadata(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutAttributesMetadata",
        input_schema = schemas.BatchPutAttributesMetadataInput,
        output_schema = schemas.BatchPutAttributesMetadataOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/attributes-metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMetadataGenerationRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelMetadataGenerationRun",
        input_schema = schemas.CancelMetadataGenerationRunInput,
        output_schema = schemas.CancelMetadataGenerationRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CancelSubscription",
        input_schema = schemas.CancelSubscriptionInput,
        output_schema = schemas.CancelSubscriptionOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountPool",
        input_schema = schemas.CreateAccountPoolInput,
        output_schema = schemas.CreateAccountPoolOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/account-pools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAsset(input, options)
    return self:invokeOperation(input, {
        name = "CreateAsset",
        input_schema = schemas.CreateAssetInput,
        output_schema = schemas.CreateAssetOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetFilter",
        input_schema = schemas.CreateAssetFilterInput,
        output_schema = schemas.CreateAssetFilterOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssetRevision(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetRevision",
        input_schema = schemas.CreateAssetRevisionInput,
        output_schema = schemas.CreateAssetRevisionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssetType(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetType",
        input_schema = schemas.CreateAssetTypeInput,
        output_schema = schemas.CreateAssetTypeOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/asset-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = schemas.CreateConnectionInput,
        output_schema = schemas.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataProduct(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProduct",
        input_schema = schemas.CreateDataProductInput,
        output_schema = schemas.CreateDataProductOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-products",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataProductRevision(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataProductRevision",
        input_schema = schemas.CreateDataProductRevisionInput,
        output_schema = schemas.CreateDataProductRevisionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions",
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
        http_path = "/v2/domains/{domainIdentifier}/data-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
        http_method = "POST",
        http_path = "/v2/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainUnit",
        input_schema = schemas.CreateDomainUnitInput,
        output_schema = schemas.CreateDomainUnitOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/domain-units",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = schemas.CreateEnvironmentInput,
        output_schema = schemas.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentAction",
        input_schema = schemas.CreateEnvironmentActionInput,
        output_schema = schemas.CreateEnvironmentActionOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentBlueprint",
        input_schema = schemas.CreateEnvironmentBlueprintInput,
        output_schema = schemas.CreateEnvironmentBlueprintOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironmentProfile",
        input_schema = schemas.CreateEnvironmentProfileInput,
        output_schema = schemas.CreateEnvironmentProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFormType(input, options)
    return self:invokeOperation(input, {
        name = "CreateFormType",
        input_schema = schemas.CreateFormTypeInput,
        output_schema = schemas.CreateFormTypeOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/form-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGlossary(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlossary",
        input_schema = schemas.CreateGlossaryInput,
        output_schema = schemas.CreateGlossaryOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/glossaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlossaryTerm",
        input_schema = schemas.CreateGlossaryTermInput,
        output_schema = schemas.CreateGlossaryTermOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGroupProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateGroupProfile",
        input_schema = schemas.CreateGroupProfileInput,
        output_schema = schemas.CreateGroupProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/group-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createListingChangeSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateListingChangeSet",
        input_schema = schemas.CreateListingChangeSetInput,
        output_schema = schemas.CreateListingChangeSetOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/listings/change-set",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = schemas.CreateProjectInput,
        output_schema = schemas.CreateProjectOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/projects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProjectMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateProjectMembership",
        input_schema = schemas.CreateProjectMembershipInput,
        output_schema = schemas.CreateProjectMembershipOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/createMembership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProjectProfile",
        input_schema = schemas.CreateProjectProfileInput,
        output_schema = schemas.CreateProjectProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = schemas.CreateRuleInput,
        output_schema = schemas.CreateRuleOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriptionGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionGrant",
        input_schema = schemas.CreateSubscriptionGrantInput,
        output_schema = schemas.CreateSubscriptionGrantOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionRequest",
        input_schema = schemas.CreateSubscriptionRequestInput,
        output_schema = schemas.CreateSubscriptionRequestOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriptionTarget",
        input_schema = schemas.CreateSubscriptionTargetInput,
        output_schema = schemas.CreateSubscriptionTargetOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserProfile",
        input_schema = schemas.CreateUserProfileInput,
        output_schema = schemas.CreateUserProfileOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/user-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountPool",
        input_schema = schemas.DeleteAccountPoolInput,
        output_schema = schemas.DeleteAccountPoolOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAsset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAsset",
        input_schema = schemas.DeleteAssetInput,
        output_schema = schemas.DeleteAssetOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetFilter",
        input_schema = schemas.DeleteAssetFilterInput,
        output_schema = schemas.DeleteAssetFilterOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssetType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetType",
        input_schema = schemas.DeleteAssetTypeInput,
        output_schema = schemas.DeleteAssetTypeOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/asset-types/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = schemas.DeleteConnectionInput,
        output_schema = schemas.DeleteConnectionOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/connections/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataExportConfiguration",
        input_schema = schemas.DeleteDataExportConfigurationInput,
        output_schema = schemas.DeleteDataExportConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/data-export-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataProduct",
        input_schema = schemas.DeleteDataProductInput,
        output_schema = schemas.DeleteDataProductOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}",
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
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainUnit",
        input_schema = schemas.DeleteDomainUnitInput,
        output_schema = schemas.DeleteDomainUnitOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/domain-units/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironment",
        input_schema = schemas.DeleteEnvironmentInput,
        output_schema = schemas.DeleteEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentAction",
        input_schema = schemas.DeleteEnvironmentActionInput,
        output_schema = schemas.DeleteEnvironmentActionOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentBlueprint",
        input_schema = schemas.DeleteEnvironmentBlueprintInput,
        output_schema = schemas.DeleteEnvironmentBlueprintOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentBlueprintConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentBlueprintConfiguration",
        input_schema = schemas.DeleteEnvironmentBlueprintConfigurationInput,
        output_schema = schemas.DeleteEnvironmentBlueprintConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentProfile",
        input_schema = schemas.DeleteEnvironmentProfileInput,
        output_schema = schemas.DeleteEnvironmentProfileOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFormType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFormType",
        input_schema = schemas.DeleteFormTypeInput,
        output_schema = schemas.DeleteFormTypeOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGlossary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlossary",
        input_schema = schemas.DeleteGlossaryInput,
        output_schema = schemas.DeleteGlossaryOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/glossaries/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGlossaryTerm",
        input_schema = schemas.DeleteGlossaryTermInput,
        output_schema = schemas.DeleteGlossaryTermOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteListing(input, options)
    return self:invokeOperation(input, {
        name = "DeleteListing",
        input_schema = schemas.DeleteListingInput,
        output_schema = schemas.DeleteListingOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/listings/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = schemas.DeleteProjectInput,
        output_schema = schemas.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/projects/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProjectMembership(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProjectMembership",
        input_schema = schemas.DeleteProjectMembershipInput,
        output_schema = schemas.DeleteProjectMembershipOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/deleteMembership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProjectProfile",
        input_schema = schemas.DeleteProjectProfileInput,
        output_schema = schemas.DeleteProjectProfileOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = schemas.DeleteRuleInput,
        output_schema = schemas.DeleteRuleOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/rules/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriptionGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionGrant",
        input_schema = schemas.DeleteSubscriptionGrantInput,
        output_schema = schemas.DeleteSubscriptionGrantOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionRequest",
        input_schema = schemas.DeleteSubscriptionRequestInput,
        output_schema = schemas.DeleteSubscriptionRequestOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionTarget",
        input_schema = schemas.DeleteSubscriptionTargetInput,
        output_schema = schemas.DeleteSubscriptionTargetOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTimeSeriesDataPoints(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTimeSeriesDataPoints",
        input_schema = schemas.DeleteTimeSeriesDataPointsInput,
        output_schema = schemas.DeleteTimeSeriesDataPointsOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateEnvironmentRole(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEnvironmentRole",
        input_schema = schemas.DisassociateEnvironmentRoleInput,
        output_schema = schemas.DisassociateEnvironmentRoleOutput,
        http_method = "DELETE",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/roles/{environmentRoleArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateGovernedTerms(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateGovernedTerms",
        input_schema = schemas.DisassociateGovernedTermsInput,
        output_schema = schemas.DisassociateGovernedTermsOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/disassociate-governed-terms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountPool",
        input_schema = schemas.GetAccountPoolInput,
        output_schema = schemas.GetAccountPoolOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAsset(input, options)
    return self:invokeOperation(input, {
        name = "GetAsset",
        input_schema = schemas.GetAssetInput,
        output_schema = schemas.GetAssetOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetFilter",
        input_schema = schemas.GetAssetFilterInput,
        output_schema = schemas.GetAssetFilterOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssetType(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetType",
        input_schema = schemas.GetAssetTypeInput,
        output_schema = schemas.GetAssetTypeOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/asset-types/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetConnection",
        input_schema = schemas.GetConnectionInput,
        output_schema = schemas.GetConnectionOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/connections/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDataExportConfiguration",
        input_schema = schemas.GetDataExportConfigurationInput,
        output_schema = schemas.GetDataExportConfigurationOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-export-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataProduct(input, options)
    return self:invokeOperation(input, {
        name = "GetDataProduct",
        input_schema = schemas.GetDataProductInput,
        output_schema = schemas.GetDataProductOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = schemas.GetDataSourceInput,
        output_schema = schemas.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSourceRun(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSourceRun",
        input_schema = schemas.GetDataSourceRunInput,
        output_schema = schemas.GetDataSourceRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = schemas.GetDomainInput,
        output_schema = schemas.GetDomainOutput,
        http_method = "GET",
        http_path = "/v2/domains/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainUnit",
        input_schema = schemas.GetDomainUnitInput,
        output_schema = schemas.GetDomainUnitOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/domain-units/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironment",
        input_schema = schemas.GetEnvironmentInput,
        output_schema = schemas.GetEnvironmentOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentAction",
        input_schema = schemas.GetEnvironmentActionInput,
        output_schema = schemas.GetEnvironmentActionOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentBlueprint",
        input_schema = schemas.GetEnvironmentBlueprintInput,
        output_schema = schemas.GetEnvironmentBlueprintOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentBlueprintConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentBlueprintConfiguration",
        input_schema = schemas.GetEnvironmentBlueprintConfigurationInput,
        output_schema = schemas.GetEnvironmentBlueprintConfigurationOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentCredentials",
        input_schema = schemas.GetEnvironmentCredentialsInput,
        output_schema = schemas.GetEnvironmentCredentialsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/credentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetEnvironmentProfile",
        input_schema = schemas.GetEnvironmentProfileInput,
        output_schema = schemas.GetEnvironmentProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFormType(input, options)
    return self:invokeOperation(input, {
        name = "GetFormType",
        input_schema = schemas.GetFormTypeInput,
        output_schema = schemas.GetFormTypeOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/form-types/{formTypeIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGlossary(input, options)
    return self:invokeOperation(input, {
        name = "GetGlossary",
        input_schema = schemas.GetGlossaryInput,
        output_schema = schemas.GetGlossaryOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/glossaries/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "GetGlossaryTerm",
        input_schema = schemas.GetGlossaryTermInput,
        output_schema = schemas.GetGlossaryTermOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGroupProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetGroupProfile",
        input_schema = schemas.GetGroupProfileInput,
        output_schema = schemas.GetGroupProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIamPortalLoginUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetIamPortalLoginUrl",
        input_schema = schemas.GetIamPortalLoginUrlInput,
        output_schema = schemas.GetIamPortalLoginUrlOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/get-portal-login-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobRun(input, options)
    return self:invokeOperation(input, {
        name = "GetJobRun",
        input_schema = schemas.GetJobRunInput,
        output_schema = schemas.GetJobRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/jobRuns/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLineageEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetLineageEvent",
        input_schema = schemas.GetLineageEventInput,
        output_schema = schemas.GetLineageEventOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/events/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLineageNode(input, options)
    return self:invokeOperation(input, {
        name = "GetLineageNode",
        input_schema = schemas.GetLineageNodeInput,
        output_schema = schemas.GetLineageNodeOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getListing(input, options)
    return self:invokeOperation(input, {
        name = "GetListing",
        input_schema = schemas.GetListingInput,
        output_schema = schemas.GetListingOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/listings/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetadataGenerationRun(input, options)
    return self:invokeOperation(input, {
        name = "GetMetadataGenerationRun",
        input_schema = schemas.GetMetadataGenerationRunInput,
        output_schema = schemas.GetMetadataGenerationRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotebookRun(input, options)
    return self:invokeOperation(input, {
        name = "GetNotebookRun",
        input_schema = schemas.GetNotebookRunInput,
        output_schema = schemas.GetNotebookRunOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProject(input, options)
    return self:invokeOperation(input, {
        name = "GetProject",
        input_schema = schemas.GetProjectInput,
        output_schema = schemas.GetProjectOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/projects/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProjectProfile",
        input_schema = schemas.GetProjectProfileInput,
        output_schema = schemas.GetProjectProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRule",
        input_schema = schemas.GetRuleInput,
        output_schema = schemas.GetRuleOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/rules/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscription",
        input_schema = schemas.GetSubscriptionInput,
        output_schema = schemas.GetSubscriptionOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriptionGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionGrant",
        input_schema = schemas.GetSubscriptionGrantInput,
        output_schema = schemas.GetSubscriptionGrantOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriptionRequestDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionRequestDetails",
        input_schema = schemas.GetSubscriptionRequestDetailsInput,
        output_schema = schemas.GetSubscriptionRequestDetailsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionTarget",
        input_schema = schemas.GetSubscriptionTargetInput,
        output_schema = schemas.GetSubscriptionTargetOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTimeSeriesDataPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetTimeSeriesDataPoint",
        input_schema = schemas.GetTimeSeriesDataPointInput,
        output_schema = schemas.GetTimeSeriesDataPointOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetUserProfile",
        input_schema = schemas.GetUserProfileInput,
        output_schema = schemas.GetUserProfileOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountPools(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountPools",
        input_schema = schemas.ListAccountPoolsInput,
        output_schema = schemas.ListAccountPoolsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/account-pools",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountsInAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountsInAccountPool",
        input_schema = schemas.ListAccountsInAccountPoolInput,
        output_schema = schemas.ListAccountsInAccountPoolOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetFilters",
        input_schema = schemas.ListAssetFiltersInput,
        output_schema = schemas.ListAssetFiltersOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetRevisions",
        input_schema = schemas.ListAssetRevisionsInput,
        output_schema = schemas.ListAssetRevisionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/revisions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = schemas.ListConnectionsInput,
        output_schema = schemas.ListConnectionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/connections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataProductRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataProductRevisions",
        input_schema = schemas.ListDataProductRevisionsInput,
        output_schema = schemas.ListDataProductRevisionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-products/{identifier}/revisions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSourceRunActivities(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceRunActivities",
        input_schema = schemas.ListDataSourceRunActivitiesInput,
        output_schema = schemas.ListDataSourceRunActivitiesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-source-runs/{identifier}/activities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSourceRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSourceRuns",
        input_schema = schemas.ListDataSourceRunsInput,
        output_schema = schemas.ListDataSourceRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs",
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
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/data-sources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = schemas.ListDomainsInput,
        output_schema = schemas.ListDomainsOutput,
        http_method = "GET",
        http_path = "/v2/domains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainUnitsForParent(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainUnitsForParent",
        input_schema = schemas.ListDomainUnitsForParentInput,
        output_schema = schemas.ListDomainUnitsForParentOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/domain-units",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntityOwners(input, options)
    return self:invokeOperation(input, {
        name = "ListEntityOwners",
        input_schema = schemas.ListEntityOwnersInput,
        output_schema = schemas.ListEntityOwnersOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/owners",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentActions(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentActions",
        input_schema = schemas.ListEnvironmentActionsInput,
        output_schema = schemas.ListEnvironmentActionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentBlueprintConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentBlueprintConfigurations",
        input_schema = schemas.ListEnvironmentBlueprintConfigurationsInput,
        output_schema = schemas.ListEnvironmentBlueprintConfigurationsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentBlueprints",
        input_schema = schemas.ListEnvironmentBlueprintsInput,
        output_schema = schemas.ListEnvironmentBlueprintsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironmentProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironmentProfiles",
        input_schema = schemas.ListEnvironmentProfilesInput,
        output_schema = schemas.ListEnvironmentProfilesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListEnvironments",
        input_schema = schemas.ListEnvironmentsInput,
        output_schema = schemas.ListEnvironmentsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = schemas.ListJobRunsInput,
        output_schema = schemas.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/jobs/{jobIdentifier}/runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLineageEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListLineageEvents",
        input_schema = schemas.ListLineageEventsInput,
        output_schema = schemas.ListLineageEventsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLineageNodeHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListLineageNodeHistory",
        input_schema = schemas.ListLineageNodeHistoryInput,
        output_schema = schemas.ListLineageNodeHistoryOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/lineage/nodes/{identifier}/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetadataGenerationRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListMetadataGenerationRuns",
        input_schema = schemas.ListMetadataGenerationRunsInput,
        output_schema = schemas.ListMetadataGenerationRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotebookRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookRuns",
        input_schema = schemas.ListNotebookRunsInput,
        output_schema = schemas.ListNotebookRunsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifications",
        input_schema = schemas.ListNotificationsInput,
        output_schema = schemas.ListNotificationsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/notifications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyGrants",
        input_schema = schemas.ListPolicyGrantsInput,
        output_schema = schemas.ListPolicyGrantsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjectMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectMemberships",
        input_schema = schemas.ListProjectMembershipsInput,
        output_schema = schemas.ListProjectMembershipsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/projects/{projectIdentifier}/memberships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjectProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectProfiles",
        input_schema = schemas.ListProjectProfilesInput,
        output_schema = schemas.ListProjectProfilesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = schemas.ListProjectsInput,
        output_schema = schemas.ListProjectsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/projects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = schemas.ListRulesInput,
        output_schema = schemas.ListRulesOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/list-rules/{targetType}/{targetIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptionGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionGrants",
        input_schema = schemas.ListSubscriptionGrantsInput,
        output_schema = schemas.ListSubscriptionGrantsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptionRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionRequests",
        input_schema = schemas.ListSubscriptionRequestsInput,
        output_schema = schemas.ListSubscriptionRequestsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptions",
        input_schema = schemas.ListSubscriptionsInput,
        output_schema = schemas.ListSubscriptionsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscriptionTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionTargets",
        input_schema = schemas.ListSubscriptionTargetsInput,
        output_schema = schemas.ListSubscriptionTargetsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTimeSeriesDataPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListTimeSeriesDataPoints",
        input_schema = schemas.ListTimeSeriesDataPointsInput,
        output_schema = schemas.ListTimeSeriesDataPointsOutput,
        http_method = "GET",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postLineageEvent(input, options)
    return self:invokeOperation(input, {
        name = "PostLineageEvent",
        input_schema = schemas.PostLineageEventInput,
        output_schema = schemas.PostLineageEventOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/lineage/events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:postTimeSeriesDataPoints(input, options)
    return self:invokeOperation(input, {
        name = "PostTimeSeriesDataPoints",
        input_schema = schemas.PostTimeSeriesDataPointsInput,
        output_schema = schemas.PostTimeSeriesDataPointsOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/time-series-data-points",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDataExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutDataExportConfiguration",
        input_schema = schemas.PutDataExportConfigurationInput,
        output_schema = schemas.PutDataExportConfigurationOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/data-export-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEnvironmentBlueprintConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutEnvironmentBlueprintConfiguration",
        input_schema = schemas.PutEnvironmentBlueprintConfigurationInput,
        output_schema = schemas.PutEnvironmentBlueprintConfigurationOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprint-configurations/{environmentBlueprintIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:queryGraph(input, options)
    return self:invokeOperation(input, {
        name = "QueryGraph",
        input_schema = schemas.QueryGraphInput,
        output_schema = schemas.QueryGraphOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/graph/query",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectPredictions(input, options)
    return self:invokeOperation(input, {
        name = "RejectPredictions",
        input_schema = schemas.RejectPredictionsInput,
        output_schema = schemas.RejectPredictionsOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/assets/{identifier}/reject-predictions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectSubscriptionRequest",
        input_schema = schemas.RejectSubscriptionRequestInput,
        output_schema = schemas.RejectSubscriptionRequestOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}/reject",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeEntityOwner(input, options)
    return self:invokeOperation(input, {
        name = "RemoveEntityOwner",
        input_schema = schemas.RemoveEntityOwnerInput,
        output_schema = schemas.RemoveEntityOwnerOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/entities/{entityType}/{entityIdentifier}/removeOwner",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removePolicyGrant(input, options)
    return self:invokeOperation(input, {
        name = "RemovePolicyGrant",
        input_schema = schemas.RemovePolicyGrantInput,
        output_schema = schemas.RemovePolicyGrantOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/policies/managed/{entityType}/{entityIdentifier}/removeGrant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeSubscription(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSubscription",
        input_schema = schemas.RevokeSubscriptionInput,
        output_schema = schemas.RevokeSubscriptionOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/subscriptions/{identifier}/revoke",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:search(input, options)
    return self:invokeOperation(input, {
        name = "Search",
        input_schema = schemas.SearchInput,
        output_schema = schemas.SearchOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchGroupProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchGroupProfiles",
        input_schema = schemas.SearchGroupProfilesInput,
        output_schema = schemas.SearchGroupProfilesOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/search-group-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchListings(input, options)
    return self:invokeOperation(input, {
        name = "SearchListings",
        input_schema = schemas.SearchListingsInput,
        output_schema = schemas.SearchListingsOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/listings/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTypes(input, options)
    return self:invokeOperation(input, {
        name = "SearchTypes",
        input_schema = schemas.SearchTypesInput,
        output_schema = schemas.SearchTypesOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/types-search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchUserProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchUserProfiles",
        input_schema = schemas.SearchUserProfilesInput,
        output_schema = schemas.SearchUserProfilesOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/search-user-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDataSourceRun(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceRun",
        input_schema = schemas.StartDataSourceRunInput,
        output_schema = schemas.StartDataSourceRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{dataSourceIdentifier}/runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetadataGenerationRun(input, options)
    return self:invokeOperation(input, {
        name = "StartMetadataGenerationRun",
        input_schema = schemas.StartMetadataGenerationRunInput,
        output_schema = schemas.StartMetadataGenerationRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/metadata-generation-runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNotebookRun(input, options)
    return self:invokeOperation(input, {
        name = "StartNotebookRun",
        input_schema = schemas.StartNotebookRunInput,
        output_schema = schemas.StartNotebookRunOutput,
        http_method = "POST",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopNotebookRun(input, options)
    return self:invokeOperation(input, {
        name = "StopNotebookRun",
        input_schema = schemas.StopNotebookRunInput,
        output_schema = schemas.StopNotebookRunOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/notebook-runs/{identifier}/stop",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountPool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountPool",
        input_schema = schemas.UpdateAccountPoolInput,
        output_schema = schemas.UpdateAccountPoolOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/account-pools/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssetFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetFilter",
        input_schema = schemas.UpdateAssetFilterInput,
        output_schema = schemas.UpdateAssetFilterOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/assets/{assetIdentifier}/filters/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = schemas.UpdateConnectionInput,
        output_schema = schemas.UpdateConnectionOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/connections/{identifier}",
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
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/data-sources/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomain",
        input_schema = schemas.UpdateDomainInput,
        output_schema = schemas.UpdateDomainOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainUnit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainUnit",
        input_schema = schemas.UpdateDomainUnitInput,
        output_schema = schemas.UpdateDomainUnitOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/domain-units/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = schemas.UpdateEnvironmentInput,
        output_schema = schemas.UpdateEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environments/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironmentAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentAction",
        input_schema = schemas.UpdateEnvironmentActionInput,
        output_schema = schemas.UpdateEnvironmentActionOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/actions/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironmentBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentBlueprint",
        input_schema = schemas.UpdateEnvironmentBlueprintInput,
        output_schema = schemas.UpdateEnvironmentBlueprintOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environment-blueprints/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironmentProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironmentProfile",
        input_schema = schemas.UpdateEnvironmentProfileInput,
        output_schema = schemas.UpdateEnvironmentProfileOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environment-profiles/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlossary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlossary",
        input_schema = schemas.UpdateGlossaryInput,
        output_schema = schemas.UpdateGlossaryOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/glossaries/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlossaryTerm(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlossaryTerm",
        input_schema = schemas.UpdateGlossaryTermInput,
        output_schema = schemas.UpdateGlossaryTermOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/glossary-terms/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGroupProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGroupProfile",
        input_schema = schemas.UpdateGroupProfileInput,
        output_schema = schemas.UpdateGroupProfileOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/group-profiles/{groupIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = schemas.UpdateProjectInput,
        output_schema = schemas.UpdateProjectOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/projects/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProjectProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProjectProfile",
        input_schema = schemas.UpdateProjectProfileInput,
        output_schema = schemas.UpdateProjectProfileOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/project-profiles/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRootDomainUnitOwner(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRootDomainUnitOwner",
        input_schema = schemas.UpdateRootDomainUnitOwnerInput,
        output_schema = schemas.UpdateRootDomainUnitOwnerOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/root-domain-unit-owner",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = schemas.UpdateRuleInput,
        output_schema = schemas.UpdateRuleOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/rules/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriptionGrantStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionGrantStatus",
        input_schema = schemas.UpdateSubscriptionGrantStatusInput,
        output_schema = schemas.UpdateSubscriptionGrantStatusOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/subscription-grants/{identifier}/status/{assetIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriptionRequest(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionRequest",
        input_schema = schemas.UpdateSubscriptionRequestInput,
        output_schema = schemas.UpdateSubscriptionRequestOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/subscription-requests/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriptionTarget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriptionTarget",
        input_schema = schemas.UpdateSubscriptionTargetInput,
        output_schema = schemas.UpdateSubscriptionTargetOutput,
        http_method = "PATCH",
        http_path = "/v2/domains/{domainIdentifier}/environments/{environmentIdentifier}/subscription-targets/{identifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserProfile",
        input_schema = schemas.UpdateUserProfileInput,
        output_schema = schemas.UpdateUserProfileOutput,
        http_method = "PUT",
        http_path = "/v2/domains/{domainIdentifier}/user-profiles/{userIdentifier}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
