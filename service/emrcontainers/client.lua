local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("emrcontainers.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("emrcontainers.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsChicagoWebService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "emr-containers", signing_region = cfg.region } }
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

function Client:cancelJobRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelJobRun",
        input_schema = schemas.CancelJobRunInput,
        output_schema = schemas.CancelJobRunOutput,
        http_method = "DELETE",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobTemplate",
        input_schema = schemas.CreateJobTemplateInput,
        output_schema = schemas.CreateJobTemplateOutput,
        http_method = "POST",
        http_path = "/jobtemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createManagedEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateManagedEndpoint",
        input_schema = schemas.CreateManagedEndpointInput,
        output_schema = schemas.CreateManagedEndpointOutput,
        http_method = "POST",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityConfiguration",
        input_schema = schemas.CreateSecurityConfigurationInput,
        output_schema = schemas.CreateSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/securityconfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVirtualCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualCluster",
        input_schema = schemas.CreateVirtualClusterInput,
        output_schema = schemas.CreateVirtualClusterOutput,
        http_method = "POST",
        http_path = "/virtualclusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTemplate",
        input_schema = schemas.DeleteJobTemplateInput,
        output_schema = schemas.DeleteJobTemplateOutput,
        http_method = "DELETE",
        http_path = "/jobtemplates/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteManagedEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteManagedEndpoint",
        input_schema = schemas.DeleteManagedEndpointInput,
        output_schema = schemas.DeleteManagedEndpointOutput,
        http_method = "DELETE",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVirtualCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualCluster",
        input_schema = schemas.DeleteVirtualClusterInput,
        output_schema = schemas.DeleteVirtualClusterOutput,
        http_method = "DELETE",
        http_path = "/virtualclusters/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobRun",
        input_schema = schemas.DescribeJobRunInput,
        output_schema = schemas.DescribeJobRunOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobTemplate",
        input_schema = schemas.DescribeJobTemplateInput,
        output_schema = schemas.DescribeJobTemplateOutput,
        http_method = "GET",
        http_path = "/jobtemplates/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeManagedEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedEndpoint",
        input_schema = schemas.DescribeManagedEndpointInput,
        output_schema = schemas.DescribeManagedEndpointOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityConfiguration",
        input_schema = schemas.DescribeSecurityConfigurationInput,
        output_schema = schemas.DescribeSecurityConfigurationOutput,
        http_method = "GET",
        http_path = "/securityconfigurations/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVirtualCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualCluster",
        input_schema = schemas.DescribeVirtualClusterInput,
        output_schema = schemas.DescribeVirtualClusterOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getManagedEndpointSessionCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedEndpointSessionCredentials",
        input_schema = schemas.GetManagedEndpointSessionCredentialsInput,
        output_schema = schemas.GetManagedEndpointSessionCredentialsOutput,
        http_method = "POST",
        http_path = "/virtualclusters/{virtualClusterIdentifier}/endpoints/{endpointIdentifier}/credentials",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = schemas.ListJobRunsInput,
        output_schema = schemas.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListJobTemplates",
        input_schema = schemas.ListJobTemplatesInput,
        output_schema = schemas.ListJobTemplatesOutput,
        http_method = "GET",
        http_path = "/jobtemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listManagedEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedEndpoints",
        input_schema = schemas.ListManagedEndpointsInput,
        output_schema = schemas.ListManagedEndpointsOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityConfigurations",
        input_schema = schemas.ListSecurityConfigurationsInput,
        output_schema = schemas.ListSecurityConfigurationsOutput,
        http_method = "GET",
        http_path = "/securityconfigurations",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVirtualClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualClusters",
        input_schema = schemas.ListVirtualClustersInput,
        output_schema = schemas.ListVirtualClustersOutput,
        http_method = "GET",
        http_path = "/virtualclusters",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = schemas.StartJobRunInput,
        output_schema = schemas.StartJobRunOutput,
        http_method = "POST",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns",
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
        http_path = "/tags/{resourceArn}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
