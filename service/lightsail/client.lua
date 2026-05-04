local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lightsail.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("lightsail.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Lightsail_20161128"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lightsail", signing_region = cfg.region } }
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

function Client:allocateStaticIp(input, options)
    return self:invokeOperation(input, {
        name = "AllocateStaticIp",
        input_schema = types.AllocateStaticIpInput,
        output_schema = types.AllocateStaticIpOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/AllocateStaticIp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachCertificateToDistribution(input, options)
    return self:invokeOperation(input, {
        name = "AttachCertificateToDistribution",
        input_schema = types.AttachCertificateToDistributionInput,
        output_schema = types.AttachCertificateToDistributionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/AttachCertificateToDistribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachDisk(input, options)
    return self:invokeOperation(input, {
        name = "AttachDisk",
        input_schema = types.AttachDiskInput,
        output_schema = types.AttachDiskOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/AttachDisk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachInstancesToLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "AttachInstancesToLoadBalancer",
        input_schema = types.AttachInstancesToLoadBalancerInput,
        output_schema = types.AttachInstancesToLoadBalancerOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/AttachInstancesToLoadBalancer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachLoadBalancerTlsCertificate(input, options)
    return self:invokeOperation(input, {
        name = "AttachLoadBalancerTlsCertificate",
        input_schema = types.AttachLoadBalancerTlsCertificateInput,
        output_schema = types.AttachLoadBalancerTlsCertificateOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/AttachLoadBalancerTlsCertificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachStaticIp(input, options)
    return self:invokeOperation(input, {
        name = "AttachStaticIp",
        input_schema = types.AttachStaticIpInput,
        output_schema = types.AttachStaticIpOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/AttachStaticIp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:closeInstancePublicPorts(input, options)
    return self:invokeOperation(input, {
        name = "CloseInstancePublicPorts",
        input_schema = types.CloseInstancePublicPortsInput,
        output_schema = types.CloseInstancePublicPortsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CloseInstancePublicPorts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copySnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopySnapshot",
        input_schema = types.CopySnapshotInput,
        output_schema = types.CopySnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CopySnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBucket(input, options)
    return self:invokeOperation(input, {
        name = "CreateBucket",
        input_schema = types.CreateBucketInput,
        output_schema = types.CreateBucketOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBucketAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateBucketAccessKey",
        input_schema = types.CreateBucketAccessKeyInput,
        output_schema = types.CreateBucketAccessKeyOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateBucketAccessKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCertificate(input, options)
    return self:invokeOperation(input, {
        name = "CreateCertificate",
        input_schema = types.CreateCertificateInput,
        output_schema = types.CreateCertificateOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateCertificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCloudFormationStack(input, options)
    return self:invokeOperation(input, {
        name = "CreateCloudFormationStack",
        input_schema = types.CreateCloudFormationStackInput,
        output_schema = types.CreateCloudFormationStackOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateCloudFormationStack",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactMethod(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactMethod",
        input_schema = types.CreateContactMethodInput,
        output_schema = types.CreateContactMethodOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateContactMethod",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContainerService(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerService",
        input_schema = types.CreateContainerServiceInput,
        output_schema = types.CreateContainerServiceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/container-services",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContainerServiceDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerServiceDeployment",
        input_schema = types.CreateContainerServiceDeploymentInput,
        output_schema = types.CreateContainerServiceDeploymentOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContainerServiceRegistryLogin(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerServiceRegistryLogin",
        input_schema = types.CreateContainerServiceRegistryLoginInput,
        output_schema = types.CreateContainerServiceRegistryLoginOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/container-registry-login",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDisk(input, options)
    return self:invokeOperation(input, {
        name = "CreateDisk",
        input_schema = types.CreateDiskInput,
        output_schema = types.CreateDiskOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateDisk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDiskFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDiskFromSnapshot",
        input_schema = types.CreateDiskFromSnapshotInput,
        output_schema = types.CreateDiskFromSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateDiskFromSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDiskSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateDiskSnapshot",
        input_schema = types.CreateDiskSnapshotInput,
        output_schema = types.CreateDiskSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateDiskSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDistribution(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistribution",
        input_schema = types.CreateDistributionInput,
        output_schema = types.CreateDistributionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateDistribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainEntry(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainEntry",
        input_schema = types.CreateDomainEntryInput,
        output_schema = types.CreateDomainEntryOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateDomainEntry",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGUISessionAccessDetails(input, options)
    return self:invokeOperation(input, {
        name = "CreateGUISessionAccessDetails",
        input_schema = types.CreateGUISessionAccessDetailsInput,
        output_schema = types.CreateGUISessionAccessDetailsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/create-gui-session-access-details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstances(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstances",
        input_schema = types.CreateInstancesInput,
        output_schema = types.CreateInstancesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstancesFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstancesFromSnapshot",
        input_schema = types.CreateInstancesFromSnapshotInput,
        output_schema = types.CreateInstancesFromSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateInstancesFromSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstanceSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstanceSnapshot",
        input_schema = types.CreateInstanceSnapshotInput,
        output_schema = types.CreateInstanceSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateInstanceSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeyPair",
        input_schema = types.CreateKeyPairInput,
        output_schema = types.CreateKeyPairOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoadBalancer",
        input_schema = types.CreateLoadBalancerInput,
        output_schema = types.CreateLoadBalancerOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateLoadBalancer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLoadBalancerTlsCertificate(input, options)
    return self:invokeOperation(input, {
        name = "CreateLoadBalancerTlsCertificate",
        input_schema = types.CreateLoadBalancerTlsCertificateInput,
        output_schema = types.CreateLoadBalancerTlsCertificateOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateLoadBalancerTlsCertificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelationalDatabase",
        input_schema = types.CreateRelationalDatabaseInput,
        output_schema = types.CreateRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateRelationalDatabase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRelationalDatabaseFromSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelationalDatabaseFromSnapshot",
        input_schema = types.CreateRelationalDatabaseFromSnapshotInput,
        output_schema = types.CreateRelationalDatabaseFromSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateRelationalDatabaseFromSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRelationalDatabaseSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateRelationalDatabaseSnapshot",
        input_schema = types.CreateRelationalDatabaseSnapshotInput,
        output_schema = types.CreateRelationalDatabaseSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/CreateRelationalDatabaseSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlarm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlarm",
        input_schema = types.DeleteAlarmInput,
        output_schema = types.DeleteAlarmOutput,
        http_method = "DELETE",
        http_path = "/ls/api/2016-11-28/DeleteAlarm/{alarmName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAutoSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutoSnapshot",
        input_schema = types.DeleteAutoSnapshotInput,
        output_schema = types.DeleteAutoSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteAutoSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBucket(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucket",
        input_schema = types.DeleteBucketInput,
        output_schema = types.DeleteBucketOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBucketAccessKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBucketAccessKey",
        input_schema = types.DeleteBucketAccessKeyInput,
        output_schema = types.DeleteBucketAccessKeyOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteBucketAccessKey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = types.DeleteCertificateInput,
        output_schema = types.DeleteCertificateOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteCertificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactMethod(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactMethod",
        input_schema = types.DeleteContactMethodInput,
        output_schema = types.DeleteContactMethodOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteContactMethod",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContainerImage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerImage",
        input_schema = types.DeleteContainerImageInput,
        output_schema = types.DeleteContainerImageOutput,
        http_method = "DELETE",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/images/{image}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContainerService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerService",
        input_schema = types.DeleteContainerServiceInput,
        output_schema = types.DeleteContainerServiceOutput,
        http_method = "DELETE",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDisk(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDisk",
        input_schema = types.DeleteDiskInput,
        output_schema = types.DeleteDiskOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteDisk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDiskSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDiskSnapshot",
        input_schema = types.DeleteDiskSnapshotInput,
        output_schema = types.DeleteDiskSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteDiskSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDistribution(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDistribution",
        input_schema = types.DeleteDistributionInput,
        output_schema = types.DeleteDistributionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteDistribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainEntry(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainEntry",
        input_schema = types.DeleteDomainEntryInput,
        output_schema = types.DeleteDomainEntryOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteDomainEntry",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstance",
        input_schema = types.DeleteInstanceInput,
        output_schema = types.DeleteInstanceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstanceSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstanceSnapshot",
        input_schema = types.DeleteInstanceSnapshotInput,
        output_schema = types.DeleteInstanceSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteInstanceSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeyPair",
        input_schema = types.DeleteKeyPairInput,
        output_schema = types.DeleteKeyPairOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKnownHostKeys(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKnownHostKeys",
        input_schema = types.DeleteKnownHostKeysInput,
        output_schema = types.DeleteKnownHostKeysOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteKnownHostKeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoadBalancer",
        input_schema = types.DeleteLoadBalancerInput,
        output_schema = types.DeleteLoadBalancerOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteLoadBalancer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLoadBalancerTlsCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLoadBalancerTlsCertificate",
        input_schema = types.DeleteLoadBalancerTlsCertificateInput,
        output_schema = types.DeleteLoadBalancerTlsCertificateOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteLoadBalancerTlsCertificate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRelationalDatabase",
        input_schema = types.DeleteRelationalDatabaseInput,
        output_schema = types.DeleteRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteRelationalDatabase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRelationalDatabaseSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRelationalDatabaseSnapshot",
        input_schema = types.DeleteRelationalDatabaseSnapshotInput,
        output_schema = types.DeleteRelationalDatabaseSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DeleteRelationalDatabaseSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachCertificateFromDistribution(input, options)
    return self:invokeOperation(input, {
        name = "DetachCertificateFromDistribution",
        input_schema = types.DetachCertificateFromDistributionInput,
        output_schema = types.DetachCertificateFromDistributionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DetachCertificateFromDistribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachDisk(input, options)
    return self:invokeOperation(input, {
        name = "DetachDisk",
        input_schema = types.DetachDiskInput,
        output_schema = types.DetachDiskOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DetachDisk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachInstancesFromLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "DetachInstancesFromLoadBalancer",
        input_schema = types.DetachInstancesFromLoadBalancerInput,
        output_schema = types.DetachInstancesFromLoadBalancerOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DetachInstancesFromLoadBalancer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachStaticIp(input, options)
    return self:invokeOperation(input, {
        name = "DetachStaticIp",
        input_schema = types.DetachStaticIpInput,
        output_schema = types.DetachStaticIpOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DetachStaticIp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAddOn(input, options)
    return self:invokeOperation(input, {
        name = "DisableAddOn",
        input_schema = types.DisableAddOnInput,
        output_schema = types.DisableAddOnOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DisableAddOn",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:downloadDefaultKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "DownloadDefaultKeyPair",
        input_schema = types.DownloadDefaultKeyPairInput,
        output_schema = types.DownloadDefaultKeyPairOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/DownloadDefaultKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAddOn(input, options)
    return self:invokeOperation(input, {
        name = "EnableAddOn",
        input_schema = types.EnableAddOnInput,
        output_schema = types.EnableAddOnOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/EnableAddOn",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ExportSnapshot",
        input_schema = types.ExportSnapshotInput,
        output_schema = types.ExportSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/ExportSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getActiveNames(input, options)
    return self:invokeOperation(input, {
        name = "GetActiveNames",
        input_schema = types.GetActiveNamesInput,
        output_schema = types.GetActiveNamesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetActiveNames",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAlarms(input, options)
    return self:invokeOperation(input, {
        name = "GetAlarms",
        input_schema = types.GetAlarmsInput,
        output_schema = types.GetAlarmsOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/GetAlarms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAutoSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "GetAutoSnapshots",
        input_schema = types.GetAutoSnapshotsInput,
        output_schema = types.GetAutoSnapshotsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetAutoSnapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "GetBlueprints",
        input_schema = types.GetBlueprintsInput,
        output_schema = types.GetBlueprintsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetBlueprints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBucketAccessKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketAccessKeys",
        input_schema = types.GetBucketAccessKeysInput,
        output_schema = types.GetBucketAccessKeysOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetBucketAccessKeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBucketBundles(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketBundles",
        input_schema = types.GetBucketBundlesInput,
        output_schema = types.GetBucketBundlesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetBucketBundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBucketMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetBucketMetricData",
        input_schema = types.GetBucketMetricDataInput,
        output_schema = types.GetBucketMetricDataOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetBucketMetricData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBuckets(input, options)
    return self:invokeOperation(input, {
        name = "GetBuckets",
        input_schema = types.GetBucketsInput,
        output_schema = types.GetBucketsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetBuckets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBundles(input, options)
    return self:invokeOperation(input, {
        name = "GetBundles",
        input_schema = types.GetBundlesInput,
        output_schema = types.GetBundlesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetBundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCertificates(input, options)
    return self:invokeOperation(input, {
        name = "GetCertificates",
        input_schema = types.GetCertificatesInput,
        output_schema = types.GetCertificatesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetCertificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCloudFormationStackRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetCloudFormationStackRecords",
        input_schema = types.GetCloudFormationStackRecordsInput,
        output_schema = types.GetCloudFormationStackRecordsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetCloudFormationStackRecords",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactMethods(input, options)
    return self:invokeOperation(input, {
        name = "GetContactMethods",
        input_schema = types.GetContactMethodsInput,
        output_schema = types.GetContactMethodsOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/GetContactMethods",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerAPIMetadata(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerAPIMetadata",
        input_schema = types.GetContainerAPIMetadataInput,
        output_schema = types.GetContainerAPIMetadataOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-api-metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerImages(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerImages",
        input_schema = types.GetContainerImagesInput,
        output_schema = types.GetContainerImagesOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/images",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerLog(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerLog",
        input_schema = types.GetContainerLogInput,
        output_schema = types.GetContainerLogOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/containers/{containerName}/log",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerServiceDeployments(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerServiceDeployments",
        input_schema = types.GetContainerServiceDeploymentsInput,
        output_schema = types.GetContainerServiceDeploymentsOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerServiceMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerServiceMetricData",
        input_schema = types.GetContainerServiceMetricDataInput,
        output_schema = types.GetContainerServiceMetricDataOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/metrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerServicePowers(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerServicePowers",
        input_schema = types.GetContainerServicePowersInput,
        output_schema = types.GetContainerServicePowersOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-service-powers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerServices(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerServices",
        input_schema = types.GetContainerServicesInput,
        output_schema = types.GetContainerServicesOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/container-services",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCostEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetCostEstimate",
        input_schema = types.GetCostEstimateInput,
        output_schema = types.GetCostEstimateOutput,
        http_method = "POST",
        http_path = "/budgettracker/getCostEstimate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDisk(input, options)
    return self:invokeOperation(input, {
        name = "GetDisk",
        input_schema = types.GetDiskInput,
        output_schema = types.GetDiskOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDisk",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDisks(input, options)
    return self:invokeOperation(input, {
        name = "GetDisks",
        input_schema = types.GetDisksInput,
        output_schema = types.GetDisksOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDisks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDiskSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetDiskSnapshot",
        input_schema = types.GetDiskSnapshotInput,
        output_schema = types.GetDiskSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDiskSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDiskSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "GetDiskSnapshots",
        input_schema = types.GetDiskSnapshotsInput,
        output_schema = types.GetDiskSnapshotsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDiskSnapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionBundles(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionBundles",
        input_schema = types.GetDistributionBundlesInput,
        output_schema = types.GetDistributionBundlesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDistributionBundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionLatestCacheReset(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionLatestCacheReset",
        input_schema = types.GetDistributionLatestCacheResetInput,
        output_schema = types.GetDistributionLatestCacheResetOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDistributionLatestCacheReset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionMetricData",
        input_schema = types.GetDistributionMetricDataInput,
        output_schema = types.GetDistributionMetricDataOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDistributionMetricData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributions(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributions",
        input_schema = types.GetDistributionsInput,
        output_schema = types.GetDistributionsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDistributions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomain(input, options)
    return self:invokeOperation(input, {
        name = "GetDomain",
        input_schema = types.GetDomainInput,
        output_schema = types.GetDomainOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDomain",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomains(input, options)
    return self:invokeOperation(input, {
        name = "GetDomains",
        input_schema = types.GetDomainsInput,
        output_schema = types.GetDomainsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetDomains",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExportSnapshotRecords(input, options)
    return self:invokeOperation(input, {
        name = "GetExportSnapshotRecords",
        input_schema = types.GetExportSnapshotRecordsInput,
        output_schema = types.GetExportSnapshotRecordsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetExportSnapshotRecords",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetInstance",
        input_schema = types.GetInstanceInput,
        output_schema = types.GetInstanceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceAccessDetails(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceAccessDetails",
        input_schema = types.GetInstanceAccessDetailsInput,
        output_schema = types.GetInstanceAccessDetailsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstanceAccessDetails",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceMetricData",
        input_schema = types.GetInstanceMetricDataInput,
        output_schema = types.GetInstanceMetricDataOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstanceMetricData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstancePortStates(input, options)
    return self:invokeOperation(input, {
        name = "GetInstancePortStates",
        input_schema = types.GetInstancePortStatesInput,
        output_schema = types.GetInstancePortStatesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstancePortStates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstances(input, options)
    return self:invokeOperation(input, {
        name = "GetInstances",
        input_schema = types.GetInstancesInput,
        output_schema = types.GetInstancesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceSnapshot",
        input_schema = types.GetInstanceSnapshotInput,
        output_schema = types.GetInstanceSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstanceSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceSnapshots",
        input_schema = types.GetInstanceSnapshotsInput,
        output_schema = types.GetInstanceSnapshotsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstanceSnapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInstanceState(input, options)
    return self:invokeOperation(input, {
        name = "GetInstanceState",
        input_schema = types.GetInstanceStateInput,
        output_schema = types.GetInstanceStateOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetInstanceState",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyPair",
        input_schema = types.GetKeyPairInput,
        output_schema = types.GetKeyPairOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getKeyPairs(input, options)
    return self:invokeOperation(input, {
        name = "GetKeyPairs",
        input_schema = types.GetKeyPairsInput,
        output_schema = types.GetKeyPairsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetKeyPairs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoadBalancer(input, options)
    return self:invokeOperation(input, {
        name = "GetLoadBalancer",
        input_schema = types.GetLoadBalancerInput,
        output_schema = types.GetLoadBalancerOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetLoadBalancer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoadBalancerMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetLoadBalancerMetricData",
        input_schema = types.GetLoadBalancerMetricDataInput,
        output_schema = types.GetLoadBalancerMetricDataOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetLoadBalancerMetricData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoadBalancers(input, options)
    return self:invokeOperation(input, {
        name = "GetLoadBalancers",
        input_schema = types.GetLoadBalancersInput,
        output_schema = types.GetLoadBalancersOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetLoadBalancers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoadBalancerTlsCertificates(input, options)
    return self:invokeOperation(input, {
        name = "GetLoadBalancerTlsCertificates",
        input_schema = types.GetLoadBalancerTlsCertificatesInput,
        output_schema = types.GetLoadBalancerTlsCertificatesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetLoadBalancerTlsCertificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLoadBalancerTlsPolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetLoadBalancerTlsPolicies",
        input_schema = types.GetLoadBalancerTlsPoliciesInput,
        output_schema = types.GetLoadBalancerTlsPoliciesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetLoadBalancerTlsPolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetOperation",
        input_schema = types.GetOperationInput,
        output_schema = types.GetOperationOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetOperation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperations(input, options)
    return self:invokeOperation(input, {
        name = "GetOperations",
        input_schema = types.GetOperationsInput,
        output_schema = types.GetOperationsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetOperations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOperationsForResource(input, options)
    return self:invokeOperation(input, {
        name = "GetOperationsForResource",
        input_schema = types.GetOperationsForResourceInput,
        output_schema = types.GetOperationsForResourceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetOperationsForResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRegions(input, options)
    return self:invokeOperation(input, {
        name = "GetRegions",
        input_schema = types.GetRegionsInput,
        output_schema = types.GetRegionsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRegions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabase",
        input_schema = types.GetRelationalDatabaseInput,
        output_schema = types.GetRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseBlueprints(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseBlueprints",
        input_schema = types.GetRelationalDatabaseBlueprintsInput,
        output_schema = types.GetRelationalDatabaseBlueprintsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseBlueprints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseBundles(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseBundles",
        input_schema = types.GetRelationalDatabaseBundlesInput,
        output_schema = types.GetRelationalDatabaseBundlesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseBundles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseEvents",
        input_schema = types.GetRelationalDatabaseEventsInput,
        output_schema = types.GetRelationalDatabaseEventsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseLogEvents(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseLogEvents",
        input_schema = types.GetRelationalDatabaseLogEventsInput,
        output_schema = types.GetRelationalDatabaseLogEventsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseLogEvents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseLogStreams(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseLogStreams",
        input_schema = types.GetRelationalDatabaseLogStreamsInput,
        output_schema = types.GetRelationalDatabaseLogStreamsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseLogStreams",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseMasterUserPassword(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseMasterUserPassword",
        input_schema = types.GetRelationalDatabaseMasterUserPasswordInput,
        output_schema = types.GetRelationalDatabaseMasterUserPasswordOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseMasterUserPassword",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseMetricData",
        input_schema = types.GetRelationalDatabaseMetricDataInput,
        output_schema = types.GetRelationalDatabaseMetricDataOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseMetricData",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseParameters(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseParameters",
        input_schema = types.GetRelationalDatabaseParametersInput,
        output_schema = types.GetRelationalDatabaseParametersOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseParameters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabases(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabases",
        input_schema = types.GetRelationalDatabasesInput,
        output_schema = types.GetRelationalDatabasesOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseSnapshot",
        input_schema = types.GetRelationalDatabaseSnapshotInput,
        output_schema = types.GetRelationalDatabaseSnapshotOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseSnapshot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRelationalDatabaseSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "GetRelationalDatabaseSnapshots",
        input_schema = types.GetRelationalDatabaseSnapshotsInput,
        output_schema = types.GetRelationalDatabaseSnapshotsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetRelationalDatabaseSnapshots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSetupHistory(input, options)
    return self:invokeOperation(input, {
        name = "GetSetupHistory",
        input_schema = types.GetSetupHistoryInput,
        output_schema = types.GetSetupHistoryOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/get-setup-history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStaticIp(input, options)
    return self:invokeOperation(input, {
        name = "GetStaticIp",
        input_schema = types.GetStaticIpInput,
        output_schema = types.GetStaticIpOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetStaticIp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStaticIps(input, options)
    return self:invokeOperation(input, {
        name = "GetStaticIps",
        input_schema = types.GetStaticIpsInput,
        output_schema = types.GetStaticIpsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/GetStaticIps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importKeyPair(input, options)
    return self:invokeOperation(input, {
        name = "ImportKeyPair",
        input_schema = types.ImportKeyPairInput,
        output_schema = types.ImportKeyPairOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/ImportKeyPair",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:isVpcPeered(input, options)
    return self:invokeOperation(input, {
        name = "IsVpcPeered",
        input_schema = types.IsVpcPeeredInput,
        output_schema = types.IsVpcPeeredOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/IsVpcPeered",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:openInstancePublicPorts(input, options)
    return self:invokeOperation(input, {
        name = "OpenInstancePublicPorts",
        input_schema = types.OpenInstancePublicPortsInput,
        output_schema = types.OpenInstancePublicPortsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/OpenInstancePublicPorts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:peerVpc(input, options)
    return self:invokeOperation(input, {
        name = "PeerVpc",
        input_schema = types.PeerVpcInput,
        output_schema = types.PeerVpcOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/PeerVpc",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putAlarm(input, options)
    return self:invokeOperation(input, {
        name = "PutAlarm",
        input_schema = types.PutAlarmInput,
        output_schema = types.PutAlarmOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/PutAlarm",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putInstancePublicPorts(input, options)
    return self:invokeOperation(input, {
        name = "PutInstancePublicPorts",
        input_schema = types.PutInstancePublicPortsInput,
        output_schema = types.PutInstancePublicPortsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/PutInstancePublicPorts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootInstance(input, options)
    return self:invokeOperation(input, {
        name = "RebootInstance",
        input_schema = types.RebootInstanceInput,
        output_schema = types.RebootInstanceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/RebootInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "RebootRelationalDatabase",
        input_schema = types.RebootRelationalDatabaseInput,
        output_schema = types.RebootRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/RebootRelationalDatabase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerContainerImage(input, options)
    return self:invokeOperation(input, {
        name = "RegisterContainerImage",
        input_schema = types.RegisterContainerImageInput,
        output_schema = types.RegisterContainerImageOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}/images",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releaseStaticIp(input, options)
    return self:invokeOperation(input, {
        name = "ReleaseStaticIp",
        input_schema = types.ReleaseStaticIpInput,
        output_schema = types.ReleaseStaticIpOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/ReleaseStaticIp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetDistributionCache(input, options)
    return self:invokeOperation(input, {
        name = "ResetDistributionCache",
        input_schema = types.ResetDistributionCacheInput,
        output_schema = types.ResetDistributionCacheOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/ResetDistributionCache",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendContactMethodVerification(input, options)
    return self:invokeOperation(input, {
        name = "SendContactMethodVerification",
        input_schema = types.SendContactMethodVerificationInput,
        output_schema = types.SendContactMethodVerificationOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/SendContactMethodVerification",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setIpAddressType(input, options)
    return self:invokeOperation(input, {
        name = "SetIpAddressType",
        input_schema = types.SetIpAddressTypeInput,
        output_schema = types.SetIpAddressTypeOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/SetIpAddressType",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setResourceAccessForBucket(input, options)
    return self:invokeOperation(input, {
        name = "SetResourceAccessForBucket",
        input_schema = types.SetResourceAccessForBucketInput,
        output_schema = types.SetResourceAccessForBucketOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/SetResourceAccessForBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setupInstanceHttps(input, options)
    return self:invokeOperation(input, {
        name = "SetupInstanceHttps",
        input_schema = types.SetupInstanceHttpsInput,
        output_schema = types.SetupInstanceHttpsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/setup-instance-https",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startGUISession(input, options)
    return self:invokeOperation(input, {
        name = "StartGUISession",
        input_schema = types.StartGUISessionInput,
        output_schema = types.StartGUISessionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/start-gui-session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInstance(input, options)
    return self:invokeOperation(input, {
        name = "StartInstance",
        input_schema = types.StartInstanceInput,
        output_schema = types.StartInstanceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/StartInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "StartRelationalDatabase",
        input_schema = types.StartRelationalDatabaseInput,
        output_schema = types.StartRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/StartRelationalDatabase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopGUISession(input, options)
    return self:invokeOperation(input, {
        name = "StopGUISession",
        input_schema = types.StopGUISessionInput,
        output_schema = types.StopGUISessionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/stop-gui-session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopInstance(input, options)
    return self:invokeOperation(input, {
        name = "StopInstance",
        input_schema = types.StopInstanceInput,
        output_schema = types.StopInstanceOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/StopInstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "StopRelationalDatabase",
        input_schema = types.StopRelationalDatabaseInput,
        output_schema = types.StopRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/StopRelationalDatabase",
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
        http_path = "/ls/api/2016-11-28/TagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testAlarm(input, options)
    return self:invokeOperation(input, {
        name = "TestAlarm",
        input_schema = types.TestAlarmInput,
        output_schema = types.TestAlarmOutput,
        http_method = "GET",
        http_path = "/ls/api/2016-11-28/TestAlarm/{alarmName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:unpeerVpc(input, options)
    return self:invokeOperation(input, {
        name = "UnpeerVpc",
        input_schema = types.UnpeerVpcInput,
        output_schema = types.UnpeerVpcOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UnpeerVpc",
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
        http_path = "/ls/api/2016-11-28/UntagResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBucket(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBucket",
        input_schema = types.UpdateBucketInput,
        output_schema = types.UpdateBucketOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateBucket",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBucketBundle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBucketBundle",
        input_schema = types.UpdateBucketBundleInput,
        output_schema = types.UpdateBucketBundleOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateBucketBundle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContainerService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContainerService",
        input_schema = types.UpdateContainerServiceInput,
        output_schema = types.UpdateContainerServiceOutput,
        http_method = "PATCH",
        http_path = "/ls/api/2016-11-28/container-services/{serviceName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDistribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistribution",
        input_schema = types.UpdateDistributionInput,
        output_schema = types.UpdateDistributionOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateDistribution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDistributionBundle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistributionBundle",
        input_schema = types.UpdateDistributionBundleInput,
        output_schema = types.UpdateDistributionBundleOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateDistributionBundle",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainEntry(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainEntry",
        input_schema = types.UpdateDomainEntryInput,
        output_schema = types.UpdateDomainEntryOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateDomainEntry",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstanceMetadataOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstanceMetadataOptions",
        input_schema = types.UpdateInstanceMetadataOptionsInput,
        output_schema = types.UpdateInstanceMetadataOptionsOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateInstanceMetadataOptions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLoadBalancerAttribute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLoadBalancerAttribute",
        input_schema = types.UpdateLoadBalancerAttributeInput,
        output_schema = types.UpdateLoadBalancerAttributeOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateLoadBalancerAttribute",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRelationalDatabase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelationalDatabase",
        input_schema = types.UpdateRelationalDatabaseInput,
        output_schema = types.UpdateRelationalDatabaseOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateRelationalDatabase",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRelationalDatabaseParameters(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRelationalDatabaseParameters",
        input_schema = types.UpdateRelationalDatabaseParametersInput,
        output_schema = types.UpdateRelationalDatabaseParametersOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateRelationalDatabaseParameters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
