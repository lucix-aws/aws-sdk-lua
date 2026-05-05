local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("dynamodb.endpoint_rules")
local schemas = require("dynamodb.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.BatchExecuteStatementInput,
        output_schema = schemas.BatchExecuteStatementOutput,
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
        input_schema = schemas.BatchGetItemInput,
        output_schema = schemas.BatchGetItemOutput,
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
        input_schema = schemas.BatchWriteItemInput,
        output_schema = schemas.BatchWriteItemOutput,
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
        input_schema = schemas.CreateBackupInput,
        output_schema = schemas.CreateBackupOutput,
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
        input_schema = schemas.CreateGlobalTableInput,
        output_schema = schemas.CreateGlobalTableOutput,
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
        input_schema = schemas.CreateTableInput,
        output_schema = schemas.CreateTableOutput,
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
        input_schema = schemas.DeleteBackupInput,
        output_schema = schemas.DeleteBackupOutput,
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
        input_schema = schemas.DeleteItemInput,
        output_schema = schemas.DeleteItemOutput,
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
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
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
        input_schema = schemas.DeleteTableInput,
        output_schema = schemas.DeleteTableOutput,
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
        input_schema = schemas.DescribeBackupInput,
        output_schema = schemas.DescribeBackupOutput,
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
        input_schema = schemas.DescribeContinuousBackupsInput,
        output_schema = schemas.DescribeContinuousBackupsOutput,
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
        input_schema = schemas.DescribeContributorInsightsInput,
        output_schema = schemas.DescribeContributorInsightsOutput,
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
        input_schema = schemas.DescribeEndpointsInput,
        output_schema = schemas.DescribeEndpointsOutput,
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
        input_schema = schemas.DescribeExportInput,
        output_schema = schemas.DescribeExportOutput,
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
        input_schema = schemas.DescribeGlobalTableInput,
        output_schema = schemas.DescribeGlobalTableOutput,
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
        input_schema = schemas.DescribeGlobalTableSettingsInput,
        output_schema = schemas.DescribeGlobalTableSettingsOutput,
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
        input_schema = schemas.DescribeImportInput,
        output_schema = schemas.DescribeImportOutput,
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
        input_schema = schemas.DescribeKinesisStreamingDestinationInput,
        output_schema = schemas.DescribeKinesisStreamingDestinationOutput,
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
        input_schema = schemas.DescribeLimitsInput,
        output_schema = schemas.DescribeLimitsOutput,
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
        input_schema = schemas.DescribeTableInput,
        output_schema = schemas.DescribeTableOutput,
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
        input_schema = schemas.DescribeTableReplicaAutoScalingInput,
        output_schema = schemas.DescribeTableReplicaAutoScalingOutput,
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
        input_schema = schemas.DescribeTimeToLiveInput,
        output_schema = schemas.DescribeTimeToLiveOutput,
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
        input_schema = schemas.DisableKinesisStreamingDestinationInput,
        output_schema = schemas.DisableKinesisStreamingDestinationOutput,
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
        input_schema = schemas.EnableKinesisStreamingDestinationInput,
        output_schema = schemas.EnableKinesisStreamingDestinationOutput,
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
        input_schema = schemas.ExecuteStatementInput,
        output_schema = schemas.ExecuteStatementOutput,
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
        input_schema = schemas.ExecuteTransactionInput,
        output_schema = schemas.ExecuteTransactionOutput,
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
        input_schema = schemas.ExportTableToPointInTimeInput,
        output_schema = schemas.ExportTableToPointInTimeOutput,
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
        input_schema = schemas.GetItemInput,
        output_schema = schemas.GetItemOutput,
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
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
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
        input_schema = schemas.ImportTableInput,
        output_schema = schemas.ImportTableOutput,
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
        input_schema = schemas.ListBackupsInput,
        output_schema = schemas.ListBackupsOutput,
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
        input_schema = schemas.ListContributorInsightsInput,
        output_schema = schemas.ListContributorInsightsOutput,
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
        input_schema = schemas.ListExportsInput,
        output_schema = schemas.ListExportsOutput,
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
        input_schema = schemas.ListGlobalTablesInput,
        output_schema = schemas.ListGlobalTablesOutput,
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
        input_schema = schemas.ListImportsInput,
        output_schema = schemas.ListImportsOutput,
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
        input_schema = schemas.ListTablesInput,
        output_schema = schemas.ListTablesOutput,
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
        input_schema = schemas.ListTagsOfResourceInput,
        output_schema = schemas.ListTagsOfResourceOutput,
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
        input_schema = schemas.PutItemInput,
        output_schema = schemas.PutItemOutput,
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
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
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
        input_schema = schemas.QueryInput,
        output_schema = schemas.QueryOutput,
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
        input_schema = schemas.RestoreTableFromBackupInput,
        output_schema = schemas.RestoreTableFromBackupOutput,
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
        input_schema = schemas.RestoreTableToPointInTimeInput,
        output_schema = schemas.RestoreTableToPointInTimeOutput,
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
        input_schema = schemas.ScanInput,
        output_schema = schemas.ScanOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.TransactGetItemsInput,
        output_schema = schemas.TransactGetItemsOutput,
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
        input_schema = schemas.TransactWriteItemsInput,
        output_schema = schemas.TransactWriteItemsOutput,
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
        context_params = {
            ResourceArn = "ResourceArn",
        },
    }, options)
end

function Client:updateContinuousBackups(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContinuousBackups",
        input_schema = schemas.UpdateContinuousBackupsInput,
        output_schema = schemas.UpdateContinuousBackupsOutput,
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
        input_schema = schemas.UpdateContributorInsightsInput,
        output_schema = schemas.UpdateContributorInsightsOutput,
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
        input_schema = schemas.UpdateGlobalTableInput,
        output_schema = schemas.UpdateGlobalTableOutput,
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
        input_schema = schemas.UpdateGlobalTableSettingsInput,
        output_schema = schemas.UpdateGlobalTableSettingsOutput,
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
        input_schema = schemas.UpdateItemInput,
        output_schema = schemas.UpdateItemOutput,
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
        input_schema = schemas.UpdateKinesisStreamingDestinationInput,
        output_schema = schemas.UpdateKinesisStreamingDestinationOutput,
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
        input_schema = schemas.UpdateTableInput,
        output_schema = schemas.UpdateTableOutput,
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
        input_schema = schemas.UpdateTableReplicaAutoScalingInput,
        output_schema = schemas.UpdateTableReplicaAutoScalingOutput,
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
        input_schema = schemas.UpdateTimeToLiveInput,
        output_schema = schemas.UpdateTimeToLiveOutput,
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
