local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sns.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("sns.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonSimpleNotificationService"
    cfg.signing_name = "amazonsimplenotificationservice"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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

function Client:addPermission(input, options)
    return self:invokeOperation(input, {
        name = "AddPermission",
        input_schema = types.AddPermissionInput,
        output_schema = types.AddPermissionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:checkIfPhoneNumberIsOptedOut(input, options)
    return self:invokeOperation(input, {
        name = "CheckIfPhoneNumberIsOptedOut",
        input_schema = types.CheckIfPhoneNumberIsOptedOutInput,
        output_schema = types.CheckIfPhoneNumberIsOptedOutOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:confirmSubscription(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmSubscription",
        input_schema = types.ConfirmSubscriptionInput,
        output_schema = types.ConfirmSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPlatformApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlatformApplication",
        input_schema = types.CreatePlatformApplicationInput,
        output_schema = types.CreatePlatformApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPlatformEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlatformEndpoint",
        input_schema = types.CreatePlatformEndpointInput,
        output_schema = types.CreatePlatformEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createSMSSandboxPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "CreateSMSSandboxPhoneNumber",
        input_schema = types.CreateSMSSandboxPhoneNumberInput,
        output_schema = types.CreateSMSSandboxPhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTopic(input, options)
    return self:invokeOperation(input, {
        name = "CreateTopic",
        input_schema = types.CreateTopicInput,
        output_schema = types.CreateTopicOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePlatformApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlatformApplication",
        input_schema = types.DeletePlatformApplicationInput,
        output_schema = types.DeletePlatformApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSMSSandboxPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSMSSandboxPhoneNumber",
        input_schema = types.DeleteSMSSandboxPhoneNumberInput,
        output_schema = types.DeleteSMSSandboxPhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTopic(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTopic",
        input_schema = types.DeleteTopicInput,
        output_schema = types.DeleteTopicOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDataProtectionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetDataProtectionPolicy",
        input_schema = types.GetDataProtectionPolicyInput,
        output_schema = types.GetDataProtectionPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getEndpointAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetEndpointAttributes",
        input_schema = types.GetEndpointAttributesInput,
        output_schema = types.GetEndpointAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPlatformApplicationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetPlatformApplicationAttributes",
        input_schema = types.GetPlatformApplicationAttributesInput,
        output_schema = types.GetPlatformApplicationAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSMSAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetSMSAttributes",
        input_schema = types.GetSMSAttributesInput,
        output_schema = types.GetSMSAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSMSSandboxAccountStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetSMSSandboxAccountStatus",
        input_schema = types.GetSMSSandboxAccountStatusInput,
        output_schema = types.GetSMSSandboxAccountStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getSubscriptionAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetSubscriptionAttributes",
        input_schema = types.GetSubscriptionAttributesInput,
        output_schema = types.GetSubscriptionAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTopicAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetTopicAttributes",
        input_schema = types.GetTopicAttributesInput,
        output_schema = types.GetTopicAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listEndpointsByPlatformApplication(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpointsByPlatformApplication",
        input_schema = types.ListEndpointsByPlatformApplicationInput,
        output_schema = types.ListEndpointsByPlatformApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOriginationNumbers(input, options)
    return self:invokeOperation(input, {
        name = "ListOriginationNumbers",
        input_schema = types.ListOriginationNumbersInput,
        output_schema = types.ListOriginationNumbersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPhoneNumbersOptedOut(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumbersOptedOut",
        input_schema = types.ListPhoneNumbersOptedOutInput,
        output_schema = types.ListPhoneNumbersOptedOutOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPlatformApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListPlatformApplications",
        input_schema = types.ListPlatformApplicationsInput,
        output_schema = types.ListPlatformApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSMSSandboxPhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "ListSMSSandboxPhoneNumbers",
        input_schema = types.ListSMSSandboxPhoneNumbersInput,
        output_schema = types.ListSMSSandboxPhoneNumbersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptions",
        input_schema = types.ListSubscriptionsInput,
        output_schema = types.ListSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSubscriptionsByTopic(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscriptionsByTopic",
        input_schema = types.ListSubscriptionsByTopicInput,
        output_schema = types.ListSubscriptionsByTopicOutput,
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

function Client:listTopics(input, options)
    return self:invokeOperation(input, {
        name = "ListTopics",
        input_schema = types.ListTopicsInput,
        output_schema = types.ListTopicsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:optInPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "OptInPhoneNumber",
        input_schema = types.OptInPhoneNumberInput,
        output_schema = types.OptInPhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:publish(input, options)
    return self:invokeOperation(input, {
        name = "Publish",
        input_schema = types.PublishInput,
        output_schema = types.PublishOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:publishBatch(input, options)
    return self:invokeOperation(input, {
        name = "PublishBatch",
        input_schema = types.PublishBatchInput,
        output_schema = types.PublishBatchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putDataProtectionPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutDataProtectionPolicy",
        input_schema = types.PutDataProtectionPolicyInput,
        output_schema = types.PutDataProtectionPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removePermission(input, options)
    return self:invokeOperation(input, {
        name = "RemovePermission",
        input_schema = types.RemovePermissionInput,
        output_schema = types.RemovePermissionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setEndpointAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SetEndpointAttributes",
        input_schema = types.SetEndpointAttributesInput,
        output_schema = types.SetEndpointAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setPlatformApplicationAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SetPlatformApplicationAttributes",
        input_schema = types.SetPlatformApplicationAttributesInput,
        output_schema = types.SetPlatformApplicationAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setSMSAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SetSMSAttributes",
        input_schema = types.SetSMSAttributesInput,
        output_schema = types.SetSMSAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setSubscriptionAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SetSubscriptionAttributes",
        input_schema = types.SetSubscriptionAttributesInput,
        output_schema = types.SetSubscriptionAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:setTopicAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SetTopicAttributes",
        input_schema = types.SetTopicAttributesInput,
        output_schema = types.SetTopicAttributesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:subscribe(input, options)
    return self:invokeOperation(input, {
        name = "Subscribe",
        input_schema = types.SubscribeInput,
        output_schema = types.SubscribeOutput,
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

function Client:unsubscribe(input, options)
    return self:invokeOperation(input, {
        name = "Unsubscribe",
        input_schema = types.UnsubscribeInput,
        output_schema = types.UnsubscribeOutput,
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

function Client:verifySMSSandboxPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "VerifySMSSandboxPhoneNumber",
        input_schema = types.VerifySMSSandboxPhoneNumberInput,
        output_schema = types.VerifySMSSandboxPhoneNumberOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
