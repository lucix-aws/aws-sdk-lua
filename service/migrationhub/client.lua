



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("migrationhub.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("migrationhub.schemas")
local traits = require("smithy.traits")
local types = require("migrationhub.types")
local sdk_defaults = require("aws.sdk_defaults")



























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSMigrationHub"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mgh", signing_region = c.region } }
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

function C:associateCreatedArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateCreatedArtifact, input, options)
end

function C:associateDiscoveredResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateDiscoveredResource, input, options)
end

function C:associateSourceResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateSourceResource, input, options)
end

function C:createProgressUpdateStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProgressUpdateStream, input, options)
end

function C:deleteProgressUpdateStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProgressUpdateStream, input, options)
end

function C:describeApplicationState(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationState, input, options)
end

function C:describeMigrationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMigrationTask, input, options)
end

function C:disassociateCreatedArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateCreatedArtifact, input, options)
end

function C:disassociateDiscoveredResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateDiscoveredResource, input, options)
end

function C:disassociateSourceResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateSourceResource, input, options)
end

function C:importMigrationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportMigrationTask, input, options)
end

function C:listApplicationStates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationStates, input, options)
end

function C:listCreatedArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCreatedArtifacts, input, options)
end

function C:listDiscoveredResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDiscoveredResources, input, options)
end

function C:listMigrationTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMigrationTasks, input, options)
end

function C:listMigrationTaskUpdates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMigrationTaskUpdates, input, options)
end

function C:listProgressUpdateStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProgressUpdateStreams, input, options)
end

function C:listSourceResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceResources, input, options)
end

function C:notifyApplicationState(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyApplicationState, input, options)
end

function C:notifyMigrationTaskState(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyMigrationTaskState, input, options)
end

function C:putResourceAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourceAttributes, input, options)
end

return M
