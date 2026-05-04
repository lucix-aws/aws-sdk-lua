local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iotsitewise.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iotsitewise.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIoTSiteWise"
    cfg.signing_name = "awsiotsitewise"
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

function Client:associateAssets(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAssets",
        input_schema = types.AssociateAssetsInput,
        output_schema = types.AssociateAssetsOutput,
        http_method = "POST",
        http_path = "/assets/{assetId}/associate",
    }, options)
end

function Client:associateTimeSeriesToAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTimeSeriesToAssetProperty",
        input_schema = types.AssociateTimeSeriesToAssetPropertyInput,
        output_schema = types.AssociateTimeSeriesToAssetPropertyOutput,
        http_method = "POST",
        http_path = "/timeseries/associate",
    }, options)
end

function Client:batchAssociateProjectAssets(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateProjectAssets",
        input_schema = types.BatchAssociateProjectAssetsInput,
        output_schema = types.BatchAssociateProjectAssetsOutput,
        http_method = "POST",
        http_path = "/projects/{projectId}/assets/associate",
    }, options)
end

function Client:batchDisassociateProjectAssets(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateProjectAssets",
        input_schema = types.BatchDisassociateProjectAssetsInput,
        output_schema = types.BatchDisassociateProjectAssetsOutput,
        http_method = "POST",
        http_path = "/projects/{projectId}/assets/disassociate",
    }, options)
end

function Client:batchGetAssetPropertyAggregates(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAssetPropertyAggregates",
        input_schema = types.BatchGetAssetPropertyAggregatesInput,
        output_schema = types.BatchGetAssetPropertyAggregatesOutput,
        http_method = "POST",
        http_path = "/properties/batch/aggregates",
    }, options)
end

function Client:batchGetAssetPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAssetPropertyValue",
        input_schema = types.BatchGetAssetPropertyValueInput,
        output_schema = types.BatchGetAssetPropertyValueOutput,
        http_method = "POST",
        http_path = "/properties/batch/latest",
    }, options)
end

function Client:batchGetAssetPropertyValueHistory(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAssetPropertyValueHistory",
        input_schema = types.BatchGetAssetPropertyValueHistoryInput,
        output_schema = types.BatchGetAssetPropertyValueHistoryOutput,
        http_method = "POST",
        http_path = "/properties/batch/history",
    }, options)
end

function Client:batchPutAssetPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutAssetPropertyValue",
        input_schema = types.BatchPutAssetPropertyValueInput,
        output_schema = types.BatchPutAssetPropertyValueOutput,
        http_method = "POST",
        http_path = "/properties",
    }, options)
end

function Client:createAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPolicy",
        input_schema = types.CreateAccessPolicyInput,
        output_schema = types.CreateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/access-policies",
    }, options)
end

function Client:createAsset(input, options)
    return self:invokeOperation(input, {
        name = "CreateAsset",
        input_schema = types.CreateAssetInput,
        output_schema = types.CreateAssetOutput,
        http_method = "POST",
        http_path = "/assets",
    }, options)
end

function Client:createAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetModel",
        input_schema = types.CreateAssetModelInput,
        output_schema = types.CreateAssetModelOutput,
        http_method = "POST",
        http_path = "/asset-models",
    }, options)
end

function Client:createAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetModelCompositeModel",
        input_schema = types.CreateAssetModelCompositeModelInput,
        output_schema = types.CreateAssetModelCompositeModelOutput,
        http_method = "POST",
        http_path = "/asset-models/{assetModelId}/composite-models",
    }, options)
end

function Client:createBulkImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBulkImportJob",
        input_schema = types.CreateBulkImportJobInput,
        output_schema = types.CreateBulkImportJobOutput,
        http_method = "POST",
        http_path = "/jobs",
    }, options)
end

function Client:createComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputationModel",
        input_schema = types.CreateComputationModelInput,
        output_schema = types.CreateComputationModelOutput,
        http_method = "POST",
        http_path = "/computation-models",
    }, options)
end

function Client:createDashboard(input, options)
    return self:invokeOperation(input, {
        name = "CreateDashboard",
        input_schema = types.CreateDashboardInput,
        output_schema = types.CreateDashboardOutput,
        http_method = "POST",
        http_path = "/dashboards",
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/datasets",
    }, options)
end

function Client:createGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateGateway",
        input_schema = types.CreateGatewayInput,
        output_schema = types.CreateGatewayOutput,
        http_method = "POST",
        http_path = "/20200301/gateways",
    }, options)
end

function Client:createPortal(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortal",
        input_schema = types.CreatePortalInput,
        output_schema = types.CreatePortalOutput,
        http_method = "POST",
        http_path = "/portals",
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "POST",
        http_path = "/projects",
    }, options)
