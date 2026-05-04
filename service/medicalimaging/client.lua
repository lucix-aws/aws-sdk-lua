local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("medicalimaging.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("medicalimaging.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AHIGatewayService"
    cfg.signing_name = "medical-imaging"
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

function Client:copyImageSet(input, options)
    return self:invokeOperation(input, {
        name = "CopyImageSet",
        input_schema = types.CopyImageSetInput,
        output_schema = types.CopyImageSetOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{sourceImageSetId}/copyImageSet",
    }, options)
end

function Client:createDatastore(input, options)
    return self:invokeOperation(input, {
        name = "CreateDatastore",
        input_schema = types.CreateDatastoreInput,
        output_schema = types.CreateDatastoreOutput,
        http_method = "POST",
        http_path = "/datastore",
    }, options)
end

function Client:deleteDatastore(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDatastore",
        input_schema = types.DeleteDatastoreInput,
        output_schema = types.DeleteDatastoreOutput,
        http_method = "DELETE",
        http_path = "/datastore/{datastoreId}",
    }, options)
end

function Client:deleteImageSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImageSet",
        input_schema = types.DeleteImageSetInput,
        output_schema = types.DeleteImageSetOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{imageSetId}/deleteImageSet",
    }, options)
end

function Client:getDatastore(input, options)
    return self:invokeOperation(input, {
        name = "GetDatastore",
        input_schema = types.GetDatastoreInput,
        output_schema = types.GetDatastoreOutput,
        http_method = "GET",
        http_path = "/datastore/{datastoreId}",
    }, options)
end

function Client:getDICOMImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetDICOMImportJob",
        input_schema = types.GetDICOMImportJobInput,
        output_schema = types.GetDICOMImportJobOutput,
        http_method = "GET",
        http_path = "/getDICOMImportJob/datastore/{datastoreId}/job/{jobId}",
    }, options)
end

function Client:getImageFrame(input, options)
    return self:invokeOperation(input, {
        name = "GetImageFrame",
        input_schema = types.GetImageFrameInput,
        output_schema = types.GetImageFrameOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageFrame",
    }, options)
end

function Client:getImageSet(input, options)
    return self:invokeOperation(input, {
        name = "GetImageSet",
        input_schema = types.GetImageSetInput,
        output_schema = types.GetImageSetOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSet",
    }, options)
end

function Client:getImageSetMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetImageSetMetadata",
        input_schema = types.GetImageSetMetadataInput,
        output_schema = types.GetImageSetMetadataOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{imageSetId}/getImageSetMetadata",
    }, options)
end

function Client:listDatastores(input, options)
    return self:invokeOperation(input, {
        name = "ListDatastores",
        input_schema = types.ListDatastoresInput,
        output_schema = types.ListDatastoresOutput,
        http_method = "GET",
        http_path = "/datastore",
    }, options)
end

function Client:listDICOMImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDICOMImportJobs",
        input_schema = types.ListDICOMImportJobsInput,
        output_schema = types.ListDICOMImportJobsOutput,
        http_method = "GET",
        http_path = "/listDICOMImportJobs/datastore/{datastoreId}",
    }, options)
end

function Client:listImageSetVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListImageSetVersions",
        input_schema = types.ListImageSetVersionsInput,
        output_schema = types.ListImageSetVersionsOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{imageSetId}/listImageSetVersions",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:searchImageSets(input, options)
    return self:invokeOperation(input, {
        name = "SearchImageSets",
        input_schema = types.SearchImageSetsInput,
        output_schema = types.SearchImageSetsOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/searchImageSets",
    }, options)
end

function Client:startDICOMImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDICOMImportJob",
        input_schema = types.StartDICOMImportJobInput,
        output_schema = types.StartDICOMImportJobOutput,
        http_method = "POST",
        http_path = "/startDICOMImportJob/datastore/{datastoreId}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateImageSetMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImageSetMetadata",
        input_schema = types.UpdateImageSetMetadataInput,
        output_schema = types.UpdateImageSetMetadataOutput,
        http_method = "POST",
        http_path = "/datastore/{datastoreId}/imageSet/{imageSetId}/updateImageSetMetadata",
    }, options)
end

return M
