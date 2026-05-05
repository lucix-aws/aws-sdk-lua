local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("configservice.endpoint_rules")
local schemas = require("configservice.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AssociateResourceTypesInput,
        output_schema = schemas.AssociateResourceTypesOutput,
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
        input_schema = schemas.BatchGetAggregateResourceConfigInput,
        output_schema = schemas.BatchGetAggregateResourceConfigOutput,
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
        input_schema = schemas.BatchGetResourceConfigInput,
        output_schema = schemas.BatchGetResourceConfigOutput,
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
        input_schema = schemas.DeleteAggregationAuthorizationInput,
        output_schema = schemas.DeleteAggregationAuthorizationOutput,
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
        input_schema = schemas.DeleteConfigRuleInput,
        output_schema = schemas.DeleteConfigRuleOutput,
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
        input_schema = schemas.DeleteConfigurationAggregatorInput,
        output_schema = schemas.DeleteConfigurationAggregatorOutput,
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
        input_schema = schemas.DeleteConfigurationRecorderInput,
        output_schema = schemas.DeleteConfigurationRecorderOutput,
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
        input_schema = schemas.DeleteConformancePackInput,
        output_schema = schemas.DeleteConformancePackOutput,
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
        input_schema = schemas.DeleteDeliveryChannelInput,
        output_schema = schemas.DeleteDeliveryChannelOutput,
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
        input_schema = schemas.DeleteEvaluationResultsInput,
        output_schema = schemas.DeleteEvaluationResultsOutput,
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
        input_schema = schemas.DeleteOrganizationConfigRuleInput,
        output_schema = schemas.DeleteOrganizationConfigRuleOutput,
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
        input_schema = schemas.DeleteOrganizationConformancePackInput,
        output_schema = schemas.DeleteOrganizationConformancePackOutput,
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
        input_schema = schemas.DeletePendingAggregationRequestInput,
        output_schema = schemas.DeletePendingAggregationRequestOutput,
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
        input_schema = schemas.DeleteRemediationConfigurationInput,
        output_schema = schemas.DeleteRemediationConfigurationOutput,
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
        input_schema = schemas.DeleteRemediationExceptionsInput,
        output_schema = schemas.DeleteRemediationExceptionsOutput,
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
        input_schema = schemas.DeleteResourceConfigInput,
        output_schema = schemas.DeleteResourceConfigOutput,
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
        input_schema = schemas.DeleteRetentionConfigurationInput,
        output_schema = schemas.DeleteRetentionConfigurationOutput,
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
        input_schema = schemas.DeleteServiceLinkedConfigurationRecorderInput,
        output_schema = schemas.DeleteServiceLinkedConfigurationRecorderOutput,
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
        input_schema = schemas.DeleteStoredQueryInput,
        output_schema = schemas.DeleteStoredQueryOutput,
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
        input_schema = schemas.DeliverConfigSnapshotInput,
        output_schema = schemas.DeliverConfigSnapshotOutput,
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
        input_schema = schemas.DescribeAggregateComplianceByConfigRulesInput,
        output_schema = schemas.DescribeAggregateComplianceByConfigRulesOutput,
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
        input_schema = schemas.DescribeAggregateComplianceByConformancePacksInput,
        output_schema = schemas.DescribeAggregateComplianceByConformancePacksOutput,
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
        input_schema = schemas.DescribeAggregationAuthorizationsInput,
        output_schema = schemas.DescribeAggregationAuthorizationsOutput,
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
        input_schema = schemas.DescribeComplianceByConfigRuleInput,
        output_schema = schemas.DescribeComplianceByConfigRuleOutput,
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
        input_schema = schemas.DescribeComplianceByResourceInput,
        output_schema = schemas.DescribeComplianceByResourceOutput,
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
        input_schema = schemas.DescribeConfigRuleEvaluationStatusInput,
        output_schema = schemas.DescribeConfigRuleEvaluationStatusOutput,
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
        input_schema = schemas.DescribeConfigRulesInput,
        output_schema = schemas.DescribeConfigRulesOutput,
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
        input_schema = schemas.DescribeConfigurationAggregatorsInput,
        output_schema = schemas.DescribeConfigurationAggregatorsOutput,
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
        input_schema = schemas.DescribeConfigurationAggregatorSourcesStatusInput,
        output_schema = schemas.DescribeConfigurationAggregatorSourcesStatusOutput,
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
        input_schema = schemas.DescribeConfigurationRecordersInput,
        output_schema = schemas.DescribeConfigurationRecordersOutput,
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
        input_schema = schemas.DescribeConfigurationRecorderStatusInput,
        output_schema = schemas.DescribeConfigurationRecorderStatusOutput,
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
        input_schema = schemas.DescribeConformancePackComplianceInput,
        output_schema = schemas.DescribeConformancePackComplianceOutput,
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
        input_schema = schemas.DescribeConformancePacksInput,
        output_schema = schemas.DescribeConformancePacksOutput,
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
        input_schema = schemas.DescribeConformancePackStatusInput,
        output_schema = schemas.DescribeConformancePackStatusOutput,
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
        input_schema = schemas.DescribeDeliveryChannelsInput,
        output_schema = schemas.DescribeDeliveryChannelsOutput,
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
        input_schema = schemas.DescribeDeliveryChannelStatusInput,
        output_schema = schemas.DescribeDeliveryChannelStatusOutput,
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
        input_schema = schemas.DescribeOrganizationConfigRulesInput,
        output_schema = schemas.DescribeOrganizationConfigRulesOutput,
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
        input_schema = schemas.DescribeOrganizationConfigRuleStatusesInput,
        output_schema = schemas.DescribeOrganizationConfigRuleStatusesOutput,
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
        input_schema = schemas.DescribeOrganizationConformancePacksInput,
        output_schema = schemas.DescribeOrganizationConformancePacksOutput,
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
        input_schema = schemas.DescribeOrganizationConformancePackStatusesInput,
        output_schema = schemas.DescribeOrganizationConformancePackStatusesOutput,
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
        input_schema = schemas.DescribePendingAggregationRequestsInput,
        output_schema = schemas.DescribePendingAggregationRequestsOutput,
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
        input_schema = schemas.DescribeRemediationConfigurationsInput,
        output_schema = schemas.DescribeRemediationConfigurationsOutput,
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
        input_schema = schemas.DescribeRemediationExceptionsInput,
        output_schema = schemas.DescribeRemediationExceptionsOutput,
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
        input_schema = schemas.DescribeRemediationExecutionStatusInput,
        output_schema = schemas.DescribeRemediationExecutionStatusOutput,
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
        input_schema = schemas.DescribeRetentionConfigurationsInput,
        output_schema = schemas.DescribeRetentionConfigurationsOutput,
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
        input_schema = schemas.DisassociateResourceTypesInput,
        output_schema = schemas.DisassociateResourceTypesOutput,
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
        input_schema = schemas.GetAggregateComplianceDetailsByConfigRuleInput,
        output_schema = schemas.GetAggregateComplianceDetailsByConfigRuleOutput,
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
        input_schema = schemas.GetAggregateConfigRuleComplianceSummaryInput,
        output_schema = schemas.GetAggregateConfigRuleComplianceSummaryOutput,
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
        input_schema = schemas.GetAggregateConformancePackComplianceSummaryInput,
        output_schema = schemas.GetAggregateConformancePackComplianceSummaryOutput,
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
        input_schema = schemas.GetAggregateDiscoveredResourceCountsInput,
        output_schema = schemas.GetAggregateDiscoveredResourceCountsOutput,
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
        input_schema = schemas.GetAggregateResourceConfigInput,
        output_schema = schemas.GetAggregateResourceConfigOutput,
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
        input_schema = schemas.GetComplianceDetailsByConfigRuleInput,
        output_schema = schemas.GetComplianceDetailsByConfigRuleOutput,
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
        input_schema = schemas.GetComplianceDetailsByResourceInput,
        output_schema = schemas.GetComplianceDetailsByResourceOutput,
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
        input_schema = schemas.GetComplianceSummaryByConfigRuleInput,
        output_schema = schemas.GetComplianceSummaryByConfigRuleOutput,
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
        input_schema = schemas.GetComplianceSummaryByResourceTypeInput,
        output_schema = schemas.GetComplianceSummaryByResourceTypeOutput,
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
        input_schema = schemas.GetConformancePackComplianceDetailsInput,
        output_schema = schemas.GetConformancePackComplianceDetailsOutput,
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
        input_schema = schemas.GetConformancePackComplianceSummaryInput,
        output_schema = schemas.GetConformancePackComplianceSummaryOutput,
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
        input_schema = schemas.GetCustomRulePolicyInput,
        output_schema = schemas.GetCustomRulePolicyOutput,
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
        input_schema = schemas.GetDiscoveredResourceCountsInput,
        output_schema = schemas.GetDiscoveredResourceCountsOutput,
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
        input_schema = schemas.GetOrganizationConfigRuleDetailedStatusInput,
        output_schema = schemas.GetOrganizationConfigRuleDetailedStatusOutput,
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
        input_schema = schemas.GetOrganizationConformancePackDetailedStatusInput,
        output_schema = schemas.GetOrganizationConformancePackDetailedStatusOutput,
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
        input_schema = schemas.GetOrganizationCustomRulePolicyInput,
        output_schema = schemas.GetOrganizationCustomRulePolicyOutput,
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
        input_schema = schemas.GetResourceConfigHistoryInput,
        output_schema = schemas.GetResourceConfigHistoryOutput,
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
        input_schema = schemas.GetResourceEvaluationSummaryInput,
        output_schema = schemas.GetResourceEvaluationSummaryOutput,
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
        input_schema = schemas.GetStoredQueryInput,
        output_schema = schemas.GetStoredQueryOutput,
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
        input_schema = schemas.ListAggregateDiscoveredResourcesInput,
        output_schema = schemas.ListAggregateDiscoveredResourcesOutput,
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
        input_schema = schemas.ListConfigurationRecordersInput,
        output_schema = schemas.ListConfigurationRecordersOutput,
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
        input_schema = schemas.ListConformancePackComplianceScoresInput,
        output_schema = schemas.ListConformancePackComplianceScoresOutput,
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
        input_schema = schemas.ListDiscoveredResourcesInput,
        output_schema = schemas.ListDiscoveredResourcesOutput,
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
        input_schema = schemas.ListResourceEvaluationsInput,
        output_schema = schemas.ListResourceEvaluationsOutput,
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
        input_schema = schemas.ListStoredQueriesInput,
        output_schema = schemas.ListStoredQueriesOutput,
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

function Client:putAggregationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "PutAggregationAuthorization",
        input_schema = schemas.PutAggregationAuthorizationInput,
        output_schema = schemas.PutAggregationAuthorizationOutput,
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
        input_schema = schemas.PutConfigRuleInput,
        output_schema = schemas.PutConfigRuleOutput,
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
        input_schema = schemas.PutConfigurationAggregatorInput,
        output_schema = schemas.PutConfigurationAggregatorOutput,
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
        input_schema = schemas.PutConfigurationRecorderInput,
        output_schema = schemas.PutConfigurationRecorderOutput,
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
        input_schema = schemas.PutConformancePackInput,
        output_schema = schemas.PutConformancePackOutput,
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
        input_schema = schemas.PutDeliveryChannelInput,
        output_schema = schemas.PutDeliveryChannelOutput,
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
        input_schema = schemas.PutEvaluationsInput,
        output_schema = schemas.PutEvaluationsOutput,
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
        input_schema = schemas.PutExternalEvaluationInput,
        output_schema = schemas.PutExternalEvaluationOutput,
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
        input_schema = schemas.PutOrganizationConfigRuleInput,
        output_schema = schemas.PutOrganizationConfigRuleOutput,
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
        input_schema = schemas.PutOrganizationConformancePackInput,
        output_schema = schemas.PutOrganizationConformancePackOutput,
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
        input_schema = schemas.PutRemediationConfigurationsInput,
        output_schema = schemas.PutRemediationConfigurationsOutput,
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
        input_schema = schemas.PutRemediationExceptionsInput,
        output_schema = schemas.PutRemediationExceptionsOutput,
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
        input_schema = schemas.PutResourceConfigInput,
        output_schema = schemas.PutResourceConfigOutput,
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
        input_schema = schemas.PutRetentionConfigurationInput,
        output_schema = schemas.PutRetentionConfigurationOutput,
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
        input_schema = schemas.PutServiceLinkedConfigurationRecorderInput,
        output_schema = schemas.PutServiceLinkedConfigurationRecorderOutput,
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
        input_schema = schemas.PutStoredQueryInput,
        output_schema = schemas.PutStoredQueryOutput,
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
        input_schema = schemas.SelectAggregateResourceConfigInput,
        output_schema = schemas.SelectAggregateResourceConfigOutput,
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
        input_schema = schemas.SelectResourceConfigInput,
        output_schema = schemas.SelectResourceConfigOutput,
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
        input_schema = schemas.StartConfigRulesEvaluationInput,
        output_schema = schemas.StartConfigRulesEvaluationOutput,
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
        input_schema = schemas.StartConfigurationRecorderInput,
        output_schema = schemas.StartConfigurationRecorderOutput,
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
        input_schema = schemas.StartRemediationExecutionInput,
        output_schema = schemas.StartRemediationExecutionOutput,
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
        input_schema = schemas.StartResourceEvaluationInput,
        output_schema = schemas.StartResourceEvaluationOutput,
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
        input_schema = schemas.StopConfigurationRecorderInput,
        output_schema = schemas.StopConfigurationRecorderOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
