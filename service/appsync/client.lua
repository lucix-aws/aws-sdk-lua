local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("appsync.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("appsync.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSDeepdishControlPlaneService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "appsync", signing_region = cfg.region } }
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

function Client:associateApi(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApi",
        input_schema = types.AssociateApiInput,
        output_schema = types.AssociateApiOutput,
        http_method = "POST",
        http_path = "/v1/domainnames/{domainName}/apiassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMergedGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMergedGraphqlApi",
        input_schema = types.AssociateMergedGraphqlApiInput,
        output_schema = types.AssociateMergedGraphqlApiOutput,
        http_method = "POST",
        http_path = "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSourceGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSourceGraphqlApi",
        input_schema = types.AssociateSourceGraphqlApiInput,
        output_schema = types.AssociateSourceGraphqlApiOutput,
        http_method = "POST",
        http_path = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApi(input, options)
    return self:invokeOperation(input, {
        name = "CreateApi",
        input_schema = types.CreateApiInput,
        output_schema = types.CreateApiOutput,
        http_method = "POST",
        http_path = "/v2/apis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApiCache(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiCache",
        input_schema = types.CreateApiCacheInput,
        output_schema = types.CreateApiCacheOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/ApiCaches",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApiKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiKey",
        input_schema = types.CreateApiKeyInput,
        output_schema = types.CreateApiKeyOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/apikeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createChannelNamespace(input, options)
    return self:invokeOperation(input, {
        name = "CreateChannelNamespace",
        input_schema = types.CreateChannelNamespaceInput,
        output_schema = types.CreateChannelNamespaceOutput,
        http_method = "POST",
        http_path = "/v2/apis/{apiId}/channelNamespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataSource(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataSource",
        input_schema = types.CreateDataSourceInput,
        output_schema = types.CreateDataSourceOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/datasources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainName(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainName",
        input_schema = types.CreateDomainNameInput,
        output_schema = types.CreateDomainNameOutput,
        http_method = "POST",
        http_path = "/v1/domainnames",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFunction(input, options)
    return self:invokeOperation(input, {
        name = "CreateFunction",
        input_schema = types.CreateFunctionInput,
        output_schema = types.CreateFunctionOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "CreateGraphqlApi",
        input_schema = types.CreateGraphqlApiInput,
        output_schema = types.CreateGraphqlApiOutput,
        http_method = "POST",
        http_path = "/v1/apis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResolver(input, options)
    return self:invokeOperation(input, {
        name = "CreateResolver",
        input_schema = types.CreateResolverInput,
        output_schema = types.CreateResolverOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createType(input, options)
    return self:invokeOperation(input, {
        name = "CreateType",
        input_schema = types.CreateTypeInput,
        output_schema = types.CreateTypeOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApi",
        input_schema = types.DeleteApiInput,
        output_schema = types.DeleteApiOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{apiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApiCache(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiCache",
        input_schema = types.DeleteApiCacheInput,
        output_schema = types.DeleteApiCacheOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/ApiCaches",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApiKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiKey",
        input_schema = types.DeleteApiKeyInput,
        output_schema = types.DeleteApiKeyOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/apikeys/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteChannelNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteChannelNamespace",
        input_schema = types.DeleteChannelNamespaceInput,
        output_schema = types.DeleteChannelNamespaceOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{apiId}/channelNamespaces/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataSource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataSource",
        input_schema = types.DeleteDataSourceInput,
        output_schema = types.DeleteDataSourceOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/datasources/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainName(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainName",
        input_schema = types.DeleteDomainNameInput,
        output_schema = types.DeleteDomainNameOutput,
        http_method = "DELETE",
        http_path = "/v1/domainnames/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFunction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFunction",
        input_schema = types.DeleteFunctionInput,
        output_schema = types.DeleteFunctionOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/functions/{functionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGraphqlApi",
        input_schema = types.DeleteGraphqlApiInput,
        output_schema = types.DeleteGraphqlApiOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResolver(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResolver",
        input_schema = types.DeleteResolverInput,
        output_schema = types.DeleteResolverOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteType",
        input_schema = types.DeleteTypeInput,
        output_schema = types.DeleteTypeOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/types/{typeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApi(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApi",
        input_schema = types.DisassociateApiInput,
        output_schema = types.DisassociateApiOutput,
        http_method = "DELETE",
        http_path = "/v1/domainnames/{domainName}/apiassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMergedGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMergedGraphqlApi",
        input_schema = types.DisassociateMergedGraphqlApiInput,
        output_schema = types.DisassociateMergedGraphqlApiOutput,
        http_method = "DELETE",
        http_path = "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSourceGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSourceGraphqlApi",
        input_schema = types.DisassociateSourceGraphqlApiInput,
        output_schema = types.DisassociateSourceGraphqlApiOutput,
        http_method = "DELETE",
        http_path = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluateCode(input, options)
    return self:invokeOperation(input, {
        name = "EvaluateCode",
        input_schema = types.EvaluateCodeInput,
        output_schema = types.EvaluateCodeOutput,
        http_method = "POST",
        http_path = "/v1/dataplane-evaluatecode",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluateMappingTemplate(input, options)
    return self:invokeOperation(input, {
        name = "EvaluateMappingTemplate",
        input_schema = types.EvaluateMappingTemplateInput,
        output_schema = types.EvaluateMappingTemplateOutput,
        http_method = "POST",
        http_path = "/v1/dataplane-evaluatetemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:flushApiCache(input, options)
    return self:invokeOperation(input, {
        name = "FlushApiCache",
        input_schema = types.FlushApiCacheInput,
        output_schema = types.FlushApiCacheOutput,
        http_method = "DELETE",
        http_path = "/v1/apis/{apiId}/FlushCache",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApi(input, options)
    return self:invokeOperation(input, {
        name = "GetApi",
        input_schema = types.GetApiInput,
        output_schema = types.GetApiOutput,
        http_method = "GET",
        http_path = "/v2/apis/{apiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetApiAssociation",
        input_schema = types.GetApiAssociationInput,
        output_schema = types.GetApiAssociationOutput,
        http_method = "GET",
        http_path = "/v1/domainnames/{domainName}/apiassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiCache(input, options)
    return self:invokeOperation(input, {
        name = "GetApiCache",
        input_schema = types.GetApiCacheInput,
        output_schema = types.GetApiCacheOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/ApiCaches",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChannelNamespace(input, options)
    return self:invokeOperation(input, {
        name = "GetChannelNamespace",
        input_schema = types.GetChannelNamespaceInput,
        output_schema = types.GetChannelNamespaceOutput,
        http_method = "GET",
        http_path = "/v2/apis/{apiId}/channelNamespaces/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSource(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSource",
        input_schema = types.GetDataSourceInput,
        output_schema = types.GetDataSourceOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/datasources/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDataSourceIntrospection(input, options)
    return self:invokeOperation(input, {
        name = "GetDataSourceIntrospection",
        input_schema = types.GetDataSourceIntrospectionInput,
        output_schema = types.GetDataSourceIntrospectionOutput,
        http_method = "GET",
        http_path = "/v1/datasources/introspections/{introspectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainName(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainName",
        input_schema = types.GetDomainNameInput,
        output_schema = types.GetDomainNameOutput,
        http_method = "GET",
        http_path = "/v1/domainnames/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFunction(input, options)
    return self:invokeOperation(input, {
        name = "GetFunction",
        input_schema = types.GetFunctionInput,
        output_schema = types.GetFunctionOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/functions/{functionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "GetGraphqlApi",
        input_schema = types.GetGraphqlApiInput,
        output_schema = types.GetGraphqlApiOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGraphqlApiEnvironmentVariables(input, options)
    return self:invokeOperation(input, {
        name = "GetGraphqlApiEnvironmentVariables",
        input_schema = types.GetGraphqlApiEnvironmentVariablesInput,
        output_schema = types.GetGraphqlApiEnvironmentVariablesOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/environmentVariables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntrospectionSchema(input, options)
    return self:invokeOperation(input, {
        name = "GetIntrospectionSchema",
        input_schema = types.GetIntrospectionSchemaInput,
        output_schema = types.GetIntrospectionSchemaOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/schema",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResolver(input, options)
    return self:invokeOperation(input, {
        name = "GetResolver",
        input_schema = types.GetResolverInput,
        output_schema = types.GetResolverOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSchemaCreationStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetSchemaCreationStatus",
        input_schema = types.GetSchemaCreationStatusInput,
        output_schema = types.GetSchemaCreationStatusOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/schemacreation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSourceApiAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetSourceApiAssociation",
        input_schema = types.GetSourceApiAssociationInput,
        output_schema = types.GetSourceApiAssociationOutput,
        http_method = "GET",
        http_path = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getType(input, options)
    return self:invokeOperation(input, {
        name = "GetType",
        input_schema = types.GetTypeInput,
        output_schema = types.GetTypeOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/types/{typeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApiKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListApiKeys",
        input_schema = types.ListApiKeysInput,
        output_schema = types.ListApiKeysOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/apikeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApis(input, options)
    return self:invokeOperation(input, {
        name = "ListApis",
        input_schema = types.ListApisInput,
        output_schema = types.ListApisOutput,
        http_method = "GET",
        http_path = "/v2/apis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChannelNamespaces(input, options)
    return self:invokeOperation(input, {
        name = "ListChannelNamespaces",
        input_schema = types.ListChannelNamespacesInput,
        output_schema = types.ListChannelNamespacesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{apiId}/channelNamespaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataSources(input, options)
    return self:invokeOperation(input, {
        name = "ListDataSources",
        input_schema = types.ListDataSourcesInput,
        output_schema = types.ListDataSourcesOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/datasources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainNames",
        input_schema = types.ListDomainNamesInput,
        output_schema = types.ListDomainNamesOutput,
        http_method = "GET",
        http_path = "/v1/domainnames",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListFunctions",
        input_schema = types.ListFunctionsInput,
        output_schema = types.ListFunctionsOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGraphqlApis(input, options)
    return self:invokeOperation(input, {
        name = "ListGraphqlApis",
        input_schema = types.ListGraphqlApisInput,
        output_schema = types.ListGraphqlApisOutput,
        http_method = "GET",
        http_path = "/v1/apis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolvers(input, options)
    return self:invokeOperation(input, {
        name = "ListResolvers",
        input_schema = types.ListResolversInput,
        output_schema = types.ListResolversOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResolversByFunction(input, options)
    return self:invokeOperation(input, {
        name = "ListResolversByFunction",
        input_schema = types.ListResolversByFunctionInput,
        output_schema = types.ListResolversByFunctionOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/functions/{functionId}/resolvers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourceApiAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceApiAssociations",
        input_schema = types.ListSourceApiAssociationsInput,
        output_schema = types.ListSourceApiAssociationsOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/sourceApiAssociations",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListTypes",
        input_schema = types.ListTypesInput,
        output_schema = types.ListTypesOutput,
        http_method = "GET",
        http_path = "/v1/apis/{apiId}/types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTypesByAssociation(input, options)
    return self:invokeOperation(input, {
        name = "ListTypesByAssociation",
        input_schema = types.ListTypesByAssociationInput,
        output_schema = types.ListTypesByAssociationOutput,
        http_method = "GET",
        http_path = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putGraphqlApiEnvironmentVariables(input, options)
    return self:invokeOperation(input, {
        name = "PutGraphqlApiEnvironmentVariables",
        input_schema = types.PutGraphqlApiEnvironmentVariablesInput,
        output_schema = types.PutGraphqlApiEnvironmentVariablesOutput,
        http_method = "PUT",
        http_path = "/v1/apis/{apiId}/environmentVariables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDataSourceIntrospection(input, options)
    return self:invokeOperation(input, {
        name = "StartDataSourceIntrospection",
        input_schema = types.StartDataSourceIntrospectionInput,
        output_schema = types.StartDataSourceIntrospectionOutput,
        http_method = "POST",
        http_path = "/v1/datasources/introspections",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSchemaCreation(input, options)
    return self:invokeOperation(input, {
        name = "StartSchemaCreation",
        input_schema = types.StartSchemaCreationInput,
        output_schema = types.StartSchemaCreationOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/schemacreation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSchemaMerge(input, options)
    return self:invokeOperation(input, {
        name = "StartSchemaMerge",
        input_schema = types.StartSchemaMergeInput,
        output_schema = types.StartSchemaMergeOutput,
        http_method = "POST",
        http_path = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge",
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
        http_path = "/v1/tags/{resourceArn}",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApi(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApi",
        input_schema = types.UpdateApiInput,
        output_schema = types.UpdateApiOutput,
        http_method = "POST",
        http_path = "/v2/apis/{apiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApiCache(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiCache",
        input_schema = types.UpdateApiCacheInput,
        output_schema = types.UpdateApiCacheOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/ApiCaches/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApiKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiKey",
        input_schema = types.UpdateApiKeyInput,
        output_schema = types.UpdateApiKeyOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/apikeys/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateChannelNamespace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateChannelNamespace",
        input_schema = types.UpdateChannelNamespaceInput,
        output_schema = types.UpdateChannelNamespaceOutput,
        http_method = "POST",
        http_path = "/v2/apis/{apiId}/channelNamespaces/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataSource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataSource",
        input_schema = types.UpdateDataSourceInput,
        output_schema = types.UpdateDataSourceOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/datasources/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainName",
        input_schema = types.UpdateDomainNameInput,
        output_schema = types.UpdateDomainNameOutput,
        http_method = "POST",
        http_path = "/v1/domainnames/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFunction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFunction",
        input_schema = types.UpdateFunctionInput,
        output_schema = types.UpdateFunctionOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/functions/{functionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGraphqlApi(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGraphqlApi",
        input_schema = types.UpdateGraphqlApiInput,
        output_schema = types.UpdateGraphqlApiOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResolver(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolver",
        input_schema = types.UpdateResolverInput,
        output_schema = types.UpdateResolverOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSourceApiAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSourceApiAssociation",
        input_schema = types.UpdateSourceApiAssociationInput,
        output_schema = types.UpdateSourceApiAssociationOutput,
        http_method = "POST",
        http_path = "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateType",
        input_schema = types.UpdateTypeInput,
        output_schema = types.UpdateTypeOutput,
        http_method = "POST",
        http_path = "/v1/apis/{apiId}/types/{typeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
