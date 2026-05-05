local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("apprunner.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("apprunner.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AppRunner"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "apprunner", signing_region = cfg.region } }
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

function Client:associateCustomDomain(input, options)
    return self:invokeOperation(input, {
        name = "AssociateCustomDomain",
        input_schema = types.AssociateCustomDomainInput,
        output_schema = types.AssociateCustomDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutoScalingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutoScalingConfiguration",
        input_schema = types.CreateAutoScalingConfigurationInput,
        output_schema = types.CreateAutoScalingConfigurationOutput,
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

function Client:createObservabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateObservabilityConfiguration",
        input_schema = types.CreateObservabilityConfigurationInput,
        output_schema = types.CreateObservabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = types.CreateServiceInput,
        output_schema = types.CreateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcConnector",
        input_schema = types.CreateVpcConnectorInput,
        output_schema = types.CreateVpcConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcIngressConnection(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcIngressConnection",
        input_schema = types.CreateVpcIngressConnectionInput,
        output_schema = types.CreateVpcIngressConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAutoScalingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAutoScalingConfiguration",
        input_schema = types.DeleteAutoScalingConfigurationInput,
        output_schema = types.DeleteAutoScalingConfigurationOutput,
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

function Client:deleteObservabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteObservabilityConfiguration",
        input_schema = types.DeleteObservabilityConfigurationInput,
        output_schema = types.DeleteObservabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = types.DeleteServiceInput,
        output_schema = types.DeleteServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcConnector",
        input_schema = types.DeleteVpcConnectorInput,
        output_schema = types.DeleteVpcConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcIngressConnection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcIngressConnection",
        input_schema = types.DeleteVpcIngressConnectionInput,
        output_schema = types.DeleteVpcIngressConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoScalingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoScalingConfiguration",
        input_schema = types.DescribeAutoScalingConfigurationInput,
        output_schema = types.DescribeAutoScalingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomDomains",
        input_schema = types.DescribeCustomDomainsInput,
        output_schema = types.DescribeCustomDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeObservabilityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeObservabilityConfiguration",
        input_schema = types.DescribeObservabilityConfigurationInput,
        output_schema = types.DescribeObservabilityConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeService(input, options)
    return self:invokeOperation(input, {
        name = "DescribeService",
        input_schema = types.DescribeServiceInput,
        output_schema = types.DescribeServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcConnector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcConnector",
        input_schema = types.DescribeVpcConnectorInput,
        output_schema = types.DescribeVpcConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVpcIngressConnection(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVpcIngressConnection",
        input_schema = types.DescribeVpcIngressConnectionInput,
        output_schema = types.DescribeVpcIngressConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateCustomDomain(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateCustomDomain",
        input_schema = types.DisassociateCustomDomainInput,
        output_schema = types.DisassociateCustomDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutoScalingConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListAutoScalingConfigurations",
        input_schema = types.ListAutoScalingConfigurationsInput,
        output_schema = types.ListAutoScalingConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListConnections",
        input_schema = types.ListConnectionsInput,
        output_schema = types.ListConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listObservabilityConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListObservabilityConfigurations",
        input_schema = types.ListObservabilityConfigurationsInput,
        output_schema = types.ListObservabilityConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListOperations",
        input_schema = types.ListOperationsInput,
        output_schema = types.ListOperationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServicesForAutoScalingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ListServicesForAutoScalingConfiguration",
        input_schema = types.ListServicesForAutoScalingConfigurationInput,
        output_schema = types.ListServicesForAutoScalingConfigurationOutput,
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

function Client:listVpcConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcConnectors",
        input_schema = types.ListVpcConnectorsInput,
        output_schema = types.ListVpcConnectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVpcIngressConnections(input, options)
    return self:invokeOperation(input, {
        name = "ListVpcIngressConnections",
        input_schema = types.ListVpcIngressConnectionsInput,
        output_schema = types.ListVpcIngressConnectionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pauseService(input, options)
    return self:invokeOperation(input, {
        name = "PauseService",
        input_schema = types.PauseServiceInput,
        output_schema = types.PauseServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeService(input, options)
    return self:invokeOperation(input, {
        name = "ResumeService",
        input_schema = types.ResumeServiceInput,
        output_schema = types.ResumeServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StartDeployment",
        input_schema = types.StartDeploymentInput,
        output_schema = types.StartDeploymentOutput,
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

function Client:updateDefaultAutoScalingConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDefaultAutoScalingConfiguration",
        input_schema = types.UpdateDefaultAutoScalingConfigurationInput,
        output_schema = types.UpdateDefaultAutoScalingConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = types.UpdateServiceInput,
        output_schema = types.UpdateServiceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcIngressConnection(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcIngressConnection",
        input_schema = types.UpdateVpcIngressConnectionInput,
        output_schema = types.UpdateVpcIngressConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