end

function Client:deleteAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPolicy",
        input_schema = types.DeleteAccessPolicyInput,
        output_schema = types.DeleteAccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/access-policies/{accessPolicyId}",
    }, options)
end

function Client:deleteAsset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAsset",
        input_schema = types.DeleteAssetInput,
        output_schema = types.DeleteAssetOutput,
        http_method = "DELETE",
        http_path = "/assets/{assetId}",
    }, options)
end

function Client:deleteAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetModel",
        input_schema = types.DeleteAssetModelInput,
        output_schema = types.DeleteAssetModelOutput,
        http_method = "DELETE",
        http_path = "/asset-models/{assetModelId}",
    }, options)
end

function Client:deleteAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetModelCompositeModel",
        input_schema = types.DeleteAssetModelCompositeModelInput,
        output_schema = types.DeleteAssetModelCompositeModelOutput,
        http_method = "DELETE",
        http_path = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}",
    }, options)
end

function Client:deleteAssetModelInterfaceRelationship(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetModelInterfaceRelationship",
        input_schema = types.DeleteAssetModelInterfaceRelationshipInput,
        output_schema = types.DeleteAssetModelInterfaceRelationshipOutput,
        http_method = "DELETE",
        http_path = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship",
    }, options)
end

function Client:deleteComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComputationModel",
        input_schema = types.DeleteComputationModelInput,
        output_schema = types.DeleteComputationModelOutput,
        http_method = "DELETE",
        http_path = "/computation-models/{computationModelId}",
    }, options)
end

function Client:deleteDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboard",
        input_schema = types.DeleteDashboardInput,
        output_schema = types.DeleteDashboardOutput,
        http_method = "DELETE",
        http_path = "/dashboards/{dashboardId}",
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/datasets/{datasetId}",
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = types.DeleteGatewayInput,
        output_schema = types.DeleteGatewayOutput,
        http_method = "DELETE",
        http_path = "/20200301/gateways/{gatewayId}",
    }, options)
end

function Client:deletePortal(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortal",
        input_schema = types.DeletePortalInput,
        output_schema = types.DeletePortalOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalId}",
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/projects/{projectId}",
    }, options)
end

function Client:deleteTimeSeries(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTimeSeries",
        input_schema = types.DeleteTimeSeriesInput,
        output_schema = types.DeleteTimeSeriesOutput,
        http_method = "POST",
        http_path = "/timeseries/delete",
    }, options)
end

function Client:describeAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessPolicy",
        input_schema = types.DescribeAccessPolicyInput,
        output_schema = types.DescribeAccessPolicyOutput,
        http_method = "GET",
        http_path = "/access-policies/{accessPolicyId}",
    }, options)
end

function Client:describeAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAction",
        input_schema = types.DescribeActionInput,
        output_schema = types.DescribeActionOutput,
        http_method = "GET",
        http_path = "/actions/{actionId}",
    }, options)
end

function Client:describeAsset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAsset",
        input_schema = types.DescribeAssetInput,
        output_schema = types.DescribeAssetOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}",
    }, options)
end

function Client:describeAssetCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetCompositeModel",
        input_schema = types.DescribeAssetCompositeModelInput,
        output_schema = types.DescribeAssetCompositeModelOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/composite-models/{assetCompositeModelId}",
    }, options)
end

function Client:describeAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetModel",
        input_schema = types.DescribeAssetModelInput,
        output_schema = types.DescribeAssetModelOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}",
    }, options)
end

function Client:describeAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetModelCompositeModel",
        input_schema = types.DescribeAssetModelCompositeModelInput,
        output_schema = types.DescribeAssetModelCompositeModelOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}",
    }, options)
end

function Client:describeAssetModelInterfaceRelationship(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetModelInterfaceRelationship",
        input_schema = types.DescribeAssetModelInterfaceRelationshipInput,
        output_schema = types.DescribeAssetModelInterfaceRelationshipOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship",
    }, options)
end

function Client:describeAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetProperty",
        input_schema = types.DescribeAssetPropertyInput,
        output_schema = types.DescribeAssetPropertyOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/properties/{propertyId}",
    }, options)
end

function Client:describeBulkImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBulkImportJob",
        input_schema = types.DescribeBulkImportJobInput,
        output_schema = types.DescribeBulkImportJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}",
    }, options)
end

function Client:describeComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputationModel",
        input_schema = types.DescribeComputationModelInput,
        output_schema = types.DescribeComputationModelOutput,
        http_method = "GET",
        http_path = "/computation-models/{computationModelId}",
    }, options)
