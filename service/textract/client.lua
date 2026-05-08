



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("textract.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("textract.schemas")
local traits = require("smithy.traits")
local types = require("textract.types")
local sdk_defaults = require("aws.sdk_defaults")































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Textract"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "textract", signing_region = c.region } }
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

function C:analyzeDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.AnalyzeDocument, input, options)
end

function C:analyzeExpense(input, options)
   return self:invokeOperation(schemas.Service, schemas.AnalyzeExpense, input, options)
end

function C:analyzeID(input, options)
   return self:invokeOperation(schemas.Service, schemas.AnalyzeID, input, options)
end

function C:createAdapter(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAdapter, input, options)
end

function C:createAdapterVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAdapterVersion, input, options)
end

function C:deleteAdapter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAdapter, input, options)
end

function C:deleteAdapterVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAdapterVersion, input, options)
end

function C:detectDocumentText(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetectDocumentText, input, options)
end

function C:getAdapter(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdapter, input, options)
end

function C:getAdapterVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAdapterVersion, input, options)
end

function C:getDocumentAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentAnalysis, input, options)
end

function C:getDocumentTextDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentTextDetection, input, options)
end

function C:getExpenseAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExpenseAnalysis, input, options)
end

function C:getLendingAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLendingAnalysis, input, options)
end

function C:getLendingAnalysisSummary(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLendingAnalysisSummary, input, options)
end

function C:listAdapters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAdapters, input, options)
end

function C:listAdapterVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAdapterVersions, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:startDocumentAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDocumentAnalysis, input, options)
end

function C:startDocumentTextDetection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDocumentTextDetection, input, options)
end

function C:startExpenseAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartExpenseAnalysis, input, options)
end

function C:startLendingAnalysis(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartLendingAnalysis, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAdapter(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAdapter, input, options)
end

return M
