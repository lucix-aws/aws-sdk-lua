local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iot.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iot.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIotService"
    cfg.signing_name = "iot"
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

function Client:acceptCertificateTransfer(input, options)
    return self:invokeOperation(input, {
        name = "AcceptCertificateTransfer",
        input_schema = types.AcceptCertificateTransferInput,
        output_schema = types.AcceptCertificateTransferOutput,
        http_method = "PATCH",
        http_path = "/accept-certificate-transfer/{certificateId}",
    }, options)
end

function Client:addThingToBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "AddThingToBillingGroup",
        input_schema = types.AddThingToBillingGroupInput,
        output_schema = types.AddThingToBillingGroupOutput,
        http_method = "PUT",
        http_path = "/billing-groups/addThingToBillingGroup",
    }, options)
end

function Client:addThingToThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "AddThingToThingGroup",
        input_schema = types.AddThingToThingGroupInput,
        output_schema = types.AddThingToThingGroupOutput,
        http_method = "PUT",
        http_path = "/thing-groups/addThingToThingGroup",
    }, options)
end

function Client:associateSbomWithPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSbomWithPackageVersion",
        input_schema = types.AssociateSbomWithPackageVersionInput,
        output_schema = types.AssociateSbomWithPackageVersionOutput,
        http_method = "PUT",
        http_path = "/packages/{packageName}/versions/{versionName}/sbom",
    }, options)
end

function Client:associateTargetsWithJob(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTargetsWithJob",
        input_schema = types.AssociateTargetsWithJobInput,
        output_schema = types.AssociateTargetsWithJobOutput,
        http_method = "POST",
        http_path = "/jobs/{jobId}/targets",
    }, options)
end

function Client:attachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPolicy",
        input_schema = types.AttachPolicyInput,
        output_schema = types.AttachPolicyOutput,
        http_method = "PUT",
        http_path = "/target-policies/{policyName}",
    }, options)
end

function Client:attachPrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPrincipalPolicy",
        input_schema = types.AttachPrincipalPolicyInput,
        output_schema = types.AttachPrincipalPolicyOutput,
        http_method = "PUT",
        http_path = "/principal-policies/{policyName}",
    }, options)
end

function Client:attachSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "AttachSecurityProfile",
        input_schema = types.AttachSecurityProfileInput,
        output_schema = types.AttachSecurityProfileOutput,
        http_method = "PUT",
        http_path = "/security-profiles/{securityProfileName}/targets",
    }, options)
end

function Client:attachThingPrincipal(input, options)
    return self:invokeOperation(input, {
        name = "AttachThingPrincipal",
        input_schema = types.AttachThingPrincipalInput,
        output_schema = types.AttachThingPrincipalOutput,
        http_method = "PUT",
        http_path = "/things/{thingName}/principals",
    }, options)
end

function Client:cancelAuditMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelAuditMitigationActionsTask",
        input_schema = types.CancelAuditMitigationActionsTaskInput,
        output_schema = types.CancelAuditMitigationActionsTaskOutput,
        http_method = "PUT",
        http_path = "/audit/mitigationactions/tasks/{taskId}/cancel",
    }, options)
end

function Client:cancelAuditTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelAuditTask",
        input_schema = types.CancelAuditTaskInput,
        output_schema = types.CancelAuditTaskOutput,
        http_method = "PUT",
        http_path = "/audit/tasks/{taskId}/cancel",
    }, options)
end

function Client:cancelCertificateTransfer(input, options)
    return self:invokeOperation(input, {
        name = "CancelCertificateTransfer",
        input_schema = types.CancelCertificateTransferInput,
        output_schema = types.CancelCertificateTransferOutput,
        http_method = "PATCH",
        http_path = "/cancel-certificate-transfer/{certificateId}",
    }, options)
end

function Client:cancelDetectMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelDetectMitigationActionsTask",
        input_schema = types.CancelDetectMitigationActionsTaskInput,
        output_schema = types.CancelDetectMitigationActionsTaskOutput,
        http_method = "PUT",
        http_path = "/detect/mitigationactions/tasks/{taskId}/cancel",
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "PUT",
        http_path = "/jobs/{jobId}/cancel",
    }, options)
end

function Client:cancelJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelJobExecution",
        input_schema = types.CancelJobExecutionInput,
        output_schema = types.CancelJobExecutionOutput,
        http_method = "PUT",
        http_path = "/things/{thingName}/jobs/{jobId}/cancel",
    }, options)
end

function Client:clearDefaultAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "ClearDefaultAuthorizer",
        input_schema = types.ClearDefaultAuthorizerInput,
        output_schema = types.ClearDefaultAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/default-authorizer",
    }, options)
end

function Client:confirmTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmTopicRuleDestination",
        input_schema = types.ConfirmTopicRuleDestinationInput,
        output_schema = types.ConfirmTopicRuleDestinationOutput,
        http_method = "GET",
        http_path = "/confirmdestination/{confirmationToken+}",
    }, options)
end

function Client:createAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuditSuppression",
        input_schema = types.CreateAuditSuppressionInput,
        output_schema = types.CreateAuditSuppressionOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/create",
    }, options)
end

function Client:createAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuthorizer",
        input_schema = types.CreateAuthorizerInput,
        output_schema = types.CreateAuthorizerOutput,
        http_method = "POST",
        http_path = "/authorizer/{authorizerName}",
    }, options)
end

function Client:createBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillingGroup",
        input_schema = types.CreateBillingGroupInput,
        output_schema = types.CreateBillingGroupOutput,
        http_method = "POST",
        http_path = "/billing-groups/{billingGroupName}",
    }, options)
end

function Client:createCertificateFromCsr(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificateFromCsr",
        input_schema = types.CreateCertificateFromCsrInput,
        output_schema = types.CreateCertificateFromCsrOutput,
        http_method = "POST",
        http_path = "/certificates",
    }, options)
end

function Client:createCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificateProvider",
        input_schema = types.CreateCertificateProviderInput,
        output_schema = types.CreateCertificateProviderOutput,
        http_method = "POST",
        http_path = "/certificate-providers/{certificateProviderName}",
    }, options)
end

function Client:createCommand(input, options)
    return self:invokeOperation(input, {
        name = "CreateCommand",
        input_schema = types.CreateCommandInput,
        output_schema = types.CreateCommandOutput,
        http_method = "PUT",
        http_path = "/commands/{commandId}",
    }, options)
end

function Client:createCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomMetric",
        input_schema = types.CreateCustomMetricInput,
        output_schema = types.CreateCustomMetricOutput,
        http_method = "POST",
        http_path = "/custom-metric/{metricName}",
    }, options)
end

function Client:createDimension(input, options)
    return self:invokeOperation(input, {
        name = "CreateDimension",
        input_schema = types.CreateDimensionInput,
        output_schema = types.CreateDimensionOutput,
        http_method = "POST",
        http_path = "/dimensions/{name}",
    }, options)
end

function Client:createDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainConfiguration",
        input_schema = types.CreateDomainConfigurationInput,
        output_schema = types.CreateDomainConfigurationOutput,
        http_method = "POST",
        http_path = "/domainConfigurations/{domainConfigurationName}",
    }, options)
end

function Client:createDynamicThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDynamicThingGroup",
        input_schema = types.CreateDynamicThingGroupInput,
        output_schema = types.CreateDynamicThingGroupOutput,
        http_method = "POST",
        http_path = "/dynamic-thing-groups/{thingGroupName}",
    }, options)
end

function Client:createFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleetMetric",
        input_schema = types.CreateFleetMetricInput,
        output_schema = types.CreateFleetMetricOutput,
        http_method = "PUT",
        http_path = "/fleet-metric/{metricName}",
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "PUT",
        http_path = "/jobs/{jobId}",
    }, options)
end

function Client:createJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobTemplate",
        input_schema = types.CreateJobTemplateInput,
        output_schema = types.CreateJobTemplateOutput,
        http_method = "PUT",
        http_path = "/job-templates/{jobTemplateId}",
    }, options)
end

function Client:createKeysAndCertificate(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeysAndCertificate",
        input_schema = types.CreateKeysAndCertificateInput,
        output_schema = types.CreateKeysAndCertificateOutput,
        http_method = "POST",
        http_path = "/keys-and-certificate",
    }, options)
end

function Client:createMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateMitigationAction",
        input_schema = types.CreateMitigationActionInput,
        output_schema = types.CreateMitigationActionOutput,
        http_method = "POST",
        http_path = "/mitigationactions/actions/{actionName}",
    }, options)
end

function Client:createOTAUpdate(input, options)
    return self:invokeOperation(input, {
        name = "CreateOTAUpdate",
        input_schema = types.CreateOTAUpdateInput,
        output_schema = types.CreateOTAUpdateOutput,
        http_method = "POST",
        http_path = "/otaUpdates/{otaUpdateId}",
    }, options)
