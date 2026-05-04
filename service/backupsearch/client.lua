local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("backupsearch.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("backupsearch.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CryoBackupSearchService"
    cfg.signing_name = "cryobackupsearchservice"
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

function Client:getSearchJob(input, options)
    return self:invokeOperation(input, {
        name = "GetSearchJob",
        input_schema = types.GetSearchJobInput,
        output_schema = types.GetSearchJobOutput,
        http_method = "GET",
        http_path = "/search-jobs/{SearchJobIdentifier}",
    }, options)
end

function Client:getSearchResultExportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetSearchResultExportJob",
        input_schema = types.GetSearchResultExportJobInput,
        output_schema = types.GetSearchResultExportJobOutput,
        http_method = "GET",
        http_path = "/export-search-jobs/{ExportJobIdentifier}",
    }, options)
end

function Client:listSearchJobBackups(input, options)
    return self:invokeOperation(input, {
        name = "ListSearchJobBackups",
        input_schema = types.ListSearchJobBackupsInput,
        output_schema = types.ListSearchJobBackupsOutput,
        http_method = "GET",
        http_path = "/search-jobs/{SearchJobIdentifier}/backups",
    }, options)
end

function Client:listSearchJobResults(input, options)
    return self:invokeOperation(input, {
        name = "ListSearchJobResults",
        input_schema = types.ListSearchJobResultsInput,
        output_schema = types.ListSearchJobResultsOutput,
        http_method = "GET",
        http_path = "/search-jobs/{SearchJobIdentifier}/search-results",
    }, options)
end

function Client:listSearchJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSearchJobs",
        input_schema = types.ListSearchJobsInput,
        output_schema = types.ListSearchJobsOutput,
        http_method = "GET",
        http_path = "/search-jobs",
    }, options)
end

function Client:listSearchResultExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSearchResultExportJobs",
        input_schema = types.ListSearchResultExportJobsInput,
        output_schema = types.ListSearchResultExportJobsOutput,
        http_method = "GET",
        http_path = "/export-search-jobs",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:startSearchJob(input, options)
    return self:invokeOperation(input, {
        name = "StartSearchJob",
        input_schema = types.StartSearchJobInput,
        output_schema = types.StartSearchJobOutput,
        http_method = "PUT",
        http_path = "/search-jobs",
    }, options)
end

function Client:startSearchResultExportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartSearchResultExportJob",
        input_schema = types.StartSearchResultExportJobInput,
        output_schema = types.StartSearchResultExportJobOutput,
        http_method = "PUT",
        http_path = "/export-search-jobs",
    }, options)
end

function Client:stopSearchJob(input, options)
    return self:invokeOperation(input, {
        name = "StopSearchJob",
        input_schema = types.StopSearchJobInput,
        output_schema = types.StopSearchJobOutput,
        http_method = "PUT",
        http_path = "/search-jobs/{SearchJobIdentifier}/actions/cancel",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

return M
