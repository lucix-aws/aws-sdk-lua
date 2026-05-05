local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("managedblockchain.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("managedblockchain.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.CreateAccessorInput,
        output_schema = schemas.CreateAccessorOutput,
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
        input_schema = schemas.CreateMemberInput,
        output_schema = schemas.CreateMemberOutput,
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
        input_schema = schemas.CreateNetworkInput,
        output_schema = schemas.CreateNetworkOutput,
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
        input_schema = schemas.CreateNodeInput,
        output_schema = schemas.CreateNodeOutput,
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
        input_schema = schemas.CreateProposalInput,
        output_schema = schemas.CreateProposalOutput,
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
        input_schema = schemas.DeleteAccessorInput,
        output_schema = schemas.DeleteAccessorOutput,
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
        input_schema = schemas.DeleteMemberInput,
        output_schema = schemas.DeleteMemberOutput,
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
        input_schema = schemas.DeleteNodeInput,
        output_schema = schemas.DeleteNodeOutput,
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
        input_schema = schemas.GetAccessorInput,
        output_schema = schemas.GetAccessorOutput,
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
        input_schema = schemas.GetMemberInput,
        output_schema = schemas.GetMemberOutput,
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
        input_schema = schemas.GetNetworkInput,
        output_schema = schemas.GetNetworkOutput,
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
        input_schema = schemas.GetNodeInput,
        output_schema = schemas.GetNodeOutput,
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
        input_schema = schemas.GetProposalInput,
        output_schema = schemas.GetProposalOutput,
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
        input_schema = schemas.ListAccessorsInput,
        output_schema = schemas.ListAccessorsOutput,
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
        input_schema = schemas.ListInvitationsInput,
        output_schema = schemas.ListInvitationsOutput,
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
        input_schema = schemas.ListMembersInput,
        output_schema = schemas.ListMembersOutput,
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
        input_schema = schemas.ListNetworksInput,
        output_schema = schemas.ListNetworksOutput,
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
        input_schema = schemas.ListNodesInput,
        output_schema = schemas.ListNodesOutput,
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
        input_schema = schemas.ListProposalsInput,
        output_schema = schemas.ListProposalsOutput,
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
        input_schema = schemas.ListProposalVotesInput,
        output_schema = schemas.ListProposalVotesOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.RejectInvitationInput,
        output_schema = schemas.RejectInvitationOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateMemberInput,
        output_schema = schemas.UpdateMemberOutput,
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
        input_schema = schemas.UpdateNodeInput,
        output_schema = schemas.UpdateNodeOutput,
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
        input_schema = schemas.VoteOnProposalInput,
        output_schema = schemas.VoteOnProposalOutput,
        http_method = "POST",
        http_path = "/networks/{NetworkId}/proposals/{ProposalId}/votes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
