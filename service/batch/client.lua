local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("batch.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("batch.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBatchV20160810"
    cfg.signing_name = "batch"
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

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "POST",
        http_path = "/v1/canceljob",
    }, options)
end

function Client:createComputeEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputeEnvironment",
        input_schema = types.CreateComputeEnvironmentInput,
        output_schema = types.CreateComputeEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/createcomputeenvironment",
    }, options)
end

function Client:createConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateConsumableResource",
        input_schema = types.CreateConsumableResourceInput,
        output_schema = types.CreateConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/createconsumableresource",
    }, options)
end

function Client:createJobQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobQueue",
        input_schema = types.CreateJobQueueInput,
        output_schema = types.CreateJobQueueOutput,
        http_method = "POST",
        http_path = "/v1/createjobqueue",
    }, options)
end

function Client:createQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuotaShare",
        input_schema = types.CreateQuotaShareInput,
        output_schema = types.CreateQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/createquotashare",
    }, options)
end

function Client:createSchedulingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchedulingPolicy",
        input_schema = types.CreateSchedulingPolicyInput,
        output_schema = types.CreateSchedulingPolicyOutput,
        http_method = "POST",
        http_path = "/v1/createschedulingpolicy",
    }, options)
end

function Client:createServiceEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceEnvironment",
        input_schema = types.CreateServiceEnvironmentInput,
        output_schema = types.CreateServiceEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/createserviceenvironment",
    }, options)
end

function Client:deleteComputeEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComputeEnvironment",
        input_schema = types.DeleteComputeEnvironmentInput,
        output_schema = types.DeleteComputeEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/deletecomputeenvironment",
    }, options)
end

function Client:deleteConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConsumableResource",
        input_schema = types.DeleteConsumableResourceInput,
        output_schema = types.DeleteConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/deleteconsumableresource",
    }, options)
end

function Client:deleteJobQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobQueue",
        input_schema = types.DeleteJobQueueInput,
        output_schema = types.DeleteJobQueueOutput,
        http_method = "POST",
        http_path = "/v1/deletejobqueue",
    }, options)
end

function Client:deleteQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuotaShare",
        input_schema = types.DeleteQuotaShareInput,
        output_schema = types.DeleteQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/deletequotashare",
    }, options)
end

function Client:deleteSchedulingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchedulingPolicy",
        input_schema = types.DeleteSchedulingPolicyInput,
        output_schema = types.DeleteSchedulingPolicyOutput,
        http_method = "POST",
        http_path = "/v1/deleteschedulingpolicy",
    }, options)
end

function Client:deleteServiceEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceEnvironment",
        input_schema = types.DeleteServiceEnvironmentInput,
        output_schema = types.DeleteServiceEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/deleteserviceenvironment",
    }, options)
end

function Client:deregisterJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterJobDefinition",
        input_schema = types.DeregisterJobDefinitionInput,
        output_schema = types.DeregisterJobDefinitionOutput,
        http_method = "POST",
        http_path = "/v1/deregisterjobdefinition",
    }, options)
end

function Client:describeComputeEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputeEnvironments",
        input_schema = types.DescribeComputeEnvironmentsInput,
        output_schema = types.DescribeComputeEnvironmentsOutput,
        http_method = "POST",
        http_path = "/v1/describecomputeenvironments",
    }, options)
end

function Client:describeConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConsumableResource",
        input_schema = types.DescribeConsumableResourceInput,
        output_schema = types.DescribeConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/describeconsumableresource",
    }, options)
end

function Client:describeJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobDefinitions",
        input_schema = types.DescribeJobDefinitionsInput,
        output_schema = types.DescribeJobDefinitionsOutput,
        http_method = "POST",
        http_path = "/v1/describejobdefinitions",
    }, options)
end

function Client:describeJobQueues(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobQueues",
        input_schema = types.DescribeJobQueuesInput,
        output_schema = types.DescribeJobQueuesOutput,
        http_method = "POST",
        http_path = "/v1/describejobqueues",
    }, options)
end

function Client:describeJobs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobs",
        input_schema = types.DescribeJobsInput,
        output_schema = types.DescribeJobsOutput,
        http_method = "POST",
        http_path = "/v1/describejobs",
    }, options)
end

function Client:describeQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuotaShare",
        input_schema = types.DescribeQuotaShareInput,
        output_schema = types.DescribeQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/describequotashare",
    }, options)
end

function Client:describeSchedulingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchedulingPolicies",
        input_schema = types.DescribeSchedulingPoliciesInput,
        output_schema = types.DescribeSchedulingPoliciesOutput,
        http_method = "POST",
        http_path = "/v1/describeschedulingpolicies",
    }, options)
end

