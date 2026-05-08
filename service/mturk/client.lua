



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mturk.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("mturk.schemas")
local traits = require("smithy.traits")
local types = require("mturk.types")
local sdk_defaults = require("aws.sdk_defaults")













































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "MTurkRequesterServiceV20170117"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mturk-requester", signing_region = c.region } }
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

function C:acceptQualificationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptQualificationRequest, input, options)
end

function C:approveAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.ApproveAssignment, input, options)
end

function C:associateQualificationWithWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateQualificationWithWorker, input, options)
end

function C:createAdditionalAssignmentsForHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAdditionalAssignmentsForHIT, input, options)
end

function C:createHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHIT, input, options)
end

function C:createHITType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHITType, input, options)
end

function C:createHITWithHITType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHITWithHITType, input, options)
end

function C:createQualificationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQualificationType, input, options)
end

function C:createWorkerBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkerBlock, input, options)
end

function C:deleteHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHIT, input, options)
end

function C:deleteQualificationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQualificationType, input, options)
end

function C:deleteWorkerBlock(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkerBlock, input, options)
end

function C:disassociateQualificationFromWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateQualificationFromWorker, input, options)
end

function C:getAccountBalance(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountBalance, input, options)
end

function C:getAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssignment, input, options)
end

function C:getFileUploadURL(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFileUploadURL, input, options)
end

function C:getHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetHIT, input, options)
end

function C:getQualificationScore(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQualificationScore, input, options)
end

function C:getQualificationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQualificationType, input, options)
end

function C:listAssignmentsForHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssignmentsForHIT, input, options)
end

function C:listBonusPayments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBonusPayments, input, options)
end

function C:listHITs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHITs, input, options)
end

function C:listHITsForQualificationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHITsForQualificationType, input, options)
end

function C:listQualificationRequests(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQualificationRequests, input, options)
end

function C:listQualificationTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQualificationTypes, input, options)
end

function C:listReviewableHITs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReviewableHITs, input, options)
end

function C:listReviewPolicyResultsForHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReviewPolicyResultsForHIT, input, options)
end

function C:listWorkerBlocks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkerBlocks, input, options)
end

function C:listWorkersWithQualificationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkersWithQualificationType, input, options)
end

function C:notifyWorkers(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyWorkers, input, options)
end

function C:rejectAssignment(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectAssignment, input, options)
end

function C:rejectQualificationRequest(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectQualificationRequest, input, options)
end

function C:sendBonus(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendBonus, input, options)
end

function C:sendTestEventNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendTestEventNotification, input, options)
end

function C:updateExpirationForHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExpirationForHIT, input, options)
end

function C:updateHITReviewStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHITReviewStatus, input, options)
end

function C:updateHITTypeOfHIT(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHITTypeOfHIT, input, options)
end

function C:updateNotificationSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotificationSettings, input, options)
end

function C:updateQualificationType(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQualificationType, input, options)
end

return M
