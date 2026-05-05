local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iot.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("iot.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIotService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iot", signing_region = cfg.region } }
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

function Client:acceptCertificateTransfer(input, options)
    return self:invokeOperation(input, {
        name = "AcceptCertificateTransfer",
        input_schema = schemas.AcceptCertificateTransferInput,
        output_schema = schemas.AcceptCertificateTransferOutput,
        http_method = "PATCH",
        http_path = "/accept-certificate-transfer/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addThingToBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "AddThingToBillingGroup",
        input_schema = schemas.AddThingToBillingGroupInput,
        output_schema = schemas.AddThingToBillingGroupOutput,
        http_method = "PUT",
        http_path = "/billing-groups/addThingToBillingGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addThingToThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "AddThingToThingGroup",
        input_schema = schemas.AddThingToThingGroupInput,
        output_schema = schemas.AddThingToThingGroupOutput,
        http_method = "PUT",
        http_path = "/thing-groups/addThingToThingGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSbomWithPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSbomWithPackageVersion",
        input_schema = schemas.AssociateSbomWithPackageVersionInput,
        output_schema = schemas.AssociateSbomWithPackageVersionOutput,
        http_method = "PUT",
        http_path = "/packages/{packageName}/versions/{versionName}/sbom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTargetsWithJob(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTargetsWithJob",
        input_schema = schemas.AssociateTargetsWithJobInput,
        output_schema = schemas.AssociateTargetsWithJobOutput,
        http_method = "POST",
        http_path = "/jobs/{jobId}/targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPolicy",
        input_schema = schemas.AttachPolicyInput,
        output_schema = schemas.AttachPolicyOutput,
        http_method = "PUT",
        http_path = "/target-policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachPrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPrincipalPolicy",
        input_schema = schemas.AttachPrincipalPolicyInput,
        output_schema = schemas.AttachPrincipalPolicyOutput,
        http_method = "PUT",
        http_path = "/principal-policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "AttachSecurityProfile",
        input_schema = schemas.AttachSecurityProfileInput,
        output_schema = schemas.AttachSecurityProfileOutput,
        http_method = "PUT",
        http_path = "/security-profiles/{securityProfileName}/targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachThingPrincipal(input, options)
    return self:invokeOperation(input, {
        name = "AttachThingPrincipal",
        input_schema = schemas.AttachThingPrincipalInput,
        output_schema = schemas.AttachThingPrincipalOutput,
        http_method = "PUT",
        http_path = "/things/{thingName}/principals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelAuditMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelAuditMitigationActionsTask",
        input_schema = schemas.CancelAuditMitigationActionsTaskInput,
        output_schema = schemas.CancelAuditMitigationActionsTaskOutput,
        http_method = "PUT",
        http_path = "/audit/mitigationactions/tasks/{taskId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelAuditTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelAuditTask",
        input_schema = schemas.CancelAuditTaskInput,
        output_schema = schemas.CancelAuditTaskOutput,
        http_method = "PUT",
        http_path = "/audit/tasks/{taskId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelCertificateTransfer(input, options)
    return self:invokeOperation(input, {
        name = "CancelCertificateTransfer",
        input_schema = schemas.CancelCertificateTransferInput,
        output_schema = schemas.CancelCertificateTransferOutput,
        http_method = "PATCH",
        http_path = "/cancel-certificate-transfer/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelDetectMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelDetectMitigationActionsTask",
        input_schema = schemas.CancelDetectMitigationActionsTaskInput,
        output_schema = schemas.CancelDetectMitigationActionsTaskOutput,
        http_method = "PUT",
        http_path = "/detect/mitigationactions/tasks/{taskId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = schemas.CancelJobInput,
        output_schema = schemas.CancelJobOutput,
        http_method = "PUT",
        http_path = "/jobs/{jobId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelJobExecution",
        input_schema = schemas.CancelJobExecutionInput,
        output_schema = schemas.CancelJobExecutionOutput,
        http_method = "PUT",
        http_path = "/things/{thingName}/jobs/{jobId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:clearDefaultAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "ClearDefaultAuthorizer",
        input_schema = schemas.ClearDefaultAuthorizerInput,
        output_schema = schemas.ClearDefaultAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/default-authorizer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmTopicRuleDestination",
        input_schema = schemas.ConfirmTopicRuleDestinationInput,
        output_schema = schemas.ConfirmTopicRuleDestinationOutput,
        http_method = "GET",
        http_path = "/confirmdestination/{confirmationToken+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuditSuppression",
        input_schema = schemas.CreateAuditSuppressionInput,
        output_schema = schemas.CreateAuditSuppressionOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuthorizer",
        input_schema = schemas.CreateAuthorizerInput,
        output_schema = schemas.CreateAuthorizerOutput,
        http_method = "POST",
        http_path = "/authorizer/{authorizerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillingGroup",
        input_schema = schemas.CreateBillingGroupInput,
        output_schema = schemas.CreateBillingGroupOutput,
        http_method = "POST",
        http_path = "/billing-groups/{billingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCertificateFromCsr(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificateFromCsr",
        input_schema = schemas.CreateCertificateFromCsrInput,
        output_schema = schemas.CreateCertificateFromCsrOutput,
        http_method = "POST",
        http_path = "/certificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificateProvider",
        input_schema = schemas.CreateCertificateProviderInput,
        output_schema = schemas.CreateCertificateProviderOutput,
        http_method = "POST",
        http_path = "/certificate-providers/{certificateProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCommand(input, options)
    return self:invokeOperation(input, {
        name = "CreateCommand",
        input_schema = schemas.CreateCommandInput,
        output_schema = schemas.CreateCommandOutput,
        http_method = "PUT",
        http_path = "/commands/{commandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomMetric",
        input_schema = schemas.CreateCustomMetricInput,
        output_schema = schemas.CreateCustomMetricOutput,
        http_method = "POST",
        http_path = "/custom-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDimension(input, options)
    return self:invokeOperation(input, {
        name = "CreateDimension",
        input_schema = schemas.CreateDimensionInput,
        output_schema = schemas.CreateDimensionOutput,
        http_method = "POST",
        http_path = "/dimensions/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainConfiguration",
        input_schema = schemas.CreateDomainConfigurationInput,
        output_schema = schemas.CreateDomainConfigurationOutput,
        http_method = "POST",
        http_path = "/domainConfigurations/{domainConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDynamicThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDynamicThingGroup",
        input_schema = schemas.CreateDynamicThingGroupInput,
        output_schema = schemas.CreateDynamicThingGroupOutput,
        http_method = "POST",
        http_path = "/dynamic-thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleetMetric",
        input_schema = schemas.CreateFleetMetricInput,
        output_schema = schemas.CreateFleetMetricOutput,
        http_method = "PUT",
        http_path = "/fleet-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = schemas.CreateJobInput,
        output_schema = schemas.CreateJobOutput,
        http_method = "PUT",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobTemplate",
        input_schema = schemas.CreateJobTemplateInput,
        output_schema = schemas.CreateJobTemplateOutput,
        http_method = "PUT",
        http_path = "/job-templates/{jobTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKeysAndCertificate(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeysAndCertificate",
        input_schema = schemas.CreateKeysAndCertificateInput,
        output_schema = schemas.CreateKeysAndCertificateOutput,
        http_method = "POST",
        http_path = "/keys-and-certificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateMitigationAction",
        input_schema = schemas.CreateMitigationActionInput,
        output_schema = schemas.CreateMitigationActionOutput,
        http_method = "POST",
        http_path = "/mitigationactions/actions/{actionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOTAUpdate(input, options)
    return self:invokeOperation(input, {
        name = "CreateOTAUpdate",
        input_schema = schemas.CreateOTAUpdateInput,
        output_schema = schemas.CreateOTAUpdateOutput,
        http_method = "POST",
        http_path = "/otaUpdates/{otaUpdateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackage",
        input_schema = schemas.CreatePackageInput,
        output_schema = schemas.CreatePackageOutput,
        http_method = "PUT",
        http_path = "/packages/{packageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackageVersion",
        input_schema = schemas.CreatePackageVersionInput,
        output_schema = schemas.CreatePackageVersionOutput,
        http_method = "PUT",
        http_path = "/packages/{packageName}/versions/{versionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = schemas.CreatePolicyInput,
        output_schema = schemas.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyVersion",
        input_schema = schemas.CreatePolicyVersionInput,
        output_schema = schemas.CreatePolicyVersionOutput,
        http_method = "POST",
        http_path = "/policies/{policyName}/version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProvisioningClaim(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningClaim",
        input_schema = schemas.CreateProvisioningClaimInput,
        output_schema = schemas.CreateProvisioningClaimOutput,
        http_method = "POST",
        http_path = "/provisioning-templates/{templateName}/provisioning-claim",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningTemplate",
        input_schema = schemas.CreateProvisioningTemplateInput,
        output_schema = schemas.CreateProvisioningTemplateOutput,
        http_method = "POST",
        http_path = "/provisioning-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProvisioningTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningTemplateVersion",
        input_schema = schemas.CreateProvisioningTemplateVersionInput,
        output_schema = schemas.CreateProvisioningTemplateVersionOutput,
        http_method = "POST",
        http_path = "/provisioning-templates/{templateName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoleAlias",
        input_schema = schemas.CreateRoleAliasInput,
        output_schema = schemas.CreateRoleAliasOutput,
        http_method = "POST",
        http_path = "/role-aliases/{roleAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledAudit",
        input_schema = schemas.CreateScheduledAuditInput,
        output_schema = schemas.CreateScheduledAuditOutput,
        http_method = "POST",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityProfile",
        input_schema = schemas.CreateSecurityProfileInput,
        output_schema = schemas.CreateSecurityProfileOutput,
        http_method = "POST",
        http_path = "/security-profiles/{securityProfileName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateStream",
        input_schema = schemas.CreateStreamInput,
        output_schema = schemas.CreateStreamOutput,
        http_method = "POST",
        http_path = "/streams/{streamId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThing(input, options)
    return self:invokeOperation(input, {
        name = "CreateThing",
        input_schema = schemas.CreateThingInput,
        output_schema = schemas.CreateThingOutput,
        http_method = "POST",
        http_path = "/things/{thingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateThingGroup",
        input_schema = schemas.CreateThingGroupInput,
        output_schema = schemas.CreateThingGroupOutput,
        http_method = "POST",
        http_path = "/thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createThingType(input, options)
    return self:invokeOperation(input, {
        name = "CreateThingType",
        input_schema = schemas.CreateThingTypeInput,
        output_schema = schemas.CreateThingTypeOutput,
        http_method = "POST",
        http_path = "/thing-types/{thingTypeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopicRule",
        input_schema = schemas.CreateTopicRuleInput,
        output_schema = schemas.CreateTopicRuleOutput,
        http_method = "POST",
        http_path = "/rules/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopicRuleDestination",
        input_schema = schemas.CreateTopicRuleDestinationInput,
        output_schema = schemas.CreateTopicRuleDestinationOutput,
        http_method = "POST",
        http_path = "/destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountAuditConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAuditConfiguration",
        input_schema = schemas.DeleteAccountAuditConfigurationInput,
        output_schema = schemas.DeleteAccountAuditConfigurationOutput,
        http_method = "DELETE",
        http_path = "/audit/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuditSuppression",
        input_schema = schemas.DeleteAuditSuppressionInput,
        output_schema = schemas.DeleteAuditSuppressionOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthorizer",
        input_schema = schemas.DeleteAuthorizerInput,
        output_schema = schemas.DeleteAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/authorizer/{authorizerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillingGroup",
        input_schema = schemas.DeleteBillingGroupInput,
        output_schema = schemas.DeleteBillingGroupOutput,
        http_method = "DELETE",
        http_path = "/billing-groups/{billingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCACertificate",
        input_schema = schemas.DeleteCACertificateInput,
        output_schema = schemas.DeleteCACertificateOutput,
        http_method = "DELETE",
        http_path = "/cacertificate/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = schemas.DeleteCertificateInput,
        output_schema = schemas.DeleteCertificateOutput,
        http_method = "DELETE",
        http_path = "/certificates/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificateProvider",
        input_schema = schemas.DeleteCertificateProviderInput,
        output_schema = schemas.DeleteCertificateProviderOutput,
        http_method = "DELETE",
        http_path = "/certificate-providers/{certificateProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCommand(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCommand",
        input_schema = schemas.DeleteCommandInput,
        output_schema = schemas.DeleteCommandOutput,
        http_method = "DELETE",
        http_path = "/commands/{commandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCommandExecution",
        input_schema = schemas.DeleteCommandExecutionInput,
        output_schema = schemas.DeleteCommandExecutionOutput,
        http_method = "DELETE",
        http_path = "/command-executions/{executionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomMetric",
        input_schema = schemas.DeleteCustomMetricInput,
        output_schema = schemas.DeleteCustomMetricOutput,
        http_method = "DELETE",
        http_path = "/custom-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDimension(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDimension",
        input_schema = schemas.DeleteDimensionInput,
        output_schema = schemas.DeleteDimensionOutput,
        http_method = "DELETE",
        http_path = "/dimensions/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainConfiguration",
        input_schema = schemas.DeleteDomainConfigurationInput,
        output_schema = schemas.DeleteDomainConfigurationOutput,
        http_method = "DELETE",
        http_path = "/domainConfigurations/{domainConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDynamicThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDynamicThingGroup",
        input_schema = schemas.DeleteDynamicThingGroupInput,
        output_schema = schemas.DeleteDynamicThingGroupOutput,
        http_method = "DELETE",
        http_path = "/dynamic-thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleetMetric",
        input_schema = schemas.DeleteFleetMetricInput,
        output_schema = schemas.DeleteFleetMetricOutput,
        http_method = "DELETE",
        http_path = "/fleet-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = schemas.DeleteJobInput,
        output_schema = schemas.DeleteJobOutput,
        http_method = "DELETE",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobExecution",
        input_schema = schemas.DeleteJobExecutionInput,
        output_schema = schemas.DeleteJobExecutionOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTemplate",
        input_schema = schemas.DeleteJobTemplateInput,
        output_schema = schemas.DeleteJobTemplateOutput,
        http_method = "DELETE",
        http_path = "/job-templates/{jobTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMitigationAction",
        input_schema = schemas.DeleteMitigationActionInput,
        output_schema = schemas.DeleteMitigationActionOutput,
        http_method = "DELETE",
        http_path = "/mitigationactions/actions/{actionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOTAUpdate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOTAUpdate",
        input_schema = schemas.DeleteOTAUpdateInput,
        output_schema = schemas.DeleteOTAUpdateOutput,
        http_method = "DELETE",
        http_path = "/otaUpdates/{otaUpdateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = schemas.DeletePackageInput,
        output_schema = schemas.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/packages/{packageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackageVersion",
        input_schema = schemas.DeletePackageVersionInput,
        output_schema = schemas.DeletePackageVersionOutput,
        http_method = "DELETE",
        http_path = "/packages/{packageName}/versions/{versionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
        http_method = "DELETE",
        http_path = "/policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyVersion",
        input_schema = schemas.DeletePolicyVersionInput,
        output_schema = schemas.DeletePolicyVersionOutput,
        http_method = "DELETE",
        http_path = "/policies/{policyName}/version/{policyVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningTemplate",
        input_schema = schemas.DeleteProvisioningTemplateInput,
        output_schema = schemas.DeleteProvisioningTemplateOutput,
        http_method = "DELETE",
        http_path = "/provisioning-templates/{templateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProvisioningTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningTemplateVersion",
        input_schema = schemas.DeleteProvisioningTemplateVersionInput,
        output_schema = schemas.DeleteProvisioningTemplateVersionOutput,
        http_method = "DELETE",
        http_path = "/provisioning-templates/{templateName}/versions/{versionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRegistrationCode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistrationCode",
        input_schema = schemas.DeleteRegistrationCodeInput,
        output_schema = schemas.DeleteRegistrationCodeOutput,
        http_method = "DELETE",
        http_path = "/registrationcode",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoleAlias",
        input_schema = schemas.DeleteRoleAliasInput,
        output_schema = schemas.DeleteRoleAliasOutput,
        http_method = "DELETE",
        http_path = "/role-aliases/{roleAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAudit",
        input_schema = schemas.DeleteScheduledAuditInput,
        output_schema = schemas.DeleteScheduledAuditOutput,
        http_method = "DELETE",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityProfile",
        input_schema = schemas.DeleteSecurityProfileInput,
        output_schema = schemas.DeleteSecurityProfileOutput,
        http_method = "DELETE",
        http_path = "/security-profiles/{securityProfileName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStream",
        input_schema = schemas.DeleteStreamInput,
        output_schema = schemas.DeleteStreamOutput,
        http_method = "DELETE",
        http_path = "/streams/{streamId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThing(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThing",
        input_schema = schemas.DeleteThingInput,
        output_schema = schemas.DeleteThingOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThingGroup",
        input_schema = schemas.DeleteThingGroupInput,
        output_schema = schemas.DeleteThingGroupOutput,
        http_method = "DELETE",
        http_path = "/thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteThingType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThingType",
        input_schema = schemas.DeleteThingTypeInput,
        output_schema = schemas.DeleteThingTypeOutput,
        http_method = "DELETE",
        http_path = "/thing-types/{thingTypeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopicRule",
        input_schema = schemas.DeleteTopicRuleInput,
        output_schema = schemas.DeleteTopicRuleOutput,
        http_method = "DELETE",
        http_path = "/rules/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopicRuleDestination",
        input_schema = schemas.DeleteTopicRuleDestinationInput,
        output_schema = schemas.DeleteTopicRuleDestinationOutput,
        http_method = "DELETE",
        http_path = "/destinations/{arn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteV2LoggingLevel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteV2LoggingLevel",
        input_schema = schemas.DeleteV2LoggingLevelInput,
        output_schema = schemas.DeleteV2LoggingLevelOutput,
        http_method = "DELETE",
        http_path = "/v2LoggingLevel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprecateThingType(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateThingType",
        input_schema = schemas.DeprecateThingTypeInput,
        output_schema = schemas.DeprecateThingTypeOutput,
        http_method = "POST",
        http_path = "/thing-types/{thingTypeName}/deprecate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAuditConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAuditConfiguration",
        input_schema = schemas.DescribeAccountAuditConfigurationInput,
        output_schema = schemas.DescribeAccountAuditConfigurationOutput,
        http_method = "GET",
        http_path = "/audit/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuditFinding(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditFinding",
        input_schema = schemas.DescribeAuditFindingInput,
        output_schema = schemas.DescribeAuditFindingOutput,
        http_method = "GET",
        http_path = "/audit/findings/{findingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuditMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditMitigationActionsTask",
        input_schema = schemas.DescribeAuditMitigationActionsTaskInput,
        output_schema = schemas.DescribeAuditMitigationActionsTaskOutput,
        http_method = "GET",
        http_path = "/audit/mitigationactions/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditSuppression",
        input_schema = schemas.DescribeAuditSuppressionInput,
        output_schema = schemas.DescribeAuditSuppressionOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuditTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditTask",
        input_schema = schemas.DescribeAuditTaskInput,
        output_schema = schemas.DescribeAuditTaskOutput,
        http_method = "GET",
        http_path = "/audit/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuthorizer",
        input_schema = schemas.DescribeAuthorizerInput,
        output_schema = schemas.DescribeAuthorizerOutput,
        http_method = "GET",
        http_path = "/authorizer/{authorizerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBillingGroup",
        input_schema = schemas.DescribeBillingGroupInput,
        output_schema = schemas.DescribeBillingGroupOutput,
        http_method = "GET",
        http_path = "/billing-groups/{billingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCACertificate",
        input_schema = schemas.DescribeCACertificateInput,
        output_schema = schemas.DescribeCACertificateOutput,
        http_method = "GET",
        http_path = "/cacertificate/{certificateId}",
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
        http_method = "GET",
        http_path = "/certificates/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificateProvider",
        input_schema = schemas.DescribeCertificateProviderInput,
        output_schema = schemas.DescribeCertificateProviderOutput,
        http_method = "GET",
        http_path = "/certificate-providers/{certificateProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomMetric",
        input_schema = schemas.DescribeCustomMetricInput,
        output_schema = schemas.DescribeCustomMetricOutput,
        http_method = "GET",
        http_path = "/custom-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDefaultAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultAuthorizer",
        input_schema = schemas.DescribeDefaultAuthorizerInput,
        output_schema = schemas.DescribeDefaultAuthorizerOutput,
        http_method = "GET",
        http_path = "/default-authorizer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDetectMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetectMitigationActionsTask",
        input_schema = schemas.DescribeDetectMitigationActionsTaskInput,
        output_schema = schemas.DescribeDetectMitigationActionsTaskOutput,
        http_method = "GET",
        http_path = "/detect/mitigationactions/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDimension(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDimension",
        input_schema = schemas.DescribeDimensionInput,
        output_schema = schemas.DescribeDimensionOutput,
        http_method = "GET",
        http_path = "/dimensions/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainConfiguration",
        input_schema = schemas.DescribeDomainConfigurationInput,
        output_schema = schemas.DescribeDomainConfigurationOutput,
        http_method = "GET",
        http_path = "/domainConfigurations/{domainConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEncryptionConfiguration",
        input_schema = schemas.DescribeEncryptionConfigurationInput,
        output_schema = schemas.DescribeEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/encryption-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoint",
        input_schema = schemas.DescribeEndpointInput,
        output_schema = schemas.DescribeEndpointOutput,
        http_method = "GET",
        http_path = "/endpoint",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventConfigurations",
        input_schema = schemas.DescribeEventConfigurationsInput,
        output_schema = schemas.DescribeEventConfigurationsOutput,
        http_method = "GET",
        http_path = "/event-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetMetric",
        input_schema = schemas.DescribeFleetMetricInput,
        output_schema = schemas.DescribeFleetMetricOutput,
        http_method = "GET",
        http_path = "/fleet-metric/{metricName}",
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
        http_method = "GET",
        http_path = "/indices/{indexName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = schemas.DescribeJobInput,
        output_schema = schemas.DescribeJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobExecution",
        input_schema = schemas.DescribeJobExecutionInput,
        output_schema = schemas.DescribeJobExecutionOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobTemplate",
        input_schema = schemas.DescribeJobTemplateInput,
        output_schema = schemas.DescribeJobTemplateOutput,
        http_method = "GET",
        http_path = "/job-templates/{jobTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeManagedJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedJobTemplate",
        input_schema = schemas.DescribeManagedJobTemplateInput,
        output_schema = schemas.DescribeManagedJobTemplateOutput,
        http_method = "GET",
        http_path = "/managed-job-templates/{templateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMitigationAction",
        input_schema = schemas.DescribeMitigationActionInput,
        output_schema = schemas.DescribeMitigationActionOutput,
        http_method = "GET",
        http_path = "/mitigationactions/actions/{actionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningTemplate",
        input_schema = schemas.DescribeProvisioningTemplateInput,
        output_schema = schemas.DescribeProvisioningTemplateOutput,
        http_method = "GET",
        http_path = "/provisioning-templates/{templateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProvisioningTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningTemplateVersion",
        input_schema = schemas.DescribeProvisioningTemplateVersionInput,
        output_schema = schemas.DescribeProvisioningTemplateVersionOutput,
        http_method = "GET",
        http_path = "/provisioning-templates/{templateName}/versions/{versionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoleAlias",
        input_schema = schemas.DescribeRoleAliasInput,
        output_schema = schemas.DescribeRoleAliasOutput,
        http_method = "GET",
        http_path = "/role-aliases/{roleAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledAudit",
        input_schema = schemas.DescribeScheduledAuditInput,
        output_schema = schemas.DescribeScheduledAuditOutput,
        http_method = "GET",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityProfile",
        input_schema = schemas.DescribeSecurityProfileInput,
        output_schema = schemas.DescribeSecurityProfileOutput,
        http_method = "GET",
        http_path = "/security-profiles/{securityProfileName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStream(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStream",
        input_schema = schemas.DescribeStreamInput,
        output_schema = schemas.DescribeStreamOutput,
        http_method = "GET",
        http_path = "/streams/{streamId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThing(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThing",
        input_schema = schemas.DescribeThingInput,
        output_schema = schemas.DescribeThingOutput,
        http_method = "GET",
        http_path = "/things/{thingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThingGroup",
        input_schema = schemas.DescribeThingGroupInput,
        output_schema = schemas.DescribeThingGroupOutput,
        http_method = "GET",
        http_path = "/thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThingRegistrationTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThingRegistrationTask",
        input_schema = schemas.DescribeThingRegistrationTaskInput,
        output_schema = schemas.DescribeThingRegistrationTaskOutput,
        http_method = "GET",
        http_path = "/thing-registration-tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeThingType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThingType",
        input_schema = schemas.DescribeThingTypeInput,
        output_schema = schemas.DescribeThingTypeOutput,
        http_method = "GET",
        http_path = "/thing-types/{thingTypeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPolicy",
        input_schema = schemas.DetachPolicyInput,
        output_schema = schemas.DetachPolicyOutput,
        http_method = "POST",
        http_path = "/target-policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachPrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPrincipalPolicy",
        input_schema = schemas.DetachPrincipalPolicyInput,
        output_schema = schemas.DetachPrincipalPolicyOutput,
        http_method = "DELETE",
        http_path = "/principal-policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DetachSecurityProfile",
        input_schema = schemas.DetachSecurityProfileInput,
        output_schema = schemas.DetachSecurityProfileOutput,
        http_method = "DELETE",
        http_path = "/security-profiles/{securityProfileName}/targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachThingPrincipal(input, options)
    return self:invokeOperation(input, {
        name = "DetachThingPrincipal",
        input_schema = schemas.DetachThingPrincipalInput,
        output_schema = schemas.DetachThingPrincipalOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}/principals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "DisableTopicRule",
        input_schema = schemas.DisableTopicRuleInput,
        output_schema = schemas.DisableTopicRuleOutput,
        http_method = "POST",
        http_path = "/rules/{ruleName}/disable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSbomFromPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSbomFromPackageVersion",
        input_schema = schemas.DisassociateSbomFromPackageVersionInput,
        output_schema = schemas.DisassociateSbomFromPackageVersionOutput,
        http_method = "DELETE",
        http_path = "/packages/{packageName}/versions/{versionName}/sbom",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "EnableTopicRule",
        input_schema = schemas.EnableTopicRuleInput,
        output_schema = schemas.EnableTopicRuleOutput,
        http_method = "POST",
        http_path = "/rules/{ruleName}/enable",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBehaviorModelTrainingSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetBehaviorModelTrainingSummaries",
        input_schema = schemas.GetBehaviorModelTrainingSummariesInput,
        output_schema = schemas.GetBehaviorModelTrainingSummariesOutput,
        http_method = "GET",
        http_path = "/behavior-model-training/summaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBucketsAggregation(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketsAggregation",
        input_schema = schemas.GetBucketsAggregationInput,
        output_schema = schemas.GetBucketsAggregationOutput,
        http_method = "POST",
        http_path = "/indices/buckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCardinality(input, options)
    return self:invokeOperation(input, {
        name = "GetCardinality",
        input_schema = schemas.GetCardinalityInput,
        output_schema = schemas.GetCardinalityOutput,
        http_method = "POST",
        http_path = "/indices/cardinality",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommand(input, options)
    return self:invokeOperation(input, {
        name = "GetCommand",
        input_schema = schemas.GetCommandInput,
        output_schema = schemas.GetCommandOutput,
        http_method = "GET",
        http_path = "/commands/{commandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetCommandExecution",
        input_schema = schemas.GetCommandExecutionInput,
        output_schema = schemas.GetCommandExecutionOutput,
        http_method = "GET",
        http_path = "/command-executions/{executionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEffectivePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetEffectivePolicies",
        input_schema = schemas.GetEffectivePoliciesInput,
        output_schema = schemas.GetEffectivePoliciesOutput,
        http_method = "POST",
        http_path = "/effective-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIndexingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetIndexingConfiguration",
        input_schema = schemas.GetIndexingConfigurationInput,
        output_schema = schemas.GetIndexingConfigurationOutput,
        http_method = "GET",
        http_path = "/indexing/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetJobDocument",
        input_schema = schemas.GetJobDocumentInput,
        output_schema = schemas.GetJobDocumentOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}/job-document",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggingOptions",
        input_schema = schemas.GetLoggingOptionsInput,
        output_schema = schemas.GetLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/loggingOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOTAUpdate(input, options)
    return self:invokeOperation(input, {
        name = "GetOTAUpdate",
        input_schema = schemas.GetOTAUpdateInput,
        output_schema = schemas.GetOTAUpdateOutput,
        http_method = "GET",
        http_path = "/otaUpdates/{otaUpdateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPackage(input, options)
    return self:invokeOperation(input, {
        name = "GetPackage",
        input_schema = schemas.GetPackageInput,
        output_schema = schemas.GetPackageOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPackageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageConfiguration",
        input_schema = schemas.GetPackageConfigurationInput,
        output_schema = schemas.GetPackageConfigurationOutput,
        http_method = "GET",
        http_path = "/package-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersion",
        input_schema = schemas.GetPackageVersionInput,
        output_schema = schemas.GetPackageVersionOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}/versions/{versionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPercentiles(input, options)
    return self:invokeOperation(input, {
        name = "GetPercentiles",
        input_schema = schemas.GetPercentilesInput,
        output_schema = schemas.GetPercentilesOutput,
        http_method = "POST",
        http_path = "/indices/percentiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
        http_method = "GET",
        http_path = "/policies/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyVersion",
        input_schema = schemas.GetPolicyVersionInput,
        output_schema = schemas.GetPolicyVersionOutput,
        http_method = "GET",
        http_path = "/policies/{policyName}/version/{policyVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegistrationCode(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistrationCode",
        input_schema = schemas.GetRegistrationCodeInput,
        output_schema = schemas.GetRegistrationCodeOutput,
        http_method = "GET",
        http_path = "/registrationcode",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetStatistics",
        input_schema = schemas.GetStatisticsInput,
        output_schema = schemas.GetStatisticsOutput,
        http_method = "POST",
        http_path = "/indices/statistics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getThingConnectivityData(input, options)
    return self:invokeOperation(input, {
        name = "GetThingConnectivityData",
        input_schema = schemas.GetThingConnectivityDataInput,
        output_schema = schemas.GetThingConnectivityDataOutput,
        http_method = "POST",
        http_path = "/things/{thingName}/connectivity-data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "GetTopicRule",
        input_schema = schemas.GetTopicRuleInput,
        output_schema = schemas.GetTopicRuleOutput,
        http_method = "GET",
        http_path = "/rules/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetTopicRuleDestination",
        input_schema = schemas.GetTopicRuleDestinationInput,
        output_schema = schemas.GetTopicRuleDestinationOutput,
        http_method = "GET",
        http_path = "/destinations/{arn+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getV2LoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetV2LoggingOptions",
        input_schema = schemas.GetV2LoggingOptionsInput,
        output_schema = schemas.GetV2LoggingOptionsOutput,
        http_method = "GET",
        http_path = "/v2LoggingOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActiveViolations(input, options)
    return self:invokeOperation(input, {
        name = "ListActiveViolations",
        input_schema = schemas.ListActiveViolationsInput,
        output_schema = schemas.ListActiveViolationsOutput,
        http_method = "GET",
        http_path = "/active-violations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedPolicies",
        input_schema = schemas.ListAttachedPoliciesInput,
        output_schema = schemas.ListAttachedPoliciesOutput,
        http_method = "POST",
        http_path = "/attached-policies/{target}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuditFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditFindings",
        input_schema = schemas.ListAuditFindingsInput,
        output_schema = schemas.ListAuditFindingsOutput,
        http_method = "POST",
        http_path = "/audit/findings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuditMitigationActionsExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditMitigationActionsExecutions",
        input_schema = schemas.ListAuditMitigationActionsExecutionsInput,
        output_schema = schemas.ListAuditMitigationActionsExecutionsOutput,
        http_method = "GET",
        http_path = "/audit/mitigationactions/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuditMitigationActionsTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditMitigationActionsTasks",
        input_schema = schemas.ListAuditMitigationActionsTasksInput,
        output_schema = schemas.ListAuditMitigationActionsTasksOutput,
        http_method = "GET",
        http_path = "/audit/mitigationactions/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuditSuppressions(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditSuppressions",
        input_schema = schemas.ListAuditSuppressionsInput,
        output_schema = schemas.ListAuditSuppressionsOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuditTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditTasks",
        input_schema = schemas.ListAuditTasksInput,
        output_schema = schemas.ListAuditTasksOutput,
        http_method = "GET",
        http_path = "/audit/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuthorizers(input, options)
    return self:invokeOperation(input, {
        name = "ListAuthorizers",
        input_schema = schemas.ListAuthorizersInput,
        output_schema = schemas.ListAuthorizersOutput,
        http_method = "GET",
        http_path = "/authorizers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListBillingGroups",
        input_schema = schemas.ListBillingGroupsInput,
        output_schema = schemas.ListBillingGroupsOutput,
        http_method = "GET",
        http_path = "/billing-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCACertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCACertificates",
        input_schema = schemas.ListCACertificatesInput,
        output_schema = schemas.ListCACertificatesOutput,
        http_method = "GET",
        http_path = "/cacertificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCertificateProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificateProviders",
        input_schema = schemas.ListCertificateProvidersInput,
        output_schema = schemas.ListCertificateProvidersOutput,
        http_method = "GET",
        http_path = "/certificate-providers",
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
        http_method = "GET",
        http_path = "/certificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCertificatesByCA(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificatesByCA",
        input_schema = schemas.ListCertificatesByCAInput,
        output_schema = schemas.ListCertificatesByCAOutput,
        http_method = "GET",
        http_path = "/certificates-by-ca/{caCertificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCommandExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListCommandExecutions",
        input_schema = schemas.ListCommandExecutionsInput,
        output_schema = schemas.ListCommandExecutionsOutput,
        http_method = "POST",
        http_path = "/command-executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCommands(input, options)
    return self:invokeOperation(input, {
        name = "ListCommands",
        input_schema = schemas.ListCommandsInput,
        output_schema = schemas.ListCommandsOutput,
        http_method = "GET",
        http_path = "/commands",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomMetrics",
        input_schema = schemas.ListCustomMetricsInput,
        output_schema = schemas.ListCustomMetricsOutput,
        http_method = "GET",
        http_path = "/custom-metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDetectMitigationActionsExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectMitigationActionsExecutions",
        input_schema = schemas.ListDetectMitigationActionsExecutionsInput,
        output_schema = schemas.ListDetectMitigationActionsExecutionsOutput,
        http_method = "GET",
        http_path = "/detect/mitigationactions/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDetectMitigationActionsTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectMitigationActionsTasks",
        input_schema = schemas.ListDetectMitigationActionsTasksInput,
        output_schema = schemas.ListDetectMitigationActionsTasksOutput,
        http_method = "GET",
        http_path = "/detect/mitigationactions/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDimensions(input, options)
    return self:invokeOperation(input, {
        name = "ListDimensions",
        input_schema = schemas.ListDimensionsInput,
        output_schema = schemas.ListDimensionsOutput,
        http_method = "GET",
        http_path = "/dimensions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainConfigurations",
        input_schema = schemas.ListDomainConfigurationsInput,
        output_schema = schemas.ListDomainConfigurationsOutput,
        http_method = "GET",
        http_path = "/domainConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFleetMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListFleetMetrics",
        input_schema = schemas.ListFleetMetricsInput,
        output_schema = schemas.ListFleetMetricsOutput,
        http_method = "GET",
        http_path = "/fleet-metrics",
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
        http_method = "GET",
        http_path = "/indices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobExecutionsForJob(input, options)
    return self:invokeOperation(input, {
        name = "ListJobExecutionsForJob",
        input_schema = schemas.ListJobExecutionsForJobInput,
        output_schema = schemas.ListJobExecutionsForJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}/things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobExecutionsForThing(input, options)
    return self:invokeOperation(input, {
        name = "ListJobExecutionsForThing",
        input_schema = schemas.ListJobExecutionsForThingInput,
        output_schema = schemas.ListJobExecutionsForThingOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListJobTemplates",
        input_schema = schemas.ListJobTemplatesInput,
        output_schema = schemas.ListJobTemplatesOutput,
        http_method = "GET",
        http_path = "/job-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedJobTemplates",
        input_schema = schemas.ListManagedJobTemplatesInput,
        output_schema = schemas.ListManagedJobTemplatesOutput,
        http_method = "GET",
        http_path = "/managed-job-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetricValues(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricValues",
        input_schema = schemas.ListMetricValuesInput,
        output_schema = schemas.ListMetricValuesOutput,
        http_method = "GET",
        http_path = "/metric-values",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMitigationActions(input, options)
    return self:invokeOperation(input, {
        name = "ListMitigationActions",
        input_schema = schemas.ListMitigationActionsInput,
        output_schema = schemas.ListMitigationActionsOutput,
        http_method = "GET",
        http_path = "/mitigationactions/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOTAUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListOTAUpdates",
        input_schema = schemas.ListOTAUpdatesInput,
        output_schema = schemas.ListOTAUpdatesOutput,
        http_method = "GET",
        http_path = "/otaUpdates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOutgoingCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListOutgoingCertificates",
        input_schema = schemas.ListOutgoingCertificatesInput,
        output_schema = schemas.ListOutgoingCertificatesOutput,
        http_method = "GET",
        http_path = "/certificates-out-going",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListPackages",
        input_schema = schemas.ListPackagesInput,
        output_schema = schemas.ListPackagesOutput,
        http_method = "GET",
        http_path = "/packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackageVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageVersions",
        input_schema = schemas.ListPackageVersionsInput,
        output_schema = schemas.ListPackageVersionsOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = schemas.ListPoliciesInput,
        output_schema = schemas.ListPoliciesOutput,
        http_method = "GET",
        http_path = "/policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyPrincipals(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyPrincipals",
        input_schema = schemas.ListPolicyPrincipalsInput,
        output_schema = schemas.ListPolicyPrincipalsOutput,
        http_method = "GET",
        http_path = "/policy-principals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyVersions",
        input_schema = schemas.ListPolicyVersionsInput,
        output_schema = schemas.ListPolicyVersionsOutput,
        http_method = "GET",
        http_path = "/policies/{policyName}/version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrincipalPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalPolicies",
        input_schema = schemas.ListPrincipalPoliciesInput,
        output_schema = schemas.ListPrincipalPoliciesOutput,
        http_method = "GET",
        http_path = "/principal-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrincipalThings(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalThings",
        input_schema = schemas.ListPrincipalThingsInput,
        output_schema = schemas.ListPrincipalThingsOutput,
        http_method = "GET",
        http_path = "/principals/things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrincipalThingsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalThingsV2",
        input_schema = schemas.ListPrincipalThingsV2Input,
        output_schema = schemas.ListPrincipalThingsV2Output,
        http_method = "GET",
        http_path = "/principals/things-v2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisioningTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningTemplates",
        input_schema = schemas.ListProvisioningTemplatesInput,
        output_schema = schemas.ListProvisioningTemplatesOutput,
        http_method = "GET",
        http_path = "/provisioning-templates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisioningTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningTemplateVersions",
        input_schema = schemas.ListProvisioningTemplateVersionsInput,
        output_schema = schemas.ListProvisioningTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/provisioning-templates/{templateName}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRelatedResourcesForAuditFinding(input, options)
    return self:invokeOperation(input, {
        name = "ListRelatedResourcesForAuditFinding",
        input_schema = schemas.ListRelatedResourcesForAuditFindingInput,
        output_schema = schemas.ListRelatedResourcesForAuditFindingOutput,
        http_method = "GET",
        http_path = "/audit/relatedResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoleAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListRoleAliases",
        input_schema = schemas.ListRoleAliasesInput,
        output_schema = schemas.ListRoleAliasesOutput,
        http_method = "GET",
        http_path = "/role-aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSbomValidationResults(input, options)
    return self:invokeOperation(input, {
        name = "ListSbomValidationResults",
        input_schema = schemas.ListSbomValidationResultsInput,
        output_schema = schemas.ListSbomValidationResultsOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}/versions/{versionName}/sbom-validation-results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScheduledAudits(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledAudits",
        input_schema = schemas.ListScheduledAuditsInput,
        output_schema = schemas.ListScheduledAuditsOutput,
        http_method = "GET",
        http_path = "/audit/scheduledaudits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfiles",
        input_schema = schemas.ListSecurityProfilesInput,
        output_schema = schemas.ListSecurityProfilesOutput,
        http_method = "GET",
        http_path = "/security-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityProfilesForTarget(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfilesForTarget",
        input_schema = schemas.ListSecurityProfilesForTargetInput,
        output_schema = schemas.ListSecurityProfilesForTargetOutput,
        http_method = "GET",
        http_path = "/security-profiles-for-target",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListStreams",
        input_schema = schemas.ListStreamsInput,
        output_schema = schemas.ListStreamsOutput,
        http_method = "GET",
        http_path = "/streams",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargetsForPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsForPolicy",
        input_schema = schemas.ListTargetsForPolicyInput,
        output_schema = schemas.ListTargetsForPolicyOutput,
        http_method = "POST",
        http_path = "/policy-targets/{policyName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargetsForSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsForSecurityProfile",
        input_schema = schemas.ListTargetsForSecurityProfileInput,
        output_schema = schemas.ListTargetsForSecurityProfileOutput,
        http_method = "GET",
        http_path = "/security-profiles/{securityProfileName}/targets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListThingGroups",
        input_schema = schemas.ListThingGroupsInput,
        output_schema = schemas.ListThingGroupsOutput,
        http_method = "GET",
        http_path = "/thing-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingGroupsForThing(input, options)
    return self:invokeOperation(input, {
        name = "ListThingGroupsForThing",
        input_schema = schemas.ListThingGroupsForThingInput,
        output_schema = schemas.ListThingGroupsForThingOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/thing-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingPrincipals(input, options)
    return self:invokeOperation(input, {
        name = "ListThingPrincipals",
        input_schema = schemas.ListThingPrincipalsInput,
        output_schema = schemas.ListThingPrincipalsOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/principals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingPrincipalsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListThingPrincipalsV2",
        input_schema = schemas.ListThingPrincipalsV2Input,
        output_schema = schemas.ListThingPrincipalsV2Output,
        http_method = "GET",
        http_path = "/things/{thingName}/principals-v2",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingRegistrationTaskReports(input, options)
    return self:invokeOperation(input, {
        name = "ListThingRegistrationTaskReports",
        input_schema = schemas.ListThingRegistrationTaskReportsInput,
        output_schema = schemas.ListThingRegistrationTaskReportsOutput,
        http_method = "GET",
        http_path = "/thing-registration-tasks/{taskId}/reports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingRegistrationTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListThingRegistrationTasks",
        input_schema = schemas.ListThingRegistrationTasksInput,
        output_schema = schemas.ListThingRegistrationTasksOutput,
        http_method = "GET",
        http_path = "/thing-registration-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThings(input, options)
    return self:invokeOperation(input, {
        name = "ListThings",
        input_schema = schemas.ListThingsInput,
        output_schema = schemas.ListThingsOutput,
        http_method = "GET",
        http_path = "/things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingsInBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListThingsInBillingGroup",
        input_schema = schemas.ListThingsInBillingGroupInput,
        output_schema = schemas.ListThingsInBillingGroupOutput,
        http_method = "GET",
        http_path = "/billing-groups/{billingGroupName}/things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingsInThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListThingsInThingGroup",
        input_schema = schemas.ListThingsInThingGroupInput,
        output_schema = schemas.ListThingsInThingGroupOutput,
        http_method = "GET",
        http_path = "/thing-groups/{thingGroupName}/things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listThingTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListThingTypes",
        input_schema = schemas.ListThingTypesInput,
        output_schema = schemas.ListThingTypesOutput,
        http_method = "GET",
        http_path = "/thing-types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTopicRuleDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicRuleDestinations",
        input_schema = schemas.ListTopicRuleDestinationsInput,
        output_schema = schemas.ListTopicRuleDestinationsOutput,
        http_method = "GET",
        http_path = "/destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTopicRules(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicRules",
        input_schema = schemas.ListTopicRulesInput,
        output_schema = schemas.ListTopicRulesOutput,
        http_method = "GET",
        http_path = "/rules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listV2LoggingLevels(input, options)
    return self:invokeOperation(input, {
        name = "ListV2LoggingLevels",
        input_schema = schemas.ListV2LoggingLevelsInput,
        output_schema = schemas.ListV2LoggingLevelsOutput,
        http_method = "GET",
        http_path = "/v2LoggingLevel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listViolationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListViolationEvents",
        input_schema = schemas.ListViolationEventsInput,
        output_schema = schemas.ListViolationEventsOutput,
        http_method = "GET",
        http_path = "/violation-events",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putVerificationStateOnViolation(input, options)
    return self:invokeOperation(input, {
        name = "PutVerificationStateOnViolation",
        input_schema = schemas.PutVerificationStateOnViolationInput,
        output_schema = schemas.PutVerificationStateOnViolationOutput,
        http_method = "POST",
        http_path = "/violations/verification-state/{violationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCACertificate",
        input_schema = schemas.RegisterCACertificateInput,
        output_schema = schemas.RegisterCACertificateOutput,
        http_method = "POST",
        http_path = "/cacertificate",
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
        http_path = "/certificate/register",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerCertificateWithoutCA(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCertificateWithoutCA",
        input_schema = schemas.RegisterCertificateWithoutCAInput,
        output_schema = schemas.RegisterCertificateWithoutCAOutput,
        http_method = "POST",
        http_path = "/certificate/register-no-ca",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerThing(input, options)
    return self:invokeOperation(input, {
        name = "RegisterThing",
        input_schema = schemas.RegisterThingInput,
        output_schema = schemas.RegisterThingOutput,
        http_method = "POST",
        http_path = "/things",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectCertificateTransfer(input, options)
    return self:invokeOperation(input, {
        name = "RejectCertificateTransfer",
        input_schema = schemas.RejectCertificateTransferInput,
        output_schema = schemas.RejectCertificateTransferOutput,
        http_method = "PATCH",
        http_path = "/reject-certificate-transfer/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeThingFromBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "RemoveThingFromBillingGroup",
        input_schema = schemas.RemoveThingFromBillingGroupInput,
        output_schema = schemas.RemoveThingFromBillingGroupOutput,
        http_method = "PUT",
        http_path = "/billing-groups/removeThingFromBillingGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeThingFromThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "RemoveThingFromThingGroup",
        input_schema = schemas.RemoveThingFromThingGroupInput,
        output_schema = schemas.RemoveThingFromThingGroupOutput,
        http_method = "PUT",
        http_path = "/thing-groups/removeThingFromThingGroup",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replaceTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceTopicRule",
        input_schema = schemas.ReplaceTopicRuleInput,
        output_schema = schemas.ReplaceTopicRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{ruleName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchIndex(input, options)
    return self:invokeOperation(input, {
        name = "SearchIndex",
        input_schema = schemas.SearchIndexInput,
        output_schema = schemas.SearchIndexOutput,
        http_method = "POST",
        http_path = "/indices/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultAuthorizer",
        input_schema = schemas.SetDefaultAuthorizerInput,
        output_schema = schemas.SetDefaultAuthorizerOutput,
        http_method = "POST",
        http_path = "/default-authorizer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultPolicyVersion",
        input_schema = schemas.SetDefaultPolicyVersionInput,
        output_schema = schemas.SetDefaultPolicyVersionOutput,
        http_method = "PATCH",
        http_path = "/policies/{policyName}/version/{policyVersionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "SetLoggingOptions",
        input_schema = schemas.SetLoggingOptionsInput,
        output_schema = schemas.SetLoggingOptionsOutput,
        http_method = "POST",
        http_path = "/loggingOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setV2LoggingLevel(input, options)
    return self:invokeOperation(input, {
        name = "SetV2LoggingLevel",
        input_schema = schemas.SetV2LoggingLevelInput,
        output_schema = schemas.SetV2LoggingLevelOutput,
        http_method = "POST",
        http_path = "/v2LoggingLevel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setV2LoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "SetV2LoggingOptions",
        input_schema = schemas.SetV2LoggingOptionsInput,
        output_schema = schemas.SetV2LoggingOptionsOutput,
        http_method = "POST",
        http_path = "/v2LoggingOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAuditMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "StartAuditMitigationActionsTask",
        input_schema = schemas.StartAuditMitigationActionsTaskInput,
        output_schema = schemas.StartAuditMitigationActionsTaskOutput,
        http_method = "POST",
        http_path = "/audit/mitigationactions/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDetectMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "StartDetectMitigationActionsTask",
        input_schema = schemas.StartDetectMitigationActionsTaskInput,
        output_schema = schemas.StartDetectMitigationActionsTaskOutput,
        http_method = "PUT",
        http_path = "/detect/mitigationactions/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOnDemandAuditTask(input, options)
    return self:invokeOperation(input, {
        name = "StartOnDemandAuditTask",
        input_schema = schemas.StartOnDemandAuditTaskInput,
        output_schema = schemas.StartOnDemandAuditTaskOutput,
        http_method = "POST",
        http_path = "/audit/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startThingRegistrationTask(input, options)
    return self:invokeOperation(input, {
        name = "StartThingRegistrationTask",
        input_schema = schemas.StartThingRegistrationTaskInput,
        output_schema = schemas.StartThingRegistrationTaskOutput,
        http_method = "POST",
        http_path = "/thing-registration-tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopThingRegistrationTask(input, options)
    return self:invokeOperation(input, {
        name = "StopThingRegistrationTask",
        input_schema = schemas.StopThingRegistrationTaskInput,
        output_schema = schemas.StopThingRegistrationTaskOutput,
        http_method = "PUT",
        http_path = "/thing-registration-tasks/{taskId}/cancel",
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
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "TestAuthorization",
        input_schema = schemas.TestAuthorizationInput,
        output_schema = schemas.TestAuthorizationOutput,
        http_method = "POST",
        http_path = "/test-authorization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testInvokeAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "TestInvokeAuthorizer",
        input_schema = schemas.TestInvokeAuthorizerInput,
        output_schema = schemas.TestInvokeAuthorizerOutput,
        http_method = "POST",
        http_path = "/authorizer/{authorizerName}/test",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:transferCertificate(input, options)
    return self:invokeOperation(input, {
        name = "TransferCertificate",
        input_schema = schemas.TransferCertificateInput,
        output_schema = schemas.TransferCertificateOutput,
        http_method = "PATCH",
        http_path = "/transfer-certificate/{certificateId}",
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
        http_path = "/untag",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccountAuditConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountAuditConfiguration",
        input_schema = schemas.UpdateAccountAuditConfigurationInput,
        output_schema = schemas.UpdateAccountAuditConfigurationOutput,
        http_method = "PATCH",
        http_path = "/audit/configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuditSuppression",
        input_schema = schemas.UpdateAuditSuppressionInput,
        output_schema = schemas.UpdateAuditSuppressionOutput,
        http_method = "PATCH",
        http_path = "/audit/suppressions/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthorizer",
        input_schema = schemas.UpdateAuthorizerInput,
        output_schema = schemas.UpdateAuthorizerOutput,
        http_method = "PUT",
        http_path = "/authorizer/{authorizerName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillingGroup",
        input_schema = schemas.UpdateBillingGroupInput,
        output_schema = schemas.UpdateBillingGroupOutput,
        http_method = "PATCH",
        http_path = "/billing-groups/{billingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCACertificate",
        input_schema = schemas.UpdateCACertificateInput,
        output_schema = schemas.UpdateCACertificateOutput,
        http_method = "PUT",
        http_path = "/cacertificate/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificate",
        input_schema = schemas.UpdateCertificateInput,
        output_schema = schemas.UpdateCertificateOutput,
        http_method = "PUT",
        http_path = "/certificates/{certificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificateProvider",
        input_schema = schemas.UpdateCertificateProviderInput,
        output_schema = schemas.UpdateCertificateProviderOutput,
        http_method = "PUT",
        http_path = "/certificate-providers/{certificateProviderName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCommand(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCommand",
        input_schema = schemas.UpdateCommandInput,
        output_schema = schemas.UpdateCommandOutput,
        http_method = "PATCH",
        http_path = "/commands/{commandId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomMetric",
        input_schema = schemas.UpdateCustomMetricInput,
        output_schema = schemas.UpdateCustomMetricOutput,
        http_method = "PATCH",
        http_path = "/custom-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDimension(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDimension",
        input_schema = schemas.UpdateDimensionInput,
        output_schema = schemas.UpdateDimensionOutput,
        http_method = "PATCH",
        http_path = "/dimensions/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainConfiguration",
        input_schema = schemas.UpdateDomainConfigurationInput,
        output_schema = schemas.UpdateDomainConfigurationOutput,
        http_method = "PUT",
        http_path = "/domainConfigurations/{domainConfigurationName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDynamicThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDynamicThingGroup",
        input_schema = schemas.UpdateDynamicThingGroupInput,
        output_schema = schemas.UpdateDynamicThingGroupOutput,
        http_method = "PATCH",
        http_path = "/dynamic-thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEncryptionConfiguration",
        input_schema = schemas.UpdateEncryptionConfigurationInput,
        output_schema = schemas.UpdateEncryptionConfigurationOutput,
        http_method = "PATCH",
        http_path = "/encryption-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventConfigurations",
        input_schema = schemas.UpdateEventConfigurationsInput,
        output_schema = schemas.UpdateEventConfigurationsOutput,
        http_method = "PATCH",
        http_path = "/event-configurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetMetric",
        input_schema = schemas.UpdateFleetMetricInput,
        output_schema = schemas.UpdateFleetMetricOutput,
        http_method = "PATCH",
        http_path = "/fleet-metric/{metricName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIndexingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndexingConfiguration",
        input_schema = schemas.UpdateIndexingConfigurationInput,
        output_schema = schemas.UpdateIndexingConfigurationOutput,
        http_method = "POST",
        http_path = "/indexing/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJob",
        input_schema = schemas.UpdateJobInput,
        output_schema = schemas.UpdateJobOutput,
        http_method = "PATCH",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMitigationAction",
        input_schema = schemas.UpdateMitigationActionInput,
        output_schema = schemas.UpdateMitigationActionOutput,
        http_method = "PATCH",
        http_path = "/mitigationactions/actions/{actionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackage",
        input_schema = schemas.UpdatePackageInput,
        output_schema = schemas.UpdatePackageOutput,
        http_method = "PATCH",
        http_path = "/packages/{packageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageConfiguration",
        input_schema = schemas.UpdatePackageConfigurationInput,
        output_schema = schemas.UpdatePackageConfigurationOutput,
        http_method = "PATCH",
        http_path = "/package-configuration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageVersion",
        input_schema = schemas.UpdatePackageVersionInput,
        output_schema = schemas.UpdatePackageVersionOutput,
        http_method = "PATCH",
        http_path = "/packages/{packageName}/versions/{versionName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisioningTemplate",
        input_schema = schemas.UpdateProvisioningTemplateInput,
        output_schema = schemas.UpdateProvisioningTemplateOutput,
        http_method = "PATCH",
        http_path = "/provisioning-templates/{templateName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoleAlias",
        input_schema = schemas.UpdateRoleAliasInput,
        output_schema = schemas.UpdateRoleAliasOutput,
        http_method = "PUT",
        http_path = "/role-aliases/{roleAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledAudit",
        input_schema = schemas.UpdateScheduledAuditInput,
        output_schema = schemas.UpdateScheduledAuditOutput,
        http_method = "PATCH",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityProfile",
        input_schema = schemas.UpdateSecurityProfileInput,
        output_schema = schemas.UpdateSecurityProfileOutput,
        http_method = "PATCH",
        http_path = "/security-profiles/{securityProfileName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStream(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStream",
        input_schema = schemas.UpdateStreamInput,
        output_schema = schemas.UpdateStreamOutput,
        http_method = "PUT",
        http_path = "/streams/{streamId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThing",
        input_schema = schemas.UpdateThingInput,
        output_schema = schemas.UpdateThingOutput,
        http_method = "PATCH",
        http_path = "/things/{thingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingGroup",
        input_schema = schemas.UpdateThingGroupInput,
        output_schema = schemas.UpdateThingGroupOutput,
        http_method = "PATCH",
        http_path = "/thing-groups/{thingGroupName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThingGroupsForThing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingGroupsForThing",
        input_schema = schemas.UpdateThingGroupsForThingInput,
        output_schema = schemas.UpdateThingGroupsForThingOutput,
        http_method = "PUT",
        http_path = "/thing-groups/updateThingGroupsForThing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateThingType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingType",
        input_schema = schemas.UpdateThingTypeInput,
        output_schema = schemas.UpdateThingTypeOutput,
        http_method = "PATCH",
        http_path = "/thing-types/{thingTypeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTopicRuleDestination",
        input_schema = schemas.UpdateTopicRuleDestinationInput,
        output_schema = schemas.UpdateTopicRuleDestinationOutput,
        http_method = "PATCH",
        http_path = "/destinations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateSecurityProfileBehaviors(input, options)
    return self:invokeOperation(input, {
        name = "ValidateSecurityProfileBehaviors",
        input_schema = schemas.ValidateSecurityProfileBehaviorsInput,
        output_schema = schemas.ValidateSecurityProfileBehaviorsOutput,
        http_method = "POST",
        http_path = "/security-profile-behaviors/validate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
