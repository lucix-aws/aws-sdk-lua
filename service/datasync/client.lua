



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("datasync.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("datasync.schemas")
local traits = require("smithy.traits")
local types = require("datasync.types")
local sdk_defaults = require("aws.sdk_defaults")



























































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "FmrsService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "datasync", signing_region = c.region } }
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

function C:cancelTaskExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelTaskExecution, input, options)
end

function C:createAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgent, input, options)
end

function C:createLocationAzureBlob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationAzureBlob, input, options)
end

function C:createLocationEfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationEfs, input, options)
end

function C:createLocationFsxLustre(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationFsxLustre, input, options)
end

function C:createLocationFsxOntap(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationFsxOntap, input, options)
end

function C:createLocationFsxOpenZfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationFsxOpenZfs, input, options)
end

function C:createLocationFsxWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationFsxWindows, input, options)
end

function C:createLocationHdfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationHdfs, input, options)
end

function C:createLocationNfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationNfs, input, options)
end

function C:createLocationObjectStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationObjectStorage, input, options)
end

function C:createLocationS3(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationS3, input, options)
end

function C:createLocationSmb(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLocationSmb, input, options)
end

function C:createTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTask, input, options)
end

function C:deleteAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgent, input, options)
end

function C:deleteLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLocation, input, options)
end

function C:deleteTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTask, input, options)
end

function C:describeAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAgent, input, options)
end

function C:describeLocationAzureBlob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationAzureBlob, input, options)
end

function C:describeLocationEfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationEfs, input, options)
end

function C:describeLocationFsxLustre(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationFsxLustre, input, options)
end

function C:describeLocationFsxOntap(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationFsxOntap, input, options)
end

function C:describeLocationFsxOpenZfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationFsxOpenZfs, input, options)
end

function C:describeLocationFsxWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationFsxWindows, input, options)
end

function C:describeLocationHdfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationHdfs, input, options)
end

function C:describeLocationNfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationNfs, input, options)
end

function C:describeLocationObjectStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationObjectStorage, input, options)
end

function C:describeLocationS3(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationS3, input, options)
end

function C:describeLocationSmb(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLocationSmb, input, options)
end

function C:describeTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTask, input, options)
end

function C:describeTaskExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTaskExecution, input, options)
end

function C:listAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgents, input, options)
end

function C:listLocations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLocations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTaskExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTaskExecutions, input, options)
end

function C:listTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTasks, input, options)
end

function C:startTaskExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTaskExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgent, input, options)
end

function C:updateLocationAzureBlob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationAzureBlob, input, options)
end

function C:updateLocationEfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationEfs, input, options)
end

function C:updateLocationFsxLustre(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationFsxLustre, input, options)
end

function C:updateLocationFsxOntap(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationFsxOntap, input, options)
end

function C:updateLocationFsxOpenZfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationFsxOpenZfs, input, options)
end

function C:updateLocationFsxWindows(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationFsxWindows, input, options)
end

function C:updateLocationHdfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationHdfs, input, options)
end

function C:updateLocationNfs(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationNfs, input, options)
end

function C:updateLocationObjectStorage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationObjectStorage, input, options)
end

function C:updateLocationS3(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationS3, input, options)
end

function C:updateLocationSmb(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLocationSmb, input, options)
end

function C:updateTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTask, input, options)
end

function C:updateTaskExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTaskExecution, input, options)
end

return M
