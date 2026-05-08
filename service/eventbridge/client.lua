



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("eventbridge.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("eventbridge.schemas")
local traits = require("smithy.traits")
local types = require("eventbridge.types")
local sdk_defaults = require("aws.sdk_defaults")
local endpoint_auth_resolver = require("smithy.auth.endpoint_auth_resolver")































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSEvents"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "events", signing_region = c.region } }
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
   c.auth_scheme_resolver = endpoint_auth_resolver.new(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:activateEventSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivateEventSource, input, options)
end

function C:cancelReplay(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelReplay, input, options)
end

function C:createApiDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApiDestination, input, options)
end

function C:createArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateArchive, input, options)
end

function C:createConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnection, input, options)
end

function C:createEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpoint, input, options)
end

function C:createEventBus(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEventBus, input, options)
end

function C:createPartnerEventSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartnerEventSource, input, options)
end

function C:deactivateEventSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivateEventSource, input, options)
end

function C:deauthorizeConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeauthorizeConnection, input, options)
end

function C:deleteApiDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApiDestination, input, options)
end

function C:deleteArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteArchive, input, options)
end

function C:deleteConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnection, input, options)
end

function C:deleteEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpoint, input, options)
end

function C:deleteEventBus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEventBus, input, options)
end

function C:deletePartnerEventSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePartnerEventSource, input, options)
end

function C:deleteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRule, input, options)
end

function C:describeApiDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApiDestination, input, options)
end

function C:describeArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeArchive, input, options)
end

function C:describeConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnection, input, options)
end

function C:describeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoint, input, options)
end

function C:describeEventBus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventBus, input, options)
end

function C:describeEventSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEventSource, input, options)
end

function C:describePartnerEventSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePartnerEventSource, input, options)
end

function C:describeReplay(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReplay, input, options)
end

function C:describeRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRule, input, options)
end

function C:disableRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableRule, input, options)
end

function C:enableRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableRule, input, options)
end

function C:listApiDestinations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApiDestinations, input, options)
end

function C:listArchives(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArchives, input, options)
end

function C:listConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnections, input, options)
end

function C:listEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpoints, input, options)
end

function C:listEventBuses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventBuses, input, options)
end

function C:listEventSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventSources, input, options)
end

function C:listPartnerEventSourceAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPartnerEventSourceAccounts, input, options)
end

function C:listPartnerEventSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPartnerEventSources, input, options)
end

function C:listReplays(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReplays, input, options)
end

function C:listRuleNamesByTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleNamesByTarget, input, options)
end

function C:listRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRules, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTargetsByRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTargetsByRule, input, options)
end

function C:putEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutEvents, input, options)
end

function C:putPartnerEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPartnerEvents, input, options)
end

function C:putPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPermission, input, options)
end

function C:putRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRule, input, options)
end

function C:putTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutTargets, input, options)
end

function C:removePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemovePermission, input, options)
end

function C:removeTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTargets, input, options)
end

function C:startReplay(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartReplay, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testEventPattern(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestEventPattern, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApiDestination(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApiDestination, input, options)
end

function C:updateArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateArchive, input, options)
end

function C:updateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnection, input, options)
end

function C:updateEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpoint, input, options)
end

function C:updateEventBus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEventBus, input, options)
end

return M
