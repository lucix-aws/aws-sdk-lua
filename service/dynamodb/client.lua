local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("dynamodb.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("dynamodb.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DynamoDB_20120810"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dynamodb", signing_region = cfg.region } }
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

function Client:batchExecuteStatement(input, options)
    return self:invokeOperation(input, {
        name = "BatchExecuteStatement",
        input_schema = types.BatchExecuteStatementInput,
        output_schema = types.BatchExecuteStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetItem",
        input_schema = types.BatchGetItemInput,
        output_schema = types.BatchGetItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchWriteItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchWriteItem",
        input_schema = types.BatchWriteItemInput,
        output_schema = types.BatchWriteItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBackup(input, options)
    return self:invokeOperation(input, {
        name = "CreateBackup",
        input_schema = types.CreateBackupInput,
        output_schema = types.CreateBackupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:createGlobalTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateGlobalTable",
        input_schema = types.CreateGlobalTableInput,
        output_schema = types.CreateGlobalTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "GlobalTableName",
        },
    }, options)
end

function Client:createTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTable",
        input_schema = types.CreateTableInput,
        output_schema = types.CreateTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:deleteBackup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBackup",
        input_schema = types.DeleteBackupInput,
        output_schema = types.DeleteBackupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "BackupArn",
        },
    }, options)
end

function Client:deleteItem(input, options)
    return self:invokeOperation(input, {
        name = "DeleteItem",
        input_schema = types.DeleteItemInput,
        output_schema = types.DeleteItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
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
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:deleteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTable",
        input_schema = types.DeleteTableInput,
        output_schema = types.DeleteTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:describeBackup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBackup",
        input_schema = types.DescribeBackupInput,
        output_schema = types.DescribeBackupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "BackupArn",
        },
    }, options)
end

function Client:describeContinuousBackups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContinuousBackups",
        input_schema = types.DescribeContinuousBackupsInput,
        output_schema = types.DescribeContinuousBackupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:describeContributorInsights(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContributorInsights",
        input_schema = types.DescribeContributorInsightsInput,
        output_schema = types.DescribeContributorInsightsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:describeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoints",
        input_schema = types.DescribeEndpointsInput,
        output_schema = types.DescribeEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExport",
        input_schema = types.DescribeExportInput,
        output_schema = types.DescribeExportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "ExportArn",
        },
    }, options)
end

function Client:describeGlobalTable(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalTable",
        input_schema = types.DescribeGlobalTableInput,
        output_schema = types.DescribeGlobalTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "GlobalTableName",
        },
    }, options)
end

function Client:describeGlobalTableSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGlobalTableSettings",
        input_schema = types.DescribeGlobalTableSettingsInput,
        output_schema = types.DescribeGlobalTableSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "GlobalTableName",
        },
    }, options)
end

function Client:describeImport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImport",
        input_schema = types.DescribeImportInput,
        output_schema = types.DescribeImportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "ImportArn",
        },
    }, options)
end

