local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("apigateway.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("apigateway.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "BackplaneControlService"
    cfg.signing_name = "apigateway"
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

function Client:createApiKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiKey",
        input_schema = types.CreateApiKeyInput,
        output_schema = types.CreateApiKeyOutput,
        http_method = "POST",
        http_path = "/apikeys",
    }, options)
end

function Client:createAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuthorizer",
        input_schema = types.CreateAuthorizerInput,
        output_schema = types.CreateAuthorizerOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/authorizers",
    }, options)
end

function Client:createBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateBasePathMapping",
        input_schema = types.CreateBasePathMappingInput,
        output_schema = types.CreateBasePathMappingOutput,
        http_method = "POST",
        http_path = "/domainnames/{domainName}/basepathmappings",
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/deployments",
    }, options)
end

function Client:createDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocumentationPart",
        input_schema = types.CreateDocumentationPartInput,
        output_schema = types.CreateDocumentationPartOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/documentation/parts",
    }, options)
end

function Client:createDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateDocumentationVersion",
        input_schema = types.CreateDocumentationVersionInput,
        output_schema = types.CreateDocumentationVersionOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/documentation/versions",
    }, options)
end

function Client:createDomainName(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainName",
        input_schema = types.CreateDomainNameInput,
        output_schema = types.CreateDomainNameOutput,
        http_method = "POST",
        http_path = "/domainnames",
    }, options)
end

function Client:createDomainNameAccessAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainNameAccessAssociation",
        input_schema = types.CreateDomainNameAccessAssociationInput,
        output_schema = types.CreateDomainNameAccessAssociationOutput,
        http_method = "POST",
        http_path = "/domainnameaccessassociations",
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = types.CreateModelInput,
        output_schema = types.CreateModelOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/models",
    }, options)
end

function Client:createRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "CreateRequestValidator",
        input_schema = types.CreateRequestValidatorInput,
        output_schema = types.CreateRequestValidatorOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/requestvalidators",
    }, options)
end

function Client:createResource(input, options)
    return self:invokeOperation(input, {
        name = "CreateResource",
        input_schema = types.CreateResourceInput,
        output_schema = types.CreateResourceOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/resources/{parentId}",
    }, options)
end

function Client:createRestApi(input, options)
    return self:invokeOperation(input, {
        name = "CreateRestApi",
        input_schema = types.CreateRestApiInput,
        output_schema = types.CreateRestApiOutput,
        http_method = "POST",
        http_path = "/restapis",
    }, options)
end

function Client:createStage(input, options)
    return self:invokeOperation(input, {
        name = "CreateStage",
        input_schema = types.CreateStageInput,
        output_schema = types.CreateStageOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/stages",
    }, options)
end

function Client:createUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsagePlan",
        input_schema = types.CreateUsagePlanInput,
        output_schema = types.CreateUsagePlanOutput,
        http_method = "POST",
        http_path = "/usageplans",
    }, options)
end

function Client:createUsagePlanKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsagePlanKey",
        input_schema = types.CreateUsagePlanKeyInput,
        output_schema = types.CreateUsagePlanKeyOutput,
        http_method = "POST",
        http_path = "/usageplans/{usagePlanId}/keys",
    }, options)
end

function Client:createVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcLink",
        input_schema = types.CreateVpcLinkInput,
        output_schema = types.CreateVpcLinkOutput,
        http_method = "POST",
        http_path = "/vpclinks",
    }, options)
end

function Client:deleteApiKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiKey",
        input_schema = types.DeleteApiKeyInput,
        output_schema = types.DeleteApiKeyOutput,
        http_method = "DELETE",
        http_path = "/apikeys/{apiKey}",
    }, options)
end

function Client:deleteAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthorizer",
        input_schema = types.DeleteAuthorizerInput,
        output_schema = types.DeleteAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
    }, options)
end

function Client:deleteBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBasePathMapping",
        input_schema = types.DeleteBasePathMappingInput,
        output_schema = types.DeleteBasePathMappingOutput,
        http_method = "DELETE",
        http_path = "/domainnames/{domainName}/basepathmappings/{basePath}",
    }, options)
end

function Client:deleteClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClientCertificate",
        input_schema = types.DeleteClientCertificateInput,
        output_schema = types.DeleteClientCertificateOutput,
        http_method = "DELETE",
        http_path = "/clientcertificates/{clientCertificateId}",
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = types.DeleteDeploymentInput,
        output_schema = types.DeleteDeploymentOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/deployments/{deploymentId}",
    }, options)
