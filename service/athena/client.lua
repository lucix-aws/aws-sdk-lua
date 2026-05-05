local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("athena.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("athena.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonAthena"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "athena", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:batchGetNamedQuery(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetNamedQuery",
        input_schema = types.BatchGetNamedQueryInput,
        output_schema = types.BatchGetNamedQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetPreparedStatement(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetPreparedStatement",
        input_schema = types.BatchGetPreparedStatementInput,
        output_schema = types.BatchGetPreparedStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetQueryExecution(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetQueryExecution",
        input_schema = types.BatchGetQueryExecutionInput,
        output_schema = types.BatchGetQueryExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "CancelCapacityReservation",
        input_schema = types.CancelCapacityReservationInput,
        output_schema = types.CancelCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCapacityReservation",
        input_schema = types.CreateCapacityReservationInput,
        output_schema = types.CreateCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataCatalog(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataCatalog",
        input_schema = types.CreateDataCatalogInput,
        output_schema = types.CreateDataCatalogOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNamedQuery(input, options)
    return self:invokeOperation(input, {
        name = "CreateNamedQuery",
        input_schema = types.CreateNamedQueryInput,
        output_schema = types.CreateNamedQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotebook(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotebook",
        input_schema = types.CreateNotebookInput,
        output_schema = types.CreateNotebookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPreparedStatement(input, options)
    return self:invokeOperation(input, {
        name = "CreatePreparedStatement",
        input_schema = types.CreatePreparedStatementInput,
        output_schema = types.CreatePreparedStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPresignedNotebookUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedNotebookUrl",
        input_schema = types.CreatePresignedNotebookUrlInput,
        output_schema = types.CreatePresignedNotebookUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkGroup",
        input_schema = types.CreateWorkGroupInput,
        output_schema = types.CreateWorkGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCapacityReservation",
        input_schema = types.DeleteCapacityReservationInput,
        output_schema = types.DeleteCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataCatalog(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataCatalog",
        input_schema = types.DeleteDataCatalogInput,
        output_schema = types.DeleteDataCatalogOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNamedQuery(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNamedQuery",
        input_schema = types.DeleteNamedQueryInput,
        output_schema = types.DeleteNamedQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotebook(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotebook",
        input_schema = types.DeleteNotebookInput,
        output_schema = types.DeleteNotebookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePreparedStatement(input, options)
    return self:invokeOperation(input, {
        name = "DeletePreparedStatement",
        input_schema = types.DeletePreparedStatementInput,
        output_schema = types.DeletePreparedStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkGroup",
        input_schema = types.DeleteWorkGroupInput,
        output_schema = types.DeleteWorkGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportNotebook(input, options)
    return self:invokeOperation(input, {
        name = "ExportNotebook",
        input_schema = types.ExportNotebookInput,
        output_schema = types.ExportNotebookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCalculationExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetCalculationExecution",
        input_schema = types.GetCalculationExecutionInput,
        output_schema = types.GetCalculationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCalculationExecutionCode(input, options)
    return self:invokeOperation(input, {
        name = "GetCalculationExecutionCode",
        input_schema = types.GetCalculationExecutionCodeInput,
        output_schema = types.GetCalculationExecutionCodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCalculationExecutionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetCalculationExecutionStatus",
        input_schema = types.GetCalculationExecutionStatusInput,
        output_schema = types.GetCalculationExecutionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityAssignmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityAssignmentConfiguration",
        input_schema = types.GetCapacityAssignmentConfigurationInput,
        output_schema = types.GetCapacityAssignmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "GetCapacityReservation",
        input_schema = types.GetCapacityReservationInput,
        output_schema = types.GetCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetDatabase",
        input_schema = types.GetDatabaseInput,
        output_schema = types.GetDatabaseOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataCatalog(input, options)
    return self:invokeOperation(input, {
        name = "GetDataCatalog",
        input_schema = types.GetDataCatalogInput,
        output_schema = types.GetDataCatalogOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNamedQuery(input, options)
    return self:invokeOperation(input, {
        name = "GetNamedQuery",
        input_schema = types.GetNamedQueryInput,
        output_schema = types.GetNamedQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNotebookMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetNotebookMetadata",
        input_schema = types.GetNotebookMetadataInput,
        output_schema = types.GetNotebookMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPreparedStatement(input, options)
    return self:invokeOperation(input, {
        name = "GetPreparedStatement",
        input_schema = types.GetPreparedStatementInput,
        output_schema = types.GetPreparedStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryExecution",
        input_schema = types.GetQueryExecutionInput,
        output_schema = types.GetQueryExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryResults(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryResults",
        input_schema = types.GetQueryResultsInput,
        output_schema = types.GetQueryResultsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryRuntimeStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryRuntimeStatistics",
        input_schema = types.GetQueryRuntimeStatisticsInput,
        output_schema = types.GetQueryRuntimeStatisticsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceDashboard",
        input_schema = types.GetResourceDashboardInput,
        output_schema = types.GetResourceDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionEndpoint",
        input_schema = types.GetSessionEndpointInput,
        output_schema = types.GetSessionEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionStatus",
        input_schema = types.GetSessionStatusInput,
        output_schema = types.GetSessionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTableMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetTableMetadata",
        input_schema = types.GetTableMetadataInput,
        output_schema = types.GetTableMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkGroup",
        input_schema = types.GetWorkGroupInput,
        output_schema = types.GetWorkGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importNotebook(input, options)
    return self:invokeOperation(input, {
        name = "ImportNotebook",
        input_schema = types.ImportNotebookInput,
        output_schema = types.ImportNotebookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationDPUSizes(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationDPUSizes",
        input_schema = types.ListApplicationDPUSizesInput,
        output_schema = types.ListApplicationDPUSizesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCalculationExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListCalculationExecutions",
        input_schema = types.ListCalculationExecutionsInput,
        output_schema = types.ListCalculationExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCapacityReservations(input, options)
    return self:invokeOperation(input, {
        name = "ListCapacityReservations",
        input_schema = types.ListCapacityReservationsInput,
        output_schema = types.ListCapacityReservationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatabases(input, options)
    return self:invokeOperation(input, {
        name = "ListDatabases",
        input_schema = types.ListDatabasesInput,
        output_schema = types.ListDatabasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataCatalogs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataCatalogs",
        input_schema = types.ListDataCatalogsInput,
        output_schema = types.ListDataCatalogsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEngineVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListEngineVersions",
        input_schema = types.ListEngineVersionsInput,
        output_schema = types.ListEngineVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExecutors(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutors",
        input_schema = types.ListExecutorsInput,
        output_schema = types.ListExecutorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNamedQueries(input, options)
    return self:invokeOperation(input, {
        name = "ListNamedQueries",
        input_schema = types.ListNamedQueriesInput,
        output_schema = types.ListNamedQueriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotebookMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookMetadata",
        input_schema = types.ListNotebookMetadataInput,
        output_schema = types.ListNotebookMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotebookSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookSessions",
        input_schema = types.ListNotebookSessionsInput,
        output_schema = types.ListNotebookSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPreparedStatements(input, options)
    return self:invokeOperation(input, {
        name = "ListPreparedStatements",
        input_schema = types.ListPreparedStatementsInput,
        output_schema = types.ListPreparedStatementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueryExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListQueryExecutions",
        input_schema = types.ListQueryExecutionsInput,
        output_schema = types.ListQueryExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTableMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListTableMetadata",
        input_schema = types.ListTableMetadataInput,
        output_schema = types.ListTableMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkGroups",
        input_schema = types.ListWorkGroupsInput,
        output_schema = types.ListWorkGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putCapacityAssignmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutCapacityAssignmentConfiguration",
        input_schema = types.PutCapacityAssignmentConfigurationInput,
        output_schema = types.PutCapacityAssignmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startCalculationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartCalculationExecution",
        input_schema = types.StartCalculationExecutionInput,
        output_schema = types.StartCalculationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startQueryExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartQueryExecution",
        input_schema = types.StartQueryExecutionInput,
        output_schema = types.StartQueryExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSession(input, options)
    return self:invokeOperation(input, {
        name = "StartSession",
        input_schema = types.StartSessionInput,
        output_schema = types.StartSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopCalculationExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopCalculationExecution",
        input_schema = types.StopCalculationExecutionInput,
        output_schema = types.StopCalculationExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopQueryExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopQueryExecution",
        input_schema = types.StopQueryExecutionInput,
        output_schema = types.StopQueryExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateSession",
        input_schema = types.TerminateSessionInput,
        output_schema = types.TerminateSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCapacityReservation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCapacityReservation",
        input_schema = types.UpdateCapacityReservationInput,
        output_schema = types.UpdateCapacityReservationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataCatalog(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataCatalog",
        input_schema = types.UpdateDataCatalogInput,
        output_schema = types.UpdateDataCatalogOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNamedQuery(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNamedQuery",
        input_schema = types.UpdateNamedQueryInput,
        output_schema = types.UpdateNamedQueryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotebook(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotebook",
        input_schema = types.UpdateNotebookInput,
        output_schema = types.UpdateNotebookOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotebookMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotebookMetadata",
        input_schema = types.UpdateNotebookMetadataInput,
        output_schema = types.UpdateNotebookMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePreparedStatement(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePreparedStatement",
        input_schema = types.UpdatePreparedStatementInput,
        output_schema = types.UpdatePreparedStatementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkGroup",
        input_schema = types.UpdateWorkGroupInput,
        output_schema = types.UpdateWorkGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
