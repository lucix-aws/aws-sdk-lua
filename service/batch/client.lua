local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("batch.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("batch.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBatchV20160810"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "batch", signing_region = cfg.region } }
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

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = schemas.CancelJobInput,
        output_schema = schemas.CancelJobOutput,
        http_method = "POST",
        http_path = "/v1/canceljob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComputeEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputeEnvironment",
        input_schema = schemas.CreateComputeEnvironmentInput,
        output_schema = schemas.CreateComputeEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/createcomputeenvironment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateConsumableResource",
        input_schema = schemas.CreateConsumableResourceInput,
        output_schema = schemas.CreateConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/createconsumableresource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJobQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobQueue",
        input_schema = schemas.CreateJobQueueInput,
        output_schema = schemas.CreateJobQueueOutput,
        http_method = "POST",
        http_path = "/v1/createjobqueue",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuotaShare",
        input_schema = schemas.CreateQuotaShareInput,
        output_schema = schemas.CreateQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/createquotashare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSchedulingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateSchedulingPolicy",
        input_schema = schemas.CreateSchedulingPolicyInput,
        output_schema = schemas.CreateSchedulingPolicyOutput,
        http_method = "POST",
        http_path = "/v1/createschedulingpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceEnvironment",
        input_schema = schemas.CreateServiceEnvironmentInput,
        output_schema = schemas.CreateServiceEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/createserviceenvironment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComputeEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComputeEnvironment",
        input_schema = schemas.DeleteComputeEnvironmentInput,
        output_schema = schemas.DeleteComputeEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/deletecomputeenvironment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConsumableResource",
        input_schema = schemas.DeleteConsumableResourceInput,
        output_schema = schemas.DeleteConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/deleteconsumableresource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJobQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobQueue",
        input_schema = schemas.DeleteJobQueueInput,
        output_schema = schemas.DeleteJobQueueOutput,
        http_method = "POST",
        http_path = "/v1/deletejobqueue",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuotaShare",
        input_schema = schemas.DeleteQuotaShareInput,
        output_schema = schemas.DeleteQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/deletequotashare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSchedulingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSchedulingPolicy",
        input_schema = schemas.DeleteSchedulingPolicyInput,
        output_schema = schemas.DeleteSchedulingPolicyOutput,
        http_method = "POST",
        http_path = "/v1/deleteschedulingpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceEnvironment",
        input_schema = schemas.DeleteServiceEnvironmentInput,
        output_schema = schemas.DeleteServiceEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/deleteserviceenvironment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterJobDefinition",
        input_schema = schemas.DeregisterJobDefinitionInput,
        output_schema = schemas.DeregisterJobDefinitionOutput,
        http_method = "POST",
        http_path = "/v1/deregisterjobdefinition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComputeEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputeEnvironments",
        input_schema = schemas.DescribeComputeEnvironmentsInput,
        output_schema = schemas.DescribeComputeEnvironmentsOutput,
        http_method = "POST",
        http_path = "/v1/describecomputeenvironments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConsumableResource",
        input_schema = schemas.DescribeConsumableResourceInput,
        output_schema = schemas.DescribeConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/describeconsumableresource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobDefinitions",
        input_schema = schemas.DescribeJobDefinitionsInput,
        output_schema = schemas.DescribeJobDefinitionsOutput,
        http_method = "POST",
        http_path = "/v1/describejobdefinitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobQueues(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobQueues",
        input_schema = schemas.DescribeJobQueuesInput,
        output_schema = schemas.DescribeJobQueuesOutput,
        http_method = "POST",
        http_path = "/v1/describejobqueues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobs",
        input_schema = schemas.DescribeJobsInput,
        output_schema = schemas.DescribeJobsOutput,
        http_method = "POST",
        http_path = "/v1/describejobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuotaShare",
        input_schema = schemas.DescribeQuotaShareInput,
        output_schema = schemas.DescribeQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/describequotashare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSchedulingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSchedulingPolicies",
        input_schema = schemas.DescribeSchedulingPoliciesInput,
        output_schema = schemas.DescribeSchedulingPoliciesOutput,
        http_method = "POST",
        http_path = "/v1/describeschedulingpolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceEnvironments",
        input_schema = schemas.DescribeServiceEnvironmentsInput,
        output_schema = schemas.DescribeServiceEnvironmentsOutput,
        http_method = "POST",
        http_path = "/v1/describeserviceenvironments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceJob",
        input_schema = schemas.DescribeServiceJobInput,
        output_schema = schemas.DescribeServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/describeservicejob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobQueueSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetJobQueueSnapshot",
        input_schema = schemas.GetJobQueueSnapshotInput,
        output_schema = schemas.GetJobQueueSnapshotOutput,
        http_method = "POST",
        http_path = "/v1/getjobqueuesnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConsumableResources(input, options)
    return self:invokeOperation(input, {
        name = "ListConsumableResources",
        input_schema = schemas.ListConsumableResourcesInput,
        output_schema = schemas.ListConsumableResourcesOutput,
        http_method = "POST",
        http_path = "/v1/listconsumableresources",
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
        http_method = "POST",
        http_path = "/v1/listjobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobsByConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "ListJobsByConsumableResource",
        input_schema = schemas.ListJobsByConsumableResourceInput,
        output_schema = schemas.ListJobsByConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/listjobsbyconsumableresource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQuotaShares(input, options)
    return self:invokeOperation(input, {
        name = "ListQuotaShares",
        input_schema = schemas.ListQuotaSharesInput,
        output_schema = schemas.ListQuotaSharesOutput,
        http_method = "POST",
        http_path = "/v1/listquotashares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSchedulingPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSchedulingPolicies",
        input_schema = schemas.ListSchedulingPoliciesInput,
        output_schema = schemas.ListSchedulingPoliciesOutput,
        http_method = "POST",
        http_path = "/v1/listschedulingpolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceJobs",
        input_schema = schemas.ListServiceJobsInput,
        output_schema = schemas.ListServiceJobsOutput,
        http_method = "POST",
        http_path = "/v1/listservicejobs",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "RegisterJobDefinition",
        input_schema = schemas.RegisterJobDefinitionInput,
        output_schema = schemas.RegisterJobDefinitionOutput,
        http_method = "POST",
        http_path = "/v1/registerjobdefinition",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitJob(input, options)
    return self:invokeOperation(input, {
        name = "SubmitJob",
        input_schema = schemas.SubmitJobInput,
        output_schema = schemas.SubmitJobOutput,
        http_method = "POST",
        http_path = "/v1/submitjob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "SubmitServiceJob",
        input_schema = schemas.SubmitServiceJobInput,
        output_schema = schemas.SubmitServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/submitservicejob",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateJob(input, options)
    return self:invokeOperation(input, {
        name = "TerminateJob",
        input_schema = schemas.TerminateJobInput,
        output_schema = schemas.TerminateJobOutput,
        http_method = "POST",
        http_path = "/v1/terminatejob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "TerminateServiceJob",
        input_schema = schemas.TerminateServiceJobInput,
        output_schema = schemas.TerminateServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/terminateservicejob",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComputeEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComputeEnvironment",
        input_schema = schemas.UpdateComputeEnvironmentInput,
        output_schema = schemas.UpdateComputeEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/updatecomputeenvironment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConsumableResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConsumableResource",
        input_schema = schemas.UpdateConsumableResourceInput,
        output_schema = schemas.UpdateConsumableResourceOutput,
        http_method = "POST",
        http_path = "/v1/updateconsumableresource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJobQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobQueue",
        input_schema = schemas.UpdateJobQueueInput,
        output_schema = schemas.UpdateJobQueueOutput,
        http_method = "POST",
        http_path = "/v1/updatejobqueue",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuotaShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuotaShare",
        input_schema = schemas.UpdateQuotaShareInput,
        output_schema = schemas.UpdateQuotaShareOutput,
        http_method = "POST",
        http_path = "/v1/updatequotashare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSchedulingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSchedulingPolicy",
        input_schema = schemas.UpdateSchedulingPolicyInput,
        output_schema = schemas.UpdateSchedulingPolicyOutput,
        http_method = "POST",
        http_path = "/v1/updateschedulingpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceEnvironment",
        input_schema = schemas.UpdateServiceEnvironmentInput,
        output_schema = schemas.UpdateServiceEnvironmentOutput,
        http_method = "POST",
        http_path = "/v1/updateserviceenvironment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceJob",
        input_schema = schemas.UpdateServiceJobInput,
        output_schema = schemas.UpdateServiceJobOutput,
        http_method = "POST",
        http_path = "/v1/updateservicejob",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
