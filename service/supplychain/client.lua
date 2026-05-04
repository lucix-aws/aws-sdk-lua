local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("supplychain.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("supplychain.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GalaxyPublicAPIGateway"
    cfg.signing_name = "galaxypublicapigateway"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createBillOfMaterialsImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillOfMaterialsImportJob",
        input_schema = types.CreateBillOfMaterialsImportJobInput,
        output_schema = types.CreateBillOfMaterialsImportJobOutput,
        http_method = "POST",
        http_path = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs",
    }, options)
end

function Client:createDataIntegrationFlow(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataIntegrationFlow",
        input_schema = types.CreateDataIntegrationFlowInput,
        output_schema = types.CreateDataIntegrationFlowOutput,
        http_method = "PUT",
        http_path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}",
    }, options)
end

function Client:createDataLakeDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLakeDataset",
        input_schema = types.CreateDataLakeDatasetInput,
        output_schema = types.CreateDataLakeDatasetOutput,
        http_method = "PUT",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}",
    }, options)
end

function Client:createDataLakeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataLakeNamespace",
        input_schema = types.CreateDataLakeNamespaceInput,
        output_schema = types.CreateDataLakeNamespaceOutput,
        http_method = "PUT",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{name}",
    }, options)
end

function Client:createInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstance",
        input_schema = types.CreateInstanceInput,
        output_schema = types.CreateInstanceOutput,
        http_method = "POST",
        http_path = "/api/instance",
    }, options)
end

function Client:deleteDataIntegrationFlow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataIntegrationFlow",
        input_schema = types.DeleteDataIntegrationFlowInput,
        output_schema = types.DeleteDataIntegrationFlowOutput,
        http_method = "DELETE",
        http_path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}",
    }, options)
end

function Client:deleteDataLakeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLakeDataset",
        input_schema = types.DeleteDataLakeDatasetInput,
        output_schema = types.DeleteDataLakeDatasetOutput,
        http_method = "DELETE",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}",
    }, options)
end

function Client:deleteDataLakeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataLakeNamespace",
        input_schema = types.DeleteDataLakeNamespaceInput,
        output_schema = types.DeleteDataLakeNamespaceOutput,
        http_method = "DELETE",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{name}",
    }, options)
end

function Client:deleteInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstance",
        input_schema = types.DeleteInstanceInput,
        output_schema = types.DeleteInstanceOutput,
        http_method = "DELETE",
        http_path = "/api/instance/{instanceId}",
    }, options)
end

function Client:getBillOfMaterialsImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetBillOfMaterialsImportJob",
        input_schema = types.GetBillOfMaterialsImportJobInput,
        output_schema = types.GetBillOfMaterialsImportJobOutput,
        http_method = "GET",
        http_path = "/api/configuration/instances/{instanceId}/bill-of-materials-import-jobs/{jobId}",
    }, options)
end

function Client:getDataIntegrationEvent(input, options)
    return self:invokeOperation(input, {
        name = "GetDataIntegrationEvent",
        input_schema = types.GetDataIntegrationEventInput,
        output_schema = types.GetDataIntegrationEventOutput,
        http_method = "GET",
        http_path = "/api-data/data-integration/instance/{instanceId}/data-integration-events/{eventId}",
    }, options)
end

function Client:getDataIntegrationFlow(input, options)
    return self:invokeOperation(input, {
        name = "GetDataIntegrationFlow",
        input_schema = types.GetDataIntegrationFlowInput,
        output_schema = types.GetDataIntegrationFlowOutput,
        http_method = "GET",
        http_path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}",
    }, options)
end

function Client:getDataIntegrationFlowExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetDataIntegrationFlowExecution",
        input_schema = types.GetDataIntegrationFlowExecutionInput,
        output_schema = types.GetDataIntegrationFlowExecutionOutput,
        http_method = "GET",
        http_path = "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions/{executionId}",
    }, options)
end

