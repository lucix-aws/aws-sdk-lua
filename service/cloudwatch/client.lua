



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudwatch.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("cloudwatch.schemas")
local traits = require("smithy.traits")
local types = require("cloudwatch.types")
local sdk_defaults = require("aws.sdk_defaults")




















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "GraniteServiceVersion20100801"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.0", service_id = c.service_id }) end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "monitoring", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:deleteAlarmMuteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlarmMuteRule, input, options)
end

function C:deleteAlarms(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlarms, input, options)
end

function C:deleteAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAnomalyDetector, input, options)
end

function C:deleteDashboards(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDashboards, input, options)
end

function C:deleteInsightRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInsightRules, input, options)
end

function C:deleteMetricStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMetricStream, input, options)
end

function C:describeAlarmContributors(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlarmContributors, input, options)
end

function C:describeAlarmHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlarmHistory, input, options)
end

function C:describeAlarms(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlarms, input, options)
end

function C:describeAlarmsForMetric(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlarmsForMetric, input, options)
end

function C:describeAnomalyDetectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAnomalyDetectors, input, options)
end

function C:describeInsightRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInsightRules, input, options)
end

function C:disableAlarmActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAlarmActions, input, options)
end

function C:disableInsightRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableInsightRules, input, options)
end

function C:enableAlarmActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAlarmActions, input, options)
end

function C:enableInsightRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableInsightRules, input, options)
end

function C:getAlarmMuteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAlarmMuteRule, input, options)
end

function C:getDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDashboard, input, options)
end

function C:getInsightRuleReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightRuleReport, input, options)
end

function C:getMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricData, input, options)
end

function C:getMetricStatistics(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricStatistics, input, options)
end

function C:getMetricStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricStream, input, options)
end

function C:getMetricWidgetImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMetricWidgetImage, input, options)
end

function C:getOTelEnrichment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOTelEnrichment, input, options)
end

function C:listAlarmMuteRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlarmMuteRules, input, options)
end

function C:listDashboards(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDashboards, input, options)
end

function C:listManagedInsightRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListManagedInsightRules, input, options)
end

function C:listMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetrics, input, options)
end

function C:listMetricStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetricStreams, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putAlarmMuteRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAlarmMuteRule, input, options)
end

function C:putAnomalyDetector(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAnomalyDetector, input, options)
end

function C:putCompositeAlarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutCompositeAlarm, input, options)
end

function C:putDashboard(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDashboard, input, options)
end

function C:putInsightRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutInsightRule, input, options)
end

function C:putManagedInsightRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutManagedInsightRules, input, options)
end

function C:putMetricAlarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMetricAlarm, input, options)
end

function C:putMetricData(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMetricData, input, options)
end

function C:putMetricStream(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMetricStream, input, options)
end

function C:setAlarmState(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetAlarmState, input, options)
end

function C:startMetricStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetricStreams, input, options)
end

function C:startOTelEnrichment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOTelEnrichment, input, options)
end

function C:stopMetricStreams(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMetricStreams, input, options)
end

function C:stopOTelEnrichment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopOTelEnrichment, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
