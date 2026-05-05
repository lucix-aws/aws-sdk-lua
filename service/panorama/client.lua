local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("panorama.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("panorama.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "OmniCloudServiceLambda"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "panorama", signing_region = cfg.region } }
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

function Client:createApplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationInstance",
        input_schema = schemas.CreateApplicationInstanceInput,
        output_schema = schemas.CreateApplicationInstanceOutput,
        http_method = "POST",
        http_path = "/application-instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJobForDevices(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobForDevices",
        input_schema = schemas.CreateJobForDevicesInput,
        output_schema = schemas.CreateJobForDevicesOutput,
        http_method = "POST",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNodeFromTemplateJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateNodeFromTemplateJob",
        input_schema = schemas.CreateNodeFromTemplateJobInput,
        output_schema = schemas.CreateNodeFromTemplateJobOutput,
        http_method = "POST",
        http_path = "/packages/template-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackage",
        input_schema = schemas.CreatePackageInput,
        output_schema = schemas.CreatePackageOutput,
        http_method = "POST",
        http_path = "/packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPackageImportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreatePackageImportJob",
        input_schema = schemas.CreatePackageImportJobInput,
        output_schema = schemas.CreatePackageImportJobOutput,
        http_method = "POST",
        http_path = "/packages/import-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDevice",
        input_schema = schemas.DeleteDeviceInput,
        output_schema = schemas.DeleteDeviceOutput,
        http_method = "DELETE",
        http_path = "/devices/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePackage(input, options)
    return self:invokeOperation(input, {
        name = "DeletePackage",
        input_schema = schemas.DeletePackageInput,
        output_schema = schemas.DeletePackageOutput,
        http_method = "DELETE",
        http_path = "/packages/{PackageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterPackageVersion",
        input_schema = schemas.DeregisterPackageVersionInput,
        output_schema = schemas.DeregisterPackageVersionOutput,
        http_method = "DELETE",
        http_path = "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationInstance",
        input_schema = schemas.DescribeApplicationInstanceInput,
        output_schema = schemas.DescribeApplicationInstanceOutput,
        http_method = "GET",
        http_path = "/application-instances/{ApplicationInstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationInstanceDetails(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationInstanceDetails",
        input_schema = schemas.DescribeApplicationInstanceDetailsInput,
        output_schema = schemas.DescribeApplicationInstanceDetailsOutput,
        http_method = "GET",
        http_path = "/application-instances/{ApplicationInstanceId}/details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDevice(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDevice",
        input_schema = schemas.DescribeDeviceInput,
        output_schema = schemas.DescribeDeviceOutput,
        http_method = "GET",
        http_path = "/devices/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeviceJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeviceJob",
        input_schema = schemas.DescribeDeviceJobInput,
        output_schema = schemas.DescribeDeviceJobOutput,
        http_method = "GET",
        http_path = "/jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNode(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNode",
        input_schema = schemas.DescribeNodeInput,
        output_schema = schemas.DescribeNodeOutput,
        http_method = "GET",
        http_path = "/nodes/{NodeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNodeFromTemplateJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNodeFromTemplateJob",
        input_schema = schemas.DescribeNodeFromTemplateJobInput,
        output_schema = schemas.DescribeNodeFromTemplateJobOutput,
        http_method = "GET",
        http_path = "/packages/template-job/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackage(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackage",
        input_schema = schemas.DescribePackageInput,
        output_schema = schemas.DescribePackageOutput,
        http_method = "GET",
        http_path = "/packages/metadata/{PackageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackageImportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackageImportJob",
        input_schema = schemas.DescribePackageImportJobInput,
        output_schema = schemas.DescribePackageImportJobOutput,
        http_method = "GET",
        http_path = "/packages/import-jobs/{JobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribePackageVersion",
        input_schema = schemas.DescribePackageVersionInput,
        output_schema = schemas.DescribePackageVersionOutput,
        http_method = "GET",
        http_path = "/packages/metadata/{PackageId}/versions/{PackageVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationInstanceDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationInstanceDependencies",
        input_schema = schemas.ListApplicationInstanceDependenciesInput,
        output_schema = schemas.ListApplicationInstanceDependenciesOutput,
        http_method = "GET",
        http_path = "/application-instances/{ApplicationInstanceId}/package-dependencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationInstanceNodeInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationInstanceNodeInstances",
        input_schema = schemas.ListApplicationInstanceNodeInstancesInput,
        output_schema = schemas.ListApplicationInstanceNodeInstancesOutput,
        http_method = "GET",
        http_path = "/application-instances/{ApplicationInstanceId}/node-instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationInstances",
        input_schema = schemas.ListApplicationInstancesInput,
        output_schema = schemas.ListApplicationInstancesOutput,
        http_method = "GET",
        http_path = "/application-instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = schemas.ListDevicesInput,
        output_schema = schemas.ListDevicesOutput,
        http_method = "GET",
        http_path = "/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevicesJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListDevicesJobs",
        input_schema = schemas.ListDevicesJobsInput,
        output_schema = schemas.ListDevicesJobsOutput,
        http_method = "GET",
        http_path = "/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNodeFromTemplateJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListNodeFromTemplateJobs",
        input_schema = schemas.ListNodeFromTemplateJobsInput,
        output_schema = schemas.ListNodeFromTemplateJobsOutput,
        http_method = "GET",
        http_path = "/packages/template-job",
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
        http_path = "/nodes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackageImportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListPackageImportJobs",
        input_schema = schemas.ListPackageImportJobsInput,
        output_schema = schemas.ListPackageImportJobsOutput,
        http_method = "GET",
        http_path = "/packages/import-jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListPackages",
        input_schema = schemas.ListPackagesInput,
        output_schema = schemas.ListPackagesOutput,
        http_method = "GET",
        http_path = "/packages",
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

function Client:provisionDevice(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionDevice",
        input_schema = schemas.ProvisionDeviceInput,
        output_schema = schemas.ProvisionDeviceOutput,
        http_method = "POST",
        http_path = "/devices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerPackageVersion(input, options)
    return self:invokeOperation(input, {
        name = "RegisterPackageVersion",
        input_schema = schemas.RegisterPackageVersionInput,
        output_schema = schemas.RegisterPackageVersionOutput,
        http_method = "PUT",
        http_path = "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeApplicationInstance(input, options)
    return self:invokeOperation(input, {
        name = "RemoveApplicationInstance",
        input_schema = schemas.RemoveApplicationInstanceInput,
        output_schema = schemas.RemoveApplicationInstanceOutput,
        http_method = "DELETE",
        http_path = "/application-instances/{ApplicationInstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:signalApplicationInstanceNodeInstances(input, options)
    return self:invokeOperation(input, {
        name = "SignalApplicationInstanceNodeInstances",
        input_schema = schemas.SignalApplicationInstanceNodeInstancesInput,
        output_schema = schemas.SignalApplicationInstanceNodeInstancesOutput,
        http_method = "PUT",
        http_path = "/application-instances/{ApplicationInstanceId}/node-signals",
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

function Client:updateDeviceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeviceMetadata",
        input_schema = schemas.UpdateDeviceMetadataInput,
        output_schema = schemas.UpdateDeviceMetadataOutput,
        http_method = "PUT",
        http_path = "/devices/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
