



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("applicationinsights.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("applicationinsights.schemas")
local traits = require("smithy.traits")
local types = require("applicationinsights.types")
local sdk_defaults = require("aws.sdk_defaults")







































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "EC2WindowsBarleyService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "applicationinsights", signing_region = c.region } }
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

function C:addWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddWorkload, input, options)
end

function C:createApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApplication, input, options)
end

function C:createComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComponent, input, options)
end

function C:createLogPattern(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLogPattern, input, options)
end

function C:deleteApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApplication, input, options)
end

function C:deleteComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComponent, input, options)
end

function C:deleteLogPattern(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLogPattern, input, options)
end

function C:describeApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplication, input, options)
end

function C:describeComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComponent, input, options)
end

function C:describeComponentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComponentConfiguration, input, options)
end

function C:describeComponentConfigurationRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComponentConfigurationRecommendation, input, options)
end

function C:describeLogPattern(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLogPattern, input, options)
end

function C:describeObservation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeObservation, input, options)
end

function C:describeProblem(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProblem, input, options)
end

function C:describeProblemObservations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProblemObservations, input, options)
end

function C:describeWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkload, input, options)
end

function C:listApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApplications, input, options)
end

function C:listComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponents, input, options)
end

function C:listConfigurationHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConfigurationHistory, input, options)
end

function C:listLogPatterns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogPatterns, input, options)
end

function C:listLogPatternSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLogPatternSets, input, options)
end

function C:listProblems(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProblems, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWorkloads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloads, input, options)
end

function C:removeWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemoveWorkload, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApplication, input, options)
end

function C:updateComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComponent, input, options)
end

function C:updateComponentConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComponentConfiguration, input, options)
end

function C:updateLogPattern(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLogPattern, input, options)
end

function C:updateProblem(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProblem, input, options)
end

function C:updateWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkload, input, options)
end

return M