end

function Client:describeComputationModelExecutionSummary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputationModelExecutionSummary",
        input_schema = types.DescribeComputationModelExecutionSummaryInput,
        output_schema = types.DescribeComputationModelExecutionSummaryOutput,
        http_method = "GET",
        http_path = "/computation-models/{computationModelId}/execution-summary",
    }, options)
end

function Client:describeDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboard",
        input_schema = types.DescribeDashboardInput,
        output_schema = types.DescribeDashboardOutput,
        http_method = "GET",
        http_path = "/dashboards/{dashboardId}",
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "GET",
        http_path = "/datasets/{datasetId}",
    }, options)
end

function Client:describeDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultEncryptionConfiguration",
        input_schema = types.DescribeDefaultEncryptionConfigurationInput,
        output_schema = types.DescribeDefaultEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/account/encryption",
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = types.DescribeExecutionInput,
        output_schema = types.DescribeExecutionOutput,
        http_method = "GET",
        http_path = "/executions/{executionId}",
    }, options)
end

function Client:describeGateway(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGateway",
        input_schema = types.DescribeGatewayInput,
        output_schema = types.DescribeGatewayOutput,
        http_method = "GET",
        http_path = "/20200301/gateways/{gatewayId}",
    }, options)
end

function Client:describeGatewayCapabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGatewayCapabilityConfiguration",
        input_schema = types.DescribeGatewayCapabilityConfigurationInput,
        output_schema = types.DescribeGatewayCapabilityConfigurationOutput,
        http_method = "GET",
        http_path = "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}",
    }, options)
end

function Client:describeLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingOptions",
        input_schema = types.DescribeLoggingOptionsInput,
        output_schema = types.DescribeLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/logging",
    }, options)
end

function Client:describePortal(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortal",
        input_schema = types.DescribePortalInput,
        output_schema = types.DescribePortalOutput,
        http_method = "GET",
        http_path = "/portals/{portalId}",
    }, options)
end

function Client:describeProject(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProject",
        input_schema = types.DescribeProjectInput,
        output_schema = types.DescribeProjectOutput,
        http_method = "GET",
        http_path = "/projects/{projectId}",
    }, options)
end

function Client:describeStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStorageConfiguration",
        input_schema = types.DescribeStorageConfigurationInput,
        output_schema = types.DescribeStorageConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/account/storage",
    }, options)
end

function Client:describeTimeSeries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTimeSeries",
        input_schema = types.DescribeTimeSeriesInput,
        output_schema = types.DescribeTimeSeriesOutput,
        http_method = "GET",
        http_path = "/timeseries/describe",
    }, options)
end

function Client:disassociateAssets(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAssets",
        input_schema = types.DisassociateAssetsInput,
        output_schema = types.DisassociateAssetsOutput,
        http_method = "POST",
        http_path = "/assets/{assetId}/disassociate",
    }, options)
end

function Client:disassociateTimeSeriesFromAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTimeSeriesFromAssetProperty",
        input_schema = types.DisassociateTimeSeriesFromAssetPropertyInput,
        output_schema = types.DisassociateTimeSeriesFromAssetPropertyOutput,
        http_method = "POST",
        http_path = "/timeseries/disassociate",
    }, options)
end

function Client:executeAction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteAction",
        input_schema = types.ExecuteActionInput,
        output_schema = types.ExecuteActionOutput,
        http_method = "POST",
        http_path = "/actions",
    }, options)
end

function Client:executeQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteQuery",
        input_schema = types.ExecuteQueryInput,
        output_schema = types.ExecuteQueryOutput,
        http_method = "POST",
        http_path = "/queries/execution",
    }, options)
end

function Client:getAssetPropertyAggregates(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetPropertyAggregates",
        input_schema = types.GetAssetPropertyAggregatesInput,
        output_schema = types.GetAssetPropertyAggregatesOutput,
        http_method = "GET",
        http_path = "/properties/aggregates",
    }, options)
end

function Client:getAssetPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetPropertyValue",
        input_schema = types.GetAssetPropertyValueInput,
        output_schema = types.GetAssetPropertyValueOutput,
        http_method = "GET",
        http_path = "/properties/latest",
    }, options)
end

function Client:getAssetPropertyValueHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetPropertyValueHistory",
        input_schema = types.GetAssetPropertyValueHistoryInput,
        output_schema = types.GetAssetPropertyValueHistoryOutput,
        http_method = "GET",
        http_path = "/properties/history",
    }, options)
end

