



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("devopsagent.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("devopsagent.schemas")
local traits = require("smithy.traits")
local types = require("devopsagent.types")
local sdk_defaults = require("aws.sdk_defaults")


















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "DevOpsAgent"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "aidevops", signing_region = c.region } }
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

function C:associateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateService, input, options)
end

function C:createAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgentSpace, input, options)
end

function C:createBacklogTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBacklogTask, input, options)
end

function C:createChat(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateChat, input, options)
end

function C:createPrivateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePrivateConnection, input, options)
end

function C:deleteAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgentSpace, input, options)
end

function C:deletePrivateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePrivateConnection, input, options)
end

function C:deregisterService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterService, input, options)
end

function C:describePrivateConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePrivateConnection, input, options)
end

function C:disableOperatorApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableOperatorApp, input, options)
end

function C:disassociateService(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateService, input, options)
end

function C:enableOperatorApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableOperatorApp, input, options)
end

function C:getAccountUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountUsage, input, options)
end

function C:getAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAgentSpace, input, options)
end

function C:getAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAssociation, input, options)
end

function C:getBacklogTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBacklogTask, input, options)
end

function C:getOperatorApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetOperatorApp, input, options)
end

function C:getRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRecommendation, input, options)
end

function C:getService(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetService, input, options)
end

function C:listAgentSpaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgentSpaces, input, options)
end

function C:listAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociations, input, options)
end

function C:listBacklogTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBacklogTasks, input, options)
end

function C:listChats(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListChats, input, options)
end

function C:listExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExecutions, input, options)
end

function C:listGoals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListGoals, input, options)
end

function C:listJournalRecords(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJournalRecords, input, options)
end

function C:listPendingMessages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPendingMessages, input, options)
end

function C:listPrivateConnections(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrivateConnections, input, options)
end

function C:listRecommendations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecommendations, input, options)
end

function C:listServices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServices, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWebhooks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebhooks, input, options)
end

function C:registerService(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterService, input, options)
end

function C:sendMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendMessage, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAgentSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgentSpace, input, options)
end

function C:updateAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAssociation, input, options)
end

function C:updateBacklogTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBacklogTask, input, options)
end

function C:updateGoal(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGoal, input, options)
end

function C:updateOperatorAppIdpConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateOperatorAppIdpConfig, input, options)
end

function C:updatePrivateConnectionCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePrivateConnectionCertificate, input, options)
end

function C:updateRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecommendation, input, options)
end

function C:validateAwsAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ValidateAwsAssociations, input, options)
end

return M
