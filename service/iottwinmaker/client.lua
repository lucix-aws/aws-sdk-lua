local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("iottwinmaker.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("iottwinmaker.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIoTTwinMaker"
    cfg.signing_name = "awsiottwinmaker"
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

function Client:batchPutPropertyValues(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutPropertyValues",
        input_schema = types.BatchPutPropertyValuesInput,
        output_schema = types.BatchPutPropertyValuesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entity-properties",
    }, options)
end

function Client:cancelMetadataTransferJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMetadataTransferJob",
        input_schema = types.CancelMetadataTransferJobInput,
        output_schema = types.CancelMetadataTransferJobOutput,
        http_method = "PUT",
        http_path = "/metadata-transfer-jobs/{metadataTransferJobId}/cancel",
    }, options)
end

function Client:createComponentType(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponentType",
        input_schema = types.CreateComponentTypeInput,
        output_schema = types.CreateComponentTypeOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
    }, options)
end

function Client:createEntity(input, options)
    return self:invokeOperation(input, {
        name = "CreateEntity",
        input_schema = types.CreateEntityInput,
        output_schema = types.CreateEntityOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entities",
    }, options)
end

function Client:createMetadataTransferJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateMetadataTransferJob",
        input_schema = types.CreateMetadataTransferJobInput,
        output_schema = types.CreateMetadataTransferJobOutput,
        http_method = "POST",
        http_path = "/metadata-transfer-jobs",
    }, options)
end

function Client:createScene(input, options)
    return self:invokeOperation(input, {
        name = "CreateScene",
        input_schema = types.CreateSceneInput,
        output_schema = types.CreateSceneOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/scenes",
    }, options)
end

function Client:createSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateSyncJob",
        input_schema = types.CreateSyncJobInput,
        output_schema = types.CreateSyncJobOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/sync-jobs/{syncSource}",
    }, options)
end

function Client:createWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspace",
        input_schema = types.CreateWorkspaceInput,
        output_schema = types.CreateWorkspaceOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}",
    }, options)
end

function Client:deleteComponentType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponentType",
        input_schema = types.DeleteComponentTypeInput,
        output_schema = types.DeleteComponentTypeOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
    }, options)
end

function Client:deleteEntity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntity",
        input_schema = types.DeleteEntityInput,
        output_schema = types.DeleteEntityOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}",
    }, options)
end

function Client:deleteScene(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScene",
        input_schema = types.DeleteSceneInput,
        output_schema = types.DeleteSceneOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/scenes/{sceneId}",
    }, options)
end

function Client:deleteSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSyncJob",
        input_schema = types.DeleteSyncJobInput,
        output_schema = types.DeleteSyncJobOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/sync-jobs/{syncSource}",
    }, options)
end

function Client:deleteWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspace",
        input_schema = types.DeleteWorkspaceInput,
        output_schema = types.DeleteWorkspaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}",
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

function Client:getComponentType(input, options)
    return self:invokeOperation(input, {
        name = "GetComponentType",
        input_schema = types.GetComponentTypeInput,
        output_schema = types.GetComponentTypeOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
    }, options)
end

function Client:getEntity(input, options)
    return self:invokeOperation(input, {
        name = "GetEntity",
        input_schema = types.GetEntityInput,
        output_schema = types.GetEntityOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}",
    }, options)
end

function Client:getMetadataTransferJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMetadataTransferJob",
        input_schema = types.GetMetadataTransferJobInput,
        output_schema = types.GetMetadataTransferJobOutput,
        http_method = "GET",
        http_path = "/metadata-transfer-jobs/{metadataTransferJobId}",
    }, options)
end

function Client:getPricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetPricingPlan",
        input_schema = types.GetPricingPlanInput,
        output_schema = types.GetPricingPlanOutput,
        http_method = "GET",
        http_path = "/pricingplan",
    }, options)
end

function Client:getPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertyValue",
        input_schema = types.GetPropertyValueInput,
        output_schema = types.GetPropertyValueOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entity-properties/value",
    }, options)
end

function Client:getPropertyValueHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertyValueHistory",
        input_schema = types.GetPropertyValueHistoryInput,
        output_schema = types.GetPropertyValueHistoryOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entity-properties/history",
    }, options)
end

function Client:getScene(input, options)
    return self:invokeOperation(input, {
        name = "GetScene",
        input_schema = types.GetSceneInput,
        output_schema = types.GetSceneOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/scenes/{sceneId}",
    }, options)
end

function Client:getSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "GetSyncJob",
        input_schema = types.GetSyncJobInput,
        output_schema = types.GetSyncJobOutput,
        http_method = "GET",
        http_path = "/sync-jobs/{syncSource}",
    }, options)
end

function Client:getWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkspace",
        input_schema = types.GetWorkspaceInput,
        output_schema = types.GetWorkspaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}",
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}/components-list",
    }, options)
end

function Client:listComponentTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentTypes",
        input_schema = types.ListComponentTypesInput,
        output_schema = types.ListComponentTypesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/component-types-list",
    }, options)
end

function Client:listEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListEntities",
        input_schema = types.ListEntitiesInput,
        output_schema = types.ListEntitiesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entities-list",
    }, options)
end

function Client:listMetadataTransferJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMetadataTransferJobs",
        input_schema = types.ListMetadataTransferJobsInput,
        output_schema = types.ListMetadataTransferJobsOutput,
        http_method = "POST",
        http_path = "/metadata-transfer-jobs-list",
    }, options)
end

function Client:listProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListProperties",
        input_schema = types.ListPropertiesInput,
        output_schema = types.ListPropertiesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/properties-list",
    }, options)
end

function Client:listScenes(input, options)
    return self:invokeOperation(input, {
        name = "ListScenes",
        input_schema = types.ListScenesInput,
        output_schema = types.ListScenesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/scenes-list",
    }, options)
end

function Client:listSyncJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSyncJobs",
        input_schema = types.ListSyncJobsInput,
        output_schema = types.ListSyncJobsOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/sync-jobs-list",
    }, options)
end

function Client:listSyncResources(input, options)
    return self:invokeOperation(input, {
        name = "ListSyncResources",
        input_schema = types.ListSyncResourcesInput,
        output_schema = types.ListSyncResourcesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/tags-list",
    }, options)
end

function Client:listWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaces",
        input_schema = types.ListWorkspacesInput,
        output_schema = types.ListWorkspacesOutput,
        http_method = "POST",
        http_path = "/workspaces-list",
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

function Client:updateComponentType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponentType",
        input_schema = types.UpdateComponentTypeInput,
        output_schema = types.UpdateComponentTypeOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
    }, options)
end

function Client:updateEntity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEntity",
        input_schema = types.UpdateEntityInput,
        output_schema = types.UpdateEntityOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}",
    }, options)
end

function Client:updatePricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePricingPlan",
        input_schema = types.UpdatePricingPlanInput,
        output_schema = types.UpdatePricingPlanOutput,
        http_method = "POST",
        http_path = "/pricingplan",
    }, options)
end

function Client:updateScene(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScene",
        input_schema = types.UpdateSceneInput,
        output_schema = types.UpdateSceneOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/scenes/{sceneId}",
    }, options)
end

function Client:updateWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspace",
        input_schema = types.UpdateWorkspaceInput,
        output_schema = types.UpdateWorkspaceOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}",
    }, options)
end

return M
