



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iot.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iot.schemas")
local traits = require("smithy.traits")
local types = require("iot.types")
local sdk_defaults = require("aws.sdk_defaults")






















































































































































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSIotService"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iot", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:acceptCertificateTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptCertificateTransfer, input, options)
end

function C:addThingToBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddThingToBillingGroup, input, options)
end

function C:addThingToThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddThingToThingGroup, input, options)
end

function C:associateSbomWithPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSbomWithPackageVersion, input, options)
end

function C:associateTargetsWithJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTargetsWithJob, input, options)
end

function C:attachPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachPolicy, input, options)
end

function C:attachPrincipalPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachPrincipalPolicy, input, options)
end

function C:attachSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachSecurityProfile, input, options)
end

function C:attachThingPrincipal(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachThingPrincipal, input, options)
end

function C:cancelAuditMitigationActionsTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAuditMitigationActionsTask, input, options)
end

function C:cancelAuditTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelAuditTask, input, options)
end

function C:cancelCertificateTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCertificateTransfer, input, options)
end

function C:cancelDetectMitigationActionsTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelDetectMitigationActionsTask, input, options)
end

function C:cancelJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJob, input, options)
end

function C:cancelJobExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJobExecution, input, options)
end

function C:clearDefaultAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.ClearDefaultAuthorizer, input, options)
end

function C:confirmTopicRuleDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.ConfirmTopicRuleDestination, input, options)
end

function C:createAuditSuppression(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAuditSuppression, input, options)
end

function C:createAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAuthorizer, input, options)
end

function C:createBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBillingGroup, input, options)
end

function C:createCertificateFromCsr(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCertificateFromCsr, input, options)
end

function C:createCertificateProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCertificateProvider, input, options)
end

function C:createCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCommand, input, options)
end

function C:createCustomMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCustomMetric, input, options)
end

function C:createDimension(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDimension, input, options)
end

function C:createDomainConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainConfiguration, input, options)
end

function C:createDynamicThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDynamicThingGroup, input, options)
end

function C:createFleetMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleetMetric, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJobTemplate, input, options)
end

function C:createKeysAndCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateKeysAndCertificate, input, options)
end

function C:createMitigationAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMitigationAction, input, options)
end

function C:createOTAUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOTAUpdate, input, options)
end

function C:createPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackage, input, options)
end

function C:createPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePackageVersion, input, options)
end

function C:createPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicy, input, options)
end

function C:createPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePolicyVersion, input, options)
end

function C:createProvisioningClaim(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisioningClaim, input, options)
end

function C:createProvisioningTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisioningTemplate, input, options)
end

function C:createProvisioningTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisioningTemplateVersion, input, options)
end

function C:createRoleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoleAlias, input, options)
end

function C:createScheduledAudit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScheduledAudit, input, options)
end

function C:createSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityProfile, input, options)
end

function C:createStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStream, input, options)
end

function C:createThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThing, input, options)
end

function C:createThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThingGroup, input, options)
end

function C:createThingType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateThingType, input, options)
end

function C:createTopicRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTopicRule, input, options)
end

function C:createTopicRuleDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTopicRuleDestination, input, options)
end

function C:deleteAccountAuditConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountAuditConfiguration, input, options)
end

function C:deleteAuditSuppression(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAuditSuppression, input, options)
end

function C:deleteAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAuthorizer, input, options)
end

function C:deleteBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBillingGroup, input, options)
end

function C:deleteCACertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCACertificate, input, options)
end

function C:deleteCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificate, input, options)
end

function C:deleteCertificateProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificateProvider, input, options)
end

function C:deleteCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCommand, input, options)
end

function C:deleteCommandExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCommandExecution, input, options)
end

function C:deleteCustomMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCustomMetric, input, options)
end

function C:deleteDimension(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDimension, input, options)
end

function C:deleteDomainConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainConfiguration, input, options)
end

function C:deleteDynamicThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDynamicThingGroup, input, options)
end

function C:deleteFleetMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleetMetric, input, options)
end

function C:deleteJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJob, input, options)
end

function C:deleteJobExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJobExecution, input, options)
end

function C:deleteJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJobTemplate, input, options)
end

