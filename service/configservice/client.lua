local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("configservice.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("configservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "StarlingDoveService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "config", signing_region = cfg.region } }
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

function Client:associateResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResourceTypes",
        input_schema = types.AssociateResourceTypesInput,
        output_schema = types.AssociateResourceTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAggregateResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAggregateResourceConfig",
        input_schema = types.BatchGetAggregateResourceConfigInput,
        output_schema = types.BatchGetAggregateResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetResourceConfig",
        input_schema = types.BatchGetResourceConfigInput,
        output_schema = types.BatchGetResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAggregationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAggregationAuthorization",
        input_schema = types.DeleteAggregationAuthorizationInput,
        output_schema = types.DeleteAggregationAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigRule",
        input_schema = types.DeleteConfigRuleInput,
        output_schema = types.DeleteConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationAggregator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationAggregator",
        input_schema = types.DeleteConfigurationAggregatorInput,
        output_schema = types.DeleteConfigurationAggregatorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationRecorder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationRecorder",
        input_schema = types.DeleteConfigurationRecorderInput,
        output_schema = types.DeleteConfigurationRecorderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConformancePack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConformancePack",
        input_schema = types.DeleteConformancePackInput,
        output_schema = types.DeleteConformancePackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeliveryChannel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeliveryChannel",
        input_schema = types.DeleteDeliveryChannelInput,
        output_schema = types.DeleteDeliveryChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEvaluationResults(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvaluationResults",
        input_schema = types.DeleteEvaluationResultsInput,
        output_schema = types.DeleteEvaluationResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOrganizationConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOrganizationConfigRule",
        input_schema = types.DeleteOrganizationConfigRuleInput,
        output_schema = types.DeleteOrganizationConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOrganizationConformancePack(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOrganizationConformancePack",
        input_schema = types.DeleteOrganizationConformancePackInput,
        output_schema = types.DeleteOrganizationConformancePackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePendingAggregationRequest(input, options)
    return self:invokeOperation(input, {
        name = "DeletePendingAggregationRequest",
        input_schema = types.DeletePendingAggregationRequestInput,
        output_schema = types.DeletePendingAggregationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRemediationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRemediationConfiguration",
        input_schema = types.DeleteRemediationConfigurationInput,
        output_schema = types.DeleteRemediationConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRemediationExceptions(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRemediationExceptions",
        input_schema = types.DeleteRemediationExceptionsInput,
        output_schema = types.DeleteRemediationExceptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceConfig",
        input_schema = types.DeleteResourceConfigInput,
        output_schema = types.DeleteResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRetentionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetentionConfiguration",
        input_schema = types.DeleteRetentionConfigurationInput,
        output_schema = types.DeleteRetentionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceLinkedConfigurationRecorder(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceLinkedConfigurationRecorder",
        input_schema = types.DeleteServiceLinkedConfigurationRecorderInput,
        output_schema = types.DeleteServiceLinkedConfigurationRecorderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStoredQuery(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStoredQuery",
        input_schema = types.DeleteStoredQueryInput,
        output_schema = types.DeleteStoredQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deliverConfigSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeliverConfigSnapshot",
        input_schema = types.DeliverConfigSnapshotInput,
        output_schema = types.DeliverConfigSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAggregateComplianceByConfigRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAggregateComplianceByConfigRules",
        input_schema = types.DescribeAggregateComplianceByConfigRulesInput,
        output_schema = types.DescribeAggregateComplianceByConfigRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAggregateComplianceByConformancePacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAggregateComplianceByConformancePacks",
        input_schema = types.DescribeAggregateComplianceByConformancePacksInput,
        output_schema = types.DescribeAggregateComplianceByConformancePacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAggregationAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAggregationAuthorizations",
        input_schema = types.DescribeAggregationAuthorizationsInput,
        output_schema = types.DescribeAggregationAuthorizationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComplianceByConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComplianceByConfigRule",
        input_schema = types.DescribeComplianceByConfigRuleInput,
        output_schema = types.DescribeComplianceByConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComplianceByResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComplianceByResource",
        input_schema = types.DescribeComplianceByResourceInput,
        output_schema = types.DescribeComplianceByResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigRuleEvaluationStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigRuleEvaluationStatus",
        input_schema = types.DescribeConfigRuleEvaluationStatusInput,
        output_schema = types.DescribeConfigRuleEvaluationStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigRules",
        input_schema = types.DescribeConfigRulesInput,
        output_schema = types.DescribeConfigRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationAggregators(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationAggregators",
        input_schema = types.DescribeConfigurationAggregatorsInput,
        output_schema = types.DescribeConfigurationAggregatorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationAggregatorSourcesStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationAggregatorSourcesStatus",
        input_schema = types.DescribeConfigurationAggregatorSourcesStatusInput,
        output_schema = types.DescribeConfigurationAggregatorSourcesStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationRecorders(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationRecorders",
        input_schema = types.DescribeConfigurationRecordersInput,
        output_schema = types.DescribeConfigurationRecordersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationRecorderStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationRecorderStatus",
        input_schema = types.DescribeConfigurationRecorderStatusInput,
        output_schema = types.DescribeConfigurationRecorderStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConformancePackCompliance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConformancePackCompliance",
        input_schema = types.DescribeConformancePackComplianceInput,
        output_schema = types.DescribeConformancePackComplianceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConformancePacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConformancePacks",
        input_schema = types.DescribeConformancePacksInput,
        output_schema = types.DescribeConformancePacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConformancePackStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConformancePackStatus",
        input_schema = types.DescribeConformancePackStatusInput,
        output_schema = types.DescribeConformancePackStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeliveryChannels(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeliveryChannels",
        input_schema = types.DescribeDeliveryChannelsInput,
        output_schema = types.DescribeDeliveryChannelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeliveryChannelStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeliveryChannelStatus",
        input_schema = types.DescribeDeliveryChannelStatusInput,
        output_schema = types.DescribeDeliveryChannelStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConfigRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfigRules",
        input_schema = types.DescribeOrganizationConfigRulesInput,
        output_schema = types.DescribeOrganizationConfigRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConfigRuleStatuses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfigRuleStatuses",
        input_schema = types.DescribeOrganizationConfigRuleStatusesInput,
        output_schema = types.DescribeOrganizationConfigRuleStatusesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConformancePacks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConformancePacks",
        input_schema = types.DescribeOrganizationConformancePacksInput,
        output_schema = types.DescribeOrganizationConformancePacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConformancePackStatuses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConformancePackStatuses",
        input_schema = types.DescribeOrganizationConformancePackStatusesInput,
        output_schema = types.DescribeOrganizationConformancePackStatusesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePendingAggregationRequests(input, options)
    return self:invokeOperation(input, {
        name = "DescribePendingAggregationRequests",
        input_schema = types.DescribePendingAggregationRequestsInput,
        output_schema = types.DescribePendingAggregationRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRemediationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRemediationConfigurations",
        input_schema = types.DescribeRemediationConfigurationsInput,
        output_schema = types.DescribeRemediationConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRemediationExceptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRemediationExceptions",
        input_schema = types.DescribeRemediationExceptionsInput,
        output_schema = types.DescribeRemediationExceptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRemediationExecutionStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRemediationExecutionStatus",
        input_schema = types.DescribeRemediationExecutionStatusInput,
        output_schema = types.DescribeRemediationExecutionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRetentionConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRetentionConfigurations",
        input_schema = types.DescribeRetentionConfigurationsInput,
        output_schema = types.DescribeRetentionConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResourceTypes",
        input_schema = types.DisassociateResourceTypesInput,
        output_schema = types.DisassociateResourceTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAggregateComplianceDetailsByConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregateComplianceDetailsByConfigRule",
        input_schema = types.GetAggregateComplianceDetailsByConfigRuleInput,
        output_schema = types.GetAggregateComplianceDetailsByConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAggregateConfigRuleComplianceSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregateConfigRuleComplianceSummary",
        input_schema = types.GetAggregateConfigRuleComplianceSummaryInput,
        output_schema = types.GetAggregateConfigRuleComplianceSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAggregateConformancePackComplianceSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregateConformancePackComplianceSummary",
        input_schema = types.GetAggregateConformancePackComplianceSummaryInput,
        output_schema = types.GetAggregateConformancePackComplianceSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAggregateDiscoveredResourceCounts(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregateDiscoveredResourceCounts",
        input_schema = types.GetAggregateDiscoveredResourceCountsInput,
        output_schema = types.GetAggregateDiscoveredResourceCountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAggregateResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetAggregateResourceConfig",
        input_schema = types.GetAggregateResourceConfigInput,
        output_schema = types.GetAggregateResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComplianceDetailsByConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceDetailsByConfigRule",
        input_schema = types.GetComplianceDetailsByConfigRuleInput,
        output_schema = types.GetComplianceDetailsByConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComplianceDetailsByResource(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceDetailsByResource",
        input_schema = types.GetComplianceDetailsByResourceInput,
        output_schema = types.GetComplianceDetailsByResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComplianceSummaryByConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceSummaryByConfigRule",
        input_schema = types.GetComplianceSummaryByConfigRuleInput,
        output_schema = types.GetComplianceSummaryByConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComplianceSummaryByResourceType(input, options)
    return self:invokeOperation(input, {
        name = "GetComplianceSummaryByResourceType",
        input_schema = types.GetComplianceSummaryByResourceTypeInput,
        output_schema = types.GetComplianceSummaryByResourceTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConformancePackComplianceDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetConformancePackComplianceDetails",
        input_schema = types.GetConformancePackComplianceDetailsInput,
        output_schema = types.GetConformancePackComplianceDetailsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConformancePackComplianceSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetConformancePackComplianceSummary",
        input_schema = types.GetConformancePackComplianceSummaryInput,
        output_schema = types.GetConformancePackComplianceSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCustomRulePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetCustomRulePolicy",
        input_schema = types.GetCustomRulePolicyInput,
        output_schema = types.GetCustomRulePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDiscoveredResourceCounts(input, options)
    return self:invokeOperation(input, {
        name = "GetDiscoveredResourceCounts",
        input_schema = types.GetDiscoveredResourceCountsInput,
        output_schema = types.GetDiscoveredResourceCountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrganizationConfigRuleDetailedStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationConfigRuleDetailedStatus",
        input_schema = types.GetOrganizationConfigRuleDetailedStatusInput,
        output_schema = types.GetOrganizationConfigRuleDetailedStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrganizationConformancePackDetailedStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationConformancePackDetailedStatus",
        input_schema = types.GetOrganizationConformancePackDetailedStatusInput,
        output_schema = types.GetOrganizationConformancePackDetailedStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOrganizationCustomRulePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetOrganizationCustomRulePolicy",
        input_schema = types.GetOrganizationCustomRulePolicyInput,
        output_schema = types.GetOrganizationCustomRulePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceConfigHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceConfigHistory",
        input_schema = types.GetResourceConfigHistoryInput,
        output_schema = types.GetResourceConfigHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceEvaluationSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceEvaluationSummary",
        input_schema = types.GetResourceEvaluationSummaryInput,
        output_schema = types.GetResourceEvaluationSummaryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStoredQuery(input, options)
    return self:invokeOperation(input, {
        name = "GetStoredQuery",
        input_schema = types.GetStoredQueryInput,
        output_schema = types.GetStoredQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAggregateDiscoveredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListAggregateDiscoveredResources",
        input_schema = types.ListAggregateDiscoveredResourcesInput,
        output_schema = types.ListAggregateDiscoveredResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConfigurationRecorders(input, options)
    return self:invokeOperation(input, {
        name = "ListConfigurationRecorders",
        input_schema = types.ListConfigurationRecordersInput,
        output_schema = types.ListConfigurationRecordersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConformancePackComplianceScores(input, options)
    return self:invokeOperation(input, {
        name = "ListConformancePackComplianceScores",
        input_schema = types.ListConformancePackComplianceScoresInput,
        output_schema = types.ListConformancePackComplianceScoresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDiscoveredResources(input, options)
    return self:invokeOperation(input, {
        name = "ListDiscoveredResources",
        input_schema = types.ListDiscoveredResourcesInput,
        output_schema = types.ListDiscoveredResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceEvaluations",
        input_schema = types.ListResourceEvaluationsInput,
        output_schema = types.ListResourceEvaluationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStoredQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListStoredQueries",
        input_schema = types.ListStoredQueriesInput,
        output_schema = types.ListStoredQueriesOutput,
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

function Client:putAggregationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "PutAggregationAuthorization",
        input_schema = types.PutAggregationAuthorizationInput,
        output_schema = types.PutAggregationAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigRule",
        input_schema = types.PutConfigRuleInput,
        output_schema = types.PutConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationAggregator(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationAggregator",
        input_schema = types.PutConfigurationAggregatorInput,
        output_schema = types.PutConfigurationAggregatorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConfigurationRecorder(input, options)
    return self:invokeOperation(input, {
        name = "PutConfigurationRecorder",
        input_schema = types.PutConfigurationRecorderInput,
        output_schema = types.PutConfigurationRecorderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putConformancePack(input, options)
    return self:invokeOperation(input, {
        name = "PutConformancePack",
        input_schema = types.PutConformancePackInput,
        output_schema = types.PutConformancePackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDeliveryChannel(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliveryChannel",
        input_schema = types.PutDeliveryChannelInput,
        output_schema = types.PutDeliveryChannelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "PutEvaluations",
        input_schema = types.PutEvaluationsInput,
        output_schema = types.PutEvaluationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putExternalEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "PutExternalEvaluation",
        input_schema = types.PutExternalEvaluationInput,
        output_schema = types.PutExternalEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putOrganizationConfigRule(input, options)
    return self:invokeOperation(input, {
        name = "PutOrganizationConfigRule",
        input_schema = types.PutOrganizationConfigRuleInput,
        output_schema = types.PutOrganizationConfigRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putOrganizationConformancePack(input, options)
    return self:invokeOperation(input, {
        name = "PutOrganizationConformancePack",
        input_schema = types.PutOrganizationConformancePackInput,
        output_schema = types.PutOrganizationConformancePackOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRemediationConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "PutRemediationConfigurations",
        input_schema = types.PutRemediationConfigurationsInput,
        output_schema = types.PutRemediationConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRemediationExceptions(input, options)
    return self:invokeOperation(input, {
        name = "PutRemediationExceptions",
        input_schema = types.PutRemediationExceptionsInput,
        output_schema = types.PutRemediationExceptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "PutResourceConfig",
        input_schema = types.PutResourceConfigInput,
        output_schema = types.PutResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRetentionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutRetentionConfiguration",
        input_schema = types.PutRetentionConfigurationInput,
        output_schema = types.PutRetentionConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putServiceLinkedConfigurationRecorder(input, options)
    return self:invokeOperation(input, {
        name = "PutServiceLinkedConfigurationRecorder",
        input_schema = types.PutServiceLinkedConfigurationRecorderInput,
        output_schema = types.PutServiceLinkedConfigurationRecorderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putStoredQuery(input, options)
    return self:invokeOperation(input, {
        name = "PutStoredQuery",
        input_schema = types.PutStoredQueryInput,
        output_schema = types.PutStoredQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:selectAggregateResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "SelectAggregateResourceConfig",
        input_schema = types.SelectAggregateResourceConfigInput,
        output_schema = types.SelectAggregateResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:selectResourceConfig(input, options)
    return self:invokeOperation(input, {
        name = "SelectResourceConfig",
        input_schema = types.SelectResourceConfigInput,
        output_schema = types.SelectResourceConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startConfigRulesEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigRulesEvaluation",
        input_schema = types.StartConfigRulesEvaluationInput,
        output_schema = types.StartConfigRulesEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startConfigurationRecorder(input, options)
    return self:invokeOperation(input, {
        name = "StartConfigurationRecorder",
        input_schema = types.StartConfigurationRecorderInput,
        output_schema = types.StartConfigurationRecorderOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRemediationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartRemediationExecution",
        input_schema = types.StartRemediationExecutionInput,
        output_schema = types.StartRemediationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startResourceEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceEvaluation",
        input_schema = types.StartResourceEvaluationInput,
        output_schema = types.StartResourceEvaluationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopConfigurationRecorder(input, options)
    return self:invokeOperation(input, {
        name = "StopConfigurationRecorder",
        input_schema = types.StopConfigurationRecorderInput,
        output_schema = types.StopConfigurationRecorderOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