end

function Client:deleteDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentationPart",
        input_schema = types.DeleteDocumentationPartInput,
        output_schema = types.DeleteDocumentationPartOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/documentation/parts/{documentationPartId}",
    }, options)
end

function Client:deleteDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDocumentationVersion",
        input_schema = types.DeleteDocumentationVersionInput,
        output_schema = types.DeleteDocumentationVersionOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/documentation/versions/{documentationVersion}",
    }, options)
end

function Client:deleteDomainName(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainName",
        input_schema = types.DeleteDomainNameInput,
        output_schema = types.DeleteDomainNameOutput,
        http_method = "DELETE",
        http_path = "/domainnames/{domainName}",
    }, options)
end

function Client:deleteDomainNameAccessAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainNameAccessAssociation",
        input_schema = types.DeleteDomainNameAccessAssociationInput,
        output_schema = types.DeleteDomainNameAccessAssociationOutput,
        http_method = "DELETE",
        http_path = "/domainnameaccessassociations/{domainNameAccessAssociationArn}",
    }, options)
end

function Client:deleteGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGatewayResponse",
        input_schema = types.DeleteGatewayResponseInput,
        output_schema = types.DeleteGatewayResponseOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
    }, options)
end

function Client:deleteIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegrationResponse",
        input_schema = types.DeleteIntegrationResponseInput,
        output_schema = types.DeleteIntegrationResponseOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
    }, options)
end

function Client:deleteMethod(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMethod",
        input_schema = types.DeleteMethodInput,
        output_schema = types.DeleteMethodOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
    }, options)
end

function Client:deleteMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMethodResponse",
        input_schema = types.DeleteMethodResponseInput,
        output_schema = types.DeleteMethodResponseOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = types.DeleteModelInput,
        output_schema = types.DeleteModelOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/models/{modelName}",
    }, options)
end

function Client:deleteRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRequestValidator",
        input_schema = types.DeleteRequestValidatorInput,
        output_schema = types.DeleteRequestValidatorOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/requestvalidators/{requestValidatorId}",
    }, options)
end

function Client:deleteResource(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResource",
        input_schema = types.DeleteResourceInput,
        output_schema = types.DeleteResourceOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/resources/{resourceId}",
    }, options)
end

function Client:deleteRestApi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRestApi",
        input_schema = types.DeleteRestApiInput,
        output_schema = types.DeleteRestApiOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}",
    }, options)
end

function Client:deleteStage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStage",
        input_schema = types.DeleteStageInput,
        output_schema = types.DeleteStageOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/stages/{stageName}",
    }, options)
end

function Client:deleteUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsagePlan",
        input_schema = types.DeleteUsagePlanInput,
        output_schema = types.DeleteUsagePlanOutput,
        http_method = "DELETE",
        http_path = "/usageplans/{usagePlanId}",
    }, options)
end

function Client:deleteUsagePlanKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsagePlanKey",
        input_schema = types.DeleteUsagePlanKeyInput,
        output_schema = types.DeleteUsagePlanKeyOutput,
        http_method = "DELETE",
        http_path = "/usageplans/{usagePlanId}/keys/{keyId}",
    }, options)
end

function Client:deleteVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcLink",
        input_schema = types.DeleteVpcLinkInput,
        output_schema = types.DeleteVpcLinkOutput,
        http_method = "DELETE",
        http_path = "/vpclinks/{vpcLinkId}",
    }, options)
end

function Client:flushStageAuthorizersCache(input, options)
    return self:invokeOperation(input, {
        name = "FlushStageAuthorizersCache",
        input_schema = types.FlushStageAuthorizersCacheInput,
        output_schema = types.FlushStageAuthorizersCacheOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/stages/{stageName}/cache/authorizers",
    }, options)
end

function Client:flushStageCache(input, options)
    return self:invokeOperation(input, {
        name = "FlushStageCache",
        input_schema = types.FlushStageCacheInput,
        output_schema = types.FlushStageCacheOutput,
        http_method = "DELETE",
        http_path = "/restapis/{restApiId}/stages/{stageName}/cache/data",
    }, options)
end

function Client:generateClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GenerateClientCertificate",
        input_schema = types.GenerateClientCertificateInput,
        output_schema = types.GenerateClientCertificateOutput,
        http_method = "POST",
        http_path = "/clientcertificates",
    }, options)
end

function Client:getAccount(input, options)
    return self:invokeOperation(input, {
        name = "GetAccount",
        input_schema = types.GetAccountInput,
        output_schema = types.GetAccountOutput,
        http_method = "GET",
        http_path = "/account",
    }, options)
