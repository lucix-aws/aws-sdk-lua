local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("guardduty.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("guardduty.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AcceptAdministratorInvitationInput,
        output_schema = schemas.AcceptAdministratorInvitationOutput,
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
        input_schema = schemas.AcceptInvitationInput,
        output_schema = schemas.AcceptInvitationOutput,
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
        input_schema = schemas.ArchiveFindingsInput,
        output_schema = schemas.ArchiveFindingsOutput,
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
        input_schema = schemas.CreateDetectorInput,
        output_schema = schemas.CreateDetectorOutput,
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
        input_schema = schemas.CreateFilterInput,
        output_schema = schemas.CreateFilterOutput,
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
        input_schema = schemas.CreateIPSetInput,
        output_schema = schemas.CreateIPSetOutput,
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
        input_schema = schemas.CreateMalwareProtectionPlanInput,
        output_schema = schemas.CreateMalwareProtectionPlanOutput,
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
        input_schema = schemas.CreateMembersInput,
        output_schema = schemas.CreateMembersOutput,
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
        input_schema = schemas.CreatePublishingDestinationInput,
        output_schema = schemas.CreatePublishingDestinationOutput,
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
        input_schema = schemas.CreateSampleFindingsInput,
        output_schema = schemas.CreateSampleFindingsOutput,
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
        input_schema = schemas.CreateThreatEntitySetInput,
        output_schema = schemas.CreateThreatEntitySetOutput,
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
        input_schema = schemas.CreateThreatIntelSetInput,
        output_schema = schemas.CreateThreatIntelSetOutput,
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
        input_schema = schemas.CreateTrustedEntitySetInput,
        output_schema = schemas.CreateTrustedEntitySetOutput,
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
        input_schema = schemas.DeclineInvitationsInput,
        output_schema = schemas.DeclineInvitationsOutput,
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
        input_schema = schemas.DeleteDetectorInput,
        output_schema = schemas.DeleteDetectorOutput,
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
        input_schema = schemas.DeleteFilterInput,
        output_schema = schemas.DeleteFilterOutput,
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
        input_schema = schemas.DeleteInvitationsInput,
        output_schema = schemas.DeleteInvitationsOutput,
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
        input_schema = schemas.DeleteIPSetInput,
        output_schema = schemas.DeleteIPSetOutput,
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
        input_schema = schemas.DeleteMalwareProtectionPlanInput,
        output_schema = schemas.DeleteMalwareProtectionPlanOutput,
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
        input_schema = schemas.DeleteMembersInput,
        output_schema = schemas.DeleteMembersOutput,
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
        input_schema = schemas.DeletePublishingDestinationInput,
        output_schema = schemas.DeletePublishingDestinationOutput,
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
        input_schema = schemas.DeleteThreatEntitySetInput,
        output_schema = schemas.DeleteThreatEntitySetOutput,
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
        input_schema = schemas.DeleteThreatIntelSetInput,
        output_schema = schemas.DeleteThreatIntelSetOutput,
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
        input_schema = schemas.DeleteTrustedEntitySetInput,
        output_schema = schemas.DeleteTrustedEntitySetOutput,
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
        input_schema = schemas.DescribeMalwareScansInput,
        output_schema = schemas.DescribeMalwareScansOutput,
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
        input_schema = schemas.DescribeOrganizationConfigurationInput,
        output_schema = schemas.DescribeOrganizationConfigurationOutput,
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
        input_schema = schemas.DescribePublishingDestinationInput,
        output_schema = schemas.DescribePublishingDestinationOutput,
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
        input_schema = schemas.DisableOrganizationAdminAccountInput,
        output_schema = schemas.DisableOrganizationAdminAccountOutput,
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
        input_schema = schemas.DisassociateFromAdministratorAccountInput,
        output_schema = schemas.DisassociateFromAdministratorAccountOutput,
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
        input_schema = schemas.DisassociateFromMasterAccountInput,
        output_schema = schemas.DisassociateFromMasterAccountOutput,
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
        input_schema = schemas.DisassociateMembersInput,
        output_schema = schemas.DisassociateMembersOutput,
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
        input_schema = schemas.EnableOrganizationAdminAccountInput,
        output_schema = schemas.EnableOrganizationAdminAccountOutput,
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
        input_schema = schemas.GetAdministratorAccountInput,
        output_schema = schemas.GetAdministratorAccountOutput,
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
        input_schema = schemas.GetCoverageStatisticsInput,
        output_schema = schemas.GetCoverageStatisticsOutput,
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
        input_schema = schemas.GetDetectorInput,
        output_schema = schemas.GetDetectorOutput,
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
        input_schema = schemas.GetFilterInput,
        output_schema = schemas.GetFilterOutput,
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
        input_schema = schemas.GetFindingsInput,
        output_schema = schemas.GetFindingsOutput,
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
        input_schema = schemas.GetFindingsStatisticsInput,
        output_schema = schemas.GetFindingsStatisticsOutput,
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
        input_schema = schemas.GetInvitationsCountInput,
        output_schema = schemas.GetInvitationsCountOutput,
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
        input_schema = schemas.GetIPSetInput,
        output_schema = schemas.GetIPSetOutput,
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
        input_schema = schemas.GetMalwareProtectionPlanInput,
        output_schema = schemas.GetMalwareProtectionPlanOutput,
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
        input_schema = schemas.GetMalwareScanInput,
        output_schema = schemas.GetMalwareScanOutput,
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
        input_schema = schemas.GetMalwareScanSettingsInput,
        output_schema = schemas.GetMalwareScanSettingsOutput,
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
        input_schema = schemas.GetMasterAccountInput,
        output_schema = schemas.GetMasterAccountOutput,
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
        input_schema = schemas.GetMemberDetectorsInput,
        output_schema = schemas.GetMemberDetectorsOutput,
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
        input_schema = schemas.GetMembersInput,
        output_schema = schemas.GetMembersOutput,
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
        input_schema = schemas.GetOrganizationStatisticsInput,
        output_schema = schemas.GetOrganizationStatisticsOutput,
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
        input_schema = schemas.GetRemainingFreeTrialDaysInput,
        output_schema = schemas.GetRemainingFreeTrialDaysOutput,
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
        input_schema = schemas.GetThreatEntitySetInput,
        output_schema = schemas.GetThreatEntitySetOutput,
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
        input_schema = schemas.GetThreatIntelSetInput,
        output_schema = schemas.GetThreatIntelSetOutput,
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
        input_schema = schemas.GetTrustedEntitySetInput,
        output_schema = schemas.GetTrustedEntitySetOutput,
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
        input_schema = schemas.GetUsageStatisticsInput,
        output_schema = schemas.GetUsageStatisticsOutput,
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
        input_schema = schemas.InviteMembersInput,
        output_schema = schemas.InviteMembersOutput,
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
        input_schema = schemas.ListCoverageInput,
        output_schema = schemas.ListCoverageOutput,
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
        input_schema = schemas.ListDetectorsInput,
        output_schema = schemas.ListDetectorsOutput,
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
        input_schema = schemas.ListFiltersInput,
        output_schema = schemas.ListFiltersOutput,
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
        input_schema = schemas.ListFindingsInput,
        output_schema = schemas.ListFindingsOutput,
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
        input_schema = schemas.ListInvitationsInput,
        output_schema = schemas.ListInvitationsOutput,
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
        input_schema = schemas.ListIPSetsInput,
        output_schema = schemas.ListIPSetsOutput,
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
        input_schema = schemas.ListMalwareProtectionPlansInput,
        output_schema = schemas.ListMalwareProtectionPlansOutput,
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
        input_schema = schemas.ListMalwareScansInput,
        output_schema = schemas.ListMalwareScansOutput,
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
        input_schema = schemas.ListMembersInput,
        output_schema = schemas.ListMembersOutput,
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
        input_schema = schemas.ListOrganizationAdminAccountsInput,
        output_schema = schemas.ListOrganizationAdminAccountsOutput,
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
        input_schema = schemas.ListPublishingDestinationsInput,
        output_schema = schemas.ListPublishingDestinationsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListThreatEntitySetsInput,
        output_schema = schemas.ListThreatEntitySetsOutput,
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
        input_schema = schemas.ListThreatIntelSetsInput,
        output_schema = schemas.ListThreatIntelSetsOutput,
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
        input_schema = schemas.ListTrustedEntitySetsInput,
        output_schema = schemas.ListTrustedEntitySetsOutput,
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
        input_schema = schemas.SendObjectMalwareScanInput,
        output_schema = schemas.SendObjectMalwareScanOutput,
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
        input_schema = schemas.StartMalwareScanInput,
        output_schema = schemas.StartMalwareScanOutput,
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
        input_schema = schemas.StartMonitoringMembersInput,
        output_schema = schemas.StartMonitoringMembersOutput,
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
        input_schema = schemas.StopMonitoringMembersInput,
        output_schema = schemas.StopMonitoringMembersOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UnarchiveFindingsInput,
        output_schema = schemas.UnarchiveFindingsOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateDetectorInput,
        output_schema = schemas.UpdateDetectorOutput,
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
        input_schema = schemas.UpdateFilterInput,
        output_schema = schemas.UpdateFilterOutput,
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
        input_schema = schemas.UpdateFindingsFeedbackInput,
        output_schema = schemas.UpdateFindingsFeedbackOutput,
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
        input_schema = schemas.UpdateIPSetInput,
        output_schema = schemas.UpdateIPSetOutput,
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
        input_schema = schemas.UpdateMalwareProtectionPlanInput,
        output_schema = schemas.UpdateMalwareProtectionPlanOutput,
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
        input_schema = schemas.UpdateMalwareScanSettingsInput,
        output_schema = schemas.UpdateMalwareScanSettingsOutput,
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
        input_schema = schemas.UpdateMemberDetectorsInput,
        output_schema = schemas.UpdateMemberDetectorsOutput,
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
        input_schema = schemas.UpdateOrganizationConfigurationInput,
        output_schema = schemas.UpdateOrganizationConfigurationOutput,
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
        input_schema = schemas.UpdatePublishingDestinationInput,
        output_schema = schemas.UpdatePublishingDestinationOutput,
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
        input_schema = schemas.UpdateThreatEntitySetInput,
        output_schema = schemas.UpdateThreatEntitySetOutput,
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
        input_schema = schemas.UpdateThreatIntelSetInput,
        output_schema = schemas.UpdateThreatIntelSetOutput,
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
        input_schema = schemas.UpdateTrustedEntitySetInput,
        output_schema = schemas.UpdateTrustedEntitySetOutput,
        http_method = "POST",
        http_path = "/detector/{DetectorId}/trustedentityset/{TrustedEntitySetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
