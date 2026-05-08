



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("servicequotas.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("servicequotas.schemas")
local traits = require("smithy.traits")
local types = require("servicequotas.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ServiceQuotasV20190624"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicequotas", signing_region = c.region } }
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

function C:associateServiceQuotaTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateServiceQuotaTemplate, input, options)
end

function C:createSupportCase(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSupportCase, input, options)
end

function C:deleteServiceQuotaIncreaseRequestFromTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceQuotaIncreaseRequestFromTemplate, input, options)
end

function C:disassociateServiceQuotaTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateServiceQuotaTemplate, input, options)
end

function C:getAssociationForServiceQuotaTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociationForServiceQuotaTemplate, input, options)
end

function C:getAutoManagementConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAutoManagementConfiguration, input, options)
end

function C:getAWSDefaultServiceQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAWSDefaultServiceQuota, input, options)
end

function C:getQuotaUtilizationReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQuotaUtilizationReport, input, options)
end

function C:getRequestedServiceQuotaChange(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRequestedServiceQuotaChange, input, options)
end

function C:getServiceQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceQuota, input, options)
end

function C:getServiceQuotaIncreaseRequestFromTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServiceQuotaIncreaseRequestFromTemplate, input, options)
end

function C:listAWSDefaultServiceQuotas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAWSDefaultServiceQuotas, input, options)
end

function C:listRequestedServiceQuotaChangeHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRequestedServiceQuotaChangeHistory, input, options)
end

function C:listRequestedServiceQuotaChangeHistoryByQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRequestedServiceQuotaChangeHistoryByQuota, input, options)
end

function C:listServiceQuotaIncreaseRequestsInTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceQuotaIncreaseRequestsInTemplate, input, options)
end

function C:listServiceQuotas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceQuotas, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putServiceQuotaIncreaseRequestIntoTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutServiceQuotaIncreaseRequestIntoTemplate, input, options)
end

function C:requestServiceQuotaIncrease(input, options)
   return self:invokeOperation(schemas.Service, schemas.RequestServiceQuotaIncrease, input, options)
end

function C:startAutoManagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAutoManagement, input, options)
end

function C:startQuotaUtilizationReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartQuotaUtilizationReport, input, options)
end

function C:stopAutoManagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAutoManagement, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAutoManagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAutoManagement, input, options)
end

return M
