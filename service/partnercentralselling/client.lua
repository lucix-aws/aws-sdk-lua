



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("partnercentralselling.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("partnercentralselling.schemas")
local traits = require("smithy.traits")
local types = require("partnercentralselling.types")
local sdk_defaults = require("aws.sdk_defaults")
















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSPartnerCentralSelling"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "partnercentral-selling", signing_region = c.region } }
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

function C:acceptEngagementInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptEngagementInvitation, input, options)
end

function C:assignOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssignOpportunity, input, options)
end

function C:associateOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateOpportunity, input, options)
end

function C:createEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEngagement, input, options)
end

function C:createEngagementContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEngagementContext, input, options)
end

function C:createEngagementInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEngagementInvitation, input, options)
end

function C:createOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOpportunity, input, options)
end

function C:createResourceSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceSnapshot, input, options)
end

function C:createResourceSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResourceSnapshotJob, input, options)
end

function C:deleteResourceSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourceSnapshotJob, input, options)
end

function C:disassociateOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateOpportunity, input, options)
end

function C:getAwsOpportunitySummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAwsOpportunitySummary, input, options)
end

function C:getEngagement(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEngagement, input, options)
end

function C:getEngagementInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEngagementInvitation, input, options)
end

function C:getOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOpportunity, input, options)
end

function C:getResourceSnapshot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceSnapshot, input, options)
end

function C:getResourceSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourceSnapshotJob, input, options)
end

function C:getSellingSystemSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSellingSystemSettings, input, options)
end

function C:listEngagementByAcceptingInvitationTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagementByAcceptingInvitationTasks, input, options)
end

function C:listEngagementFromOpportunityTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagementFromOpportunityTasks, input, options)
end

function C:listEngagementInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagementInvitations, input, options)
end

function C:listEngagementMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagementMembers, input, options)
end

function C:listEngagementResourceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagementResourceAssociations, input, options)
end

function C:listEngagements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEngagements, input, options)
end

function C:listOpportunities(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpportunities, input, options)
end

function C:listOpportunityFromEngagementTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOpportunityFromEngagementTasks, input, options)
end

function C:listResourceSnapshotJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceSnapshotJobs, input, options)
end

function C:listResourceSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceSnapshots, input, options)
end

function C:listSolutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSolutions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putSellingSystemSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSellingSystemSettings, input, options)
end

function C:rejectEngagementInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectEngagementInvitation, input, options)
end

function C:startEngagementByAcceptingInvitationTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEngagementByAcceptingInvitationTask, input, options)
end

function C:startEngagementFromOpportunityTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEngagementFromOpportunityTask, input, options)
end

function C:startOpportunityFromEngagementTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartOpportunityFromEngagementTask, input, options)
end

function C:startResourceSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartResourceSnapshotJob, input, options)
end

function C:stopResourceSnapshotJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopResourceSnapshotJob, input, options)
end

function C:submitOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.SubmitOpportunity, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateEngagementContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEngagementContext, input, options)
end

function C:updateOpportunity(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOpportunity, input, options)
end

return M
