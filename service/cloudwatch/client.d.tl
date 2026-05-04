local types = require("cloudwatch.types")

local record Client
    deleteAlarmMuteRule: function(Client, types.DeleteAlarmMuteRuleInput): types.DeleteAlarmMuteRuleOutput, table
    deleteAlarms: function(Client, types.DeleteAlarmsInput): types.DeleteAlarmsOutput, table
    deleteAnomalyDetector: function(Client, types.DeleteAnomalyDetectorInput): types.DeleteAnomalyDetectorOutput, table
    deleteDashboards: function(Client, types.DeleteDashboardsInput): types.DeleteDashboardsOutput, table
    deleteInsightRules: function(Client, types.DeleteInsightRulesInput): types.DeleteInsightRulesOutput, table
    deleteMetricStream: function(Client, types.DeleteMetricStreamInput): types.DeleteMetricStreamOutput, table
    describeAlarmContributors: function(Client, types.DescribeAlarmContributorsInput): types.DescribeAlarmContributorsOutput, table
    describeAlarmHistory: function(Client, types.DescribeAlarmHistoryInput): types.DescribeAlarmHistoryOutput, table
    describeAlarms: function(Client, types.DescribeAlarmsInput): types.DescribeAlarmsOutput, table
    describeAlarmsForMetric: function(Client, types.DescribeAlarmsForMetricInput): types.DescribeAlarmsForMetricOutput, table
    describeAnomalyDetectors: function(Client, types.DescribeAnomalyDetectorsInput): types.DescribeAnomalyDetectorsOutput, table
    describeInsightRules: function(Client, types.DescribeInsightRulesInput): types.DescribeInsightRulesOutput, table
    disableAlarmActions: function(Client, types.DisableAlarmActionsInput): types.DisableAlarmActionsOutput, table
    disableInsightRules: function(Client, types.DisableInsightRulesInput): types.DisableInsightRulesOutput, table
    enableAlarmActions: function(Client, types.EnableAlarmActionsInput): types.EnableAlarmActionsOutput, table
    enableInsightRules: function(Client, types.EnableInsightRulesInput): types.EnableInsightRulesOutput, table
    getAlarmMuteRule: function(Client, types.GetAlarmMuteRuleInput): types.GetAlarmMuteRuleOutput, table
    getDashboard: function(Client, types.GetDashboardInput): types.GetDashboardOutput, table
    getInsightRuleReport: function(Client, types.GetInsightRuleReportInput): types.GetInsightRuleReportOutput, table
    getMetricData: function(Client, types.GetMetricDataInput): types.GetMetricDataOutput, table
    getMetricStatistics: function(Client, types.GetMetricStatisticsInput): types.GetMetricStatisticsOutput, table
    getMetricStream: function(Client, types.GetMetricStreamInput): types.GetMetricStreamOutput, table
    getMetricWidgetImage: function(Client, types.GetMetricWidgetImageInput): types.GetMetricWidgetImageOutput, table
    getOTelEnrichment: function(Client, types.GetOTelEnrichmentInput): types.GetOTelEnrichmentOutput, table
    listAlarmMuteRules: function(Client, types.ListAlarmMuteRulesInput): types.ListAlarmMuteRulesOutput, table
    listDashboards: function(Client, types.ListDashboardsInput): types.ListDashboardsOutput, table
    listManagedInsightRules: function(Client, types.ListManagedInsightRulesInput): types.ListManagedInsightRulesOutput, table
    listMetrics: function(Client, types.ListMetricsInput): types.ListMetricsOutput, table
    listMetricStreams: function(Client, types.ListMetricStreamsInput): types.ListMetricStreamsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putAlarmMuteRule: function(Client, types.PutAlarmMuteRuleInput): types.PutAlarmMuteRuleOutput, table
    putAnomalyDetector: function(Client, types.PutAnomalyDetectorInput): types.PutAnomalyDetectorOutput, table
    putCompositeAlarm: function(Client, types.PutCompositeAlarmInput): types.PutCompositeAlarmOutput, table
    putDashboard: function(Client, types.PutDashboardInput): types.PutDashboardOutput, table
    putInsightRule: function(Client, types.PutInsightRuleInput): types.PutInsightRuleOutput, table
    putManagedInsightRules: function(Client, types.PutManagedInsightRulesInput): types.PutManagedInsightRulesOutput, table
    putMetricAlarm: function(Client, types.PutMetricAlarmInput): types.PutMetricAlarmOutput, table
    putMetricData: function(Client, types.PutMetricDataInput): types.PutMetricDataOutput, table
    putMetricStream: function(Client, types.PutMetricStreamInput): types.PutMetricStreamOutput, table
    setAlarmState: function(Client, types.SetAlarmStateInput): types.SetAlarmStateOutput, table
    startMetricStreams: function(Client, types.StartMetricStreamsInput): types.StartMetricStreamsOutput, table
    startOTelEnrichment: function(Client, types.StartOTelEnrichmentInput): types.StartOTelEnrichmentOutput, table
    stopMetricStreams: function(Client, types.StopMetricStreamsInput): types.StopMetricStreamsOutput, table
    stopOTelEnrichment: function(Client, types.StopOTelEnrichmentInput): types.StopOTelEnrichmentOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
