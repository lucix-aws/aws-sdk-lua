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
    cfg.signing_name = "taigawebservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:createAccessor(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessor",
        input_schema = types.CreateAccessorInput,
        output_schema = types.CreateAccessorOutput,
        http_method = "POST",
        http_path = "/accessors",
    }, options)
end

function Client:createMember(input, options)
    return self:invokeOperation(input, {
        name = "CreateMember",
        input_schema = types.CreateMemberInput,
        output_schema = types.CreateMemberOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/members",
    }, options)
end

function Client:createNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateNetwork",
        input_schema = types.CreateNetworkInput,
        output_schema = types.CreateNetworkOutput,
        http_method = "POST",
        http_path = "/networks",
    }, options)
end

function Client:createNode(input, options)
    return self:invokeOperation(input, {
        name = "CreateNode",
        input_schema = types.CreateNodeInput,
        output_schema = types.CreateNodeOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/nodes",
    }, options)
end

function Client:createProposal(input, options)
    return self:invokeOperation(input, {
        name = "CreateProposal",
        input_schema = types.CreateProposalInput,
        output_schema = types.CreateProposalOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/proposals",
    }, options)
end

function Client:deleteAccessor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessor",
        input_schema = types.DeleteAccessorInput,
        output_schema = types.DeleteAccessorOutput,
        http_method = "DELETE",
        http_path = "/accessors/{AccessorId}",
    }, options)
end

function Client:deleteMember(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMember",
        input_schema = types.DeleteMemberInput,
        output_schema = types.DeleteMemberOutput,
        http_method = "DELETE",
        http_path = "/networks/{NetworkId}/members/{MemberId}",
    }, options)
end

function Client:deleteNode(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNode",
        input_schema = types.DeleteNodeInput,
        output_schema = types.DeleteNodeOutput,
        http_method = "DELETE",
        http_path = "/networks/{NetworkId}/nodes/{NodeId}",
    }, options)
end

function Client:getAccessor(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessor",
        input_schema = types.GetAccessorInput,
        output_schema = types.GetAccessorOutput,
        http_method = "GET",
        http_path = "/accessors/{AccessorId}",
    }, options)
end

function Client:getMember(input, options)
    return self:invokeOperation(input, {
        name = "GetMember",
        input_schema = types.GetMemberInput,
        output_schema = types.GetMemberOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/members/{MemberId}",
    }, options)
end

function Client:getNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetNetwork",
        input_schema = types.GetNetworkInput,
        output_schema = types.GetNetworkOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}",
    }, options)
end

function Client:getNode(input, options)
    return self:invokeOperation(input, {
        name = "GetNode",
        input_schema = types.GetNodeInput,
        output_schema = types.GetNodeOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/nodes/{NodeId}",
    }, options)
end

function Client:getProposal(input, options)
    return self:invokeOperation(input, {
        name = "GetProposal",
        input_schema = types.GetProposalInput,
        output_schema = types.GetProposalOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}",
    }, options)
end

function Client:listAccessors(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessors",
        input_schema = types.ListAccessorsInput,
        output_schema = types.ListAccessorsOutput,
        http_method = "GET",
        http_path = "/accessors",
    }, options)
end

function Client:listInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvitations",
        input_schema = types.ListInvitationsInput,
        output_schema = types.ListInvitationsOutput,
        http_method = "GET",
        http_path = "/invitations",
    }, options)
end

function Client:listMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListMembers",
        input_schema = types.ListMembersInput,
        output_schema = types.ListMembersOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/members",
    }, options)
end

function Client:listNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListNetworks",
        input_schema = types.ListNetworksInput,
        output_schema = types.ListNetworksOutput,
        http_method = "GET",
        http_path = "/networks",
    }, options)
end

function Client:listNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListNodes",
        input_schema = types.ListNodesInput,
        output_schema = types.ListNodesOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/nodes",
    }, options)
end

function Client:listProposals(input, options)
    return self:invokeOperation(input, {
        name = "ListProposals",
        input_schema = types.ListProposalsInput,
        output_schema = types.ListProposalsOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/proposals",
    }, options)
end

function Client:listProposalVotes(input, options)
    return self:invokeOperation(input, {
        name = "ListProposalVotes",
        input_schema = types.ListProposalVotesInput,
        output_schema = types.ListProposalVotesOutput,
        http_method = "GET",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}/votes",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:rejectInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectInvitation",
        input_schema = types.RejectInvitationInput,
        output_schema = types.RejectInvitationOutput,
        http_method = "DELETE",
        http_path = "/invitations/{InvitationId}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateMember(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMember",
        input_schema = types.UpdateMemberInput,
        output_schema = types.UpdateMemberOutput,
        http_method = "PATCH",
        http_path = "/networks/{NetworkId}/members/{MemberId}",
    }, options)
end

function Client:updateNode(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNode",
        input_schema = types.UpdateNodeInput,
        output_schema = types.UpdateNodeOutput,
        http_method = "PATCH",
        http_path = "/networks/{NetworkId}/nodes/{NodeId}",
    }, options)
end

function Client:voteOnProposal(input, options)
    return self:invokeOperation(input, {
        name = "VoteOnProposal",
        input_schema = types.VoteOnProposalInput,
        output_schema = types.VoteOnProposalOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}/votes",
    }, options)
end

return M
