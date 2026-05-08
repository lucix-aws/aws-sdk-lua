



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("glacier.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("glacier.schemas")
local traits = require("smithy.traits")
local types = require("glacier.types")
local sdk_defaults = require("aws.sdk_defaults")







































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Glacier"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "glacier", signing_region = c.region } }
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

function C:abortMultipartUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.AbortMultipartUpload, input, options)
end

function C:abortVaultLock(input, options)
   return self:invokeOperation(schemas.Service, schemas.AbortVaultLock, input, options)
end

function C:addTagsToVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTagsToVault, input, options)
end

function C:completeMultipartUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteMultipartUpload, input, options)
end

function C:completeVaultLock(input, options)
   return self:invokeOperation(schemas.Service, schemas.CompleteVaultLock, input, options)
end

function C:createVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVault, input, options)
end

function C:deleteArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteArchive, input, options)
end

function C:deleteVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVault, input, options)
end

function C:deleteVaultAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVaultAccessPolicy, input, options)
end

function C:deleteVaultNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVaultNotifications, input, options)
end

function C:describeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJob, input, options)
end

function C:describeVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVault, input, options)
end

function C:getDataRetrievalPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataRetrievalPolicy, input, options)
end

function C:getJobOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobOutput, input, options)
end

function C:getVaultAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVaultAccessPolicy, input, options)
end

function C:getVaultLock(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVaultLock, input, options)
end

function C:getVaultNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVaultNotifications, input, options)
end

function C:initiateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateJob, input, options)
end

function C:initiateMultipartUpload(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateMultipartUpload, input, options)
end

function C:initiateVaultLock(input, options)
   return self:invokeOperation(schemas.Service, schemas.InitiateVaultLock, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listMultipartUploads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMultipartUploads, input, options)
end

function C:listParts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParts, input, options)
end

function C:listProvisionedCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisionedCapacity, input, options)
end

function C:listTagsForVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForVault, input, options)
end

function C:listVaults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVaults, input, options)
end

function C:purchaseProvisionedCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurchaseProvisionedCapacity, input, options)
end

function C:removeTagsFromVault(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTagsFromVault, input, options)
end

function C:setDataRetrievalPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetDataRetrievalPolicy, input, options)
end

function C:setVaultAccessPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetVaultAccessPolicy, input, options)
end

function C:setVaultNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetVaultNotifications, input, options)
end

function C:uploadArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadArchive, input, options)
end

function C:uploadMultipartPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadMultipartPart, input, options)
end

return M