function Client:getInterpolatedAssetPropertyValues(input, options)
    return self:invokeOperation(input, {
        name = "GetInterpolatedAssetPropertyValues",
        input_schema = types.GetInterpolatedAssetPropertyValuesInput,
        output_schema = types.GetInterpolatedAssetPropertyValuesOutput,
        http_method = "GET",
        http_path = "/properties/interpolated",
    }, options)
end

function Client:invokeAssistant(input, options)
    return self:invokeOperation(input, {
        name = "InvokeAssistant",
        input_schema = types.InvokeAssistantInput,
        output_schema = types.InvokeAssistantOutput,
        http_method = "POST",
        http_path = "/assistant/invocation",
    }, options)
end

function Client:listAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPolicies",
        input_schema = types.ListAccessPoliciesInput,
        output_schema = types.ListAccessPoliciesOutput,
        http_method = "GET",
        http_path = "/access-policies",
    }, options)
end

function Client:listActions(input, options)
    return self:invokeOperation(input, {
        name = "ListActions",
        input_schema = types.ListActionsInput,
        output_schema = types.ListActionsOutput,
        http_method = "GET",
        http_path = "/actions",
    }, options)
end

function Client:listAssetModelCompositeModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetModelCompositeModels",
        input_schema = types.ListAssetModelCompositeModelsInput,
        output_schema = types.ListAssetModelCompositeModelsOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/composite-models",
    }, options)
end

function Client:listAssetModelProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetModelProperties",
        input_schema = types.ListAssetModelPropertiesInput,
        output_schema = types.ListAssetModelPropertiesOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/properties",
    }, options)
end

function Client:listAssetModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetModels",
        input_schema = types.ListAssetModelsInput,
        output_schema = types.ListAssetModelsOutput,
        http_method = "GET",
        http_path = "/asset-models",
    }, options)
end

function Client:listAssetProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetProperties",
        input_schema = types.ListAssetPropertiesInput,
        output_schema = types.ListAssetPropertiesOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/properties",
    }, options)
end

function Client:listAssetRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetRelationships",
        input_schema = types.ListAssetRelationshipsInput,
        output_schema = types.ListAssetRelationshipsOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/assetRelationships",
    }, options)
end

function Client:listAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssets",
        input_schema = types.ListAssetsInput,
        output_schema = types.ListAssetsOutput,
        http_method = "GET",
        http_path = "/assets",
    }, options)
end

function Client:listAssociatedAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedAssets",
        input_schema = types.ListAssociatedAssetsInput,
        output_schema = types.ListAssociatedAssetsOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/hierarchies",
    }, options)
end

function Client:listBulkImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBulkImportJobs",
        input_schema = types.ListBulkImportJobsInput,
        output_schema = types.ListBulkImportJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
    }, options)
end

function Client:listCompositionRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListCompositionRelationships",
        input_schema = types.ListCompositionRelationshipsInput,
        output_schema = types.ListCompositionRelationshipsOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/composition-relationships",
    }, options)
end

function Client:listComputationModelDataBindingUsages(input, options)
    return self:invokeOperation(input, {
        name = "ListComputationModelDataBindingUsages",
        input_schema = types.ListComputationModelDataBindingUsagesInput,
        output_schema = types.ListComputationModelDataBindingUsagesOutput,
        http_method = "POST",
        http_path = "/computation-models/data-binding-usages",
    }, options)
end

function Client:listComputationModelResolveToResources(input, options)
    return self:invokeOperation(input, {
        name = "ListComputationModelResolveToResources",
        input_schema = types.ListComputationModelResolveToResourcesInput,
        output_schema = types.ListComputationModelResolveToResourcesOutput,
        http_method = "GET",
        http_path = "/computation-models/{computationModelId}/resolve-to-resources",
    }, options)
end

function Client:listComputationModels(input, options)
    return self:invokeOperation(input, {
        name = "ListComputationModels",
        input_schema = types.ListComputationModelsInput,
        output_schema = types.ListComputationModelsOutput,
        http_method = "GET",
        http_path = "/computation-models",
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = types.ListDashboardsInput,
        output_schema = types.ListDashboardsOutput,
        http_method = "GET",
        http_path = "/dashboards",
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/datasets",
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
        http_method = "GET",
        http_path = "/executions",
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = types.ListGatewaysInput,
        output_schema = types.ListGatewaysOutput,
        http_method = "GET",
        http_path = "/20200301/gateways",
    }, options)
end

function Client:listInterfaceRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListInterfaceRelationships",
        input_schema = types.ListInterfaceRelationshipsInput,
        output_schema = types.ListInterfaceRelationshipsOutput,
        http_method = "GET",
        http_path = "/interface/{interfaceAssetModelId}/asset-models",
    }, options)
