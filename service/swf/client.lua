



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("swf.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("swf.schemas")
local traits = require("smithy.traits")
local types = require("swf.types")
local sdk_defaults = require("aws.sdk_defaults")













































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SimpleWorkflowService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "swf", signing_region = c.region } }
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

function C:countClosedWorkflowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CountClosedWorkflowExecutions, input, options)
end

function C:countOpenWorkflowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.CountOpenWorkflowExecutions, input, options)
end

function C:countPendingActivityTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.CountPendingActivityTasks, input, options)
end

function C:countPendingDecisionTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.CountPendingDecisionTasks, input, options)
end

function C:deleteActivityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteActivityType, input, options)
end

function C:deleteWorkflowType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflowType, input, options)
end

function C:deprecateActivityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprecateActivityType, input, options)
end

function C:deprecateDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprecateDomain, input, options)
end

function C:deprecateWorkflowType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprecateWorkflowType, input, options)
end

function C:describeActivityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActivityType, input, options)
end

function C:describeDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomain, input, options)
end

function C:describeWorkflowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkflowExecution, input, options)
end

function C:describeWorkflowType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkflowType, input, options)
end

function C:getWorkflowExecutionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowExecutionHistory, input, options)
end

function C:listActivityTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActivityTypes, input, options)
end

function C:listClosedWorkflowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClosedWorkflowExecutions, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listOpenWorkflowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpenWorkflowExecutions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkflowTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowTypes, input, options)
end

function C:pollForActivityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.PollForActivityTask, input, options)
end

function C:pollForDecisionTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.PollForDecisionTask, input, options)
end

function C:recordActivityTaskHeartbeat(input, options)
   return self:invokeOperation(schemas.Service, schemas.RecordActivityTaskHeartbeat, input, options)
end

function C:registerActivityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterActivityType, input, options)
end

function C:registerDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDomain, input, options)
end

function C:registerWorkflowType(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterWorkflowType, input, options)
end

function C:requestCancelWorkflowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestCancelWorkflowExecution, input, options)
end

function C:respondActivityTaskCanceled(input, options)
   return self:invokeOperation(schemas.Service, schemas.RespondActivityTaskCanceled, input, options)
end

function C:respondActivityTaskCompleted(input, options)
   return self:invokeOperation(schemas.Service, schemas.RespondActivityTaskCompleted, input, options)
end

function C:respondActivityTaskFailed(input, options)
   return self:invokeOperation(schemas.Service, schemas.RespondActivityTaskFailed, input, options)
end

function C:respondDecisionTaskCompleted(input, options)
   return self:invokeOperation(schemas.Service, schemas.RespondDecisionTaskCompleted, input, options)
end

function C:signalWorkflowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.SignalWorkflowExecution, input, options)
end

function C:startWorkflowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWorkflowExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateWorkflowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateWorkflowExecution, input, options)
end

function C:undeprecateActivityType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UndeprecateActivityType, input, options)
end

function C:undeprecateDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UndeprecateDomain, input, options)
end

function C:undeprecateWorkflowType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UndeprecateWorkflowType, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