function C:deleteMitigationAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMitigationAction, input, options)
end

function C:deleteOTAUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOTAUpdate, input, options)
end

function C:deletePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackage, input, options)
end

function C:deletePackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePackageVersion, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deletePolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicyVersion, input, options)
end

function C:deleteProvisioningTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisioningTemplate, input, options)
end

function C:deleteProvisioningTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisioningTemplateVersion, input, options)
end

function C:deleteRegistrationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRegistrationCode, input, options)
end

function C:deleteRoleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoleAlias, input, options)
end

function C:deleteScheduledAudit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScheduledAudit, input, options)
end

function C:deleteSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSecurityProfile, input, options)
end

function C:deleteStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStream, input, options)
end

function C:deleteThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThing, input, options)
end

function C:deleteThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThingGroup, input, options)
end

function C:deleteThingType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteThingType, input, options)
end

function C:deleteTopicRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTopicRule, input, options)
end

function C:deleteTopicRuleDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTopicRuleDestination, input, options)
end

function C:deleteV2LoggingLevel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteV2LoggingLevel, input, options)
end

function C:deprecateThingType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprecateThingType, input, options)
end

function C:describeAccountAuditConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountAuditConfiguration, input, options)
end

function C:describeAuditFinding(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuditFinding, input, options)
end

function C:describeAuditMitigationActionsTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuditMitigationActionsTask, input, options)
end

function C:describeAuditSuppression(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuditSuppression, input, options)
end

function C:describeAuditTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuditTask, input, options)
end

function C:describeAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAuthorizer, input, options)
end

function C:describeBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBillingGroup, input, options)
end

function C:describeCACertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCACertificate, input, options)
end

function C:describeCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificate, input, options)
end

function C:describeCertificateProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificateProvider, input, options)
end

function C:describeCustomMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomMetric, input, options)
end

function C:describeDefaultAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDefaultAuthorizer, input, options)
end

function C:describeDetectMitigationActionsTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDetectMitigationActionsTask, input, options)
end

function C:describeDimension(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDimension, input, options)
end

function C:describeDomainConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomainConfiguration, input, options)
end

function C:describeEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEncryptionConfiguration, input, options)
end

function C:describeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoint, input, options)
end

function C:describeEventConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventConfigurations, input, options)
end

function C:describeFleetMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFleetMetric, input, options)
end

function C:describeIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIndex, input, options)
end

function C:describeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJob, input, options)
end

function C:describeJobExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobExecution, input, options)
end

function C:describeJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobTemplate, input, options)
end

function C:describeManagedJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedJobTemplate, input, options)
end

function C:describeMitigationAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMitigationAction, input, options)
end

function C:describeProvisioningTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProvisioningTemplate, input, options)
end

function C:describeProvisioningTemplateVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProvisioningTemplateVersion, input, options)
end

function C:describeRoleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRoleAlias, input, options)
end

function C:describeScheduledAudit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScheduledAudit, input, options)
end

function C:describeSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityProfile, input, options)
end

function C:describeStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStream, input, options)
end

function C:describeThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThing, input, options)
end

function C:describeThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThingGroup, input, options)
end

function C:describeThingRegistrationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThingRegistrationTask, input, options)
end

function C:describeThingType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeThingType, input, options)
end

function C:detachPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachPolicy, input, options)
end

function C:detachPrincipalPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachPrincipalPolicy, input, options)
end

function C:detachSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachSecurityProfile, input, options)
end

function C:detachThingPrincipal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachThingPrincipal, input, options)
end

function C:disableTopicRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableTopicRule, input, options)
end

function C:disassociateSbomFromPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSbomFromPackageVersion, input, options)
end

function C:enableTopicRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableTopicRule, input, options)
end

function C:getBehaviorModelTrainingSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBehaviorModelTrainingSummaries, input, options)
end

function C:getBucketsAggregation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBucketsAggregation, input, options)
end

function C:getCardinality(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCardinality, input, options)
end

function C:getCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommand, input, options)
end

function C:getCommandExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCommandExecution, input, options)
end

function C:getEffectivePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEffectivePolicies, input, options)
end

function C:getIndexingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIndexingConfiguration, input, options)
end

