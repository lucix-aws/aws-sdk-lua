local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("apigateway.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("apigateway.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "BackplaneControlService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "apigateway", signing_region = cfg.region } }
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

function Client:createApiKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiKey",
        input_schema = schemas.CreateApiKeyInput,
        output_schema = schemas.CreateApiKeyOutput,
        http_method = "POST",
        http_path = "/apikeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuthorizer",
        input_schema = schemas.CreateAuthorizerInput,
        output_schema = schemas.CreateAuthorizerOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/authorizers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateBasePathMapping",
        input_schema = schemas.CreateBasePathMappingInput,
        output_schema = schemas.CreateBasePathMappingOutput,
        http_method = "POST",
        http_path = "/domainnames/{domainName}/basepathmappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = schemas.CreateDeploymentInput,
        output_schema = schemas.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocumentationPart",
        input_schema = schemas.CreateDocumentationPartInput,
        output_schema = schemas.CreateDocumentationPartOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/documentation/parts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocumentationVersion",
        input_schema = schemas.CreateDocumentationVersionInput,
        output_schema = schemas.CreateDocumentationVersionOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/documentation/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainName(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainName",
        input_schema = schemas.CreateDomainNameInput,
        output_schema = schemas.CreateDomainNameOutput,
        http_method = "POST",
        http_path = "/domainnames",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomainNameAccessAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainNameAccessAssociation",
        input_schema = schemas.CreateDomainNameAccessAssociationInput,
        output_schema = schemas.CreateDomainNameAccessAssociationOutput,
        http_method = "POST",
        http_path = "/domainnameaccessassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = schemas.CreateModelInput,
        output_schema = schemas.CreateModelOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "CreateRequestValidator",
        input_schema = schemas.CreateRequestValidatorInput,
        output_schema = schemas.CreateRequestValidatorOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/requestvalidators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateResource",
        input_schema = schemas.CreateResourceInput,
        output_schema = schemas.CreateResourceOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/resources/{parentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRestApi(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestApi",
        input_schema = schemas.CreateRestApiInput,
        output_schema = schemas.CreateRestApiOutput,
        http_method = "POST",
        http_path = "/restapis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStage(input, options)
    return self:invokeOperation(input, {
        name = "CreateStage",
        input_schema = schemas.CreateStageInput,
        output_schema = schemas.CreateStageOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/stages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsagePlan",
        input_schema = schemas.CreateUsagePlanInput,
        output_schema = schemas.CreateUsagePlanOutput,
        http_method = "POST",
        http_path = "/usageplans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUsagePlanKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsagePlanKey",
        input_schema = schemas.CreateUsagePlanKeyInput,
        output_schema = schemas.CreateUsagePlanKeyOutput,
        http_method = "POST",
        http_path = "/usageplans/{usagePlanId}/keys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcLink",
        input_schema = schemas.CreateVpcLinkInput,
        output_schema = schemas.CreateVpcLinkOutput,
        http_method = "POST",
        http_path = "/vpclinks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApiKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiKey",
        input_schema = schemas.DeleteApiKeyInput,
        output_schema = schemas.DeleteApiKeyOutput,
        http_method = "DELETE",
        http_path = "/apikeys/{apiKey}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthorizer",
        input_schema = schemas.DeleteAuthorizerInput,
        output_schema = schemas.DeleteAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBasePathMapping",
        input_schema = schemas.DeleteBasePathMappingInput,
        output_schema = schemas.DeleteBasePathMappingOutput,
        http_method = "DELETE",
        http_path = "/domainnames/{domainName}/basepathmappings/{basePath}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClientCertificate",
        input_schema = schemas.DeleteClientCertificateInput,
        output_schema = schemas.DeleteClientCertificateOutput,
        http_method = "DELETE",
        http_path = "/clientcertificates/{clientCertificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = schemas.DeleteDeploymentInput,
        output_schema = schemas.DeleteDeploymentOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/deployments/{deploymentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentationPart",
        input_schema = schemas.DeleteDocumentationPartInput,
        output_schema = schemas.DeleteDocumentationPartOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/documentation/parts/{documentationPartId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentationVersion",
        input_schema = schemas.DeleteDocumentationVersionInput,
        output_schema = schemas.DeleteDocumentationVersionOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/documentation/versions/{documentationVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainName(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainName",
        input_schema = schemas.DeleteDomainNameInput,
        output_schema = schemas.DeleteDomainNameOutput,
        http_method = "DELETE",
        http_path = "/domainnames/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomainNameAccessAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainNameAccessAssociation",
        input_schema = schemas.DeleteDomainNameAccessAssociationInput,
        output_schema = schemas.DeleteDomainNameAccessAssociationOutput,
        http_method = "DELETE",
        http_path = "/domainnameaccessassociations/{domainNameAccessAssociationArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGatewayResponse",
        input_schema = schemas.DeleteGatewayResponseInput,
        output_schema = schemas.DeleteGatewayResponseOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = schemas.DeleteIntegrationInput,
        output_schema = schemas.DeleteIntegrationOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegrationResponse",
        input_schema = schemas.DeleteIntegrationResponseInput,
        output_schema = schemas.DeleteIntegrationResponseOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMethod(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMethod",
        input_schema = schemas.DeleteMethodInput,
        output_schema = schemas.DeleteMethodOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMethodResponse",
        input_schema = schemas.DeleteMethodResponseInput,
        output_schema = schemas.DeleteMethodResponseOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = schemas.DeleteModelInput,
        output_schema = schemas.DeleteModelOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/models/{modelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRequestValidator",
        input_schema = schemas.DeleteRequestValidatorInput,
        output_schema = schemas.DeleteRequestValidatorOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/requestvalidators/{requestValidatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResource",
        input_schema = schemas.DeleteResourceInput,
        output_schema = schemas.DeleteResourceOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRestApi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRestApi",
        input_schema = schemas.DeleteRestApiInput,
        output_schema = schemas.DeleteRestApiOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStage",
        input_schema = schemas.DeleteStageInput,
        output_schema = schemas.DeleteStageOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/stages/{stageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsagePlan",
        input_schema = schemas.DeleteUsagePlanInput,
        output_schema = schemas.DeleteUsagePlanOutput,
        http_method = "DELETE",
        http_path = "/usageplans/{usagePlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUsagePlanKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsagePlanKey",
        input_schema = schemas.DeleteUsagePlanKeyInput,
        output_schema = schemas.DeleteUsagePlanKeyOutput,
        http_method = "DELETE",
        http_path = "/usageplans/{usagePlanId}/keys/{keyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcLink",
        input_schema = schemas.DeleteVpcLinkInput,
        output_schema = schemas.DeleteVpcLinkOutput,
        http_method = "DELETE",
        http_path = "/vpclinks/{vpcLinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:flushStageAuthorizersCache(input, options)
    return self:invokeOperation(input, {
        name = "FlushStageAuthorizersCache",
        input_schema = schemas.FlushStageAuthorizersCacheInput,
        output_schema = schemas.FlushStageAuthorizersCacheOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/stages/{stageName}/cache/authorizers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:flushStageCache(input, options)
    return self:invokeOperation(input, {
        name = "FlushStageCache",
        input_schema = schemas.FlushStageCacheInput,
        output_schema = schemas.FlushStageCacheOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/stages/{stageName}/cache/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GenerateClientCertificate",
        input_schema = schemas.GenerateClientCertificateInput,
        output_schema = schemas.GenerateClientCertificateOutput,
        http_method = "POST",
        http_path = "/clientcertificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAccount",
        input_schema = schemas.GetAccountInput,
        output_schema = schemas.GetAccountOutput,
        http_method = "GET",
        http_path = "/account",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiKey(input, options)
    return self:invokeOperation(input, {
        name = "GetApiKey",
        input_schema = schemas.GetApiKeyInput,
        output_schema = schemas.GetApiKeyOutput,
        http_method = "GET",
        http_path = "/apikeys/{apiKey}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetApiKeys",
        input_schema = schemas.GetApiKeysInput,
        output_schema = schemas.GetApiKeysOutput,
        http_method = "GET",
        http_path = "/apikeys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizer",
        input_schema = schemas.GetAuthorizerInput,
        output_schema = schemas.GetAuthorizerOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAuthorizers(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizers",
        input_schema = schemas.GetAuthorizersInput,
        output_schema = schemas.GetAuthorizersOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/authorizers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetBasePathMapping",
        input_schema = schemas.GetBasePathMappingInput,
        output_schema = schemas.GetBasePathMappingOutput,
        http_method = "GET",
        http_path = "/domainnames/{domainName}/basepathmappings/{basePath}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBasePathMappings(input, options)
    return self:invokeOperation(input, {
        name = "GetBasePathMappings",
        input_schema = schemas.GetBasePathMappingsInput,
        output_schema = schemas.GetBasePathMappingsOutput,
        http_method = "GET",
        http_path = "/domainnames/{domainName}/basepathmappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetClientCertificate",
        input_schema = schemas.GetClientCertificateInput,
        output_schema = schemas.GetClientCertificateOutput,
        http_method = "GET",
        http_path = "/clientcertificates/{clientCertificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClientCertificates(input, options)
    return self:invokeOperation(input, {
        name = "GetClientCertificates",
        input_schema = schemas.GetClientCertificatesInput,
        output_schema = schemas.GetClientCertificatesOutput,
        http_method = "GET",
        http_path = "/clientcertificates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = schemas.GetDeploymentInput,
        output_schema = schemas.GetDeploymentOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/deployments/{deploymentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployments(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployments",
        input_schema = schemas.GetDeploymentsInput,
        output_schema = schemas.GetDeploymentsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/deployments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationPart",
        input_schema = schemas.GetDocumentationPartInput,
        output_schema = schemas.GetDocumentationPartOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/parts/{documentationPartId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentationParts(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationParts",
        input_schema = schemas.GetDocumentationPartsInput,
        output_schema = schemas.GetDocumentationPartsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/parts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationVersion",
        input_schema = schemas.GetDocumentationVersionInput,
        output_schema = schemas.GetDocumentationVersionOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/versions/{documentationVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDocumentationVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationVersions",
        input_schema = schemas.GetDocumentationVersionsInput,
        output_schema = schemas.GetDocumentationVersionsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainName(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainName",
        input_schema = schemas.GetDomainNameInput,
        output_schema = schemas.GetDomainNameOutput,
        http_method = "GET",
        http_path = "/domainnames/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainNameAccessAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainNameAccessAssociations",
        input_schema = schemas.GetDomainNameAccessAssociationsInput,
        output_schema = schemas.GetDomainNameAccessAssociationsOutput,
        http_method = "GET",
        http_path = "/domainnameaccessassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainNames",
        input_schema = schemas.GetDomainNamesInput,
        output_schema = schemas.GetDomainNamesOutput,
        http_method = "GET",
        http_path = "/domainnames",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExport(input, options)
    return self:invokeOperation(input, {
        name = "GetExport",
        input_schema = schemas.GetExportInput,
        output_schema = schemas.GetExportOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages/{stageName}/exports/{exportType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetGatewayResponse",
        input_schema = schemas.GetGatewayResponseInput,
        output_schema = schemas.GetGatewayResponseOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGatewayResponses(input, options)
    return self:invokeOperation(input, {
        name = "GetGatewayResponses",
        input_schema = schemas.GetGatewayResponsesInput,
        output_schema = schemas.GetGatewayResponsesOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/gatewayresponses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegration",
        input_schema = schemas.GetIntegrationInput,
        output_schema = schemas.GetIntegrationOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationResponse",
        input_schema = schemas.GetIntegrationResponseInput,
        output_schema = schemas.GetIntegrationResponseOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMethod(input, options)
    return self:invokeOperation(input, {
        name = "GetMethod",
        input_schema = schemas.GetMethodInput,
        output_schema = schemas.GetMethodOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetMethodResponse",
        input_schema = schemas.GetMethodResponseInput,
        output_schema = schemas.GetMethodResponseOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getModel(input, options)
    return self:invokeOperation(input, {
        name = "GetModel",
        input_schema = schemas.GetModelInput,
        output_schema = schemas.GetModelOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/models/{modelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getModels(input, options)
    return self:invokeOperation(input, {
        name = "GetModels",
        input_schema = schemas.GetModelsInput,
        output_schema = schemas.GetModelsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getModelTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetModelTemplate",
        input_schema = schemas.GetModelTemplateInput,
        output_schema = schemas.GetModelTemplateOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/models/{modelName}/default_template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "GetRequestValidator",
        input_schema = schemas.GetRequestValidatorInput,
        output_schema = schemas.GetRequestValidatorOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/requestvalidators/{requestValidatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRequestValidators(input, options)
    return self:invokeOperation(input, {
        name = "GetRequestValidators",
        input_schema = schemas.GetRequestValidatorsInput,
        output_schema = schemas.GetRequestValidatorsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/requestvalidators",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResource(input, options)
    return self:invokeOperation(input, {
        name = "GetResource",
        input_schema = schemas.GetResourceInput,
        output_schema = schemas.GetResourceOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResources(input, options)
    return self:invokeOperation(input, {
        name = "GetResources",
        input_schema = schemas.GetResourcesInput,
        output_schema = schemas.GetResourcesOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRestApi(input, options)
    return self:invokeOperation(input, {
        name = "GetRestApi",
        input_schema = schemas.GetRestApiInput,
        output_schema = schemas.GetRestApiOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRestApis(input, options)
    return self:invokeOperation(input, {
        name = "GetRestApis",
        input_schema = schemas.GetRestApisInput,
        output_schema = schemas.GetRestApisOutput,
        http_method = "GET",
        http_path = "/restapis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSdk(input, options)
    return self:invokeOperation(input, {
        name = "GetSdk",
        input_schema = schemas.GetSdkInput,
        output_schema = schemas.GetSdkOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages/{stageName}/sdks/{sdkType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSdkType(input, options)
    return self:invokeOperation(input, {
        name = "GetSdkType",
        input_schema = schemas.GetSdkTypeInput,
        output_schema = schemas.GetSdkTypeOutput,
        http_method = "GET",
        http_path = "/sdktypes/{id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSdkTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetSdkTypes",
        input_schema = schemas.GetSdkTypesInput,
        output_schema = schemas.GetSdkTypesOutput,
        http_method = "GET",
        http_path = "/sdktypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStage(input, options)
    return self:invokeOperation(input, {
        name = "GetStage",
        input_schema = schemas.GetStageInput,
        output_schema = schemas.GetStageOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages/{stageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStages(input, options)
    return self:invokeOperation(input, {
        name = "GetStages",
        input_schema = schemas.GetStagesInput,
        output_schema = schemas.GetStagesOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTags(input, options)
    return self:invokeOperation(input, {
        name = "GetTags",
        input_schema = schemas.GetTagsInput,
        output_schema = schemas.GetTagsOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetUsage",
        input_schema = schemas.GetUsageInput,
        output_schema = schemas.GetUsageOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}/usage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlan",
        input_schema = schemas.GetUsagePlanInput,
        output_schema = schemas.GetUsagePlanOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsagePlanKey(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlanKey",
        input_schema = schemas.GetUsagePlanKeyInput,
        output_schema = schemas.GetUsagePlanKeyOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}/keys/{keyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsagePlanKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlanKeys",
        input_schema = schemas.GetUsagePlanKeysInput,
        output_schema = schemas.GetUsagePlanKeysOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}/keys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUsagePlans(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlans",
        input_schema = schemas.GetUsagePlansInput,
        output_schema = schemas.GetUsagePlansOutput,
        http_method = "GET",
        http_path = "/usageplans",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcLink",
        input_schema = schemas.GetVpcLinkInput,
        output_schema = schemas.GetVpcLinkOutput,
        http_method = "GET",
        http_path = "/vpclinks/{vpcLinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getVpcLinks(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcLinks",
        input_schema = schemas.GetVpcLinksInput,
        output_schema = schemas.GetVpcLinksOutput,
        http_method = "GET",
        http_path = "/vpclinks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importApiKeys(input, options)
    return self:invokeOperation(input, {
        name = "ImportApiKeys",
        input_schema = schemas.ImportApiKeysInput,
        output_schema = schemas.ImportApiKeysOutput,
        http_method = "POST",
        http_path = "/apikeys?mode=import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importDocumentationParts(input, options)
    return self:invokeOperation(input, {
        name = "ImportDocumentationParts",
        input_schema = schemas.ImportDocumentationPartsInput,
        output_schema = schemas.ImportDocumentationPartsOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/documentation/parts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importRestApi(input, options)
    return self:invokeOperation(input, {
        name = "ImportRestApi",
        input_schema = schemas.ImportRestApiInput,
        output_schema = schemas.ImportRestApiOutput,
        http_method = "POST",
        http_path = "/restapis?mode=import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "PutGatewayResponse",
        input_schema = schemas.PutGatewayResponseInput,
        output_schema = schemas.PutGatewayResponseOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putIntegration(input, options)
    return self:invokeOperation(input, {
        name = "PutIntegration",
        input_schema = schemas.PutIntegrationInput,
        output_schema = schemas.PutIntegrationOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "PutIntegrationResponse",
        input_schema = schemas.PutIntegrationResponseInput,
        output_schema = schemas.PutIntegrationResponseOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMethod(input, options)
    return self:invokeOperation(input, {
        name = "PutMethod",
        input_schema = schemas.PutMethodInput,
        output_schema = schemas.PutMethodOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "PutMethodResponse",
        input_schema = schemas.PutMethodResponseInput,
        output_schema = schemas.PutMethodResponseOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRestApi(input, options)
    return self:invokeOperation(input, {
        name = "PutRestApi",
        input_schema = schemas.PutRestApiInput,
        output_schema = schemas.PutRestApiOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectDomainNameAccessAssociation(input, options)
    return self:invokeOperation(input, {
        name = "RejectDomainNameAccessAssociation",
        input_schema = schemas.RejectDomainNameAccessAssociationInput,
        output_schema = schemas.RejectDomainNameAccessAssociationOutput,
        http_method = "POST",
        http_path = "/rejectdomainnameaccessassociations",
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
        http_method = "PUT",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testInvokeAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "TestInvokeAuthorizer",
        input_schema = schemas.TestInvokeAuthorizerInput,
        output_schema = schemas.TestInvokeAuthorizerOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testInvokeMethod(input, options)
    return self:invokeOperation(input, {
        name = "TestInvokeMethod",
        input_schema = schemas.TestInvokeMethodInput,
        output_schema = schemas.TestInvokeMethodOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
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

function Client:updateAccount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccount",
        input_schema = schemas.UpdateAccountInput,
        output_schema = schemas.UpdateAccountOutput,
        http_method = "PATCH",
        http_path = "/account",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApiKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiKey",
        input_schema = schemas.UpdateApiKeyInput,
        output_schema = schemas.UpdateApiKeyOutput,
        http_method = "PATCH",
        http_path = "/apikeys/{apiKey}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthorizer",
        input_schema = schemas.UpdateAuthorizerInput,
        output_schema = schemas.UpdateAuthorizerOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBasePathMapping",
        input_schema = schemas.UpdateBasePathMappingInput,
        output_schema = schemas.UpdateBasePathMappingOutput,
        http_method = "PATCH",
        http_path = "/domainnames/{domainName}/basepathmappings/{basePath}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClientCertificate",
        input_schema = schemas.UpdateClientCertificateInput,
        output_schema = schemas.UpdateClientCertificateOutput,
        http_method = "PATCH",
        http_path = "/clientcertificates/{clientCertificateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeployment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeployment",
        input_schema = schemas.UpdateDeploymentInput,
        output_schema = schemas.UpdateDeploymentOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/deployments/{deploymentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentationPart",
        input_schema = schemas.UpdateDocumentationPartInput,
        output_schema = schemas.UpdateDocumentationPartOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/documentation/parts/{documentationPartId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentationVersion",
        input_schema = schemas.UpdateDocumentationVersionInput,
        output_schema = schemas.UpdateDocumentationVersionOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/documentation/versions/{documentationVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomainName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainName",
        input_schema = schemas.UpdateDomainNameInput,
        output_schema = schemas.UpdateDomainNameOutput,
        http_method = "PATCH",
        http_path = "/domainnames/{domainName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayResponse",
        input_schema = schemas.UpdateGatewayResponseInput,
        output_schema = schemas.UpdateGatewayResponseOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegration",
        input_schema = schemas.UpdateIntegrationInput,
        output_schema = schemas.UpdateIntegrationOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegrationResponse",
        input_schema = schemas.UpdateIntegrationResponseInput,
        output_schema = schemas.UpdateIntegrationResponseOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMethod(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMethod",
        input_schema = schemas.UpdateMethodInput,
        output_schema = schemas.UpdateMethodOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMethodResponse",
        input_schema = schemas.UpdateMethodResponseInput,
        output_schema = schemas.UpdateMethodResponseOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = schemas.UpdateModelInput,
        output_schema = schemas.UpdateModelOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/models/{modelName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRequestValidator",
        input_schema = schemas.UpdateRequestValidatorInput,
        output_schema = schemas.UpdateRequestValidatorOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/requestvalidators/{requestValidatorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResource",
        input_schema = schemas.UpdateResourceInput,
        output_schema = schemas.UpdateResourceOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRestApi(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRestApi",
        input_schema = schemas.UpdateRestApiInput,
        output_schema = schemas.UpdateRestApiOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStage",
        input_schema = schemas.UpdateStageInput,
        output_schema = schemas.UpdateStageOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/stages/{stageName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUsage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsage",
        input_schema = schemas.UpdateUsageInput,
        output_schema = schemas.UpdateUsageOutput,
        http_method = "PATCH",
        http_path = "/usageplans/{usagePlanId}/keys/{keyId}/usage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsagePlan",
        input_schema = schemas.UpdateUsagePlanInput,
        output_schema = schemas.UpdateUsagePlanOutput,
        http_method = "PATCH",
        http_path = "/usageplans/{usagePlanId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcLink",
        input_schema = schemas.UpdateVpcLinkInput,
        output_schema = schemas.UpdateVpcLinkOutput,
        http_method = "PATCH",
        http_path = "/vpclinks/{vpcLinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
