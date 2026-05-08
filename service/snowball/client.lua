



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("snowball.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("snowball.schemas")
local traits = require("smithy.traits")
local types = require("snowball.types")
local sdk_defaults = require("aws.sdk_defaults")

































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSIESnowballJobManagementService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "snowball", signing_region = c.region } }
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

function C:cancelCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCluster, input, options)
end

function C:cancelJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJob, input, options)
end

function C:createAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAddress, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createLongTermPricing(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLongTermPricing, input, options)
end

function C:createReturnShippingLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReturnShippingLabel, input, options)
end

function C:describeAddress(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddress, input, options)
end

function C:describeAddresses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAddresses, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJob, input, options)
end

function C:describeReturnShippingLabel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReturnShippingLabel, input, options)
end

function C:getJobManifest(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobManifest, input, options)
end

function C:getJobUnlockCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJobUnlockCode, input, options)
end

function C:getSnowballUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSnowballUsage, input, options)
end

function C:getSoftwareUpdates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSoftwareUpdates, input, options)
end

function C:listClusterJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterJobs, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listCompatibleImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCompatibleImages, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listLongTermPricing(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLongTermPricing, input, options)
end

function C:listPickupLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPickupLocations, input, options)
end

function C:listServiceVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceVersions, input, options)
end

function C:updateCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCluster, input, options)
end

function C:updateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJob, input, options)
end

function C:updateJobShipmentState(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJobShipmentState, input, options)
end

function C:updateLongTermPricing(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLongTermPricing, input, options)
end

return M
