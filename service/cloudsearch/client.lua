local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("cloudsearch.endpoint_rules")
local query_protocol = require("smithy.protocol.query")
local schemas = require("cloudsearch.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "A9SearchCloudConfigService2013"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "cloudsearch", signing_region = cfg.region } }
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

function Client:buildSuggesters(input, options)
    return self:invokeOperation(input, {
        name = "BuildSuggesters",
        input_schema = schemas.BuildSuggestersInput,
        output_schema = schemas.BuildSuggestersOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:defineAnalysisScheme(input, options)
    return self:invokeOperation(input, {
        name = "DefineAnalysisScheme",
        input_schema = schemas.DefineAnalysisSchemeInput,
        output_schema = schemas.DefineAnalysisSchemeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:defineExpression(input, options)
    return self:invokeOperation(input, {
        name = "DefineExpression",
        input_schema = schemas.DefineExpressionInput,
        output_schema = schemas.DefineExpressionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:defineIndexField(input, options)
    return self:invokeOperation(input, {
        name = "DefineIndexField",
        input_schema = schemas.DefineIndexFieldInput,
        output_schema = schemas.DefineIndexFieldOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:defineSuggester(input, options)
    return self:invokeOperation(input, {
        name = "DefineSuggester",
        input_schema = schemas.DefineSuggesterInput,
        output_schema = schemas.DefineSuggesterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAnalysisScheme(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAnalysisScheme",
        input_schema = schemas.DeleteAnalysisSchemeInput,
        output_schema = schemas.DeleteAnalysisSchemeOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExpression(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExpression",
        input_schema = schemas.DeleteExpressionInput,
        output_schema = schemas.DeleteExpressionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIndexField(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIndexField",
        input_schema = schemas.DeleteIndexFieldInput,
        output_schema = schemas.DeleteIndexFieldOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSuggester(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSuggester",
        input_schema = schemas.DeleteSuggesterInput,
        output_schema = schemas.DeleteSuggesterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAnalysisSchemes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAnalysisSchemes",
        input_schema = schemas.DescribeAnalysisSchemesInput,
        output_schema = schemas.DescribeAnalysisSchemesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAvailabilityOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAvailabilityOptions",
        input_schema = schemas.DescribeAvailabilityOptionsInput,
        output_schema = schemas.DescribeAvailabilityOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomainEndpointOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomainEndpointOptions",
        input_schema = schemas.DescribeDomainEndpointOptionsInput,
        output_schema = schemas.DescribeDomainEndpointOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomains(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomains",
        input_schema = schemas.DescribeDomainsInput,
        output_schema = schemas.DescribeDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExpressions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExpressions",
        input_schema = schemas.DescribeExpressionsInput,
        output_schema = schemas.DescribeExpressionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIndexFields(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIndexFields",
        input_schema = schemas.DescribeIndexFieldsInput,
        output_schema = schemas.DescribeIndexFieldsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScalingParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScalingParameters",
        input_schema = schemas.DescribeScalingParametersInput,
        output_schema = schemas.DescribeScalingParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceAccessPolicies",
        input_schema = schemas.DescribeServiceAccessPoliciesInput,
        output_schema = schemas.DescribeServiceAccessPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSuggesters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSuggesters",
        input_schema = schemas.DescribeSuggestersInput,
        output_schema = schemas.DescribeSuggestersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:indexDocuments(input, options)
    return self:invokeOperation(input, {
        name = "IndexDocuments",
        input_schema = schemas.IndexDocumentsInput,
        output_schema = schemas.IndexDocumentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainNames",
        input_schema = schemas.ListDomainNamesInput,
        output_schema = schemas.ListDomainNamesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAvailabilityOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAvailabilityOptions",
        input_schema = schemas.UpdateAvailabilityOptionsInput,
        output_schema = schemas.UpdateAvailabilityOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainEndpointOptions(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainEndpointOptions",
        input_schema = schemas.UpdateDomainEndpointOptionsInput,
        output_schema = schemas.UpdateDomainEndpointOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateScalingParameters(input, options)
    return self:invokeOperation(input, {
        name = "UpdateScalingParameters",
        input_schema = schemas.UpdateScalingParametersInput,
        output_schema = schemas.UpdateScalingParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceAccessPolicies(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceAccessPolicies",
        input_schema = schemas.UpdateServiceAccessPoliciesInput,
        output_schema = schemas.UpdateServiceAccessPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
