local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("cloudsearch.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("cloudsearch.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "A9SearchCloudConfigService2013"
    cfg.signing_name = "cloudsearch"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
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

function Client:buildSuggesters(input, options)
    return self:invokeOperation(input, {
        name = "BuildSuggesters",
        input_schema = types.BuildSuggestersInput,
        output_schema = types.BuildSuggestersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:defineAnalysisScheme(input, options)
    return self:invokeOperation(input, {
        name = "DefineAnalysisScheme",
        input_schema = types.DefineAnalysisSchemeInput,
        output_schema = types.DefineAnalysisSchemeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:defineExpression(input, options)
    return self:invokeOperation(input, {
        name = "DefineExpression",
        input_schema = types.DefineExpressionInput,
        output_schema = types.DefineExpressionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:defineIndexField(input, options)
    return self:invokeOperation(input, {
        name = "DefineIndexField",
        input_schema = types.DefineIndexFieldInput,
        output_schema = types.DefineIndexFieldOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:defineSuggester(input, options)
    return self:invokeOperation(input, {
        name = "DefineSuggester",
        input_schema = types.DefineSuggesterInput,
        output_schema = types.DefineSuggesterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAnalysisScheme(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnalysisScheme",
        input_schema = types.DeleteAnalysisSchemeInput,
        output_schema = types.DeleteAnalysisSchemeOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteExpression(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExpression",
        input_schema = types.DeleteExpressionInput,
        output_schema = types.DeleteExpressionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteIndexField(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndexField",
        input_schema = types.DeleteIndexFieldInput,
        output_schema = types.DeleteIndexFieldOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSuggester(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSuggester",
        input_schema = types.DeleteSuggesterInput,
        output_schema = types.DeleteSuggesterOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAnalysisSchemes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnalysisSchemes",
        input_schema = types.DescribeAnalysisSchemesInput,
        output_schema = types.DescribeAnalysisSchemesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAvailabilityOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAvailabilityOptions",
        input_schema = types.DescribeAvailabilityOptionsInput,
        output_schema = types.DescribeAvailabilityOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDomainEndpointOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainEndpointOptions",
        input_schema = types.DescribeDomainEndpointOptionsInput,
        output_schema = types.DescribeDomainEndpointOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomains",
        input_schema = types.DescribeDomainsInput,
        output_schema = types.DescribeDomainsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExpressions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExpressions",
        input_schema = types.DescribeExpressionsInput,
        output_schema = types.DescribeExpressionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeIndexFields(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIndexFields",
        input_schema = types.DescribeIndexFieldsInput,
        output_schema = types.DescribeIndexFieldsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeScalingParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingParameters",
        input_schema = types.DescribeScalingParametersInput,
        output_schema = types.DescribeScalingParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServiceAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceAccessPolicies",
        input_schema = types.DescribeServiceAccessPoliciesInput,
        output_schema = types.DescribeServiceAccessPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSuggesters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSuggesters",
        input_schema = types.DescribeSuggestersInput,
        output_schema = types.DescribeSuggestersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:indexDocuments(input, options)
    return self:invokeOperation(input, {
        name = "IndexDocuments",
        input_schema = types.IndexDocumentsInput,
        output_schema = types.IndexDocumentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainNames",
        input_schema = types.ListDomainNamesInput,
        output_schema = types.ListDomainNamesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAvailabilityOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAvailabilityOptions",
        input_schema = types.UpdateAvailabilityOptionsInput,
        output_schema = types.UpdateAvailabilityOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDomainEndpointOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainEndpointOptions",
        input_schema = types.UpdateDomainEndpointOptionsInput,
        output_schema = types.UpdateDomainEndpointOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateScalingParameters(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScalingParameters",
        input_schema = types.UpdateScalingParametersInput,
        output_schema = types.UpdateScalingParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceAccessPolicies",
        input_schema = types.UpdateServiceAccessPoliciesInput,
        output_schema = types.UpdateServiceAccessPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
