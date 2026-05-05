local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("odb.endpoint_rules")
local schemas = require("odb.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Odb"
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
        input_schema = schemas.AcceptMarketplaceRegistrationInput,
        output_schema = schemas.AcceptMarketplaceRegistrationOutput,
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
        input_schema = schemas.AssociateIamRoleToResourceInput,
        output_schema = schemas.AssociateIamRoleToResourceOutput,
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
        input_schema = schemas.CreateCloudAutonomousVmClusterInput,
        output_schema = schemas.CreateCloudAutonomousVmClusterOutput,
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
        input_schema = schemas.CreateCloudExadataInfrastructureInput,
        output_schema = schemas.CreateCloudExadataInfrastructureOutput,
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
        input_schema = schemas.CreateCloudVmClusterInput,
        output_schema = schemas.CreateCloudVmClusterOutput,
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
        input_schema = schemas.CreateOdbNetworkInput,
        output_schema = schemas.CreateOdbNetworkOutput,
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
        input_schema = schemas.CreateOdbPeeringConnectionInput,
        output_schema = schemas.CreateOdbPeeringConnectionOutput,
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
        input_schema = schemas.DeleteCloudAutonomousVmClusterInput,
        output_schema = schemas.DeleteCloudAutonomousVmClusterOutput,
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
        input_schema = schemas.DeleteCloudExadataInfrastructureInput,
        output_schema = schemas.DeleteCloudExadataInfrastructureOutput,
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
        input_schema = schemas.DeleteCloudVmClusterInput,
        output_schema = schemas.DeleteCloudVmClusterOutput,
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
        input_schema = schemas.DeleteOdbNetworkInput,
        output_schema = schemas.DeleteOdbNetworkOutput,
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
        input_schema = schemas.DeleteOdbPeeringConnectionInput,
        output_schema = schemas.DeleteOdbPeeringConnectionOutput,
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
        input_schema = schemas.DisassociateIamRoleFromResourceInput,
        output_schema = schemas.DisassociateIamRoleFromResourceOutput,
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
        input_schema = schemas.GetCloudAutonomousVmClusterInput,
        output_schema = schemas.GetCloudAutonomousVmClusterOutput,
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
        input_schema = schemas.GetCloudExadataInfrastructureInput,
        output_schema = schemas.GetCloudExadataInfrastructureOutput,
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
        input_schema = schemas.GetCloudExadataInfrastructureUnallocatedResourcesInput,
        output_schema = schemas.GetCloudExadataInfrastructureUnallocatedResourcesOutput,
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
        input_schema = schemas.GetCloudVmClusterInput,
        output_schema = schemas.GetCloudVmClusterOutput,
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
        input_schema = schemas.GetDbNodeInput,
        output_schema = schemas.GetDbNodeOutput,
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
        input_schema = schemas.GetDbServerInput,
        output_schema = schemas.GetDbServerOutput,
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
        input_schema = schemas.GetOciOnboardingStatusInput,
        output_schema = schemas.GetOciOnboardingStatusOutput,
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
        input_schema = schemas.GetOdbNetworkInput,
        output_schema = schemas.GetOdbNetworkOutput,
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
        input_schema = schemas.GetOdbPeeringConnectionInput,
        output_schema = schemas.GetOdbPeeringConnectionOutput,
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
        input_schema = schemas.InitializeServiceInput,
        output_schema = schemas.InitializeServiceOutput,
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
        input_schema = schemas.ListAutonomousVirtualMachinesInput,
        output_schema = schemas.ListAutonomousVirtualMachinesOutput,
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
        input_schema = schemas.ListCloudAutonomousVmClustersInput,
        output_schema = schemas.ListCloudAutonomousVmClustersOutput,
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
        input_schema = schemas.ListCloudExadataInfrastructuresInput,
        output_schema = schemas.ListCloudExadataInfrastructuresOutput,
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
        input_schema = schemas.ListCloudVmClustersInput,
        output_schema = schemas.ListCloudVmClustersOutput,
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
        input_schema = schemas.ListDbNodesInput,
        output_schema = schemas.ListDbNodesOutput,
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
        input_schema = schemas.ListDbServersInput,
        output_schema = schemas.ListDbServersOutput,
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
        input_schema = schemas.ListDbSystemShapesInput,
        output_schema = schemas.ListDbSystemShapesOutput,
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
        input_schema = schemas.ListGiVersionsInput,
        output_schema = schemas.ListGiVersionsOutput,
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
        input_schema = schemas.ListOdbNetworksInput,
        output_schema = schemas.ListOdbNetworksOutput,
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
        input_schema = schemas.ListOdbPeeringConnectionsInput,
        output_schema = schemas.ListOdbPeeringConnectionsOutput,
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
        input_schema = schemas.ListSystemVersionsInput,
        output_schema = schemas.ListSystemVersionsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.RebootDbNodeInput,
        output_schema = schemas.RebootDbNodeOutput,
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
        input_schema = schemas.StartDbNodeInput,
        output_schema = schemas.StartDbNodeOutput,
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
        input_schema = schemas.StopDbNodeInput,
        output_schema = schemas.StopDbNodeOutput,
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

function Client:updateCloudExadataInfrastructure(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCloudExadataInfrastructure",
        input_schema = schemas.UpdateCloudExadataInfrastructureInput,
        output_schema = schemas.UpdateCloudExadataInfrastructureOutput,
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
        input_schema = schemas.UpdateOdbNetworkInput,
        output_schema = schemas.UpdateOdbNetworkOutput,
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
        input_schema = schemas.UpdateOdbPeeringConnectionInput,
        output_schema = schemas.UpdateOdbPeeringConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
