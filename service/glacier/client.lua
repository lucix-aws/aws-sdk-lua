local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("glacier.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("glacier.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Glacier"
    cfg.signing_name = "glacier"
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

function Client:abortMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "AbortMultipartUpload",
        input_schema = types.AbortMultipartUploadInput,
        output_schema = types.AbortMultipartUploadOutput,
        http_method = "DELETE",
        http_path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
    }, options)
end

function Client:abortVaultLock(input, options)
    return self:invokeOperation(input, {
        name = "AbortVaultLock",
        input_schema = types.AbortVaultLockInput,
        output_schema = types.AbortVaultLockOutput,
        http_method = "DELETE",
        http_path = "/{accountId}/vaults/{vaultName}/lock-policy",
    }, options)
end

function Client:addTagsToVault(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToVault",
        input_schema = types.AddTagsToVaultInput,
        output_schema = types.AddTagsToVaultOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/tags?operation=add",
    }, options)
end

function Client:completeMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteMultipartUpload",
        input_schema = types.CompleteMultipartUploadInput,
        output_schema = types.CompleteMultipartUploadOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
    }, options)
end

function Client:completeVaultLock(input, options)
    return self:invokeOperation(input, {
        name = "CompleteVaultLock",
        input_schema = types.CompleteVaultLockInput,
        output_schema = types.CompleteVaultLockOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/lock-policy/{lockId}",
    }, options)
end

function Client:createVault(input, options)
    return self:invokeOperation(input, {
        name = "CreateVault",
        input_schema = types.CreateVaultInput,
        output_schema = types.CreateVaultOutput,
        http_method = "PUT",
        http_path = "/{accountId}/vaults/{vaultName}",
    }, options)
end

function Client:deleteArchive(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArchive",
        input_schema = types.DeleteArchiveInput,
        output_schema = types.DeleteArchiveOutput,
        http_method = "DELETE",
        http_path = "/{accountId}/vaults/{vaultName}/archives/{archiveId}",
    }, options)
end

function Client:deleteVault(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVault",
        input_schema = types.DeleteVaultInput,
        output_schema = types.DeleteVaultOutput,
        http_method = "DELETE",
        http_path = "/{accountId}/vaults/{vaultName}",
    }, options)
end

function Client:deleteVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVaultAccessPolicy",
        input_schema = types.DeleteVaultAccessPolicyInput,
        output_schema = types.DeleteVaultAccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/{accountId}/vaults/{vaultName}/access-policy",
    }, options)
end

function Client:deleteVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVaultNotifications",
        input_schema = types.DeleteVaultNotificationsInput,
        output_schema = types.DeleteVaultNotificationsOutput,
        http_method = "DELETE",
        http_path = "/{accountId}/vaults/{vaultName}/notification-configuration",
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = types.DescribeJobInput,
        output_schema = types.DescribeJobOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/jobs/{jobId}",
    }, options)
end

function Client:describeVault(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVault",
        input_schema = types.DescribeVaultInput,
        output_schema = types.DescribeVaultOperationOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}",
    }, options)
end

function Client:getDataRetrievalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetDataRetrievalPolicy",
        input_schema = types.GetDataRetrievalPolicyInput,
        output_schema = types.GetDataRetrievalPolicyOutput,
        http_method = "GET",
        http_path = "/{accountId}/policies/data-retrieval",
    }, options)
end

function Client:getJobOutput(input, options)
    return self:invokeOperation(input, {
        name = "GetJobOutput",
        input_schema = types.GetJobOutputInput,
        output_schema = types.GetJobOutputOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/jobs/{jobId}/output",
    }, options)
end

function Client:getVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetVaultAccessPolicy",
        input_schema = types.GetVaultAccessPolicyInput,
        output_schema = types.GetVaultAccessPolicyOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/access-policy",
    }, options)
end

function Client:getVaultLock(input, options)
    return self:invokeOperation(input, {
        name = "GetVaultLock",
        input_schema = types.GetVaultLockInput,
        output_schema = types.GetVaultLockOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/lock-policy",
    }, options)
end

function Client:getVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "GetVaultNotifications",
        input_schema = types.GetVaultNotificationsInput,
        output_schema = types.GetVaultNotificationsOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/notification-configuration",
    }, options)
