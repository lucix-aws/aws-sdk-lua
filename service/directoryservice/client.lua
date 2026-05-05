local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("directoryservice.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("directoryservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DirectoryService_20150416"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ds", signing_region = cfg.region } }
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

function Client:acceptSharedDirectory(input, options)
    return self:invokeOperation(input, {
        name = "AcceptSharedDirectory",
        input_schema = types.AcceptSharedDirectoryInput,
        output_schema = types.AcceptSharedDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addIpRoutes(input, options)
    return self:invokeOperation(input, {
        name = "AddIpRoutes",
        input_schema = types.AddIpRoutesInput,
        output_schema = types.AddIpRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addRegion(input, options)
    return self:invokeOperation(input, {
        name = "AddRegion",
        input_schema = types.AddRegionInput,
        output_schema = types.AddRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTagsToResource(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToResource",
        input_schema = types.AddTagsToResourceInput,
        output_schema = types.AddTagsToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelSchemaExtension(input, options)
    return self:invokeOperation(input, {
        name = "CancelSchemaExtension",
        input_schema = types.CancelSchemaExtensionInput,
        output_schema = types.CancelSchemaExtensionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:connectDirectory(input, options)
    return self:invokeOperation(input, {
        name = "ConnectDirectory",
        input_schema = types.ConnectDirectoryInput,
        output_schema = types.ConnectDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlias",
        input_schema = types.CreateAliasInput,
        output_schema = types.CreateAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComputer(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputer",
        input_schema = types.CreateComputerInput,
        output_schema = types.CreateComputerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConditionalForwarder(input, options)
    return self:invokeOperation(input, {
        name = "CreateConditionalForwarder",
        input_schema = types.CreateConditionalForwarderInput,
        output_schema = types.CreateConditionalForwarderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectory(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectory",
        input_schema = types.CreateDirectoryInput,
        output_schema = types.CreateDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHybridAD(input, options)
    return self:invokeOperation(input, {
        name = "CreateHybridAD",
        input_schema = types.CreateHybridADInput,
        output_schema = types.CreateHybridADOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLogSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogSubscription",
        input_schema = types.CreateLogSubscriptionInput,
        output_schema = types.CreateLogSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMicrosoftAD(input, options)
    return self:invokeOperation(input, {
        name = "CreateMicrosoftAD",
        input_schema = types.CreateMicrosoftADInput,
        output_schema = types.CreateMicrosoftADOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshot",
        input_schema = types.CreateSnapshotInput,
        output_schema = types.CreateSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrust(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrust",
        input_schema = types.CreateTrustInput,
        output_schema = types.CreateTrustOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteADAssessment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteADAssessment",
        input_schema = types.DeleteADAssessmentInput,
        output_schema = types.DeleteADAssessmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConditionalForwarder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConditionalForwarder",
        input_schema = types.DeleteConditionalForwarderInput,
        output_schema = types.DeleteConditionalForwarderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectory",
        input_schema = types.DeleteDirectoryInput,
        output_schema = types.DeleteDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLogSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLogSubscription",
        input_schema = types.DeleteLogSubscriptionInput,
        output_schema = types.DeleteLogSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshot",
        input_schema = types.DeleteSnapshotInput,
        output_schema = types.DeleteSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrust(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrust",
        input_schema = types.DeleteTrustInput,
        output_schema = types.DeleteTrustOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterCertificate",
        input_schema = types.DeregisterCertificateInput,
        output_schema = types.DeregisterCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterEventTopic(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterEventTopic",
        input_schema = types.DeregisterEventTopicInput,
        output_schema = types.DeregisterEventTopicOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeADAssessment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeADAssessment",
        input_schema = types.DescribeADAssessmentInput,
        output_schema = types.DescribeADAssessmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCAEnrollmentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCAEnrollmentPolicy",
        input_schema = types.DescribeCAEnrollmentPolicyInput,
        output_schema = types.DescribeCAEnrollmentPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificate",
        input_schema = types.DescribeCertificateInput,
        output_schema = types.DescribeCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientAuthenticationSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientAuthenticationSettings",
        input_schema = types.DescribeClientAuthenticationSettingsInput,
        output_schema = types.DescribeClientAuthenticationSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConditionalForwarders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConditionalForwarders",
        input_schema = types.DescribeConditionalForwardersInput,
        output_schema = types.DescribeConditionalForwardersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectories",
        input_schema = types.DescribeDirectoriesInput,
        output_schema = types.DescribeDirectoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectoryDataAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectoryDataAccess",
        input_schema = types.DescribeDirectoryDataAccessInput,
        output_schema = types.DescribeDirectoryDataAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainControllers(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainControllers",
        input_schema = types.DescribeDomainControllersInput,
        output_schema = types.DescribeDomainControllersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventTopics(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventTopics",
        input_schema = types.DescribeEventTopicsInput,
        output_schema = types.DescribeEventTopicsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHybridADUpdate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHybridADUpdate",
        input_schema = types.DescribeHybridADUpdateInput,
        output_schema = types.DescribeHybridADUpdateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLDAPSSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLDAPSSettings",
        input_schema = types.DescribeLDAPSSettingsInput,
        output_schema = types.DescribeLDAPSSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRegions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRegions",
        input_schema = types.DescribeRegionsInput,
        output_schema = types.DescribeRegionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSettings",
        input_schema = types.DescribeSettingsInput,
        output_schema = types.DescribeSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSharedDirectories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSharedDirectories",
        input_schema = types.DescribeSharedDirectoriesInput,
        output_schema = types.DescribeSharedDirectoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshots",
        input_schema = types.DescribeSnapshotsInput,
        output_schema = types.DescribeSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrusts(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrusts",
        input_schema = types.DescribeTrustsInput,
        output_schema = types.DescribeTrustsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUpdateDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUpdateDirectory",
        input_schema = types.DescribeUpdateDirectoryInput,
        output_schema = types.DescribeUpdateDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableCAEnrollmentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DisableCAEnrollmentPolicy",
        input_schema = types.DisableCAEnrollmentPolicyInput,
        output_schema = types.DisableCAEnrollmentPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableClientAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "DisableClientAuthentication",
        input_schema = types.DisableClientAuthenticationInput,
        output_schema = types.DisableClientAuthenticationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableDirectoryDataAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableDirectoryDataAccess",
        input_schema = types.DisableDirectoryDataAccessInput,
        output_schema = types.DisableDirectoryDataAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableLDAPS(input, options)
    return self:invokeOperation(input, {
        name = "DisableLDAPS",
        input_schema = types.DisableLDAPSInput,
        output_schema = types.DisableLDAPSOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableRadius(input, options)
    return self:invokeOperation(input, {
        name = "DisableRadius",
        input_schema = types.DisableRadiusInput,
        output_schema = types.DisableRadiusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSso(input, options)
    return self:invokeOperation(input, {
        name = "DisableSso",
        input_schema = types.DisableSsoInput,
        output_schema = types.DisableSsoOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableCAEnrollmentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "EnableCAEnrollmentPolicy",
        input_schema = types.EnableCAEnrollmentPolicyInput,
        output_schema = types.EnableCAEnrollmentPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableClientAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "EnableClientAuthentication",
        input_schema = types.EnableClientAuthenticationInput,
        output_schema = types.EnableClientAuthenticationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableDirectoryDataAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableDirectoryDataAccess",
        input_schema = types.EnableDirectoryDataAccessInput,
        output_schema = types.EnableDirectoryDataAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableLDAPS(input, options)
    return self:invokeOperation(input, {
        name = "EnableLDAPS",
        input_schema = types.EnableLDAPSInput,
        output_schema = types.EnableLDAPSOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableRadius(input, options)
    return self:invokeOperation(input, {
        name = "EnableRadius",
        input_schema = types.EnableRadiusInput,
        output_schema = types.EnableRadiusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSso(input, options)
    return self:invokeOperation(input, {
        name = "EnableSso",
        input_schema = types.EnableSsoInput,
        output_schema = types.EnableSsoOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDirectoryLimits(input, options)
    return self:invokeOperation(input, {
        name = "GetDirectoryLimits",
        input_schema = types.GetDirectoryLimitsInput,
        output_schema = types.GetDirectoryLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSnapshotLimits(input, options)
    return self:invokeOperation(input, {
        name = "GetSnapshotLimits",
        input_schema = types.GetSnapshotLimitsInput,
        output_schema = types.GetSnapshotLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listADAssessments(input, options)
    return self:invokeOperation(input, {
        name = "ListADAssessments",
        input_schema = types.ListADAssessmentsInput,
        output_schema = types.ListADAssessmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificates",
        input_schema = types.ListCertificatesInput,
        output_schema = types.ListCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIpRoutes(input, options)
    return self:invokeOperation(input, {
        name = "ListIpRoutes",
        input_schema = types.ListIpRoutesInput,
        output_schema = types.ListIpRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListLogSubscriptions",
        input_schema = types.ListLogSubscriptionsInput,
        output_schema = types.ListLogSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchemaExtensions(input, options)
    return self:invokeOperation(input, {
        name = "ListSchemaExtensions",
        input_schema = types.ListSchemaExtensionsInput,
        output_schema = types.ListSchemaExtensionsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCertificate",
        input_schema = types.RegisterCertificateInput,
        output_schema = types.RegisterCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerEventTopic(input, options)
    return self:invokeOperation(input, {
        name = "RegisterEventTopic",
        input_schema = types.RegisterEventTopicInput,
        output_schema = types.RegisterEventTopicOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectSharedDirectory(input, options)
    return self:invokeOperation(input, {
        name = "RejectSharedDirectory",
        input_schema = types.RejectSharedDirectoryInput,
        output_schema = types.RejectSharedDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeIpRoutes(input, options)
    return self:invokeOperation(input, {
        name = "RemoveIpRoutes",
        input_schema = types.RemoveIpRoutesInput,
        output_schema = types.RemoveIpRoutesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeRegion(input, options)
    return self:invokeOperation(input, {
        name = "RemoveRegion",
        input_schema = types.RemoveRegionInput,
        output_schema = types.RemoveRegionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTagsFromResource(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromResource",
        input_schema = types.RemoveTagsFromResourceInput,
        output_schema = types.RemoveTagsFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetUserPassword(input, options)
    return self:invokeOperation(input, {
        name = "ResetUserPassword",
        input_schema = types.ResetUserPasswordInput,
        output_schema = types.ResetUserPasswordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreFromSnapshot",
        input_schema = types.RestoreFromSnapshotInput,
        output_schema = types.RestoreFromSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:shareDirectory(input, options)
    return self:invokeOperation(input, {
        name = "ShareDirectory",
        input_schema = types.ShareDirectoryInput,
        output_schema = types.ShareDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startADAssessment(input, options)
    return self:invokeOperation(input, {
        name = "StartADAssessment",
        input_schema = types.StartADAssessmentInput,
        output_schema = types.StartADAssessmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSchemaExtension(input, options)
    return self:invokeOperation(input, {
        name = "StartSchemaExtension",
        input_schema = types.StartSchemaExtensionInput,
        output_schema = types.StartSchemaExtensionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unshareDirectory(input, options)
    return self:invokeOperation(input, {
        name = "UnshareDirectory",
        input_schema = types.UnshareDirectoryInput,
        output_schema = types.UnshareDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConditionalForwarder(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConditionalForwarder",
        input_schema = types.UpdateConditionalForwarderInput,
        output_schema = types.UpdateConditionalForwarderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDirectorySetup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectorySetup",
        input_schema = types.UpdateDirectorySetupInput,
        output_schema = types.UpdateDirectorySetupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHybridAD(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHybridAD",
        input_schema = types.UpdateHybridADInput,
        output_schema = types.UpdateHybridADOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNumberOfDomainControllers(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNumberOfDomainControllers",
        input_schema = types.UpdateNumberOfDomainControllersInput,
        output_schema = types.UpdateNumberOfDomainControllersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRadius(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRadius",
        input_schema = types.UpdateRadiusInput,
        output_schema = types.UpdateRadiusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSettings",
        input_schema = types.UpdateSettingsInput,
        output_schema = types.UpdateSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrust(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrust",
        input_schema = types.UpdateTrustInput,
        output_schema = types.UpdateTrustOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:verifyTrust(input, options)
    return self:invokeOperation(input, {
        name = "VerifyTrust",
        input_schema = types.VerifyTrustInput,
        output_schema = types.VerifyTrustOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
