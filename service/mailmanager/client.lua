



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mailmanager.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("mailmanager.schemas")
local traits = require("smithy.traits")
local types = require("mailmanager.types")
local sdk_defaults = require("aws.sdk_defaults")


































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MailManagerSvc"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ses", signing_region = c.region } }
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

function C:createAddonInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAddonInstance, input, options)
end

function C:createAddonSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAddonSubscription, input, options)
end

function C:createAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAddressList, input, options)
end

function C:createAddressListImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAddressListImportJob, input, options)
end

function C:createArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateArchive, input, options)
end

function C:createIngressPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIngressPoint, input, options)
end

function C:createRelay(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRelay, input, options)
end

function C:createRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRuleSet, input, options)
end

function C:createTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrafficPolicy, input, options)
end

function C:deleteAddonInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAddonInstance, input, options)
end

function C:deleteAddonSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAddonSubscription, input, options)
end

function C:deleteAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAddressList, input, options)
end

function C:deleteArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteArchive, input, options)
end

function C:deleteIngressPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIngressPoint, input, options)
end

function C:deleteRelay(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRelay, input, options)
end

function C:deleteRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRuleSet, input, options)
end

function C:deleteTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrafficPolicy, input, options)
end

function C:deregisterMemberFromAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterMemberFromAddressList, input, options)
end

function C:getAddonInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAddonInstance, input, options)
end

function C:getAddonSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAddonSubscription, input, options)
end

function C:getAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAddressList, input, options)
end

function C:getAddressListImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAddressListImportJob, input, options)
end

function C:getArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchive, input, options)
end

function C:getArchiveExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchiveExport, input, options)
end

function C:getArchiveMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchiveMessage, input, options)
end

function C:getArchiveMessageContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchiveMessageContent, input, options)
end

function C:getArchiveSearch(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchiveSearch, input, options)
end

function C:getArchiveSearchResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetArchiveSearchResults, input, options)
end

function C:getIngressPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIngressPoint, input, options)
end

function C:getMemberOfAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMemberOfAddressList, input, options)
end

function C:getRelay(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRelay, input, options)
end

function C:getRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRuleSet, input, options)
end

function C:getTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTrafficPolicy, input, options)
end

function C:listAddonInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAddonInstances, input, options)
end

function C:listAddonSubscriptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAddonSubscriptions, input, options)
end

function C:listAddressListImportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAddressListImportJobs, input, options)
end

function C:listAddressLists(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAddressLists, input, options)
end

function C:listArchiveExports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArchiveExports, input, options)
end

function C:listArchives(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArchives, input, options)
end

function C:listArchiveSearches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArchiveSearches, input, options)
end

function C:listIngressPoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListIngressPoints, input, options)
end

function C:listMembersOfAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMembersOfAddressList, input, options)
end

function C:listRelays(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRelays, input, options)
end

function C:listRuleSets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRuleSets, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTrafficPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrafficPolicies, input, options)
end

function C:registerMemberToAddressList(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterMemberToAddressList, input, options)
end

function C:startAddressListImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAddressListImportJob, input, options)
end

function C:startArchiveExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartArchiveExport, input, options)
end

function C:startArchiveSearch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartArchiveSearch, input, options)
end

function C:stopAddressListImportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAddressListImportJob, input, options)
end

function C:stopArchiveExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopArchiveExport, input, options)
end

function C:stopArchiveSearch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopArchiveSearch, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateArchive(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateArchive, input, options)
end

function C:updateIngressPoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIngressPoint, input, options)
end

function C:updateRelay(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRelay, input, options)
end

function C:updateRuleSet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleSet, input, options)
end

function C:updateTrafficPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrafficPolicy, input, options)
end

return M
