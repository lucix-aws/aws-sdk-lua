



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("transcribe.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("transcribe.schemas")
local traits = require("smithy.traits")
local types = require("transcribe.types")
local sdk_defaults = require("aws.sdk_defaults")

















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Transcribe"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "transcribe", signing_region = c.region } }
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

function C:createCallAnalyticsCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCallAnalyticsCategory, input, options)
end

function C:createLanguageModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLanguageModel, input, options)
end

function C:createMedicalVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMedicalVocabulary, input, options)
end

function C:createVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVocabulary, input, options)
end

function C:createVocabularyFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVocabularyFilter, input, options)
end

function C:deleteCallAnalyticsCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCallAnalyticsCategory, input, options)
end

function C:deleteCallAnalyticsJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCallAnalyticsJob, input, options)
end

function C:deleteLanguageModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLanguageModel, input, options)
end

function C:deleteMedicalScribeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMedicalScribeJob, input, options)
end

function C:deleteMedicalTranscriptionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMedicalTranscriptionJob, input, options)
end

function C:deleteMedicalVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMedicalVocabulary, input, options)
end

function C:deleteTranscriptionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTranscriptionJob, input, options)
end

function C:deleteVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVocabulary, input, options)
end

function C:deleteVocabularyFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVocabularyFilter, input, options)
end

function C:describeLanguageModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLanguageModel, input, options)
end

function C:getCallAnalyticsCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCallAnalyticsCategory, input, options)
end

function C:getCallAnalyticsJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetCallAnalyticsJob, input, options)
end

function C:getMedicalScribeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMedicalScribeJob, input, options)
end

function C:getMedicalTranscriptionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMedicalTranscriptionJob, input, options)
end

function C:getMedicalVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMedicalVocabulary, input, options)
end

function C:getTranscriptionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTranscriptionJob, input, options)
end

function C:getVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVocabulary, input, options)
end

function C:getVocabularyFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVocabularyFilter, input, options)
end

function C:listCallAnalyticsCategories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCallAnalyticsCategories, input, options)
end

function C:listCallAnalyticsJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCallAnalyticsJobs, input, options)
end

function C:listLanguageModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLanguageModels, input, options)
end

function C:listMedicalScribeJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMedicalScribeJobs, input, options)
end

function C:listMedicalTranscriptionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMedicalTranscriptionJobs, input, options)
end

function C:listMedicalVocabularies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMedicalVocabularies, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTranscriptionJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTranscriptionJobs, input, options)
end

function C:listVocabularies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVocabularies, input, options)
end

function C:listVocabularyFilters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListVocabularyFilters, input, options)
end

function C:startCallAnalyticsJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCallAnalyticsJob, input, options)
end

function C:startMedicalScribeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMedicalScribeJob, input, options)
end

function C:startMedicalTranscriptionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMedicalTranscriptionJob, input, options)
end

function C:startTranscriptionJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTranscriptionJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateCallAnalyticsCategory(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCallAnalyticsCategory, input, options)
end

function C:updateMedicalVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMedicalVocabulary, input, options)
end

function C:updateVocabulary(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVocabulary, input, options)
end

function C:updateVocabularyFilter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVocabularyFilter, input, options)
end

return M
