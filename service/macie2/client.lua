local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("macie2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("macie2.types")

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
        input_schema = types.AcceptInvitationInput,
        output_schema = types.AcceptInvitationOutput,
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
        input_schema = types.BatchGetCustomDataIdentifiersInput,
        output_schema = types.BatchGetCustomDataIdentifiersOutput,
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
        input_schema = types.BatchUpdateAutomatedDiscoveryAccountsInput,
        output_schema = types.BatchUpdateAutomatedDiscoveryAccountsOutput,
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
        input_schema = types.CreateAllowListInput,
        output_schema = types.CreateAllowListOutput,
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
        input_schema = types.CreateClassificationJobInput,
        output_schema = types.CreateClassificationJobOutput,
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
        input_schema = types.CreateCustomDataIdentifierInput,
        output_schema = types.CreateCustomDataIdentifierOutput,
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
        input_schema = types.CreateFindingsFilterInput,
        output_schema = types.CreateFindingsFilterOutput,
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
        input_schema = types.CreateInvitationsInput,
        output_schema = types.CreateInvitationsOutput,
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
        input_schema = types.CreateMemberInput,
        output_schema = types.CreateMemberOutput,
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
        input_schema = types.CreateSampleFindingsInput,
        output_schema = types.CreateSampleFindingsOutput,
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
        input_schema = types.DeclineInvitationsInput,
        output_schema = types.DeclineInvitationsOutput,
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
        input_schema = types.DeleteAllowListInput,
        output_schema = types.DeleteAllowListOutput,
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
        input_schema = types.DeleteCustomDataIdentifierInput,
        output_schema = types.DeleteCustomDataIdentifierOutput,
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
        input_schema = types.DeleteFindingsFilterInput,
        output_schema = types.DeleteFindingsFilterOutput,
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
        input_schema = types.DeleteInvitationsInput,
        output_schema = types.DeleteInvitationsOutput,
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
        input_schema = types.DeleteMemberInput,
        output_schema = types.DeleteMemberOutput,
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
        input_schema = types.DescribeBucketsInput,
        output_schema = types.DescribeBucketsOutput,
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
        input_schema = types.DescribeClassificationJobInput,
        output_schema = types.DescribeClassificationJobOutput,
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
        input_schema = types.DescribeOrganizationConfigurationInput,
        output_schema = types.DescribeOrganizationConfigurationOutput,
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
        input_schema = types.DisableMacieInput,
        output_schema = types.DisableMacieOutput,
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
        input_schema = types.DisableOrganizationAdminAccountInput,
        output_schema = types.DisableOrganizationAdminAccountOutput,
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
        input_schema = types.DisassociateFromAdministratorAccountInput,
        output_schema = types.DisassociateFromAdministratorAccountOutput,
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
        input_schema = types.DisassociateFromMasterAccountInput,
        output_schema = types.DisassociateFromMasterAccountOutput,
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
        input_schema = types.DisassociateMemberInput,
        output_schema = types.DisassociateMemberOutput,
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
        input_schema = types.EnableMacieInput,
        output_schema = types.EnableMacieOutput,
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
        input_schema = types.EnableOrganizationAdminAccountInput,
        output_schema = types.EnableOrganizationAdminAccountOutput,
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
        input_schema = types.GetAdministratorAccountInput,
        output_schema = types.GetAdministratorAccountOutput,
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
        input_schema = types.GetAllowListInput,
        output_schema = types.GetAllowListOutput,
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
        input_schema = types.GetAutomatedDiscoveryConfigurationInput,
        output_schema = types.GetAutomatedDiscoveryConfigurationOutput,
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
        input_schema = types.GetBucketStatisticsInput,
        output_schema = types.GetBucketStatisticsOutput,
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
        input_schema = types.GetClassificationExportConfigurationInput,
        output_schema = types.GetClassificationExportConfigurationOutput,
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
        input_schema = types.GetClassificationScopeInput,
        output_schema = types.GetClassificationScopeOutput,
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
        input_schema = types.GetCustomDataIdentifierInput,
        output_schema = types.GetCustomDataIdentifierOutput,
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
        input_schema = types.GetFindingsInput,
        output_schema = types.GetFindingsOutput,
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
        input_schema = types.GetFindingsFilterInput,
        output_schema = types.GetFindingsFilterOutput,
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
        input_schema = types.GetFindingsPublicationConfigurationInput,
        output_schema = types.GetFindingsPublicationConfigurationOutput,
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
        input_schema = types.GetFindingStatisticsInput,
        output_schema = types.GetFindingStatisticsOutput,
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
        input_schema = types.GetInvitationsCountInput,
        output_schema = types.GetInvitationsCountOutput,
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
        input_schema = types.GetMacieSessionInput,
        output_schema = types.GetMacieSessionOutput,
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
        input_schema = types.GetMasterAccountInput,
        output_schema = types.GetMasterAccountOutput,
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
        input_schema = types.GetMemberInput,
        output_schema = types.GetMemberOutput,
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
        input_schema = types.GetResourceProfileInput,
        output_schema = types.GetResourceProfileOutput,
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
        input_schema = types.GetRevealConfigurationInput,
        output_schema = types.GetRevealConfigurationOutput,
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
        input_schema = types.GetSensitiveDataOccurrencesInput,
        output_schema = types.GetSensitiveDataOccurrencesOutput,
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
        input_schema = types.GetSensitiveDataOccurrencesAvailabilityInput,
        output_schema = types.GetSensitiveDataOccurrencesAvailabilityOutput,
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
        input_schema = types.GetSensitivityInspectionTemplateInput,
        output_schema = types.GetSensitivityInspectionTemplateOutput,
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
        input_schema = types.GetUsageStatisticsInput,
        output_schema = types.GetUsageStatisticsOutput,
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
        input_schema = types.GetUsageTotalsInput,
        output_schema = types.GetUsageTotalsOutput,
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
        input_schema = types.ListAllowListsInput,
        output_schema = types.ListAllowListsOutput,
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
        input_schema = types.ListAutomatedDiscoveryAccountsInput,
        output_schema = types.ListAutomatedDiscoveryAccountsOutput,
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
        input_schema = types.ListClassificationJobsInput,
        output_schema = types.ListClassificationJobsOutput,
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
        input_schema = types.ListClassificationScopesInput,
        output_schema = types.ListClassificationScopesOutput,
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
        input_schema = types.ListCustomDataIdentifiersInput,
        output_schema = types.ListCustomDataIdentifiersOutput,
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
        input_schema = types.ListFindingsInput,
        output_schema = types.ListFindingsOutput,
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
        input_schema = types.ListFindingsFiltersInput,
        output_schema = types.ListFindingsFiltersOutput,
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
        input_schema = types.ListInvitationsInput,
        output_schema = types.ListInvitationsOutput,
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
        input_schema = types.ListManagedDataIdentifiersInput,
        output_schema = types.ListManagedDataIdentifiersOutput,
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
        input_schema = types.ListMembersInput,
        output_schema = types.ListMembersOutput,
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
        input_schema = types.ListOrganizationAdminAccountsInput,
        output_schema = types.ListOrganizationAdminAccountsOutput,
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
        input_schema = types.ListResourceProfileArtifactsInput,
        output_schema = types.ListResourceProfileArtifactsOutput,
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
        input_schema = types.ListResourceProfileDetectionsInput,
        output_schema = types.ListResourceProfileDetectionsOutput,
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
        input_schema = types.ListSensitivityInspectionTemplatesInput,
        output_schema = types.ListSensitivityInspectionTemplatesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.PutClassificationExportConfigurationInput,
        output_schema = types.PutClassificationExportConfigurationOutput,
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
        input_schema = types.PutFindingsPublicationConfigurationInput,
        output_schema = types.PutFindingsPublicationConfigurationOutput,
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
        input_schema = types.SearchResourcesInput,
        output_schema = types.SearchResourcesOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.TestCustomDataIdentifierInput,
        output_schema = types.TestCustomDataIdentifierOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateAllowListInput,
        output_schema = types.UpdateAllowListOutput,
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
        input_schema = types.UpdateAutomatedDiscoveryConfigurationInput,
        output_schema = types.UpdateAutomatedDiscoveryConfigurationOutput,
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
        input_schema = types.UpdateClassificationJobInput,
        output_schema = types.UpdateClassificationJobOutput,
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
        input_schema = types.UpdateClassificationScopeInput,
        output_schema = types.UpdateClassificationScopeOutput,
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
        input_schema = types.UpdateFindingsFilterInput,
        output_schema = types.UpdateFindingsFilterOutput,
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
        input_schema = types.UpdateMacieSessionInput,
        output_schema = types.UpdateMacieSessionOutput,
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
        input_schema = types.UpdateMemberSessionInput,
        output_schema = types.UpdateMemberSessionOutput,
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
        input_schema = types.UpdateOrganizationConfigurationInput,
        output_schema = types.UpdateOrganizationConfigurationOutput,
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
        input_schema = types.UpdateResourceProfileInput,
        output_schema = types.UpdateResourceProfileOutput,
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
        input_schema = types.UpdateResourceProfileDetectionsInput,
        output_schema = types.UpdateResourceProfileDetectionsOutput,
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
        input_schema = types.UpdateRevealConfigurationInput,
        output_schema = types.UpdateRevealConfigurationOutput,
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
        input_schema = types.UpdateSensitivityInspectionTemplateInput,
        output_schema = types.UpdateSensitivityInspectionTemplateOutput,
        http_method = "PUT",
        http_path = "/templates/sensitivity-inspections/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