end

function Client:getApiKey(input, options)
    return self:invokeOperation(input, {
        name = "GetApiKey",
        input_schema = types.GetApiKeyInput,
        output_schema = types.GetApiKeyOutput,
        http_method = "GET",
        http_path = "/apikeys/{apiKey}",
    }, options)
end

function Client:getApiKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetApiKeys",
        input_schema = types.GetApiKeysInput,
        output_schema = types.GetApiKeysOutput,
        http_method = "GET",
        http_path = "/apikeys",
    }, options)
end

function Client:getAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizer",
        input_schema = types.GetAuthorizerInput,
        output_schema = types.GetAuthorizerOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
    }, options)
end

function Client:getAuthorizers(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizers",
        input_schema = types.GetAuthorizersInput,
        output_schema = types.GetAuthorizersOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/authorizers",
    }, options)
end

function Client:getBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetBasePathMapping",
        input_schema = types.GetBasePathMappingInput,
        output_schema = types.GetBasePathMappingOutput,
        http_method = "GET",
        http_path = "/domainnames/{domainName}/basepathmappings/{basePath}",
    }, options)
end

function Client:getBasePathMappings(input, options)
    return self:invokeOperation(input, {
        name = "GetBasePathMappings",
        input_schema = types.GetBasePathMappingsInput,
        output_schema = types.GetBasePathMappingsOutput,
        http_method = "GET",
        http_path = "/domainnames/{domainName}/basepathmappings",
    }, options)
end

function Client:getClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "GetClientCertificate",
        input_schema = types.GetClientCertificateInput,
        output_schema = types.GetClientCertificateOutput,
        http_method = "GET",
        http_path = "/clientcertificates/{clientCertificateId}",
    }, options)
end

function Client:getClientCertificates(input, options)
    return self:invokeOperation(input, {
        name = "GetClientCertificates",
        input_schema = types.GetClientCertificatesInput,
        output_schema = types.GetClientCertificatesOutput,
        http_method = "GET",
        http_path = "/clientcertificates",
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/deployments/{deploymentId}",
    }, options)
end

function Client:getDeployments(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployments",
        input_schema = types.GetDeploymentsInput,
        output_schema = types.GetDeploymentsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/deployments",
    }, options)
end

function Client:getDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationPart",
        input_schema = types.GetDocumentationPartInput,
        output_schema = types.GetDocumentationPartOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/parts/{documentationPartId}",
    }, options)
end

function Client:getDocumentationParts(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationParts",
        input_schema = types.GetDocumentationPartsInput,
        output_schema = types.GetDocumentationPartsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/parts",
    }, options)
end

function Client:getDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationVersion",
        input_schema = types.GetDocumentationVersionInput,
        output_schema = types.GetDocumentationVersionOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/versions/{documentationVersion}",
    }, options)
end

function Client:getDocumentationVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetDocumentationVersions",
        input_schema = types.GetDocumentationVersionsInput,
        output_schema = types.GetDocumentationVersionsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/documentation/versions",
    }, options)
end

function Client:getDomainName(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainName",
        input_schema = types.GetDomainNameInput,
        output_schema = types.GetDomainNameOutput,
        http_method = "GET",
        http_path = "/domainnames/{domainName}",
    }, options)
end

function Client:getDomainNameAccessAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainNameAccessAssociations",
        input_schema = types.GetDomainNameAccessAssociationsInput,
        output_schema = types.GetDomainNameAccessAssociationsOutput,
        http_method = "GET",
        http_path = "/domainnameaccessassociations",
    }, options)
end

function Client:getDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainNames",
        input_schema = types.GetDomainNamesInput,
        output_schema = types.GetDomainNamesOutput,
        http_method = "GET",
        http_path = "/domainnames",
    }, options)
end

function Client:getExport(input, options)
    return self:invokeOperation(input, {
        name = "GetExport",
        input_schema = types.GetExportInput,
        output_schema = types.GetExportOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages/{stageName}/exports/{exportType}",
    }, options)
end

function Client:getGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetGatewayResponse",
        input_schema = types.GetGatewayResponseInput,
        output_schema = types.GetGatewayResponseOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
    }, options)
end

function Client:getGatewayResponses(input, options)
    return self:invokeOperation(input, {
        name = "GetGatewayResponses",
        input_schema = types.GetGatewayResponsesInput,
        output_schema = types.GetGatewayResponsesOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/gatewayresponses",
    }, options)
