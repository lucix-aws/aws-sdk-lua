local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("greengrassv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("greengrassv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GreengrassV2"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "greengrass", signing_region = cfg.region } }
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

function Client:associateServiceRoleToAccount(input, options)
    return self:invokeOperation(input, {
        name = "AssociateServiceRoleToAccount",
        input_schema = types.AssociateServiceRoleToAccountInput,
        output_schema = types.AssociateServiceRoleToAccountOutput,
        http_method = "PUT",
        http_path = "/greengrass/servicerole",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateClientDeviceWithCoreDevice(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateClientDeviceWithCoreDevice",
        input_schema = types.BatchAssociateClientDeviceWithCoreDeviceInput,
        output_schema = types.BatchAssociateClientDeviceWithCoreDeviceOutput,
        http_method = "POST",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateClientDeviceFromCoreDevice(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateClientDeviceFromCoreDevice",
        input_schema = types.BatchDisassociateClientDeviceFromCoreDeviceInput,
        output_schema = types.BatchDisassociateClientDeviceFromCoreDeviceOutput,
        http_method = "POST",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CancelDeployment",
        input_schema = types.CancelDeploymentInput,
        output_schema = types.CancelDeploymentOutput,
        http_method = "POST",
        http_path = "/greengrass/v2/deployments/{deploymentId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComponentVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponentVersion",
        input_schema = types.CreateComponentVersionInput,
        output_schema = types.CreateComponentVersionOutput,
        http_method = "POST",
        http_path = "/greengrass/v2/createComponentVersion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/greengrass/v2/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = types.DeleteComponentInput,
        output_schema = types.DeleteComponentOutput,
        http_method = "DELETE",
        http_path = "/greengrass/v2/components/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCoreDevice(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCoreDevice",
        input_schema = types.DeleteCoreDeviceInput,
        output_schema = types.DeleteCoreDeviceOutput,
        http_method = "DELETE",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = types.DeleteDeploymentInput,
        output_schema = types.DeleteDeploymentOutput,
        http_method = "DELETE",
        http_path = "/greengrass/v2/deployments/{deploymentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComponent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComponent",
        input_schema = types.DescribeComponentInput,
        output_schema = types.DescribeComponentOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/components/{arn}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateServiceRoleFromAccount(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateServiceRoleFromAccount",
        input_schema = types.DisassociateServiceRoleFromAccountInput,
        output_schema = types.DisassociateServiceRoleFromAccountOutput,
        http_method = "DELETE",
        http_path = "/greengrass/servicerole",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = types.GetComponentInput,
        output_schema = types.GetComponentOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/components/{arn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponentVersionArtifact(input, options)
    return self:invokeOperation(input, {
        name = "GetComponentVersionArtifact",
        input_schema = types.GetComponentVersionArtifactInput,
        output_schema = types.GetComponentVersionArtifactOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/components/{arn}/artifacts/{artifactName+}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConnectivityInfo(input, options)
    return self:invokeOperation(input, {
        name = "GetConnectivityInfo",
        input_schema = types.GetConnectivityInfoInput,
        output_schema = types.GetConnectivityInfoOutput,
        http_method = "GET",
        http_path = "/greengrass/things/{thingName}/connectivityInfo",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCoreDevice(input, options)
    return self:invokeOperation(input, {
        name = "GetCoreDevice",
        input_schema = types.GetCoreDeviceInput,
        output_schema = types.GetCoreDeviceOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/deployments/{deploymentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getServiceRoleForAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceRoleForAccount",
        input_schema = types.GetServiceRoleForAccountInput,
        output_schema = types.GetServiceRoleForAccountOutput,
        http_method = "GET",
        http_path = "/greengrass/servicerole",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClientDevicesAssociatedWithCoreDevice(input, options)
    return self:invokeOperation(input, {
        name = "ListClientDevicesAssociatedWithCoreDevice",
        input_schema = types.ListClientDevicesAssociatedWithCoreDeviceInput,
        output_schema = types.ListClientDevicesAssociatedWithCoreDeviceOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/components",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentVersions",
        input_schema = types.ListComponentVersionsInput,
        output_schema = types.ListComponentVersionsOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/components/{arn}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCoreDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListCoreDevices",
        input_schema = types.ListCoreDevicesInput,
        output_schema = types.ListCoreDevicesOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/coreDevices",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEffectiveDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListEffectiveDeployments",
        input_schema = types.ListEffectiveDeploymentsInput,
        output_schema = types.ListEffectiveDeploymentsOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstalledComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListInstalledComponents",
        input_schema = types.ListInstalledComponentsInput,
        output_schema = types.ListInstalledComponentsOutput,
        http_method = "GET",
        http_path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resolveComponentCandidates(input, options)
    return self:invokeOperation(input, {
        name = "ResolveComponentCandidates",
        input_schema = types.ResolveComponentCandidatesInput,
        output_schema = types.ResolveComponentCandidatesOutput,
        http_method = "POST",
        http_path = "/greengrass/v2/resolveComponentCandidates",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectivityInfo(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectivityInfo",
        input_schema = types.UpdateConnectivityInfoInput,
        output_schema = types.UpdateConnectivityInfoOutput,
        http_method = "PUT",
        http_path = "/greengrass/things/{thingName}/connectivityInfo",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
