



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("auditmanager.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("auditmanager.schemas")
local traits = require("smithy.traits")
local types = require("auditmanager.types")
local sdk_defaults = require("aws.sdk_defaults")




































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "BedrockAssessmentManagerLambda"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "auditmanager", signing_region = c.region } }
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

function C:associateAssessmentReportEvidenceFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateAssessmentReportEvidenceFolder, input, options)
end

function C:batchAssociateAssessmentReportEvidence(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateAssessmentReportEvidence, input, options)
end

function C:batchCreateDelegationByAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchCreateDelegationByAssessment, input, options)
end

function C:batchDeleteDelegationByAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteDelegationByAssessment, input, options)
end

function C:batchDisassociateAssessmentReportEvidence(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateAssessmentReportEvidence, input, options)
end

function C:batchImportEvidenceToAssessmentControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchImportEvidenceToAssessmentControl, input, options)
end

function C:createAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssessment, input, options)
end

function C:createAssessmentFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssessmentFramework, input, options)
end

function C:createAssessmentReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAssessmentReport, input, options)
end

function C:createControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateControl, input, options)
end

function C:deleteAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessment, input, options)
end

function C:deleteAssessmentFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessmentFramework, input, options)
end

function C:deleteAssessmentFrameworkShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessmentFrameworkShare, input, options)
end

function C:deleteAssessmentReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssessmentReport, input, options)
end

function C:deleteControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteControl, input, options)
end

function C:deregisterAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterAccount, input, options)
end

function C:deregisterOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterOrganizationAdminAccount, input, options)
end

function C:disassociateAssessmentReportEvidenceFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateAssessmentReportEvidenceFolder, input, options)
end

function C:getAccountStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountStatus, input, options)
end

function C:getAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssessment, input, options)
end

function C:getAssessmentFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssessmentFramework, input, options)
end

function C:getAssessmentReportUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssessmentReportUrl, input, options)
end

function C:getChangeLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetChangeLogs, input, options)
end

function C:getControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetControl, input, options)
end

function C:getDelegations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDelegations, input, options)
end

function C:getEvidence(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvidence, input, options)
end

function C:getEvidenceByEvidenceFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvidenceByEvidenceFolder, input, options)
end

function C:getEvidenceFileUploadUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvidenceFileUploadUrl, input, options)
end

function C:getEvidenceFolder(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvidenceFolder, input, options)
end

function C:getEvidenceFoldersByAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvidenceFoldersByAssessment, input, options)
end

function C:getEvidenceFoldersByAssessmentControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetEvidenceFoldersByAssessmentControl, input, options)
end

function C:getInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsights, input, options)
end

function C:getInsightsByAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInsightsByAssessment, input, options)
end

function C:getOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOrganizationAdminAccount, input, options)
end

function C:getServicesInScope(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetServicesInScope, input, options)
end

function C:getSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSettings, input, options)
end

function C:listAssessmentControlInsightsByControlDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentControlInsightsByControlDomain, input, options)
end

function C:listAssessmentFrameworks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentFrameworks, input, options)
end

function C:listAssessmentFrameworkShareRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentFrameworkShareRequests, input, options)
end

function C:listAssessmentReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessmentReports, input, options)
end

function C:listAssessments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssessments, input, options)
end

function C:listControlDomainInsights(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListControlDomainInsights, input, options)
end

function C:listControlDomainInsightsByAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListControlDomainInsightsByAssessment, input, options)
end

function C:listControlInsightsByControlDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListControlInsightsByControlDomain, input, options)
end

function C:listControls(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListControls, input, options)
end

function C:listKeywordsForDataSource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListKeywordsForDataSource, input, options)
end

function C:listNotifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotifications, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:registerAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterAccount, input, options)
end

function C:registerOrganizationAdminAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterOrganizationAdminAccount, input, options)
end

function C:startAssessmentFrameworkShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartAssessmentFrameworkShare, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAssessment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessment, input, options)
end

function C:updateAssessmentControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessmentControl, input, options)
end

function C:updateAssessmentControlSetStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessmentControlSetStatus, input, options)
end

function C:updateAssessmentFramework(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessmentFramework, input, options)
end

function C:updateAssessmentFrameworkShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessmentFrameworkShare, input, options)
end

function C:updateAssessmentStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssessmentStatus, input, options)
end

function C:updateControl(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateControl, input, options)
end

function C:updateSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSettings, input, options)
end

function C:validateAssessmentReportIntegrity(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateAssessmentReportIntegrity, input, options)
end

return M
