



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("datapipeline.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("datapipeline.schemas")
local traits = require("smithy.traits")
local types = require("datapipeline.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DataPipeline"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "datapipeline", signing_region = c.region } }
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

function C:activatePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.ActivatePipeline, input, options)
end

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:createPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePipeline, input, options)
end

function C:deactivatePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeactivatePipeline, input, options)
end

function C:deletePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePipeline, input, options)
end

function C:describeObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeObjects, input, options)
end

function C:describePipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePipelines, input, options)
end

function C:evaluateExpression(input, options)
   return self:invokeOperation(schemas.Service, schemas.EvaluateExpression, input, options)
end

function C:getPipelineDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPipelineDefinition, input, options)
end

function C:listPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelines, input, options)
end

function C:pollForTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.PollForTask, input, options)
end

function C:putPipelineDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPipelineDefinition, input, options)
end

function C:queryObjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.QueryObjects, input, options)
end

function C:removeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveTags, input, options)
end

function C:reportTaskProgress(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReportTaskProgress, input, options)
end

function C:reportTaskRunnerHeartbeat(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReportTaskRunnerHeartbeat, input, options)
end

function C:setStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetStatus, input, options)
end

function C:setTaskStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTaskStatus, input, options)
end

function C:validatePipelineDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidatePipelineDefinition, input, options)
end

return M
