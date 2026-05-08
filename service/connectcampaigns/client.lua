



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("connectcampaigns.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("connectcampaigns.schemas")
local traits = require("smithy.traits")
local types = require("connectcampaigns.types")
local sdk_defaults = require("aws.sdk_defaults")




























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonConnectCampaignService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "connect-campaigns", signing_region = c.region } }
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

function C:createCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCampaign, input, options)
end

function C:deleteCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCampaign, input, options)
end

function C:deleteConnectInstanceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectInstanceConfig, input, options)
end

function C:deleteInstanceOnboardingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInstanceOnboardingJob, input, options)
end

function C:describeCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCampaign, input, options)
end

function C:getCampaignState(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaignState, input, options)
end

function C:getCampaignStateBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCampaignStateBatch, input, options)
end

function C:getConnectInstanceConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConnectInstanceConfig, input, options)
end

function C:getInstanceOnboardingJobStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInstanceOnboardingJobStatus, input, options)
end

function C:listCampaigns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCampaigns, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:pauseCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.PauseCampaign, input, options)
end

function C:putDialRequestBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutDialRequestBatch, input, options)
end

function C:resumeCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResumeCampaign, input, options)
end

function C:startCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCampaign, input, options)
end

function C:startInstanceOnboardingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInstanceOnboardingJob, input, options)
end

function C:stopCampaign(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCampaign, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCampaignDialerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCampaignDialerConfig, input, options)
end

function C:updateCampaignName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCampaignName, input, options)
end

function C:updateCampaignOutboundCallConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCampaignOutboundCallConfig, input, options)
end

return M
