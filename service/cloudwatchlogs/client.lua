local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudwatchlogs.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudwatchlogs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Logs_20140328"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "logs", signing_region = cfg.region } }
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

function Client:associateKmsKey(input, options)
    return self:invokeOperation(input, {
        name = "AssociateKmsKey",
        input_schema = types.AssociateKmsKeyInput,
        output_schema = types.AssociateKmsKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSourceToS3TableIntegration(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceToS3TableIntegration",
        input_schema = types.AssociateSourceToS3TableIntegrationInput,
        output_schema = types.AssociateSourceToS3TableIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelExportTask",
        input_schema = types.CancelExportTaskInput,
        output_schema = types.CancelExportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelImportTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelImportTask",
        input_schema = types.CancelImportTaskInput,
        output_schema = types.CancelImportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDelivery(input, options)
    return self:invokeOperation(input, {
        name = "CreateDelivery",
        input_schema = types.CreateDeliveryInput,
        output_schema = types.CreateDeliveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExportTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateExportTask",
        input_schema = types.CreateExportTaskInput,
        output_schema = types.CreateExportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImportTask(input, options)
    return self:invokeOperation(input, {
        name = "CreateImportTask",
        input_schema = types.CreateImportTaskInput,
        output_schema = types.CreateImportTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLogAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogAnomalyDetector",
        input_schema = types.CreateLogAnomalyDetectorInput,
        output_schema = types.CreateLogAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLogGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogGroup",
        input_schema = types.CreateLogGroupInput,
        output_schema = types.CreateLogGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLogStream(input, options)
    return self:invokeOperation(input, {
        name = "CreateLogStream",
        input_schema = types.CreateLogStreamInput,
        output_schema = types.CreateLogStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLookupTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateLookupTable",
        input_schema = types.CreateLookupTableInput,
        output_schema = types.CreateLookupTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledQuery",
        input_schema = types.CreateScheduledQueryInput,
        output_schema = types.CreateScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountPolicy",
        input_schema = types.DeleteAccountPolicyInput,
        output_schema = types.DeleteAccountPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataProtectionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataProtectionPolicy",
        input_schema = types.DeleteDataProtectionPolicyInput,
        output_schema = types.DeleteDataProtectionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDelivery(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDelivery",
        input_schema = types.DeleteDeliveryInput,
        output_schema = types.DeleteDeliveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeliveryDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeliveryDestination",
        input_schema = types.DeleteDeliveryDestinationInput,
        output_schema = types.DeleteDeliveryDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeliveryDestinationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeliveryDestinationPolicy",
        input_schema = types.DeleteDeliveryDestinationPolicyInput,
        output_schema = types.DeleteDeliveryDestinationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeliverySource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeliverySource",
        input_schema = types.DeleteDeliverySourceInput,
        output_schema = types.DeleteDeliverySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDestination(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDestination",
        input_schema = types.DeleteDestinationInput,
        output_schema = types.DeleteDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndexPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndexPolicy",
        input_schema = types.DeleteIndexPolicyInput,
        output_schema = types.DeleteIndexPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLogAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLogAnomalyDetector",
        input_schema = types.DeleteLogAnomalyDetectorInput,
        output_schema = types.DeleteLogAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLogGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLogGroup",
        input_schema = types.DeleteLogGroupInput,
        output_schema = types.DeleteLogGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLogStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLogStream",
        input_schema = types.DeleteLogStreamInput,
        output_schema = types.DeleteLogStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLookupTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLookupTable",
        input_schema = types.DeleteLookupTableInput,
        output_schema = types.DeleteLookupTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMetricFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMetricFilter",
        input_schema = types.DeleteMetricFilterInput,
        output_schema = types.DeleteMetricFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueryDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueryDefinition",
        input_schema = types.DeleteQueryDefinitionInput,
        output_schema = types.DeleteQueryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRetentionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetentionPolicy",
        input_schema = types.DeleteRetentionPolicyInput,
        output_schema = types.DeleteRetentionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledQuery",
        input_schema = types.DeleteScheduledQueryInput,
        output_schema = types.DeleteScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriptionFilter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriptionFilter",
        input_schema = types.DeleteSubscriptionFilterInput,
        output_schema = types.DeleteSubscriptionFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTransformer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTransformer",
        input_schema = types.DeleteTransformerInput,
        output_schema = types.DeleteTransformerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountPolicies",
        input_schema = types.DescribeAccountPoliciesInput,
        output_schema = types.DescribeAccountPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationTemplates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationTemplates",
        input_schema = types.DescribeConfigurationTemplatesInput,
        output_schema = types.DescribeConfigurationTemplatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeliveries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeliveries",
        input_schema = types.DescribeDeliveriesInput,
        output_schema = types.DescribeDeliveriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeliveryDestinations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeliveryDestinations",
        input_schema = types.DescribeDeliveryDestinationsInput,
        output_schema = types.DescribeDeliveryDestinationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeliverySources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeliverySources",
        input_schema = types.DescribeDeliverySourcesInput,
        output_schema = types.DescribeDeliverySourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDestinations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDestinations",
        input_schema = types.DescribeDestinationsInput,
        output_schema = types.DescribeDestinationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExportTasks",
        input_schema = types.DescribeExportTasksInput,
        output_schema = types.DescribeExportTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFieldIndexes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFieldIndexes",
        input_schema = types.DescribeFieldIndexesInput,
        output_schema = types.DescribeFieldIndexesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImportTaskBatches(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImportTaskBatches",
        input_schema = types.DescribeImportTaskBatchesInput,
        output_schema = types.DescribeImportTaskBatchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImportTasks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImportTasks",
        input_schema = types.DescribeImportTasksInput,
        output_schema = types.DescribeImportTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIndexPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIndexPolicies",
        input_schema = types.DescribeIndexPoliciesInput,
        output_schema = types.DescribeIndexPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLogGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLogGroups",
        input_schema = types.DescribeLogGroupsInput,
        output_schema = types.DescribeLogGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLogStreams(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLogStreams",
        input_schema = types.DescribeLogStreamsInput,
        output_schema = types.DescribeLogStreamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLookupTables(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLookupTables",
        input_schema = types.DescribeLookupTablesInput,
        output_schema = types.DescribeLookupTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMetricFilters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMetricFilters",
        input_schema = types.DescribeMetricFiltersInput,
        output_schema = types.DescribeMetricFiltersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQueries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQueries",
        input_schema = types.DescribeQueriesInput,
        output_schema = types.DescribeQueriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQueryDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQueryDefinitions",
        input_schema = types.DescribeQueryDefinitionsInput,
        output_schema = types.DescribeQueryDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicies",
        input_schema = types.DescribeResourcePoliciesInput,
        output_schema = types.DescribeResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSubscriptionFilters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubscriptionFilters",
        input_schema = types.DescribeSubscriptionFiltersInput,
        output_schema = types.DescribeSubscriptionFiltersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateKmsKey(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateKmsKey",
        input_schema = types.DisassociateKmsKeyInput,
        output_schema = types.DisassociateKmsKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSourceFromS3TableIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSourceFromS3TableIntegration",
        input_schema = types.DisassociateSourceFromS3TableIntegrationInput,
        output_schema = types.DisassociateSourceFromS3TableIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:filterLogEvents(input, options)
    return self:invokeOperation(input, {
        name = "FilterLogEvents",
        input_schema = types.FilterLogEventsInput,
        output_schema = types.FilterLogEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataProtectionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetDataProtectionPolicy",
        input_schema = types.GetDataProtectionPolicyInput,
        output_schema = types.GetDataProtectionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDelivery(input, options)
    return self:invokeOperation(input, {
        name = "GetDelivery",
        input_schema = types.GetDeliveryInput,
        output_schema = types.GetDeliveryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeliveryDestination(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliveryDestination",
        input_schema = types.GetDeliveryDestinationInput,
        output_schema = types.GetDeliveryDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeliveryDestinationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliveryDestinationPolicy",
        input_schema = types.GetDeliveryDestinationPolicyInput,
        output_schema = types.GetDeliveryDestinationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeliverySource(input, options)
    return self:invokeOperation(input, {
        name = "GetDeliverySource",
        input_schema = types.GetDeliverySourceInput,
        output_schema = types.GetDeliverySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegration",
        input_schema = types.GetIntegrationInput,
        output_schema = types.GetIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "GetLogAnomalyDetector",
        input_schema = types.GetLogAnomalyDetectorInput,
        output_schema = types.GetLogAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetLogEvents",
        input_schema = types.GetLogEventsInput,
        output_schema = types.GetLogEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogFields(input, options)
    return self:invokeOperation(input, {
        name = "GetLogFields",
        input_schema = types.GetLogFieldsInput,
        output_schema = types.GetLogFieldsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogGroupFields(input, options)
    return self:invokeOperation(input, {
        name = "GetLogGroupFields",
        input_schema = types.GetLogGroupFieldsInput,
        output_schema = types.GetLogGroupFieldsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogObject(input, options)
    return self:invokeOperation(input, {
        name = "GetLogObject",
        input_schema = types.GetLogObjectInput,
        output_schema = types.GetLogObjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetLogRecord",
        input_schema = types.GetLogRecordInput,
        output_schema = types.GetLogRecordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLookupTable(input, options)
    return self:invokeOperation(input, {
        name = "GetLookupTable",
        input_schema = types.GetLookupTableInput,
        output_schema = types.GetLookupTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryResults(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResults",
        input_schema = types.GetQueryResultsInput,
        output_schema = types.GetQueryResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "GetScheduledQuery",
        input_schema = types.GetScheduledQueryInput,
        output_schema = types.GetScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScheduledQueryHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetScheduledQueryHistory",
        input_schema = types.GetScheduledQueryHistoryInput,
        output_schema = types.GetScheduledQueryHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTransformer(input, options)
    return self:invokeOperation(input, {
        name = "GetTransformer",
        input_schema = types.GetTransformerInput,
        output_schema = types.GetTransformerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAggregateLogGroupSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListAggregateLogGroupSummaries",
        input_schema = types.ListAggregateLogGroupSummariesInput,
        output_schema = types.ListAggregateLogGroupSummariesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnomalies(input, options)
    return self:invokeOperation(input, {
        name = "ListAnomalies",
        input_schema = types.ListAnomaliesInput,
        output_schema = types.ListAnomaliesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "ListIntegrations",
        input_schema = types.ListIntegrationsInput,
        output_schema = types.ListIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogAnomalyDetectors(input, options)
    return self:invokeOperation(input, {
        name = "ListLogAnomalyDetectors",
        input_schema = types.ListLogAnomalyDetectorsInput,
        output_schema = types.ListLogAnomalyDetectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListLogGroups",
        input_schema = types.ListLogGroupsInput,
        output_schema = types.ListLogGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLogGroupsForQuery(input, options)
    return self:invokeOperation(input, {
        name = "ListLogGroupsForQuery",
        input_schema = types.ListLogGroupsForQueryInput,
        output_schema = types.ListLogGroupsForQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScheduledQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListScheduledQueries",
        input_schema = types.ListScheduledQueriesInput,
        output_schema = types.ListScheduledQueriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourcesForS3TableIntegration(input, options)
    return self:invokeOperation(input, {
        name = "ListSourcesForS3TableIntegration",
        input_schema = types.ListSourcesForS3TableIntegrationInput,
        output_schema = types.ListSourcesForS3TableIntegrationOutput,
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

function Client:listTagsLogGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsLogGroup",
        input_schema = types.ListTagsLogGroupInput,
        output_schema = types.ListTagsLogGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAccountPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutAccountPolicy",
        input_schema = types.PutAccountPolicyInput,
        output_schema = types.PutAccountPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBearerTokenAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "PutBearerTokenAuthentication",
        input_schema = types.PutBearerTokenAuthenticationInput,
        output_schema = types.PutBearerTokenAuthenticationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDataProtectionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutDataProtectionPolicy",
        input_schema = types.PutDataProtectionPolicyInput,
        output_schema = types.PutDataProtectionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDeliveryDestination(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliveryDestination",
        input_schema = types.PutDeliveryDestinationInput,
        output_schema = types.PutDeliveryDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDeliveryDestinationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliveryDestinationPolicy",
        input_schema = types.PutDeliveryDestinationPolicyInput,
        output_schema = types.PutDeliveryDestinationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDeliverySource(input, options)
    return self:invokeOperation(input, {
        name = "PutDeliverySource",
        input_schema = types.PutDeliverySourceInput,
        output_schema = types.PutDeliverySourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDestination(input, options)
    return self:invokeOperation(input, {
        name = "PutDestination",
        input_schema = types.PutDestinationInput,
        output_schema = types.PutDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDestinationPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutDestinationPolicy",
        input_schema = types.PutDestinationPolicyInput,
        output_schema = types.PutDestinationPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putIndexPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutIndexPolicy",
        input_schema = types.PutIndexPolicyInput,
        output_schema = types.PutIndexPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putIntegration(input, options)
    return self:invokeOperation(input, {
        name = "PutIntegration",
        input_schema = types.PutIntegrationInput,
        output_schema = types.PutIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLogEvents(input, options)
    return self:invokeOperation(input, {
        name = "PutLogEvents",
        input_schema = types.PutLogEventsInput,
        output_schema = types.PutLogEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLogGroupDeletionProtection(input, options)
    return self:invokeOperation(input, {
        name = "PutLogGroupDeletionProtection",
        input_schema = types.PutLogGroupDeletionProtectionInput,
        output_schema = types.PutLogGroupDeletionProtectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMetricFilter(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricFilter",
        input_schema = types.PutMetricFilterInput,
        output_schema = types.PutMetricFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putQueryDefinition(input, options)
    return self:invokeOperation(input, {
        name = "PutQueryDefinition",
        input_schema = types.PutQueryDefinitionInput,
        output_schema = types.PutQueryDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRetentionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutRetentionPolicy",
        input_schema = types.PutRetentionPolicyInput,
        output_schema = types.PutRetentionPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSubscriptionFilter(input, options)
    return self:invokeOperation(input, {
        name = "PutSubscriptionFilter",
        input_schema = types.PutSubscriptionFilterInput,
        output_schema = types.PutSubscriptionFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTransformer(input, options)
    return self:invokeOperation(input, {
        name = "PutTransformer",
        input_schema = types.PutTransformerInput,
        output_schema = types.PutTransformerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startLiveTail(input, options)
    return self:invokeOperation(input, {
        name = "StartLiveTail",
        input_schema = types.StartLiveTailInput,
        output_schema = types.StartLiveTailOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartQuery",
        input_schema = types.StartQueryInput,
        output_schema = types.StartQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopQuery(input, options)
    return self:invokeOperation(input, {
        name = "StopQuery",
        input_schema = types.StopQueryInput,
        output_schema = types.StopQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagLogGroup(input, options)
    return self:invokeOperation(input, {
        name = "TagLogGroup",
        input_schema = types.TagLogGroupInput,
        output_schema = types.TagLogGroupOutput,
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

function Client:testMetricFilter(input, options)
    return self:invokeOperation(input, {
        name = "TestMetricFilter",
        input_schema = types.TestMetricFilterInput,
        output_schema = types.TestMetricFilterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testTransformer(input, options)
    return self:invokeOperation(input, {
        name = "TestTransformer",
        input_schema = types.TestTransformerInput,
        output_schema = types.TestTransformerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagLogGroup(input, options)
    return self:invokeOperation(input, {
        name = "UntagLogGroup",
        input_schema = types.UntagLogGroupInput,
        output_schema = types.UntagLogGroupOutput,
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

function Client:updateAnomaly(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnomaly",
        input_schema = types.UpdateAnomalyInput,
        output_schema = types.UpdateAnomalyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeliveryConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeliveryConfiguration",
        input_schema = types.UpdateDeliveryConfigurationInput,
        output_schema = types.UpdateDeliveryConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLogAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLogAnomalyDetector",
        input_schema = types.UpdateLogAnomalyDetectorInput,
        output_schema = types.UpdateLogAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLookupTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLookupTable",
        input_schema = types.UpdateLookupTableInput,
        output_schema = types.UpdateLookupTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScheduledQuery(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScheduledQuery",
        input_schema = types.UpdateScheduledQueryInput,
        output_schema = types.UpdateScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
