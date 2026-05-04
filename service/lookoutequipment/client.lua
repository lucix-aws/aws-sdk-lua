local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lookoutequipment.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("lookoutequipment.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSLookoutEquipmentFrontendService"
    cfg.signing_name = "awslookoutequipmentfrontendservice"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:createDataset(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataset",
        input_schema = types.CreateDatasetInput,
        output_schema = types.CreateDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "CreateInferenceScheduler",
        input_schema = types.CreateInferenceSchedulerInput,
        output_schema = types.CreateInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLabel(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabel",
        input_schema = types.CreateLabelInput,
        output_schema = types.CreateLabelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabelGroup",
        input_schema = types.CreateLabelGroupInput,
        output_schema = types.CreateLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = types.CreateModelInput,
        output_schema = types.CreateModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "CreateRetrainingScheduler",
        input_schema = types.CreateRetrainingSchedulerInput,
        output_schema = types.CreateRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDataset(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataset",
        input_schema = types.DeleteDatasetInput,
        output_schema = types.DeleteDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInferenceScheduler",
        input_schema = types.DeleteInferenceSchedulerInput,
        output_schema = types.DeleteInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLabel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabel",
        input_schema = types.DeleteLabelInput,
        output_schema = types.DeleteLabelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLabelGroup",
        input_schema = types.DeleteLabelGroupInput,
        output_schema = types.DeleteLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = types.DeleteModelInput,
        output_schema = types.DeleteModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRetrainingScheduler",
        input_schema = types.DeleteRetrainingSchedulerInput,
        output_schema = types.DeleteRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataIngestionJob",
        input_schema = types.DescribeDataIngestionJobInput,
        output_schema = types.DescribeDataIngestionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDataset(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataset",
        input_schema = types.DescribeDatasetInput,
        output_schema = types.DescribeDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInferenceScheduler",
        input_schema = types.DescribeInferenceSchedulerInput,
        output_schema = types.DescribeInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLabel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLabel",
        input_schema = types.DescribeLabelInput,
        output_schema = types.DescribeLabelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLabelGroup",
        input_schema = types.DescribeLabelGroupInput,
        output_schema = types.DescribeLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModel",
        input_schema = types.DescribeModelInput,
        output_schema = types.DescribeModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelVersion",
        input_schema = types.DescribeModelVersionInput,
        output_schema = types.DescribeModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = types.DescribeResourcePolicyInput,
        output_schema = types.DescribeResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRetrainingScheduler",
        input_schema = types.DescribeRetrainingSchedulerInput,
        output_schema = types.DescribeRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importDataset(input, options)
    return self:invokeOperation(input, {
        name = "ImportDataset",
        input_schema = types.ImportDatasetInput,
        output_schema = types.ImportDatasetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "ImportModelVersion",
        input_schema = types.ImportModelVersionInput,
        output_schema = types.ImportModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDataIngestionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDataIngestionJobs",
        input_schema = types.ListDataIngestionJobsInput,
        output_schema = types.ListDataIngestionJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDatasets(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasets",
        input_schema = types.ListDatasetsInput,
        output_schema = types.ListDatasetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInferenceEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceEvents",
        input_schema = types.ListInferenceEventsInput,
        output_schema = types.ListInferenceEventsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInferenceExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceExecutions",
        input_schema = types.ListInferenceExecutionsInput,
        output_schema = types.ListInferenceExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listInferenceSchedulers(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceSchedulers",
        input_schema = types.ListInferenceSchedulersInput,
        output_schema = types.ListInferenceSchedulersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLabelGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListLabelGroups",
        input_schema = types.ListLabelGroupsInput,
        output_schema = types.ListLabelGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLabels(input, options)
    return self:invokeOperation(input, {
        name = "ListLabels",
        input_schema = types.ListLabelsInput,
        output_schema = types.ListLabelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listModels(input, options)
    return self:invokeOperation(input, {
        name = "ListModels",
        input_schema = types.ListModelsInput,
        output_schema = types.ListModelsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listModelVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListModelVersions",
        input_schema = types.ListModelVersionsInput,
        output_schema = types.ListModelVersionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRetrainingSchedulers(input, options)
    return self:invokeOperation(input, {
        name = "ListRetrainingSchedulers",
        input_schema = types.ListRetrainingSchedulersInput,
        output_schema = types.ListRetrainingSchedulersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSensorStatistics(input, options)
    return self:invokeOperation(input, {
        name = "ListSensorStatistics",
        input_schema = types.ListSensorStatisticsInput,
        output_schema = types.ListSensorStatisticsOutput,
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

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDataIngestionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartDataIngestionJob",
        input_schema = types.StartDataIngestionJobInput,
        output_schema = types.StartDataIngestionJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StartInferenceScheduler",
        input_schema = types.StartInferenceSchedulerInput,
        output_schema = types.StartInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StartRetrainingScheduler",
        input_schema = types.StartRetrainingSchedulerInput,
        output_schema = types.StartRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StopInferenceScheduler",
        input_schema = types.StopInferenceSchedulerInput,
        output_schema = types.StopInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "StopRetrainingScheduler",
        input_schema = types.StopRetrainingSchedulerInput,
        output_schema = types.StopRetrainingSchedulerOutput,
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

function Client:updateActiveModelVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateActiveModelVersion",
        input_schema = types.UpdateActiveModelVersionInput,
        output_schema = types.UpdateActiveModelVersionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateInferenceScheduler(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInferenceScheduler",
        input_schema = types.UpdateInferenceSchedulerInput,
        output_schema = types.UpdateInferenceSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateLabelGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLabelGroup",
        input_schema = types.UpdateLabelGroupInput,
        output_schema = types.UpdateLabelGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = types.UpdateModelInput,
        output_schema = types.UpdateModelOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRetrainingScheduler(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRetrainingScheduler",
        input_schema = types.UpdateRetrainingSchedulerInput,
        output_schema = types.UpdateRetrainingSchedulerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