function Client:describeServiceEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceEnvironments",
        input_schema = types.DescribeServiceEnvironmentsInput,
        output_schema = types.DescribeServiceEnvironmentsOutput,
        http_method = "POST",
        http_path = "/v1/describeserviceenvironments",
    }, options)
end

function Client:describeServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceJob",
        input_schema = types.DescribeServiceJobInput,
        output_schema = types.DescribeServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/describeservicejob",
    }, options)
end

function Client:getJobQueueSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetJobQueueSnapshot",
        input_schema = types.GetJobQueueSnapshotInput,
        output_schema = types.GetJobQueueSnapshotOutput,
        http_method = "POST",
        http_path = "/v1/getjobqueuesnapshot",
    }, options)
end

function Client:listConsumableResources(input, options)
    return self:invokeOperation(input, {
        name = "ListConsumableResources",
        input_schema = types.ListConsumableResourcesInput,
        output_schema = types.ListConsumableResourcesOutput,
        http_method = "POST",
        http_path = "/v1/listconsumableresources",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "POST",
        http_path = "/v1/listjobs",
    }, options)
end

function Client:listJobsByConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "ListJobsByConsumableResource",
        input_schema = types.ListJobsByConsumableResourceInput,
        output_schema = types.ListJobsByConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/listjobsbyconsumableresource",
    }, options)
end

function Client:listQuotaShares(input, options)
    return self:invokeOperation(input, {
        name = "ListQuotaShares",
        input_schema = types.ListQuotaSharesInput,
        output_schema = types.ListQuotaSharesOutput,
        http_method = "POST",
        http_path = "/v1/listquotashares",
    }, options)
end

function Client:listSchedulingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSchedulingPolicies",
        input_schema = types.ListSchedulingPoliciesInput,
        output_schema = types.ListSchedulingPoliciesOutput,
        http_method = "POST",
        http_path = "/v1/listschedulingpolicies",
    }, options)
end

function Client:listServiceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceJobs",
        input_schema = types.ListServiceJobsInput,
        output_schema = types.ListServiceJobsOutput,
        http_method = "POST",
        http_path = "/v1/listservicejobs",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:registerJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "RegisterJobDefinition",
        input_schema = types.RegisterJobDefinitionInput,
        output_schema = types.RegisterJobDefinitionOutput,
        http_method = "POST",
        http_path = "/v1/registerjobdefinition",
    }, options)
end

function Client:submitJob(input, options)
    return self:invokeOperation(input, {
        name = "SubmitJob",
        input_schema = types.SubmitJobInput,
        output_schema = types.SubmitJobOutput,
        http_method = "POST",
        http_path = "/v1/submitjob",
    }, options)
end

function Client:submitServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "SubmitServiceJob",
        input_schema = types.SubmitServiceJobInput,
        output_schema = types.SubmitServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/submitservicejob",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:terminateJob(input, options)
    return self:invokeOperation(input, {
        name = "TerminateJob",
        input_schema = types.TerminateJobInput,
        output_schema = types.TerminateJobOutput,
        http_method = "POST",
        http_path = "/v1/terminatejob",
    }, options)
end

function Client:terminateServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "TerminateServiceJob",
        input_schema = types.TerminateServiceJobInput,
        output_schema = types.TerminateServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/terminateservicejob",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:updateComputeEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComputeEnvironment",
        input_schema = types.UpdateComputeEnvironmentInput,
        output_schema = types.UpdateComputeEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/updatecomputeenvironment",
    }, options)
end

function Client:updateConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConsumableResource",
        input_schema = types.UpdateConsumableResourceInput,
        output_schema = types.UpdateConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/updateconsumableresource",
    }, options)
end

function Client:updateJobQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobQueue",
        input_schema = types.UpdateJobQueueInput,
        output_schema = types.UpdateJobQueueOutput,
        http_method = "POST",
        http_path = "/v1/updatejobqueue",
    }, options)
end

function Client:updateQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuotaShare",
        input_schema = types.UpdateQuotaShareInput,
        output_schema = types.UpdateQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/updatequotashare",
    }, options)
end

function Client:updateSchedulingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchedulingPolicy",
        input_schema = types.UpdateSchedulingPolicyInput,
        output_schema = types.UpdateSchedulingPolicyOutput,
        http_method = "POST",
        http_path = "/v1/updateschedulingpolicy",
    }, options)
end

function Client:updateServiceEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceEnvironment",
        input_schema = types.UpdateServiceEnvironmentInput,
        output_schema = types.UpdateServiceEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/updateserviceenvironment",
    }, options)
end

function Client:updateServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceJob",
        input_schema = types.UpdateServiceJobInput,
        output_schema = types.UpdateServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/updateservicejob",
    }, options)
end

return M
