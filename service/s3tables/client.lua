local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("s3tables.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("s3tables.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "S3TableBuckets"
    cfg.signing_name = "s3tablebuckets"
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

function Client:createNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateNamespace",
        input_schema = types.CreateNamespaceInput,
        output_schema = types.CreateNamespaceOutput,
        http_method = "PUT",
        http_path = "/namespaces/{tableBucketARN}",
    }, options)
end

function Client:createTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTable",
        input_schema = types.CreateTableInput,
        output_schema = types.CreateTableOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}",
    }, options)
end

function Client:createTableBucket(input, options)
    return self:invokeOperation(input, {
        name = "CreateTableBucket",
        input_schema = types.CreateTableBucketInput,
        output_schema = types.CreateTableBucketOutput,
        http_method = "PUT",
        http_path = "/buckets",
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = types.DeleteNamespaceInput,
        output_schema = types.DeleteNamespaceOutput,
        http_method = "DELETE",
        http_path = "/namespaces/{tableBucketARN}/{namespace}",
    }, options)
end

function Client:deleteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTable",
        input_schema = types.DeleteTableInput,
        output_schema = types.DeleteTableOutput,
        http_method = "DELETE",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}",
    }, options)
end

function Client:deleteTableBucket(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucket",
        input_schema = types.DeleteTableBucketInput,
        output_schema = types.DeleteTableBucketOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}",
    }, options)
end

function Client:deleteTableBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketEncryption",
        input_schema = types.DeleteTableBucketEncryptionInput,
        output_schema = types.DeleteTableBucketEncryptionOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}/encryption",
    }, options)
end

function Client:deleteTableBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketMetricsConfiguration",
        input_schema = types.DeleteTableBucketMetricsConfigurationInput,
        output_schema = types.DeleteTableBucketMetricsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}/metrics",
    }, options)
end

function Client:deleteTableBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketPolicy",
        input_schema = types.DeleteTableBucketPolicyInput,
        output_schema = types.DeleteTableBucketPolicyOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}/policy",
    }, options)
end

function Client:deleteTableBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketReplication",
        input_schema = types.DeleteTableBucketReplicationInput,
        output_schema = types.DeleteTableBucketReplicationOutput,
        http_method = "DELETE",
        http_path = "/table-bucket-replication",
    }, options)
end

function Client:deleteTablePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTablePolicy",
        input_schema = types.DeleteTablePolicyInput,
        output_schema = types.DeleteTablePolicyOutput,
        http_method = "DELETE",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/policy",
    }, options)
end

function Client:deleteTableReplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableReplication",
        input_schema = types.DeleteTableReplicationInput,
        output_schema = types.DeleteTableReplicationOutput,
        http_method = "DELETE",
        http_path = "/table-replication",
    }, options)
end

function Client:getNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespace",
        input_schema = types.GetNamespaceInput,
        output_schema = types.GetNamespaceOutput,
        http_method = "GET",
        http_path = "/namespaces/{tableBucketARN}/{namespace}",
    }, options)
end

function Client:getTable(input, options)
    return self:invokeOperation(input, {
        name = "GetTable",
        input_schema = types.GetTableInput,
        output_schema = types.GetTableOutput,
        http_method = "GET",
        http_path = "/get-table",
    }, options)
end

function Client:getTableBucket(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucket",
        input_schema = types.GetTableBucketInput,
        output_schema = types.GetTableBucketOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}",
    }, options)
end

function Client:getTableBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketEncryption",
        input_schema = types.GetTableBucketEncryptionInput,
        output_schema = types.GetTableBucketEncryptionOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/encryption",
    }, options)
end

function Client:getTableBucketMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketMaintenanceConfiguration",
        input_schema = types.GetTableBucketMaintenanceConfigurationInput,
        output_schema = types.GetTableBucketMaintenanceConfigurationOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/maintenance",
    }, options)
end

function Client:getTableBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketMetricsConfiguration",
        input_schema = types.GetTableBucketMetricsConfigurationInput,
        output_schema = types.GetTableBucketMetricsConfigurationOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/metrics",
    }, options)
end

function Client:getTableBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketPolicy",
        input_schema = types.GetTableBucketPolicyInput,
        output_schema = types.GetTableBucketPolicyOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/policy",
    }, options)
end

function Client:getTableBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketReplication",
        input_schema = types.GetTableBucketReplicationInput,
        output_schema = types.GetTableBucketReplicationOutput,
        http_method = "GET",
        http_path = "/table-bucket-replication",
    }, options)
end

function Client:getTableBucketStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketStorageClass",
        input_schema = types.GetTableBucketStorageClassInput,
        output_schema = types.GetTableBucketStorageClassOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/storage-class",
    }, options)
end

function Client:getTableEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetTableEncryption",
        input_schema = types.GetTableEncryptionInput,
        output_schema = types.GetTableEncryptionOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/encryption",
    }, options)
end

function Client:getTableMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMaintenanceConfiguration",
        input_schema = types.GetTableMaintenanceConfigurationInput,
        output_schema = types.GetTableMaintenanceConfigurationOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance",
    }, options)
end

