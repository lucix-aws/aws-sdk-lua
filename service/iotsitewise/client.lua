local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iotsitewise.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iotsitewise.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIoTSiteWise"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iotsitewise", signing_region = cfg.region } }
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

function Client:associateAssets(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAssets",
        input_schema = schemas.AssociateAssetsInput,
        output_schema = schemas.AssociateAssetsOutput,
        http_method = "POST",
        http_path = "/assets/{assetId}/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTimeSeriesToAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTimeSeriesToAssetProperty",
        input_schema = schemas.AssociateTimeSeriesToAssetPropertyInput,
        output_schema = schemas.AssociateTimeSeriesToAssetPropertyOutput,
        http_method = "POST",
        http_path = "/timeseries/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateProjectAssets(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateProjectAssets",
        input_schema = schemas.BatchAssociateProjectAssetsInput,
        output_schema = schemas.BatchAssociateProjectAssetsOutput,
        http_method = "POST",
        http_path = "/projects/{projectId}/assets/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateProjectAssets(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateProjectAssets",
        input_schema = schemas.BatchDisassociateProjectAssetsInput,
        output_schema = schemas.BatchDisassociateProjectAssetsOutput,
        http_method = "POST",
        http_path = "/projects/{projectId}/assets/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAssetPropertyAggregates(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAssetPropertyAggregates",
        input_schema = schemas.BatchGetAssetPropertyAggregatesInput,
        output_schema = schemas.BatchGetAssetPropertyAggregatesOutput,
        http_method = "POST",
        http_path = "/properties/batch/aggregates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAssetPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAssetPropertyValue",
        input_schema = schemas.BatchGetAssetPropertyValueInput,
        output_schema = schemas.BatchGetAssetPropertyValueOutput,
        http_method = "POST",
        http_path = "/properties/batch/latest",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAssetPropertyValueHistory(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAssetPropertyValueHistory",
        input_schema = schemas.BatchGetAssetPropertyValueHistoryInput,
        output_schema = schemas.BatchGetAssetPropertyValueHistoryOutput,
        http_method = "POST",
        http_path = "/properties/batch/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutAssetPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutAssetPropertyValue",
        input_schema = schemas.BatchPutAssetPropertyValueInput,
        output_schema = schemas.BatchPutAssetPropertyValueOutput,
        http_method = "POST",
        http_path = "/properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessPolicy",
        input_schema = schemas.CreateAccessPolicyInput,
        output_schema = schemas.CreateAccessPolicyOutput,
        http_method = "POST",
        http_path = "/access-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAsset(input, options)
    return self:invokeOperation(input, {
        name = "CreateAsset",
        input_schema = schemas.CreateAssetInput,
        output_schema = schemas.CreateAssetOutput,
        http_method = "POST",
        http_path = "/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetModel",
        input_schema = schemas.CreateAssetModelInput,
        output_schema = schemas.CreateAssetModelOutput,
        http_method = "POST",
        http_path = "/asset-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateAssetModelCompositeModel",
        input_schema = schemas.CreateAssetModelCompositeModelInput,
        output_schema = schemas.CreateAssetModelCompositeModelOutput,
        http_method = "POST",
        http_path = "/asset-models/{assetModelId}/composite-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBulkImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateBulkImportJob",
        input_schema = schemas.CreateBulkImportJobInput,
        output_schema = schemas.CreateBulkImportJobOutput,
        http_method = "POST",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputationModel",
        input_schema = schemas.CreateComputationModelInput,
        output_schema = schemas.CreateComputationModelOutput,
        http_method = "POST",
        http_path = "/computation-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDashboard(input, options)
    return self:invokeOperation(input, {
        name = "CreateDashboard",
        input_schema = schemas.CreateDashboardInput,
        output_schema = schemas.CreateDashboardOutput,
        http_method = "POST",
        http_path = "/dashboards",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = schemas.CreateDatasetInput,
        output_schema = schemas.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateGateway",
        input_schema = schemas.CreateGatewayInput,
        output_schema = schemas.CreateGatewayOutput,
        http_method = "POST",
        http_path = "/20200301/gateways",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPortal(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortal",
        input_schema = schemas.CreatePortalInput,
        output_schema = schemas.CreatePortalOutput,
        http_method = "POST",
        http_path = "/portals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = schemas.CreateProjectInput,
        output_schema = schemas.CreateProjectOutput,
        http_method = "POST",
        http_path = "/projects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessPolicy",
        input_schema = schemas.DeleteAccessPolicyInput,
        output_schema = schemas.DeleteAccessPolicyOutput,
        http_method = "DELETE",
        http_path = "/access-policies/{accessPolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAsset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAsset",
        input_schema = schemas.DeleteAssetInput,
        output_schema = schemas.DeleteAssetOutput,
        http_method = "DELETE",
        http_path = "/assets/{assetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetModel",
        input_schema = schemas.DeleteAssetModelInput,
        output_schema = schemas.DeleteAssetModelOutput,
        http_method = "DELETE",
        http_path = "/asset-models/{assetModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetModelCompositeModel",
        input_schema = schemas.DeleteAssetModelCompositeModelInput,
        output_schema = schemas.DeleteAssetModelCompositeModelOutput,
        http_method = "DELETE",
        http_path = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssetModelInterfaceRelationship(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssetModelInterfaceRelationship",
        input_schema = schemas.DeleteAssetModelInterfaceRelationshipInput,
        output_schema = schemas.DeleteAssetModelInterfaceRelationshipOutput,
        http_method = "DELETE",
        http_path = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComputationModel",
        input_schema = schemas.DeleteComputationModelInput,
        output_schema = schemas.DeleteComputationModelOutput,
        http_method = "DELETE",
        http_path = "/computation-models/{computationModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboard",
        input_schema = schemas.DeleteDashboardInput,
        output_schema = schemas.DeleteDashboardOutput,
        http_method = "DELETE",
        http_path = "/dashboards/{dashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = schemas.DeleteDatasetInput,
        output_schema = schemas.DeleteDatasetOutput,
        http_method = "DELETE",
        http_path = "/datasets/{datasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGateway",
        input_schema = schemas.DeleteGatewayInput,
        output_schema = schemas.DeleteGatewayOutput,
        http_method = "DELETE",
        http_path = "/20200301/gateways/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortal(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortal",
        input_schema = schemas.DeletePortalInput,
        output_schema = schemas.DeletePortalOutput,
        http_method = "DELETE",
        http_path = "/portals/{portalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = schemas.DeleteProjectInput,
        output_schema = schemas.DeleteProjectOutput,
        http_method = "DELETE",
        http_path = "/projects/{projectId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTimeSeries(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTimeSeries",
        input_schema = schemas.DeleteTimeSeriesInput,
        output_schema = schemas.DeleteTimeSeriesOutput,
        http_method = "POST",
        http_path = "/timeseries/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccessPolicy",
        input_schema = schemas.DescribeAccessPolicyInput,
        output_schema = schemas.DescribeAccessPolicyOutput,
        http_method = "GET",
        http_path = "/access-policies/{accessPolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAction",
        input_schema = schemas.DescribeActionInput,
        output_schema = schemas.DescribeActionOutput,
        http_method = "GET",
        http_path = "/actions/{actionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAsset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAsset",
        input_schema = schemas.DescribeAssetInput,
        output_schema = schemas.DescribeAssetOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetCompositeModel",
        input_schema = schemas.DescribeAssetCompositeModelInput,
        output_schema = schemas.DescribeAssetCompositeModelOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/composite-models/{assetCompositeModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetModel",
        input_schema = schemas.DescribeAssetModelInput,
        output_schema = schemas.DescribeAssetModelOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetModelCompositeModel",
        input_schema = schemas.DescribeAssetModelCompositeModelInput,
        output_schema = schemas.DescribeAssetModelCompositeModelOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetModelInterfaceRelationship(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetModelInterfaceRelationship",
        input_schema = schemas.DescribeAssetModelInterfaceRelationshipInput,
        output_schema = schemas.DescribeAssetModelInterfaceRelationshipOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAssetProperty",
        input_schema = schemas.DescribeAssetPropertyInput,
        output_schema = schemas.DescribeAssetPropertyOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/properties/{propertyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBulkImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBulkImportJob",
        input_schema = schemas.DescribeBulkImportJobInput,
        output_schema = schemas.DescribeBulkImportJobOutput,
        http_method = "GET",
        http_path = "/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputationModel",
        input_schema = schemas.DescribeComputationModelInput,
        output_schema = schemas.DescribeComputationModelOutput,
        http_method = "GET",
        http_path = "/computation-models/{computationModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComputationModelExecutionSummary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputationModelExecutionSummary",
        input_schema = schemas.DescribeComputationModelExecutionSummaryInput,
        output_schema = schemas.DescribeComputationModelExecutionSummaryOutput,
        http_method = "GET",
        http_path = "/computation-models/{computationModelId}/execution-summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDashboard(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDashboard",
        input_schema = schemas.DescribeDashboardInput,
        output_schema = schemas.DescribeDashboardOutput,
        http_method = "GET",
        http_path = "/dashboards/{dashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = schemas.DescribeDatasetInput,
        output_schema = schemas.DescribeDatasetOutput,
        http_method = "GET",
        http_path = "/datasets/{datasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultEncryptionConfiguration",
        input_schema = schemas.DescribeDefaultEncryptionConfigurationInput,
        output_schema = schemas.DescribeDefaultEncryptionConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/account/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = schemas.DescribeExecutionInput,
        output_schema = schemas.DescribeExecutionOutput,
        http_method = "GET",
        http_path = "/executions/{executionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGateway(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGateway",
        input_schema = schemas.DescribeGatewayInput,
        output_schema = schemas.DescribeGatewayOutput,
        http_method = "GET",
        http_path = "/20200301/gateways/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeGatewayCapabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeGatewayCapabilityConfiguration",
        input_schema = schemas.DescribeGatewayCapabilityConfigurationInput,
        output_schema = schemas.DescribeGatewayCapabilityConfigurationOutput,
        http_method = "GET",
        http_path = "/20200301/gateways/{gatewayId}/capability/{capabilityNamespace}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingOptions",
        input_schema = schemas.DescribeLoggingOptionsInput,
        output_schema = schemas.DescribeLoggingOptionsOutput,
        http_method = "GET",
        http_path = "/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePortal(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortal",
        input_schema = schemas.DescribePortalInput,
        output_schema = schemas.DescribePortalOutput,
        http_method = "GET",
        http_path = "/portals/{portalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProject(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProject",
        input_schema = schemas.DescribeProjectInput,
        output_schema = schemas.DescribeProjectOutput,
        http_method = "GET",
        http_path = "/projects/{projectId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStorageConfiguration",
        input_schema = schemas.DescribeStorageConfigurationInput,
        output_schema = schemas.DescribeStorageConfigurationOutput,
        http_method = "GET",
        http_path = "/configuration/account/storage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTimeSeries(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTimeSeries",
        input_schema = schemas.DescribeTimeSeriesInput,
        output_schema = schemas.DescribeTimeSeriesOutput,
        http_method = "GET",
        http_path = "/timeseries/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAssets(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAssets",
        input_schema = schemas.DisassociateAssetsInput,
        output_schema = schemas.DisassociateAssetsOutput,
        http_method = "POST",
        http_path = "/assets/{assetId}/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTimeSeriesFromAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTimeSeriesFromAssetProperty",
        input_schema = schemas.DisassociateTimeSeriesFromAssetPropertyInput,
        output_schema = schemas.DisassociateTimeSeriesFromAssetPropertyOutput,
        http_method = "POST",
        http_path = "/timeseries/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeAction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteAction",
        input_schema = schemas.ExecuteActionInput,
        output_schema = schemas.ExecuteActionOutput,
        http_method = "POST",
        http_path = "/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeQuery(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteQuery",
        input_schema = schemas.ExecuteQueryInput,
        output_schema = schemas.ExecuteQueryOutput,
        http_method = "POST",
        http_path = "/queries/execution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssetPropertyAggregates(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetPropertyAggregates",
        input_schema = schemas.GetAssetPropertyAggregatesInput,
        output_schema = schemas.GetAssetPropertyAggregatesOutput,
        http_method = "GET",
        http_path = "/properties/aggregates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssetPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetPropertyValue",
        input_schema = schemas.GetAssetPropertyValueInput,
        output_schema = schemas.GetAssetPropertyValueOutput,
        http_method = "GET",
        http_path = "/properties/latest",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssetPropertyValueHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetAssetPropertyValueHistory",
        input_schema = schemas.GetAssetPropertyValueHistoryInput,
        output_schema = schemas.GetAssetPropertyValueHistoryOutput,
        http_method = "GET",
        http_path = "/properties/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInterpolatedAssetPropertyValues(input, options)
    return self:invokeOperation(input, {
        name = "GetInterpolatedAssetPropertyValues",
        input_schema = schemas.GetInterpolatedAssetPropertyValuesInput,
        output_schema = schemas.GetInterpolatedAssetPropertyValuesOutput,
        http_method = "GET",
        http_path = "/properties/interpolated",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeAssistant(input, options)
    return self:invokeOperation(input, {
        name = "InvokeAssistant",
        input_schema = schemas.InvokeAssistantInput,
        output_schema = schemas.InvokeAssistantOutput,
        http_method = "POST",
        http_path = "/assistant/invocation",
        event_stream = schemas.ResponseStream,
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessPolicies",
        input_schema = schemas.ListAccessPoliciesInput,
        output_schema = schemas.ListAccessPoliciesOutput,
        http_method = "GET",
        http_path = "/access-policies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActions(input, options)
    return self:invokeOperation(input, {
        name = "ListActions",
        input_schema = schemas.ListActionsInput,
        output_schema = schemas.ListActionsOutput,
        http_method = "GET",
        http_path = "/actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetModelCompositeModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetModelCompositeModels",
        input_schema = schemas.ListAssetModelCompositeModelsInput,
        output_schema = schemas.ListAssetModelCompositeModelsOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/composite-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetModelProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetModelProperties",
        input_schema = schemas.ListAssetModelPropertiesInput,
        output_schema = schemas.ListAssetModelPropertiesOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetModels(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetModels",
        input_schema = schemas.ListAssetModelsInput,
        output_schema = schemas.ListAssetModelsOutput,
        http_method = "GET",
        http_path = "/asset-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetProperties",
        input_schema = schemas.ListAssetPropertiesInput,
        output_schema = schemas.ListAssetPropertiesOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssetRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListAssetRelationships",
        input_schema = schemas.ListAssetRelationshipsInput,
        output_schema = schemas.ListAssetRelationshipsOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/assetRelationships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssets",
        input_schema = schemas.ListAssetsInput,
        output_schema = schemas.ListAssetsOutput,
        http_method = "GET",
        http_path = "/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedAssets",
        input_schema = schemas.ListAssociatedAssetsInput,
        output_schema = schemas.ListAssociatedAssetsOutput,
        http_method = "GET",
        http_path = "/assets/{assetId}/hierarchies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBulkImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListBulkImportJobs",
        input_schema = schemas.ListBulkImportJobsInput,
        output_schema = schemas.ListBulkImportJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCompositionRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListCompositionRelationships",
        input_schema = schemas.ListCompositionRelationshipsInput,
        output_schema = schemas.ListCompositionRelationshipsOutput,
        http_method = "GET",
        http_path = "/asset-models/{assetModelId}/composition-relationships",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComputationModelDataBindingUsages(input, options)
    return self:invokeOperation(input, {
        name = "ListComputationModelDataBindingUsages",
        input_schema = schemas.ListComputationModelDataBindingUsagesInput,
        output_schema = schemas.ListComputationModelDataBindingUsagesOutput,
        http_method = "POST",
        http_path = "/computation-models/data-binding-usages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComputationModelResolveToResources(input, options)
    return self:invokeOperation(input, {
        name = "ListComputationModelResolveToResources",
        input_schema = schemas.ListComputationModelResolveToResourcesInput,
        output_schema = schemas.ListComputationModelResolveToResourcesOutput,
        http_method = "GET",
        http_path = "/computation-models/{computationModelId}/resolve-to-resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComputationModels(input, options)
    return self:invokeOperation(input, {
        name = "ListComputationModels",
        input_schema = schemas.ListComputationModelsInput,
        output_schema = schemas.ListComputationModelsOutput,
        http_method = "GET",
        http_path = "/computation-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = schemas.ListDashboardsInput,
        output_schema = schemas.ListDashboardsOutput,
        http_method = "GET",
        http_path = "/dashboards",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = schemas.ListDatasetsInput,
        output_schema = schemas.ListDatasetsOutput,
        http_method = "GET",
        http_path = "/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = schemas.ListExecutionsInput,
        output_schema = schemas.ListExecutionsOutput,
        http_method = "GET",
        http_path = "/executions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListGateways",
        input_schema = schemas.ListGatewaysInput,
        output_schema = schemas.ListGatewaysOutput,
        http_method = "GET",
        http_path = "/20200301/gateways",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInterfaceRelationships(input, options)
    return self:invokeOperation(input, {
        name = "ListInterfaceRelationships",
        input_schema = schemas.ListInterfaceRelationshipsInput,
        output_schema = schemas.ListInterfaceRelationshipsOutput,
        http_method = "GET",
        http_path = "/interface/{interfaceAssetModelId}/asset-models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortals(input, options)
    return self:invokeOperation(input, {
        name = "ListPortals",
        input_schema = schemas.ListPortalsInput,
        output_schema = schemas.ListPortalsOutput,
        http_method = "GET",
        http_path = "/portals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjectAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListProjectAssets",
        input_schema = schemas.ListProjectAssetsInput,
        output_schema = schemas.ListProjectAssetsOutput,
        http_method = "GET",
        http_path = "/projects/{projectId}/assets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = schemas.ListProjectsInput,
        output_schema = schemas.ListProjectsOutput,
        http_method = "GET",
        http_path = "/projects",
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
        http_method = "GET",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTimeSeries(input, options)
    return self:invokeOperation(input, {
        name = "ListTimeSeries",
        input_schema = schemas.ListTimeSeriesInput,
        output_schema = schemas.ListTimeSeriesOutput,
        http_method = "GET",
        http_path = "/timeseries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAssetModelInterfaceRelationship(input, options)
    return self:invokeOperation(input, {
        name = "PutAssetModelInterfaceRelationship",
        input_schema = schemas.PutAssetModelInterfaceRelationshipInput,
        output_schema = schemas.PutAssetModelInterfaceRelationshipOutput,
        http_method = "PUT",
        http_path = "/asset-models/{assetModelId}/interface/{interfaceAssetModelId}/asset-model-interface-relationship",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDefaultEncryptionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutDefaultEncryptionConfiguration",
        input_schema = schemas.PutDefaultEncryptionConfigurationInput,
        output_schema = schemas.PutDefaultEncryptionConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/account/encryption",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLoggingOptions(input, options)
    return self:invokeOperation(input, {
        name = "PutLoggingOptions",
        input_schema = schemas.PutLoggingOptionsInput,
        output_schema = schemas.PutLoggingOptionsOutput,
        http_method = "PUT",
        http_path = "/logging",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putStorageConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "PutStorageConfiguration",
        input_schema = schemas.PutStorageConfigurationInput,
        output_schema = schemas.PutStorageConfigurationOutput,
        http_method = "POST",
        http_path = "/configuration/account/storage",
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
        http_path = "/tags",
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
        http_method = "DELETE",
        http_path = "/tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccessPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessPolicy",
        input_schema = schemas.UpdateAccessPolicyInput,
        output_schema = schemas.UpdateAccessPolicyOutput,
        http_method = "PUT",
        http_path = "/access-policies/{accessPolicyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAsset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAsset",
        input_schema = schemas.UpdateAssetInput,
        output_schema = schemas.UpdateAssetOutput,
        http_method = "PUT",
        http_path = "/assets/{assetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssetModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetModel",
        input_schema = schemas.UpdateAssetModelInput,
        output_schema = schemas.UpdateAssetModelOutput,
        http_method = "PUT",
        http_path = "/asset-models/{assetModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssetModelCompositeModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetModelCompositeModel",
        input_schema = schemas.UpdateAssetModelCompositeModelInput,
        output_schema = schemas.UpdateAssetModelCompositeModelOutput,
        http_method = "PUT",
        http_path = "/asset-models/{assetModelId}/composite-models/{assetModelCompositeModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAssetProperty(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAssetProperty",
        input_schema = schemas.UpdateAssetPropertyInput,
        output_schema = schemas.UpdateAssetPropertyOutput,
        http_method = "PUT",
        http_path = "/assets/{assetId}/properties/{propertyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComputationModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComputationModel",
        input_schema = schemas.UpdateComputationModelInput,
        output_schema = schemas.UpdateComputationModelOutput,
        http_method = "POST",
        http_path = "/computation-models/{computationModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDashboard(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDashboard",
        input_schema = schemas.UpdateDashboardInput,
        output_schema = schemas.UpdateDashboardOutput,
        http_method = "PUT",
        http_path = "/dashboards/{dashboardId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataset",
        input_schema = schemas.UpdateDatasetInput,
        output_schema = schemas.UpdateDatasetOutput,
        http_method = "PUT",
        http_path = "/datasets/{datasetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGateway",
        input_schema = schemas.UpdateGatewayInput,
        output_schema = schemas.UpdateGatewayOutput,
        http_method = "PUT",
        http_path = "/20200301/gateways/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGatewayCapabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayCapabilityConfiguration",
        input_schema = schemas.UpdateGatewayCapabilityConfigurationInput,
        output_schema = schemas.UpdateGatewayCapabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/20200301/gateways/{gatewayId}/capability",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePortal(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortal",
        input_schema = schemas.UpdatePortalInput,
        output_schema = schemas.UpdatePortalOutput,
        http_method = "PUT",
        http_path = "/portals/{portalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = schemas.UpdateProjectInput,
        output_schema = schemas.UpdateProjectOutput,
        http_method = "PUT",
        http_path = "/projects/{projectId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
