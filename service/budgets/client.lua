local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("budgets.endpoint_rules")
local schemas = require("budgets.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBudgetServiceGateway"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "budgets", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createBudget(input, options)
    return self:invokeOperation(input, {
        name = "CreateBudget",
        input_schema = schemas.CreateBudgetInput,
        output_schema = schemas.CreateBudgetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateBudgetAction",
        input_schema = schemas.CreateBudgetActionInput,
        output_schema = schemas.CreateBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotification(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotification",
        input_schema = schemas.CreateNotificationInput,
        output_schema = schemas.CreateNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "CreateSubscriber",
        input_schema = schemas.CreateSubscriberInput,
        output_schema = schemas.CreateSubscriberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBudget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBudget",
        input_schema = schemas.DeleteBudgetInput,
        output_schema = schemas.DeleteBudgetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBudgetAction",
        input_schema = schemas.DeleteBudgetActionInput,
        output_schema = schemas.DeleteBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotification(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotification",
        input_schema = schemas.DeleteNotificationInput,
        output_schema = schemas.DeleteNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSubscriber",
        input_schema = schemas.DeleteSubscriberInput,
        output_schema = schemas.DeleteSubscriberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudget",
        input_schema = schemas.DescribeBudgetInput,
        output_schema = schemas.DescribeBudgetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetAction",
        input_schema = schemas.DescribeBudgetActionInput,
        output_schema = schemas.DescribeBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgetActionHistories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetActionHistories",
        input_schema = schemas.DescribeBudgetActionHistoriesInput,
        output_schema = schemas.DescribeBudgetActionHistoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgetActionsForAccount(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetActionsForAccount",
        input_schema = schemas.DescribeBudgetActionsForAccountInput,
        output_schema = schemas.DescribeBudgetActionsForAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgetActionsForBudget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetActionsForBudget",
        input_schema = schemas.DescribeBudgetActionsForBudgetInput,
        output_schema = schemas.DescribeBudgetActionsForBudgetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgetNotificationsForAccount(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetNotificationsForAccount",
        input_schema = schemas.DescribeBudgetNotificationsForAccountInput,
        output_schema = schemas.DescribeBudgetNotificationsForAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgetPerformanceHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgetPerformanceHistory",
        input_schema = schemas.DescribeBudgetPerformanceHistoryInput,
        output_schema = schemas.DescribeBudgetPerformanceHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBudgets(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBudgets",
        input_schema = schemas.DescribeBudgetsInput,
        output_schema = schemas.DescribeBudgetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotificationsForBudget(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotificationsForBudget",
        input_schema = schemas.DescribeNotificationsForBudgetInput,
        output_schema = schemas.DescribeNotificationsForBudgetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSubscribersForNotification(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubscribersForNotification",
        input_schema = schemas.DescribeSubscribersForNotificationInput,
        output_schema = schemas.DescribeSubscribersForNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteBudgetAction",
        input_schema = schemas.ExecuteBudgetActionInput,
        output_schema = schemas.ExecuteBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBudget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBudget",
        input_schema = schemas.UpdateBudgetInput,
        output_schema = schemas.UpdateBudgetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBudgetAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBudgetAction",
        input_schema = schemas.UpdateBudgetActionInput,
        output_schema = schemas.UpdateBudgetActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotification(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotification",
        input_schema = schemas.UpdateNotificationInput,
        output_schema = schemas.UpdateNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSubscriber(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSubscriber",
        input_schema = schemas.UpdateSubscriberInput,
        output_schema = schemas.UpdateSubscriberOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
