



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("kinesisanalytics.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("kinesisanalytics.schemas")
local traits = require("smithy.traits")
local types = require("kinesisanalytics.types")
local sdk_defaults = require("aws.sdk_defaults")


























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "KinesisAnalytics_20150814"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "kinesisanalytics", signing_region = c.region } }
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

function C:addApplicationCloudWatchLoggingOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddApplicationCloudWatchLoggingOption, input, options)
end

function C:addApplicationInput(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddApplicationInput, input, options)
end

function C:addApplicationInputProcessingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddApplicationInputProcessingConfiguration, input, options)
end

function C:addApplicationOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddApplicationOutput, input, options)
end

function C:addApplicationReferenceDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddApplicationReferenceDataSource, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteApplicationCloudWatchLoggingOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationCloudWatchLoggingOption, input, options)
end

function C:deleteApplicationInputProcessingConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationInputProcessingConfiguration, input, options)
end

function C:deleteApplicationOutput(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationOutput, input, options)
end

function C:deleteApplicationReferenceDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationReferenceDataSource, input, options)
end

function C:describeApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplication, input, options)
end

function C:discoverInputSchema(input, options)
   return self:invokeOperation(schemas.Service, schemas.DiscoverInputSchema, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartApplication, input, options)
end

function C:stopApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopApplication, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

return M