function Client:getTableMaintenanceJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMaintenanceJobStatus",
        input_schema = types.GetTableMaintenanceJobStatusInput,
        output_schema = types.GetTableMaintenanceJobStatusOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status",
    }, options)
end

function Client:getTableMetadataLocation(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMetadataLocation",
        input_schema = types.GetTableMetadataLocationInput,
        output_schema = types.GetTableMetadataLocationOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location",
    }, options)
end

function Client:getTablePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetTablePolicy",
        input_schema = types.GetTablePolicyInput,
        output_schema = types.GetTablePolicyOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/policy",
    }, options)
end

function Client:getTableRecordExpirationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableRecordExpirationConfiguration",
        input_schema = types.GetTableRecordExpirationConfigurationInput,
        output_schema = types.GetTableRecordExpirationConfigurationOutput,
        http_method = "GET",
        http_path = "/table-record-expiration",
    }, options)
end

function Client:getTableRecordExpirationJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableRecordExpirationJobStatus",
        input_schema = types.GetTableRecordExpirationJobStatusInput,
        output_schema = types.GetTableRecordExpirationJobStatusOutput,
        http_method = "GET",
        http_path = "/table-record-expiration-job-status",
    }, options)
end

function Client:getTableReplication(input, options)
    return self:invokeOperation(input, {
        name = "GetTableReplication",
        input_schema = types.GetTableReplicationInput,
        output_schema = types.GetTableReplicationOutput,
        http_method = "GET",
        http_path = "/table-replication",
    }, options)
end

function Client:getTableReplicationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableReplicationStatus",
        input_schema = types.GetTableReplicationStatusInput,
        output_schema = types.GetTableReplicationStatusOutput,
        http_method = "GET",
        http_path = "/replication-status",
    }, options)
end

function Client:getTableStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "GetTableStorageClass",
        input_schema = types.GetTableStorageClassInput,
        output_schema = types.GetTableStorageClassOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/storage-class",
    }, options)
end

function Client:listNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListNamespaces",
        input_schema = types.ListNamespacesInput,
        output_schema = types.ListNamespacesOutput,
        http_method = "GET",
        http_path = "/namespaces/{tableBucketARN}",
    }, options)
end

function Client:listTableBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListTableBuckets",
        input_schema = types.ListTableBucketsInput,
        output_schema = types.ListTableBucketsOutput,
        http_method = "GET",
        http_path = "/buckets",
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = types.ListTablesInput,
        output_schema = types.ListTablesOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tag/{resourceArn}",
    }, options)
end

function Client:putTableBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketEncryption",
        input_schema = types.PutTableBucketEncryptionInput,
        output_schema = types.PutTableBucketEncryptionOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/encryption",
    }, options)
end

function Client:putTableBucketMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketMaintenanceConfiguration",
        input_schema = types.PutTableBucketMaintenanceConfigurationInput,
        output_schema = types.PutTableBucketMaintenanceConfigurationOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/maintenance/{type}",
    }, options)
end

function Client:putTableBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketMetricsConfiguration",
        input_schema = types.PutTableBucketMetricsConfigurationInput,
        output_schema = types.PutTableBucketMetricsConfigurationOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/metrics",
    }, options)
end

function Client:putTableBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketPolicy",
        input_schema = types.PutTableBucketPolicyInput,
        output_schema = types.PutTableBucketPolicyOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/policy",
    }, options)
end

function Client:putTableBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketReplication",
        input_schema = types.PutTableBucketReplicationInput,
        output_schema = types.PutTableBucketReplicationOutput,
        http_method = "PUT",
        http_path = "/table-bucket-replication",
    }, options)
end

function Client:putTableBucketStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketStorageClass",
        input_schema = types.PutTableBucketStorageClassInput,
        output_schema = types.PutTableBucketStorageClassOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/storage-class",
    }, options)
end

function Client:putTableMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableMaintenanceConfiguration",
        input_schema = types.PutTableMaintenanceConfigurationInput,
        output_schema = types.PutTableMaintenanceConfigurationOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}",
    }, options)
end

function Client:putTablePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutTablePolicy",
        input_schema = types.PutTablePolicyInput,
        output_schema = types.PutTablePolicyOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/policy",
    }, options)
end

function Client:putTableRecordExpirationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableRecordExpirationConfiguration",
        input_schema = types.PutTableRecordExpirationConfigurationInput,
        output_schema = types.PutTableRecordExpirationConfigurationOutput,
        http_method = "PUT",
        http_path = "/table-record-expiration",
    }, options)
end

function Client:putTableReplication(input, options)
    return self:invokeOperation(input, {
        name = "PutTableReplication",
        input_schema = types.PutTableReplicationInput,
        output_schema = types.PutTableReplicationOutput,
        http_method = "PUT",
        http_path = "/table-replication",
    }, options)
end

function Client:renameTable(input, options)
    return self:invokeOperation(input, {
        name = "RenameTable",
        input_schema = types.RenameTableInput,
        output_schema = types.RenameTableOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/rename",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tag/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tag/{resourceArn}",
    }, options)
end

function Client:updateTableMetadataLocation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTableMetadataLocation",
        input_schema = types.UpdateTableMetadataLocationInput,
        output_schema = types.UpdateTableMetadataLocationOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location",
    }, options)
end

return M
