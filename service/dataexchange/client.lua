local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("dataexchange.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("dataexchange.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "DataExchange"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "dataexchange", signing_region = cfg.region } }
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

function Client:acceptDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDataGrant",
        input_schema = schemas.AcceptDataGrantInput,
        output_schema = schemas.AcceptDataGrantOutput,
        http_method = "POST",
        http_path = "/v1/data-grants/{DataGrantArn}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = schemas.CancelJobInput,
        output_schema = schemas.CancelJobOutput,
        http_method = "DELETE",
        http_path = "/v1/jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataGrant",
        input_schema = schemas.CreateDataGrantInput,
        output_schema = schemas.CreateDataGrantOutput,
        http_method = "POST",
        http_path = "/v1/data-grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSet",
        input_schema = schemas.CreateDataSetInput,
        output_schema = schemas.CreateDataSetOutput,
        http_method = "POST",
        http_path = "/v1/data-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventAction",
        input_schema = schemas.CreateEventActionInput,
        output_schema = schemas.CreateEventActionOutput,
        http_method = "POST",
        http_path = "/v1/event-actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = schemas.CreateJobInput,
        output_schema = schemas.CreateJobOutput,
        http_method = "POST",
        http_path = "/v1/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRevision(input, options)
    return self:invokeOperation(input, {
        name = "CreateRevision",
        input_schema = schemas.CreateRevisionInput,
        output_schema = schemas.CreateRevisionOutput,
        http_method = "POST",
        http_path = "/v1/data-sets/{DataSetId}/revisions",
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
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataGrant",
        input_schema = schemas.DeleteDataGrantInput,
        output_schema = schemas.DeleteDataGrantOutput,
        http_method = "DELETE",
        http_path = "/v1/data-grants/{DataGrantId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSet",
        input_schema = schemas.DeleteDataSetInput,
        output_schema = schemas.DeleteDataSetOutput,
        http_method = "DELETE",
        http_path = "/v1/data-sets/{DataSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventAction",
        input_schema = schemas.DeleteEventActionInput,
        output_schema = schemas.DeleteEventActionOutput,
        http_method = "DELETE",
        http_path = "/v1/event-actions/{EventActionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRevision(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRevision",
        input_schema = schemas.DeleteRevisionInput,
        output_schema = schemas.DeleteRevisionOutput,
        http_method = "DELETE",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAsset(input, options)
    return self:invokeOperation(input, {
        name = "GetAsset",
        input_schema = schemas.GetAssetInput,
        output_schema = schemas.GetAssetOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetDataGrant",
        input_schema = schemas.GetDataGrantInput,
        output_schema = schemas.GetDataGrantOutput,
        http_method = "GET",
        http_path = "/v1/data-grants/{DataGrantId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSet(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSet",
        input_schema = schemas.GetDataSetInput,
        output_schema = schemas.GetDataSetOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEventAction(input, options)
    return self:invokeOperation(input, {
        name = "GetEventAction",
        input_schema = schemas.GetEventActionInput,
        output_schema = schemas.GetEventActionOutput,
        http_method = "GET",
        http_path = "/v1/event-actions/{EventActionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = schemas.GetJobInput,
        output_schema = schemas.GetJobOutput,
        http_method = "GET",
        http_path = "/v1/jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReceivedDataGrant(input, options)
    return self:invokeOperation(input, {
        name = "GetReceivedDataGrant",
        input_schema = schemas.GetReceivedDataGrantInput,
        output_schema = schemas.GetReceivedDataGrantOutput,
        http_method = "GET",
        http_path = "/v1/received-data-grants/{DataGrantArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRevision(input, options)
    return self:invokeOperation(input, {
        name = "GetRevision",
        input_schema = schemas.GetRevisionInput,
        output_schema = schemas.GetRevisionOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListDataGrants",
        input_schema = schemas.ListDataGrantsInput,
        output_schema = schemas.ListDataGrantsOutput,
        http_method = "GET",
        http_path = "/v1/data-grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSetRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSetRevisions",
        input_schema = schemas.ListDataSetRevisionsInput,
        output_schema = schemas.ListDataSetRevisionsOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSets(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSets",
        input_schema = schemas.ListDataSetsInput,
        output_schema = schemas.ListDataSetsOutput,
        http_method = "GET",
        http_path = "/v1/data-sets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEventActions(input, options)
    return self:invokeOperation(input, {
        name = "ListEventActions",
        input_schema = schemas.ListEventActionsInput,
        output_schema = schemas.ListEventActionsOutput,
        http_method = "GET",
        http_path = "/v1/event-actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
        http_method = "GET",
        http_path = "/v1/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReceivedDataGrants(input, options)
    return self:invokeOperation(input, {
        name = "ListReceivedDataGrants",
        input_schema = schemas.ListReceivedDataGrantsInput,
        output_schema = schemas.ListReceivedDataGrantsOutput,
        http_method = "GET",
        http_path = "/v1/received-data-grants",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRevisionAssets(input, options)
    return self:invokeOperation(input, {
        name = "ListRevisionAssets",
        input_schema = schemas.ListRevisionAssetsInput,
        output_schema = schemas.ListRevisionAssetsOutput,
        http_method = "GET",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeRevision(input, options)
    return self:invokeOperation(input, {
        name = "RevokeRevision",
        input_schema = schemas.RevokeRevisionInput,
        output_schema = schemas.RevokeRevisionOutput,
        http_method = "POST",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/revoke",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendApiAsset(input, options)
    return self:invokeOperation(input, {
        name = "SendApiAsset",
        input_schema = schemas.SendApiAssetInput,
        output_schema = schemas.SendApiAssetOutput,
        http_method = "POST",
        http_path = "/v1",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendDataSetNotification(input, options)
    return self:invokeOperation(input, {
        name = "SendDataSetNotification",
        input_schema = schemas.SendDataSetNotificationInput,
        output_schema = schemas.SendDataSetNotificationOutput,
        http_method = "POST",
        http_path = "/v1/data-sets/{DataSetId}/notification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startJob(input, options)
    return self:invokeOperation(input, {
        name = "StartJob",
        input_schema = schemas.StartJobInput,
        output_schema = schemas.StartJobOutput,
        http_method = "PATCH",
        http_path = "/v1/jobs/{JobId}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_method = "PATCH",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}/assets/{AssetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSet",
        input_schema = schemas.UpdateDataSetInput,
        output_schema = schemas.UpdateDataSetOutput,
        http_method = "PATCH",
        http_path = "/v1/data-sets/{DataSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEventAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEventAction",
        input_schema = schemas.UpdateEventActionInput,
        output_schema = schemas.UpdateEventActionOutput,
        http_method = "PATCH",
        http_path = "/v1/event-actions/{EventActionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRevision(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRevision",
        input_schema = schemas.UpdateRevisionInput,
        output_schema = schemas.UpdateRevisionOutput,
        http_method = "PATCH",
        http_path = "/v1/data-sets/{DataSetId}/revisions/{RevisionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