end

function Client:createPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackage",
        input_schema = types.CreatePackageInput,
        output_schema = types.CreatePackageOutput,
        http_method = "PUT",
        http_path = "/packages/{packageName}",
    }, options)
end

function Client:createPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackageVersion",
        input_schema = types.CreatePackageVersionInput,
        output_schema = types.CreatePackageVersionOutput,
        http_method = "PUT",
        http_path = "/packages/{packageName}/versions/{versionName}",
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = types.CreatePolicyInput,
        output_schema = types.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/policies/{policyName}",
    }, options)
end

function Client:createPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicyVersion",
        input_schema = types.CreatePolicyVersionInput,
        output_schema = types.CreatePolicyVersionOutput,
        http_method = "POST",
        http_path = "/policies/{policyName}/version",
    }, options)
end

function Client:createProvisioningClaim(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningClaim",
        input_schema = types.CreateProvisioningClaimInput,
        output_schema = types.CreateProvisioningClaimOutput,
        http_method = "POST",
        http_path = "/provisioning-templates/{templateName}/provisioning-claim",
    }, options)
end

function Client:createProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningTemplate",
        input_schema = types.CreateProvisioningTemplateInput,
        output_schema = types.CreateProvisioningTemplateOutput,
        http_method = "POST",
        http_path = "/provisioning-templates",
    }, options)
end

function Client:createProvisioningTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningTemplateVersion",
        input_schema = types.CreateProvisioningTemplateVersionInput,
        output_schema = types.CreateProvisioningTemplateVersionOutput,
        http_method = "POST",
        http_path = "/provisioning-templates/{templateName}/versions",
    }, options)
end

function Client:createRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoleAlias",
        input_schema = types.CreateRoleAliasInput,
        output_schema = types.CreateRoleAliasOutput,
        http_method = "POST",
        http_path = "/role-aliases/{roleAlias}",
    }, options)
end

function Client:createScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledAudit",
        input_schema = types.CreateScheduledAuditInput,
        output_schema = types.CreateScheduledAuditOutput,
        http_method = "POST",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
    }, options)
end

function Client:createSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityProfile",
        input_schema = types.CreateSecurityProfileInput,
        output_schema = types.CreateSecurityProfileOutput,
        http_method = "POST",
        http_path = "/security-profiles/{securityProfileName}",
    }, options)
end

function Client:createStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateStream",
        input_schema = types.CreateStreamInput,
        output_schema = types.CreateStreamOutput,
        http_method = "POST",
        http_path = "/streams/{streamId}",
    }, options)
end

function Client:createThing(input, options)
    return self:invokeOperation(input, {
        name = "CreateThing",
        input_schema = types.CreateThingInput,
        output_schema = types.CreateThingOutput,
        http_method = "POST",
        http_path = "/things/{thingName}",
    }, options)
end

function Client:createThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateThingGroup",
        input_schema = types.CreateThingGroupInput,
        output_schema = types.CreateThingGroupOutput,
        http_method = "POST",
        http_path = "/thing-groups/{thingGroupName}",
    }, options)
end

function Client:createThingType(input, options)
    return self:invokeOperation(input, {
        name = "CreateThingType",
        input_schema = types.CreateThingTypeInput,
        output_schema = types.CreateThingTypeOutput,
        http_method = "POST",
        http_path = "/thing-types/{thingTypeName}",
    }, options)
end

function Client:createTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopicRule",
        input_schema = types.CreateTopicRuleInput,
        output_schema = types.CreateTopicRuleOutput,
        http_method = "POST",
        http_path = "/rules/{ruleName}",
    }, options)
end

function Client:createTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopicRuleDestination",
        input_schema = types.CreateTopicRuleDestinationInput,
        output_schema = types.CreateTopicRuleDestinationOutput,
        http_method = "POST",
        http_path = "/destinations",
    }, options)
end

function Client:deleteAccountAuditConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountAuditConfiguration",
        input_schema = types.DeleteAccountAuditConfigurationInput,
        output_schema = types.DeleteAccountAuditConfigurationOutput,
        http_method = "DELETE",
        http_path = "/audit/configuration",
    }, options)
end

function Client:deleteAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuditSuppression",
        input_schema = types.DeleteAuditSuppressionInput,
        output_schema = types.DeleteAuditSuppressionOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/delete",
    }, options)
end

function Client:deleteAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthorizer",
        input_schema = types.DeleteAuthorizerInput,
        output_schema = types.DeleteAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/authorizer/{authorizerName}",
    }, options)
end

function Client:deleteBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillingGroup",
        input_schema = types.DeleteBillingGroupInput,
        output_schema = types.DeleteBillingGroupOutput,
        http_method = "DELETE",
        http_path = "/billing-groups/{billingGroupName}",
    }, options)
end

function Client:deleteCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCACertificate",
        input_schema = types.DeleteCACertificateInput,
        output_schema = types.DeleteCACertificateOutput,
        http_method = "DELETE",
        http_path = "/cacertificate/{certificateId}",
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = types.DeleteCertificateInput,
        output_schema = types.DeleteCertificateOutput,
        http_method = "DELETE",
        http_path = "/certificates/{certificateId}",
    }, options)
end

function Client:deleteCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificateProvider",
        input_schema = types.DeleteCertificateProviderInput,
        output_schema = types.DeleteCertificateProviderOutput,
        http_method = "DELETE",
        http_path = "/certificate-providers/{certificateProviderName}",
    }, options)
end

function Client:deleteCommand(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCommand",
        input_schema = types.DeleteCommandInput,
        output_schema = types.DeleteCommandOutput,
        http_method = "DELETE",
        http_path = "/commands/{commandId}",
    }, options)
end

function Client:deleteCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCommandExecution",
        input_schema = types.DeleteCommandExecutionInput,
        output_schema = types.DeleteCommandExecutionOutput,
        http_method = "DELETE",
        http_path = "/command-executions/{executionId}",
    }, options)
end

function Client:deleteCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomMetric",
        input_schema = types.DeleteCustomMetricInput,
        output_schema = types.DeleteCustomMetricOutput,
        http_method = "DELETE",
        http_path = "/custom-metric/{metricName}",
    }, options)
end

function Client:deleteDimension(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDimension",
        input_schema = types.DeleteDimensionInput,
        output_schema = types.DeleteDimensionOutput,
        http_method = "DELETE",
        http_path = "/dimensions/{name}",
    }, options)
end

function Client:deleteDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainConfiguration",
        input_schema = types.DeleteDomainConfigurationInput,
        output_schema = types.DeleteDomainConfigurationOutput,
        http_method = "DELETE",
        http_path = "/domainConfigurations/{domainConfigurationName}",
    }, options)
end

function Client:deleteDynamicThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDynamicThingGroup",
        input_schema = types.DeleteDynamicThingGroupInput,
        output_schema = types.DeleteDynamicThingGroupOutput,
        http_method = "DELETE",
        http_path = "/dynamic-thing-groups/{thingGroupName}",
    }, options)
end

function Client:deleteFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleetMetric",
        input_schema = types.DeleteFleetMetricInput,
        output_schema = types.DeleteFleetMetricOutput,
        http_method = "DELETE",
        http_path = "/fleet-metric/{metricName}",
    }, options)
end

function Client:deleteJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJob",
        input_schema = types.DeleteJobInput,
        output_schema = types.DeleteJobOutput,
        http_method = "DELETE",
        http_path = "/jobs/{jobId}",
    }, options)
end

function Client:deleteJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobExecution",
        input_schema = types.DeleteJobExecutionInput,
        output_schema = types.DeleteJobExecutionOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}/jobs/{jobId}/executionNumber/{executionNumber}",
    }, options)
end

function Client:deleteJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTemplate",
        input_schema = types.DeleteJobTemplateInput,
        output_schema = types.DeleteJobTemplateOutput,
        http_method = "DELETE",
        http_path = "/job-templates/{jobTemplateId}",
    }, options)
end

function Client:deleteMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMitigationAction",
        input_schema = types.DeleteMitigationActionInput,
        output_schema = types.DeleteMitigationActionOutput,
        http_method = "DELETE",
        http_path = "/mitigationactions/actions/{actionName}",
    }, options)
end

function Client:deleteOTAUpdate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOTAUpdate",
        input_schema = types.DeleteOTAUpdateInput,
        output_schema = types.DeleteOTAUpdateOutput,
        http_method = "DELETE",
        http_path = "/otaUpdates/{otaUpdateId}",
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = types.DeletePackageInput,
        output_schema = types.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/packages/{packageName}",
    }, options)
end