function Client:getDataLakeDataset(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeDataset",
        input_schema = types.GetDataLakeDatasetInput,
        output_schema = types.GetDataLakeDatasetOutput,
        http_method = "GET",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}",
    }, options)
end

function Client:getDataLakeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetDataLakeNamespace",
        input_schema = types.GetDataLakeNamespaceInput,
        output_schema = types.GetDataLakeNamespaceOutput,
        http_method = "GET",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{name}",
    }, options)
end

function Client:getInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetInstance",
        input_schema = types.GetInstanceInput,
        output_schema = types.GetInstanceOutput,
        http_method = "GET",
        http_path = "/api/instance/{instanceId}",
    }, options)
end

function Client:listDataIntegrationEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIntegrationEvents",
        input_schema = types.ListDataIntegrationEventsInput,
        output_schema = types.ListDataIntegrationEventsOutput,
        http_method = "GET",
        http_path = "/api-data/data-integration/instance/{instanceId}/data-integration-events",
    }, options)
end

function Client:listDataIntegrationFlowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIntegrationFlowExecutions",
        input_schema = types.ListDataIntegrationFlowExecutionsInput,
        output_schema = types.ListDataIntegrationFlowExecutionsOutput,
        http_method = "GET",
        http_path = "/api-data/data-integration/instance/{instanceId}/data-integration-flows/{flowName}/executions",
    }, options)
end

function Client:listDataIntegrationFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIntegrationFlows",
        input_schema = types.ListDataIntegrationFlowsInput,
        output_schema = types.ListDataIntegrationFlowsOutput,
        http_method = "GET",
        http_path = "/api/data-integration/instance/{instanceId}/data-integration-flows",
    }, options)
end

function Client:listDataLakeDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDataLakeDatasets",
        input_schema = types.ListDataLakeDatasetsInput,
        output_schema = types.ListDataLakeDatasetsOutput,
        http_method = "GET",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets",
    }, options)
end

function Client:listDataLakeNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListDataLakeNamespaces",
        input_schema = types.ListDataLakeNamespacesInput,
        output_schema = types.ListDataLakeNamespacesOutput,
        http_method = "GET",
        http_path = "/api/datalake/instance/{instanceId}/namespaces",
    }, options)
end

function Client:listInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListInstances",
        input_schema = types.ListInstancesInput,
        output_schema = types.ListInstancesOutput,
        http_method = "GET",
        http_path = "/api/instance",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/api/tags/{resourceArn}",
    }, options)
end

function Client:sendDataIntegrationEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendDataIntegrationEvent",
        input_schema = types.SendDataIntegrationEventInput,
        output_schema = types.SendDataIntegrationEventOutput,
        http_method = "POST",
        http_path = "/api-data/data-integration/instance/{instanceId}/data-integration-events",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/api/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/api/tags/{resourceArn}",
    }, options)
end

function Client:updateDataIntegrationFlow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataIntegrationFlow",
        input_schema = types.UpdateDataIntegrationFlowInput,
        output_schema = types.UpdateDataIntegrationFlowOutput,
        http_method = "PATCH",
        http_path = "/api/data-integration/instance/{instanceId}/data-integration-flows/{name}",
    }, options)
end

function Client:updateDataLakeDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataLakeDataset",
        input_schema = types.UpdateDataLakeDatasetInput,
        output_schema = types.UpdateDataLakeDatasetOutput,
        http_method = "PATCH",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{namespace}/datasets/{name}",
    }, options)
end

function Client:updateDataLakeNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataLakeNamespace",
        input_schema = types.UpdateDataLakeNamespaceInput,
        output_schema = types.UpdateDataLakeNamespaceOutput,
        http_method = "PATCH",
        http_path = "/api/datalake/instance/{instanceId}/namespaces/{name}",
    }, options)
end

function Client:updateInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstance",
        input_schema = types.UpdateInstanceInput,
        output_schema = types.UpdateInstanceOutput,
        http_method = "PATCH",
        http_path = "/api/instance/{instanceId}",
    }, options)
end

return M