end

function Client:getIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegration",
        input_schema = types.GetIntegrationInput,
        output_schema = types.GetIntegrationOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
    }, options)
end

function Client:getIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationResponse",
        input_schema = types.GetIntegrationResponseInput,
        output_schema = types.GetIntegrationResponseOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
    }, options)
end

function Client:getMethod(input, options)
    return self:invokeOperation(input, {
        name = "GetMethod",
        input_schema = types.GetMethodInput,
        output_schema = types.GetMethodOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
    }, options)
end

function Client:getMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetMethodResponse",
        input_schema = types.GetMethodResponseInput,
        output_schema = types.GetMethodResponseOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
    }, options)
end

function Client:getModel(input, options)
    return self:invokeOperation(input, {
        name = "GetModel",
        input_schema = types.GetModelInput,
        output_schema = types.GetModelOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/models/{modelName}",
    }, options)
end

function Client:getModels(input, options)
    return self:invokeOperation(input, {
        name = "GetModels",
        input_schema = types.GetModelsInput,
        output_schema = types.GetModelsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/models",
    }, options)
end

function Client:getModelTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetModelTemplate",
        input_schema = types.GetModelTemplateInput,
        output_schema = types.GetModelTemplateOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/models/{modelName}/default_template",
    }, options)
end

function Client:getRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "GetRequestValidator",
        input_schema = types.GetRequestValidatorInput,
        output_schema = types.GetRequestValidatorOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/requestvalidators/{requestValidatorId}",
    }, options)
end

function Client:getRequestValidators(input, options)
    return self:invokeOperation(input, {
        name = "GetRequestValidators",
        input_schema = types.GetRequestValidatorsInput,
        output_schema = types.GetRequestValidatorsOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/requestvalidators",
    }, options)
end

function Client:getResource(input, options)
    return self:invokeOperation(input, {
        name = "GetResource",
        input_schema = types.GetResourceInput,
        output_schema = types.GetResourceOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources/{resourceId}",
    }, options)
end

function Client:getResources(input, options)
    return self:invokeOperation(input, {
        name = "GetResources",
        input_schema = types.GetResourcesInput,
        output_schema = types.GetResourcesOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/resources",
    }, options)
end

function Client:getRestApi(input, options)
    return self:invokeOperation(input, {
        name = "GetRestApi",
        input_schema = types.GetRestApiInput,
        output_schema = types.GetRestApiOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}",
    }, options)
end

function Client:getRestApis(input, options)
    return self:invokeOperation(input, {
        name = "GetRestApis",
        input_schema = types.GetRestApisInput,
        output_schema = types.GetRestApisOutput,
        http_method = "GET",
        http_path = "/restapis",
    }, options)
end

function Client:getSdk(input, options)
    return self:invokeOperation(input, {
        name = "GetSdk",
        input_schema = types.GetSdkInput,
        output_schema = types.GetSdkOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages/{stageName}/sdks/{sdkType}",
    }, options)
end

function Client:getSdkType(input, options)
    return self:invokeOperation(input, {
        name = "GetSdkType",
        input_schema = types.GetSdkTypeInput,
        output_schema = types.GetSdkTypeOutput,
        http_method = "GET",
        http_path = "/sdktypes/{id}",
    }, options)
end

function Client:getSdkTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetSdkTypes",
        input_schema = types.GetSdkTypesInput,
        output_schema = types.GetSdkTypesOutput,
        http_method = "GET",
        http_path = "/sdktypes",
    }, options)
end

function Client:getStage(input, options)
    return self:invokeOperation(input, {
        name = "GetStage",
        input_schema = types.GetStageInput,
        output_schema = types.GetStageOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages/{stageName}",
    }, options)
end

function Client:getStages(input, options)
    return self:invokeOperation(input, {
        name = "GetStages",
        input_schema = types.GetStagesInput,
        output_schema = types.GetStagesOutput,
        http_method = "GET",
        http_path = "/restapis/{restApiId}/stages",
    }, options)
end

function Client:getTags(input, options)
    return self:invokeOperation(input, {
        name = "GetTags",
        input_schema = types.GetTagsInput,
        output_schema = types.GetTagsOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:getUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetUsage",
        input_schema = types.GetUsageInput,
        output_schema = types.GetUsageOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}/usage",
    }, options)
end

function Client:getUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlan",
        input_schema = types.GetUsagePlanInput,
        output_schema = types.GetUsagePlanOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}",
    }, options)
end

