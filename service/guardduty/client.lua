local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("guardduty.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("guardduty.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GuardDutyAPIService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "guardduty", signing_region = cfg.region } }
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

function Client:acceptAdministratorInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAdministratorInvitation",
        input_schema = types.AcceptAdministratorInvitationInput,
        output_schema = types.AcceptAdministratorInvitationOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/administrator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:acceptInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInvitation",
        input_schema = types.AcceptInvitationInput,
        output_schema = types.AcceptInvitationOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/master",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:archiveFindings(input, options)
    return self:invokeOperation(input, {
        name = "ArchiveFindings",
        input_schema = types.ArchiveFindingsInput,
        output_schema = types.ArchiveFindingsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/findings/archive",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDetector(input, options)
    return self:invokeOperation(input, {
        name = "CreateDetector",
        input_schema = types.CreateDetectorInput,
        output_schema = types.CreateDetectorOutput,
        http_method = "POST",
        http_path = "/detector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFilter(input, options)
    return self:invokeOperation(input, {
        name = "CreateFilter",
        input_schema = types.CreateFilterInput,
        output_schema = types.CreateFilterOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/filter",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIPSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateIPSet",
        input_schema = types.CreateIPSetInput,
        output_schema = types.CreateIPSetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/ipset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMalwareProtectionPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateMalwareProtectionPlan",
        input_schema = types.CreateMalwareProtectionPlanInput,
        output_schema = types.CreateMalwareProtectionPlanOutput,
        http_method = "POST",
        http_path = "/malware-protection-plan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMembers(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembers",
        input_schema = types.CreateMembersInput,
        output_schema = types.CreateMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPublishingDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreatePublishingDestination",
        input_schema = types.CreatePublishingDestinationInput,
        output_schema = types.CreatePublishingDestinationOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/publishingDestination",
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
        http_path = "/detector/{DetectorId}/findings/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThreatEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "CreateThreatEntitySet",
        input_schema = types.CreateThreatEntitySetInput,
        output_schema = types.CreateThreatEntitySetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/threatentityset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThreatIntelSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateThreatIntelSet",
        input_schema = types.CreateThreatIntelSetInput,
        output_schema = types.CreateThreatIntelSetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/threatintelset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrustedEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrustedEntitySet",
        input_schema = types.CreateTrustedEntitySetInput,
        output_schema = types.CreateTrustedEntitySetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/trustedentityset",
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
        http_path = "/invitation/decline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDetector",
        input_schema = types.DeleteDetectorInput,
        output_schema = types.DeleteDetectorOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFilter",
        input_schema = types.DeleteFilterInput,
        output_schema = types.DeleteFilterOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}/filter/{FilterName}",
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
        http_path = "/invitation/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIPSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIPSet",
        input_schema = types.DeleteIPSetInput,
        output_schema = types.DeleteIPSetOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}/ipset/{IpSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMalwareProtectionPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMalwareProtectionPlan",
        input_schema = types.DeleteMalwareProtectionPlanInput,
        output_schema = types.DeleteMalwareProtectionPlanOutput,
        http_method = "DELETE",
        http_path = "/malware-protection-plan/{MalwareProtectionPlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMembers(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMembers",
        input_schema = types.DeleteMembersInput,
        output_schema = types.DeleteMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePublishingDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeletePublishingDestination",
        input_schema = types.DeletePublishingDestinationInput,
        output_schema = types.DeletePublishingDestinationOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}/publishingDestination/{DestinationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThreatEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThreatEntitySet",
        input_schema = types.DeleteThreatEntitySetInput,
        output_schema = types.DeleteThreatEntitySetOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}/threatentityset/{ThreatEntitySetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThreatIntelSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThreatIntelSet",
        input_schema = types.DeleteThreatIntelSetInput,
        output_schema = types.DeleteThreatIntelSetOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrustedEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrustedEntitySet",
        input_schema = types.DeleteTrustedEntitySetInput,
        output_schema = types.DeleteTrustedEntitySetOutput,
        http_method = "DELETE",
        http_path = "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMalwareScans(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMalwareScans",
        input_schema = types.DescribeMalwareScansInput,
        output_schema = types.DescribeMalwareScansOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/malware-scans",
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
        http_path = "/detector/{DetectorId}/admin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePublishingDestination(input, options)
    return self:invokeOperation(input, {
        name = "DescribePublishingDestination",
        input_schema = types.DescribePublishingDestinationInput,
        output_schema = types.DescribePublishingDestinationOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/publishingDestination/{DestinationId}",
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
        http_method = "POST",
        http_path = "/admin/disable",
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
        http_path = "/detector/{DetectorId}/administrator/disassociate",
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
        http_path = "/detector/{DetectorId}/master/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMembers(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMembers",
        input_schema = types.DisassociateMembersInput,
        output_schema = types.DisassociateMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/disassociate",
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
        http_path = "/admin/enable",
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
        http_path = "/detector/{DetectorId}/administrator",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoverageStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetCoverageStatistics",
        input_schema = types.GetCoverageStatisticsInput,
        output_schema = types.GetCoverageStatisticsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/coverage/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDetector(input, options)
    return self:invokeOperation(input, {
        name = "GetDetector",
        input_schema = types.GetDetectorInput,
        output_schema = types.GetDetectorOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFilter(input, options)
    return self:invokeOperation(input, {
        name = "GetFilter",
        input_schema = types.GetFilterInput,
        output_schema = types.GetFilterOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/filter/{FilterName}",
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
        http_path = "/detector/{DetectorId}/findings/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFindingsStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetFindingsStatistics",
        input_schema = types.GetFindingsStatisticsInput,
        output_schema = types.GetFindingsStatisticsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/findings/statistics",
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
        http_path = "/invitation/count",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIPSet(input, options)
    return self:invokeOperation(input, {
        name = "GetIPSet",
        input_schema = types.GetIPSetInput,
        output_schema = types.GetIPSetOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/ipset/{IpSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMalwareProtectionPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetMalwareProtectionPlan",
        input_schema = types.GetMalwareProtectionPlanInput,
        output_schema = types.GetMalwareProtectionPlanOutput,
        http_method = "GET",
        http_path = "/malware-protection-plan/{MalwareProtectionPlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMalwareScan(input, options)
    return self:invokeOperation(input, {
        name = "GetMalwareScan",
        input_schema = types.GetMalwareScanInput,
        output_schema = types.GetMalwareScanOutput,
        http_method = "GET",
        http_path = "/malware-scan/{ScanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMalwareScanSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetMalwareScanSettings",
        input_schema = types.GetMalwareScanSettingsInput,
        output_schema = types.GetMalwareScanSettingsOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/malware-scan-settings",
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
        http_path = "/detector/{DetectorId}/master",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMemberDetectors(input, options)
    return self:invokeOperation(input, {
        name = "GetMemberDetectors",
        input_schema = types.GetMemberDetectorsInput,
        output_schema = types.GetMemberDetectorsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/detector/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMembers(input, options)
    return self:invokeOperation(input, {
        name = "GetMembers",
        input_schema = types.GetMembersInput,
        output_schema = types.GetMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrganizationStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationStatistics",
        input_schema = types.GetOrganizationStatisticsInput,
        output_schema = types.GetOrganizationStatisticsOutput,
        http_method = "GET",
        http_path = "/organization/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRemainingFreeTrialDays(input, options)
    return self:invokeOperation(input, {
        name = "GetRemainingFreeTrialDays",
        input_schema = types.GetRemainingFreeTrialDaysInput,
        output_schema = types.GetRemainingFreeTrialDaysOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/freeTrial/daysRemaining",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThreatEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "GetThreatEntitySet",
        input_schema = types.GetThreatEntitySetInput,
        output_schema = types.GetThreatEntitySetOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/threatentityset/{ThreatEntitySetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThreatIntelSet(input, options)
    return self:invokeOperation(input, {
        name = "GetThreatIntelSet",
        input_schema = types.GetThreatIntelSetInput,
        output_schema = types.GetThreatIntelSetOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrustedEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "GetTrustedEntitySet",
        input_schema = types.GetTrustedEntitySetInput,
        output_schema = types.GetTrustedEntitySetOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}",
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
        http_path = "/detector/{DetectorId}/usage/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inviteMembers(input, options)
    return self:invokeOperation(input, {
        name = "InviteMembers",
        input_schema = types.InviteMembersInput,
        output_schema = types.InviteMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/invite",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoverage(input, options)
    return self:invokeOperation(input, {
        name = "ListCoverage",
        input_schema = types.ListCoverageInput,
        output_schema = types.ListCoverageOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/coverage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDetectors(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectors",
        input_schema = types.ListDetectorsInput,
        output_schema = types.ListDetectorsOutput,
        http_method = "GET",
        http_path = "/detector",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFilters(input, options)
    return self:invokeOperation(input, {
        name = "ListFilters",
        input_schema = types.ListFiltersInput,
        output_schema = types.ListFiltersOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/filter",
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
        http_path = "/detector/{DetectorId}/findings",
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
        http_path = "/invitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIPSets(input, options)
    return self:invokeOperation(input, {
        name = "ListIPSets",
        input_schema = types.ListIPSetsInput,
        output_schema = types.ListIPSetsOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/ipset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMalwareProtectionPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListMalwareProtectionPlans",
        input_schema = types.ListMalwareProtectionPlansInput,
        output_schema = types.ListMalwareProtectionPlansOutput,
        http_method = "GET",
        http_path = "/malware-protection-plan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMalwareScans(input, options)
    return self:invokeOperation(input, {
        name = "ListMalwareScans",
        input_schema = types.ListMalwareScansInput,
        output_schema = types.ListMalwareScansOutput,
        http_method = "POST",
        http_path = "/malware-scan",
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
        http_path = "/detector/{DetectorId}/member",
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

function Client:listPublishingDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListPublishingDestinations",
        input_schema = types.ListPublishingDestinationsInput,
        output_schema = types.ListPublishingDestinationsOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/publishingDestination",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThreatEntitySets(input, options)
    return self:invokeOperation(input, {
        name = "ListThreatEntitySets",
        input_schema = types.ListThreatEntitySetsInput,
        output_schema = types.ListThreatEntitySetsOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/threatentityset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThreatIntelSets(input, options)
    return self:invokeOperation(input, {
        name = "ListThreatIntelSets",
        input_schema = types.ListThreatIntelSetsInput,
        output_schema = types.ListThreatIntelSetsOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/threatintelset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrustedEntitySets(input, options)
    return self:invokeOperation(input, {
        name = "ListTrustedEntitySets",
        input_schema = types.ListTrustedEntitySetsInput,
        output_schema = types.ListTrustedEntitySetsOutput,
        http_method = "GET",
        http_path = "/detector/{DetectorId}/trustedentityset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendObjectMalwareScan(input, options)
    return self:invokeOperation(input, {
        name = "SendObjectMalwareScan",
        input_schema = types.SendObjectMalwareScanInput,
        output_schema = types.SendObjectMalwareScanOutput,
        http_method = "POST",
        http_path = "/object-malware-scan/send",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMalwareScan(input, options)
    return self:invokeOperation(input, {
        name = "StartMalwareScan",
        input_schema = types.StartMalwareScanInput,
        output_schema = types.StartMalwareScanOutput,
        http_method = "POST",
        http_path = "/malware-scan/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMonitoringMembers(input, options)
    return self:invokeOperation(input, {
        name = "StartMonitoringMembers",
        input_schema = types.StartMonitoringMembersInput,
        output_schema = types.StartMonitoringMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/start",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMonitoringMembers(input, options)
    return self:invokeOperation(input, {
        name = "StopMonitoringMembers",
        input_schema = types.StopMonitoringMembersInput,
        output_schema = types.StopMonitoringMembersOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/stop",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unarchiveFindings(input, options)
    return self:invokeOperation(input, {
        name = "UnarchiveFindings",
        input_schema = types.UnarchiveFindingsInput,
        output_schema = types.UnarchiveFindingsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/findings/unarchive",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDetector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDetector",
        input_schema = types.UpdateDetectorInput,
        output_schema = types.UpdateDetectorOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFilter(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFilter",
        input_schema = types.UpdateFilterInput,
        output_schema = types.UpdateFilterOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/filter/{FilterName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFindingsFeedback(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFindingsFeedback",
        input_schema = types.UpdateFindingsFeedbackInput,
        output_schema = types.UpdateFindingsFeedbackOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/findings/feedback",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIPSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIPSet",
        input_schema = types.UpdateIPSetInput,
        output_schema = types.UpdateIPSetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/ipset/{IpSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMalwareProtectionPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMalwareProtectionPlan",
        input_schema = types.UpdateMalwareProtectionPlanInput,
        output_schema = types.UpdateMalwareProtectionPlanOutput,
        http_method = "PATCH",
        http_path = "/malware-protection-plan/{MalwareProtectionPlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMalwareScanSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMalwareScanSettings",
        input_schema = types.UpdateMalwareScanSettingsInput,
        output_schema = types.UpdateMalwareScanSettingsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/malware-scan-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMemberDetectors(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMemberDetectors",
        input_schema = types.UpdateMemberDetectorsInput,
        output_schema = types.UpdateMemberDetectorsOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/member/detector/update",
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
        http_method = "POST",
        http_path = "/detector/{DetectorId}/admin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePublishingDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePublishingDestination",
        input_schema = types.UpdatePublishingDestinationInput,
        output_schema = types.UpdatePublishingDestinationOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/publishingDestination/{DestinationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThreatEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThreatEntitySet",
        input_schema = types.UpdateThreatEntitySetInput,
        output_schema = types.UpdateThreatEntitySetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/threatentityset/{ThreatEntitySetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThreatIntelSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThreatIntelSet",
        input_schema = types.UpdateThreatIntelSetInput,
        output_schema = types.UpdateThreatIntelSetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/threatintelset/{ThreatIntelSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrustedEntitySet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrustedEntitySet",
        input_schema = types.UpdateTrustedEntitySetInput,
        output_schema = types.UpdateTrustedEntitySetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
