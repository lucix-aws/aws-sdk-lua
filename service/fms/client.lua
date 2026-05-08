



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("fms.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("fms.schemas")
local traits = require("smithy.traits")
local types = require("fms.types")
local sdk_defaults = require("aws.sdk_defaults")
















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSFMS_20180101"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "fms", signing_region = c.region } }
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

function C:associateAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAdminAccount, input, options)
end

function C:associateThirdPartyFirewall(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateThirdPartyFirewall, input, options)
end

function C:batchAssociateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateResource, input, options)
end

function C:batchDisassociateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateResource, input, options)
end

function C:deleteAppsList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppsList, input, options)
end

function C:deleteNotificationChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotificationChannel, input, options)
end

function C:deletePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePolicy, input, options)
end

function C:deleteProtocolsList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProtocolsList, input, options)
end

function C:deleteResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceSet, input, options)
end

function C:disassociateAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAdminAccount, input, options)
end

function C:disassociateThirdPartyFirewall(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateThirdPartyFirewall, input, options)
end

function C:getAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdminAccount, input, options)
end

function C:getAdminScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdminScope, input, options)
end

function C:getAppsList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAppsList, input, options)
end

function C:getComplianceDetail(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComplianceDetail, input, options)
end

function C:getNotificationChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetNotificationChannel, input, options)
end

function C:getPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPolicy, input, options)
end

function C:getProtectionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProtectionStatus, input, options)
end

function C:getProtocolsList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProtocolsList, input, options)
end

function C:getResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceSet, input, options)
end

function C:getThirdPartyFirewallAssociationStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetThirdPartyFirewallAssociationStatus, input, options)
end

function C:getViolationDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetViolationDetails, input, options)
end

function C:listAdminAccountsForOrganization(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAdminAccountsForOrganization, input, options)
end

function C:listAdminsManagingAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAdminsManagingAccount, input, options)
end

function C:listAppsLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppsLists, input, options)
end

function C:listComplianceStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComplianceStatus, input, options)
end

function C:listDiscoveredResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDiscoveredResources, input, options)
end

function C:listMemberAccounts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMemberAccounts, input, options)
end

function C:listPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPolicies, input, options)
end

function C:listProtocolsLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProtocolsLists, input, options)
end

function C:listResourceSetResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceSetResources, input, options)
end

function C:listResourceSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceSets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listThirdPartyFirewallFirewallPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListThirdPartyFirewallFirewallPolicies, input, options)
end

function C:putAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAdminAccount, input, options)
end

function C:putAppsList(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutAppsList, input, options)
end

function C:putNotificationChannel(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutNotificationChannel, input, options)
end

function C:putPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPolicy, input, options)
end

function C:putProtocolsList(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutProtocolsList, input, options)
end

function C:putResourceSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourceSet, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
