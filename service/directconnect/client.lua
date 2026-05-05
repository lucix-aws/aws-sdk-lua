local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("directconnect.endpoint_rules")
local schemas = require("directconnect.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "OvertureService"
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
        input_schema = schemas.AcceptDirectConnectGatewayAssociationProposalInput,
        output_schema = schemas.AcceptDirectConnectGatewayAssociationProposalOutput,
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
        input_schema = schemas.AllocateConnectionOnInterconnectInput,
        output_schema = schemas.AllocateConnectionOnInterconnectOutput,
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
        input_schema = schemas.AllocateHostedConnectionInput,
        output_schema = schemas.AllocateHostedConnectionOutput,
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
        input_schema = schemas.AllocatePrivateVirtualInterfaceInput,
        output_schema = schemas.AllocatePrivateVirtualInterfaceOutput,
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
        input_schema = schemas.AllocatePublicVirtualInterfaceInput,
        output_schema = schemas.AllocatePublicVirtualInterfaceOutput,
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
        input_schema = schemas.AllocateTransitVirtualInterfaceInput,
        output_schema = schemas.AllocateTransitVirtualInterfaceOutput,
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
        input_schema = schemas.AssociateConnectionWithLagInput,
        output_schema = schemas.AssociateConnectionWithLagOutput,
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
        input_schema = schemas.AssociateHostedConnectionInput,
        output_schema = schemas.AssociateHostedConnectionOutput,
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
        input_schema = schemas.AssociateMacSecKeyInput,
        output_schema = schemas.AssociateMacSecKeyOutput,
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
        input_schema = schemas.AssociateVirtualInterfaceInput,
        output_schema = schemas.AssociateVirtualInterfaceOutput,
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
        input_schema = schemas.ConfirmConnectionInput,
        output_schema = schemas.ConfirmConnectionOutput,
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
        input_schema = schemas.ConfirmCustomerAgreementInput,
        output_schema = schemas.ConfirmCustomerAgreementOutput,
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
        input_schema = schemas.ConfirmPrivateVirtualInterfaceInput,
        output_schema = schemas.ConfirmPrivateVirtualInterfaceOutput,
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
        input_schema = schemas.ConfirmPublicVirtualInterfaceInput,
        output_schema = schemas.ConfirmPublicVirtualInterfaceOutput,
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
        input_schema = schemas.ConfirmTransitVirtualInterfaceInput,
        output_schema = schemas.ConfirmTransitVirtualInterfaceOutput,
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
        input_schema = schemas.CreateBGPPeerInput,
        output_schema = schemas.CreateBGPPeerOutput,
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
        input_schema = schemas.CreateConnectionInput,
        output_schema = schemas.CreateConnectionOutput,
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
        input_schema = schemas.CreateDirectConnectGatewayInput,
        output_schema = schemas.CreateDirectConnectGatewayOutput,
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
        input_schema = schemas.CreateDirectConnectGatewayAssociationInput,
        output_schema = schemas.CreateDirectConnectGatewayAssociationOutput,
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
        input_schema = schemas.CreateDirectConnectGatewayAssociationProposalInput,
        output_schema = schemas.CreateDirectConnectGatewayAssociationProposalOutput,
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
        input_schema = schemas.CreateInterconnectInput,
        output_schema = schemas.CreateInterconnectOutput,
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
        input_schema = schemas.CreateLagInput,
        output_schema = schemas.CreateLagOutput,
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
        input_schema = schemas.CreatePrivateVirtualInterfaceInput,
        output_schema = schemas.CreatePrivateVirtualInterfaceOutput,
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
        input_schema = schemas.CreatePublicVirtualInterfaceInput,
        output_schema = schemas.CreatePublicVirtualInterfaceOutput,
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
        input_schema = schemas.CreateTransitVirtualInterfaceInput,
        output_schema = schemas.CreateTransitVirtualInterfaceOutput,
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
        input_schema = schemas.DeleteBGPPeerInput,
        output_schema = schemas.DeleteBGPPeerOutput,
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
        input_schema = schemas.DeleteConnectionInput,
        output_schema = schemas.DeleteConnectionOutput,
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
        input_schema = schemas.DeleteDirectConnectGatewayInput,
        output_schema = schemas.DeleteDirectConnectGatewayOutput,
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
        input_schema = schemas.DeleteDirectConnectGatewayAssociationInput,
        output_schema = schemas.DeleteDirectConnectGatewayAssociationOutput,
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
        input_schema = schemas.DeleteDirectConnectGatewayAssociationProposalInput,
        output_schema = schemas.DeleteDirectConnectGatewayAssociationProposalOutput,
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
        input_schema = schemas.DeleteInterconnectInput,
        output_schema = schemas.DeleteInterconnectOutput,
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
        input_schema = schemas.DeleteLagInput,
        output_schema = schemas.DeleteLagOutput,
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
        input_schema = schemas.DeleteVirtualInterfaceInput,
        output_schema = schemas.DeleteVirtualInterfaceOutput,
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
        input_schema = schemas.DescribeConnectionLoaInput,
        output_schema = schemas.DescribeConnectionLoaOutput,
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
        input_schema = schemas.DescribeConnectionsInput,
        output_schema = schemas.DescribeConnectionsOutput,
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
        input_schema = schemas.DescribeConnectionsOnInterconnectInput,
        output_schema = schemas.DescribeConnectionsOnInterconnectOutput,
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
        input_schema = schemas.DescribeCustomerMetadataInput,
        output_schema = schemas.DescribeCustomerMetadataOutput,
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
        input_schema = schemas.DescribeDirectConnectGatewayAssociationProposalsInput,
        output_schema = schemas.DescribeDirectConnectGatewayAssociationProposalsOutput,
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
        input_schema = schemas.DescribeDirectConnectGatewayAssociationsInput,
        output_schema = schemas.DescribeDirectConnectGatewayAssociationsOutput,
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
        input_schema = schemas.DescribeDirectConnectGatewayAttachmentsInput,
        output_schema = schemas.DescribeDirectConnectGatewayAttachmentsOutput,
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
        input_schema = schemas.DescribeDirectConnectGatewaysInput,
        output_schema = schemas.DescribeDirectConnectGatewaysOutput,
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
        input_schema = schemas.DescribeHostedConnectionsInput,
        output_schema = schemas.DescribeHostedConnectionsOutput,
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
        input_schema = schemas.DescribeInterconnectLoaInput,
        output_schema = schemas.DescribeInterconnectLoaOutput,
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
        input_schema = schemas.DescribeInterconnectsInput,
        output_schema = schemas.DescribeInterconnectsOutput,
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
        input_schema = schemas.DescribeLagsInput,
        output_schema = schemas.DescribeLagsOutput,
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
        input_schema = schemas.DescribeLoaInput,
        output_schema = schemas.DescribeLoaOutput,
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
        input_schema = schemas.DescribeLocationsInput,
        output_schema = schemas.DescribeLocationsOutput,
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
        input_schema = schemas.DescribeRouterConfigurationInput,
        output_schema = schemas.DescribeRouterConfigurationOutput,
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
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
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
        input_schema = schemas.DescribeVirtualGatewaysInput,
        output_schema = schemas.DescribeVirtualGatewaysOutput,
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
        input_schema = schemas.DescribeVirtualInterfacesInput,
        output_schema = schemas.DescribeVirtualInterfacesOutput,
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
        input_schema = schemas.DisassociateConnectionFromLagInput,
        output_schema = schemas.DisassociateConnectionFromLagOutput,
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
        input_schema = schemas.DisassociateMacSecKeyInput,
        output_schema = schemas.DisassociateMacSecKeyOutput,
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
        input_schema = schemas.ListVirtualInterfaceTestHistoryInput,
        output_schema = schemas.ListVirtualInterfaceTestHistoryOutput,
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
        input_schema = schemas.StartBgpFailoverTestInput,
        output_schema = schemas.StartBgpFailoverTestOutput,
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
        input_schema = schemas.StopBgpFailoverTestInput,
        output_schema = schemas.StopBgpFailoverTestOutput,
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

function Client:updateConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnection",
        input_schema = schemas.UpdateConnectionInput,
        output_schema = schemas.UpdateConnectionOutput,
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
        input_schema = schemas.UpdateDirectConnectGatewayInput,
        output_schema = schemas.UpdateDirectConnectGatewayOutput,
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
        input_schema = schemas.UpdateDirectConnectGatewayAssociationInput,
        output_schema = schemas.UpdateDirectConnectGatewayAssociationOutput,
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
        input_schema = schemas.UpdateLagInput,
        output_schema = schemas.UpdateLagOutput,
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
        input_schema = schemas.UpdateVirtualInterfaceAttributesInput,
        output_schema = schemas.UpdateVirtualInterfaceAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