function Client:describeKinesisStreamingDestination(input, options)
    return self:invokeOperation(input, {
        name = "DescribeKinesisStreamingDestination",
        input_schema = types.DescribeKinesisStreamingDestinationInput,
        output_schema = types.DescribeKinesisStreamingDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:describeLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLimits",
        input_schema = types.DescribeLimitsInput,
        output_schema = types.DescribeLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTable(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTable",
        input_schema = types.DescribeTableInput,
        output_schema = types.DescribeTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:describeTableReplicaAutoScaling(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTableReplicaAutoScaling",
        input_schema = types.DescribeTableReplicaAutoScalingInput,
        output_schema = types.DescribeTableReplicaAutoScalingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:describeTimeToLive(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTimeToLive",
        input_schema = types.DescribeTimeToLiveInput,
        output_schema = types.DescribeTimeToLiveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:disableKinesisStreamingDestination(input, options)
    return self:invokeOperation(input, {
        name = "DisableKinesisStreamingDestination",
        input_schema = types.DisableKinesisStreamingDestinationInput,
        output_schema = types.DisableKinesisStreamingDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:enableKinesisStreamingDestination(input, options)
    return self:invokeOperation(input, {
        name = "EnableKinesisStreamingDestination",
        input_schema = types.EnableKinesisStreamingDestinationInput,
        output_schema = types.EnableKinesisStreamingDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:executeStatement(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteStatement",
        input_schema = types.ExecuteStatementInput,
        output_schema = types.ExecuteStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeTransaction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteTransaction",
        input_schema = types.ExecuteTransactionInput,
        output_schema = types.ExecuteTransactionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportTableToPointInTime(input, options)
    return self:invokeOperation(input, {
        name = "ExportTableToPointInTime",
        input_schema = types.ExportTableToPointInTimeInput,
        output_schema = types.ExportTableToPointInTimeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableArn",
        },
    }, options)
end

function Client:getItem(input, options)
    return self:invokeOperation(input, {
        name = "GetItem",
        input_schema = types.GetItemInput,
        output_schema = types.GetItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:importTable(input, options)
    return self:invokeOperation(input, {
        name = "ImportTable",
        input_schema = types.ImportTableInput,
        output_schema = types.ImportTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBackups(input, options)
    return self:invokeOperation(input, {
        name = "ListBackups",
        input_schema = types.ListBackupsInput,
        output_schema = types.ListBackupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:listContributorInsights(input, options)
    return self:invokeOperation(input, {
        name = "ListContributorInsights",
        input_schema = types.ListContributorInsightsInput,
        output_schema = types.ListContributorInsightsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = types.ListExportsInput,
        output_schema = types.ListExportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableArn",
        },
    }, options)
end

function Client:listGlobalTables(input, options)
    return self:invokeOperation(input, {
        name = "ListGlobalTables",
        input_schema = types.ListGlobalTablesInput,
        output_schema = types.ListGlobalTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = types.ListImportsInput,
        output_schema = types.ListImportsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableArn",
        },
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = types.ListTablesInput,
        output_schema = types.ListTablesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsOfResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsOfResource",
        input_schema = types.ListTagsOfResourceInput,
        output_schema = types.ListTagsOfResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:putItem(input, options)
    return self:invokeOperation(input, {
        name = "PutItem",
        input_schema = types.PutItemInput,
        output_schema = types.PutItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
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
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:query(input, options)
    return self:invokeOperation(input, {
        name = "Query",
        input_schema = types.QueryInput,
        output_schema = types.QueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:restoreTableFromBackup(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableFromBackup",
        input_schema = types.RestoreTableFromBackupInput,
        output_schema = types.RestoreTableFromBackupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TargetTableName",
        },
    }, options)
end

function Client:restoreTableToPointInTime(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableToPointInTime",
        input_schema = types.RestoreTableToPointInTimeInput,
        output_schema = types.RestoreTableToPointInTimeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TargetTableName",
        },
    }, options)
end

function Client:scan(input, options)
    return self:invokeOperation(input, {
        name = "Scan",
        input_schema = types.ScanInput,
        output_schema = types.ScanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
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
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:transactGetItems(input, options)
    return self:invokeOperation(input, {
        name = "TransactGetItems",
        input_schema = types.TransactGetItemsInput,
        output_schema = types.TransactGetItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:transactWriteItems(input, options)
    return self:invokeOperation(input, {
        name = "TransactWriteItems",
        input_schema = types.TransactWriteItemsInput,
        output_schema = types.TransactWriteItemsOutput,
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
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:updateContinuousBackups(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContinuousBackups",
        input_schema = types.UpdateContinuousBackupsInput,
        output_schema = types.UpdateContinuousBackupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:updateContributorInsights(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContributorInsights",
        input_schema = types.UpdateContributorInsightsInput,
        output_schema = types.UpdateContributorInsightsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:updateGlobalTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalTable",
        input_schema = types.UpdateGlobalTableInput,
        output_schema = types.UpdateGlobalTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "GlobalTableName",
        },
    }, options)
end

function Client:updateGlobalTableSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalTableSettings",
        input_schema = types.UpdateGlobalTableSettingsInput,
        output_schema = types.UpdateGlobalTableSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "GlobalTableName",
        },
    }, options)
end

function Client:updateItem(input, options)
    return self:invokeOperation(input, {
        name = "UpdateItem",
        input_schema = types.UpdateItemInput,
        output_schema = types.UpdateItemOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:updateKinesisStreamingDestination(input, options)
    return self:invokeOperation(input, {
        name = "UpdateKinesisStreamingDestination",
        input_schema = types.UpdateKinesisStreamingDestinationInput,
        output_schema = types.UpdateKinesisStreamingDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:updateTable(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTable",
        input_schema = types.UpdateTableInput,
        output_schema = types.UpdateTableOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:updateTableReplicaAutoScaling(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTableReplicaAutoScaling",
        input_schema = types.UpdateTableReplicaAutoScalingInput,
        output_schema = types.UpdateTableReplicaAutoScalingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

function Client:updateTimeToLive(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTimeToLive",
        input_schema = types.UpdateTimeToLiveInput,
        output_schema = types.UpdateTimeToLiveOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
        context_params = {
            ResourceArn = "TableName",
        },
    }, options)
end

return M
