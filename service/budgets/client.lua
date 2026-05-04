local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("budgets.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("budgets.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBudgetServiceGateway"
    cfg.signing_name = "awsbudgetservicegateway"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createBudget(input, options)
    return self:invokeOperation(input, {
        name = "CreateBudget",
        input_schema = types.CreateBudgetInput,
        output_schema = types.CreateBudgetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateBudgetAction",
        input_schema = types.CreateBudgetActionInput,
        output_schema = types.CreateBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createNotification(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotification",
        input_schema = types.CreateNotificationInput,
        output_schema = types.CreateNotificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriber",
        input_schema = types.CreateSubscriberInput,
        output_schema = types.CreateSubscriberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBudget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBudget",
        input_schema = types.DeleteBudgetInput,
        output_schema = types.DeleteBudgetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBudgetAction",
        input_schema = types.DeleteBudgetActionInput,
        output_schema = types.DeleteBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteNotification(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotification",
        input_schema = types.DeleteNotificationInput,
        output_schema = types.DeleteNotificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriber",
        input_schema = types.DeleteSubscriberInput,
        output_schema = types.DeleteSubscriberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudget",
        input_schema = types.DescribeBudgetInput,
        output_schema = types.DescribeBudgetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetAction",
        input_schema = types.DescribeBudgetActionInput,
        output_schema = types.DescribeBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgetActionHistories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetActionHistories",
        input_schema = types.DescribeBudgetActionHistoriesInput,
        output_schema = types.DescribeBudgetActionHistoriesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgetActionsForAccount(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetActionsForAccount",
        input_schema = types.DescribeBudgetActionsForAccountInput,
        output_schema = types.DescribeBudgetActionsForAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgetActionsForBudget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetActionsForBudget",
        input_schema = types.DescribeBudgetActionsForBudgetInput,
        output_schema = types.DescribeBudgetActionsForBudgetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgetNotificationsForAccount(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetNotificationsForAccount",
        input_schema = types.DescribeBudgetNotificationsForAccountInput,
        output_schema = types.DescribeBudgetNotificationsForAccountOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgetPerformanceHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetPerformanceHistory",
        input_schema = types.DescribeBudgetPerformanceHistoryInput,
        output_schema = types.DescribeBudgetPerformanceHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeBudgets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgets",
        input_schema = types.DescribeBudgetsInput,
        output_schema = types.DescribeBudgetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeNotificationsForBudget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationsForBudget",
        input_schema = types.DescribeNotificationsForBudgetInput,
        output_schema = types.DescribeNotificationsForBudgetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSubscribersForNotification(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubscribersForNotification",
        input_schema = types.DescribeSubscribersForNotificationInput,
        output_schema = types.DescribeSubscribersForNotificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteBudgetAction",
        input_schema = types.ExecuteBudgetActionInput,
        output_schema = types.ExecuteBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBudget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBudget",
        input_schema = types.UpdateBudgetInput,
        output_schema = types.UpdateBudgetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBudgetAction",
        input_schema = types.UpdateBudgetActionInput,
        output_schema = types.UpdateBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateNotification(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotification",
        input_schema = types.UpdateNotificationInput,
        output_schema = types.UpdateNotificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriber",
        input_schema = types.UpdateSubscriberInput,
        output_schema = types.UpdateSubscriberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
