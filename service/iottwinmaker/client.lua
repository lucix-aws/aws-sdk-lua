local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("iottwinmaker.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("iottwinmaker.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIoTTwinMaker"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "iottwinmaker", signing_region = cfg.region } }
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

function Client:batchPutPropertyValues(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutPropertyValues",
        input_schema = schemas.BatchPutPropertyValuesInput,
        output_schema = schemas.BatchPutPropertyValuesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entity-properties",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMetadataTransferJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelMetadataTransferJob",
        input_schema = schemas.CancelMetadataTransferJobInput,
        output_schema = schemas.CancelMetadataTransferJobOutput,
        http_method = "PUT",
        http_path = "/metadata-transfer-jobs/{metadataTransferJobId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComponentType(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponentType",
        input_schema = schemas.CreateComponentTypeInput,
        output_schema = schemas.CreateComponentTypeOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEntity(input, options)
    return self:invokeOperation(input, {
        name = "CreateEntity",
        input_schema = schemas.CreateEntityInput,
        output_schema = schemas.CreateEntityOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entities",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMetadataTransferJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateMetadataTransferJob",
        input_schema = schemas.CreateMetadataTransferJobInput,
        output_schema = schemas.CreateMetadataTransferJobOutput,
        http_method = "POST",
        http_path = "/metadata-transfer-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScene(input, options)
    return self:invokeOperation(input, {
        name = "CreateScene",
        input_schema = schemas.CreateSceneInput,
        output_schema = schemas.CreateSceneOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/scenes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateSyncJob",
        input_schema = schemas.CreateSyncJobInput,
        output_schema = schemas.CreateSyncJobOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/sync-jobs/{syncSource}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspace",
        input_schema = schemas.CreateWorkspaceInput,
        output_schema = schemas.CreateWorkspaceOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComponentType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponentType",
        input_schema = schemas.DeleteComponentTypeInput,
        output_schema = schemas.DeleteComponentTypeOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEntity(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEntity",
        input_schema = schemas.DeleteEntityInput,
        output_schema = schemas.DeleteEntityOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScene(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScene",
        input_schema = schemas.DeleteSceneInput,
        output_schema = schemas.DeleteSceneOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/scenes/{sceneId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSyncJob",
        input_schema = schemas.DeleteSyncJobInput,
        output_schema = schemas.DeleteSyncJobOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}/sync-jobs/{syncSource}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspace",
        input_schema = schemas.DeleteWorkspaceInput,
        output_schema = schemas.DeleteWorkspaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{workspaceId}",
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

function Client:getComponentType(input, options)
    return self:invokeOperation(input, {
        name = "GetComponentType",
        input_schema = schemas.GetComponentTypeInput,
        output_schema = schemas.GetComponentTypeOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEntity(input, options)
    return self:invokeOperation(input, {
        name = "GetEntity",
        input_schema = schemas.GetEntityInput,
        output_schema = schemas.GetEntityOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetadataTransferJob(input, options)
    return self:invokeOperation(input, {
        name = "GetMetadataTransferJob",
        input_schema = schemas.GetMetadataTransferJobInput,
        output_schema = schemas.GetMetadataTransferJobOutput,
        http_method = "GET",
        http_path = "/metadata-transfer-jobs/{metadataTransferJobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "GetPricingPlan",
        input_schema = schemas.GetPricingPlanInput,
        output_schema = schemas.GetPricingPlanOutput,
        http_method = "GET",
        http_path = "/pricingplan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPropertyValue(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertyValue",
        input_schema = schemas.GetPropertyValueInput,
        output_schema = schemas.GetPropertyValueOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entity-properties/value",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPropertyValueHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetPropertyValueHistory",
        input_schema = schemas.GetPropertyValueHistoryInput,
        output_schema = schemas.GetPropertyValueHistoryOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entity-properties/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScene(input, options)
    return self:invokeOperation(input, {
        name = "GetScene",
        input_schema = schemas.GetSceneInput,
        output_schema = schemas.GetSceneOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}/scenes/{sceneId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSyncJob(input, options)
    return self:invokeOperation(input, {
        name = "GetSyncJob",
        input_schema = schemas.GetSyncJobInput,
        output_schema = schemas.GetSyncJobOutput,
        http_method = "GET",
        http_path = "/sync-jobs/{syncSource}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkspace",
        input_schema = schemas.GetWorkspaceInput,
        output_schema = schemas.GetWorkspaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{workspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = schemas.ListComponentsInput,
        output_schema = schemas.ListComponentsOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}/components-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponentTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentTypes",
        input_schema = schemas.ListComponentTypesInput,
        output_schema = schemas.ListComponentTypesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/component-types-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListEntities",
        input_schema = schemas.ListEntitiesInput,
        output_schema = schemas.ListEntitiesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/entities-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetadataTransferJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListMetadataTransferJobs",
        input_schema = schemas.ListMetadataTransferJobsInput,
        output_schema = schemas.ListMetadataTransferJobsOutput,
        http_method = "POST",
        http_path = "/metadata-transfer-jobs-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProperties(input, options)
    return self:invokeOperation(input, {
        name = "ListProperties",
        input_schema = schemas.ListPropertiesInput,
        output_schema = schemas.ListPropertiesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/properties-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listScenes(input, options)
    return self:invokeOperation(input, {
        name = "ListScenes",
        input_schema = schemas.ListScenesInput,
        output_schema = schemas.ListScenesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/scenes-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSyncJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSyncJobs",
        input_schema = schemas.ListSyncJobsInput,
        output_schema = schemas.ListSyncJobsOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/sync-jobs-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSyncResources(input, options)
    return self:invokeOperation(input, {
        name = "ListSyncResources",
        input_schema = schemas.ListSyncResourcesInput,
        output_schema = schemas.ListSyncResourcesOutput,
        http_method = "POST",
        http_path = "/workspaces/{workspaceId}/sync-jobs/{syncSource}/resources-list",
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
        http_path = "/tags-list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaces",
        input_schema = schemas.ListWorkspacesInput,
        output_schema = schemas.ListWorkspacesOutput,
        http_method = "POST",
        http_path = "/workspaces-list",
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

function Client:updateComponentType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComponentType",
        input_schema = schemas.UpdateComponentTypeInput,
        output_schema = schemas.UpdateComponentTypeOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/component-types/{componentTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEntity(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEntity",
        input_schema = schemas.UpdateEntityInput,
        output_schema = schemas.UpdateEntityOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/entities/{entityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePricingPlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePricingPlan",
        input_schema = schemas.UpdatePricingPlanInput,
        output_schema = schemas.UpdatePricingPlanOutput,
        http_method = "POST",
        http_path = "/pricingplan",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScene(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScene",
        input_schema = schemas.UpdateSceneInput,
        output_schema = schemas.UpdateSceneOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}/scenes/{sceneId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspace",
        input_schema = schemas.UpdateWorkspaceInput,
        output_schema = schemas.UpdateWorkspaceOutput,
        http_method = "PUT",
        http_path = "/workspaces/{workspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
