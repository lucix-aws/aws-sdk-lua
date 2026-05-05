local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bedrockdataautomation.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("bedrockdataautomation.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonBedrockKeystoneBuildTimeService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bedrock", signing_region = cfg.region } }
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

function Client:copyBlueprintStage(input, options)
    return self:invokeOperation(input, {
        name = "CopyBlueprintStage",
        input_schema = schemas.CopyBlueprintStageInput,
        output_schema = schemas.CopyBlueprintStageOutput,
        http_method = "PUT",
        http_path = "/blueprints/{blueprintArn}/copy-stage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueprint",
        input_schema = schemas.CreateBlueprintInput,
        output_schema = schemas.CreateBlueprintOutput,
        http_method = "PUT",
        http_path = "/blueprints/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBlueprintVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateBlueprintVersion",
        input_schema = schemas.CreateBlueprintVersionInput,
        output_schema = schemas.CreateBlueprintVersionOutput,
        http_method = "POST",
        http_path = "/blueprints/{blueprintArn}/versions/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataAutomationLibrary",
        input_schema = schemas.CreateDataAutomationLibraryInput,
        output_schema = schemas.CreateDataAutomationLibraryOutput,
        http_method = "PUT",
        http_path = "/data-automation-libraries/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataAutomationProject",
        input_schema = schemas.CreateDataAutomationProjectInput,
        output_schema = schemas.CreateDataAutomationProjectOutput,
        http_method = "PUT",
        http_path = "/data-automation-projects/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBlueprint",
        input_schema = schemas.DeleteBlueprintInput,
        output_schema = schemas.DeleteBlueprintOutput,
        http_method = "DELETE",
        http_path = "/blueprints/{blueprintArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataAutomationLibrary",
        input_schema = schemas.DeleteDataAutomationLibraryInput,
        output_schema = schemas.DeleteDataAutomationLibraryOutput,
        http_method = "DELETE",
        http_path = "/data-automation-libraries/{libraryArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataAutomationProject",
        input_schema = schemas.DeleteDataAutomationProjectInput,
        output_schema = schemas.DeleteDataAutomationProjectOutput,
        http_method = "DELETE",
        http_path = "/data-automation-projects/{projectArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprint",
        input_schema = schemas.GetBlueprintInput,
        output_schema = schemas.GetBlueprintOutput,
        http_method = "POST",
        http_path = "/blueprints/{blueprintArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBlueprintOptimizationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprintOptimizationStatus",
        input_schema = schemas.GetBlueprintOptimizationStatusInput,
        output_schema = schemas.GetBlueprintOptimizationStatusOutput,
        http_method = "POST",
        http_path = "/getBlueprintOptimizationStatus/{invocationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationLibrary",
        input_schema = schemas.GetDataAutomationLibraryInput,
        output_schema = schemas.GetDataAutomationLibraryOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataAutomationLibraryEntity(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationLibraryEntity",
        input_schema = schemas.GetDataAutomationLibraryEntityInput,
        output_schema = schemas.GetDataAutomationLibraryEntityOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/entityType/{entityType}/entities/{entityId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataAutomationLibraryIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationLibraryIngestionJob",
        input_schema = schemas.GetDataAutomationLibraryIngestionJobInput,
        output_schema = schemas.GetDataAutomationLibraryIngestionJobOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/{jobArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "GetDataAutomationProject",
        input_schema = schemas.GetDataAutomationProjectInput,
        output_schema = schemas.GetDataAutomationProjectOutput,
        http_method = "POST",
        http_path = "/data-automation-projects/{projectArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeBlueprintOptimizationAsync(input, options)
    return self:invokeOperation(input, {
        name = "InvokeBlueprintOptimizationAsync",
        input_schema = schemas.InvokeBlueprintOptimizationAsyncInput,
        output_schema = schemas.InvokeBlueprintOptimizationAsyncOutput,
        http_method = "POST",
        http_path = "/invokeBlueprintOptimizationAsync",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:invokeDataAutomationLibraryIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "InvokeDataAutomationLibraryIngestionJob",
        input_schema = schemas.InvokeDataAutomationLibraryIngestionJobInput,
        output_schema = schemas.InvokeDataAutomationLibraryIngestionJobOutput,
        http_method = "PUT",
        http_path = "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "ListBlueprints",
        input_schema = schemas.ListBlueprintsInput,
        output_schema = schemas.ListBlueprintsOutput,
        http_method = "POST",
        http_path = "/blueprints/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataAutomationLibraries(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationLibraries",
        input_schema = schemas.ListDataAutomationLibrariesInput,
        output_schema = schemas.ListDataAutomationLibrariesOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataAutomationLibraryEntities(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationLibraryEntities",
        input_schema = schemas.ListDataAutomationLibraryEntitiesInput,
        output_schema = schemas.ListDataAutomationLibraryEntitiesOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/entityType/{entityType}/entities/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataAutomationLibraryIngestionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationLibraryIngestionJobs",
        input_schema = schemas.ListDataAutomationLibraryIngestionJobsInput,
        output_schema = schemas.ListDataAutomationLibraryIngestionJobsOutput,
        http_method = "POST",
        http_path = "/data-automation-libraries/{libraryArn}/library-ingestion-jobs/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataAutomationProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListDataAutomationProjects",
        input_schema = schemas.ListDataAutomationProjectsInput,
        output_schema = schemas.ListDataAutomationProjectsOutput,
        http_method = "POST",
        http_path = "/data-automation-projects/",
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
        http_path = "/listTagsForResource",
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
        http_path = "/tagResource",
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
        http_path = "/untagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBlueprint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBlueprint",
        input_schema = schemas.UpdateBlueprintInput,
        output_schema = schemas.UpdateBlueprintOutput,
        http_method = "PUT",
        http_path = "/blueprints/{blueprintArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataAutomationLibrary(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataAutomationLibrary",
        input_schema = schemas.UpdateDataAutomationLibraryInput,
        output_schema = schemas.UpdateDataAutomationLibraryOutput,
        http_method = "PUT",
        http_path = "/data-automation-libraries/{libraryArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataAutomationProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataAutomationProject",
        input_schema = schemas.UpdateDataAutomationProjectInput,
        output_schema = schemas.UpdateDataAutomationProjectOutput,
        http_method = "PUT",
        http_path = "/data-automation-projects/{projectArn}/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
