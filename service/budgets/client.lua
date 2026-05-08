



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("budgets.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("budgets.schemas")
local traits = require("smithy.traits")
local types = require("budgets.types")
local sdk_defaults = require("aws.sdk_defaults")
































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSBudgetServiceGateway"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "budgets", signing_region = c.region } }
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

function C:createBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBudget, input, options)
end

function C:createBudgetAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBudgetAction, input, options)
end

function C:createNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotification, input, options)
end

function C:createSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSubscriber, input, options)
end

function C:deleteBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBudget, input, options)
end

function C:deleteBudgetAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBudgetAction, input, options)
end

function C:deleteNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotification, input, options)
end

function C:deleteSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSubscriber, input, options)
end

function C:describeBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudget, input, options)
end

function C:describeBudgetAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgetAction, input, options)
end

function C:describeBudgetActionHistories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgetActionHistories, input, options)
end

function C:describeBudgetActionsForAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgetActionsForAccount, input, options)
end

function C:describeBudgetActionsForBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgetActionsForBudget, input, options)
end

function C:describeBudgetNotificationsForAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgetNotificationsForAccount, input, options)
end

function C:describeBudgetPerformanceHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgetPerformanceHistory, input, options)
end

function C:describeBudgets(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBudgets, input, options)
end

function C:describeNotificationsForBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotificationsForBudget, input, options)
end

function C:describeSubscribersForNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSubscribersForNotification, input, options)
end

function C:executeBudgetAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteBudgetAction, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBudget, input, options)
end

function C:updateBudgetAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBudgetAction, input, options)
end

function C:updateNotification(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotification, input, options)
end

function C:updateSubscriber(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSubscriber, input, options)
end

return M
