



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("finspacedata.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("finspacedata.schemas")
local traits = require("smithy.traits")
local types = require("finspacedata.types")
local sdk_defaults = require("aws.sdk_defaults")





































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSHabaneroPublicAPI"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "finspace-api", signing_region = c.region } }
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

function C:associateUserToPermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateUserToPermissionGroup, input, options)
end

function C:createChangeset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChangeset, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createDataView(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataView, input, options)
end

function C:createPermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePermissionGroup, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deletePermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePermissionGroup, input, options)
end

function C:disableUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableUser, input, options)
end

function C:disassociateUserFromPermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateUserFromPermissionGroup, input, options)
end

function C:enableUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableUser, input, options)
end

function C:getChangeset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChangeset, input, options)
end

function C:getDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataset, input, options)
end

function C:getDataView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataView, input, options)
end

function C:getExternalDataViewAccessDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExternalDataViewAccessDetails, input, options)
end

function C:getPermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPermissionGroup, input, options)
end

function C:getProgrammaticAccessCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProgrammaticAccessCredentials, input, options)
end

function C:getUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUser, input, options)
end

function C:getWorkingLocation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkingLocation, input, options)
end

function C:listChangesets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChangesets, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listDataViews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataViews, input, options)
end

function C:listPermissionGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionGroups, input, options)
end

function C:listPermissionGroupsByUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPermissionGroupsByUser, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:listUsersByPermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsersByPermissionGroup, input, options)
end

function C:resetUserPassword(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetUserPassword, input, options)
end

function C:updateChangeset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateChangeset, input, options)
end

function C:updateDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataset, input, options)
end

function C:updatePermissionGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePermissionGroup, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

return M
