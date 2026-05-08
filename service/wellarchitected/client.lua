



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("wellarchitected.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("wellarchitected.schemas")
local traits = require("smithy.traits")
local types = require("wellarchitected.types")
local sdk_defaults = require("aws.sdk_defaults")














































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WellArchitectedApiServiceLambda"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wellarchitected", signing_region = c.region } }
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

function C:associateLenses(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateLenses, input, options)
end

function C:associateProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateProfiles, input, options)
end

function C:createLensShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLensShare, input, options)
end

function C:createLensVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLensVersion, input, options)
end

function C:createMilestone(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMilestone, input, options)
end

function C:createProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfile, input, options)
end

function C:createProfileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfileShare, input, options)
end

function C:createReviewTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReviewTemplate, input, options)
end

function C:createTemplateShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTemplateShare, input, options)
end

function C:createWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkload, input, options)
end

function C:createWorkloadShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkloadShare, input, options)
end

function C:deleteLens(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLens, input, options)
end

function C:deleteLensShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLensShare, input, options)
end

function C:deleteProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfile, input, options)
end

function C:deleteProfileShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfileShare, input, options)
end

function C:deleteReviewTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReviewTemplate, input, options)
end

function C:deleteTemplateShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTemplateShare, input, options)
end

function C:deleteWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkload, input, options)
end

function C:deleteWorkloadShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkloadShare, input, options)
end

function C:disassociateLenses(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateLenses, input, options)
end

function C:disassociateProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateProfiles, input, options)
end

function C:exportLens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportLens, input, options)
end

function C:getAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAnswer, input, options)
end

function C:getConsolidatedReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetConsolidatedReport, input, options)
end

function C:getGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGlobalSettings, input, options)
end

function C:getLens(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLens, input, options)
end

function C:getLensReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLensReview, input, options)
end

function C:getLensReviewReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLensReviewReport, input, options)
end

function C:getLensVersionDifference(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLensVersionDifference, input, options)
end

function C:getMilestone(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMilestone, input, options)
end

function C:getProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfile, input, options)
end

function C:getProfileTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProfileTemplate, input, options)
end

function C:getReviewTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReviewTemplate, input, options)
end

function C:getReviewTemplateAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReviewTemplateAnswer, input, options)
end

function C:getReviewTemplateLensReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReviewTemplateLensReview, input, options)
end

function C:getWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkload, input, options)
end

function C:importLens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportLens, input, options)
end

function C:listAnswers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAnswers, input, options)
end

function C:listCheckDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCheckDetails, input, options)
end

function C:listCheckSummaries(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCheckSummaries, input, options)
end

function C:listLenses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLenses, input, options)
end

function C:listLensReviewImprovements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLensReviewImprovements, input, options)
end

function C:listLensReviews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLensReviews, input, options)
end

function C:listLensShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLensShares, input, options)
end

function C:listMilestones(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMilestones, input, options)
end

function C:listNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotifications, input, options)
end

function C:listProfileNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileNotifications, input, options)
end

function C:listProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfiles, input, options)
end

function C:listProfileShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfileShares, input, options)
end

function C:listReviewTemplateAnswers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReviewTemplateAnswers, input, options)
end

function C:listReviewTemplates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReviewTemplates, input, options)
end

function C:listShareInvitations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListShareInvitations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTemplateShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTemplateShares, input, options)
end

function C:listWorkloads(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloads, input, options)
end

function C:listWorkloadShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkloadShares, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAnswer, input, options)
end

function C:updateGlobalSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGlobalSettings, input, options)
end

function C:updateIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegration, input, options)
end

function C:updateLensReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLensReview, input, options)
end

function C:updateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfile, input, options)
end

function C:updateReviewTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReviewTemplate, input, options)
end

function C:updateReviewTemplateAnswer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReviewTemplateAnswer, input, options)
end

function C:updateReviewTemplateLensReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReviewTemplateLensReview, input, options)
end

function C:updateShareInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateShareInvitation, input, options)
end

function C:updateWorkload(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkload, input, options)
end

function C:updateWorkloadShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkloadShare, input, options)
end

function C:upgradeLensReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradeLensReview, input, options)
end

function C:upgradeProfileVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradeProfileVersion, input, options)
end

function C:upgradeReviewTemplateLensReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpgradeReviewTemplateLensReview, input, options)
end

return M
