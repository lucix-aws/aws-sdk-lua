local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("s3tables.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("s3tables.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "S3TableBuckets"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "s3tables", signing_region = cfg.region } }
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

function Client:createNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateNamespace",
        input_schema = schemas.CreateNamespaceInput,
        output_schema = schemas.CreateNamespaceOutput,
        http_method = "PUT",
        http_path = "/namespaces/{tableBucketARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateTable",
        input_schema = schemas.CreateTableInput,
        output_schema = schemas.CreateTableOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTableBucket(input, options)
    return self:invokeOperation(input, {
        name = "CreateTableBucket",
        input_schema = schemas.CreateTableBucketInput,
        output_schema = schemas.CreateTableBucketOutput,
        http_method = "PUT",
        http_path = "/buckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamespace",
        input_schema = schemas.DeleteNamespaceInput,
        output_schema = schemas.DeleteNamespaceOutput,
        http_method = "DELETE",
        http_path = "/namespaces/{tableBucketARN}/{namespace}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTable",
        input_schema = schemas.DeleteTableInput,
        output_schema = schemas.DeleteTableOutput,
        http_method = "DELETE",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTableBucket(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucket",
        input_schema = schemas.DeleteTableBucketInput,
        output_schema = schemas.DeleteTableBucketOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTableBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketEncryption",
        input_schema = schemas.DeleteTableBucketEncryptionInput,
        output_schema = schemas.DeleteTableBucketEncryptionOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTableBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketMetricsConfiguration",
        input_schema = schemas.DeleteTableBucketMetricsConfigurationInput,
        output_schema = schemas.DeleteTableBucketMetricsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTableBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketPolicy",
        input_schema = schemas.DeleteTableBucketPolicyInput,
        output_schema = schemas.DeleteTableBucketPolicyOutput,
        http_method = "DELETE",
        http_path = "/buckets/{tableBucketARN}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTableBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableBucketReplication",
        input_schema = schemas.DeleteTableBucketReplicationInput,
        output_schema = schemas.DeleteTableBucketReplicationOutput,
        http_method = "DELETE",
        http_path = "/table-bucket-replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTablePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTablePolicy",
        input_schema = schemas.DeleteTablePolicyInput,
        output_schema = schemas.DeleteTablePolicyOutput,
        http_method = "DELETE",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTableReplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTableReplication",
        input_schema = schemas.DeleteTableReplicationInput,
        output_schema = schemas.DeleteTableReplicationOutput,
        http_method = "DELETE",
        http_path = "/table-replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetNamespace",
        input_schema = schemas.GetNamespaceInput,
        output_schema = schemas.GetNamespaceOutput,
        http_method = "GET",
        http_path = "/namespaces/{tableBucketARN}/{namespace}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTable(input, options)
    return self:invokeOperation(input, {
        name = "GetTable",
        input_schema = schemas.GetTableInput,
        output_schema = schemas.GetTableOutput,
        http_method = "GET",
        http_path = "/get-table",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucket(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucket",
        input_schema = schemas.GetTableBucketInput,
        output_schema = schemas.GetTableBucketOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketEncryption",
        input_schema = schemas.GetTableBucketEncryptionInput,
        output_schema = schemas.GetTableBucketEncryptionOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucketMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketMaintenanceConfiguration",
        input_schema = schemas.GetTableBucketMaintenanceConfigurationInput,
        output_schema = schemas.GetTableBucketMaintenanceConfigurationOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/maintenance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketMetricsConfiguration",
        input_schema = schemas.GetTableBucketMetricsConfigurationInput,
        output_schema = schemas.GetTableBucketMetricsConfigurationOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketPolicy",
        input_schema = schemas.GetTableBucketPolicyInput,
        output_schema = schemas.GetTableBucketPolicyOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketReplication",
        input_schema = schemas.GetTableBucketReplicationInput,
        output_schema = schemas.GetTableBucketReplicationOutput,
        http_method = "GET",
        http_path = "/table-bucket-replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableBucketStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "GetTableBucketStorageClass",
        input_schema = schemas.GetTableBucketStorageClassInput,
        output_schema = schemas.GetTableBucketStorageClassOutput,
        http_method = "GET",
        http_path = "/buckets/{tableBucketARN}/storage-class",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableEncryption(input, options)
    return self:invokeOperation(input, {
        name = "GetTableEncryption",
        input_schema = schemas.GetTableEncryptionInput,
        output_schema = schemas.GetTableEncryptionOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMaintenanceConfiguration",
        input_schema = schemas.GetTableMaintenanceConfigurationInput,
        output_schema = schemas.GetTableMaintenanceConfigurationOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableMaintenanceJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMaintenanceJobStatus",
        input_schema = schemas.GetTableMaintenanceJobStatusInput,
        output_schema = schemas.GetTableMaintenanceJobStatusOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance-job-status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableMetadataLocation(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMetadataLocation",
        input_schema = schemas.GetTableMetadataLocationInput,
        output_schema = schemas.GetTableMetadataLocationOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTablePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetTablePolicy",
        input_schema = schemas.GetTablePolicyInput,
        output_schema = schemas.GetTablePolicyOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableRecordExpirationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetTableRecordExpirationConfiguration",
        input_schema = schemas.GetTableRecordExpirationConfigurationInput,
        output_schema = schemas.GetTableRecordExpirationConfigurationOutput,
        http_method = "GET",
        http_path = "/table-record-expiration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableRecordExpirationJobStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableRecordExpirationJobStatus",
        input_schema = schemas.GetTableRecordExpirationJobStatusInput,
        output_schema = schemas.GetTableRecordExpirationJobStatusOutput,
        http_method = "GET",
        http_path = "/table-record-expiration-job-status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableReplication(input, options)
    return self:invokeOperation(input, {
        name = "GetTableReplication",
        input_schema = schemas.GetTableReplicationInput,
        output_schema = schemas.GetTableReplicationOutput,
        http_method = "GET",
        http_path = "/table-replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableReplicationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetTableReplicationStatus",
        input_schema = schemas.GetTableReplicationStatusInput,
        output_schema = schemas.GetTableReplicationStatusOutput,
        http_method = "GET",
        http_path = "/replication-status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "GetTableStorageClass",
        input_schema = schemas.GetTableStorageClassInput,
        output_schema = schemas.GetTableStorageClassOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/storage-class",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListNamespaces",
        input_schema = schemas.ListNamespacesInput,
        output_schema = schemas.ListNamespacesOutput,
        http_method = "GET",
        http_path = "/namespaces/{tableBucketARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTableBuckets(input, options)
    return self:invokeOperation(input, {
        name = "ListTableBuckets",
        input_schema = schemas.ListTableBucketsInput,
        output_schema = schemas.ListTableBucketsOutput,
        http_method = "GET",
        http_path = "/buckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTables(input, options)
    return self:invokeOperation(input, {
        name = "ListTables",
        input_schema = schemas.ListTablesInput,
        output_schema = schemas.ListTablesOutput,
        http_method = "GET",
        http_path = "/tables/{tableBucketARN}",
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
        http_path = "/tag/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableBucketEncryption(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketEncryption",
        input_schema = schemas.PutTableBucketEncryptionInput,
        output_schema = schemas.PutTableBucketEncryptionOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableBucketMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketMaintenanceConfiguration",
        input_schema = schemas.PutTableBucketMaintenanceConfigurationInput,
        output_schema = schemas.PutTableBucketMaintenanceConfigurationOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/maintenance/{type}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableBucketMetricsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketMetricsConfiguration",
        input_schema = schemas.PutTableBucketMetricsConfigurationInput,
        output_schema = schemas.PutTableBucketMetricsConfigurationOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableBucketPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketPolicy",
        input_schema = schemas.PutTableBucketPolicyInput,
        output_schema = schemas.PutTableBucketPolicyOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableBucketReplication(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketReplication",
        input_schema = schemas.PutTableBucketReplicationInput,
        output_schema = schemas.PutTableBucketReplicationOutput,
        http_method = "PUT",
        http_path = "/table-bucket-replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableBucketStorageClass(input, options)
    return self:invokeOperation(input, {
        name = "PutTableBucketStorageClass",
        input_schema = schemas.PutTableBucketStorageClassInput,
        output_schema = schemas.PutTableBucketStorageClassOutput,
        http_method = "PUT",
        http_path = "/buckets/{tableBucketARN}/storage-class",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableMaintenanceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableMaintenanceConfiguration",
        input_schema = schemas.PutTableMaintenanceConfigurationInput,
        output_schema = schemas.PutTableMaintenanceConfigurationOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/maintenance/{type}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTablePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutTablePolicy",
        input_schema = schemas.PutTablePolicyInput,
        output_schema = schemas.PutTablePolicyOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableRecordExpirationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutTableRecordExpirationConfiguration",
        input_schema = schemas.PutTableRecordExpirationConfigurationInput,
        output_schema = schemas.PutTableRecordExpirationConfigurationOutput,
        http_method = "PUT",
        http_path = "/table-record-expiration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putTableReplication(input, options)
    return self:invokeOperation(input, {
        name = "PutTableReplication",
        input_schema = schemas.PutTableReplicationInput,
        output_schema = schemas.PutTableReplicationOutput,
        http_method = "PUT",
        http_path = "/table-replication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:renameTable(input, options)
    return self:invokeOperation(input, {
        name = "RenameTable",
        input_schema = schemas.RenameTableInput,
        output_schema = schemas.RenameTableOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/rename",
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
        http_path = "/tag/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/tag/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTableMetadataLocation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTableMetadataLocation",
        input_schema = schemas.UpdateTableMetadataLocationInput,
        output_schema = schemas.UpdateTableMetadataLocationOutput,
        http_method = "PUT",
        http_path = "/tables/{tableBucketARN}/{namespace}/{name}/metadata-location",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