function Client:deletePackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackageVersion",
        input_schema = types.DeletePackageVersionInput,
        output_schema = types.DeletePackageVersionOutput,
        http_method = "DELETE",
        http_path = "/packages/{packageName}/versions/{versionName}",
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
        http_method = "DELETE",
        http_path = "/policies/{policyName}",
    }, options)
end

function Client:deletePolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicyVersion",
        input_schema = types.DeletePolicyVersionInput,
        output_schema = types.DeletePolicyVersionOutput,
        http_method = "DELETE",
        http_path = "/policies/{policyName}/version/{policyVersionId}",
    }, options)
end

function Client:deleteProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningTemplate",
        input_schema = types.DeleteProvisioningTemplateInput,
        output_schema = types.DeleteProvisioningTemplateOutput,
        http_method = "DELETE",
        http_path = "/provisioning-templates/{templateName}",
    }, options)
end

function Client:deleteProvisioningTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningTemplateVersion",
        input_schema = types.DeleteProvisioningTemplateVersionInput,
        output_schema = types.DeleteProvisioningTemplateVersionOutput,
        http_method = "DELETE",
        http_path = "/provisioning-templates/{templateName}/versions/{versionId}",
    }, options)
end

function Client:deleteRegistrationCode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRegistrationCode",
        input_schema = types.DeleteRegistrationCodeInput,
        output_schema = types.DeleteRegistrationCodeOutput,
        http_method = "DELETE",
        http_path = "/registrationcode",
    }, options)
end

function Client:deleteRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoleAlias",
        input_schema = types.DeleteRoleAliasInput,
        output_schema = types.DeleteRoleAliasOutput,
        http_method = "DELETE",
        http_path = "/role-aliases/{roleAlias}",
    }, options)
end

function Client:deleteScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAudit",
        input_schema = types.DeleteScheduledAuditInput,
        output_schema = types.DeleteScheduledAuditOutput,
        http_method = "DELETE",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
    }, options)
end

function Client:deleteSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityProfile",
        input_schema = types.DeleteSecurityProfileInput,
        output_schema = types.DeleteSecurityProfileOutput,
        http_method = "DELETE",
        http_path = "/security-profiles/{securityProfileName}",
    }, options)
end

function Client:deleteStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStream",
        input_schema = types.DeleteStreamInput,
        output_schema = types.DeleteStreamOutput,
        http_method = "DELETE",
        http_path = "/streams/{streamId}",
    }, options)
end

function Client:deleteThing(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThing",
        input_schema = types.DeleteThingInput,
        output_schema = types.DeleteThingOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}",
    }, options)
end

function Client:deleteThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThingGroup",
        input_schema = types.DeleteThingGroupInput,
        output_schema = types.DeleteThingGroupOutput,
        http_method = "DELETE",
        http_path = "/thing-groups/{thingGroupName}",
    }, options)
end

function Client:deleteThingType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteThingType",
        input_schema = types.DeleteThingTypeInput,
        output_schema = types.DeleteThingTypeOutput,
        http_method = "DELETE",
        http_path = "/thing-types/{thingTypeName}",
    }, options)
end

function Client:deleteTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopicRule",
        input_schema = types.DeleteTopicRuleInput,
        output_schema = types.DeleteTopicRuleOutput,
        http_method = "DELETE",
        http_path = "/rules/{ruleName}",
    }, options)
end

function Client:deleteTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopicRuleDestination",
        input_schema = types.DeleteTopicRuleDestinationInput,
        output_schema = types.DeleteTopicRuleDestinationOutput,
        http_method = "DELETE",
        http_path = "/destinations/{arn+}",
    }, options)
end

function Client:deleteV2LoggingLevel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteV2LoggingLevel",
        input_schema = types.DeleteV2LoggingLevelInput,
        output_schema = types.DeleteV2LoggingLevelOutput,
        http_method = "DELETE",
        http_path = "/v2LoggingLevel",
    }, options)
end

function Client:deprecateThingType(input, options)
    return self:invokeOperation(input, {
        name = "DeprecateThingType",
        input_schema = types.DeprecateThingTypeInput,
        output_schema = types.DeprecateThingTypeOutput,
        http_method = "POST",
        http_path = "/thing-types/{thingTypeName}/deprecate",
    }, options)
end

function Client:describeAccountAuditConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAuditConfiguration",
        input_schema = types.DescribeAccountAuditConfigurationInput,
        output_schema = types.DescribeAccountAuditConfigurationOutput,
        http_method = "GET",
        http_path = "/audit/configuration",
    }, options)
end

function Client:describeAuditFinding(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditFinding",
        input_schema = types.DescribeAuditFindingInput,
        output_schema = types.DescribeAuditFindingOutput,
        http_method = "GET",
        http_path = "/audit/findings/{findingId}",
    }, options)
end

function Client:describeAuditMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditMitigationActionsTask",
        input_schema = types.DescribeAuditMitigationActionsTaskInput,
        output_schema = types.DescribeAuditMitigationActionsTaskOutput,
        http_method = "GET",
        http_path = "/audit/mitigationactions/tasks/{taskId}",
    }, options)
end

function Client:describeAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditSuppression",
        input_schema = types.DescribeAuditSuppressionInput,
        output_schema = types.DescribeAuditSuppressionOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/describe",
    }, options)
end

function Client:describeAuditTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuditTask",
        input_schema = types.DescribeAuditTaskInput,
        output_schema = types.DescribeAuditTaskOutput,
        http_method = "GET",
        http_path = "/audit/tasks/{taskId}",
    }, options)
end

function Client:describeAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuthorizer",
        input_schema = types.DescribeAuthorizerInput,
        output_schema = types.DescribeAuthorizerOutput,
        http_method = "GET",
        http_path = "/authorizer/{authorizerName}",
    }, options)
end

function Client:describeBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBillingGroup",
        input_schema = types.DescribeBillingGroupInput,
        output_schema = types.DescribeBillingGroupOutput,
        http_method = "GET",
        http_path = "/billing-groups/{billingGroupName}",
    }, options)
end

function Client:describeCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCACertificate",
        input_schema = types.DescribeCACertificateInput,
        output_schema = types.DescribeCACertificateOutput,
        http_method = "GET",
        http_path = "/cacertificate/{certificateId}",
    }, options)
end

function Client:describeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificate",
        input_schema = types.DescribeCertificateInput,
        output_schema = types.DescribeCertificateOutput,
        http_method = "GET",
        http_path = "/certificates/{certificateId}",
    }, options)
end

function Client:describeCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificateProvider",
        input_schema = types.DescribeCertificateProviderInput,
        output_schema = types.DescribeCertificateProviderOutput,
        http_method = "GET",
        http_path = "/certificate-providers/{certificateProviderName}",
    }, options)
end

function Client:describeCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomMetric",
        input_schema = types.DescribeCustomMetricInput,
        output_schema = types.DescribeCustomMetricOutput,
        http_method = "GET",
        http_path = "/custom-metric/{metricName}",
    }, options)
end

function Client:describeDefaultAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultAuthorizer",
        input_schema = types.DescribeDefaultAuthorizerInput,
        output_schema = types.DescribeDefaultAuthorizerOutput,
        http_method = "GET",
        http_path = "/default-authorizer",
    }, options)
end

function Client:describeDetectMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDetectMitigationActionsTask",
        input_schema = types.DescribeDetectMitigationActionsTaskInput,
        output_schema = types.DescribeDetectMitigationActionsTaskOutput,
        http_method = "GET",
        http_path = "/detect/mitigationactions/tasks/{taskId}",
    }, options)
end

function Client:describeDimension(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDimension",
        input_schema = types.DescribeDimensionInput,
        output_schema = types.DescribeDimensionOutput,
        http_method = "GET",
        http_path = "/dimensions/{name}",
    }, options)
end

function Client:describeDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainConfiguration",
        input_schema = types.DescribeDomainConfigurationInput,
        output_schema = types.DescribeDomainConfigurationOutput,
        http_method = "GET",
        http_path = "/domainConfigurations/{domainConfigurationName}",
    }, options)
end

function Client:describeEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEncryptionConfiguration",
        input_schema = types.DescribeEncryptionConfigurationInput,
        output_schema = types.DescribeEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/encryption-configuration",
    }, options)
end

function Client:describeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoint",
        input_schema = types.DescribeEndpointInput,
        output_schema = types.DescribeEndpointOutput,
        http_method = "GET",
        http_path = "/endpoint",
    }, options)
end

function Client:describeEventConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventConfigurations",
        input_schema = types.DescribeEventConfigurationsInput,
        output_schema = types.DescribeEventConfigurationsOutput,
        http_method = "GET",
        http_path = "/event-configurations",
    }, options)
end

