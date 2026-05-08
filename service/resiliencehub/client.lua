



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("resiliencehub.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("resiliencehub.schemas")
local traits = require("smithy.traits")
local types = require("resiliencehub.types")
local sdk_defaults = require("aws.sdk_defaults")





































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AwsResilienceHub"
   if not c.protocol then c.protocol = restjson_protocol.new() end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "resiliencehub", signing_region = c.region } }
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

function C:acceptResourceGroupingRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptResourceGroupingRecommendations, input, options)
end

function C:addDraftAppVersionResourceMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddDraftAppVersionResourceMappings, input, options)
end

function C:batchUpdateRecommendationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateRecommendationStatus, input, options)
end

function C:createApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApp, input, options)
end

function C:createAppVersionAppComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppVersionAppComponent, input, options)
end

function C:createAppVersionResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppVersionResource, input, options)
end

function C:createRecommendationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecommendationTemplate, input, options)
end

function C:createResiliencyPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResiliencyPolicy, input, options)
end

function C:deleteApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApp, input, options)
end

function C:deleteAppAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppAssessment, input, options)
end

function C:deleteAppInputSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppInputSource, input, options)
end

function C:deleteAppVersionAppComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppVersionAppComponent, input, options)
end

function C:deleteAppVersionResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppVersionResource, input, options)
end

function C:deleteRecommendationTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecommendationTemplate, input, options)
end

function C:deleteResiliencyPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResiliencyPolicy, input, options)
end

function C:describeApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApp, input, options)
end

function C:describeAppAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppAssessment, input, options)
end

function C:describeAppVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppVersion, input, options)
end

function C:describeAppVersionAppComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppVersionAppComponent, input, options)
end

function C:describeAppVersionResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppVersionResource, input, options)
end

function C:describeAppVersionResourcesResolutionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppVersionResourcesResolutionStatus, input, options)
end

function C:describeAppVersionTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppVersionTemplate, input, options)
end

function C:describeDraftAppVersionResourcesImportStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDraftAppVersionResourcesImportStatus, input, options)
end

function C:describeMetricsExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMetricsExport, input, options)
end

function C:describeResiliencyPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResiliencyPolicy, input, options)
end

function C:describeResourceGroupingRecommendationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourceGroupingRecommendationTask, input, options)
end

function C:importResourcesToDraftAppVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportResourcesToDraftAppVersion, input, options)
end

function C:listAlarmRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlarmRecommendations, input, options)
end

function C:listAppAssessmentComplianceDrifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppAssessmentComplianceDrifts, input, options)
end

function C:listAppAssessmentResourceDrifts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppAssessmentResourceDrifts, input, options)
end

function C:listAppAssessments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppAssessments, input, options)
end

function C:listAppComponentCompliances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppComponentCompliances, input, options)
end

function C:listAppComponentRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppComponentRecommendations, input, options)
end

function C:listAppInputSources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppInputSources, input, options)
end

function C:listApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApps, input, options)
end

function C:listAppVersionAppComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppVersionAppComponents, input, options)
end

function C:listAppVersionResourceMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppVersionResourceMappings, input, options)
end

function C:listAppVersionResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppVersionResources, input, options)
end

function C:listAppVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppVersions, input, options)
end

function C:listMetrics(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMetrics, input, options)
end

function C:listRecommendationTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendationTemplates, input, options)
end

function C:listResiliencyPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResiliencyPolicies, input, options)
end

function C:listResourceGroupingRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceGroupingRecommendations, input, options)
end

function C:listSopRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSopRecommendations, input, options)
end

function C:listSuggestedResiliencyPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSuggestedResiliencyPolicies, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTestRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTestRecommendations, input, options)
end

function C:listUnsupportedAppVersionResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUnsupportedAppVersionResources, input, options)
end

function C:publishAppVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishAppVersion, input, options)
end

function C:putDraftAppVersionTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDraftAppVersionTemplate, input, options)
end

function C:rejectResourceGroupingRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectResourceGroupingRecommendations, input, options)
end

function C:removeDraftAppVersionResourceMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveDraftAppVersionResourceMappings, input, options)
end

function C:resolveAppVersionResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResolveAppVersionResources, input, options)
end

function C:startAppAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAppAssessment, input, options)
end

function C:startMetricsExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMetricsExport, input, options)
end

function C:startResourceGroupingRecommendationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartResourceGroupingRecommendationTask, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApp, input, options)
end

function C:updateAppVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppVersion, input, options)
end

function C:updateAppVersionAppComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppVersionAppComponent, input, options)
end

function C:updateAppVersionResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppVersionResource, input, options)
end

function C:updateResiliencyPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResiliencyPolicy, input, options)
end

return M
