local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("odb.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("odb.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Odb"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "odb", signing_region = cfg.region } }
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

function Client:acceptMarketplaceRegistration(input, options)
    return self:invokeOperation(input, {
        name = "AcceptMarketplaceRegistration",
        input_schema = types.AcceptMarketplaceRegistrationInput,
        output_schema = types.AcceptMarketplaceRegistrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIamRoleToResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIamRoleToResource",
        input_schema = types.AssociateIamRoleToResourceInput,
        output_schema = types.AssociateIamRoleToResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudAutonomousVmCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudAutonomousVmCluster",
        input_schema = types.CreateCloudAutonomousVmClusterInput,
        output_schema = types.CreateCloudAutonomousVmClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudExadataInfrastructure(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudExadataInfrastructure",
        input_schema = types.CreateCloudExadataInfrastructureInput,
        output_schema = types.CreateCloudExadataInfrastructureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudVmCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudVmCluster",
        input_schema = types.CreateCloudVmClusterInput,
        output_schema = types.CreateCloudVmClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOdbNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateOdbNetwork",
        input_schema = types.CreateOdbNetworkInput,
        output_schema = types.CreateOdbNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOdbPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateOdbPeeringConnection",
        input_schema = types.CreateOdbPeeringConnectionInput,
        output_schema = types.CreateOdbPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudAutonomousVmCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudAutonomousVmCluster",
        input_schema = types.DeleteCloudAutonomousVmClusterInput,
        output_schema = types.DeleteCloudAutonomousVmClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudExadataInfrastructure(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudExadataInfrastructure",
        input_schema = types.DeleteCloudExadataInfrastructureInput,
        output_schema = types.DeleteCloudExadataInfrastructureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCloudVmCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCloudVmCluster",
        input_schema = types.DeleteCloudVmClusterInput,
        output_schema = types.DeleteCloudVmClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOdbNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOdbNetwork",
        input_schema = types.DeleteOdbNetworkInput,
        output_schema = types.DeleteOdbNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOdbPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOdbPeeringConnection",
        input_schema = types.DeleteOdbPeeringConnectionInput,
        output_schema = types.DeleteOdbPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIamRoleFromResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIamRoleFromResource",
        input_schema = types.DisassociateIamRoleFromResourceInput,
        output_schema = types.DisassociateIamRoleFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudAutonomousVmCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudAutonomousVmCluster",
        input_schema = types.GetCloudAutonomousVmClusterInput,
        output_schema = types.GetCloudAutonomousVmClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudExadataInfrastructure(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudExadataInfrastructure",
        input_schema = types.GetCloudExadataInfrastructureInput,
        output_schema = types.GetCloudExadataInfrastructureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudExadataInfrastructureUnallocatedResources(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudExadataInfrastructureUnallocatedResources",
        input_schema = types.GetCloudExadataInfrastructureUnallocatedResourcesInput,
        output_schema = types.GetCloudExadataInfrastructureUnallocatedResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudVmCluster(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudVmCluster",
        input_schema = types.GetCloudVmClusterInput,
        output_schema = types.GetCloudVmClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDbNode(input, options)
    return self:invokeOperation(input, {
        name = "GetDbNode",
        input_schema = types.GetDbNodeInput,
        output_schema = types.GetDbNodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDbServer(input, options)
    return self:invokeOperation(input, {
        name = "GetDbServer",
        input_schema = types.GetDbServerInput,
        output_schema = types.GetDbServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOciOnboardingStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetOciOnboardingStatus",
        input_schema = types.GetOciOnboardingStatusInput,
        output_schema = types.GetOciOnboardingStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOdbNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetOdbNetwork",
        input_schema = types.GetOdbNetworkInput,
        output_schema = types.GetOdbNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOdbPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "GetOdbPeeringConnection",
        input_schema = types.GetOdbPeeringConnectionInput,
        output_schema = types.GetOdbPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:initializeService(input, options)
    return self:invokeOperation(input, {
        name = "InitializeService",
        input_schema = types.InitializeServiceInput,
        output_schema = types.InitializeServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutonomousVirtualMachines(input, options)
    return self:invokeOperation(input, {
        name = "ListAutonomousVirtualMachines",
        input_schema = types.ListAutonomousVirtualMachinesInput,
        output_schema = types.ListAutonomousVirtualMachinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudAutonomousVmClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudAutonomousVmClusters",
        input_schema = types.ListCloudAutonomousVmClustersInput,
        output_schema = types.ListCloudAutonomousVmClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudExadataInfrastructures(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudExadataInfrastructures",
        input_schema = types.ListCloudExadataInfrastructuresInput,
        output_schema = types.ListCloudExadataInfrastructuresOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCloudVmClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListCloudVmClusters",
        input_schema = types.ListCloudVmClustersInput,
        output_schema = types.ListCloudVmClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListDbNodes",
        input_schema = types.ListDbNodesInput,
        output_schema = types.ListDbNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbServers(input, options)
    return self:invokeOperation(input, {
        name = "ListDbServers",
        input_schema = types.ListDbServersInput,
        output_schema = types.ListDbServersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDbSystemShapes(input, options)
    return self:invokeOperation(input, {
        name = "ListDbSystemShapes",
        input_schema = types.ListDbSystemShapesInput,
        output_schema = types.ListDbSystemShapesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGiVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListGiVersions",
        input_schema = types.ListGiVersionsInput,
        output_schema = types.ListGiVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOdbNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListOdbNetworks",
        input_schema = types.ListOdbNetworksInput,
        output_schema = types.ListOdbNetworksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOdbPeeringConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListOdbPeeringConnections",
        input_schema = types.ListOdbPeeringConnectionsInput,
        output_schema = types.ListOdbPeeringConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSystemVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListSystemVersions",
        input_schema = types.ListSystemVersionsInput,
        output_schema = types.ListSystemVersionsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootDbNode(input, options)
    return self:invokeOperation(input, {
        name = "RebootDbNode",
        input_schema = types.RebootDbNodeInput,
        output_schema = types.RebootDbNodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDbNode(input, options)
    return self:invokeOperation(input, {
        name = "StartDbNode",
        input_schema = types.StartDbNodeInput,
        output_schema = types.StartDbNodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDbNode(input, options)
    return self:invokeOperation(input, {
        name = "StopDbNode",
        input_schema = types.StopDbNodeInput,
        output_schema = types.StopDbNodeOutput,
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

function Client:updateCloudExadataInfrastructure(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudExadataInfrastructure",
        input_schema = types.UpdateCloudExadataInfrastructureInput,
        output_schema = types.UpdateCloudExadataInfrastructureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOdbNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOdbNetwork",
        input_schema = types.UpdateOdbNetworkInput,
        output_schema = types.UpdateOdbNetworkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOdbPeeringConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOdbPeeringConnection",
        input_schema = types.UpdateOdbPeeringConnectionInput,
        output_schema = types.UpdateOdbPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
