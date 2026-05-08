



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("redshiftdata.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("redshiftdata.schemas")
local traits = require("smithy.traits")
local types = require("redshiftdata.types")
local sdk_defaults = require("aws.sdk_defaults")

















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "RedshiftData"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "redshift-data", signing_region = c.region } }
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

function C:batchExecuteStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchExecuteStatement, input, options)
end

function C:cancelStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelStatement, input, options)
end

function C:describeStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStatement, input, options)
end

function C:describeTable(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTable, input, options)
end

function C:executeStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteStatement, input, options)
end

function C:getStatementResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStatementResult, input, options)
end

function C:getStatementResultV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStatementResultV2, input, options)
end

function C:listDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatabases, input, options)
end

function C:listSchemas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchemas, input, options)
end

function C:listStatements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStatements, input, options)
end

function C:listTables(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTables, input, options)
end

return M
