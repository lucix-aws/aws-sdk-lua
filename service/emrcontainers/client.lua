local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("emrcontainers.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("emrcontainers.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AwsChicagoWebService"
    cfg.signing_name = "awschicagowebservice"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:cancelJobRun(input, options)
    return self:invokeOperation(input, {
        name = "CancelJobRun",
        input_schema = types.CancelJobRunInput,
        output_schema = types.CancelJobRunOutput,
        http_method = "DELETE",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns/{id}",
    }, options)
end

function Client:createJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateJobTemplate",
        input_schema = types.CreateJobTemplateInput,
        output_schema = types.CreateJobTemplateOutput,
        http_method = "POST",
        http_path = "/jobtemplates",
    }, options)
end

function Client:createManagedEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateManagedEndpoint",
        input_schema = types.CreateManagedEndpointInput,
        output_schema = types.CreateManagedEndpointOutput,
        http_method = "POST",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints",
    }, options)
end

function Client:createSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityConfiguration",
        input_schema = types.CreateSecurityConfigurationInput,
        output_schema = types.CreateSecurityConfigurationOutput,
        http_method = "POST",
        http_path = "/securityconfigurations",
    }, options)
end

function Client:createVirtualCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateVirtualCluster",
        input_schema = types.CreateVirtualClusterInput,
        output_schema = types.CreateVirtualClusterOutput,
        http_method = "POST",
        http_path = "/virtualclusters",
    }, options)
end

function Client:deleteJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteJobTemplate",
        input_schema = types.DeleteJobTemplateInput,
        output_schema = types.DeleteJobTemplateOutput,
        http_method = "DELETE",
        http_path = "/jobtemplates/{id}",
    }, options)
end

function Client:deleteManagedEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteManagedEndpoint",
        input_schema = types.DeleteManagedEndpointInput,
        output_schema = types.DeleteManagedEndpointOutput,
        http_method = "DELETE",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints/{id}",
    }, options)
end

function Client:deleteVirtualCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVirtualCluster",
        input_schema = types.DeleteVirtualClusterInput,
        output_schema = types.DeleteVirtualClusterOutput,
        http_method = "DELETE",
        http_path = "/virtualclusters/{id}",
    }, options)
end

function Client:describeJobRun(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobRun",
        input_schema = types.DescribeJobRunInput,
        output_schema = types.DescribeJobRunOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns/{id}",
    }, options)
end

function Client:describeJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJobTemplate",
        input_schema = types.DescribeJobTemplateInput,
        output_schema = types.DescribeJobTemplateOutput,
        http_method = "GET",
        http_path = "/jobtemplates/{id}",
    }, options)
end

function Client:describeManagedEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeManagedEndpoint",
        input_schema = types.DescribeManagedEndpointInput,
        output_schema = types.DescribeManagedEndpointOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints/{id}",
    }, options)
end

function Client:describeSecurityConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityConfiguration",
        input_schema = types.DescribeSecurityConfigurationInput,
        output_schema = types.DescribeSecurityConfigurationOutput,
        http_method = "GET",
        http_path = "/securityconfigurations/{id}",
    }, options)
end

function Client:describeVirtualCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVirtualCluster",
        input_schema = types.DescribeVirtualClusterInput,
        output_schema = types.DescribeVirtualClusterOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{id}",
    }, options)
end

function Client:getManagedEndpointSessionCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetManagedEndpointSessionCredentials",
        input_schema = types.GetManagedEndpointSessionCredentialsInput,
        output_schema = types.GetManagedEndpointSessionCredentialsOutput,
        http_method = "POST",
        http_path = "/virtualclusters/{virtualClusterIdentifier}/endpoints/{endpointIdentifier}/credentials",
    }, options)
end

function Client:listJobRuns(input, options)
    return self:invokeOperation(input, {
        name = "ListJobRuns",
        input_schema = types.ListJobRunsInput,
        output_schema = types.ListJobRunsOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns",
    }, options)
end

function Client:listJobTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListJobTemplates",
        input_schema = types.ListJobTemplatesInput,
        output_schema = types.ListJobTemplatesOutput,
        http_method = "GET",
        http_path = "/jobtemplates",
    }, options)
end

function Client:listManagedEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListManagedEndpoints",
        input_schema = types.ListManagedEndpointsInput,
        output_schema = types.ListManagedEndpointsOutput,
        http_method = "GET",
        http_path = "/virtualclusters/{virtualClusterId}/endpoints",
    }, options)
end

function Client:listSecurityConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityConfigurations",
        input_schema = types.ListSecurityConfigurationsInput,
        output_schema = types.ListSecurityConfigurationsOutput,
        http_method = "GET",
        http_path = "/securityconfigurations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listVirtualClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListVirtualClusters",
        input_schema = types.ListVirtualClustersInput,
        output_schema = types.ListVirtualClustersOutput,
        http_method = "GET",
        http_path = "/virtualclusters",
    }, options)
end

function Client:startJobRun(input, options)
    return self:invokeOperation(input, {
        name = "StartJobRun",
        input_schema = types.StartJobRunInput,
        output_schema = types.StartJobRunOutput,
        http_method = "POST",
        http_path = "/virtualclusters/{virtualClusterId}/jobruns",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

return M
