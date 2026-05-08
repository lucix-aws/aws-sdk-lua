



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codegurureviewer.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codegurureviewer.schemas")
local traits = require("smithy.traits")
local types = require("codegurureviewer.types")
local sdk_defaults = require("aws.sdk_defaults")




















local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSGuruFrontendService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codeguru-reviewer", signing_region = c.region } }
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

function C:associateRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateRepository, input, options)
end

function C:createCodeReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCodeReview, input, options)
end

function C:describeCodeReview(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCodeReview, input, options)
end

function C:describeRecommendationFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecommendationFeedback, input, options)
end

function C:describeRepositoryAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRepositoryAssociation, input, options)
end

function C:disassociateRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateRepository, input, options)
end

function C:listCodeReviews(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeReviews, input, options)
end

function C:listRecommendationFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendationFeedback, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:listRepositoryAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRepositoryAssociations, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putRecommendationFeedback(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRecommendationFeedback, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