function Client:describeFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFleetMetric",
        input_schema = types.DescribeFleetMetricInput,
        output_schema = types.DescribeFleetMetricOutput,
        http_method = "GET",
        http_path = "/fleet-metric/{metricName}",
    }, options)
end

function Client:describeIndex(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIndex",
        input_schema = types.DescribeIndexInput,
        output_schema = types.DescribeIndexOutput,
        http_method = "GET",
        http_path = "/indices/{indexName}",
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = types.DescribeJobInput,
        output_schema = types.DescribeJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}",
    }, options)
end

function Client:describeJobExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobExecution",
        input_schema = types.DescribeJobExecutionInput,
        output_schema = types.DescribeJobExecutionOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs/{jobId}",
    }, options)
end

function Client:describeJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobTemplate",
        input_schema = types.DescribeJobTemplateInput,
        output_schema = types.DescribeJobTemplateOutput,
        http_method = "GET",
        http_path = "/job-templates/{jobTemplateId}",
    }, options)
end

function Client:describeManagedJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedJobTemplate",
        input_schema = types.DescribeManagedJobTemplateInput,
        output_schema = types.DescribeManagedJobTemplateOutput,
        http_method = "GET",
        http_path = "/managed-job-templates/{templateName}",
    }, options)
end

function Client:describeMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMitigationAction",
        input_schema = types.DescribeMitigationActionInput,
        output_schema = types.DescribeMitigationActionOutput,
        http_method = "GET",
        http_path = "/mitigationactions/actions/{actionName}",
    }, options)
end

function Client:describeProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningTemplate",
        input_schema = types.DescribeProvisioningTemplateInput,
        output_schema = types.DescribeProvisioningTemplateOutput,
        http_method = "GET",
        http_path = "/provisioning-templates/{templateName}",
    }, options)
end

function Client:describeProvisioningTemplateVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningTemplateVersion",
        input_schema = types.DescribeProvisioningTemplateVersionInput,
        output_schema = types.DescribeProvisioningTemplateVersionOutput,
        http_method = "GET",
        http_path = "/provisioning-templates/{templateName}/versions/{versionId}",
    }, options)
end

function Client:describeRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoleAlias",
        input_schema = types.DescribeRoleAliasInput,
        output_schema = types.DescribeRoleAliasOutput,
        http_method = "GET",
        http_path = "/role-aliases/{roleAlias}",
    }, options)
end

function Client:describeScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledAudit",
        input_schema = types.DescribeScheduledAuditInput,
        output_schema = types.DescribeScheduledAuditOutput,
        http_method = "GET",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
    }, options)
end

function Client:describeSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityProfile",
        input_schema = types.DescribeSecurityProfileInput,
        output_schema = types.DescribeSecurityProfileOutput,
        http_method = "GET",
        http_path = "/security-profiles/{securityProfileName}",
    }, options)
end

function Client:describeStream(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStream",
        input_schema = types.DescribeStreamInput,
        output_schema = types.DescribeStreamOutput,
        http_method = "GET",
        http_path = "/streams/{streamId}",
    }, options)
end

function Client:describeThing(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThing",
        input_schema = types.DescribeThingInput,
        output_schema = types.DescribeThingOutput,
        http_method = "GET",
        http_path = "/things/{thingName}",
    }, options)
end

function Client:describeThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThingGroup",
        input_schema = types.DescribeThingGroupInput,
        output_schema = types.DescribeThingGroupOutput,
        http_method = "GET",
        http_path = "/thing-groups/{thingGroupName}",
    }, options)
end

function Client:describeThingRegistrationTask(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThingRegistrationTask",
        input_schema = types.DescribeThingRegistrationTaskInput,
        output_schema = types.DescribeThingRegistrationTaskOutput,
        http_method = "GET",
        http_path = "/thing-registration-tasks/{taskId}",
    }, options)
end

function Client:describeThingType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeThingType",
        input_schema = types.DescribeThingTypeInput,
        output_schema = types.DescribeThingTypeOutput,
        http_method = "GET",
        http_path = "/thing-types/{thingTypeName}",
    }, options)
end

function Client:detachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPolicy",
        input_schema = types.DetachPolicyInput,
        output_schema = types.DetachPolicyOutput,
        http_method = "POST",
        http_path = "/target-policies/{policyName}",
    }, options)
end

function Client:detachPrincipalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPrincipalPolicy",
        input_schema = types.DetachPrincipalPolicyInput,
        output_schema = types.DetachPrincipalPolicyOutput,
        http_method = "DELETE",
        http_path = "/principal-policies/{policyName}",
    }, options)
end

function Client:detachSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DetachSecurityProfile",
        input_schema = types.DetachSecurityProfileInput,
        output_schema = types.DetachSecurityProfileOutput,
        http_method = "DELETE",
        http_path = "/security-profiles/{securityProfileName}/targets",
    }, options)
end

function Client:detachThingPrincipal(input, options)
    return self:invokeOperation(input, {
        name = "DetachThingPrincipal",
        input_schema = types.DetachThingPrincipalInput,
        output_schema = types.DetachThingPrincipalOutput,
        http_method = "DELETE",
        http_path = "/things/{thingName}/principals",
    }, options)
end

function Client:disableTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "DisableTopicRule",
        input_schema = types.DisableTopicRuleInput,
        output_schema = types.DisableTopicRuleOutput,
        http_method = "POST",
        http_path = "/rules/{ruleName}/disable",
    }, options)
end

function Client:disassociateSbomFromPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSbomFromPackageVersion",
        input_schema = types.DisassociateSbomFromPackageVersionInput,
        output_schema = types.DisassociateSbomFromPackageVersionOutput,
        http_method = "DELETE",
        http_path = "/packages/{packageName}/versions/{versionName}/sbom",
    }, options)
end

function Client:enableTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "EnableTopicRule",
        input_schema = types.EnableTopicRuleInput,
        output_schema = types.EnableTopicRuleOutput,
        http_method = "POST",
        http_path = "/rules/{ruleName}/enable",
    }, options)
end

function Client:getBehaviorModelTrainingSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetBehaviorModelTrainingSummaries",
        input_schema = types.GetBehaviorModelTrainingSummariesInput,
        output_schema = types.GetBehaviorModelTrainingSummariesOutput,
        http_method = "GET",
        http_path = "/behavior-model-training/summaries",
    }, options)
end

function Client:getBucketsAggregation(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketsAggregation",
        input_schema = types.GetBucketsAggregationInput,
        output_schema = types.GetBucketsAggregationOutput,
        http_method = "POST",
        http_path = "/indices/buckets",
    }, options)
end

function Client:getCardinality(input, options)
    return self:invokeOperation(input, {
        name = "GetCardinality",
        input_schema = types.GetCardinalityInput,
        output_schema = types.GetCardinalityOutput,
        http_method = "POST",
        http_path = "/indices/cardinality",
    }, options)
end

function Client:getCommand(input, options)
    return self:invokeOperation(input, {
        name = "GetCommand",
        input_schema = types.GetCommandInput,
        output_schema = types.GetCommandOutput,
        http_method = "GET",
        http_path = "/commands/{commandId}",
    }, options)
end

function Client:getCommandExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetCommandExecution",
        input_schema = types.GetCommandExecutionInput,
        output_schema = types.GetCommandExecutionOutput,
        http_method = "GET",
        http_path = "/command-executions/{executionId}",
    }, options)
end

function Client:getEffectivePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetEffectivePolicies",
        input_schema = types.GetEffectivePoliciesInput,
        output_schema = types.GetEffectivePoliciesOutput,
        http_method = "POST",
        http_path = "/effective-policies",
    }, options)
end

function Client:getIndexingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetIndexingConfiguration",
        input_schema = types.GetIndexingConfigurationInput,
        output_schema = types.GetIndexingConfigurationOutput,
        http_method = "GET",
        http_path = "/indexing/config",
    }, options)
end

function Client:getJobDocument(input, options)
    return self:invokeOperation(input, {
        name = "GetJobDocument",
        input_schema = types.GetJobDocumentInput,
        output_schema = types.GetJobDocumentOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}/job-document",
    }, options)
end

function Client:getLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetLoggingOptions",
        input_schema = types.GetLoggingOptionsInput,
        output_schema = types.GetLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/loggingOptions",
    }, options)
end

function Client:getOTAUpdate(input, options)
    return self:invokeOperation(input, {
        name = "GetOTAUpdate",
        input_schema = types.GetOTAUpdateInput,
        output_schema = types.GetOTAUpdateOutput,
        http_method = "GET",
        http_path = "/otaUpdates/{otaUpdateId}",
    }, options)
end

function Client:getPackage(input, options)
    return self:invokeOperation(input, {
        name = "GetPackage",
        input_schema = types.GetPackageInput,
        output_schema = types.GetPackageOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}",
    }, options)
