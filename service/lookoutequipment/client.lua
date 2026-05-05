local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lookoutequipment.endpoint_rules")
local schemas = require("lookoutequipment.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSLookoutEquipmentFrontendService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lookoutequipment", signing_region = cfg.region } }
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

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = schemas.CreateDatasetInput,
        output_schema = schemas.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "CreateInferenceScheduler",
        input_schema = schemas.CreateInferenceSchedulerInput,
        output_schema = schemas.CreateInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLabel(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabel",
        input_schema = schemas.CreateLabelInput,
        output_schema = schemas.CreateLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabelGroup",
        input_schema = schemas.CreateLabelGroupInput,
        output_schema = schemas.CreateLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = schemas.CreateModelInput,
        output_schema = schemas.CreateModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "CreateRetrainingScheduler",
        input_schema = schemas.CreateRetrainingSchedulerInput,
        output_schema = schemas.CreateRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInferenceScheduler",
        input_schema = schemas.DeleteInferenceSchedulerInput,
        output_schema = schemas.DeleteInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLabel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabel",
        input_schema = schemas.DeleteLabelInput,
        output_schema = schemas.DeleteLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabelGroup",
        input_schema = schemas.DeleteLabelGroupInput,
        output_schema = schemas.DeleteLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = schemas.DeleteModelInput,
        output_schema = schemas.DeleteModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetrainingScheduler",
        input_schema = schemas.DeleteRetrainingSchedulerInput,
        output_schema = schemas.DeleteRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataIngestionJob",
        input_schema = schemas.DescribeDataIngestionJobInput,
        output_schema = schemas.DescribeDataIngestionJobOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInferenceScheduler",
        input_schema = schemas.DescribeInferenceSchedulerInput,
        output_schema = schemas.DescribeInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLabel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLabel",
        input_schema = schemas.DescribeLabelInput,
        output_schema = schemas.DescribeLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLabelGroup",
        input_schema = schemas.DescribeLabelGroupInput,
        output_schema = schemas.DescribeLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModel",
        input_schema = schemas.DescribeModelInput,
        output_schema = schemas.DescribeModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelVersion",
        input_schema = schemas.DescribeModelVersionInput,
        output_schema = schemas.DescribeModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = schemas.DescribeResourcePolicyInput,
        output_schema = schemas.DescribeResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRetrainingScheduler",
        input_schema = schemas.DescribeRetrainingSchedulerInput,
        output_schema = schemas.DescribeRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importDataset(input, options)
    return self:invokeOperation(input, {
        name = "ImportDataset",
        input_schema = schemas.ImportDatasetInput,
        output_schema = schemas.ImportDatasetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "ImportModelVersion",
        input_schema = schemas.ImportModelVersionInput,
        output_schema = schemas.ImportModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataIngestionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIngestionJobs",
        input_schema = schemas.ListDataIngestionJobsInput,
        output_schema = schemas.ListDataIngestionJobsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceEvents",
        input_schema = schemas.ListInferenceEventsInput,
        output_schema = schemas.ListInferenceEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceExecutions",
        input_schema = schemas.ListInferenceExecutionsInput,
        output_schema = schemas.ListInferenceExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceSchedulers(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceSchedulers",
        input_schema = schemas.ListInferenceSchedulersInput,
        output_schema = schemas.ListInferenceSchedulersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLabelGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListLabelGroups",
        input_schema = schemas.ListLabelGroupsInput,
        output_schema = schemas.ListLabelGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLabels(input, options)
    return self:invokeOperation(input, {
        name = "ListLabels",
        input_schema = schemas.ListLabelsInput,
        output_schema = schemas.ListLabelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModels(input, options)
    return self:invokeOperation(input, {
        name = "ListModels",
        input_schema = schemas.ListModelsInput,
        output_schema = schemas.ListModelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListModelVersions",
        input_schema = schemas.ListModelVersionsInput,
        output_schema = schemas.ListModelVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRetrainingSchedulers(input, options)
    return self:invokeOperation(input, {
        name = "ListRetrainingSchedulers",
        input_schema = schemas.ListRetrainingSchedulersInput,
        output_schema = schemas.ListRetrainingSchedulersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSensorStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ListSensorStatistics",
        input_schema = schemas.ListSensorStatisticsInput,
        output_schema = schemas.ListSensorStatisticsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDataIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDataIngestionJob",
        input_schema = schemas.StartDataIngestionJobInput,
        output_schema = schemas.StartDataIngestionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StartInferenceScheduler",
        input_schema = schemas.StartInferenceSchedulerInput,
        output_schema = schemas.StartInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StartRetrainingScheduler",
        input_schema = schemas.StartRetrainingSchedulerInput,
        output_schema = schemas.StartRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StopInferenceScheduler",
        input_schema = schemas.StopInferenceSchedulerInput,
        output_schema = schemas.StopInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StopRetrainingScheduler",
        input_schema = schemas.StopRetrainingSchedulerInput,
        output_schema = schemas.StopRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateActiveModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActiveModelVersion",
        input_schema = schemas.UpdateActiveModelVersionInput,
        output_schema = schemas.UpdateActiveModelVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInferenceScheduler",
        input_schema = schemas.UpdateInferenceSchedulerInput,
        output_schema = schemas.UpdateInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLabelGroup",
        input_schema = schemas.UpdateLabelGroupInput,
        output_schema = schemas.UpdateLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = schemas.UpdateModelInput,
        output_schema = schemas.UpdateModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRetrainingScheduler",
        input_schema = schemas.UpdateRetrainingSchedulerInput,
        output_schema = schemas.UpdateRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