function C:getJobDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobDocument, input, options)
end

function C:getLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLoggingOptions, input, options)
end

function C:getOTAUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOTAUpdate, input, options)
end

function C:getPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPackage, input, options)
end

function C:getPackageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPackageConfiguration, input, options)
end

function C:getPackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPackageVersion, input, options)
end

function C:getPercentiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPercentiles, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicyVersion, input, options)
end

function C:getRegistrationCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRegistrationCode, input, options)
end

function C:getStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStatistics, input, options)
end

function C:getThingConnectivityData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetThingConnectivityData, input, options)
end

function C:getTopicRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTopicRule, input, options)
end

function C:getTopicRuleDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTopicRuleDestination, input, options)
end

function C:getV2LoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetV2LoggingOptions, input, options)
end

function C:listActiveViolations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActiveViolations, input, options)
end

function C:listAttachedPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAttachedPolicies, input, options)
end

function C:listAuditFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuditFindings, input, options)
end

function C:listAuditMitigationActionsExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuditMitigationActionsExecutions, input, options)
end

function C:listAuditMitigationActionsTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuditMitigationActionsTasks, input, options)
end

function C:listAuditSuppressions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuditSuppressions, input, options)
end

function C:listAuditTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuditTasks, input, options)
end

function C:listAuthorizers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAuthorizers, input, options)
end

function C:listBillingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBillingGroups, input, options)
end

function C:listCACertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCACertificates, input, options)
end

function C:listCertificateProviders(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificateProviders, input, options)
end

function C:listCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificates, input, options)
end

function C:listCertificatesByCA(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificatesByCA, input, options)
end

function C:listCommandExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCommandExecutions, input, options)
end

function C:listCommands(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCommands, input, options)
end

function C:listCustomMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCustomMetrics, input, options)
end

function C:listDetectMitigationActionsExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDetectMitigationActionsExecutions, input, options)
end

function C:listDetectMitigationActionsTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDetectMitigationActionsTasks, input, options)
end

function C:listDimensions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDimensions, input, options)
end

function C:listDomainConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomainConfigurations, input, options)
end

function C:listFleetMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleetMetrics, input, options)
end

function C:listIndices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIndices, input, options)
end

function C:listJobExecutionsForJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobExecutionsForJob, input, options)
end

function C:listJobExecutionsForThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobExecutionsForThing, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listJobTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobTemplates, input, options)
end

function C:listManagedJobTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedJobTemplates, input, options)
end

function C:listMetricValues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetricValues, input, options)
end

function C:listMitigationActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMitigationActions, input, options)
end

function C:listOTAUpdates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOTAUpdates, input, options)
end

function C:listOutgoingCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOutgoingCertificates, input, options)
end

function C:listPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackages, input, options)
end

function C:listPackageVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPackageVersions, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listPolicyPrincipals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyPrincipals, input, options)
end

function C:listPolicyVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicyVersions, input, options)
end

function C:listPrincipalPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrincipalPolicies, input, options)
end

function C:listPrincipalThings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrincipalThings, input, options)
end

function C:listPrincipalThingsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrincipalThingsV2, input, options)
end

function C:listProvisioningTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisioningTemplates, input, options)
end

function C:listProvisioningTemplateVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisioningTemplateVersions, input, options)
end

function C:listRelatedResourcesForAuditFinding(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRelatedResourcesForAuditFinding, input, options)
end

function C:listRoleAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoleAliases, input, options)
end

function C:listSbomValidationResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSbomValidationResults, input, options)
end

function C:listScheduledAudits(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScheduledAudits, input, options)
end

function C:listSecurityProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityProfiles, input, options)
end

function C:listSecurityProfilesForTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityProfilesForTarget, input, options)
end

function C:listStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStreams, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetsForPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetsForPolicy, input, options)
end

function C:listTargetsForSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetsForSecurityProfile, input, options)
end

function C:listThingGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingGroups, input, options)
end

function C:listThingGroupsForThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingGroupsForThing, input, options)
end

function C:listThingPrincipals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingPrincipals, input, options)
end

function C:listThingPrincipalsV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingPrincipalsV2, input, options)
end

function C:listThingRegistrationTaskReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingRegistrationTaskReports, input, options)
end

