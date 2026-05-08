



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("migrationhuborchestrator.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("migrationhuborchestrator.schemas")
local traits = require("smithy.traits")
local types = require("migrationhuborchestrator.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSMigrationHubOrchestrator"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "migrationhub-orchestrator", signing_region = c.region } }
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

function C:createTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplate, input, options)
end

function C:createWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflow, input, options)
end

function C:createWorkflowStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflowStep, input, options)
end

function C:createWorkflowStepGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflowStepGroup, input, options)
end

function C:deleteTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplate, input, options)
end

function C:deleteWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflow, input, options)
end

function C:deleteWorkflowStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflowStep, input, options)
end

function C:deleteWorkflowStepGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflowStepGroup, input, options)
end

function C:getTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplate, input, options)
end

function C:getTemplateStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplateStep, input, options)
end

function C:getTemplateStepGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTemplateStepGroup, input, options)
end

function C:getWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflow, input, options)
end

function C:getWorkflowStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowStep, input, options)
end

function C:getWorkflowStepGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowStepGroup, input, options)
end

function C:listPlugins(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPlugins, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplates, input, options)
end

function C:listTemplateStepGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateStepGroups, input, options)
end

function C:listTemplateSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateSteps, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:listWorkflowStepGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowStepGroups, input, options)
end

function C:listWorkflowSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowSteps, input, options)
end

function C:retryWorkflowStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryWorkflowStep, input, options)
end

function C:startWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWorkflow, input, options)
end

function C:stopWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopWorkflow, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTemplate, input, options)
end

function C:updateWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflow, input, options)
end

function C:updateWorkflowStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflowStep, input, options)
end

function C:updateWorkflowStepGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkflowStepGroup, input, options)
end

return M
