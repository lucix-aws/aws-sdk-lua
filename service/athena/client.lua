



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("athena.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("athena.schemas")
local traits = require("smithy.traits")
local types = require("athena.types")
local sdk_defaults = require("aws.sdk_defaults")












































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonAthena"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "athena", signing_region = c.region } }
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

function C:batchGetNamedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetNamedQuery, input, options)
end

function C:batchGetPreparedStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetPreparedStatement, input, options)
end

function C:batchGetQueryExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetQueryExecution, input, options)
end

function C:cancelCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelCapacityReservation, input, options)
end

function C:createCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCapacityReservation, input, options)
end

function C:createDataCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataCatalog, input, options)
end

function C:createNamedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNamedQuery, input, options)
end

function C:createNotebook(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotebook, input, options)
end

function C:createPreparedStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePreparedStatement, input, options)
end

function C:createPresignedNotebookUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePresignedNotebookUrl, input, options)
end

function C:createWorkGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkGroup, input, options)
end

function C:deleteCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCapacityReservation, input, options)
end

function C:deleteDataCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataCatalog, input, options)
end

function C:deleteNamedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNamedQuery, input, options)
end

function C:deleteNotebook(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotebook, input, options)
end

function C:deletePreparedStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePreparedStatement, input, options)
end

function C:deleteWorkGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkGroup, input, options)
end

function C:exportNotebook(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportNotebook, input, options)
end

function C:getCalculationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCalculationExecution, input, options)
end

function C:getCalculationExecutionCode(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCalculationExecutionCode, input, options)
end

function C:getCalculationExecutionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCalculationExecutionStatus, input, options)
end

function C:getCapacityAssignmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityAssignmentConfiguration, input, options)
end

function C:getCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCapacityReservation, input, options)
end

function C:getDatabase(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDatabase, input, options)
end

function C:getDataCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDataCatalog, input, options)
end

function C:getNamedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNamedQuery, input, options)
end

function C:getNotebookMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotebookMetadata, input, options)
end

function C:getPreparedStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPreparedStatement, input, options)
end

function C:getQueryExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryExecution, input, options)
end

function C:getQueryResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryResults, input, options)
end

function C:getQueryRuntimeStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueryRuntimeStatistics, input, options)
end

function C:getResourceDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceDashboard, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:getSessionEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionEndpoint, input, options)
end

function C:getSessionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionStatus, input, options)
end

function C:getTableMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTableMetadata, input, options)
end

function C:getWorkGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkGroup, input, options)
end

function C:importNotebook(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportNotebook, input, options)
end

function C:listApplicationDPUSizes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplicationDPUSizes, input, options)
end

function C:listCalculationExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCalculationExecutions, input, options)
end

function C:listCapacityReservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCapacityReservations, input, options)
end

function C:listDatabases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatabases, input, options)
end

function C:listDataCatalogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataCatalogs, input, options)
end

function C:listEngineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngineVersions, input, options)
end

function C:listExecutors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExecutors, input, options)
end

function C:listNamedQueries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNamedQueries, input, options)
end

function C:listNotebookMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotebookMetadata, input, options)
end

function C:listNotebookSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotebookSessions, input, options)
end

function C:listPreparedStatements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPreparedStatements, input, options)
end

function C:listQueryExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueryExecutions, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listTableMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTableMetadata, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkGroups, input, options)
end

function C:putCapacityAssignmentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutCapacityAssignmentConfiguration, input, options)
end

function C:startCalculationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCalculationExecution, input, options)
end

function C:startQueryExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQueryExecution, input, options)
end

function C:startSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSession, input, options)
end

function C:stopCalculationExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCalculationExecution, input, options)
end

function C:stopQueryExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopQueryExecution, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:terminateSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateSession, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCapacityReservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCapacityReservation, input, options)
end

function C:updateDataCatalog(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataCatalog, input, options)
end

function C:updateNamedQuery(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNamedQuery, input, options)
end

function C:updateNotebook(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotebook, input, options)
end

function C:updateNotebookMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotebookMetadata, input, options)
end

function C:updatePreparedStatement(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePreparedStatement, input, options)
end

function C:updateWorkGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkGroup, input, options)
end

return M
