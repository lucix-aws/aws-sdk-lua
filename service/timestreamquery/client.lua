



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("timestreamquery.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("timestreamquery.schemas")
local traits = require("smithy.traits")
local types = require("timestreamquery.types")
local sdk_defaults = require("aws.sdk_defaults")





















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Timestream_20181101"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "timestream", signing_region = c.region } }
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

function C:cancelQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelQuery, input, options)
end

function C:createScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateScheduledQuery, input, options)
end

function C:deleteScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteScheduledQuery, input, options)
end

function C:describeAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountSettings, input, options)
end

function C:describeEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoints, input, options)
end

function C:describeScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeScheduledQuery, input, options)
end

function C:executeScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteScheduledQuery, input, options)
end

function C:listScheduledQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListScheduledQueries, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:prepareQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.PrepareQuery, input, options)
end

function C:query(input, options)
   return self:invokeOperation(schemas.Service, schemas.Query, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccountSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccountSettings, input, options)
end

function C:updateScheduledQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateScheduledQuery, input, options)
end

return M
