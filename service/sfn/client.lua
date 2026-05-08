



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sfn.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("sfn.schemas")
local traits = require("smithy.traits")
local types = require("sfn.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSStepFunctions"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "states", signing_region = c.region } }
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

function C:createActivity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateActivity, input, options)
end

function C:createStateMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStateMachine, input, options)
end

function C:createStateMachineAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStateMachineAlias, input, options)
end

function C:deleteActivity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteActivity, input, options)
end

function C:deleteStateMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStateMachine, input, options)
end

function C:deleteStateMachineAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStateMachineAlias, input, options)
end

function C:deleteStateMachineVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStateMachineVersion, input, options)
end

function C:describeActivity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeActivity, input, options)
end

function C:describeExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExecution, input, options)
end

function C:describeMapRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMapRun, input, options)
end

function C:describeStateMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStateMachine, input, options)
end

function C:describeStateMachineAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStateMachineAlias, input, options)
end

function C:describeStateMachineForExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStateMachineForExecution, input, options)
end

function C:getActivityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetActivityTask, input, options)
end

function C:getExecutionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExecutionHistory, input, options)
end

function C:listActivities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActivities, input, options)
end

function C:listExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExecutions, input, options)
end

function C:listMapRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMapRuns, input, options)
end

function C:listStateMachineAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStateMachineAliases, input, options)
end

function C:listStateMachines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStateMachines, input, options)
end

function C:listStateMachineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStateMachineVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:publishStateMachineVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishStateMachineVersion, input, options)
end

function C:redriveExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.RedriveExecution, input, options)
end

function C:sendTaskFailure(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendTaskFailure, input, options)
end

function C:sendTaskHeartbeat(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendTaskHeartbeat, input, options)
end

function C:sendTaskSuccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendTaskSuccess, input, options)
end

function C:startExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExecution, input, options)
end

function C:startSyncExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSyncExecution, input, options)
end

function C:stopExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testState(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestState, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateMapRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMapRun, input, options)
end

function C:updateStateMachine(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStateMachine, input, options)
end

function C:updateStateMachineAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStateMachineAlias, input, options)
end

function C:validateStateMachineDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateStateMachineDefinition, input, options)
end

return M