end

function Client:getPackageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageConfiguration",
        input_schema = types.GetPackageConfigurationInput,
        output_schema = types.GetPackageConfigurationOutput,
        http_method = "GET",
        http_path = "/package-configuration",
    }, options)
end

function Client:getPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPackageVersion",
        input_schema = types.GetPackageVersionInput,
        output_schema = types.GetPackageVersionOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}/versions/{versionName}",
    }, options)
end

function Client:getPercentiles(input, options)
    return self:invokeOperation(input, {
        name = "GetPercentiles",
        input_schema = types.GetPercentilesInput,
        output_schema = types.GetPercentilesOutput,
        http_method = "POST",
        http_path = "/indices/percentiles",
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "GET",
        http_path = "/policies/{policyName}",
    }, options)
end

function Client:getPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicyVersion",
        input_schema = types.GetPolicyVersionInput,
        output_schema = types.GetPolicyVersionOutput,
        http_method = "GET",
        http_path = "/policies/{policyName}/version/{policyVersionId}",
    }, options)
end

function Client:getRegistrationCode(input, options)
    return self:invokeOperation(input, {
        name = "GetRegistrationCode",
        input_schema = types.GetRegistrationCodeInput,
        output_schema = types.GetRegistrationCodeOutput,
        http_method = "GET",
        http_path = "/registrationcode",
    }, options)
end

function Client:getStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetStatistics",
        input_schema = types.GetStatisticsInput,
        output_schema = types.GetStatisticsOutput,
        http_method = "POST",
        http_path = "/indices/statistics",
    }, options)
end

function Client:getThingConnectivityData(input, options)
    return self:invokeOperation(input, {
        name = "GetThingConnectivityData",
        input_schema = types.GetThingConnectivityDataInput,
        output_schema = types.GetThingConnectivityDataOutput,
        http_method = "POST",
        http_path = "/things/{thingName}/connectivity-data",
    }, options)
end

function Client:getTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "GetTopicRule",
        input_schema = types.GetTopicRuleInput,
        output_schema = types.GetTopicRuleOutput,
        http_method = "GET",
        http_path = "/rules/{ruleName}",
    }, options)
end

function Client:getTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetTopicRuleDestination",
        input_schema = types.GetTopicRuleDestinationInput,
        output_schema = types.GetTopicRuleDestinationOutput,
        http_method = "GET",
        http_path = "/destinations/{arn+}",
    }, options)
end

function Client:getV2LoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetV2LoggingOptions",
        input_schema = types.GetV2LoggingOptionsInput,
        output_schema = types.GetV2LoggingOptionsOutput,
        http_method = "GET",
        http_path = "/v2LoggingOptions",
    }, options)
end

function Client:listActiveViolations(input, options)
    return self:invokeOperation(input, {
        name = "ListActiveViolations",
        input_schema = types.ListActiveViolationsInput,
        output_schema = types.ListActiveViolationsOutput,
        http_method = "GET",
        http_path = "/active-violations",
    }, options)
end

function Client:listAttachedPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedPolicies",
        input_schema = types.ListAttachedPoliciesInput,
        output_schema = types.ListAttachedPoliciesOutput,
        http_method = "POST",
        http_path = "/attached-policies/{target}",
    }, options)
end

function Client:listAuditFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditFindings",
        input_schema = types.ListAuditFindingsInput,
        output_schema = types.ListAuditFindingsOutput,
        http_method = "POST",
        http_path = "/audit/findings",
    }, options)
end

function Client:listAuditMitigationActionsExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditMitigationActionsExecutions",
        input_schema = types.ListAuditMitigationActionsExecutionsInput,
        output_schema = types.ListAuditMitigationActionsExecutionsOutput,
        http_method = "GET",
        http_path = "/audit/mitigationactions/executions",
    }, options)
end

function Client:listAuditMitigationActionsTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditMitigationActionsTasks",
        input_schema = types.ListAuditMitigationActionsTasksInput,
        output_schema = types.ListAuditMitigationActionsTasksOutput,
        http_method = "GET",
        http_path = "/audit/mitigationactions/tasks",
    }, options)
end

function Client:listAuditSuppressions(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditSuppressions",
        input_schema = types.ListAuditSuppressionsInput,
        output_schema = types.ListAuditSuppressionsOutput,
        http_method = "POST",
        http_path = "/audit/suppressions/list",
    }, options)
end

function Client:listAuditTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListAuditTasks",
        input_schema = types.ListAuditTasksInput,
        output_schema = types.ListAuditTasksOutput,
        http_method = "GET",
        http_path = "/audit/tasks",
    }, options)
end

function Client:listAuthorizers(input, options)
    return self:invokeOperation(input, {
        name = "ListAuthorizers",
        input_schema = types.ListAuthorizersInput,
        output_schema = types.ListAuthorizersOutput,
        http_method = "GET",
        http_path = "/authorizers",
    }, options)
end

function Client:listBillingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListBillingGroups",
        input_schema = types.ListBillingGroupsInput,
        output_schema = types.ListBillingGroupsOutput,
        http_method = "GET",
        http_path = "/billing-groups",
    }, options)
end

function Client:listCACertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCACertificates",
        input_schema = types.ListCACertificatesInput,
        output_schema = types.ListCACertificatesOutput,
        http_method = "GET",
        http_path = "/cacertificates",
    }, options)
end

function Client:listCertificateProviders(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificateProviders",
        input_schema = types.ListCertificateProvidersInput,
        output_schema = types.ListCertificateProvidersOutput,
        http_method = "GET",
        http_path = "/certificate-providers",
    }, options)
end

function Client:listCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificates",
        input_schema = types.ListCertificatesInput,
        output_schema = types.ListCertificatesOutput,
        http_method = "GET",
        http_path = "/certificates",
    }, options)
end

function Client:listCertificatesByCA(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificatesByCA",
        input_schema = types.ListCertificatesByCAInput,
        output_schema = types.ListCertificatesByCAOutput,
        http_method = "GET",
        http_path = "/certificates-by-ca/{caCertificateId}",
    }, options)
end

function Client:listCommandExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListCommandExecutions",
        input_schema = types.ListCommandExecutionsInput,
        output_schema = types.ListCommandExecutionsOutput,
        http_method = "POST",
        http_path = "/command-executions",
    }, options)
end

function Client:listCommands(input, options)
    return self:invokeOperation(input, {
        name = "ListCommands",
        input_schema = types.ListCommandsInput,
        output_schema = types.ListCommandsOutput,
        http_method = "GET",
        http_path = "/commands",
    }, options)
end

function Client:listCustomMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomMetrics",
        input_schema = types.ListCustomMetricsInput,
        output_schema = types.ListCustomMetricsOutput,
        http_method = "GET",
        http_path = "/custom-metrics",
    }, options)
end

function Client:listDetectMitigationActionsExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectMitigationActionsExecutions",
        input_schema = types.ListDetectMitigationActionsExecutionsInput,
        output_schema = types.ListDetectMitigationActionsExecutionsOutput,
        http_method = "GET",
        http_path = "/detect/mitigationactions/executions",
    }, options)
end

function Client:listDetectMitigationActionsTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListDetectMitigationActionsTasks",
        input_schema = types.ListDetectMitigationActionsTasksInput,
        output_schema = types.ListDetectMitigationActionsTasksOutput,
        http_method = "GET",
        http_path = "/detect/mitigationactions/tasks",
    }, options)
end

function Client:listDimensions(input, options)
    return self:invokeOperation(input, {
        name = "ListDimensions",
        input_schema = types.ListDimensionsInput,
        output_schema = types.ListDimensionsOutput,
        http_method = "GET",
        http_path = "/dimensions",
    }, options)
end

function Client:listDomainConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainConfigurations",
        input_schema = types.ListDomainConfigurationsInput,
        output_schema = types.ListDomainConfigurationsOutput,
        http_method = "GET",
        http_path = "/domainConfigurations",
    }, options)
end

function Client:listFleetMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListFleetMetrics",
        input_schema = types.ListFleetMetricsInput,
        output_schema = types.ListFleetMetricsOutput,
        http_method = "GET",
        http_path = "/fleet-metrics",
    }, options)
end

function Client:listIndices(input, options)
    return self:invokeOperation(input, {
        name = "ListIndices",
        input_schema = types.ListIndicesInput,
        output_schema = types.ListIndicesOutput,
        http_method = "GET",
        http_path = "/indices",
    }, options)
end

function Client:listJobExecutionsForJob(input, options)
    return self:invokeOperation(input, {
        name = "ListJobExecutionsForJob",
        input_schema = types.ListJobExecutionsForJobInput,
        output_schema = types.ListJobExecutionsForJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}/things",
    }, options)
