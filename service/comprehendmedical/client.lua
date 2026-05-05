local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("comprehendmedical.endpoint_rules")
local schemas = require("comprehendmedical.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.DescribeEntitiesDetectionV2JobInput,
        output_schema = schemas.DescribeEntitiesDetectionV2JobOutput,
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
        input_schema = schemas.DescribeICD10CMInferenceJobInput,
        output_schema = schemas.DescribeICD10CMInferenceJobOutput,
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
        input_schema = schemas.DescribePHIDetectionJobInput,
        output_schema = schemas.DescribePHIDetectionJobOutput,
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
        input_schema = schemas.DescribeRxNormInferenceJobInput,
        output_schema = schemas.DescribeRxNormInferenceJobOutput,
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
        input_schema = schemas.DescribeSNOMEDCTInferenceJobInput,
        output_schema = schemas.DescribeSNOMEDCTInferenceJobOutput,
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
        input_schema = schemas.DetectEntitiesInput,
        output_schema = schemas.DetectEntitiesOutput,
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
        input_schema = schemas.DetectEntitiesV2Input,
        output_schema = schemas.DetectEntitiesV2Output,
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
        input_schema = schemas.DetectPHIInput,
        output_schema = schemas.DetectPHIOutput,
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
        input_schema = schemas.InferICD10CMInput,
        output_schema = schemas.InferICD10CMOutput,
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
        input_schema = schemas.InferRxNormInput,
        output_schema = schemas.InferRxNormOutput,
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
        input_schema = schemas.InferSNOMEDCTInput,
        output_schema = schemas.InferSNOMEDCTOutput,
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
        input_schema = schemas.ListEntitiesDetectionV2JobsInput,
        output_schema = schemas.ListEntitiesDetectionV2JobsOutput,
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
        input_schema = schemas.ListICD10CMInferenceJobsInput,
        output_schema = schemas.ListICD10CMInferenceJobsOutput,
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
        input_schema = schemas.ListPHIDetectionJobsInput,
        output_schema = schemas.ListPHIDetectionJobsOutput,
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
        input_schema = schemas.ListRxNormInferenceJobsInput,
        output_schema = schemas.ListRxNormInferenceJobsOutput,
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
        input_schema = schemas.ListSNOMEDCTInferenceJobsInput,
        output_schema = schemas.ListSNOMEDCTInferenceJobsOutput,
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
        input_schema = schemas.StartEntitiesDetectionV2JobInput,
        output_schema = schemas.StartEntitiesDetectionV2JobOutput,
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
        input_schema = schemas.StartICD10CMInferenceJobInput,
        output_schema = schemas.StartICD10CMInferenceJobOutput,
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
        input_schema = schemas.StartPHIDetectionJobInput,
        output_schema = schemas.StartPHIDetectionJobOutput,
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
        input_schema = schemas.StartRxNormInferenceJobInput,
        output_schema = schemas.StartRxNormInferenceJobOutput,
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
        input_schema = schemas.StartSNOMEDCTInferenceJobInput,
        output_schema = schemas.StartSNOMEDCTInferenceJobOutput,
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
        input_schema = schemas.StopEntitiesDetectionV2JobInput,
        output_schema = schemas.StopEntitiesDetectionV2JobOutput,
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
        input_schema = schemas.StopICD10CMInferenceJobInput,
        output_schema = schemas.StopICD10CMInferenceJobOutput,
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
        input_schema = schemas.StopPHIDetectionJobInput,
        output_schema = schemas.StopPHIDetectionJobOutput,
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
        input_schema = schemas.StopRxNormInferenceJobInput,
        output_schema = schemas.StopRxNormInferenceJobOutput,
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
        input_schema = schemas.StopSNOMEDCTInferenceJobInput,
        output_schema = schemas.StopSNOMEDCTInferenceJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
