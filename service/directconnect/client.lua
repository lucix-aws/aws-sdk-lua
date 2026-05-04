local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("directconnect.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("directconnect.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "OvertureService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "directconnect", signing_region = cfg.region } }
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

function Client:acceptDirectConnectGatewayAssociationProposal(input, options)
    return self:invokeOperation(input, {
        name = "AcceptDirectConnectGatewayAssociationProposal",
        input_schema = types.AcceptDirectConnectGatewayAssociationProposalInput,
        output_schema = types.AcceptDirectConnectGatewayAssociationProposalOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocateConnectionOnInterconnect(input, options)
    return self:invokeOperation(input, {
        name = "AllocateConnectionOnInterconnect",
        input_schema = types.AllocateConnectionOnInterconnectInput,
        output_schema = types.AllocateConnectionOnInterconnectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocateHostedConnection(input, options)
    return self:invokeOperation(input, {
        name = "AllocateHostedConnection",
        input_schema = types.AllocateHostedConnectionInput,
        output_schema = types.AllocateHostedConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocatePrivateVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "AllocatePrivateVirtualInterface",
        input_schema = types.AllocatePrivateVirtualInterfaceInput,
        output_schema = types.AllocatePrivateVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocatePublicVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "AllocatePublicVirtualInterface",
        input_schema = types.AllocatePublicVirtualInterfaceInput,
        output_schema = types.AllocatePublicVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allocateTransitVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "AllocateTransitVirtualInterface",
        input_schema = types.AllocateTransitVirtualInterfaceInput,
        output_schema = types.AllocateTransitVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateConnectionWithLag(input, options)
    return self:invokeOperation(input, {
        name = "AssociateConnectionWithLag",
        input_schema = types.AssociateConnectionWithLagInput,
        output_schema = types.AssociateConnectionWithLagOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateHostedConnection(input, options)
    return self:invokeOperation(input, {
        name = "AssociateHostedConnection",
        input_schema = types.AssociateHostedConnectionInput,
        output_schema = types.AssociateHostedConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMacSecKey(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMacSecKey",
        input_schema = types.AssociateMacSecKeyInput,
        output_schema = types.AssociateMacSecKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "AssociateVirtualInterface",
        input_schema = types.AssociateVirtualInterfaceInput,
        output_schema = types.AssociateVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmConnection(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmConnection",
        input_schema = types.ConfirmConnectionInput,
        output_schema = types.ConfirmConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmCustomerAgreement(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmCustomerAgreement",
        input_schema = types.ConfirmCustomerAgreementInput,
        output_schema = types.ConfirmCustomerAgreementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmPrivateVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmPrivateVirtualInterface",
        input_schema = types.ConfirmPrivateVirtualInterfaceInput,
        output_schema = types.ConfirmPrivateVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmPublicVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmPublicVirtualInterface",
        input_schema = types.ConfirmPublicVirtualInterfaceInput,
        output_schema = types.ConfirmPublicVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:confirmTransitVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "ConfirmTransitVirtualInterface",
        input_schema = types.ConfirmTransitVirtualInterfaceInput,
        output_schema = types.ConfirmTransitVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBGPPeer(input, options)
    return self:invokeOperation(input, {
        name = "CreateBGPPeer",
        input_schema = types.CreateBGPPeerInput,
        output_schema = types.CreateBGPPeerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnection",
        input_schema = types.CreateConnectionInput,
        output_schema = types.CreateConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectConnectGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectConnectGateway",
        input_schema = types.CreateDirectConnectGatewayInput,
        output_schema = types.CreateDirectConnectGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectConnectGatewayAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectConnectGatewayAssociation",
        input_schema = types.CreateDirectConnectGatewayAssociationInput,
        output_schema = types.CreateDirectConnectGatewayAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDirectConnectGatewayAssociationProposal(input, options)
    return self:invokeOperation(input, {
        name = "CreateDirectConnectGatewayAssociationProposal",
        input_schema = types.CreateDirectConnectGatewayAssociationProposalInput,
        output_schema = types.CreateDirectConnectGatewayAssociationProposalOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInterconnect(input, options)
    return self:invokeOperation(input, {
        name = "CreateInterconnect",
        input_schema = types.CreateInterconnectInput,
        output_schema = types.CreateInterconnectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLag(input, options)
    return self:invokeOperation(input, {
        name = "CreateLag",
        input_schema = types.CreateLagInput,
        output_schema = types.CreateLagOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrivateVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrivateVirtualInterface",
        input_schema = types.CreatePrivateVirtualInterfaceInput,
        output_schema = types.CreatePrivateVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPublicVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "CreatePublicVirtualInterface",
        input_schema = types.CreatePublicVirtualInterfaceInput,
        output_schema = types.CreatePublicVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransitVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransitVirtualInterface",
        input_schema = types.CreateTransitVirtualInterfaceInput,
        output_schema = types.CreateTransitVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBGPPeer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBGPPeer",
        input_schema = types.DeleteBGPPeerInput,
        output_schema = types.DeleteBGPPeerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnection",
        input_schema = types.DeleteConnectionInput,
        output_schema = types.DeleteConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectConnectGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectConnectGateway",
        input_schema = types.DeleteDirectConnectGatewayInput,
        output_schema = types.DeleteDirectConnectGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectConnectGatewayAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectConnectGatewayAssociation",
        input_schema = types.DeleteDirectConnectGatewayAssociationInput,
        output_schema = types.DeleteDirectConnectGatewayAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDirectConnectGatewayAssociationProposal(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDirectConnectGatewayAssociationProposal",
        input_schema = types.DeleteDirectConnectGatewayAssociationProposalInput,
        output_schema = types.DeleteDirectConnectGatewayAssociationProposalOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInterconnect(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInterconnect",
        input_schema = types.DeleteInterconnectInput,
        output_schema = types.DeleteInterconnectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLag(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLag",
        input_schema = types.DeleteLagInput,
        output_schema = types.DeleteLagOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVirtualInterface(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualInterface",
        input_schema = types.DeleteVirtualInterfaceInput,
        output_schema = types.DeleteVirtualInterfaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectionLoa(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionLoa",
        input_schema = types.DescribeConnectionLoaInput,
        output_schema = types.DescribeConnectionLoaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnections",
        input_schema = types.DescribeConnectionsInput,
        output_schema = types.DescribeConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectionsOnInterconnect(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionsOnInterconnect",
        input_schema = types.DescribeConnectionsOnInterconnectInput,
        output_schema = types.DescribeConnectionsOnInterconnectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomerMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomerMetadata",
        input_schema = types.DescribeCustomerMetadataInput,
        output_schema = types.DescribeCustomerMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectConnectGatewayAssociationProposals(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectConnectGatewayAssociationProposals",
        input_schema = types.DescribeDirectConnectGatewayAssociationProposalsInput,
        output_schema = types.DescribeDirectConnectGatewayAssociationProposalsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectConnectGatewayAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectConnectGatewayAssociations",
        input_schema = types.DescribeDirectConnectGatewayAssociationsInput,
        output_schema = types.DescribeDirectConnectGatewayAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectConnectGatewayAttachments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectConnectGatewayAttachments",
        input_schema = types.DescribeDirectConnectGatewayAttachmentsInput,
        output_schema = types.DescribeDirectConnectGatewayAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDirectConnectGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDirectConnectGateways",
        input_schema = types.DescribeDirectConnectGatewaysInput,
        output_schema = types.DescribeDirectConnectGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHostedConnections(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHostedConnections",
        input_schema = types.DescribeHostedConnectionsInput,
        output_schema = types.DescribeHostedConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInterconnectLoa(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInterconnectLoa",
        input_schema = types.DescribeInterconnectLoaInput,
        output_schema = types.DescribeInterconnectLoaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInterconnects(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInterconnects",
        input_schema = types.DescribeInterconnectsInput,
        output_schema = types.DescribeInterconnectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLags",
        input_schema = types.DescribeLagsInput,
        output_schema = types.DescribeLagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoa(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoa",
        input_schema = types.DescribeLoaInput,
        output_schema = types.DescribeLoaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLocations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLocations",
        input_schema = types.DescribeLocationsInput,
        output_schema = types.DescribeLocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRouterConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRouterConfiguration",
        input_schema = types.DescribeRouterConfigurationInput,
        output_schema = types.DescribeRouterConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVirtualGateways(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualGateways",
        input_schema = types.DescribeVirtualGatewaysInput,
        output_schema = types.DescribeVirtualGatewaysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVirtualInterfaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualInterfaces",
        input_schema = types.DescribeVirtualInterfacesInput,
        output_schema = types.DescribeVirtualInterfacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateConnectionFromLag(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateConnectionFromLag",
        input_schema = types.DisassociateConnectionFromLagInput,
        output_schema = types.DisassociateConnectionFromLagOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMacSecKey(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMacSecKey",
        input_schema = types.DisassociateMacSecKeyInput,
        output_schema = types.DisassociateMacSecKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVirtualInterfaceTestHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualInterfaceTestHistory",
        input_schema = types.ListVirtualInterfaceTestHistoryInput,
        output_schema = types.ListVirtualInterfaceTestHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBgpFailoverTest(input, options)
    return self:invokeOperation(input, {
        name = "StartBgpFailoverTest",
        input_schema = types.StartBgpFailoverTestInput,
        output_schema = types.StartBgpFailoverTestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBgpFailoverTest(input, options)
    return self:invokeOperation(input, {
        name = "StopBgpFailoverTest",
        input_schema = types.StopBgpFailoverTestInput,
        output_schema = types.StopBgpFailoverTestOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = types.UpdateConnectionInput,
        output_schema = types.UpdateConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDirectConnectGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectConnectGateway",
        input_schema = types.UpdateDirectConnectGatewayInput,
        output_schema = types.UpdateDirectConnectGatewayOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDirectConnectGatewayAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDirectConnectGatewayAssociation",
        input_schema = types.UpdateDirectConnectGatewayAssociationInput,
        output_schema = types.UpdateDirectConnectGatewayAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLag(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLag",
        input_schema = types.UpdateLagInput,
        output_schema = types.UpdateLagOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVirtualInterfaceAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVirtualInterfaceAttributes",
        input_schema = types.UpdateVirtualInterfaceAttributesInput,
        output_schema = types.UpdateVirtualInterfaceAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
