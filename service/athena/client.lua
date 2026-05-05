local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("athena.endpoint_rules")
local schemas = require("athena.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.BatchGetNamedQueryInput,
        output_schema = schemas.BatchGetNamedQueryOutput,
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
        input_schema = schemas.BatchGetPreparedStatementInput,
        output_schema = schemas.BatchGetPreparedStatementOutput,
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
        input_schema = schemas.BatchGetQueryExecutionInput,
        output_schema = schemas.BatchGetQueryExecutionOutput,
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
        input_schema = schemas.CancelCapacityReservationInput,
        output_schema = schemas.CancelCapacityReservationOutput,
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
        input_schema = schemas.CreateCapacityReservationInput,
        output_schema = schemas.CreateCapacityReservationOutput,
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
        input_schema = schemas.CreateDataCatalogInput,
        output_schema = schemas.CreateDataCatalogOutput,
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
        input_schema = schemas.CreateNamedQueryInput,
        output_schema = schemas.CreateNamedQueryOutput,
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
        input_schema = schemas.CreateNotebookInput,
        output_schema = schemas.CreateNotebookOutput,
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
        input_schema = schemas.CreatePreparedStatementInput,
        output_schema = schemas.CreatePreparedStatementOutput,
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
        input_schema = schemas.CreatePresignedNotebookUrlInput,
        output_schema = schemas.CreatePresignedNotebookUrlOutput,
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
        input_schema = schemas.CreateWorkGroupInput,
        output_schema = schemas.CreateWorkGroupOutput,
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
        input_schema = schemas.DeleteCapacityReservationInput,
        output_schema = schemas.DeleteCapacityReservationOutput,
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
        input_schema = schemas.DeleteDataCatalogInput,
        output_schema = schemas.DeleteDataCatalogOutput,
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
        input_schema = schemas.DeleteNamedQueryInput,
        output_schema = schemas.DeleteNamedQueryOutput,
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
        input_schema = schemas.DeleteNotebookInput,
        output_schema = schemas.DeleteNotebookOutput,
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
        input_schema = schemas.DeletePreparedStatementInput,
        output_schema = schemas.DeletePreparedStatementOutput,
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
        input_schema = schemas.DeleteWorkGroupInput,
        output_schema = schemas.DeleteWorkGroupOutput,
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
        input_schema = schemas.ExportNotebookInput,
        output_schema = schemas.ExportNotebookOutput,
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
        input_schema = schemas.GetCalculationExecutionInput,
        output_schema = schemas.GetCalculationExecutionOutput,
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
        input_schema = schemas.GetCalculationExecutionCodeInput,
        output_schema = schemas.GetCalculationExecutionCodeOutput,
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
        input_schema = schemas.GetCalculationExecutionStatusInput,
        output_schema = schemas.GetCalculationExecutionStatusOutput,
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
        input_schema = schemas.GetCapacityAssignmentConfigurationInput,
        output_schema = schemas.GetCapacityAssignmentConfigurationOutput,
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
        input_schema = schemas.GetCapacityReservationInput,
        output_schema = schemas.GetCapacityReservationOutput,
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
        input_schema = schemas.GetDatabaseInput,
        output_schema = schemas.GetDatabaseOutput,
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
        input_schema = schemas.GetDataCatalogInput,
        output_schema = schemas.GetDataCatalogOutput,
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
        input_schema = schemas.GetNamedQueryInput,
        output_schema = schemas.GetNamedQueryOutput,
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
        input_schema = schemas.GetNotebookMetadataInput,
        output_schema = schemas.GetNotebookMetadataOutput,
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
        input_schema = schemas.GetPreparedStatementInput,
        output_schema = schemas.GetPreparedStatementOutput,
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
        input_schema = schemas.GetQueryExecutionInput,
        output_schema = schemas.GetQueryExecutionOutput,
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
        input_schema = schemas.GetQueryResultsInput,
        output_schema = schemas.GetQueryResultsOutput,
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
        input_schema = schemas.GetQueryRuntimeStatisticsInput,
        output_schema = schemas.GetQueryRuntimeStatisticsOutput,
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
        input_schema = schemas.GetResourceDashboardInput,
        output_schema = schemas.GetResourceDashboardOutput,
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
        input_schema = schemas.GetSessionInput,
        output_schema = schemas.GetSessionOutput,
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
        input_schema = schemas.GetSessionEndpointInput,
        output_schema = schemas.GetSessionEndpointOutput,
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
        input_schema = schemas.GetSessionStatusInput,
        output_schema = schemas.GetSessionStatusOutput,
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
        input_schema = schemas.GetTableMetadataInput,
        output_schema = schemas.GetTableMetadataOutput,
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
        input_schema = schemas.GetWorkGroupInput,
        output_schema = schemas.GetWorkGroupOutput,
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
        input_schema = schemas.ImportNotebookInput,
        output_schema = schemas.ImportNotebookOutput,
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
        input_schema = schemas.ListApplicationDPUSizesInput,
        output_schema = schemas.ListApplicationDPUSizesOutput,
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
        input_schema = schemas.ListCalculationExecutionsInput,
        output_schema = schemas.ListCalculationExecutionsOutput,
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
        input_schema = schemas.ListCapacityReservationsInput,
        output_schema = schemas.ListCapacityReservationsOutput,
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
        input_schema = schemas.ListDatabasesInput,
        output_schema = schemas.ListDatabasesOutput,
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
        input_schema = schemas.ListDataCatalogsInput,
        output_schema = schemas.ListDataCatalogsOutput,
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
        input_schema = schemas.ListEngineVersionsInput,
        output_schema = schemas.ListEngineVersionsOutput,
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
        input_schema = schemas.ListExecutorsInput,
        output_schema = schemas.ListExecutorsOutput,
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
        input_schema = schemas.ListNamedQueriesInput,
        output_schema = schemas.ListNamedQueriesOutput,
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
        input_schema = schemas.ListNotebookMetadataInput,
        output_schema = schemas.ListNotebookMetadataOutput,
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
        input_schema = schemas.ListNotebookSessionsInput,
        output_schema = schemas.ListNotebookSessionsOutput,
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
        input_schema = schemas.ListPreparedStatementsInput,
        output_schema = schemas.ListPreparedStatementsOutput,
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
        input_schema = schemas.ListQueryExecutionsInput,
        output_schema = schemas.ListQueryExecutionsOutput,
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
        input_schema = schemas.ListSessionsInput,
        output_schema = schemas.ListSessionsOutput,
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
        input_schema = schemas.ListTableMetadataInput,
        output_schema = schemas.ListTableMetadataOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListWorkGroupsInput,
        output_schema = schemas.ListWorkGroupsOutput,
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
        input_schema = schemas.PutCapacityAssignmentConfigurationInput,
        output_schema = schemas.PutCapacityAssignmentConfigurationOutput,
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
        input_schema = schemas.StartCalculationExecutionInput,
        output_schema = schemas.StartCalculationExecutionOutput,
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
        input_schema = schemas.StartQueryExecutionInput,
        output_schema = schemas.StartQueryExecutionOutput,
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
        input_schema = schemas.StartSessionInput,
        output_schema = schemas.StartSessionOutput,
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
        input_schema = schemas.StopCalculationExecutionInput,
        output_schema = schemas.StopCalculationExecutionOutput,
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
        input_schema = schemas.StopQueryExecutionInput,
        output_schema = schemas.StopQueryExecutionOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.TerminateSessionInput,
        output_schema = schemas.TerminateSessionOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateCapacityReservationInput,
        output_schema = schemas.UpdateCapacityReservationOutput,
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
        input_schema = schemas.UpdateDataCatalogInput,
        output_schema = schemas.UpdateDataCatalogOutput,
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
        input_schema = schemas.UpdateNamedQueryInput,
        output_schema = schemas.UpdateNamedQueryOutput,
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
        input_schema = schemas.UpdateNotebookInput,
        output_schema = schemas.UpdateNotebookOutput,
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
        input_schema = schemas.UpdateNotebookMetadataInput,
        output_schema = schemas.UpdateNotebookMetadataOutput,
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
        input_schema = schemas.UpdatePreparedStatementInput,
        output_schema = schemas.UpdatePreparedStatementOutput,
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
        input_schema = schemas.UpdateWorkGroupInput,
        output_schema = schemas.UpdateWorkGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
