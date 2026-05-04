local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("computeoptimizer.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("computeoptimizer.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ComputeOptimizerService"
    cfg.signing_name = "compute-optimizer"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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

function Client:deleteRecommendationPreferences(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRecommendationPreferences",
        input_schema = types.DeleteRecommendationPreferencesInput,
        output_schema = types.DeleteRecommendationPreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRecommendationExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecommendationExportJobs",
        input_schema = types.DescribeRecommendationExportJobsInput,
        output_schema = types.DescribeRecommendationExportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportAutoScalingGroupRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportAutoScalingGroupRecommendations",
        input_schema = types.ExportAutoScalingGroupRecommendationsInput,
        output_schema = types.ExportAutoScalingGroupRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportEBSVolumeRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportEBSVolumeRecommendations",
        input_schema = types.ExportEBSVolumeRecommendationsInput,
        output_schema = types.ExportEBSVolumeRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportEC2InstanceRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportEC2InstanceRecommendations",
        input_schema = types.ExportEC2InstanceRecommendationsInput,
        output_schema = types.ExportEC2InstanceRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportECSServiceRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportECSServiceRecommendations",
        input_schema = types.ExportECSServiceRecommendationsInput,
        output_schema = types.ExportECSServiceRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportIdleRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportIdleRecommendations",
        input_schema = types.ExportIdleRecommendationsInput,
        output_schema = types.ExportIdleRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportLambdaFunctionRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportLambdaFunctionRecommendations",
        input_schema = types.ExportLambdaFunctionRecommendationsInput,
        output_schema = types.ExportLambdaFunctionRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportLicenseRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportLicenseRecommendations",
        input_schema = types.ExportLicenseRecommendationsInput,
        output_schema = types.ExportLicenseRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:exportRDSDatabaseRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ExportRDSDatabaseRecommendations",
        input_schema = types.ExportRDSDatabaseRecommendationsInput,
        output_schema = types.ExportRDSDatabaseRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAutoScalingGroupRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoScalingGroupRecommendations",
        input_schema = types.GetAutoScalingGroupRecommendationsInput,
        output_schema = types.GetAutoScalingGroupRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEBSVolumeRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetEBSVolumeRecommendations",
        input_schema = types.GetEBSVolumeRecommendationsInput,
        output_schema = types.GetEBSVolumeRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEC2InstanceRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetEC2InstanceRecommendations",
        input_schema = types.GetEC2InstanceRecommendationsInput,
        output_schema = types.GetEC2InstanceRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEC2RecommendationProjectedMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetEC2RecommendationProjectedMetrics",
        input_schema = types.GetEC2RecommendationProjectedMetricsInput,
        output_schema = types.GetEC2RecommendationProjectedMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getECSServiceRecommendationProjectedMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetECSServiceRecommendationProjectedMetrics",
        input_schema = types.GetECSServiceRecommendationProjectedMetricsInput,
        output_schema = types.GetECSServiceRecommendationProjectedMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getECSServiceRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetECSServiceRecommendations",
        input_schema = types.GetECSServiceRecommendationsInput,
        output_schema = types.GetECSServiceRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEffectiveRecommendationPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetEffectiveRecommendationPreferences",
        input_schema = types.GetEffectiveRecommendationPreferencesInput,
        output_schema = types.GetEffectiveRecommendationPreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEnrollmentStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetEnrollmentStatus",
        input_schema = types.GetEnrollmentStatusInput,
        output_schema = types.GetEnrollmentStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEnrollmentStatusesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "GetEnrollmentStatusesForOrganization",
        input_schema = types.GetEnrollmentStatusesForOrganizationInput,
        output_schema = types.GetEnrollmentStatusesForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIdleRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetIdleRecommendations",
        input_schema = types.GetIdleRecommendationsInput,
        output_schema = types.GetIdleRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLambdaFunctionRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetLambdaFunctionRecommendations",
        input_schema = types.GetLambdaFunctionRecommendationsInput,
        output_schema = types.GetLambdaFunctionRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getLicenseRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseRecommendations",
        input_schema = types.GetLicenseRecommendationsInput,
        output_schema = types.GetLicenseRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRDSDatabaseRecommendationProjectedMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetRDSDatabaseRecommendationProjectedMetrics",
        input_schema = types.GetRDSDatabaseRecommendationProjectedMetricsInput,
        output_schema = types.GetRDSDatabaseRecommendationProjectedMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRDSDatabaseRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "GetRDSDatabaseRecommendations",
        input_schema = types.GetRDSDatabaseRecommendationsInput,
        output_schema = types.GetRDSDatabaseRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRecommendationPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendationPreferences",
        input_schema = types.GetRecommendationPreferencesInput,
        output_schema = types.GetRecommendationPreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRecommendationSummaries(input, options)
    return self:invokeOperation(input, {
        name = "GetRecommendationSummaries",
        input_schema = types.GetRecommendationSummariesInput,
        output_schema = types.GetRecommendationSummariesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putRecommendationPreferences(input, options)
    return self:invokeOperation(input, {
        name = "PutRecommendationPreferences",
        input_schema = types.PutRecommendationPreferencesInput,
        output_schema = types.PutRecommendationPreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateEnrollmentStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnrollmentStatus",
        input_schema = types.UpdateEnrollmentStatusInput,
        output_schema = types.UpdateEnrollmentStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
