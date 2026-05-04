local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("healthlake.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("healthlake.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "HealthLake"
    cfg.signing_name = "healthlake"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:createFHIRDatastore(input, options)
    return self:invokeOperation(input, {
        name = "CreateFHIRDatastore",
        input_schema = types.CreateFHIRDatastoreInput,
        output_schema = types.CreateFHIRDatastoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteFHIRDatastore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFHIRDatastore",
        input_schema = types.DeleteFHIRDatastoreInput,
        output_schema = types.DeleteFHIRDatastoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFHIRDatastore(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFHIRDatastore",
        input_schema = types.DescribeFHIRDatastoreInput,
        output_schema = types.DescribeFHIRDatastoreOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFHIRExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFHIRExportJob",
        input_schema = types.DescribeFHIRExportJobInput,
        output_schema = types.DescribeFHIRExportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeFHIRImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFHIRImportJob",
        input_schema = types.DescribeFHIRImportJobInput,
        output_schema = types.DescribeFHIRImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFHIRDatastores(input, options)
    return self:invokeOperation(input, {
        name = "ListFHIRDatastores",
        input_schema = types.ListFHIRDatastoresInput,
        output_schema = types.ListFHIRDatastoresOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFHIRExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListFHIRExportJobs",
        input_schema = types.ListFHIRExportJobsInput,
        output_schema = types.ListFHIRExportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFHIRImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListFHIRImportJobs",
        input_schema = types.ListFHIRImportJobsInput,
        output_schema = types.ListFHIRImportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFHIRExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartFHIRExportJob",
        input_schema = types.StartFHIRExportJobInput,
        output_schema = types.StartFHIRExportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFHIRImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartFHIRImportJob",
        input_schema = types.StartFHIRImportJobInput,
        output_schema = types.StartFHIRImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
