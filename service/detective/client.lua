local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("detective.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("detective.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonDetective"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "detective", signing_region = cfg.region } }
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

function Client:acceptInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptInvitation",
        input_schema = types.AcceptInvitationInput,
        output_schema = types.AcceptInvitationOutput,
        http_method = "PUT",
        http_path = "/invitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetGraphMemberDatasources(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetGraphMemberDatasources",
        input_schema = types.BatchGetGraphMemberDatasourcesInput,
        output_schema = types.BatchGetGraphMemberDatasourcesOutput,
        http_method = "POST",
        http_path = "/graph/datasources/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetMembershipDatasources(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMembershipDatasources",
        input_schema = types.BatchGetMembershipDatasourcesInput,
        output_schema = types.BatchGetMembershipDatasourcesOutput,
        http_method = "POST",
        http_path = "/membership/datasources/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGraph(input, options)
    return self:invokeOperation(input, {
        name = "CreateGraph",
        input_schema = types.CreateGraphInput,
        output_schema = types.CreateGraphOutput,
        http_method = "POST",
        http_path = "/graph",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMembers(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembers",
        input_schema = types.CreateMembersInput,
        output_schema = types.CreateMembersOutput,
        http_method = "POST",
        http_path = "/graph/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGraph(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGraph",
        input_schema = types.DeleteGraphInput,
        output_schema = types.DeleteGraphOutput,
        http_method = "POST",
        http_path = "/graph/removal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMembers(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMembers",
        input_schema = types.DeleteMembersInput,
        output_schema = types.DeleteMembersOutput,
        http_method = "POST",
        http_path = "/graph/members/removal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationConfiguration",
        input_schema = types.DescribeOrganizationConfigurationInput,
        output_schema = types.DescribeOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/orgs/describeOrganizationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisableOrganizationAdminAccount",
        input_schema = types.DisableOrganizationAdminAccountInput,
        output_schema = types.DisableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/orgs/disableAdminAccount",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMembership(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMembership",
        input_schema = types.DisassociateMembershipInput,
        output_schema = types.DisassociateMembershipOutput,
        http_method = "POST",
        http_path = "/membership/removal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableOrganizationAdminAccount(input, options)
    return self:invokeOperation(input, {
        name = "EnableOrganizationAdminAccount",
        input_schema = types.EnableOrganizationAdminAccountInput,
        output_schema = types.EnableOrganizationAdminAccountOutput,
        http_method = "POST",
        http_path = "/orgs/enableAdminAccount",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInvestigation(input, options)
    return self:invokeOperation(input, {
        name = "GetInvestigation",
        input_schema = types.GetInvestigationInput,
        output_schema = types.GetInvestigationOutput,
        http_method = "POST",
        http_path = "/investigations/getInvestigation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMembers(input, options)
    return self:invokeOperation(input, {
        name = "GetMembers",
        input_schema = types.GetMembersInput,
        output_schema = types.GetMembersOutput,
        http_method = "POST",
        http_path = "/graph/members/get",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDatasourcePackages(input, options)
    return self:invokeOperation(input, {
        name = "ListDatasourcePackages",
        input_schema = types.ListDatasourcePackagesInput,
        output_schema = types.ListDatasourcePackagesOutput,
        http_method = "POST",
        http_path = "/graph/datasources/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGraphs(input, options)
    return self:invokeOperation(input, {
        name = "ListGraphs",
        input_schema = types.ListGraphsInput,
        output_schema = types.ListGraphsOutput,
        http_method = "POST",
        http_path = "/graphs/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIndicators(input, options)
    return self:invokeOperation(input, {
        name = "ListIndicators",
        input_schema = types.ListIndicatorsInput,
        output_schema = types.ListIndicatorsOutput,
        http_method = "POST",
        http_path = "/investigations/listIndicators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvestigations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvestigations",
        input_schema = types.ListInvestigationsInput,
        output_schema = types.ListInvestigationsOutput,
        http_method = "POST",
        http_path = "/investigations/listInvestigations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvitations",
        input_schema = types.ListInvitationsInput,
        output_schema = types.ListInvitationsOutput,
        http_method = "POST",
        http_path = "/invitations/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = types.ListMembersInput,
        output_schema = types.ListMembersOutput,
        http_method = "POST",
        http_path = "/graph/members/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationAdminAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationAdminAccounts",
        input_schema = types.ListOrganizationAdminAccountsInput,
        output_schema = types.ListOrganizationAdminAccountsOutput,
        http_method = "POST",
        http_path = "/orgs/adminAccountslist",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectInvitation",
        input_schema = types.RejectInvitationInput,
        output_schema = types.RejectInvitationOutput,
        http_method = "POST",
        http_path = "/invitation/removal",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInvestigation(input, options)
    return self:invokeOperation(input, {
        name = "StartInvestigation",
        input_schema = types.StartInvestigationInput,
        output_schema = types.StartInvestigationOutput,
        http_method = "POST",
        http_path = "/investigations/startInvestigation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMonitoringMember(input, options)
    return self:invokeOperation(input, {
        name = "StartMonitoringMember",
        input_schema = types.StartMonitoringMemberInput,
        output_schema = types.StartMonitoringMemberOutput,
        http_method = "POST",
        http_path = "/graph/member/monitoringstate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDatasourcePackages(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDatasourcePackages",
        input_schema = types.UpdateDatasourcePackagesInput,
        output_schema = types.UpdateDatasourcePackagesOutput,
        http_method = "POST",
        http_path = "/graph/datasources/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInvestigationState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInvestigationState",
        input_schema = types.UpdateInvestigationStateInput,
        output_schema = types.UpdateInvestigationStateOutput,
        http_method = "POST",
        http_path = "/investigations/updateInvestigationState",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOrganizationConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationConfiguration",
        input_schema = types.UpdateOrganizationConfigurationInput,
        output_schema = types.UpdateOrganizationConfigurationOutput,
        http_method = "POST",
        http_path = "/orgs/updateOrganizationConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
