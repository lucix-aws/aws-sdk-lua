local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudwatchlogs.endpoint_rules")
local schemas = require("cloudwatchlogs.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Logs_20140328"
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
        input_schema = schemas.AssociateKmsKeyInput,
        output_schema = schemas.AssociateKmsKeyOutput,
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
        input_schema = schemas.AssociateSourceToS3TableIntegrationInput,
        output_schema = schemas.AssociateSourceToS3TableIntegrationOutput,
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
        input_schema = schemas.CancelExportTaskInput,
        output_schema = schemas.CancelExportTaskOutput,
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
        input_schema = schemas.CancelImportTaskInput,
        output_schema = schemas.CancelImportTaskOutput,
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
        input_schema = schemas.CreateDeliveryInput,
        output_schema = schemas.CreateDeliveryOutput,
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
        input_schema = schemas.CreateExportTaskInput,
        output_schema = schemas.CreateExportTaskOutput,
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
        input_schema = schemas.CreateImportTaskInput,
        output_schema = schemas.CreateImportTaskOutput,
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
        input_schema = schemas.CreateLogAnomalyDetectorInput,
        output_schema = schemas.CreateLogAnomalyDetectorOutput,
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
        input_schema = schemas.CreateLogGroupInput,
        output_schema = schemas.CreateLogGroupOutput,
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
        input_schema = schemas.CreateLogStreamInput,
        output_schema = schemas.CreateLogStreamOutput,
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
        input_schema = schemas.CreateLookupTableInput,
        output_schema = schemas.CreateLookupTableOutput,
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
        input_schema = schemas.CreateScheduledQueryInput,
        output_schema = schemas.CreateScheduledQueryOutput,
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
        input_schema = schemas.DeleteAccountPolicyInput,
        output_schema = schemas.DeleteAccountPolicyOutput,
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
        input_schema = schemas.DeleteDataProtectionPolicyInput,
        output_schema = schemas.DeleteDataProtectionPolicyOutput,
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
        input_schema = schemas.DeleteDeliveryInput,
        output_schema = schemas.DeleteDeliveryOutput,
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
        input_schema = schemas.DeleteDeliveryDestinationInput,
        output_schema = schemas.DeleteDeliveryDestinationOutput,
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
        input_schema = schemas.DeleteDeliveryDestinationPolicyInput,
        output_schema = schemas.DeleteDeliveryDestinationPolicyOutput,
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
        input_schema = schemas.DeleteDeliverySourceInput,
        output_schema = schemas.DeleteDeliverySourceOutput,
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
        input_schema = schemas.DeleteDestinationInput,
        output_schema = schemas.DeleteDestinationOutput,
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
        input_schema = schemas.DeleteIndexPolicyInput,
        output_schema = schemas.DeleteIndexPolicyOutput,
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
        input_schema = schemas.DeleteIntegrationInput,
        output_schema = schemas.DeleteIntegrationOutput,
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
        input_schema = schemas.DeleteLogAnomalyDetectorInput,
        output_schema = schemas.DeleteLogAnomalyDetectorOutput,
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
        input_schema = schemas.DeleteLogGroupInput,
        output_schema = schemas.DeleteLogGroupOutput,
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
        input_schema = schemas.DeleteLogStreamInput,
        output_schema = schemas.DeleteLogStreamOutput,
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
        input_schema = schemas.DeleteLookupTableInput,
        output_schema = schemas.DeleteLookupTableOutput,
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
        input_schema = schemas.DeleteMetricFilterInput,
        output_schema = schemas.DeleteMetricFilterOutput,
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
        input_schema = schemas.DeleteQueryDefinitionInput,
        output_schema = schemas.DeleteQueryDefinitionOutput,
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
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
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
        input_schema = schemas.DeleteRetentionPolicyInput,
        output_schema = schemas.DeleteRetentionPolicyOutput,
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
        input_schema = schemas.DeleteScheduledQueryInput,
        output_schema = schemas.DeleteScheduledQueryOutput,
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
        input_schema = schemas.DeleteSubscriptionFilterInput,
        output_schema = schemas.DeleteSubscriptionFilterOutput,
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
        input_schema = schemas.DeleteTransformerInput,
        output_schema = schemas.DeleteTransformerOutput,
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
        input_schema = schemas.DescribeAccountPoliciesInput,
        output_schema = schemas.DescribeAccountPoliciesOutput,
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
        input_schema = schemas.DescribeConfigurationTemplatesInput,
        output_schema = schemas.DescribeConfigurationTemplatesOutput,
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
        input_schema = schemas.DescribeDeliveriesInput,
        output_schema = schemas.DescribeDeliveriesOutput,
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
        input_schema = schemas.DescribeDeliveryDestinationsInput,
        output_schema = schemas.DescribeDeliveryDestinationsOutput,
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
        input_schema = schemas.DescribeDeliverySourcesInput,
        output_schema = schemas.DescribeDeliverySourcesOutput,
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
        input_schema = schemas.DescribeDestinationsInput,
        output_schema = schemas.DescribeDestinationsOutput,
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
        input_schema = schemas.DescribeExportTasksInput,
        output_schema = schemas.DescribeExportTasksOutput,
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
        input_schema = schemas.DescribeFieldIndexesInput,
        output_schema = schemas.DescribeFieldIndexesOutput,
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
        input_schema = schemas.DescribeImportTaskBatchesInput,
        output_schema = schemas.DescribeImportTaskBatchesOutput,
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
        input_schema = schemas.DescribeImportTasksInput,
        output_schema = schemas.DescribeImportTasksOutput,
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
        input_schema = schemas.DescribeIndexPoliciesInput,
        output_schema = schemas.DescribeIndexPoliciesOutput,
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
        input_schema = schemas.DescribeLogGroupsInput,
        output_schema = schemas.DescribeLogGroupsOutput,
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
        input_schema = schemas.DescribeLogStreamsInput,
        output_schema = schemas.DescribeLogStreamsOutput,
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
        input_schema = schemas.DescribeLookupTablesInput,
        output_schema = schemas.DescribeLookupTablesOutput,
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
        input_schema = schemas.DescribeMetricFiltersInput,
        output_schema = schemas.DescribeMetricFiltersOutput,
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
        input_schema = schemas.DescribeQueriesInput,
        output_schema = schemas.DescribeQueriesOutput,
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
        input_schema = schemas.DescribeQueryDefinitionsInput,
        output_schema = schemas.DescribeQueryDefinitionsOutput,
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
        input_schema = schemas.DescribeResourcePoliciesInput,
        output_schema = schemas.DescribeResourcePoliciesOutput,
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
        input_schema = schemas.DescribeSubscriptionFiltersInput,
        output_schema = schemas.DescribeSubscriptionFiltersOutput,
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
        input_schema = schemas.DisassociateKmsKeyInput,
        output_schema = schemas.DisassociateKmsKeyOutput,
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
        input_schema = schemas.DisassociateSourceFromS3TableIntegrationInput,
        output_schema = schemas.DisassociateSourceFromS3TableIntegrationOutput,
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
        input_schema = schemas.FilterLogEventsInput,
        output_schema = schemas.FilterLogEventsOutput,
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
        input_schema = schemas.GetDataProtectionPolicyInput,
        output_schema = schemas.GetDataProtectionPolicyOutput,
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
        input_schema = schemas.GetDeliveryInput,
        output_schema = schemas.GetDeliveryOutput,
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
        input_schema = schemas.GetDeliveryDestinationInput,
        output_schema = schemas.GetDeliveryDestinationOutput,
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
        input_schema = schemas.GetDeliveryDestinationPolicyInput,
        output_schema = schemas.GetDeliveryDestinationPolicyOutput,
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
        input_schema = schemas.GetDeliverySourceInput,
        output_schema = schemas.GetDeliverySourceOutput,
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
        input_schema = schemas.GetIntegrationInput,
        output_schema = schemas.GetIntegrationOutput,
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
        input_schema = schemas.GetLogAnomalyDetectorInput,
        output_schema = schemas.GetLogAnomalyDetectorOutput,
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
        input_schema = schemas.GetLogEventsInput,
        output_schema = schemas.GetLogEventsOutput,
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
        input_schema = schemas.GetLogFieldsInput,
        output_schema = schemas.GetLogFieldsOutput,
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
        input_schema = schemas.GetLogGroupFieldsInput,
        output_schema = schemas.GetLogGroupFieldsOutput,
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
        input_schema = schemas.GetLogObjectInput,
        output_schema = schemas.GetLogObjectOutput,
        http_method = "POST",
        http_path = "/",
        event_stream = schemas.GetLogObjectResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLogRecord(input, options)
    return self:invokeOperation(input, {
        name = "GetLogRecord",
        input_schema = schemas.GetLogRecordInput,
        output_schema = schemas.GetLogRecordOutput,
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
        input_schema = schemas.GetLookupTableInput,
        output_schema = schemas.GetLookupTableOutput,
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
        input_schema = schemas.GetQueryResultsInput,
        output_schema = schemas.GetQueryResultsOutput,
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
        input_schema = schemas.GetScheduledQueryInput,
        output_schema = schemas.GetScheduledQueryOutput,
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
        input_schema = schemas.GetScheduledQueryHistoryInput,
        output_schema = schemas.GetScheduledQueryHistoryOutput,
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
        input_schema = schemas.GetTransformerInput,
        output_schema = schemas.GetTransformerOutput,
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
        input_schema = schemas.ListAggregateLogGroupSummariesInput,
        output_schema = schemas.ListAggregateLogGroupSummariesOutput,
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
        input_schema = schemas.ListAnomaliesInput,
        output_schema = schemas.ListAnomaliesOutput,
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
        input_schema = schemas.ListIntegrationsInput,
        output_schema = schemas.ListIntegrationsOutput,
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
        input_schema = schemas.ListLogAnomalyDetectorsInput,
        output_schema = schemas.ListLogAnomalyDetectorsOutput,
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
        input_schema = schemas.ListLogGroupsInput,
        output_schema = schemas.ListLogGroupsOutput,
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
        input_schema = schemas.ListLogGroupsForQueryInput,
        output_schema = schemas.ListLogGroupsForQueryOutput,
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
        input_schema = schemas.ListScheduledQueriesInput,
        output_schema = schemas.ListScheduledQueriesOutput,
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
        input_schema = schemas.ListSourcesForS3TableIntegrationInput,
        output_schema = schemas.ListSourcesForS3TableIntegrationOutput,
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

function Client:listTagsLogGroup(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsLogGroup",
        input_schema = schemas.ListTagsLogGroupInput,
        output_schema = schemas.ListTagsLogGroupOutput,
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
        input_schema = schemas.PutAccountPolicyInput,
        output_schema = schemas.PutAccountPolicyOutput,
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
        input_schema = schemas.PutBearerTokenAuthenticationInput,
        output_schema = schemas.PutBearerTokenAuthenticationOutput,
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
        input_schema = schemas.PutDataProtectionPolicyInput,
        output_schema = schemas.PutDataProtectionPolicyOutput,
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
        input_schema = schemas.PutDeliveryDestinationInput,
        output_schema = schemas.PutDeliveryDestinationOutput,
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
        input_schema = schemas.PutDeliveryDestinationPolicyInput,
        output_schema = schemas.PutDeliveryDestinationPolicyOutput,
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
        input_schema = schemas.PutDeliverySourceInput,
        output_schema = schemas.PutDeliverySourceOutput,
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
        input_schema = schemas.PutDestinationInput,
        output_schema = schemas.PutDestinationOutput,
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
        input_schema = schemas.PutDestinationPolicyInput,
        output_schema = schemas.PutDestinationPolicyOutput,
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
        input_schema = schemas.PutIndexPolicyInput,
        output_schema = schemas.PutIndexPolicyOutput,
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
        input_schema = schemas.PutIntegrationInput,
        output_schema = schemas.PutIntegrationOutput,
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
        input_schema = schemas.PutLogEventsInput,
        output_schema = schemas.PutLogEventsOutput,
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
        input_schema = schemas.PutLogGroupDeletionProtectionInput,
        output_schema = schemas.PutLogGroupDeletionProtectionOutput,
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
        input_schema = schemas.PutMetricFilterInput,
        output_schema = schemas.PutMetricFilterOutput,
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
        input_schema = schemas.PutQueryDefinitionInput,
        output_schema = schemas.PutQueryDefinitionOutput,
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
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
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
        input_schema = schemas.PutRetentionPolicyInput,
        output_schema = schemas.PutRetentionPolicyOutput,
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
        input_schema = schemas.PutSubscriptionFilterInput,
        output_schema = schemas.PutSubscriptionFilterOutput,
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
        input_schema = schemas.PutTransformerInput,
        output_schema = schemas.PutTransformerOutput,
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
        input_schema = schemas.StartLiveTailInput,
        output_schema = schemas.StartLiveTailOutput,
        http_method = "POST",
        http_path = "/",
        event_stream = schemas.StartLiveTailResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartQuery",
        input_schema = schemas.StartQueryInput,
        output_schema = schemas.StartQueryOutput,
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
        input_schema = schemas.StopQueryInput,
        output_schema = schemas.StopQueryOutput,
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
        input_schema = schemas.TagLogGroupInput,
        output_schema = schemas.TagLogGroupOutput,
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

function Client:testMetricFilter(input, options)
    return self:invokeOperation(input, {
        name = "TestMetricFilter",
        input_schema = schemas.TestMetricFilterInput,
        output_schema = schemas.TestMetricFilterOutput,
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
        input_schema = schemas.TestTransformerInput,
        output_schema = schemas.TestTransformerOutput,
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
        input_schema = schemas.UntagLogGroupInput,
        output_schema = schemas.UntagLogGroupOutput,
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

function Client:updateAnomaly(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnomaly",
        input_schema = schemas.UpdateAnomalyInput,
        output_schema = schemas.UpdateAnomalyOutput,
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
        input_schema = schemas.UpdateDeliveryConfigurationInput,
        output_schema = schemas.UpdateDeliveryConfigurationOutput,
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
        input_schema = schemas.UpdateLogAnomalyDetectorInput,
        output_schema = schemas.UpdateLogAnomalyDetectorOutput,
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
        input_schema = schemas.UpdateLookupTableInput,
        output_schema = schemas.UpdateLookupTableOutput,
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
        input_schema = schemas.UpdateScheduledQueryInput,
        output_schema = schemas.UpdateScheduledQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