end

function Client:listJobExecutionsForThing(input, options)
    return self:invokeOperation(input, {
        name = "ListJobExecutionsForThing",
        input_schema = types.ListJobExecutionsForThingInput,
        output_schema = types.ListJobExecutionsForThingOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/jobs",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
    }, options)
end

function Client:listJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListJobTemplates",
        input_schema = types.ListJobTemplatesInput,
        output_schema = types.ListJobTemplatesOutput,
        http_method = "GET",
        http_path = "/job-templates",
    }, options)
end

function Client:listManagedJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedJobTemplates",
        input_schema = types.ListManagedJobTemplatesInput,
        output_schema = types.ListManagedJobTemplatesOutput,
        http_method = "GET",
        http_path = "/managed-job-templates",
    }, options)
end

function Client:listMetricValues(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricValues",
        input_schema = types.ListMetricValuesInput,
        output_schema = types.ListMetricValuesOutput,
        http_method = "GET",
        http_path = "/metric-values",
    }, options)
end

function Client:listMitigationActions(input, options)
    return self:invokeOperation(input, {
        name = "ListMitigationActions",
        input_schema = types.ListMitigationActionsInput,
        output_schema = types.ListMitigationActionsOutput,
        http_method = "GET",
        http_path = "/mitigationactions/actions",
    }, options)
end

function Client:listOTAUpdates(input, options)
    return self:invokeOperation(input, {
        name = "ListOTAUpdates",
        input_schema = types.ListOTAUpdatesInput,
        output_schema = types.ListOTAUpdatesOutput,
        http_method = "GET",
        http_path = "/otaUpdates",
    }, options)
end

function Client:listOutgoingCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListOutgoingCertificates",
        input_schema = types.ListOutgoingCertificatesInput,
        output_schema = types.ListOutgoingCertificatesOutput,
        http_method = "GET",
        http_path = "/certificates-out-going",
    }, options)
end

function Client:listPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListPackages",
        input_schema = types.ListPackagesInput,
        output_schema = types.ListPackagesOutput,
        http_method = "GET",
        http_path = "/packages",
    }, options)
end

function Client:listPackageVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageVersions",
        input_schema = types.ListPackageVersionsInput,
        output_schema = types.ListPackageVersionsOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}/versions",
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = types.ListPoliciesInput,
        output_schema = types.ListPoliciesOutput,
        http_method = "GET",
        http_path = "/policies",
    }, options)
end

function Client:listPolicyPrincipals(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyPrincipals",
        input_schema = types.ListPolicyPrincipalsInput,
        output_schema = types.ListPolicyPrincipalsOutput,
        http_method = "GET",
        http_path = "/policy-principals",
    }, options)
end

function Client:listPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicyVersions",
        input_schema = types.ListPolicyVersionsInput,
        output_schema = types.ListPolicyVersionsOutput,
        http_method = "GET",
        http_path = "/policies/{policyName}/version",
    }, options)
end

function Client:listPrincipalPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalPolicies",
        input_schema = types.ListPrincipalPoliciesInput,
        output_schema = types.ListPrincipalPoliciesOutput,
        http_method = "GET",
        http_path = "/principal-policies",
    }, options)
end

function Client:listPrincipalThings(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalThings",
        input_schema = types.ListPrincipalThingsInput,
        output_schema = types.ListPrincipalThingsOutput,
        http_method = "GET",
        http_path = "/principals/things",
    }, options)
end

function Client:listPrincipalThingsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalThingsV2",
        input_schema = types.ListPrincipalThingsV2Input,
        output_schema = types.ListPrincipalThingsV2Output,
        http_method = "GET",
        http_path = "/principals/things-v2",
    }, options)
end

function Client:listProvisioningTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningTemplates",
        input_schema = types.ListProvisioningTemplatesInput,
        output_schema = types.ListProvisioningTemplatesOutput,
        http_method = "GET",
        http_path = "/provisioning-templates",
    }, options)
end

function Client:listProvisioningTemplateVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningTemplateVersions",
        input_schema = types.ListProvisioningTemplateVersionsInput,
        output_schema = types.ListProvisioningTemplateVersionsOutput,
        http_method = "GET",
        http_path = "/provisioning-templates/{templateName}/versions",
    }, options)
end

function Client:listRelatedResourcesForAuditFinding(input, options)
    return self:invokeOperation(input, {
        name = "ListRelatedResourcesForAuditFinding",
        input_schema = types.ListRelatedResourcesForAuditFindingInput,
        output_schema = types.ListRelatedResourcesForAuditFindingOutput,
        http_method = "GET",
        http_path = "/audit/relatedResources",
    }, options)
end

function Client:listRoleAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListRoleAliases",
        input_schema = types.ListRoleAliasesInput,
        output_schema = types.ListRoleAliasesOutput,
        http_method = "GET",
        http_path = "/role-aliases",
    }, options)
end

function Client:listSbomValidationResults(input, options)
    return self:invokeOperation(input, {
        name = "ListSbomValidationResults",
        input_schema = types.ListSbomValidationResultsInput,
        output_schema = types.ListSbomValidationResultsOutput,
        http_method = "GET",
        http_path = "/packages/{packageName}/versions/{versionName}/sbom-validation-results",
    }, options)
end

function Client:listScheduledAudits(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledAudits",
        input_schema = types.ListScheduledAuditsInput,
        output_schema = types.ListScheduledAuditsOutput,
        http_method = "GET",
        http_path = "/audit/scheduledaudits",
    }, options)
end

function Client:listSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfiles",
        input_schema = types.ListSecurityProfilesInput,
        output_schema = types.ListSecurityProfilesOutput,
        http_method = "GET",
        http_path = "/security-profiles",
    }, options)
end

function Client:listSecurityProfilesForTarget(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfilesForTarget",
        input_schema = types.ListSecurityProfilesForTargetInput,
        output_schema = types.ListSecurityProfilesForTargetOutput,
        http_method = "GET",
        http_path = "/security-profiles-for-target",
    }, options)
end

function Client:listStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListStreams",
        input_schema = types.ListStreamsInput,
        output_schema = types.ListStreamsOutput,
        http_method = "GET",
        http_path = "/streams",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:listTargetsForPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsForPolicy",
        input_schema = types.ListTargetsForPolicyInput,
        output_schema = types.ListTargetsForPolicyOutput,
        http_method = "POST",
        http_path = "/policy-targets/{policyName}",
    }, options)
end

function Client:listTargetsForSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsForSecurityProfile",
        input_schema = types.ListTargetsForSecurityProfileInput,
        output_schema = types.ListTargetsForSecurityProfileOutput,
        http_method = "GET",
        http_path = "/security-profiles/{securityProfileName}/targets",
    }, options)
end

function Client:listThingGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListThingGroups",
        input_schema = types.ListThingGroupsInput,
        output_schema = types.ListThingGroupsOutput,
        http_method = "GET",
        http_path = "/thing-groups",
    }, options)
end

function Client:listThingGroupsForThing(input, options)
    return self:invokeOperation(input, {
        name = "ListThingGroupsForThing",
        input_schema = types.ListThingGroupsForThingInput,
        output_schema = types.ListThingGroupsForThingOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/thing-groups",
    }, options)
end

function Client:listThingPrincipals(input, options)
    return self:invokeOperation(input, {
        name = "ListThingPrincipals",
        input_schema = types.ListThingPrincipalsInput,
        output_schema = types.ListThingPrincipalsOutput,
        http_method = "GET",
        http_path = "/things/{thingName}/principals",
    }, options)
end

function Client:listThingPrincipalsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListThingPrincipalsV2",
        input_schema = types.ListThingPrincipalsV2Input,
        output_schema = types.ListThingPrincipalsV2Output,
        http_method = "GET",
        http_path = "/things/{thingName}/principals-v2",
    }, options)
end

function Client:listThingRegistrationTaskReports(input, options)
    return self:invokeOperation(input, {
        name = "ListThingRegistrationTaskReports",
        input_schema = types.ListThingRegistrationTaskReportsInput,
        output_schema = types.ListThingRegistrationTaskReportsOutput,
        http_method = "GET",
        http_path = "/thing-registration-tasks/{taskId}/reports",
    }, options)
end

function Client:listThingRegistrationTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListThingRegistrationTasks",
        input_schema = types.ListThingRegistrationTasksInput,
        output_schema = types.ListThingRegistrationTasksOutput,
        http_method = "GET",
        http_path = "/thing-registration-tasks",
    }, options)
end

function Client:listThings(input, options)
    return self:invokeOperation(input, {
        name = "ListThings",
        input_schema = types.ListThingsInput,
        output_schema = types.ListThingsOutput,
        http_method = "GET",
        http_path = "/things",
    }, options)
