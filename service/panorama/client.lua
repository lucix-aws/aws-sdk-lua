local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("panorama.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("panorama.types")

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
        input_schema = types.CreateApplicationInstanceInput,
        output_schema = types.CreateApplicationInstanceOutput,
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
        input_schema = types.CreateJobForDevicesInput,
        output_schema = types.CreateJobForDevicesOutput,
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
        input_schema = types.CreateNodeFromTemplateJobInput,
        output_schema = types.CreateNodeFromTemplateJobOutput,
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
        input_schema = types.CreatePackageInput,
        output_schema = types.CreatePackageOutput,
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
        input_schema = types.CreatePackageImportJobInput,
        output_schema = types.CreatePackageImportJobOutput,
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
        input_schema = types.DeleteDeviceInput,
        output_schema = types.DeleteDeviceOutput,
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
        input_schema = types.DeletePackageInput,
        output_schema = types.DeletePackageOutput,
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
        input_schema = types.DeregisterPackageVersionInput,
        output_schema = types.DeregisterPackageVersionOutput,
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
        input_schema = types.DescribeApplicationInstanceInput,
        output_schema = types.DescribeApplicationInstanceOutput,
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
        input_schema = types.DescribeApplicationInstanceDetailsInput,
        output_schema = types.DescribeApplicationInstanceDetailsOutput,
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
        input_schema = types.DescribeDeviceInput,
        output_schema = types.DescribeDeviceOutput,
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
        input_schema = types.DescribeDeviceJobInput,
        output_schema = types.DescribeDeviceJobOutput,
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
        input_schema = types.DescribeNodeInput,
        output_schema = types.DescribeNodeOutput,
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
        input_schema = types.DescribeNodeFromTemplateJobInput,
        output_schema = types.DescribeNodeFromTemplateJobOutput,
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
        input_schema = types.DescribePackageInput,
        output_schema = types.DescribePackageOutput,
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
        input_schema = types.DescribePackageImportJobInput,
        output_schema = types.DescribePackageImportJobOutput,
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
        input_schema = types.DescribePackageVersionInput,
        output_schema = types.DescribePackageVersionOutput,
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
        input_schema = types.ListApplicationInstanceDependenciesInput,
        output_schema = types.ListApplicationInstanceDependenciesOutput,
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
        input_schema = types.ListApplicationInstanceNodeInstancesInput,
        output_schema = types.ListApplicationInstanceNodeInstancesOutput,
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
        input_schema = types.ListApplicationInstancesInput,
        output_schema = types.ListApplicationInstancesOutput,
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
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
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
        input_schema = types.ListDevicesJobsInput,
        output_schema = types.ListDevicesJobsOutput,
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
        input_schema = types.ListNodeFromTemplateJobsInput,
        output_schema = types.ListNodeFromTemplateJobsOutput,
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
        input_schema = types.ListNodesInput,
        output_schema = types.ListNodesOutput,
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
        input_schema = types.ListPackageImportJobsInput,
        output_schema = types.ListPackageImportJobsOutput,
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
        input_schema = types.ListPackagesInput,
        output_schema = types.ListPackagesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ProvisionDeviceInput,
        output_schema = types.ProvisionDeviceOutput,
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
        input_schema = types.RegisterPackageVersionInput,
        output_schema = types.RegisterPackageVersionOutput,
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
        input_schema = types.RemoveApplicationInstanceInput,
        output_schema = types.RemoveApplicationInstanceOutput,
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
        input_schema = types.SignalApplicationInstanceNodeInstancesInput,
        output_schema = types.SignalApplicationInstanceNodeInstancesOutput,
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

function Client:updateDeviceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeviceMetadata",
        input_schema = types.UpdateDeviceMetadataInput,
        output_schema = types.UpdateDeviceMetadataOutput,
        http_method = "PUT",
        http_path = "/devices/{DeviceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
