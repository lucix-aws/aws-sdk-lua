local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mediaconvert.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("mediaconvert.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MediaConvert"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mediaconvert", signing_region = cfg.region } }
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

function Client:associateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCertificate",
        input_schema = schemas.AssociateCertificateInput,
        output_schema = schemas.AssociateCertificateOutput,
        http_method = "POST",
        http_path = "/2017-08-29/certificates",
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
        http_path = "/2017-08-29/jobs/{Id}",
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
        http_path = "/2017-08-29/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobTemplate",
        input_schema = schemas.CreateJobTemplateInput,
        output_schema = schemas.CreateJobTemplateOutput,
        http_method = "POST",
        http_path = "/2017-08-29/jobTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPreset(input, options)
    return self:invokeOperation(input, {
        name = "CreatePreset",
        input_schema = schemas.CreatePresetInput,
        output_schema = schemas.CreatePresetOutput,
        http_method = "POST",
        http_path = "/2017-08-29/presets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueue",
        input_schema = schemas.CreateQueueInput,
        output_schema = schemas.CreateQueueOutput,
        http_method = "POST",
        http_path = "/2017-08-29/queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceShare",
        input_schema = schemas.CreateResourceShareInput,
        output_schema = schemas.CreateResourceShareOutput,
        http_method = "POST",
        http_path = "/2017-08-29/resourceShares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTemplate",
        input_schema = schemas.DeleteJobTemplateInput,
        output_schema = schemas.DeleteJobTemplateOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/jobTemplates/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = schemas.DeletePolicyInput,
        output_schema = schemas.DeletePolicyOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePreset(input, options)
    return self:invokeOperation(input, {
        name = "DeletePreset",
        input_schema = schemas.DeletePresetInput,
        output_schema = schemas.DeletePresetOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/presets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueue",
        input_schema = schemas.DeleteQueueInput,
        output_schema = schemas.DeleteQueueOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/queues/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoints",
        input_schema = schemas.DescribeEndpointsInput,
        output_schema = schemas.DescribeEndpointsOutput,
        http_method = "POST",
        http_path = "/2017-08-29/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCertificate",
        input_schema = schemas.DisassociateCertificateInput,
        output_schema = schemas.DisassociateCertificateOutput,
        http_method = "DELETE",
        http_path = "/2017-08-29/certificates/{Arn}",
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
        http_path = "/2017-08-29/jobs/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobsQueryResults(input, options)
    return self:invokeOperation(input, {
        name = "GetJobsQueryResults",
        input_schema = schemas.GetJobsQueryResultsInput,
        output_schema = schemas.GetJobsQueryResultsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobsQueries/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetJobTemplate",
        input_schema = schemas.GetJobTemplateInput,
        output_schema = schemas.GetJobTemplateOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobTemplates/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPolicy",
        input_schema = schemas.GetPolicyInput,
        output_schema = schemas.GetPolicyOutput,
        http_method = "GET",
        http_path = "/2017-08-29/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPreset(input, options)
    return self:invokeOperation(input, {
        name = "GetPreset",
        input_schema = schemas.GetPresetInput,
        output_schema = schemas.GetPresetOutput,
        http_method = "GET",
        http_path = "/2017-08-29/presets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueue(input, options)
    return self:invokeOperation(input, {
        name = "GetQueue",
        input_schema = schemas.GetQueueInput,
        output_schema = schemas.GetQueueOutput,
        http_method = "GET",
        http_path = "/2017-08-29/queues/{Name}",
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
        http_path = "/2017-08-29/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListJobTemplates",
        input_schema = schemas.ListJobTemplatesInput,
        output_schema = schemas.ListJobTemplatesOutput,
        http_method = "GET",
        http_path = "/2017-08-29/jobTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPresets(input, options)
    return self:invokeOperation(input, {
        name = "ListPresets",
        input_schema = schemas.ListPresetsInput,
        output_schema = schemas.ListPresetsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/presets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListQueues",
        input_schema = schemas.ListQueuesInput,
        output_schema = schemas.ListQueuesOutput,
        http_method = "GET",
        http_path = "/2017-08-29/queues",
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
        http_path = "/2017-08-29/tags/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListVersions",
        input_schema = schemas.ListVersionsInput,
        output_schema = schemas.ListVersionsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:probe(input, options)
    return self:invokeOperation(input, {
        name = "Probe",
        input_schema = schemas.ProbeInput,
        output_schema = schemas.ProbeOutput,
        http_method = "POST",
        http_path = "/2017-08-29/probe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPolicy",
        input_schema = schemas.PutPolicyInput,
        output_schema = schemas.PutPolicyOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/policy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchJobs(input, options)
    return self:invokeOperation(input, {
        name = "SearchJobs",
        input_schema = schemas.SearchJobsInput,
        output_schema = schemas.SearchJobsOutput,
        http_method = "GET",
        http_path = "/2017-08-29/search",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startJobsQuery(input, options)
    return self:invokeOperation(input, {
        name = "StartJobsQuery",
        input_schema = schemas.StartJobsQueryInput,
        output_schema = schemas.StartJobsQueryOutput,
        http_method = "POST",
        http_path = "/2017-08-29/jobsQueries",
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
        http_path = "/2017-08-29/tags",
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
        http_method = "PUT",
        http_path = "/2017-08-29/tags/{Arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobTemplate",
        input_schema = schemas.UpdateJobTemplateInput,
        output_schema = schemas.UpdateJobTemplateOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/jobTemplates/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePreset(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePreset",
        input_schema = schemas.UpdatePresetInput,
        output_schema = schemas.UpdatePresetOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/presets/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueue",
        input_schema = schemas.UpdateQueueInput,
        output_schema = schemas.UpdateQueueOutput,
        http_method = "PUT",
        http_path = "/2017-08-29/queues/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