end

function Client:listThingsInBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListThingsInBillingGroup",
        input_schema = types.ListThingsInBillingGroupInput,
        output_schema = types.ListThingsInBillingGroupOutput,
        http_method = "GET",
        http_path = "/billing-groups/{billingGroupName}/things",
    }, options)
end

function Client:listThingsInThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListThingsInThingGroup",
        input_schema = types.ListThingsInThingGroupInput,
        output_schema = types.ListThingsInThingGroupOutput,
        http_method = "GET",
        http_path = "/thing-groups/{thingGroupName}/things",
    }, options)
end

function Client:listThingTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListThingTypes",
        input_schema = types.ListThingTypesInput,
        output_schema = types.ListThingTypesOutput,
        http_method = "GET",
        http_path = "/thing-types",
    }, options)
end

function Client:listTopicRuleDestinations(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicRuleDestinations",
        input_schema = types.ListTopicRuleDestinationsInput,
        output_schema = types.ListTopicRuleDestinationsOutput,
        http_method = "GET",
        http_path = "/destinations",
    }, options)
end

function Client:listTopicRules(input, options)
    return self:invokeOperation(input, {
        name = "ListTopicRules",
        input_schema = types.ListTopicRulesInput,
        output_schema = types.ListTopicRulesOutput,
        http_method = "GET",
        http_path = "/rules",
    }, options)
end

function Client:listV2LoggingLevels(input, options)
    return self:invokeOperation(input, {
        name = "ListV2LoggingLevels",
        input_schema = types.ListV2LoggingLevelsInput,
        output_schema = types.ListV2LoggingLevelsOutput,
        http_method = "GET",
        http_path = "/v2LoggingLevel",
    }, options)
end

function Client:listViolationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListViolationEvents",
        input_schema = types.ListViolationEventsInput,
        output_schema = types.ListViolationEventsOutput,
        http_method = "GET",
        http_path = "/violation-events",
    }, options)
end

function Client:putVerificationStateOnViolation(input, options)
    return self:invokeOperation(input, {
        name = "PutVerificationStateOnViolation",
        input_schema = types.PutVerificationStateOnViolationInput,
        output_schema = types.PutVerificationStateOnViolationOutput,
        http_method = "POST",
        http_path = "/violations/verification-state/{violationId}",
    }, options)
end

function Client:registerCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCACertificate",
        input_schema = types.RegisterCACertificateInput,
        output_schema = types.RegisterCACertificateOutput,
        http_method = "POST",
        http_path = "/cacertificate",
    }, options)
end

function Client:registerCertificate(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCertificate",
        input_schema = types.RegisterCertificateInput,
        output_schema = types.RegisterCertificateOutput,
        http_method = "POST",
        http_path = "/certificate/register",
    }, options)
end

function Client:registerCertificateWithoutCA(input, options)
    return self:invokeOperation(input, {
        name = "RegisterCertificateWithoutCA",
        input_schema = types.RegisterCertificateWithoutCAInput,
        output_schema = types.RegisterCertificateWithoutCAOutput,
        http_method = "POST",
        http_path = "/certificate/register-no-ca",
    }, options)
end

function Client:registerThing(input, options)
    return self:invokeOperation(input, {
        name = "RegisterThing",
        input_schema = types.RegisterThingInput,
        output_schema = types.RegisterThingOutput,
        http_method = "POST",
        http_path = "/things",
    }, options)
end

function Client:rejectCertificateTransfer(input, options)
    return self:invokeOperation(input, {
        name = "RejectCertificateTransfer",
        input_schema = types.RejectCertificateTransferInput,
        output_schema = types.RejectCertificateTransferOutput,
        http_method = "PATCH",
        http_path = "/reject-certificate-transfer/{certificateId}",
    }, options)
end

function Client:removeThingFromBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "RemoveThingFromBillingGroup",
        input_schema = types.RemoveThingFromBillingGroupInput,
        output_schema = types.RemoveThingFromBillingGroupOutput,
        http_method = "PUT",
        http_path = "/billing-groups/removeThingFromBillingGroup",
    }, options)
end

function Client:removeThingFromThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "RemoveThingFromThingGroup",
        input_schema = types.RemoveThingFromThingGroupInput,
        output_schema = types.RemoveThingFromThingGroupOutput,
        http_method = "PUT",
        http_path = "/thing-groups/removeThingFromThingGroup",
    }, options)
end

function Client:replaceTopicRule(input, options)
    return self:invokeOperation(input, {
        name = "ReplaceTopicRule",
        input_schema = types.ReplaceTopicRuleInput,
        output_schema = types.ReplaceTopicRuleOutput,
        http_method = "PATCH",
        http_path = "/rules/{ruleName}",
    }, options)
end

function Client:searchIndex(input, options)
    return self:invokeOperation(input, {
        name = "SearchIndex",
        input_schema = types.SearchIndexInput,
        output_schema = types.SearchIndexOutput,
        http_method = "POST",
        http_path = "/indices/search",
    }, options)
end

function Client:setDefaultAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultAuthorizer",
        input_schema = types.SetDefaultAuthorizerInput,
        output_schema = types.SetDefaultAuthorizerOutput,
        http_method = "POST",
        http_path = "/default-authorizer",
    }, options)
end

function Client:setDefaultPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultPolicyVersion",
        input_schema = types.SetDefaultPolicyVersionInput,
        output_schema = types.SetDefaultPolicyVersionOutput,
        http_method = "PATCH",
        http_path = "/policies/{policyName}/version/{policyVersionId}",
    }, options)
end

function Client:setLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "SetLoggingOptions",
        input_schema = types.SetLoggingOptionsInput,
        output_schema = types.SetLoggingOptionsOutput,
        http_method = "POST",
        http_path = "/loggingOptions",
    }, options)
end

function Client:setV2LoggingLevel(input, options)
    return self:invokeOperation(input, {
        name = "SetV2LoggingLevel",
        input_schema = types.SetV2LoggingLevelInput,
        output_schema = types.SetV2LoggingLevelOutput,
        http_method = "POST",
        http_path = "/v2LoggingLevel",
    }, options)
end

function Client:setV2LoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "SetV2LoggingOptions",
        input_schema = types.SetV2LoggingOptionsInput,
        output_schema = types.SetV2LoggingOptionsOutput,
        http_method = "POST",
        http_path = "/v2LoggingOptions",
    }, options)
end

function Client:startAuditMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "StartAuditMitigationActionsTask",
        input_schema = types.StartAuditMitigationActionsTaskInput,
        output_schema = types.StartAuditMitigationActionsTaskOutput,
        http_method = "POST",
        http_path = "/audit/mitigationactions/tasks/{taskId}",
    }, options)
end

function Client:startDetectMitigationActionsTask(input, options)
    return self:invokeOperation(input, {
        name = "StartDetectMitigationActionsTask",
        input_schema = types.StartDetectMitigationActionsTaskInput,
        output_schema = types.StartDetectMitigationActionsTaskOutput,
        http_method = "PUT",
        http_path = "/detect/mitigationactions/tasks/{taskId}",
    }, options)
end

function Client:startOnDemandAuditTask(input, options)
    return self:invokeOperation(input, {
        name = "StartOnDemandAuditTask",
        input_schema = types.StartOnDemandAuditTaskInput,
        output_schema = types.StartOnDemandAuditTaskOutput,
        http_method = "POST",
        http_path = "/audit/tasks",
    }, options)
end

function Client:startThingRegistrationTask(input, options)
    return self:invokeOperation(input, {
        name = "StartThingRegistrationTask",
        input_schema = types.StartThingRegistrationTaskInput,
        output_schema = types.StartThingRegistrationTaskOutput,
        http_method = "POST",
        http_path = "/thing-registration-tasks",
    }, options)
end

function Client:stopThingRegistrationTask(input, options)
    return self:invokeOperation(input, {
        name = "StopThingRegistrationTask",
        input_schema = types.StopThingRegistrationTaskInput,
        output_schema = types.StopThingRegistrationTaskOutput,
        http_method = "PUT",
        http_path = "/thing-registration-tasks/{taskId}/cancel",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags",
    }, options)
end

function Client:testAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "TestAuthorization",
        input_schema = types.TestAuthorizationInput,
        output_schema = types.TestAuthorizationOutput,
        http_method = "POST",
        http_path = "/test-authorization",
    }, options)
end

function Client:testInvokeAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "TestInvokeAuthorizer",
        input_schema = types.TestInvokeAuthorizerInput,
        output_schema = types.TestInvokeAuthorizerOutput,
        http_method = "POST",
        http_path = "/authorizer/{authorizerName}/test",
    }, options)
end

