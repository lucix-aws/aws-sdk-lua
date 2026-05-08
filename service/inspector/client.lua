



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("inspector.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("inspector.schemas")
local traits = require("smithy.traits")
local types = require("inspector.types")
local sdk_defaults = require("aws.sdk_defaults")











































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "InspectorService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "inspector", signing_region = c.region } }
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

function C:addAttributesToFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddAttributesToFindings, input, options)
end

function C:createAssessmentTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssessmentTarget, input, options)
end

function C:createAssessmentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssessmentTemplate, input, options)
end

function C:createExclusionsPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExclusionsPreview, input, options)
end

function C:createResourceGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceGroup, input, options)
end

function C:deleteAssessmentRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessmentRun, input, options)
end

function C:deleteAssessmentTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessmentTarget, input, options)
end

function C:deleteAssessmentTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessmentTemplate, input, options)
end

function C:describeAssessmentRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssessmentRuns, input, options)
end

function C:describeAssessmentTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssessmentTargets, input, options)
end

function C:describeAssessmentTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAssessmentTemplates, input, options)
end

function C:describeCrossAccountAccessRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCrossAccountAccessRole, input, options)
end

function C:describeExclusions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExclusions, input, options)
end

function C:describeFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFindings, input, options)
end

function C:describeResourceGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeResourceGroups, input, options)
end

function C:describeRulesPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRulesPackages, input, options)
end

function C:getAssessmentReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssessmentReport, input, options)
end

function C:getExclusionsPreview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExclusionsPreview, input, options)
end

function C:getTelemetryMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTelemetryMetadata, input, options)
end

function C:listAssessmentRunAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentRunAgents, input, options)
end

function C:listAssessmentRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentRuns, input, options)
end

function C:listAssessmentTargets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentTargets, input, options)
end

function C:listAssessmentTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentTemplates, input, options)
end

function C:listEventSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventSubscriptions, input, options)
end

function C:listExclusions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExclusions, input, options)
end

function C:listFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFindings, input, options)
end

function C:listRulesPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRulesPackages, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:previewAgents(input, options)
   return self:invokeOperation(schemas.Service, schemas.PreviewAgents, input, options)
end

function C:registerCrossAccountAccessRole(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterCrossAccountAccessRole, input, options)
end

function C:removeAttributesFromFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveAttributesFromFindings, input, options)
end

function C:setTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetTagsForResource, input, options)
end

function C:startAssessmentRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAssessmentRun, input, options)
end

function C:stopAssessmentRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAssessmentRun, input, options)
end

function C:subscribeToEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubscribeToEvent, input, options)
end

function C:unsubscribeFromEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UnsubscribeFromEvent, input, options)
end

function C:updateAssessmentTarget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessmentTarget, input, options)
end

return M
