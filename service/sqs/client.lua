local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sqs.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("sqs.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSQS"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sqs", signing_region = cfg.region } }
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

function Client:addPermission(input, options)
    return self:invokeOperation(input, {
        name = "AddPermission",
        input_schema = types.AddPermissionInput,
        output_schema = types.AddPermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMessageMoveTask(input, options)
    return self:invokeOperation(input, {
        name = "CancelMessageMoveTask",
        input_schema = types.CancelMessageMoveTaskInput,
        output_schema = types.CancelMessageMoveTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changeMessageVisibility(input, options)
    return self:invokeOperation(input, {
        name = "ChangeMessageVisibility",
        input_schema = types.ChangeMessageVisibilityInput,
        output_schema = types.ChangeMessageVisibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changeMessageVisibilityBatch(input, options)
    return self:invokeOperation(input, {
        name = "ChangeMessageVisibilityBatch",
        input_schema = types.ChangeMessageVisibilityBatchInput,
        output_schema = types.ChangeMessageVisibilityBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueue",
        input_schema = types.CreateQueueInput,
        output_schema = types.CreateQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMessage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessage",
        input_schema = types.DeleteMessageInput,
        output_schema = types.DeleteMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMessageBatch(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMessageBatch",
        input_schema = types.DeleteMessageBatchInput,
        output_schema = types.DeleteMessageBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueue",
        input_schema = types.DeleteQueueInput,
        output_schema = types.DeleteQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueueAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetQueueAttributes",
        input_schema = types.GetQueueAttributesInput,
        output_schema = types.GetQueueAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueueUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetQueueUrl",
        input_schema = types.GetQueueUrlInput,
        output_schema = types.GetQueueUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeadLetterSourceQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListDeadLetterSourceQueues",
        input_schema = types.ListDeadLetterSourceQueuesInput,
        output_schema = types.ListDeadLetterSourceQueuesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMessageMoveTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListMessageMoveTasks",
        input_schema = types.ListMessageMoveTasksInput,
        output_schema = types.ListMessageMoveTasksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListQueues",
        input_schema = types.ListQueuesInput,
        output_schema = types.ListQueuesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueTags(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueTags",
        input_schema = types.ListQueueTagsInput,
        output_schema = types.ListQueueTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purgeQueue(input, options)
    return self:invokeOperation(input, {
        name = "PurgeQueue",
        input_schema = types.PurgeQueueInput,
        output_schema = types.PurgeQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:receiveMessage(input, options)
    return self:invokeOperation(input, {
        name = "ReceiveMessage",
        input_schema = types.ReceiveMessageInput,
        output_schema = types.ReceiveMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemovePermission",
        input_schema = types.RemovePermissionInput,
        output_schema = types.RemovePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMessage(input, options)
    return self:invokeOperation(input, {
        name = "SendMessage",
        input_schema = types.SendMessageInput,
        output_schema = types.SendMessageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendMessageBatch(input, options)
    return self:invokeOperation(input, {
        name = "SendMessageBatch",
        input_schema = types.SendMessageBatchInput,
        output_schema = types.SendMessageBatchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setQueueAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SetQueueAttributes",
        input_schema = types.SetQueueAttributesInput,
        output_schema = types.SetQueueAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMessageMoveTask(input, options)
    return self:invokeOperation(input, {
        name = "StartMessageMoveTask",
        input_schema = types.StartMessageMoveTaskInput,
        output_schema = types.StartMessageMoveTaskOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagQueue(input, options)
    return self:invokeOperation(input, {
        name = "TagQueue",
        input_schema = types.TagQueueInput,
        output_schema = types.TagQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagQueue(input, options)
    return self:invokeOperation(input, {
        name = "UntagQueue",
        input_schema = types.UntagQueueInput,
        output_schema = types.UntagQueueOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
