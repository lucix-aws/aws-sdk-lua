



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("m2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("m2.schemas")
local traits = require("smithy.traits")
local types = require("m2.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AwsSupernovaControlPlaneService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "m2", signing_region = c.region } }
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

function C:cancelBatchJobExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelBatchJobExecution, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createDataSetExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSetExportTask, input, options)
end

function C:createDataSetImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataSetImportTask, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:createEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEnvironment, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteApplicationFromEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplicationFromEnvironment, input, options)
end

function C:deleteEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEnvironment, input, options)
end

function C:getApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplication, input, options)
end

function C:getApplicationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApplicationVersion, input, options)
end

function C:getBatchJobExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBatchJobExecution, input, options)
end

function C:getDataSetDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSetDetails, input, options)
end

function C:getDataSetExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSetExportTask, input, options)
end

function C:getDataSetImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataSetImportTask, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEnvironment, input, options)
end

function C:getSignedBluinsightsUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSignedBluinsightsUrl, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listApplicationVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationVersions, input, options)
end

function C:listBatchJobDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatchJobDefinitions, input, options)
end

function C:listBatchJobExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatchJobExecutions, input, options)
end

function C:listBatchJobRestartPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBatchJobRestartPoints, input, options)
end

function C:listDataSetExportHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSetExportHistory, input, options)
end

function C:listDataSetImportHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSetImportHistory, input, options)
end

function C:listDataSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataSets, input, options)
end

function C:listDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeployments, input, options)
end

function C:listEngineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngineVersions, input, options)
end

function C:listEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEnvironments, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartApplication, input, options)
end

function C:startBatchJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBatchJob, input, options)
end

function C:stopApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopApplication, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEnvironment, input, options)
end

return M