end

function Client:initiateJob(input, options)
    return self:invokeOperation(input, {
        name = "InitiateJob",
        input_schema = types.InitiateJobInput,
        output_schema = types.InitiateJobOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/jobs",
    }, options)
end

function Client:initiateMultipartUpload(input, options)
    return self:invokeOperation(input, {
        name = "InitiateMultipartUpload",
        input_schema = types.InitiateMultipartUploadInput,
        output_schema = types.InitiateMultipartUploadOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/multipart-uploads",
    }, options)
end

function Client:initiateVaultLock(input, options)
    return self:invokeOperation(input, {
        name = "InitiateVaultLock",
        input_schema = types.InitiateVaultLockInput,
        output_schema = types.InitiateVaultLockOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/lock-policy",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/jobs",
    }, options)
end

function Client:listMultipartUploads(input, options)
    return self:invokeOperation(input, {
        name = "ListMultipartUploads",
        input_schema = types.ListMultipartUploadsInput,
        output_schema = types.ListMultipartUploadsOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/multipart-uploads",
    }, options)
end

function Client:listParts(input, options)
    return self:invokeOperation(input, {
        name = "ListParts",
        input_schema = types.ListPartsInput,
        output_schema = types.ListPartsOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
    }, options)
end

function Client:listProvisionedCapacity(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisionedCapacity",
        input_schema = types.ListProvisionedCapacityInput,
        output_schema = types.ListProvisionedCapacityOutput,
        http_method = "GET",
        http_path = "/{accountId}/provisioned-capacity",
    }, options)
end

function Client:listTagsForVault(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForVault",
        input_schema = types.ListTagsForVaultInput,
        output_schema = types.ListTagsForVaultOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults/{vaultName}/tags",
    }, options)
end

function Client:listVaults(input, options)
    return self:invokeOperation(input, {
        name = "ListVaults",
        input_schema = types.ListVaultsInput,
        output_schema = types.ListVaultsOutput,
        http_method = "GET",
        http_path = "/{accountId}/vaults",
    }, options)
end

function Client:purchaseProvisionedCapacity(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseProvisionedCapacity",
        input_schema = types.PurchaseProvisionedCapacityInput,
        output_schema = types.PurchaseProvisionedCapacityOutput,
        http_method = "POST",
        http_path = "/{accountId}/provisioned-capacity",
    }, options)
end

function Client:removeTagsFromVault(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromVault",
        input_schema = types.RemoveTagsFromVaultInput,
        output_schema = types.RemoveTagsFromVaultOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/tags?operation=remove",
    }, options)
end

function Client:setDataRetrievalPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SetDataRetrievalPolicy",
        input_schema = types.SetDataRetrievalPolicyInput,
        output_schema = types.SetDataRetrievalPolicyOutput,
        http_method = "PUT",
        http_path = "/{accountId}/policies/data-retrieval",
    }, options)
end

function Client:setVaultAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "SetVaultAccessPolicy",
        input_schema = types.SetVaultAccessPolicyInput,
        output_schema = types.SetVaultAccessPolicyOutput,
        http_method = "PUT",
        http_path = "/{accountId}/vaults/{vaultName}/access-policy",
    }, options)
end

function Client:setVaultNotifications(input, options)
    return self:invokeOperation(input, {
        name = "SetVaultNotifications",
        input_schema = types.SetVaultNotificationsInput,
        output_schema = types.SetVaultNotificationsOutput,
        http_method = "PUT",
        http_path = "/{accountId}/vaults/{vaultName}/notification-configuration",
    }, options)
end

function Client:uploadArchive(input, options)
    return self:invokeOperation(input, {
        name = "UploadArchive",
        input_schema = types.UploadArchiveInput,
        output_schema = types.UploadArchiveOutput,
        http_method = "POST",
        http_path = "/{accountId}/vaults/{vaultName}/archives",
    }, options)
end

function Client:uploadMultipartPart(input, options)
    return self:invokeOperation(input, {
        name = "UploadMultipartPart",
        input_schema = types.UploadMultipartPartInput,
        output_schema = types.UploadMultipartPartOutput,
        http_method = "PUT",
        http_path = "/{accountId}/vaults/{vaultName}/multipart-uploads/{uploadId}",
    }, options)
end

return M
