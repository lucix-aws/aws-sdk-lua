local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("dataexchange.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("dataexchange.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DataExchange"
    cfg.signing_name = "dataexchange"
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

function Client:acceptDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDataGrant",
        input_schema = types.AcceptDataGrantInput,
        output_schema = types.AcceptDataGrantOutput,
        http_method = "POST",
        http_path = "/v1/data-grants/{DataGrantArn}/accept",
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "DELETE",
        http_path = "/v1/jobs/{JobId}",
    }, options)
end

function Client:createDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataGrant",
        input_schema = types.CreateDataGrantInput,
        output_schema = types.CreateDataGrantOutput,
        http_method = "POST",
        http_path = "/v1/data-grants",
    }, options)
end

function Client:createDataSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSet",
        input_schema = types.CreateDataSetInput,
        output_schema = types.CreateDataSetOutput,
        http_method = "POST",
        http_path = "/v1/data-sets",
    }, options)
end

function Client:createEventAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventAction",
        input_schema = types.CreateEventActionInput,
        output_schema = types.CreateEventActionOutput,
        http_method = "POST",
        http_path = "/v1/event-actions",
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "POST",
        http_path = "/v1/jobs",
    }, options)
end

function Client:createRevision(input, options)
    return self:invokeOperation(input, {
        name = "CreateRevision",
        input_schema = types.CreateRevisionInput,
        output_schema = types.CreateRevisionOutput,
        http_method = "POST",
        http_path = "/v1/data-sets/{DataSetId}/revisions",
    }, options)
end

function Client:deleteAsset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAsset",
        input_schema = types.DeleteAssetInput,
        output_schema = types.DeleteAssetOutput,
        http_method = "DELETE",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
    }, options)
end

function Client:deleteDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataGrant",
        input_schema = types.DeleteDataGrantInput,
        output_schema = types.DeleteDataGrantOutput,
        http_method = "DELETE",
        http_path = "/v1/data-grants/{DataGrantId}",
    }, options)
end

function Client:deleteDataSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSet",
        input_schema = types.DeleteDataSetInput,
        output_schema = types.DeleteDataSetOutput,
        http_method = "DELETE",
        http_path = "/v1/data-sets/{DataSetId}",
    }, options)
end

function Client:deleteEventAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventAction",
        input_schema = types.DeleteEventActionInput,
        output_schema = types.DeleteEventActionOutput,
        http_method = "DELETE",
        http_path = "/v1/event-actions/{EventActionId}",
    }, options)
end

function Client:deleteRevision(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRevision",
        input_schema = types.DeleteRevisionInput,
        output_schema = types.DeleteRevisionOutput,
        http_method = "DELETE",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
    }, options)
end

function Client:getAsset(input, options)
    return self:invokeOperation(input, {
        name = "GetAsset",
        input_schema = types.GetAssetInput,
        output_schema = types.GetAssetOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
    }, options)
end

function Client:getDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetDataGrant",
        input_schema = types.GetDataGrantInput,
        output_schema = types.GetDataGrantOutput,
        http_method = "GET",
        http_path = "/v1/data-grants/{DataGrantId}",
    }, options)
end

function Client:getDataSet(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSet",
        input_schema = types.GetDataSetInput,
        output_schema = types.GetDataSetOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}",
    }, options)
end

function Client:getEventAction(input, options)
    return self:invokeOperation(input, {
        name = "GetEventAction",
        input_schema = types.GetEventActionInput,
        output_schema = types.GetEventActionOutput,
        http_method = "GET",
        http_path = "/v1/event-actions/{EventActionId}",
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "GET",
        http_path = "/v1/jobs/{JobId}",
    }, options)
end

function Client:getReceivedDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetReceivedDataGrant",
        input_schema = types.GetReceivedDataGrantInput,
        output_schema = types.GetReceivedDataGrantOutput,
        http_method = "GET",
        http_path = "/v1/received-data-grants/{DataGrantArn}",
    }, options)
end

function Client:getRevision(input, options)
    return self:invokeOperation(input, {
        name = "GetRevision",
        input_schema = types.GetRevisionInput,
        output_schema = types.GetRevisionOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
    }, options)
end

function Client:listDataGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListDataGrants",
        input_schema = types.ListDataGrantsInput,
        output_schema = types.ListDataGrantsOutput,
        http_method = "GET",
        http_path = "/v1/data-grants",
    }, options)
end

function Client:listDataSetRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSetRevisions",
        input_schema = types.ListDataSetRevisionsInput,
        output_schema = types.ListDataSetRevisionsOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions",
    }, options)
end

function Client:listDataSets(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSets",
        input_schema = types.ListDataSetsInput,
        output_schema = types.ListDataSetsOutput,
        http_method = "GET",
        http_path = "/v1/data-sets",
    }, options)
end

function Client:listEventActions(input, options)
    return self:invokeOperation(input, {
        name = "ListEventActions",
        input_schema = types.ListEventActionsInput,
        output_schema = types.ListEventActionsOutput,
        http_method = "GET",
        http_path = "/v1/event-actions",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/v1/jobs",
    }, options)
end

function Client:listReceivedDataGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedDataGrants",
        input_schema = types.ListReceivedDataGrantsInput,
        output_schema = types.ListReceivedDataGrantsOutput,
        http_method = "GET",
        http_path = "/v1/received-data-grants",
    }, options)
end

function Client:listRevisionAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListRevisionAssets",
        input_schema = types.ListRevisionAssetsInput,
        output_schema = types.ListRevisionAssetsOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets",
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

function Client:revokeRevision(input, options)
    return self:invokeOperation(input, {
        name = "RevokeRevision",
        input_schema = types.RevokeRevisionInput,
        output_schema = types.RevokeRevisionOutput,
        http_method = "POST",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke",
    }, options)
end

function Client:sendApiAsset(input, options)
    return self:invokeOperation(input, {
        name = "SendApiAsset",
        input_schema = types.SendApiAssetInput,
        output_schema = types.SendApiAssetOutput,
        http_method = "POST",
        http_path = "/v1",
    }, options)
end

function Client:sendDataSetNotification(input, options)
    return self:invokeOperation(input, {
        name = "SendDataSetNotification",
        input_schema = types.SendDataSetNotificationInput,
        output_schema = types.SendDataSetNotificationOutput,
        http_method = "POST",
        http_path = "/v1/data-sets/{DataSetId}/notification",
    }, options)
end

function Client:startJob(input, options)
    return self:invokeOperation(input, {
        name = "StartJob",
        input_schema = types.StartJobInput,
        output_schema = types.StartJobOutput,
        http_method = "PATCH",
        http_path = "/v1/jobs/{JobId}",
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

function Client:updateAsset(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAsset",
        input_schema = types.UpdateAssetInput,
        output_schema = types.UpdateAssetOutput,
        http_method = "PATCH",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
    }, options)
end

function Client:updateDataSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSet",
        input_schema = types.UpdateDataSetInput,
        output_schema = types.UpdateDataSetOutput,
        http_method = "PATCH",
        http_path = "/v1/data-sets/{DataSetId}",
    }, options)
end

function Client:updateEventAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventAction",
        input_schema = types.UpdateEventActionInput,
        output_schema = types.UpdateEventActionOutput,
        http_method = "PATCH",
        http_path = "/v1/event-actions/{EventActionId}",
    }, options)
end

function Client:updateRevision(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRevision",
        input_schema = types.UpdateRevisionInput,
        output_schema = types.UpdateRevisionOutput,
        http_method = "PATCH",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
    }, options)
end

return M
