local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("managedblockchain.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("managedblockchain.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TaigaWebService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "managedblockchain", signing_region = cfg.region } }
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

function Client:createAccessor(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessor",
        input_schema = types.CreateAccessorInput,
        output_schema = types.CreateAccessorOutput,
        http_method = "POST",
        http_path = "/accessors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMember(input, options)
    return self:invokeOperation(input, {
        name = "CreateMember",
        input_schema = types.CreateMemberInput,
        output_schema = types.CreateMemberOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetwork",
        input_schema = types.CreateNetworkInput,
        output_schema = types.CreateNetworkOutput,
        http_method = "POST",
        http_path = "/networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNode(input, options)
    return self:invokeOperation(input, {
        name = "CreateNode",
        input_schema = types.CreateNodeInput,
        output_schema = types.CreateNodeOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProposal(input, options)
    return self:invokeOperation(input, {
        name = "CreateProposal",
        input_schema = types.CreateProposalInput,
        output_schema = types.CreateProposalOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/proposals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessor",
        input_schema = types.DeleteAccessorInput,
        output_schema = types.DeleteAccessorOutput,
        http_method = "DELETE",
        http_path = "/accessors/{AccessorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMember(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMember",
        input_schema = types.DeleteMemberInput,
        output_schema = types.DeleteMemberOutput,
        http_method = "DELETE",
        http_path = "/networks/{NetworkId}/members/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNode",
        input_schema = types.DeleteNodeInput,
        output_schema = types.DeleteNodeOutput,
        http_method = "DELETE",
        http_path = "/networks/{NetworkId}/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccessor(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessor",
        input_schema = types.GetAccessorInput,
        output_schema = types.GetAccessorOutput,
        http_method = "GET",
        http_path = "/accessors/{AccessorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMember(input, options)
    return self:invokeOperation(input, {
        name = "GetMember",
        input_schema = types.GetMemberInput,
        output_schema = types.GetMemberOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/members/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetNetwork",
        input_schema = types.GetNetworkInput,
        output_schema = types.GetNetworkOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getNode(input, options)
    return self:invokeOperation(input, {
        name = "GetNode",
        input_schema = types.GetNodeInput,
        output_schema = types.GetNodeOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProposal(input, options)
    return self:invokeOperation(input, {
        name = "GetProposal",
        input_schema = types.GetProposalInput,
        output_schema = types.GetProposalOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccessors(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessors",
        input_schema = types.ListAccessorsInput,
        output_schema = types.ListAccessorsOutput,
        http_method = "GET",
        http_path = "/accessors",
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
        http_method = "GET",
        http_path = "/invitations",
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
        http_method = "GET",
        http_path = "/networks/{NetworkId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworks",
        input_schema = types.ListNetworksInput,
        output_schema = types.ListNetworksOutput,
        http_method = "GET",
        http_path = "/networks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = types.ListNodesInput,
        output_schema = types.ListNodesOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProposals(input, options)
    return self:invokeOperation(input, {
        name = "ListProposals",
        input_schema = types.ListProposalsInput,
        output_schema = types.ListProposalsOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/proposals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProposalVotes(input, options)
    return self:invokeOperation(input, {
        name = "ListProposalVotes",
        input_schema = types.ListProposalVotesInput,
        output_schema = types.ListProposalVotesOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}/votes",
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
        http_method = "DELETE",
        http_path = "/invitations/{InvitationId}",
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

function Client:updateMember(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMember",
        input_schema = types.UpdateMemberInput,
        output_schema = types.UpdateMemberOutput,
        http_method = "PATCH",
        http_path = "/networks/{NetworkId}/members/{MemberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNode",
        input_schema = types.UpdateNodeInput,
        output_schema = types.UpdateNodeOutput,
        http_method = "PATCH",
        http_path = "/networks/{NetworkId}/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:voteOnProposal(input, options)
    return self:invokeOperation(input, {
        name = "VoteOnProposal",
        input_schema = types.VoteOnProposalInput,
        output_schema = types.VoteOnProposalOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}/votes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
