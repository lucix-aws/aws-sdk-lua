



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lexmodelbuildingservice.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("lexmodelbuildingservice.schemas")
local traits = require("smithy.traits")
local types = require("lexmodelbuildingservice.types")
local sdk_defaults = require("aws.sdk_defaults")
















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSDeepSenseModelBuildingService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lex", signing_region = c.region } }
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

function C:createBotVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBotVersion, input, options)
end

function C:createIntentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntentVersion, input, options)
end

function C:createSlotTypeVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSlotTypeVersion, input, options)
end

function C:deleteBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBot, input, options)
end

function C:deleteBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotAlias, input, options)
end

function C:deleteBotChannelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotChannelAssociation, input, options)
end

function C:deleteBotVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBotVersion, input, options)
end

function C:deleteIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntent, input, options)
end

function C:deleteIntentVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntentVersion, input, options)
end

function C:deleteSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlotType, input, options)
end

function C:deleteSlotTypeVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSlotTypeVersion, input, options)
end

function C:deleteUtterances(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUtterances, input, options)
end

function C:getBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBot, input, options)
end

function C:getBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBotAlias, input, options)
end

function C:getBotAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBotAliases, input, options)
end

function C:getBotChannelAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBotChannelAssociation, input, options)
end

function C:getBotChannelAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBotChannelAssociations, input, options)
end

function C:getBots(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBots, input, options)
end

function C:getBotVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBotVersions, input, options)
end

function C:getBuiltinIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBuiltinIntent, input, options)
end

function C:getBuiltinIntents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBuiltinIntents, input, options)
end

function C:getBuiltinSlotTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBuiltinSlotTypes, input, options)
end

function C:getExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExport, input, options)
end

function C:getImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImport, input, options)
end

function C:getIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntent, input, options)
end

function C:getIntents(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntents, input, options)
end

function C:getIntentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntentVersions, input, options)
end

function C:getMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMigration, input, options)
end

function C:getMigrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMigrations, input, options)
end

function C:getSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSlotType, input, options)
end

function C:getSlotTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSlotTypes, input, options)
end

function C:getSlotTypeVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSlotTypeVersions, input, options)
end

function C:getUtterancesView(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUtterancesView, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:putBot(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBot, input, options)
end

function C:putBotAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutBotAlias, input, options)
end

function C:putIntent(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIntent, input, options)
end

function C:putSlotType(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutSlotType, input, options)
end

function C:startImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImport, input, options)
end

function C:startMigration(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMigration, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

return M
