



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("translate.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("translate.schemas")
local traits = require("smithy.traits")
local types = require("translate.types")
local sdk_defaults = require("aws.sdk_defaults")

























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSShineFrontendService_20170701"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "translate", signing_region = c.region } }
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

function C:createParallelData(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateParallelData, input, options)
end

function C:deleteParallelData(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteParallelData, input, options)
end

function C:deleteTerminology(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTerminology, input, options)
end

function C:describeTextTranslationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTextTranslationJob, input, options)
end

function C:getParallelData(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetParallelData, input, options)
end

function C:getTerminology(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTerminology, input, options)
end

function C:importTerminology(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportTerminology, input, options)
end

function C:listLanguages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLanguages, input, options)
end

function C:listParallelData(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListParallelData, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTerminologies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTerminologies, input, options)
end

function C:listTextTranslationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTextTranslationJobs, input, options)
end

function C:startTextTranslationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartTextTranslationJob, input, options)
end

function C:stopTextTranslationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTextTranslationJob, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:translateDocument(input, options)
   return self:invokeOperation(schemas.Service, schemas.TranslateDocument, input, options)
end

function C:translateText(input, options)
   return self:invokeOperation(schemas.Service, schemas.TranslateText, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateParallelData(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateParallelData, input, options)
end

return M
