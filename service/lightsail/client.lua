local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("lightsail.endpoint_rules")
local schemas = require("lightsail.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Lightsail_20161128"
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
        input_schema = schemas.AllocateStaticIpInput,
        output_schema = schemas.AllocateStaticIpOutput,
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
        input_schema = schemas.AttachCertificateToDistributionInput,
        output_schema = schemas.AttachCertificateToDistributionOutput,
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
        input_schema = schemas.AttachDiskInput,
        output_schema = schemas.AttachDiskOutput,
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
        input_schema = schemas.AttachInstancesToLoadBalancerInput,
        output_schema = schemas.AttachInstancesToLoadBalancerOutput,
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
        input_schema = schemas.AttachLoadBalancerTlsCertificateInput,
        output_schema = schemas.AttachLoadBalancerTlsCertificateOutput,
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
        input_schema = schemas.AttachStaticIpInput,
        output_schema = schemas.AttachStaticIpOutput,
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
        input_schema = schemas.CloseInstancePublicPortsInput,
        output_schema = schemas.CloseInstancePublicPortsOutput,
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
        input_schema = schemas.CopySnapshotInput,
        output_schema = schemas.CopySnapshotOutput,
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
        input_schema = schemas.CreateBucketInput,
        output_schema = schemas.CreateBucketOutput,
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
        input_schema = schemas.CreateBucketAccessKeyInput,
        output_schema = schemas.CreateBucketAccessKeyOutput,
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
        input_schema = schemas.CreateCertificateInput,
        output_schema = schemas.CreateCertificateOutput,
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
        input_schema = schemas.CreateCloudFormationStackInput,
        output_schema = schemas.CreateCloudFormationStackOutput,
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
        input_schema = schemas.CreateContactMethodInput,
        output_schema = schemas.CreateContactMethodOutput,
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
        input_schema = schemas.CreateContainerServiceInput,
        output_schema = schemas.CreateContainerServiceOutput,
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
        input_schema = schemas.CreateContainerServiceDeploymentInput,
        output_schema = schemas.CreateContainerServiceDeploymentOutput,
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
        input_schema = schemas.CreateContainerServiceRegistryLoginInput,
        output_schema = schemas.CreateContainerServiceRegistryLoginOutput,
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
        input_schema = schemas.CreateDiskInput,
        output_schema = schemas.CreateDiskOutput,
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
        input_schema = schemas.CreateDiskFromSnapshotInput,
        output_schema = schemas.CreateDiskFromSnapshotOutput,
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
        input_schema = schemas.CreateDiskSnapshotInput,
        output_schema = schemas.CreateDiskSnapshotOutput,
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
        input_schema = schemas.CreateDistributionInput,
        output_schema = schemas.CreateDistributionOutput,
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
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
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
        input_schema = schemas.CreateDomainEntryInput,
        output_schema = schemas.CreateDomainEntryOutput,
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
        input_schema = schemas.CreateGUISessionAccessDetailsInput,
        output_schema = schemas.CreateGUISessionAccessDetailsOutput,
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
        input_schema = schemas.CreateInstancesInput,
        output_schema = schemas.CreateInstancesOutput,
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
        input_schema = schemas.CreateInstancesFromSnapshotInput,
        output_schema = schemas.CreateInstancesFromSnapshotOutput,
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
        input_schema = schemas.CreateInstanceSnapshotInput,
        output_schema = schemas.CreateInstanceSnapshotOutput,
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
        input_schema = schemas.CreateKeyPairInput,
        output_schema = schemas.CreateKeyPairOutput,
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
        input_schema = schemas.CreateLoadBalancerInput,
        output_schema = schemas.CreateLoadBalancerOutput,
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
        input_schema = schemas.CreateLoadBalancerTlsCertificateInput,
        output_schema = schemas.CreateLoadBalancerTlsCertificateOutput,
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
        input_schema = schemas.CreateRelationalDatabaseInput,
        output_schema = schemas.CreateRelationalDatabaseOutput,
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
        input_schema = schemas.CreateRelationalDatabaseFromSnapshotInput,
        output_schema = schemas.CreateRelationalDatabaseFromSnapshotOutput,
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
        input_schema = schemas.CreateRelationalDatabaseSnapshotInput,
        output_schema = schemas.CreateRelationalDatabaseSnapshotOutput,
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
        input_schema = schemas.DeleteAlarmInput,
        output_schema = schemas.DeleteAlarmOutput,
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
        input_schema = schemas.DeleteAutoSnapshotInput,
        output_schema = schemas.DeleteAutoSnapshotOutput,
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
        input_schema = schemas.DeleteBucketInput,
        output_schema = schemas.DeleteBucketOutput,
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
        input_schema = schemas.DeleteBucketAccessKeyInput,
        output_schema = schemas.DeleteBucketAccessKeyOutput,
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
        input_schema = schemas.DeleteCertificateInput,
        output_schema = schemas.DeleteCertificateOutput,
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
        input_schema = schemas.DeleteContactMethodInput,
        output_schema = schemas.DeleteContactMethodOutput,
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
        input_schema = schemas.DeleteContainerImageInput,
        output_schema = schemas.DeleteContainerImageOutput,
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
        input_schema = schemas.DeleteContainerServiceInput,
        output_schema = schemas.DeleteContainerServiceOutput,
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
        input_schema = schemas.DeleteDiskInput,
        output_schema = schemas.DeleteDiskOutput,
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
        input_schema = schemas.DeleteDiskSnapshotInput,
        output_schema = schemas.DeleteDiskSnapshotOutput,
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
        input_schema = schemas.DeleteDistributionInput,
        output_schema = schemas.DeleteDistributionOutput,
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
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
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
        input_schema = schemas.DeleteDomainEntryInput,
        output_schema = schemas.DeleteDomainEntryOutput,
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
        input_schema = schemas.DeleteInstanceInput,
        output_schema = schemas.DeleteInstanceOutput,
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
        input_schema = schemas.DeleteInstanceSnapshotInput,
        output_schema = schemas.DeleteInstanceSnapshotOutput,
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
        input_schema = schemas.DeleteKeyPairInput,
        output_schema = schemas.DeleteKeyPairOutput,
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
        input_schema = schemas.DeleteKnownHostKeysInput,
        output_schema = schemas.DeleteKnownHostKeysOutput,
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
        input_schema = schemas.DeleteLoadBalancerInput,
        output_schema = schemas.DeleteLoadBalancerOutput,
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
        input_schema = schemas.DeleteLoadBalancerTlsCertificateInput,
        output_schema = schemas.DeleteLoadBalancerTlsCertificateOutput,
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
        input_schema = schemas.DeleteRelationalDatabaseInput,
        output_schema = schemas.DeleteRelationalDatabaseOutput,
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
        input_schema = schemas.DeleteRelationalDatabaseSnapshotInput,
        output_schema = schemas.DeleteRelationalDatabaseSnapshotOutput,
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
        input_schema = schemas.DetachCertificateFromDistributionInput,
        output_schema = schemas.DetachCertificateFromDistributionOutput,
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
        input_schema = schemas.DetachDiskInput,
        output_schema = schemas.DetachDiskOutput,
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
        input_schema = schemas.DetachInstancesFromLoadBalancerInput,
        output_schema = schemas.DetachInstancesFromLoadBalancerOutput,
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
        input_schema = schemas.DetachStaticIpInput,
        output_schema = schemas.DetachStaticIpOutput,
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
        input_schema = schemas.DisableAddOnInput,
        output_schema = schemas.DisableAddOnOutput,
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
        input_schema = schemas.DownloadDefaultKeyPairInput,
        output_schema = schemas.DownloadDefaultKeyPairOutput,
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
        input_schema = schemas.EnableAddOnInput,
        output_schema = schemas.EnableAddOnOutput,
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
        input_schema = schemas.ExportSnapshotInput,
        output_schema = schemas.ExportSnapshotOutput,
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
        input_schema = schemas.GetActiveNamesInput,
        output_schema = schemas.GetActiveNamesOutput,
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
        input_schema = schemas.GetAlarmsInput,
        output_schema = schemas.GetAlarmsOutput,
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
        input_schema = schemas.GetAutoSnapshotsInput,
        output_schema = schemas.GetAutoSnapshotsOutput,
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
        input_schema = schemas.GetBlueprintsInput,
        output_schema = schemas.GetBlueprintsOutput,
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
        input_schema = schemas.GetBucketAccessKeysInput,
        output_schema = schemas.GetBucketAccessKeysOutput,
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
        input_schema = schemas.GetBucketBundlesInput,
        output_schema = schemas.GetBucketBundlesOutput,
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
        input_schema = schemas.GetBucketMetricDataInput,
        output_schema = schemas.GetBucketMetricDataOutput,
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
        input_schema = schemas.GetBucketsInput,
        output_schema = schemas.GetBucketsOutput,
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
        input_schema = schemas.GetBundlesInput,
        output_schema = schemas.GetBundlesOutput,
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
        input_schema = schemas.GetCertificatesInput,
        output_schema = schemas.GetCertificatesOutput,
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
        input_schema = schemas.GetCloudFormationStackRecordsInput,
        output_schema = schemas.GetCloudFormationStackRecordsOutput,
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
        input_schema = schemas.GetContactMethodsInput,
        output_schema = schemas.GetContactMethodsOutput,
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
        input_schema = schemas.GetContainerAPIMetadataInput,
        output_schema = schemas.GetContainerAPIMetadataOutput,
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
        input_schema = schemas.GetContainerImagesInput,
        output_schema = schemas.GetContainerImagesOutput,
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
        input_schema = schemas.GetContainerLogInput,
        output_schema = schemas.GetContainerLogOutput,
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
        input_schema = schemas.GetContainerServiceDeploymentsInput,
        output_schema = schemas.GetContainerServiceDeploymentsOutput,
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
        input_schema = schemas.GetContainerServiceMetricDataInput,
        output_schema = schemas.GetContainerServiceMetricDataOutput,
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
        input_schema = schemas.GetContainerServicePowersInput,
        output_schema = schemas.GetContainerServicePowersOutput,
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
        input_schema = schemas.GetContainerServicesInput,
        output_schema = schemas.GetContainerServicesOutput,
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
        input_schema = schemas.GetCostEstimateInput,
        output_schema = schemas.GetCostEstimateOutput,
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
        input_schema = schemas.GetDiskInput,
        output_schema = schemas.GetDiskOutput,
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
        input_schema = schemas.GetDisksInput,
        output_schema = schemas.GetDisksOutput,
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
        input_schema = schemas.GetDiskSnapshotInput,
        output_schema = schemas.GetDiskSnapshotOutput,
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
        input_schema = schemas.GetDiskSnapshotsInput,
        output_schema = schemas.GetDiskSnapshotsOutput,
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
        input_schema = schemas.GetDistributionBundlesInput,
        output_schema = schemas.GetDistributionBundlesOutput,
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
        input_schema = schemas.GetDistributionLatestCacheResetInput,
        output_schema = schemas.GetDistributionLatestCacheResetOutput,
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
        input_schema = schemas.GetDistributionMetricDataInput,
        output_schema = schemas.GetDistributionMetricDataOutput,
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
        input_schema = schemas.GetDistributionsInput,
        output_schema = schemas.GetDistributionsOutput,
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
        input_schema = schemas.GetDomainInput,
        output_schema = schemas.GetDomainOutput,
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
        input_schema = schemas.GetDomainsInput,
        output_schema = schemas.GetDomainsOutput,
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
        input_schema = schemas.GetExportSnapshotRecordsInput,
        output_schema = schemas.GetExportSnapshotRecordsOutput,
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
        input_schema = schemas.GetInstanceInput,
        output_schema = schemas.GetInstanceOutput,
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
        input_schema = schemas.GetInstanceAccessDetailsInput,
        output_schema = schemas.GetInstanceAccessDetailsOutput,
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
        input_schema = schemas.GetInstanceMetricDataInput,
        output_schema = schemas.GetInstanceMetricDataOutput,
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
        input_schema = schemas.GetInstancePortStatesInput,
        output_schema = schemas.GetInstancePortStatesOutput,
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
        input_schema = schemas.GetInstancesInput,
        output_schema = schemas.GetInstancesOutput,
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
        input_schema = schemas.GetInstanceSnapshotInput,
        output_schema = schemas.GetInstanceSnapshotOutput,
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
        input_schema = schemas.GetInstanceSnapshotsInput,
        output_schema = schemas.GetInstanceSnapshotsOutput,
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
        input_schema = schemas.GetInstanceStateInput,
        output_schema = schemas.GetInstanceStateOutput,
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
        input_schema = schemas.GetKeyPairInput,
        output_schema = schemas.GetKeyPairOutput,
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
        input_schema = schemas.GetKeyPairsInput,
        output_schema = schemas.GetKeyPairsOutput,
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
        input_schema = schemas.GetLoadBalancerInput,
        output_schema = schemas.GetLoadBalancerOutput,
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
        input_schema = schemas.GetLoadBalancerMetricDataInput,
        output_schema = schemas.GetLoadBalancerMetricDataOutput,
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
        input_schema = schemas.GetLoadBalancersInput,
        output_schema = schemas.GetLoadBalancersOutput,
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
        input_schema = schemas.GetLoadBalancerTlsCertificatesInput,
        output_schema = schemas.GetLoadBalancerTlsCertificatesOutput,
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
        input_schema = schemas.GetLoadBalancerTlsPoliciesInput,
        output_schema = schemas.GetLoadBalancerTlsPoliciesOutput,
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
        input_schema = schemas.GetOperationInput,
        output_schema = schemas.GetOperationOutput,
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
        input_schema = schemas.GetOperationsInput,
        output_schema = schemas.GetOperationsOutput,
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
        input_schema = schemas.GetOperationsForResourceInput,
        output_schema = schemas.GetOperationsForResourceOutput,
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
        input_schema = schemas.GetRegionsInput,
        output_schema = schemas.GetRegionsOutput,
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
        input_schema = schemas.GetRelationalDatabaseInput,
        output_schema = schemas.GetRelationalDatabaseOutput,
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
        input_schema = schemas.GetRelationalDatabaseBlueprintsInput,
        output_schema = schemas.GetRelationalDatabaseBlueprintsOutput,
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
        input_schema = schemas.GetRelationalDatabaseBundlesInput,
        output_schema = schemas.GetRelationalDatabaseBundlesOutput,
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
        input_schema = schemas.GetRelationalDatabaseEventsInput,
        output_schema = schemas.GetRelationalDatabaseEventsOutput,
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
        input_schema = schemas.GetRelationalDatabaseLogEventsInput,
        output_schema = schemas.GetRelationalDatabaseLogEventsOutput,
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
        input_schema = schemas.GetRelationalDatabaseLogStreamsInput,
        output_schema = schemas.GetRelationalDatabaseLogStreamsOutput,
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
        input_schema = schemas.GetRelationalDatabaseMasterUserPasswordInput,
        output_schema = schemas.GetRelationalDatabaseMasterUserPasswordOutput,
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
        input_schema = schemas.GetRelationalDatabaseMetricDataInput,
        output_schema = schemas.GetRelationalDatabaseMetricDataOutput,
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
        input_schema = schemas.GetRelationalDatabaseParametersInput,
        output_schema = schemas.GetRelationalDatabaseParametersOutput,
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
        input_schema = schemas.GetRelationalDatabasesInput,
        output_schema = schemas.GetRelationalDatabasesOutput,
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
        input_schema = schemas.GetRelationalDatabaseSnapshotInput,
        output_schema = schemas.GetRelationalDatabaseSnapshotOutput,
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
        input_schema = schemas.GetRelationalDatabaseSnapshotsInput,
        output_schema = schemas.GetRelationalDatabaseSnapshotsOutput,
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
        input_schema = schemas.GetSetupHistoryInput,
        output_schema = schemas.GetSetupHistoryOutput,
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
        input_schema = schemas.GetStaticIpInput,
        output_schema = schemas.GetStaticIpOutput,
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
        input_schema = schemas.GetStaticIpsInput,
        output_schema = schemas.GetStaticIpsOutput,
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
        input_schema = schemas.ImportKeyPairInput,
        output_schema = schemas.ImportKeyPairOutput,
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
        input_schema = schemas.IsVpcPeeredInput,
        output_schema = schemas.IsVpcPeeredOutput,
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
        input_schema = schemas.OpenInstancePublicPortsInput,
        output_schema = schemas.OpenInstancePublicPortsOutput,
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
        input_schema = schemas.PeerVpcInput,
        output_schema = schemas.PeerVpcOutput,
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
        input_schema = schemas.PutAlarmInput,
        output_schema = schemas.PutAlarmOutput,
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
        input_schema = schemas.PutInstancePublicPortsInput,
        output_schema = schemas.PutInstancePublicPortsOutput,
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
        input_schema = schemas.RebootInstanceInput,
        output_schema = schemas.RebootInstanceOutput,
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
        input_schema = schemas.RebootRelationalDatabaseInput,
        output_schema = schemas.RebootRelationalDatabaseOutput,
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
        input_schema = schemas.RegisterContainerImageInput,
        output_schema = schemas.RegisterContainerImageOutput,
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
        input_schema = schemas.ReleaseStaticIpInput,
        output_schema = schemas.ReleaseStaticIpOutput,
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
        input_schema = schemas.ResetDistributionCacheInput,
        output_schema = schemas.ResetDistributionCacheOutput,
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
        input_schema = schemas.SendContactMethodVerificationInput,
        output_schema = schemas.SendContactMethodVerificationOutput,
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
        input_schema = schemas.SetIpAddressTypeInput,
        output_schema = schemas.SetIpAddressTypeOutput,
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
        input_schema = schemas.SetResourceAccessForBucketInput,
        output_schema = schemas.SetResourceAccessForBucketOutput,
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
        input_schema = schemas.SetupInstanceHttpsInput,
        output_schema = schemas.SetupInstanceHttpsOutput,
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
        input_schema = schemas.StartGUISessionInput,
        output_schema = schemas.StartGUISessionOutput,
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
        input_schema = schemas.StartInstanceInput,
        output_schema = schemas.StartInstanceOutput,
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
        input_schema = schemas.StartRelationalDatabaseInput,
        output_schema = schemas.StartRelationalDatabaseOutput,
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
        input_schema = schemas.StopGUISessionInput,
        output_schema = schemas.StopGUISessionOutput,
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
        input_schema = schemas.StopInstanceInput,
        output_schema = schemas.StopInstanceOutput,
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
        input_schema = schemas.StopRelationalDatabaseInput,
        output_schema = schemas.StopRelationalDatabaseOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.TestAlarmInput,
        output_schema = schemas.TestAlarmOutput,
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
        input_schema = schemas.UnpeerVpcInput,
        output_schema = schemas.UnpeerVpcOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateBucketInput,
        output_schema = schemas.UpdateBucketOutput,
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
        input_schema = schemas.UpdateBucketBundleInput,
        output_schema = schemas.UpdateBucketBundleOutput,
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
        input_schema = schemas.UpdateContainerServiceInput,
        output_schema = schemas.UpdateContainerServiceOutput,
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
        input_schema = schemas.UpdateDistributionInput,
        output_schema = schemas.UpdateDistributionOutput,
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
        input_schema = schemas.UpdateDistributionBundleInput,
        output_schema = schemas.UpdateDistributionBundleOutput,
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
        input_schema = schemas.UpdateDomainEntryInput,
        output_schema = schemas.UpdateDomainEntryOutput,
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
        input_schema = schemas.UpdateInstanceMetadataOptionsInput,
        output_schema = schemas.UpdateInstanceMetadataOptionsOutput,
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
        input_schema = schemas.UpdateLoadBalancerAttributeInput,
        output_schema = schemas.UpdateLoadBalancerAttributeOutput,
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
        input_schema = schemas.UpdateRelationalDatabaseInput,
        output_schema = schemas.UpdateRelationalDatabaseOutput,
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
        input_schema = schemas.UpdateRelationalDatabaseParametersInput,
        output_schema = schemas.UpdateRelationalDatabaseParametersOutput,
        http_method = "POST",
        http_path = "/ls/api/2016-11-28/UpdateRelationalDatabaseParameters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