end

function Client:listPortals(input, options)
    return self:invokeOperation(input, {
        name = "ListPortals",
        input_schema = types.ListPortalsInput,
        output_schema = types.ListPortalsOutput,
        http_method = "GET",
        http_path = "/portals",
    }, options)
end

function Client:listProjectAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectAssets",
        input_schema = types.ListProjectAssetsInput,
        output_schema = types.ListProjectAssetsOutput,
        http_method = "GET",
        http_path = "/projects/{projectId}/assets",
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
        http_method = "GET",
        http_path = "/projects",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags",
    }, options)
end

function Client:listTimeSeries(input, options)
    return self:invokeOperation(input, {
        name = "ListTimeSeries",
        input_schema = types.ListTimeSeriesInput,
        output_schema = types.ListTimeSeriesOutput,
        http_method = "GET",
        http_path = "/timeseries",
    }, options)
end

function Client:putAssetModelInterfaceRelationship(input, options)
    return self:invokeOperation(input, {
        name = "PutAssetModelInterfaceRelationship",
        input_schema = types.PutAssetModelInterfaceRelationshipInput,
        output_schema = types.PutAssetModelInterfaceRelationshipOutput,
        http_method = "PUT",
        http_path = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship",
    }, options)
end

function Client:putDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutDefaultEncryptionConfiguration",
        input_schema = types.PutDefaultEncryptionConfigurationInput,
        output_schema = types.PutDefaultEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/account/encryption",
    }, options)
end

function Client:putLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutLoggingOptions",
        input_schema = types.PutLoggingOptionsInput,
        output_schema = types.PutLoggingOptionsOutput,
        http_method = "PUT",
        http_path = "/logging",
    }, options)
end

function Client:putStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutStorageConfiguration",
        input_schema = types.PutStorageConfigurationInput,
        output_schema = types.PutStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/account/storage",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags",
    }, options)
end

function Client:updateAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessPolicy",
        input_schema = types.UpdateAccessPolicyInput,
        output_schema = types.UpdateAccessPolicyOutput,
        http_method = "PUT",
        http_path = "/access-policies/{accessPolicyId}",
    }, options)
end

function Client:updateAsset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAsset",
        input_schema = types.UpdateAssetInput,
        output_schema = types.UpdateAssetOutput,
        http_method = "PUT",
        http_path = "/assets/{assetId}",
    }, options)
end

function Client:updateAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetModel",
        input_schema = types.UpdateAssetModelInput,
        output_schema = types.UpdateAssetModelOutput,
        http_method = "PUT",
        http_path = "/asset-models/{assetModelId}",
    }, options)
end

function Client:updateAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetModelCompositeModel",
        input_schema = types.UpdateAssetModelCompositeModelInput,
        output_schema = types.UpdateAssetModelCompositeModelOutput,
        http_method = "PUT",
        http_path = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}",
    }, options)
end

function Client:updateAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetProperty",
        input_schema = types.UpdateAssetPropertyInput,
        output_schema = types.UpdateAssetPropertyOutput,
        http_method = "PUT",
        http_path = "/assets/{assetId}/properties/{propertyId}",
    }, options)
end

function Client:updateComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComputationModel",
        input_schema = types.UpdateComputationModelInput,
        output_schema = types.UpdateComputationModelOutput,
        http_method = "POST",
        http_path = "/computation-models/{computationModelId}",
    }, options)
end

function Client:updateDashboard(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboard",
        input_schema = types.UpdateDashboardInput,
        output_schema = types.UpdateDashboardOutput,
        http_method = "PUT",
        http_path = "/dashboards/{dashboardId}",
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = types.UpdateDatasetInput,
        output_schema = types.UpdateDatasetOutput,
        http_method = "PUT",
        http_path = "/datasets/{datasetId}",
    }, options)
end

function Client:updateGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGateway",
        input_schema = types.UpdateGatewayInput,
        output_schema = types.UpdateGatewayOutput,
        http_method = "PUT",
        http_path = "/20200301/gateways/{gatewayId}",
    }, options)
end

function Client:updateGatewayCapabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayCapabilityConfiguration",
        input_schema = types.UpdateGatewayCapabilityConfigurationInput,
        output_schema = types.UpdateGatewayCapabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/20200301/gateways/{gatewayId}/capability",
    }, options)
end

function Client:updatePortal(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortal",
        input_schema = types.UpdatePortalInput,
        output_schema = types.UpdatePortalOutput,
        http_method = "PUT",
        http_path = "/portals/{portalId}",
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
        http_method = "PUT",
        http_path = "/projects/{projectId}",
    }, options)
end

return M
