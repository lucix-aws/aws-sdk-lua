local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockdataautomation.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("bedrockdataautomation.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockKeystoneBuildTimeService"
    cfg.signing_name = "bedrock"
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

function Client:copyBlueprintStage(input, options)
    return self:invokeOperation(input, {
        name = "CopyBlueprintStage",
        input_schema = types.CopyBlueprintStageInput,
        output_schema = types.CopyBlueprintStageOutput,
        http_method = "PUT",
        http_path = "/blueprints/{blueprintArn}/copy-stage",
    }, options)
end

function Client:createBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueprint",
        input_schema = types.CreateBlueprintInput,
        output_schema = types.CreateBlueprintOutput,
        http_method = "PUT",
        http_path = "/blueprints/",
    }, options)
end

function Client:createBlueprintVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueprintVersion",
        input_schema = types.CreateBlueprintVersionInput,
        output_schema = types.CreateBlueprintVersionOutput,
        http_method = "POST",
        http_path = "/blueprints/{blueprintArn}/versions/",
    }, options)
end

function Client:createDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataAutomationLibrary",
        input_schema = types.CreateDataAutomationLibraryInput,
        output_schema = types.CreateDataAutomationLibraryOutput,
        http_method = "PUT",
        http_path = "/data-automation-libraries/",
    }, options)
end

function Client:createDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataAutomationProject",
        input_schema = types.CreateDataAutomationProjectInput,
        output_schema = types.CreateDataAutomationProjectOutput,
        http_method = "PUT",
        http_path = "/data-automation-projects/",
    }, options)
end

function Client:deleteBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBlueprint",
        input_schema = types.DeleteBlueprintInput,
        output_schema = types.DeleteBlueprintOutput,
        http_method = "DELETE",
        http_path = "/blueprints/{blueprintArn}/",
    }, options)
end

function Client:deleteDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataAutomationLibrary",
        input_schema = types.DeleteDataAutomationLibraryInput,
        output_schema = types.DeleteDataAutomationLibraryOutput,
        http_method = "DELETE",
        http_path = "/data-automation-libraries/{libraryArn}/",
    }, options)
end

function Client:deleteDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataAutomationProject",
        input_schema = types.DeleteDataAutomationProjectInput,
        output_schema = types.DeleteDataAutomationProjectOutput,
        http_method = "DELETE",
        http_path = "/data-automation-projects/{projectArn}/",
    }, options)
end

function Client:getBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprint",
        input_schema = types.GetBlueprintInput,
        output_schema = types.GetBlueprintOutput,
        http_method = "POST",
        http_path = "/blueprints/{blueprintArn}/",
    }, options)
end

function Client:getBlueprintOptimizationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprintOptimizationStatus",
        input_schema = types.GetBlueprintOptimizationStatusInput,
        output_schema = types.GetBlueprintOptimizationStatusOutput,
        http_method = "POST",
        http_path = "/getBlueprintOptimizationStatus/{invocationArn}",
    }, options)
end

function Client:getDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationLibrary",
        input_schema = types.GetDataAutomationLibraryInput,
        output_schema = types.GetDataAutomationLibraryOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/",
    }, options)
end

function Client:getDataAutomationLibraryEntity(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationLibraryEntity",
        input_schema = types.GetDataAutomationLibraryEntityInput,
        output_schema = types.GetDataAutomationLibraryEntityOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/entityType/{entityType}/entities/{entityId}",
    }, options)
end

function Client:getDataAutomationLibraryIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationLibraryIngestionJob",
        input_schema = types.GetDataAutomationLibraryIngestionJobInput,
        output_schema = types.GetDataAutomationLibraryIngestionJobOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/{jobArn}",
    }, options)
end

function Client:getDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationProject",
        input_schema = types.GetDataAutomationProjectInput,
        output_schema = types.GetDataAutomationProjectOutput,
        http_method = "POST",
        http_path = "/data-automation-projects/{projectArn}/",
    }, options)
end

function Client:invokeBlueprintOptimizationAsync(input, options)
    return self:invokeOperation(input, {
        name = "InvokeBlueprintOptimizationAsync",
        input_schema = types.InvokeBlueprintOptimizationAsyncInput,
        output_schema = types.InvokeBlueprintOptimizationAsyncOutput,
        http_method = "POST",
        http_path = "/invokeBlueprintOptimizationAsync",
    }, options)
end

function Client:invokeDataAutomationLibraryIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "InvokeDataAutomationLibraryIngestionJob",
        input_schema = types.InvokeDataAutomationLibraryIngestionJobInput,
        output_schema = types.InvokeDataAutomationLibraryIngestionJobOutput,
        http_method = "PUT",
        http_path = "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/",
    }, options)
end

function Client:listBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "ListBlueprints",
        input_schema = types.ListBlueprintsInput,
        output_schema = types.ListBlueprintsOutput,
        http_method = "POST",
        http_path = "/blueprints/",
    }, options)
end

function Client:listDataAutomationLibraries(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationLibraries",
        input_schema = types.ListDataAutomationLibrariesInput,
        output_schema = types.ListDataAutomationLibrariesOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/",
    }, options)
end

function Client:listDataAutomationLibraryEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationLibraryEntities",
        input_schema = types.ListDataAutomationLibraryEntitiesInput,
        output_schema = types.ListDataAutomationLibraryEntitiesOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/entityType/{entityType}/entities/",
    }, options)
end

function Client:listDataAutomationLibraryIngestionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationLibraryIngestionJobs",
        input_schema = types.ListDataAutomationLibraryIngestionJobsInput,
        output_schema = types.ListDataAutomationLibraryIngestionJobsOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/",
    }, options)
end

function Client:listDataAutomationProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationProjects",
        input_schema = types.ListDataAutomationProjectsInput,
        output_schema = types.ListDataAutomationProjectsOutput,
        http_method = "POST",
        http_path = "/data-automation-projects/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/listTagsForResource",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tagResource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untagResource",
    }, options)
end

function Client:updateBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBlueprint",
        input_schema = types.UpdateBlueprintInput,
        output_schema = types.UpdateBlueprintOutput,
        http_method = "PUT",
        http_path = "/blueprints/{blueprintArn}/",
    }, options)
end

function Client:updateDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataAutomationLibrary",
        input_schema = types.UpdateDataAutomationLibraryInput,
        output_schema = types.UpdateDataAutomationLibraryOutput,
        http_method = "PUT",
        http_path = "/data-automation-libraries/{libraryArn}/",
    }, options)
end

function Client:updateDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataAutomationProject",
        input_schema = types.UpdateDataAutomationProjectInput,
        output_schema = types.UpdateDataAutomationProjectOutput,
        http_method = "PUT",
        http_path = "/data-automation-projects/{projectArn}/",
    }, options)
end

return M
