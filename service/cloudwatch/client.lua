local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudwatch.endpoint_rules")
local schemas = require("cloudwatch.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GraniteServiceVersion20100801"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "monitoring", signing_region = cfg.region } }
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

function Client:deleteAlarmMuteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarmMuteRule",
        input_schema = schemas.DeleteAlarmMuteRuleInput,
        output_schema = schemas.DeleteAlarmMuteRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlarms(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarms",
        input_schema = schemas.DeleteAlarmsInput,
        output_schema = schemas.DeleteAlarmsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnomalyDetector",
        input_schema = schemas.DeleteAnomalyDetectorInput,
        output_schema = schemas.DeleteAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDashboards(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboards",
        input_schema = schemas.DeleteDashboardsInput,
        output_schema = schemas.DeleteDashboardsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInsightRules",
        input_schema = schemas.DeleteInsightRulesInput,
        output_schema = schemas.DeleteInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMetricStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMetricStream",
        input_schema = schemas.DeleteMetricStreamInput,
        output_schema = schemas.DeleteMetricStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlarmContributors(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmContributors",
        input_schema = schemas.DescribeAlarmContributorsInput,
        output_schema = schemas.DescribeAlarmContributorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlarmHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmHistory",
        input_schema = schemas.DescribeAlarmHistoryInput,
        output_schema = schemas.DescribeAlarmHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlarms(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarms",
        input_schema = schemas.DescribeAlarmsInput,
        output_schema = schemas.DescribeAlarmsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlarmsForMetric(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmsForMetric",
        input_schema = schemas.DescribeAlarmsForMetricInput,
        output_schema = schemas.DescribeAlarmsForMetricOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnomalyDetectors(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnomalyDetectors",
        input_schema = schemas.DescribeAnomalyDetectorsInput,
        output_schema = schemas.DescribeAnomalyDetectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsightRules",
        input_schema = schemas.DescribeInsightRulesInput,
        output_schema = schemas.DescribeInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAlarmActions(input, options)
    return self:invokeOperation(input, {
        name = "DisableAlarmActions",
        input_schema = schemas.DisableAlarmActionsInput,
        output_schema = schemas.DisableAlarmActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "DisableInsightRules",
        input_schema = schemas.DisableInsightRulesInput,
        output_schema = schemas.DisableInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAlarmActions(input, options)
    return self:invokeOperation(input, {
        name = "EnableAlarmActions",
        input_schema = schemas.EnableAlarmActionsInput,
        output_schema = schemas.EnableAlarmActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "EnableInsightRules",
        input_schema = schemas.EnableInsightRulesInput,
        output_schema = schemas.EnableInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAlarmMuteRule(input, options)
    return self:invokeOperation(input, {
        name = "GetAlarmMuteRule",
        input_schema = schemas.GetAlarmMuteRuleInput,
        output_schema = schemas.GetAlarmMuteRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboard",
        input_schema = schemas.GetDashboardInput,
        output_schema = schemas.GetDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInsightRuleReport(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightRuleReport",
        input_schema = schemas.GetInsightRuleReportInput,
        output_schema = schemas.GetInsightRuleReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricData",
        input_schema = schemas.GetMetricDataInput,
        output_schema = schemas.GetMetricDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricStatistics",
        input_schema = schemas.GetMetricStatisticsInput,
        output_schema = schemas.GetMetricStatisticsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricStream(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricStream",
        input_schema = schemas.GetMetricStreamInput,
        output_schema = schemas.GetMetricStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricWidgetImage(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricWidgetImage",
        input_schema = schemas.GetMetricWidgetImageInput,
        output_schema = schemas.GetMetricWidgetImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOTelEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "GetOTelEnrichment",
        input_schema = schemas.GetOTelEnrichmentInput,
        output_schema = schemas.GetOTelEnrichmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlarmMuteRules(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmMuteRules",
        input_schema = schemas.ListAlarmMuteRulesInput,
        output_schema = schemas.ListAlarmMuteRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = schemas.ListDashboardsInput,
        output_schema = schemas.ListDashboardsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedInsightRules",
        input_schema = schemas.ListManagedInsightRulesInput,
        output_schema = schemas.ListManagedInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListMetrics",
        input_schema = schemas.ListMetricsInput,
        output_schema = schemas.ListMetricsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMetricStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricStreams",
        input_schema = schemas.ListMetricStreamsInput,
        output_schema = schemas.ListMetricStreamsOutput,
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

function Client:putAlarmMuteRule(input, options)
    return self:invokeOperation(input, {
        name = "PutAlarmMuteRule",
        input_schema = schemas.PutAlarmMuteRuleInput,
        output_schema = schemas.PutAlarmMuteRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "PutAnomalyDetector",
        input_schema = schemas.PutAnomalyDetectorInput,
        output_schema = schemas.PutAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putCompositeAlarm(input, options)
    return self:invokeOperation(input, {
        name = "PutCompositeAlarm",
        input_schema = schemas.PutCompositeAlarmInput,
        output_schema = schemas.PutCompositeAlarmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putDashboard(input, options)
    return self:invokeOperation(input, {
        name = "PutDashboard",
        input_schema = schemas.PutDashboardInput,
        output_schema = schemas.PutDashboardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInsightRule(input, options)
    return self:invokeOperation(input, {
        name = "PutInsightRule",
        input_schema = schemas.PutInsightRuleInput,
        output_schema = schemas.PutInsightRuleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putManagedInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "PutManagedInsightRules",
        input_schema = schemas.PutManagedInsightRulesInput,
        output_schema = schemas.PutManagedInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMetricAlarm(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricAlarm",
        input_schema = schemas.PutMetricAlarmInput,
        output_schema = schemas.PutMetricAlarmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMetricData(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricData",
        input_schema = schemas.PutMetricDataInput,
        output_schema = schemas.PutMetricDataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMetricStream(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricStream",
        input_schema = schemas.PutMetricStreamInput,
        output_schema = schemas.PutMetricStreamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setAlarmState(input, options)
    return self:invokeOperation(input, {
        name = "SetAlarmState",
        input_schema = schemas.SetAlarmStateInput,
        output_schema = schemas.SetAlarmStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMetricStreams(input, options)
    return self:invokeOperation(input, {
        name = "StartMetricStreams",
        input_schema = schemas.StartMetricStreamsInput,
        output_schema = schemas.StartMetricStreamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOTelEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StartOTelEnrichment",
        input_schema = schemas.StartOTelEnrichmentInput,
        output_schema = schemas.StartOTelEnrichmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMetricStreams(input, options)
    return self:invokeOperation(input, {
        name = "StopMetricStreams",
        input_schema = schemas.StopMetricStreamsInput,
        output_schema = schemas.StopMetricStreamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopOTelEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StopOTelEnrichment",
        input_schema = schemas.StopOTelEnrichmentInput,
        output_schema = schemas.StopOTelEnrichmentOutput,
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

return M
