



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("neptunegraph.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("neptunegraph.schemas")
local traits = require("smithy.traits")
local types = require("neptunegraph.types")
local sdk_defaults = require("aws.sdk_defaults")








































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonNeptuneGraph"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "neptune-graph", signing_region = c.region } }
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

function C:cancelExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelExportTask, input, options)
end

function C:cancelImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelImportTask, input, options)
end

function C:cancelQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelQuery, input, options)
end

function C:createGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGraph, input, options)
end

function C:createGraphSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGraphSnapshot, input, options)
end

function C:createGraphUsingImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateGraphUsingImportTask, input, options)
end

function C:createPrivateGraphEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrivateGraphEndpoint, input, options)
end

function C:deleteGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGraph, input, options)
end

function C:deleteGraphSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGraphSnapshot, input, options)
end

function C:deletePrivateGraphEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrivateGraphEndpoint, input, options)
end

function C:executeQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteQuery, input, options)
end

function C:getExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExportTask, input, options)
end

function C:getGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGraph, input, options)
end

function C:getGraphSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGraphSnapshot, input, options)
end

function C:getGraphSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGraphSummary, input, options)
end

function C:getImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImportTask, input, options)
end

function C:getPrivateGraphEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPrivateGraphEndpoint, input, options)
end

function C:getQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQuery, input, options)
end

function C:listExportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExportTasks, input, options)
end

function C:listGraphs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGraphs, input, options)
end

function C:listGraphSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGraphSnapshots, input, options)
end

function C:listImportTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImportTasks, input, options)
end

function C:listPrivateGraphEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrivateGraphEndpoints, input, options)
end

function C:listQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueries, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:resetGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetGraph, input, options)
end

function C:restoreGraphFromSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreGraphFromSnapshot, input, options)
end

function C:startExportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExportTask, input, options)
end

function C:startGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartGraph, input, options)
end

function C:startImportTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImportTask, input, options)
end

function C:stopGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopGraph, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateGraph(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGraph, input, options)
end

return M
