



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sqs.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("sqs.schemas")
local traits = require("smithy.traits")
local types = require("sqs.types")
local sdk_defaults = require("aws.sdk_defaults")





























local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AmazonSQS"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sqs", signing_region = c.region } }
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

function C:addPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddPermission, input, options)
end

function C:cancelMessageMoveTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelMessageMoveTask, input, options)
end

function C:changeMessageVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangeMessageVisibility, input, options)
end

function C:changeMessageVisibilityBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.ChangeMessageVisibilityBatch, input, options)
end

function C:createQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueue, input, options)
end

function C:deleteMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMessage, input, options)
end

function C:deleteMessageBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMessageBatch, input, options)
end

function C:deleteQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueue, input, options)
end

function C:getQueueAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueueAttributes, input, options)
end

function C:getQueueUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueueUrl, input, options)
end

function C:listDeadLetterSourceQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeadLetterSourceQueues, input, options)
end

function C:listMessageMoveTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMessageMoveTasks, input, options)
end

function C:listQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueues, input, options)
end

function C:listQueueTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueTags, input, options)
end

function C:purgeQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.PurgeQueue, input, options)
end

function C:receiveMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReceiveMessage, input, options)
end

function C:removePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.RemovePermission, input, options)
end

function C:sendMessage(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendMessage, input, options)
end

function C:sendMessageBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendMessageBatch, input, options)
end

function C:setQueueAttributes(input, options)
   return self:invokeOperation(schemas.Service, schemas.SetQueueAttributes, input, options)
end

function C:startMessageMoveTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMessageMoveTask, input, options)
end

function C:tagQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagQueue, input, options)
end

function C:untagQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagQueue, input, options)
end

return M
