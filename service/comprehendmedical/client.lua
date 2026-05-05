local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("comprehendmedical.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("comprehendmedical.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ComprehendMedical_20181030"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "comprehendmedical", signing_region = cfg.region } }
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

function Client:describeEntitiesDetectionV2Job(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEntitiesDetectionV2Job",
        input_schema = types.DescribeEntitiesDetectionV2JobInput,
        output_schema = types.DescribeEntitiesDetectionV2JobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeICD10CMInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeICD10CMInferenceJob",
        input_schema = types.DescribeICD10CMInferenceJobInput,
        output_schema = types.DescribeICD10CMInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePHIDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribePHIDetectionJob",
        input_schema = types.DescribePHIDetectionJobInput,
        output_schema = types.DescribePHIDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRxNormInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRxNormInferenceJob",
        input_schema = types.DescribeRxNormInferenceJobInput,
        output_schema = types.DescribeRxNormInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSNOMEDCTInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSNOMEDCTInferenceJob",
        input_schema = types.DescribeSNOMEDCTInferenceJobInput,
        output_schema = types.DescribeSNOMEDCTInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectEntities(input, options)
    return self:invokeOperation(input, {
        name = "DetectEntities",
        input_schema = types.DetectEntitiesInput,
        output_schema = types.DetectEntitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectEntitiesV2(input, options)
    return self:invokeOperation(input, {
        name = "DetectEntitiesV2",
        input_schema = types.DetectEntitiesV2Input,
        output_schema = types.DetectEntitiesV2Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detectPHI(input, options)
    return self:invokeOperation(input, {
        name = "DetectPHI",
        input_schema = types.DetectPHIInput,
        output_schema = types.DetectPHIOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inferICD10CM(input, options)
    return self:invokeOperation(input, {
        name = "InferICD10CM",
        input_schema = types.InferICD10CMInput,
        output_schema = types.InferICD10CMOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inferRxNorm(input, options)
    return self:invokeOperation(input, {
        name = "InferRxNorm",
        input_schema = types.InferRxNormInput,
        output_schema = types.InferRxNormOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inferSNOMEDCT(input, options)
    return self:invokeOperation(input, {
        name = "InferSNOMEDCT",
        input_schema = types.InferSNOMEDCTInput,
        output_schema = types.InferSNOMEDCTOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntitiesDetectionV2Jobs(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitiesDetectionV2Jobs",
        input_schema = types.ListEntitiesDetectionV2JobsInput,
        output_schema = types.ListEntitiesDetectionV2JobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listICD10CMInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListICD10CMInferenceJobs",
        input_schema = types.ListICD10CMInferenceJobsInput,
        output_schema = types.ListICD10CMInferenceJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPHIDetectionJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListPHIDetectionJobs",
        input_schema = types.ListPHIDetectionJobsInput,
        output_schema = types.ListPHIDetectionJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRxNormInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListRxNormInferenceJobs",
        input_schema = types.ListRxNormInferenceJobsInput,
        output_schema = types.ListRxNormInferenceJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSNOMEDCTInferenceJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSNOMEDCTInferenceJobs",
        input_schema = types.ListSNOMEDCTInferenceJobsInput,
        output_schema = types.ListSNOMEDCTInferenceJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEntitiesDetectionV2Job(input, options)
    return self:invokeOperation(input, {
        name = "StartEntitiesDetectionV2Job",
        input_schema = types.StartEntitiesDetectionV2JobInput,
        output_schema = types.StartEntitiesDetectionV2JobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startICD10CMInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StartICD10CMInferenceJob",
        input_schema = types.StartICD10CMInferenceJobInput,
        output_schema = types.StartICD10CMInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPHIDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StartPHIDetectionJob",
        input_schema = types.StartPHIDetectionJobInput,
        output_schema = types.StartPHIDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRxNormInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StartRxNormInferenceJob",
        input_schema = types.StartRxNormInferenceJobInput,
        output_schema = types.StartRxNormInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSNOMEDCTInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StartSNOMEDCTInferenceJob",
        input_schema = types.StartSNOMEDCTInferenceJobInput,
        output_schema = types.StartSNOMEDCTInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopEntitiesDetectionV2Job(input, options)
    return self:invokeOperation(input, {
        name = "StopEntitiesDetectionV2Job",
        input_schema = types.StopEntitiesDetectionV2JobInput,
        output_schema = types.StopEntitiesDetectionV2JobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopICD10CMInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StopICD10CMInferenceJob",
        input_schema = types.StopICD10CMInferenceJobInput,
        output_schema = types.StopICD10CMInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopPHIDetectionJob(input, options)
    return self:invokeOperation(input, {
        name = "StopPHIDetectionJob",
        input_schema = types.StopPHIDetectionJobInput,
        output_schema = types.StopPHIDetectionJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRxNormInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StopRxNormInferenceJob",
        input_schema = types.StopRxNormInferenceJobInput,
        output_schema = types.StopRxNormInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopSNOMEDCTInferenceJob(input, options)
    return self:invokeOperation(input, {
        name = "StopSNOMEDCTInferenceJob",
        input_schema = types.StopSNOMEDCTInferenceJobInput,
        output_schema = types.StopSNOMEDCTInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
