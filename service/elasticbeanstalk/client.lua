local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("elasticbeanstalk.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("elasticbeanstalk.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSElasticBeanstalkService"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "elasticbeanstalk", signing_region = cfg.region } }
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

function Client:abortEnvironmentUpdate(input, options)
    return self:invokeOperation(input, {
        name = "AbortEnvironmentUpdate",
        input_schema = types.AbortEnvironmentUpdateInput,
        output_schema = types.AbortEnvironmentUpdateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:applyEnvironmentManagedAction(input, options)
    return self:invokeOperation(input, {
        name = "ApplyEnvironmentManagedAction",
        input_schema = types.ApplyEnvironmentManagedActionInput,
        output_schema = types.ApplyEnvironmentManagedActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateEnvironmentOperationsRole(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEnvironmentOperationsRole",
        input_schema = types.AssociateEnvironmentOperationsRoleInput,
        output_schema = types.AssociateEnvironmentOperationsRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:checkDNSAvailability(input, options)
    return self:invokeOperation(input, {
        name = "CheckDNSAvailability",
        input_schema = types.CheckDNSAvailabilityInput,
        output_schema = types.CheckDNSAvailabilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:composeEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ComposeEnvironments",
        input_schema = types.ComposeEnvironmentsInput,
        output_schema = types.ComposeEnvironmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplicationVersion",
        input_schema = types.CreateApplicationVersionInput,
        output_schema = types.CreateApplicationVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateConfigurationTemplate",
        input_schema = types.CreateConfigurationTemplateInput,
        output_schema = types.CreateConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateEnvironment",
        input_schema = types.CreateEnvironmentInput,
        output_schema = types.CreateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPlatformVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePlatformVersion",
        input_schema = types.CreatePlatformVersionInput,
        output_schema = types.CreatePlatformVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStorageLocation(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorageLocation",
        input_schema = types.CreateStorageLocationInput,
        output_schema = types.CreateStorageLocationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplicationVersion",
        input_schema = types.DeleteApplicationVersionInput,
        output_schema = types.DeleteApplicationVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConfigurationTemplate",
        input_schema = types.DeleteConfigurationTemplateInput,
        output_schema = types.DeleteConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEnvironmentConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEnvironmentConfiguration",
        input_schema = types.DeleteEnvironmentConfigurationInput,
        output_schema = types.DeleteEnvironmentConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePlatformVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePlatformVersion",
        input_schema = types.DeletePlatformVersionInput,
        output_schema = types.DeletePlatformVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = types.DescribeAccountAttributesInput,
        output_schema = types.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplications",
        input_schema = types.DescribeApplicationsInput,
        output_schema = types.DescribeApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationVersions",
        input_schema = types.DescribeApplicationVersionsInput,
        output_schema = types.DescribeApplicationVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationOptions",
        input_schema = types.DescribeConfigurationOptionsInput,
        output_schema = types.DescribeConfigurationOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConfigurationSettings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConfigurationSettings",
        input_schema = types.DescribeConfigurationSettingsInput,
        output_schema = types.DescribeConfigurationSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEnvironmentHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironmentHealth",
        input_schema = types.DescribeEnvironmentHealthInput,
        output_schema = types.DescribeEnvironmentHealthOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEnvironmentManagedActionHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironmentManagedActionHistory",
        input_schema = types.DescribeEnvironmentManagedActionHistoryInput,
        output_schema = types.DescribeEnvironmentManagedActionHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEnvironmentManagedActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironmentManagedActions",
        input_schema = types.DescribeEnvironmentManagedActionsInput,
        output_schema = types.DescribeEnvironmentManagedActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEnvironmentResources(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironmentResources",
        input_schema = types.DescribeEnvironmentResourcesInput,
        output_schema = types.DescribeEnvironmentResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEnvironments",
        input_schema = types.DescribeEnvironmentsInput,
        output_schema = types.DescribeEnvironmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstancesHealth(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstancesHealth",
        input_schema = types.DescribeInstancesHealthInput,
        output_schema = types.DescribeInstancesHealthOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePlatformVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribePlatformVersion",
        input_schema = types.DescribePlatformVersionInput,
        output_schema = types.DescribePlatformVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateEnvironmentOperationsRole(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEnvironmentOperationsRole",
        input_schema = types.DisassociateEnvironmentOperationsRoleInput,
        output_schema = types.DisassociateEnvironmentOperationsRoleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableSolutionStacks(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableSolutionStacks",
        input_schema = types.ListAvailableSolutionStacksInput,
        output_schema = types.ListAvailableSolutionStacksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlatformBranches(input, options)
    return self:invokeOperation(input, {
        name = "ListPlatformBranches",
        input_schema = types.ListPlatformBranchesInput,
        output_schema = types.ListPlatformBranchesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPlatformVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPlatformVersions",
        input_schema = types.ListPlatformVersionsInput,
        output_schema = types.ListPlatformVersionsOutput,
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

function Client:rebuildEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "RebuildEnvironment",
        input_schema = types.RebuildEnvironmentInput,
        output_schema = types.RebuildEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:requestEnvironmentInfo(input, options)
    return self:invokeOperation(input, {
        name = "RequestEnvironmentInfo",
        input_schema = types.RequestEnvironmentInfoInput,
        output_schema = types.RequestEnvironmentInfoOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restartAppServer(input, options)
    return self:invokeOperation(input, {
        name = "RestartAppServer",
        input_schema = types.RestartAppServerInput,
        output_schema = types.RestartAppServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retrieveEnvironmentInfo(input, options)
    return self:invokeOperation(input, {
        name = "RetrieveEnvironmentInfo",
        input_schema = types.RetrieveEnvironmentInfoInput,
        output_schema = types.RetrieveEnvironmentInfoOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:swapEnvironmentCNAMEs(input, options)
    return self:invokeOperation(input, {
        name = "SwapEnvironmentCNAMEs",
        input_schema = types.SwapEnvironmentCNAMEsInput,
        output_schema = types.SwapEnvironmentCNAMEsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "TerminateEnvironment",
        input_schema = types.TerminateEnvironmentInput,
        output_schema = types.TerminateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationResourceLifecycle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationResourceLifecycle",
        input_schema = types.UpdateApplicationResourceLifecycleInput,
        output_schema = types.UpdateApplicationResourceLifecycleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplicationVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplicationVersion",
        input_schema = types.UpdateApplicationVersionInput,
        output_schema = types.UpdateApplicationVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConfigurationTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConfigurationTemplate",
        input_schema = types.UpdateConfigurationTemplateInput,
        output_schema = types.UpdateConfigurationTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEnvironment",
        input_schema = types.UpdateEnvironmentInput,
        output_schema = types.UpdateEnvironmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTagsForResource",
        input_schema = types.UpdateTagsForResourceInput,
        output_schema = types.UpdateTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateConfigurationSettings(input, options)
    return self:invokeOperation(input, {
        name = "ValidateConfigurationSettings",
        input_schema = types.ValidateConfigurationSettingsInput,
        output_schema = types.ValidateConfigurationSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