function Client:transferCertificate(input, options)
    return self:invokeOperation(input, {
        name = "TransferCertificate",
        input_schema = types.TransferCertificateInput,
        output_schema = types.TransferCertificateOutput,
        http_method = "PATCH",
        http_path = "/transfer-certificate/{certificateId}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untag",
    }, options)
end

function Client:updateAccountAuditConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccountAuditConfiguration",
        input_schema = types.UpdateAccountAuditConfigurationInput,
        output_schema = types.UpdateAccountAuditConfigurationOutput,
        http_method = "PATCH",
        http_path = "/audit/configuration",
    }, options)
end

function Client:updateAuditSuppression(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuditSuppression",
        input_schema = types.UpdateAuditSuppressionInput,
        output_schema = types.UpdateAuditSuppressionOutput,
        http_method = "PATCH",
        http_path = "/audit/suppressions/update",
    }, options)
end

function Client:updateAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthorizer",
        input_schema = types.UpdateAuthorizerInput,
        output_schema = types.UpdateAuthorizerOutput,
        http_method = "PUT",
        http_path = "/authorizer/{authorizerName}",
    }, options)
end

function Client:updateBillingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillingGroup",
        input_schema = types.UpdateBillingGroupInput,
        output_schema = types.UpdateBillingGroupOutput,
        http_method = "PATCH",
        http_path = "/billing-groups/{billingGroupName}",
    }, options)
end

function Client:updateCACertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCACertificate",
        input_schema = types.UpdateCACertificateInput,
        output_schema = types.UpdateCACertificateOutput,
        http_method = "PUT",
        http_path = "/cacertificate/{certificateId}",
    }, options)
end

function Client:updateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificate",
        input_schema = types.UpdateCertificateInput,
        output_schema = types.UpdateCertificateOutput,
        http_method = "PUT",
        http_path = "/certificates/{certificateId}",
    }, options)
end

function Client:updateCertificateProvider(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificateProvider",
        input_schema = types.UpdateCertificateProviderInput,
        output_schema = types.UpdateCertificateProviderOutput,
        http_method = "PUT",
        http_path = "/certificate-providers/{certificateProviderName}",
    }, options)
end

function Client:updateCommand(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCommand",
        input_schema = types.UpdateCommandInput,
        output_schema = types.UpdateCommandOutput,
        http_method = "PATCH",
        http_path = "/commands/{commandId}",
    }, options)
end

function Client:updateCustomMetric(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomMetric",
        input_schema = types.UpdateCustomMetricInput,
        output_schema = types.UpdateCustomMetricOutput,
        http_method = "PATCH",
        http_path = "/custom-metric/{metricName}",
    }, options)
end

function Client:updateDimension(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDimension",
        input_schema = types.UpdateDimensionInput,
        output_schema = types.UpdateDimensionOutput,
        http_method = "PATCH",
        http_path = "/dimensions/{name}",
    }, options)
end

function Client:updateDomainConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainConfiguration",
        input_schema = types.UpdateDomainConfigurationInput,
        output_schema = types.UpdateDomainConfigurationOutput,
        http_method = "PUT",
        http_path = "/domainConfigurations/{domainConfigurationName}",
    }, options)
end

function Client:updateDynamicThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDynamicThingGroup",
        input_schema = types.UpdateDynamicThingGroupInput,
        output_schema = types.UpdateDynamicThingGroupOutput,
        http_method = "PATCH",
        http_path = "/dynamic-thing-groups/{thingGroupName}",
    }, options)
end

function Client:updateEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEncryptionConfiguration",
        input_schema = types.UpdateEncryptionConfigurationInput,
        output_schema = types.UpdateEncryptionConfigurationOutput,
        http_method = "PATCH",
        http_path = "/encryption-configuration",
    }, options)
end

function Client:updateEventConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventConfigurations",
        input_schema = types.UpdateEventConfigurationsInput,
        output_schema = types.UpdateEventConfigurationsOutput,
        http_method = "PATCH",
        http_path = "/event-configurations",
    }, options)
end

function Client:updateFleetMetric(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleetMetric",
        input_schema = types.UpdateFleetMetricInput,
        output_schema = types.UpdateFleetMetricOutput,
        http_method = "PATCH",
        http_path = "/fleet-metric/{metricName}",
    }, options)
end

function Client:updateIndexingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIndexingConfiguration",
        input_schema = types.UpdateIndexingConfigurationInput,
        output_schema = types.UpdateIndexingConfigurationOutput,
        http_method = "POST",
        http_path = "/indexing/config",
    }, options)
end

function Client:updateJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJob",
        input_schema = types.UpdateJobInput,
        output_schema = types.UpdateJobOutput,
        http_method = "PATCH",
        http_path = "/jobs/{jobId}",
    }, options)
end

function Client:updateMitigationAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMitigationAction",
        input_schema = types.UpdateMitigationActionInput,
        output_schema = types.UpdateMitigationActionOutput,
        http_method = "PATCH",
        http_path = "/mitigationactions/actions/{actionName}",
    }, options)
end

function Client:updatePackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackage",
        input_schema = types.UpdatePackageInput,
        output_schema = types.UpdatePackageOutput,
        http_method = "PATCH",
        http_path = "/packages/{packageName}",
    }, options)
end

function Client:updatePackageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageConfiguration",
        input_schema = types.UpdatePackageConfigurationInput,
        output_schema = types.UpdatePackageConfigurationOutput,
        http_method = "PATCH",
        http_path = "/package-configuration",
    }, options)
end

function Client:updatePackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePackageVersion",
        input_schema = types.UpdatePackageVersionInput,
        output_schema = types.UpdatePackageVersionOutput,
        http_method = "PATCH",
        http_path = "/packages/{packageName}/versions/{versionName}",
    }, options)
end

function Client:updateProvisioningTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisioningTemplate",
        input_schema = types.UpdateProvisioningTemplateInput,
        output_schema = types.UpdateProvisioningTemplateOutput,
        http_method = "PATCH",
        http_path = "/provisioning-templates/{templateName}",
    }, options)
end

function Client:updateRoleAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoleAlias",
        input_schema = types.UpdateRoleAliasInput,
        output_schema = types.UpdateRoleAliasOutput,
        http_method = "PUT",
        http_path = "/role-aliases/{roleAlias}",
    }, options)
end

function Client:updateScheduledAudit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledAudit",
        input_schema = types.UpdateScheduledAuditInput,
        output_schema = types.UpdateScheduledAuditOutput,
        http_method = "PATCH",
        http_path = "/audit/scheduledaudits/{scheduledAuditName}",
    }, options)
end

function Client:updateSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityProfile",
        input_schema = types.UpdateSecurityProfileInput,
        output_schema = types.UpdateSecurityProfileOutput,
        http_method = "PATCH",
        http_path = "/security-profiles/{securityProfileName}",
    }, options)
end

function Client:updateStream(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStream",
        input_schema = types.UpdateStreamInput,
        output_schema = types.UpdateStreamOutput,
        http_method = "PUT",
        http_path = "/streams/{streamId}",
    }, options)
end

function Client:updateThing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThing",
        input_schema = types.UpdateThingInput,
        output_schema = types.UpdateThingOutput,
        http_method = "PATCH",
        http_path = "/things/{thingName}",
    }, options)
end

function Client:updateThingGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingGroup",
        input_schema = types.UpdateThingGroupInput,
        output_schema = types.UpdateThingGroupOutput,
        http_method = "PATCH",
        http_path = "/thing-groups/{thingGroupName}",
    }, options)
end

function Client:updateThingGroupsForThing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingGroupsForThing",
        input_schema = types.UpdateThingGroupsForThingInput,
        output_schema = types.UpdateThingGroupsForThingOutput,
        http_method = "PUT",
        http_path = "/thing-groups/updateThingGroupsForThing",
    }, options)
end

function Client:updateThingType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateThingType",
        input_schema = types.UpdateThingTypeInput,
        output_schema = types.UpdateThingTypeOutput,
        http_method = "PATCH",
        http_path = "/thing-types/{thingTypeName}",
    }, options)
end

function Client:updateTopicRuleDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTopicRuleDestination",
        input_schema = types.UpdateTopicRuleDestinationInput,
        output_schema = types.UpdateTopicRuleDestinationOutput,
        http_method = "PATCH",
        http_path = "/destinations",
    }, options)
end

function Client:validateSecurityProfileBehaviors(input, options)
    return self:invokeOperation(input, {
        name = "ValidateSecurityProfileBehaviors",
        input_schema = types.ValidateSecurityProfileBehaviorsInput,
        output_schema = types.ValidateSecurityProfileBehaviorsOutput,
        http_method = "POST",
        http_path = "/security-profile-behaviors/validate",
    }, options)
end

return M