function Client:getUsagePlanKey(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlanKey",
        input_schema = types.GetUsagePlanKeyInput,
        output_schema = types.GetUsagePlanKeyOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}/keys/{keyId}",
    }, options)
end

function Client:getUsagePlanKeys(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlanKeys",
        input_schema = types.GetUsagePlanKeysInput,
        output_schema = types.GetUsagePlanKeysOutput,
        http_method = "GET",
        http_path = "/usageplans/{usagePlanId}/keys",
    }, options)
end

function Client:getUsagePlans(input, options)
    return self:invokeOperation(input, {
        name = "GetUsagePlans",
        input_schema = types.GetUsagePlansInput,
        output_schema = types.GetUsagePlansOutput,
        http_method = "GET",
        http_path = "/usageplans",
    }, options)
end

function Client:getVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcLink",
        input_schema = types.GetVpcLinkInput,
        output_schema = types.GetVpcLinkOutput,
        http_method = "GET",
        http_path = "/vpclinks/{vpcLinkId}",
    }, options)
end

function Client:getVpcLinks(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcLinks",
        input_schema = types.GetVpcLinksInput,
        output_schema = types.GetVpcLinksOutput,
        http_method = "GET",
        http_path = "/vpclinks",
    }, options)
end

function Client:importApiKeys(input, options)
    return self:invokeOperation(input, {
        name = "ImportApiKeys",
        input_schema = types.ImportApiKeysInput,
        output_schema = types.ImportApiKeysOutput,
        http_method = "POST",
        http_path = "/apikeys?mode=import",
    }, options)
end

function Client:importDocumentationParts(input, options)
    return self:invokeOperation(input, {
        name = "ImportDocumentationParts",
        input_schema = types.ImportDocumentationPartsInput,
        output_schema = types.ImportDocumentationPartsOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/documentation/parts",
    }, options)
end

function Client:importRestApi(input, options)
    return self:invokeOperation(input, {
        name = "ImportRestApi",
        input_schema = types.ImportRestApiInput,
        output_schema = types.ImportRestApiOutput,
        http_method = "POST",
        http_path = "/restapis?mode=import",
    }, options)
end

function Client:putGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "PutGatewayResponse",
        input_schema = types.PutGatewayResponseInput,
        output_schema = types.PutGatewayResponseOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
    }, options)
end

function Client:putIntegration(input, options)
    return self:invokeOperation(input, {
        name = "PutIntegration",
        input_schema = types.PutIntegrationInput,
        output_schema = types.PutIntegrationOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
    }, options)
end

function Client:putIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "PutIntegrationResponse",
        input_schema = types.PutIntegrationResponseInput,
        output_schema = types.PutIntegrationResponseOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
    }, options)
end

function Client:putMethod(input, options)
    return self:invokeOperation(input, {
        name = "PutMethod",
        input_schema = types.PutMethodInput,
        output_schema = types.PutMethodOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
    }, options)
end

function Client:putMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "PutMethodResponse",
        input_schema = types.PutMethodResponseInput,
        output_schema = types.PutMethodResponseOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
    }, options)
end

function Client:putRestApi(input, options)
    return self:invokeOperation(input, {
        name = "PutRestApi",
        input_schema = types.PutRestApiInput,
        output_schema = types.PutRestApiOutput,
        http_method = "PUT",
        http_path = "/restapis/{restApiId}",
    }, options)
end

function Client:rejectDomainNameAccessAssociation(input, options)
    return self:invokeOperation(input, {
        name = "RejectDomainNameAccessAssociation",
        input_schema = types.RejectDomainNameAccessAssociationInput,
        output_schema = types.RejectDomainNameAccessAssociationOutput,
        http_method = "POST",
        http_path = "/rejectdomainnameaccessassociations",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "PUT",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:testInvokeAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "TestInvokeAuthorizer",
        input_schema = types.TestInvokeAuthorizerInput,
        output_schema = types.TestInvokeAuthorizerOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
    }, options)
end

function Client:testInvokeMethod(input, options)
    return self:invokeOperation(input, {
        name = "TestInvokeMethod",
        input_schema = types.TestInvokeMethodInput,
        output_schema = types.TestInvokeMethodOutput,
        http_method = "POST",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
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

function Client:updateAccount(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccount",
        input_schema = types.UpdateAccountInput,
        output_schema = types.UpdateAccountOutput,
        http_method = "PATCH",
        http_path = "/account",
    }, options)
end

function Client:updateApiKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiKey",
        input_schema = types.UpdateApiKeyInput,
        output_schema = types.UpdateApiKeyOutput,
        http_method = "PATCH",
        http_path = "/apikeys/{apiKey}",
    }, options)
