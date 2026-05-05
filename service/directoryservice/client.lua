local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("directoryservice.endpoint_rules")
local schemas = require("directoryservice.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.AcceptSharedDirectoryInput,
        output_schema = schemas.AcceptSharedDirectoryOutput,
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
        input_schema = schemas.AddIpRoutesInput,
        output_schema = schemas.AddIpRoutesOutput,
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
        input_schema = schemas.AddRegionInput,
        output_schema = schemas.AddRegionOutput,
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
        input_schema = schemas.AddTagsToResourceInput,
        output_schema = schemas.AddTagsToResourceOutput,
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
        input_schema = schemas.CancelSchemaExtensionInput,
        output_schema = schemas.CancelSchemaExtensionOutput,
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
        input_schema = schemas.ConnectDirectoryInput,
        output_schema = schemas.ConnectDirectoryOutput,
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
        input_schema = schemas.CreateAliasInput,
        output_schema = schemas.CreateAliasOutput,
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
        input_schema = schemas.CreateComputerInput,
        output_schema = schemas.CreateComputerOutput,
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
        input_schema = schemas.CreateConditionalForwarderInput,
        output_schema = schemas.CreateConditionalForwarderOutput,
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
        input_schema = schemas.CreateDirectoryInput,
        output_schema = schemas.CreateDirectoryOutput,
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
        input_schema = schemas.CreateHybridADInput,
        output_schema = schemas.CreateHybridADOutput,
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
        input_schema = schemas.CreateLogSubscriptionInput,
        output_schema = schemas.CreateLogSubscriptionOutput,
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
        input_schema = schemas.CreateMicrosoftADInput,
        output_schema = schemas.CreateMicrosoftADOutput,
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
        input_schema = schemas.CreateSnapshotInput,
        output_schema = schemas.CreateSnapshotOutput,
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
        input_schema = schemas.CreateTrustInput,
        output_schema = schemas.CreateTrustOutput,
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
        input_schema = schemas.DeleteADAssessmentInput,
        output_schema = schemas.DeleteADAssessmentOutput,
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
        input_schema = schemas.DeleteConditionalForwarderInput,
        output_schema = schemas.DeleteConditionalForwarderOutput,
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
        input_schema = schemas.DeleteDirectoryInput,
        output_schema = schemas.DeleteDirectoryOutput,
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
        input_schema = schemas.DeleteLogSubscriptionInput,
        output_schema = schemas.DeleteLogSubscriptionOutput,
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
        input_schema = schemas.DeleteSnapshotInput,
        output_schema = schemas.DeleteSnapshotOutput,
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
        input_schema = schemas.DeleteTrustInput,
        output_schema = schemas.DeleteTrustOutput,
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
        input_schema = schemas.DeregisterCertificateInput,
        output_schema = schemas.DeregisterCertificateOutput,
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
        input_schema = schemas.DeregisterEventTopicInput,
        output_schema = schemas.DeregisterEventTopicOutput,
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
        input_schema = schemas.DescribeADAssessmentInput,
        output_schema = schemas.DescribeADAssessmentOutput,
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
        input_schema = schemas.DescribeCAEnrollmentPolicyInput,
        output_schema = schemas.DescribeCAEnrollmentPolicyOutput,
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
        input_schema = schemas.DescribeCertificateInput,
        output_schema = schemas.DescribeCertificateOutput,
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
        input_schema = schemas.DescribeClientAuthenticationSettingsInput,
        output_schema = schemas.DescribeClientAuthenticationSettingsOutput,
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
        input_schema = schemas.DescribeConditionalForwardersInput,
        output_schema = schemas.DescribeConditionalForwardersOutput,
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
        input_schema = schemas.DescribeDirectoriesInput,
        output_schema = schemas.DescribeDirectoriesOutput,
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
        input_schema = schemas.DescribeDirectoryDataAccessInput,
        output_schema = schemas.DescribeDirectoryDataAccessOutput,
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
        input_schema = schemas.DescribeDomainControllersInput,
        output_schema = schemas.DescribeDomainControllersOutput,
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
        input_schema = schemas.DescribeEventTopicsInput,
        output_schema = schemas.DescribeEventTopicsOutput,
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
        input_schema = schemas.DescribeHybridADUpdateInput,
        output_schema = schemas.DescribeHybridADUpdateOutput,
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
        input_schema = schemas.DescribeLDAPSSettingsInput,
        output_schema = schemas.DescribeLDAPSSettingsOutput,
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
        input_schema = schemas.DescribeRegionsInput,
        output_schema = schemas.DescribeRegionsOutput,
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
        input_schema = schemas.DescribeSettingsInput,
        output_schema = schemas.DescribeSettingsOutput,
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
        input_schema = schemas.DescribeSharedDirectoriesInput,
        output_schema = schemas.DescribeSharedDirectoriesOutput,
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
        input_schema = schemas.DescribeSnapshotsInput,
        output_schema = schemas.DescribeSnapshotsOutput,
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
        input_schema = schemas.DescribeTrustsInput,
        output_schema = schemas.DescribeTrustsOutput,
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
        input_schema = schemas.DescribeUpdateDirectoryInput,
        output_schema = schemas.DescribeUpdateDirectoryOutput,
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
        input_schema = schemas.DisableCAEnrollmentPolicyInput,
        output_schema = schemas.DisableCAEnrollmentPolicyOutput,
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
        input_schema = schemas.DisableClientAuthenticationInput,
        output_schema = schemas.DisableClientAuthenticationOutput,
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
        input_schema = schemas.DisableDirectoryDataAccessInput,
        output_schema = schemas.DisableDirectoryDataAccessOutput,
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
        input_schema = schemas.DisableLDAPSInput,
        output_schema = schemas.DisableLDAPSOutput,
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
        input_schema = schemas.DisableRadiusInput,
        output_schema = schemas.DisableRadiusOutput,
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
        input_schema = schemas.DisableSsoInput,
        output_schema = schemas.DisableSsoOutput,
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
        input_schema = schemas.EnableCAEnrollmentPolicyInput,
        output_schema = schemas.EnableCAEnrollmentPolicyOutput,
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
        input_schema = schemas.EnableClientAuthenticationInput,
        output_schema = schemas.EnableClientAuthenticationOutput,
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
        input_schema = schemas.EnableDirectoryDataAccessInput,
        output_schema = schemas.EnableDirectoryDataAccessOutput,
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
        input_schema = schemas.EnableLDAPSInput,
        output_schema = schemas.EnableLDAPSOutput,
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
        input_schema = schemas.EnableRadiusInput,
        output_schema = schemas.EnableRadiusOutput,
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
        input_schema = schemas.EnableSsoInput,
        output_schema = schemas.EnableSsoOutput,
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
        input_schema = schemas.GetDirectoryLimitsInput,
        output_schema = schemas.GetDirectoryLimitsOutput,
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
        input_schema = schemas.GetSnapshotLimitsInput,
        output_schema = schemas.GetSnapshotLimitsOutput,
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
        input_schema = schemas.ListADAssessmentsInput,
        output_schema = schemas.ListADAssessmentsOutput,
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
        input_schema = schemas.ListCertificatesInput,
        output_schema = schemas.ListCertificatesOutput,
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
        input_schema = schemas.ListIpRoutesInput,
        output_schema = schemas.ListIpRoutesOutput,
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
        input_schema = schemas.ListLogSubscriptionsInput,
        output_schema = schemas.ListLogSubscriptionsOutput,
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
        input_schema = schemas.ListSchemaExtensionsInput,
        output_schema = schemas.ListSchemaExtensionsOutput,
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

function Client:registerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCertificate",
        input_schema = schemas.RegisterCertificateInput,
        output_schema = schemas.RegisterCertificateOutput,
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
        input_schema = schemas.RegisterEventTopicInput,
        output_schema = schemas.RegisterEventTopicOutput,
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
        input_schema = schemas.RejectSharedDirectoryInput,
        output_schema = schemas.RejectSharedDirectoryOutput,
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
        input_schema = schemas.RemoveIpRoutesInput,
        output_schema = schemas.RemoveIpRoutesOutput,
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
        input_schema = schemas.RemoveRegionInput,
        output_schema = schemas.RemoveRegionOutput,
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
        input_schema = schemas.RemoveTagsFromResourceInput,
        output_schema = schemas.RemoveTagsFromResourceOutput,
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
        input_schema = schemas.ResetUserPasswordInput,
        output_schema = schemas.ResetUserPasswordOutput,
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
        input_schema = schemas.RestoreFromSnapshotInput,
        output_schema = schemas.RestoreFromSnapshotOutput,
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
        input_schema = schemas.ShareDirectoryInput,
        output_schema = schemas.ShareDirectoryOutput,
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
        input_schema = schemas.StartADAssessmentInput,
        output_schema = schemas.StartADAssessmentOutput,
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
        input_schema = schemas.StartSchemaExtensionInput,
        output_schema = schemas.StartSchemaExtensionOutput,
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
        input_schema = schemas.UnshareDirectoryInput,
        output_schema = schemas.UnshareDirectoryOutput,
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
        input_schema = schemas.UpdateConditionalForwarderInput,
        output_schema = schemas.UpdateConditionalForwarderOutput,
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
        input_schema = schemas.UpdateDirectorySetupInput,
        output_schema = schemas.UpdateDirectorySetupOutput,
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
        input_schema = schemas.UpdateHybridADInput,
        output_schema = schemas.UpdateHybridADOutput,
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
        input_schema = schemas.UpdateNumberOfDomainControllersInput,
        output_schema = schemas.UpdateNumberOfDomainControllersOutput,
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
        input_schema = schemas.UpdateRadiusInput,
        output_schema = schemas.UpdateRadiusOutput,
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
        input_schema = schemas.UpdateSettingsInput,
        output_schema = schemas.UpdateSettingsOutput,
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
        input_schema = schemas.UpdateTrustInput,
        output_schema = schemas.UpdateTrustOutput,
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
        input_schema = schemas.VerifyTrustInput,
        output_schema = schemas.VerifyTrustOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
