local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudwatch.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudwatch.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GraniteServiceVersion20100801"
    cfg.signing_name = "graniteserviceversion20100801"
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

function Client:deleteAlarmMuteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarmMuteRule",
        input_schema = types.DeleteAlarmMuteRuleInput,
        output_schema = types.DeleteAlarmMuteRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAlarms(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarms",
        input_schema = types.DeleteAlarmsInput,
        output_schema = types.DeleteAlarmsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnomalyDetector",
        input_schema = types.DeleteAnomalyDetectorInput,
        output_schema = types.DeleteAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDashboards(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDashboards",
        input_schema = types.DeleteDashboardsInput,
        output_schema = types.DeleteDashboardsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInsightRules",
        input_schema = types.DeleteInsightRulesInput,
        output_schema = types.DeleteInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteMetricStream(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMetricStream",
        input_schema = types.DeleteMetricStreamInput,
        output_schema = types.DeleteMetricStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAlarmContributors(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmContributors",
        input_schema = types.DescribeAlarmContributorsInput,
        output_schema = types.DescribeAlarmContributorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAlarmHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmHistory",
        input_schema = types.DescribeAlarmHistoryInput,
        output_schema = types.DescribeAlarmHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAlarms(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarms",
        input_schema = types.DescribeAlarmsInput,
        output_schema = types.DescribeAlarmsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAlarmsForMetric(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlarmsForMetric",
        input_schema = types.DescribeAlarmsForMetricInput,
        output_schema = types.DescribeAlarmsForMetricOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAnomalyDetectors(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnomalyDetectors",
        input_schema = types.DescribeAnomalyDetectorsInput,
        output_schema = types.DescribeAnomalyDetectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInsightRules",
        input_schema = types.DescribeInsightRulesInput,
        output_schema = types.DescribeInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableAlarmActions(input, options)
    return self:invokeOperation(input, {
        name = "DisableAlarmActions",
        input_schema = types.DisableAlarmActionsInput,
        output_schema = types.DisableAlarmActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "DisableInsightRules",
        input_schema = types.DisableInsightRulesInput,
        output_schema = types.DisableInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableAlarmActions(input, options)
    return self:invokeOperation(input, {
        name = "EnableAlarmActions",
        input_schema = types.EnableAlarmActionsInput,
        output_schema = types.EnableAlarmActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "EnableInsightRules",
        input_schema = types.EnableInsightRulesInput,
        output_schema = types.EnableInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAlarmMuteRule(input, options)
    return self:invokeOperation(input, {
        name = "GetAlarmMuteRule",
        input_schema = types.GetAlarmMuteRuleInput,
        output_schema = types.GetAlarmMuteRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDashboard(input, options)
    return self:invokeOperation(input, {
        name = "GetDashboard",
        input_schema = types.GetDashboardInput,
        output_schema = types.GetDashboardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getInsightRuleReport(input, options)
    return self:invokeOperation(input, {
        name = "GetInsightRuleReport",
        input_schema = types.GetInsightRuleReportInput,
        output_schema = types.GetInsightRuleReportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricData",
        input_schema = types.GetMetricDataInput,
        output_schema = types.GetMetricDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMetricStatistics(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricStatistics",
        input_schema = types.GetMetricStatisticsInput,
        output_schema = types.GetMetricStatisticsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMetricStream(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricStream",
        input_schema = types.GetMetricStreamInput,
        output_schema = types.GetMetricStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMetricWidgetImage(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricWidgetImage",
        input_schema = types.GetMetricWidgetImageInput,
        output_schema = types.GetMetricWidgetImageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOTelEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "GetOTelEnrichment",
        input_schema = types.GetOTelEnrichmentInput,
        output_schema = types.GetOTelEnrichmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAlarmMuteRules(input, options)
    return self:invokeOperation(input, {
        name = "ListAlarmMuteRules",
        input_schema = types.ListAlarmMuteRulesInput,
        output_schema = types.ListAlarmMuteRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDashboards(input, options)
    return self:invokeOperation(input, {
        name = "ListDashboards",
        input_schema = types.ListDashboardsInput,
        output_schema = types.ListDashboardsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listManagedInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedInsightRules",
        input_schema = types.ListManagedInsightRulesInput,
        output_schema = types.ListManagedInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListMetrics",
        input_schema = types.ListMetricsInput,
        output_schema = types.ListMetricsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMetricStreams(input, options)
    return self:invokeOperation(input, {
        name = "ListMetricStreams",
        input_schema = types.ListMetricStreamsInput,
        output_schema = types.ListMetricStreamsOutput,
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

function Client:putAlarmMuteRule(input, options)
    return self:invokeOperation(input, {
        name = "PutAlarmMuteRule",
        input_schema = types.PutAlarmMuteRuleInput,
        output_schema = types.PutAlarmMuteRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putAnomalyDetector(input, options)
    return self:invokeOperation(input, {
        name = "PutAnomalyDetector",
        input_schema = types.PutAnomalyDetectorInput,
        output_schema = types.PutAnomalyDetectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putCompositeAlarm(input, options)
    return self:invokeOperation(input, {
        name = "PutCompositeAlarm",
        input_schema = types.PutCompositeAlarmInput,
        output_schema = types.PutCompositeAlarmOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putDashboard(input, options)
    return self:invokeOperation(input, {
        name = "PutDashboard",
        input_schema = types.PutDashboardInput,
        output_schema = types.PutDashboardOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putInsightRule(input, options)
    return self:invokeOperation(input, {
        name = "PutInsightRule",
        input_schema = types.PutInsightRuleInput,
        output_schema = types.PutInsightRuleOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putManagedInsightRules(input, options)
    return self:invokeOperation(input, {
        name = "PutManagedInsightRules",
        input_schema = types.PutManagedInsightRulesInput,
        output_schema = types.PutManagedInsightRulesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putMetricAlarm(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricAlarm",
        input_schema = types.PutMetricAlarmInput,
        output_schema = types.PutMetricAlarmOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putMetricData(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricData",
        input_schema = types.PutMetricDataInput,
        output_schema = types.PutMetricDataOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putMetricStream(input, options)
    return self:invokeOperation(input, {
        name = "PutMetricStream",
        input_schema = types.PutMetricStreamInput,
        output_schema = types.PutMetricStreamOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setAlarmState(input, options)
    return self:invokeOperation(input, {
        name = "SetAlarmState",
        input_schema = types.SetAlarmStateInput,
        output_schema = types.SetAlarmStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startMetricStreams(input, options)
    return self:invokeOperation(input, {
        name = "StartMetricStreams",
        input_schema = types.StartMetricStreamsInput,
        output_schema = types.StartMetricStreamsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startOTelEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StartOTelEnrichment",
        input_schema = types.StartOTelEnrichmentInput,
        output_schema = types.StartOTelEnrichmentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopMetricStreams(input, options)
    return self:invokeOperation(input, {
        name = "StopMetricStreams",
        input_schema = types.StopMetricStreamsInput,
        output_schema = types.StopMetricStreamsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopOTelEnrichment(input, options)
    return self:invokeOperation(input, {
        name = "StopOTelEnrichment",
        input_schema = types.StopOTelEnrichmentInput,
        output_schema = types.StopOTelEnrichmentOutput,
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

return M
