



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("health.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("health.schemas")
local traits = require("smithy.traits")
local types = require("health.types")
local sdk_defaults = require("aws.sdk_defaults")




















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSHealth_20160804"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "health", signing_region = c.region } }
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

function C:describeAffectedAccountsForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAffectedAccountsForOrganization, input, options)
end

function C:describeAffectedEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAffectedEntities, input, options)
end

function C:describeAffectedEntitiesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAffectedEntitiesForOrganization, input, options)
end

function C:describeEntityAggregates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntityAggregates, input, options)
end

function C:describeEntityAggregatesForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEntityAggregatesForOrganization, input, options)
end

function C:describeEventAggregates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventAggregates, input, options)
end

function C:describeEventDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventDetails, input, options)
end

function C:describeEventDetailsForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventDetailsForOrganization, input, options)
end

function C:describeEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEvents, input, options)
end

function C:describeEventsForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventsForOrganization, input, options)
end

function C:describeEventTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventTypes, input, options)
end

function C:describeHealthServiceStatusForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHealthServiceStatusForOrganization, input, options)
end

function C:disableHealthServiceAccessForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableHealthServiceAccessForOrganization, input, options)
end

function C:enableHealthServiceAccessForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableHealthServiceAccessForOrganization, input, options)
end

return M
