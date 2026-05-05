local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("macie2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("macie2.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Macie2"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "macie2", signing_region = cfg.region } }
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

function Client:acceptInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInvitation",
        input_schema = schemas.AcceptInvitationInput,
        output_schema = schemas.AcceptInvitationOutput,
        http_method = "POST",
        http_path = "/invitations/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetCustomDataIdentifiers(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetCustomDataIdentifiers",
        input_schema = schemas.BatchGetCustomDataIdentifiersInput,
        output_schema = schemas.BatchGetCustomDataIdentifiersOutput,
        http_method = "POST",
        http_path = "/custom-data-identifiers/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateAutomatedDiscoveryAccounts(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateAutomatedDiscoveryAccounts",
        input_schema = schemas.BatchUpdateAutomatedDiscoveryAccountsInput,
        output_schema = schemas.BatchUpdateAutomatedDiscoveryAccountsOutput,
        http_method = "PATCH",
        http_path = "/automated-discovery/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAllowList(input, options)
    return self:invokeOperation(input, {
        name = "CreateAllowList",
        input_schema = schemas.CreateAllowListInput,
        output_schema = schemas.CreateAllowListOutput,
        http_method = "POST",
        http_path = "/allow-lists",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClassificationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateClassificationJob",
        input_schema = schemas.CreateClassificationJobInput,
        output_schema = schemas.CreateClassificationJobOutput,
        http_method = "POST",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomDataIdentifier(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomDataIdentifier",
        input_schema = schemas.CreateCustomDataIdentifierInput,
        output_schema = schemas.CreateCustomDataIdentifierOutput,
        http_method = "POST",
        http_path = "/custom-data-identifiers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFindingsFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateFindingsFilter",
        input_schema = schemas.CreateFindingsFilterInput,
        output_schema = schemas.CreateFindingsFilterOutput,
        http_method = "POST",
        http_path = "/findingsfilters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInvitations(input, options)
    return self:invokeOperation(input, {
        name = "CreateInvitations",
        input_schema = schemas.CreateInvitationsInput,
        output_schema = schemas.CreateInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMember(input, options)
    return self:invokeOperation(input, {
        name = "CreateMember",
        input_schema = schemas.CreateMemberInput,
        output_schema = schemas.CreateMemberOutput,
        http_method = "POST",
        http_path = "/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSampleFindings(input, options)
    return self:invokeOperation(input, {
        name = "CreateSampleFindings",
        input_schema = schemas.CreateSampleFindingsInput,
        output_schema = schemas.CreateSampleFindingsOutput,
        http_method = "POST",
        http_path = "/findings/sample",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:declineInvitations(input, options)
    return self:invokeOperation(input, {
        name = "DeclineInvitations",
        input_schema = schemas.DeclineInvitationsInput,
        output_schema = schemas.DeclineInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/decline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAllowList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAllowList",
        input_schema = schemas.DeleteAllowListInput,
        output_schema = schemas.DeleteAllowListOutput,
        http_method = "DELETE",
        http_path = "/allow-lists/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomDataIdentifier(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomDataIdentifier",
        input_schema = schemas.DeleteCustomDataIdentifierInput,
        output_schema = schemas.DeleteCustomDataIdentifierOutput,
        http_method = "DELETE",
        http_path = "/custom-data-identifiers/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFindingsFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFindingsFilter",
        input_schema = schemas.DeleteFindingsFilterInput,
        output_schema = schemas.DeleteFindingsFilterOutput,
        http_method = "DELETE",
        http_path = "/findingsfilters/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInvitations(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInvitations",
        input_schema = schemas.DeleteInvitationsInput,
        output_schema = schemas.DeleteInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMember(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMember",
        input_schema = schemas.DeleteMemberInput,
        output_schema = schemas.DeleteMemberOutput,
        http_method = "DELETE",
        http_path = "/members/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBuckets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBuckets",
        input_schema = schemas.DescribeBucketsInput,
        output_schema = schemas.DescribeBucketsOutput,
        http_method = "POST",
        http_path = "/datasources/s3",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClassificationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClassificationJob",
        input_schema = schemas.DescribeClassificationJobInput,
        output_schema = schemas.DescribeClassificationJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfiguration",
        input_schema = schemas.DescribeOrganizationConfigurationInput,
        output_schema = schemas.DescribeOrganizationConfigurationOutput,
        http_method = "GET",
        http_path = "/admin/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableMacie(input, options)
    return self:invokeOperation(input, {
        name = "DisableMacie",
        input_schema = schemas.DisableMacieInput,
        output_schema = schemas.DisableMacieOutput,
        http_method = "DELETE",
        http_path = "/macie",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationAdminAccount",
        input_schema = schemas.DisableOrganizationAdminAccountInput,
        output_schema = schemas.DisableOrganizationAdminAccountOutput,
        http_method = "DELETE",
        http_path = "/admin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFromAdministratorAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromAdministratorAccount",
        input_schema = schemas.DisassociateFromAdministratorAccountInput,
        output_schema = schemas.DisassociateFromAdministratorAccountOutput,
        http_method = "POST",
        http_path = "/administrator/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFromMasterAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFromMasterAccount",
        input_schema = schemas.DisassociateFromMasterAccountInput,
        output_schema = schemas.DisassociateFromMasterAccountOutput,
        http_method = "POST",
        http_path = "/master/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMember(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMember",
        input_schema = schemas.DisassociateMemberInput,
        output_schema = schemas.DisassociateMemberOutput,
        http_method = "POST",
        http_path = "/members/disassociate/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableMacie(input, options)
    return self:invokeOperation(input, {
        name = "EnableMacie",
        input_schema = schemas.EnableMacieInput,
        output_schema = schemas.EnableMacieOutput,
        http_method = "POST",
        http_path = "/macie",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationAdminAccount",
        input_schema = schemas.EnableOrganizationAdminAccountInput,
        output_schema = schemas.EnableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/admin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAdministratorAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAdministratorAccount",
        input_schema = schemas.GetAdministratorAccountInput,
        output_schema = schemas.GetAdministratorAccountOutput,
        http_method = "GET",
        http_path = "/administrator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAllowList(input, options)
    return self:invokeOperation(input, {
        name = "GetAllowList",
        input_schema = schemas.GetAllowListInput,
        output_schema = schemas.GetAllowListOutput,
        http_method = "GET",
        http_path = "/allow-lists/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutomatedDiscoveryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetAutomatedDiscoveryConfiguration",
        input_schema = schemas.GetAutomatedDiscoveryConfigurationInput,
        output_schema = schemas.GetAutomatedDiscoveryConfigurationOutput,
        http_method = "GET",
        http_path = "/automated-discovery/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBucketStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketStatistics",
        input_schema = schemas.GetBucketStatisticsInput,
        output_schema = schemas.GetBucketStatisticsOutput,
        http_method = "POST",
        http_path = "/datasources/s3/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClassificationExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetClassificationExportConfiguration",
        input_schema = schemas.GetClassificationExportConfigurationInput,
        output_schema = schemas.GetClassificationExportConfigurationOutput,
        http_method = "GET",
        http_path = "/classification-export-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClassificationScope(input, options)
    return self:invokeOperation(input, {
        name = "GetClassificationScope",
        input_schema = schemas.GetClassificationScopeInput,
        output_schema = schemas.GetClassificationScopeOutput,
        http_method = "GET",
        http_path = "/classification-scopes/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomDataIdentifier(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomDataIdentifier",
        input_schema = schemas.GetCustomDataIdentifierInput,
        output_schema = schemas.GetCustomDataIdentifierOutput,
        http_method = "GET",
        http_path = "/custom-data-identifiers/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindings(input, options)
    return self:invokeOperation(input, {
        name = "GetFindings",
        input_schema = schemas.GetFindingsInput,
        output_schema = schemas.GetFindingsOutput,
        http_method = "POST",
        http_path = "/findings/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsFilter",
        input_schema = schemas.GetFindingsFilterInput,
        output_schema = schemas.GetFindingsFilterOutput,
        http_method = "GET",
        http_path = "/findingsfilters/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsPublicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsPublicationConfiguration",
        input_schema = schemas.GetFindingsPublicationConfigurationInput,
        output_schema = schemas.GetFindingsPublicationConfigurationOutput,
        http_method = "GET",
        http_path = "/findings-publication-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingStatistics",
        input_schema = schemas.GetFindingStatisticsInput,
        output_schema = schemas.GetFindingStatisticsOutput,
        http_method = "POST",
        http_path = "/findings/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvitationsCount(input, options)
    return self:invokeOperation(input, {
        name = "GetInvitationsCount",
        input_schema = schemas.GetInvitationsCountInput,
        output_schema = schemas.GetInvitationsCountOutput,
        http_method = "GET",
        http_path = "/invitations/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMacieSession(input, options)
    return self:invokeOperation(input, {
        name = "GetMacieSession",
        input_schema = schemas.GetMacieSessionInput,
        output_schema = schemas.GetMacieSessionOutput,
        http_method = "GET",
        http_path = "/macie",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMasterAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetMasterAccount",
        input_schema = schemas.GetMasterAccountInput,
        output_schema = schemas.GetMasterAccountOutput,
        http_method = "GET",
        http_path = "/master",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMember(input, options)
    return self:invokeOperation(input, {
        name = "GetMember",
        input_schema = schemas.GetMemberInput,
        output_schema = schemas.GetMemberOutput,
        http_method = "GET",
        http_path = "/members/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceProfile",
        input_schema = schemas.GetResourceProfileInput,
        output_schema = schemas.GetResourceProfileOutput,
        http_method = "GET",
        http_path = "/resource-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRevealConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetRevealConfiguration",
        input_schema = schemas.GetRevealConfigurationInput,
        output_schema = schemas.GetRevealConfigurationOutput,
        http_method = "GET",
        http_path = "/reveal-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSensitiveDataOccurrences(input, options)
    return self:invokeOperation(input, {
        name = "GetSensitiveDataOccurrences",
        input_schema = schemas.GetSensitiveDataOccurrencesInput,
        output_schema = schemas.GetSensitiveDataOccurrencesOutput,
        http_method = "GET",
        http_path = "/findings/{findingId}/reveal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSensitiveDataOccurrencesAvailability(input, options)
    return self:invokeOperation(input, {
        name = "GetSensitiveDataOccurrencesAvailability",
        input_schema = schemas.GetSensitiveDataOccurrencesAvailabilityInput,
        output_schema = schemas.GetSensitiveDataOccurrencesAvailabilityOutput,
        http_method = "GET",
        http_path = "/findings/{findingId}/reveal/availability",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSensitivityInspectionTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetSensitivityInspectionTemplate",
        input_schema = schemas.GetSensitivityInspectionTemplateInput,
        output_schema = schemas.GetSensitivityInspectionTemplateOutput,
        http_method = "GET",
        http_path = "/templates/sensitivity-inspections/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsageStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetUsageStatistics",
        input_schema = schemas.GetUsageStatisticsInput,
        output_schema = schemas.GetUsageStatisticsOutput,
        http_method = "POST",
        http_path = "/usage/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsageTotals(input, options)
    return self:invokeOperation(input, {
        name = "GetUsageTotals",
        input_schema = schemas.GetUsageTotalsInput,
        output_schema = schemas.GetUsageTotalsOutput,
        http_method = "GET",
        http_path = "/usage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAllowLists(input, options)
    return self:invokeOperation(input, {
        name = "ListAllowLists",
        input_schema = schemas.ListAllowListsInput,
        output_schema = schemas.ListAllowListsOutput,
        http_method = "GET",
        http_path = "/allow-lists",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutomatedDiscoveryAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListAutomatedDiscoveryAccounts",
        input_schema = schemas.ListAutomatedDiscoveryAccountsInput,
        output_schema = schemas.ListAutomatedDiscoveryAccountsOutput,
        http_method = "GET",
        http_path = "/automated-discovery/accounts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClassificationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListClassificationJobs",
        input_schema = schemas.ListClassificationJobsInput,
        output_schema = schemas.ListClassificationJobsOutput,
        http_method = "POST",
        http_path = "/jobs/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClassificationScopes(input, options)
    return self:invokeOperation(input, {
        name = "ListClassificationScopes",
        input_schema = schemas.ListClassificationScopesInput,
        output_schema = schemas.ListClassificationScopesOutput,
        http_method = "GET",
        http_path = "/classification-scopes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomDataIdentifiers(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomDataIdentifiers",
        input_schema = schemas.ListCustomDataIdentifiersInput,
        output_schema = schemas.ListCustomDataIdentifiersOutput,
        http_method = "POST",
        http_path = "/custom-data-identifiers/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListFindings",
        input_schema = schemas.ListFindingsInput,
        output_schema = schemas.ListFindingsOutput,
        http_method = "POST",
        http_path = "/findings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFindingsFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListFindingsFilters",
        input_schema = schemas.ListFindingsFiltersInput,
        output_schema = schemas.ListFindingsFiltersOutput,
        http_method = "GET",
        http_path = "/findingsfilters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvitations",
        input_schema = schemas.ListInvitationsInput,
        output_schema = schemas.ListInvitationsOutput,
        http_method = "GET",
        http_path = "/invitations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedDataIdentifiers(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedDataIdentifiers",
        input_schema = schemas.ListManagedDataIdentifiersInput,
        output_schema = schemas.ListManagedDataIdentifiersOutput,
        http_method = "POST",
        http_path = "/managed-data-identifiers/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = schemas.ListMembersInput,
        output_schema = schemas.ListMembersOutput,
        http_method = "GET",
        http_path = "/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationAdminAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationAdminAccounts",
        input_schema = schemas.ListOrganizationAdminAccountsInput,
        output_schema = schemas.ListOrganizationAdminAccountsOutput,
        http_method = "GET",
        http_path = "/admin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceProfileArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceProfileArtifacts",
        input_schema = schemas.ListResourceProfileArtifactsInput,
        output_schema = schemas.ListResourceProfileArtifactsOutput,
        http_method = "GET",
        http_path = "/resource-profiles/artifacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceProfileDetections(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceProfileDetections",
        input_schema = schemas.ListResourceProfileDetectionsInput,
        output_schema = schemas.ListResourceProfileDetectionsOutput,
        http_method = "GET",
        http_path = "/resource-profiles/detections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSensitivityInspectionTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListSensitivityInspectionTemplates",
        input_schema = schemas.ListSensitivityInspectionTemplatesInput,
        output_schema = schemas.ListSensitivityInspectionTemplatesOutput,
        http_method = "GET",
        http_path = "/templates/sensitivity-inspections",
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

function Client:putClassificationExportConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutClassificationExportConfiguration",
        input_schema = schemas.PutClassificationExportConfigurationInput,
        output_schema = schemas.PutClassificationExportConfigurationOutput,
        http_method = "PUT",
        http_path = "/classification-export-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putFindingsPublicationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutFindingsPublicationConfiguration",
        input_schema = schemas.PutFindingsPublicationConfigurationInput,
        output_schema = schemas.PutFindingsPublicationConfigurationOutput,
        http_method = "PUT",
        http_path = "/findings-publication-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchResources(input, options)
    return self:invokeOperation(input, {
        name = "SearchResources",
        input_schema = schemas.SearchResourcesInput,
        output_schema = schemas.SearchResourcesOutput,
        http_method = "POST",
        http_path = "/datasources/search-resources",
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

function Client:testCustomDataIdentifier(input, options)
    return self:invokeOperation(input, {
        name = "TestCustomDataIdentifier",
        input_schema = schemas.TestCustomDataIdentifierInput,
        output_schema = schemas.TestCustomDataIdentifierOutput,
        http_method = "POST",
        http_path = "/custom-data-identifiers/test",
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

function Client:updateAllowList(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAllowList",
        input_schema = schemas.UpdateAllowListInput,
        output_schema = schemas.UpdateAllowListOutput,
        http_method = "PUT",
        http_path = "/allow-lists/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAutomatedDiscoveryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAutomatedDiscoveryConfiguration",
        input_schema = schemas.UpdateAutomatedDiscoveryConfigurationInput,
        output_schema = schemas.UpdateAutomatedDiscoveryConfigurationOutput,
        http_method = "PUT",
        http_path = "/automated-discovery/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClassificationJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClassificationJob",
        input_schema = schemas.UpdateClassificationJobInput,
        output_schema = schemas.UpdateClassificationJobOutput,
        http_method = "PATCH",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClassificationScope(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClassificationScope",
        input_schema = schemas.UpdateClassificationScopeInput,
        output_schema = schemas.UpdateClassificationScopeOutput,
        http_method = "PATCH",
        http_path = "/classification-scopes/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFindingsFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindingsFilter",
        input_schema = schemas.UpdateFindingsFilterInput,
        output_schema = schemas.UpdateFindingsFilterOutput,
        http_method = "PATCH",
        http_path = "/findingsfilters/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMacieSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMacieSession",
        input_schema = schemas.UpdateMacieSessionInput,
        output_schema = schemas.UpdateMacieSessionOutput,
        http_method = "PATCH",
        http_path = "/macie",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMemberSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMemberSession",
        input_schema = schemas.UpdateMemberSessionInput,
        output_schema = schemas.UpdateMemberSessionOutput,
        http_method = "PATCH",
        http_path = "/macie/members/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationConfiguration",
        input_schema = schemas.UpdateOrganizationConfigurationInput,
        output_schema = schemas.UpdateOrganizationConfigurationOutput,
        http_method = "PATCH",
        http_path = "/admin/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceProfile",
        input_schema = schemas.UpdateResourceProfileInput,
        output_schema = schemas.UpdateResourceProfileOutput,
        http_method = "PATCH",
        http_path = "/resource-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceProfileDetections(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceProfileDetections",
        input_schema = schemas.UpdateResourceProfileDetectionsInput,
        output_schema = schemas.UpdateResourceProfileDetectionsOutput,
        http_method = "PATCH",
        http_path = "/resource-profiles/detections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRevealConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRevealConfiguration",
        input_schema = schemas.UpdateRevealConfigurationInput,
        output_schema = schemas.UpdateRevealConfigurationOutput,
        http_method = "PUT",
        http_path = "/reveal-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSensitivityInspectionTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSensitivityInspectionTemplate",
        input_schema = schemas.UpdateSensitivityInspectionTemplateInput,
        output_schema = schemas.UpdateSensitivityInspectionTemplateOutput,
        http_method = "PUT",
        http_path = "/templates/sensitivity-inspections/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
