



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotthingsgraph.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("iotthingsgraph.schemas")
local traits = require("smithy.traits")
local types = require("iotthingsgraph.types")
local sdk_defaults = require("aws.sdk_defaults")









































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "IotThingsGraphFrontEndService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotthingsgraph", signing_region = c.region } }
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

function C:associateEntityToThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateEntityToThing, input, options)
end

function C:createFlowTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlowTemplate, input, options)
end

function C:createSystemInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSystemInstance, input, options)
end

function C:createSystemTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSystemTemplate, input, options)
end

function C:deleteFlowTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlowTemplate, input, options)
end

function C:deleteNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNamespace, input, options)
end

function C:deleteSystemInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSystemInstance, input, options)
end

function C:deleteSystemTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSystemTemplate, input, options)
end

function C:deploySystemInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeploySystemInstance, input, options)
end

function C:deprecateFlowTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprecateFlowTemplate, input, options)
end

function C:deprecateSystemTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeprecateSystemTemplate, input, options)
end

function C:describeNamespace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNamespace, input, options)
end

function C:dissociateEntityFromThing(input, options)
   return self:invokeOperation(schemas.Service, schemas.DissociateEntityFromThing, input, options)
end

function C:getEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEntities, input, options)
end

function C:getFlowTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowTemplate, input, options)
end

function C:getFlowTemplateRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFlowTemplateRevisions, input, options)
end

function C:getNamespaceDeletionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNamespaceDeletionStatus, input, options)
end

function C:getSystemInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSystemInstance, input, options)
end

function C:getSystemTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSystemTemplate, input, options)
end

function C:getSystemTemplateRevisions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSystemTemplateRevisions, input, options)
end

function C:getUploadStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUploadStatus, input, options)
end

function C:listFlowExecutionMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowExecutionMessages, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:searchEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchEntities, input, options)
end

function C:searchFlowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFlowExecutions, input, options)
end

function C:searchFlowTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchFlowTemplates, input, options)
end

function C:searchSystemInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSystemInstances, input, options)
end

function C:searchSystemTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSystemTemplates, input, options)
end

function C:searchThings(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchThings, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:undeploySystemInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UndeploySystemInstance, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateFlowTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFlowTemplate, input, options)
end

function C:updateSystemTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSystemTemplate, input, options)
end

function C:uploadEntityDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.UploadEntityDefinitions, input, options)
end

return M
