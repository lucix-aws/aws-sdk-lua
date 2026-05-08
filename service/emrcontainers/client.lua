



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("emrcontainers.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("emrcontainers.schemas")
local traits = require("smithy.traits")
local types = require("emrcontainers.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AwsChicagoWebService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "emr-containers", signing_region = c.region } }
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

function C:cancelJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelJobRun, input, options)
end

function C:createJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJobTemplate, input, options)
end

function C:createManagedEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateManagedEndpoint, input, options)
end

function C:createSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSecurityConfiguration, input, options)
end

function C:createVirtualCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVirtualCluster, input, options)
end

function C:deleteJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJobTemplate, input, options)
end

function C:deleteManagedEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteManagedEndpoint, input, options)
end

function C:deleteVirtualCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVirtualCluster, input, options)
end

function C:describeJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobRun, input, options)
end

function C:describeJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobTemplate, input, options)
end

function C:describeManagedEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeManagedEndpoint, input, options)
end

function C:describeSecurityConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityConfiguration, input, options)
end

function C:describeVirtualCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeVirtualCluster, input, options)
end

function C:getManagedEndpointSessionCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetManagedEndpointSessionCredentials, input, options)
end

function C:listJobRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobRuns, input, options)
end

function C:listJobTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobTemplates, input, options)
end

function C:listManagedEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedEndpoints, input, options)
end

function C:listSecurityConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityConfigurations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listVirtualClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVirtualClusters, input, options)
end

function C:startJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJobRun, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