end

function Client:updateAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthorizer",
        input_schema = types.UpdateAuthorizerInput,
        output_schema = types.UpdateAuthorizerOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/authorizers/{authorizerId}",
    }, options)
end

function Client:updateBasePathMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBasePathMapping",
        input_schema = types.UpdateBasePathMappingInput,
        output_schema = types.UpdateBasePathMappingOutput,
        http_method = "PATCH",
        http_path = "/domainnames/{domainName}/basepathmappings/{basePath}",
    }, options)
end

function Client:updateClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClientCertificate",
        input_schema = types.UpdateClientCertificateInput,
        output_schema = types.UpdateClientCertificateOutput,
        http_method = "PATCH",
        http_path = "/clientcertificates/{clientCertificateId}",
    }, options)
end

function Client:updateDeployment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeployment",
        input_schema = types.UpdateDeploymentInput,
        output_schema = types.UpdateDeploymentOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/deployments/{deploymentId}",
    }, options)
end

function Client:updateDocumentationPart(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentationPart",
        input_schema = types.UpdateDocumentationPartInput,
        output_schema = types.UpdateDocumentationPartOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/documentation/parts/{documentationPartId}",
    }, options)
end

function Client:updateDocumentationVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDocumentationVersion",
        input_schema = types.UpdateDocumentationVersionInput,
        output_schema = types.UpdateDocumentationVersionOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/documentation/versions/{documentationVersion}",
    }, options)
end

function Client:updateDomainName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainName",
        input_schema = types.UpdateDomainNameInput,
        output_schema = types.UpdateDomainNameOutput,
        http_method = "PATCH",
        http_path = "/domainnames/{domainName}",
    }, options)
end

function Client:updateGatewayResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGatewayResponse",
        input_schema = types.UpdateGatewayResponseInput,
        output_schema = types.UpdateGatewayResponseOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/gatewayresponses/{responseType}",
    }, options)
end

function Client:updateIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegration",
        input_schema = types.UpdateIntegrationInput,
        output_schema = types.UpdateIntegrationOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration",
    }, options)
end

function Client:updateIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegrationResponse",
        input_schema = types.UpdateIntegrationResponseInput,
        output_schema = types.UpdateIntegrationResponseOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}",
    }, options)
end

function Client:updateMethod(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMethod",
        input_schema = types.UpdateMethodInput,
        output_schema = types.UpdateMethodOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}",
    }, options)
end

function Client:updateMethodResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMethodResponse",
        input_schema = types.UpdateMethodResponseInput,
        output_schema = types.UpdateMethodResponseOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}",
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = types.UpdateModelInput,
        output_schema = types.UpdateModelOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/models/{modelName}",
    }, options)
end

function Client:updateRequestValidator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRequestValidator",
        input_schema = types.UpdateRequestValidatorInput,
        output_schema = types.UpdateRequestValidatorOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/requestvalidators/{requestValidatorId}",
    }, options)
end

function Client:updateResource(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResource",
        input_schema = types.UpdateResourceInput,
        output_schema = types.UpdateResourceOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/resources/{resourceId}",
    }, options)
end

function Client:updateRestApi(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRestApi",
        input_schema = types.UpdateRestApiInput,
        output_schema = types.UpdateRestApiOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}",
    }, options)
end

function Client:updateStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStage",
        input_schema = types.UpdateStageInput,
        output_schema = types.UpdateStageOutput,
        http_method = "PATCH",
        http_path = "/restapis/{restApiId}/stages/{stageName}",
    }, options)
end

function Client:updateUsage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsage",
        input_schema = types.UpdateUsageInput,
        output_schema = types.UpdateUsageOutput,
        http_method = "PATCH",
        http_path = "/usageplans/{usagePlanId}/keys/{keyId}/usage",
    }, options)
end

function Client:updateUsagePlan(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUsagePlan",
        input_schema = types.UpdateUsagePlanInput,
        output_schema = types.UpdateUsagePlanOutput,
        http_method = "PATCH",
        http_path = "/usageplans/{usagePlanId}",
    }, options)
end

function Client:updateVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcLink",
        input_schema = types.UpdateVpcLinkInput,
        output_schema = types.UpdateVpcLinkOutput,
        http_method = "PATCH",
        http_path = "/vpclinks/{vpcLinkId}",
    }, options)
end

return M
