local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediaconvert.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("mediaconvert.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaConvert"
    cfg.signing_name = "mediaconvert"
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

function Client:associateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCertificate",
        input_schema = types.AssociateCertificateInput,
        output_schema = types.AssociateCertificateOutput,
        http_method = "POST",
        http_path = "/2017-08-29/certificates",
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/jobs/{Id}",
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "POST",
        http_path = "/2017-08-29/jobs",
    }, options)
end

function Client:createJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobTemplate",
        input_schema = types.CreateJobTemplateInput,
        output_schema = types.CreateJobTemplateOutput,
        http_method = "POST",
        http_path = "/2017-08-29/jobTemplates",
    }, options)
end

function Client:createPreset(input, options)
    return self:invokeOperation(input, {
        name = "CreatePreset",
        input_schema = types.CreatePresetInput,
        output_schema = types.CreatePresetOutput,
        http_method = "POST",
        http_path = "/2017-08-29/presets",
    }, options)
end

function Client:createQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueue",
        input_schema = types.CreateQueueInput,
        output_schema = types.CreateQueueOutput,
        http_method = "POST",
        http_path = "/2017-08-29/queues",
    }, options)
end

function Client:createResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceShare",
        input_schema = types.CreateResourceShareInput,
        output_schema = types.CreateResourceShareOutput,
        http_method = "POST",
        http_path = "/2017-08-29/resourceShares",
    }, options)
end

function Client:deleteJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTemplate",
        input_schema = types.DeleteJobTemplateInput,
        output_schema = types.DeleteJobTemplateOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/jobTemplates/{Name}",
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/policy",
    }, options)
end

function Client:deletePreset(input, options)
    return self:invokeOperation(input, {
        name = "DeletePreset",
        input_schema = types.DeletePresetInput,
        output_schema = types.DeletePresetOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/presets/{Name}",
    }, options)
end

function Client:deleteQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueue",
        input_schema = types.DeleteQueueInput,
        output_schema = types.DeleteQueueOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/queues/{Name}",
    }, options)
end

function Client:describeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoints",
        input_schema = types.DescribeEndpointsInput,
        output_schema = types.DescribeEndpointsOutput,
        http_method = "POST",
        http_path = "/2017-08-29/endpoints",
    }, options)
end

function Client:disassociateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCertificate",
        input_schema = types.DisassociateCertificateInput,
        output_schema = types.DisassociateCertificateOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/certificates/{Arn}",
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobs/{Id}",
    }, options)
end

function Client:getJobsQueryResults(input, options)
    return self:invokeOperation(input, {
        name = "GetJobsQueryResults",
        input_schema = types.GetJobsQueryResultsInput,
        output_schema = types.GetJobsQueryResultsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobsQueries/{Id}",
    }, options)
end

function Client:getJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetJobTemplate",
        input_schema = types.GetJobTemplateInput,
        output_schema = types.GetJobTemplateOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobTemplates/{Name}",
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = types.GetPolicyInput,
        output_schema = types.GetPolicyOutput,
        http_method = "GET",
        http_path = "/2017-08-29/policy",
    }, options)
end

function Client:getPreset(input, options)
    return self:invokeOperation(input, {
        name = "GetPreset",
        input_schema = types.GetPresetInput,
        output_schema = types.GetPresetOutput,
        http_method = "GET",
        http_path = "/2017-08-29/presets/{Name}",
    }, options)
end

function Client:getQueue(input, options)
    return self:invokeOperation(input, {
        name = "GetQueue",
        input_schema = types.GetQueueInput,
        output_schema = types.GetQueueOutput,
        http_method = "GET",
        http_path = "/2017-08-29/queues/{Name}",
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobs",
    }, options)
end

function Client:listJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListJobTemplates",
        input_schema = types.ListJobTemplatesInput,
        output_schema = types.ListJobTemplatesOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobTemplates",
    }, options)
end

function Client:listPresets(input, options)
    return self:invokeOperation(input, {
        name = "ListPresets",
        input_schema = types.ListPresetsInput,
        output_schema = types.ListPresetsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/presets",
    }, options)
end

function Client:listQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListQueues",
        input_schema = types.ListQueuesInput,
        output_schema = types.ListQueuesOutput,
        http_method = "GET",
        http_path = "/2017-08-29/queues",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/2017-08-29/tags/{Arn}",
    }, options)
end

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = types.ListVersionsInput,
        output_schema = types.ListVersionsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/versions",
    }, options)
end

function Client:probe(input, options)
    return self:invokeOperation(input, {
        name = "Probe",
        input_schema = types.ProbeInput,
        output_schema = types.ProbeOutput,
        http_method = "POST",
        http_path = "/2017-08-29/probe",
    }, options)
end

function Client:putPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPolicy",
        input_schema = types.PutPolicyInput,
        output_schema = types.PutPolicyOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/policy",
    }, options)
end

function Client:searchJobs(input, options)
    return self:invokeOperation(input, {
        name = "SearchJobs",
        input_schema = types.SearchJobsInput,
        output_schema = types.SearchJobsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/search",
    }, options)
end

function Client:startJobsQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartJobsQuery",
        input_schema = types.StartJobsQueryInput,
        output_schema = types.StartJobsQueryOutput,
        http_method = "POST",
        http_path = "/2017-08-29/jobsQueries",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/2017-08-29/tags",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/tags/{Arn}",
    }, options)
end

function Client:updateJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobTemplate",
        input_schema = types.UpdateJobTemplateInput,
        output_schema = types.UpdateJobTemplateOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/jobTemplates/{Name}",
    }, options)
end

function Client:updatePreset(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePreset",
        input_schema = types.UpdatePresetInput,
        output_schema = types.UpdatePresetOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/presets/{Name}",
    }, options)
end

function Client:updateQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueue",
        input_schema = types.UpdateQueueInput,
        output_schema = types.UpdateQueueOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/queues/{Name}",
    }, options)
end

return M
