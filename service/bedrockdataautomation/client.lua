



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bedrockdataautomation.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("bedrockdataautomation.schemas")
local traits = require("smithy.traits")
local types = require("bedrockdataautomation.types")
local sdk_defaults = require("aws.sdk_defaults")

































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonBedrockKeystoneBuildTimeService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock", signing_region = c.region } }
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

function C:copyBlueprintStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyBlueprintStage, input, options)
end

function C:createBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBlueprint, input, options)
end

function C:createBlueprintVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBlueprintVersion, input, options)
end

function C:createDataAutomationLibrary(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataAutomationLibrary, input, options)
end

function C:createDataAutomationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataAutomationProject, input, options)
end

function C:deleteBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBlueprint, input, options)
end

function C:deleteDataAutomationLibrary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataAutomationLibrary, input, options)
end

function C:deleteDataAutomationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataAutomationProject, input, options)
end

function C:getBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlueprint, input, options)
end

function C:getBlueprintOptimizationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBlueprintOptimizationStatus, input, options)
end

function C:getDataAutomationLibrary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataAutomationLibrary, input, options)
end

function C:getDataAutomationLibraryEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataAutomationLibraryEntity, input, options)
end

function C:getDataAutomationLibraryIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataAutomationLibraryIngestionJob, input, options)
end

function C:getDataAutomationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataAutomationProject, input, options)
end

function C:invokeBlueprintOptimizationAsync(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeBlueprintOptimizationAsync, input, options)
end

function C:invokeDataAutomationLibraryIngestionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvokeDataAutomationLibraryIngestionJob, input, options)
end

function C:listBlueprints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBlueprints, input, options)
end

function C:listDataAutomationLibraries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataAutomationLibraries, input, options)
end

function C:listDataAutomationLibraryEntities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataAutomationLibraryEntities, input, options)
end

function C:listDataAutomationLibraryIngestionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataAutomationLibraryIngestionJobs, input, options)
end

function C:listDataAutomationProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataAutomationProjects, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBlueprint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBlueprint, input, options)
end

function C:updateDataAutomationLibrary(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataAutomationLibrary, input, options)
end

function C:updateDataAutomationProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataAutomationProject, input, options)
end

return M
