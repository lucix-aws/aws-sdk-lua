



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("novaact.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("novaact.schemas")
local traits = require("smithy.traits")
local types = require("novaact.types")
local sdk_defaults = require("aws.sdk_defaults")






















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonNovaAgentsDataPlane"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "nova-act", signing_region = c.region } }
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

function C:createAct(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAct, input, options)
end

function C:createSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSession, input, options)
end

function C:createWorkflowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflowDefinition, input, options)
end

function C:createWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflowRun, input, options)
end

function C:deleteWorkflowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflowDefinition, input, options)
end

function C:deleteWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflowRun, input, options)
end

function C:getWorkflowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowDefinition, input, options)
end

function C:getWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowRun, input, options)
end

function C:invokeActStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeActStep, input, options)
end

function C:listActs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActs, input, options)
end

function C:listModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModels, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listWorkflowDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowDefinitions, input, options)
end

function C:listWorkflowRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowRuns, input, options)
end

function C:updateAct(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAct, input, options)
end

function C:updateWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflowRun, input, options)
end

return M