function C:listThingRegistrationTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingRegistrationTasks, input, options)
end

function C:listThings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThings, input, options)
end

function C:listThingsInBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingsInBillingGroup, input, options)
end

function C:listThingsInThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingsInThingGroup, input, options)
end

function C:listThingTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThingTypes, input, options)
end

function C:listTopicRuleDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopicRuleDestinations, input, options)
end

function C:listTopicRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTopicRules, input, options)
end

function C:listV2LoggingLevels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListV2LoggingLevels, input, options)
end

function C:listViolationEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListViolationEvents, input, options)
end

function C:putVerificationStateOnViolation(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutVerificationStateOnViolation, input, options)
end

function C:registerCACertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCACertificate, input, options)
end

function C:registerCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCertificate, input, options)
end

function C:registerCertificateWithoutCA(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCertificateWithoutCA, input, options)
end

function C:registerThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterThing, input, options)
end

function C:rejectCertificateTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectCertificateTransfer, input, options)
end

function C:removeThingFromBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveThingFromBillingGroup, input, options)
end

function C:removeThingFromThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveThingFromThingGroup, input, options)
end

function C:replaceTopicRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReplaceTopicRule, input, options)
end

function C:searchIndex(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchIndex, input, options)
end

function C:setDefaultAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultAuthorizer, input, options)
end

function C:setDefaultPolicyVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDefaultPolicyVersion, input, options)
end

function C:setLoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetLoggingOptions, input, options)
end

function C:setV2LoggingLevel(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetV2LoggingLevel, input, options)
end

function C:setV2LoggingOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetV2LoggingOptions, input, options)
end

function C:startAuditMitigationActionsTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAuditMitigationActionsTask, input, options)
end

function C:startDetectMitigationActionsTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDetectMitigationActionsTask, input, options)
end

function C:startOnDemandAuditTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOnDemandAuditTask, input, options)
end

function C:startThingRegistrationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartThingRegistrationTask, input, options)
end

function C:stopThingRegistrationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopThingRegistrationTask, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testAuthorization(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestAuthorization, input, options)
end

function C:testInvokeAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestInvokeAuthorizer, input, options)
end

function C:transferCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.TransferCertificate, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountAuditConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountAuditConfiguration, input, options)
end

function C:updateAuditSuppression(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAuditSuppression, input, options)
end

function C:updateAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAuthorizer, input, options)
end

function C:updateBillingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBillingGroup, input, options)
end

function C:updateCACertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCACertificate, input, options)
end

function C:updateCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCertificate, input, options)
end

function C:updateCertificateProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCertificateProvider, input, options)
end

function C:updateCommand(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCommand, input, options)
end

function C:updateCustomMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCustomMetric, input, options)
end

function C:updateDimension(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDimension, input, options)
end

function C:updateDomainConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainConfiguration, input, options)
end

function C:updateDynamicThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDynamicThingGroup, input, options)
end

function C:updateEncryptionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEncryptionConfiguration, input, options)
end

function C:updateEventConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventConfigurations, input, options)
end

function C:updateFleetMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleetMetric, input, options)
end

function C:updateIndexingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIndexingConfiguration, input, options)
end

function C:updateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJob, input, options)
end

function C:updateMitigationAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMitigationAction, input, options)
end

function C:updatePackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackage, input, options)
end

function C:updatePackageConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackageConfiguration, input, options)
end

function C:updatePackageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePackageVersion, input, options)
end

function C:updateProvisioningTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProvisioningTemplate, input, options)
end

function C:updateRoleAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoleAlias, input, options)
end

function C:updateScheduledAudit(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScheduledAudit, input, options)
end

function C:updateSecurityProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSecurityProfile, input, options)
end

function C:updateStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStream, input, options)
end

function C:updateThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThing, input, options)
end

function C:updateThingGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThingGroup, input, options)
end

function C:updateThingGroupsForThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThingGroupsForThing, input, options)
end

function C:updateThingType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateThingType, input, options)
end

function C:updateTopicRuleDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTopicRuleDestination, input, options)
end

function C:validateSecurityProfileBehaviors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateSecurityProfileBehaviors, input, options)
end

return M
