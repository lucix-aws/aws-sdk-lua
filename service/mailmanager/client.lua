local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mailmanager.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("mailmanager.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MailManagerSvc"
    cfg.signing_name = "mailmanagersvc"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:createAddonInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateAddonInstance",
        input_schema = types.CreateAddonInstanceInput,
        output_schema = types.CreateAddonInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAddonSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateAddonSubscription",
        input_schema = types.CreateAddonSubscriptionInput,
        output_schema = types.CreateAddonSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAddressList(input, options)
    return self:invokeOperation(input, {
        name = "CreateAddressList",
        input_schema = types.CreateAddressListInput,
        output_schema = types.CreateAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAddressListImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateAddressListImportJob",
        input_schema = types.CreateAddressListImportJobInput,
        output_schema = types.CreateAddressListImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createArchive(input, options)
    return self:invokeOperation(input, {
        name = "CreateArchive",
        input_schema = types.CreateArchiveInput,
        output_schema = types.CreateArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createIngressPoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateIngressPoint",
        input_schema = types.CreateIngressPointInput,
        output_schema = types.CreateIngressPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRelay(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelay",
        input_schema = types.CreateRelayInput,
        output_schema = types.CreateRelayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateRuleSet",
        input_schema = types.CreateRuleSetInput,
        output_schema = types.CreateRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficPolicy",
        input_schema = types.CreateTrafficPolicyInput,
        output_schema = types.CreateTrafficPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAddonInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAddonInstance",
        input_schema = types.DeleteAddonInstanceInput,
        output_schema = types.DeleteAddonInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAddonSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAddonSubscription",
        input_schema = types.DeleteAddonSubscriptionInput,
        output_schema = types.DeleteAddonSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAddressList(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAddressList",
        input_schema = types.DeleteAddressListInput,
        output_schema = types.DeleteAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteArchive(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArchive",
        input_schema = types.DeleteArchiveInput,
        output_schema = types.DeleteArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIngressPoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIngressPoint",
        input_schema = types.DeleteIngressPointInput,
        output_schema = types.DeleteIngressPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRelay(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRelay",
        input_schema = types.DeleteRelayInput,
        output_schema = types.DeleteRelayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRuleSet",
        input_schema = types.DeleteRuleSetInput,
        output_schema = types.DeleteRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficPolicy",
        input_schema = types.DeleteTrafficPolicyInput,
        output_schema = types.DeleteTrafficPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterMemberFromAddressList(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterMemberFromAddressList",
        input_schema = types.DeregisterMemberFromAddressListInput,
        output_schema = types.DeregisterMemberFromAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAddonInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetAddonInstance",
        input_schema = types.GetAddonInstanceInput,
        output_schema = types.GetAddonInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAddonSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetAddonSubscription",
        input_schema = types.GetAddonSubscriptionInput,
        output_schema = types.GetAddonSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAddressList(input, options)
    return self:invokeOperation(input, {
        name = "GetAddressList",
        input_schema = types.GetAddressListInput,
        output_schema = types.GetAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAddressListImportJob(input, options)
    return self:invokeOperation(input, {
        name = "GetAddressListImportJob",
        input_schema = types.GetAddressListImportJobInput,
        output_schema = types.GetAddressListImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getArchive(input, options)
    return self:invokeOperation(input, {
        name = "GetArchive",
        input_schema = types.GetArchiveInput,
        output_schema = types.GetArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getArchiveExport(input, options)
    return self:invokeOperation(input, {
        name = "GetArchiveExport",
        input_schema = types.GetArchiveExportInput,
        output_schema = types.GetArchiveExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getArchiveMessage(input, options)
    return self:invokeOperation(input, {
        name = "GetArchiveMessage",
        input_schema = types.GetArchiveMessageInput,
        output_schema = types.GetArchiveMessageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getArchiveMessageContent(input, options)
    return self:invokeOperation(input, {
        name = "GetArchiveMessageContent",
        input_schema = types.GetArchiveMessageContentInput,
        output_schema = types.GetArchiveMessageContentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getArchiveSearch(input, options)
    return self:invokeOperation(input, {
        name = "GetArchiveSearch",
        input_schema = types.GetArchiveSearchInput,
        output_schema = types.GetArchiveSearchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getArchiveSearchResults(input, options)
    return self:invokeOperation(input, {
        name = "GetArchiveSearchResults",
        input_schema = types.GetArchiveSearchResultsInput,
        output_schema = types.GetArchiveSearchResultsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getIngressPoint(input, options)
    return self:invokeOperation(input, {
        name = "GetIngressPoint",
        input_schema = types.GetIngressPointInput,
        output_schema = types.GetIngressPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getMemberOfAddressList(input, options)
    return self:invokeOperation(input, {
        name = "GetMemberOfAddressList",
        input_schema = types.GetMemberOfAddressListInput,
        output_schema = types.GetMemberOfAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRelay(input, options)
    return self:invokeOperation(input, {
        name = "GetRelay",
        input_schema = types.GetRelayInput,
        output_schema = types.GetRelayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "GetRuleSet",
        input_schema = types.GetRuleSetInput,
        output_schema = types.GetRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetTrafficPolicy",
        input_schema = types.GetTrafficPolicyInput,
        output_schema = types.GetTrafficPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAddonInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListAddonInstances",
        input_schema = types.ListAddonInstancesInput,
        output_schema = types.ListAddonInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAddonSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListAddonSubscriptions",
        input_schema = types.ListAddonSubscriptionsInput,
        output_schema = types.ListAddonSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAddressListImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAddressListImportJobs",
        input_schema = types.ListAddressListImportJobsInput,
        output_schema = types.ListAddressListImportJobsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAddressLists(input, options)
    return self:invokeOperation(input, {
        name = "ListAddressLists",
        input_schema = types.ListAddressListsInput,
        output_schema = types.ListAddressListsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listArchiveExports(input, options)
    return self:invokeOperation(input, {
        name = "ListArchiveExports",
        input_schema = types.ListArchiveExportsInput,
        output_schema = types.ListArchiveExportsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listArchives(input, options)
    return self:invokeOperation(input, {
        name = "ListArchives",
        input_schema = types.ListArchivesInput,
        output_schema = types.ListArchivesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listArchiveSearches(input, options)
    return self:invokeOperation(input, {
        name = "ListArchiveSearches",
        input_schema = types.ListArchiveSearchesInput,
        output_schema = types.ListArchiveSearchesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listIngressPoints(input, options)
    return self:invokeOperation(input, {
        name = "ListIngressPoints",
        input_schema = types.ListIngressPointsInput,
        output_schema = types.ListIngressPointsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listMembersOfAddressList(input, options)
    return self:invokeOperation(input, {
        name = "ListMembersOfAddressList",
        input_schema = types.ListMembersOfAddressListInput,
        output_schema = types.ListMembersOfAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRelays(input, options)
    return self:invokeOperation(input, {
        name = "ListRelays",
        input_schema = types.ListRelaysInput,
        output_schema = types.ListRelaysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRuleSets(input, options)
    return self:invokeOperation(input, {
        name = "ListRuleSets",
        input_schema = types.ListRuleSetsInput,
        output_schema = types.ListRuleSetsOutput,
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

function Client:listTrafficPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficPolicies",
        input_schema = types.ListTrafficPoliciesInput,
        output_schema = types.ListTrafficPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerMemberToAddressList(input, options)
    return self:invokeOperation(input, {
        name = "RegisterMemberToAddressList",
        input_schema = types.RegisterMemberToAddressListInput,
        output_schema = types.RegisterMemberToAddressListOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startAddressListImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StartAddressListImportJob",
        input_schema = types.StartAddressListImportJobInput,
        output_schema = types.StartAddressListImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startArchiveExport(input, options)
    return self:invokeOperation(input, {
        name = "StartArchiveExport",
        input_schema = types.StartArchiveExportInput,
        output_schema = types.StartArchiveExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startArchiveSearch(input, options)
    return self:invokeOperation(input, {
        name = "StartArchiveSearch",
        input_schema = types.StartArchiveSearchInput,
        output_schema = types.StartArchiveSearchOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopAddressListImportJob(input, options)
    return self:invokeOperation(input, {
        name = "StopAddressListImportJob",
        input_schema = types.StopAddressListImportJobInput,
        output_schema = types.StopAddressListImportJobOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopArchiveExport(input, options)
    return self:invokeOperation(input, {
        name = "StopArchiveExport",
        input_schema = types.StopArchiveExportInput,
        output_schema = types.StopArchiveExportOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopArchiveSearch(input, options)
    return self:invokeOperation(input, {
        name = "StopArchiveSearch",
        input_schema = types.StopArchiveSearchInput,
        output_schema = types.StopArchiveSearchOutput,
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

function Client:updateArchive(input, options)
    return self:invokeOperation(input, {
        name = "UpdateArchive",
        input_schema = types.UpdateArchiveInput,
        output_schema = types.UpdateArchiveOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateIngressPoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIngressPoint",
        input_schema = types.UpdateIngressPointInput,
        output_schema = types.UpdateIngressPointOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRelay(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelay",
        input_schema = types.UpdateRelayInput,
        output_schema = types.UpdateRelayOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateRuleSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRuleSet",
        input_schema = types.UpdateRuleSetInput,
        output_schema = types.UpdateRuleSetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrafficPolicy",
        input_schema = types.UpdateTrafficPolicyInput,
        output_schema = types.UpdateTrafficPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
