local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("apigatewayv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("apigatewayv2.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ApiGatewayV2"
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

function Client:createApi(input, options)
    return self:invokeOperation(input, {
        name = "CreateApi",
        input_schema = schemas.CreateApiInput,
        output_schema = schemas.CreateApiOutput,
        http_method = "POST",
        http_path = "/v2/apis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiMapping",
        input_schema = schemas.CreateApiMappingInput,
        output_schema = schemas.CreateApiMappingOutput,
        http_method = "POST",
        http_path = "/v2/domainnames/{DomainName}/apimappings",
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
        http_path = "/v2/apis/{ApiId}/authorizers",
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
        http_path = "/v2/apis/{ApiId}/deployments",
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
        http_path = "/v2/domainnames",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = schemas.CreateIntegrationInput,
        output_schema = schemas.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/integrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegrationResponse",
        input_schema = schemas.CreateIntegrationResponseInput,
        output_schema = schemas.CreateIntegrationResponseOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses",
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
        http_path = "/v2/apis/{ApiId}/models",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPortal(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortal",
        input_schema = schemas.CreatePortalInput,
        output_schema = schemas.CreatePortalOutput,
        http_method = "POST",
        http_path = "/v2/portals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortalProduct",
        input_schema = schemas.CreatePortalProductInput,
        output_schema = schemas.CreatePortalProductOutput,
        http_method = "POST",
        http_path = "/v2/portalproducts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProductPage(input, options)
    return self:invokeOperation(input, {
        name = "CreateProductPage",
        input_schema = schemas.CreateProductPageInput,
        output_schema = schemas.CreateProductPageOutput,
        http_method = "POST",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "CreateProductRestEndpointPage",
        input_schema = schemas.CreateProductRestEndpointPageInput,
        output_schema = schemas.CreateProductRestEndpointPageOutput,
        http_method = "POST",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoute",
        input_schema = schemas.CreateRouteInput,
        output_schema = schemas.CreateRouteOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/routes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteResponse",
        input_schema = schemas.CreateRouteResponseInput,
        output_schema = schemas.CreateRouteResponseOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoutingRule",
        input_schema = schemas.CreateRoutingRuleInput,
        output_schema = schemas.CreateRoutingRuleOutput,
        http_method = "POST",
        http_path = "/v2/domainnames/{DomainName}/routingrules",
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
        http_path = "/v2/apis/{ApiId}/stages",
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
        http_path = "/v2/vpclinks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccessLogSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessLogSettings",
        input_schema = schemas.DeleteAccessLogSettingsInput,
        output_schema = schemas.DeleteAccessLogSettingsOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}/accesslogsettings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApi",
        input_schema = schemas.DeleteApiInput,
        output_schema = schemas.DeleteApiOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiMapping",
        input_schema = schemas.DeleteApiMappingInput,
        output_schema = schemas.DeleteApiMappingOutput,
        http_method = "DELETE",
        http_path = "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}",
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
        http_path = "/v2/apis/{ApiId}/authorizers/{AuthorizerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCorsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCorsConfiguration",
        input_schema = schemas.DeleteCorsConfigurationInput,
        output_schema = schemas.DeleteCorsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/cors",
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
        http_path = "/v2/apis/{ApiId}/deployments/{DeploymentId}",
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
        http_path = "/v2/domainnames/{DomainName}",
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
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}",
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
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}",
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
        http_path = "/v2/apis/{ApiId}/models/{ModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortal(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortal",
        input_schema = schemas.DeletePortalInput,
        output_schema = schemas.DeletePortalOutput,
        http_method = "DELETE",
        http_path = "/v2/portals/{PortalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortalProduct",
        input_schema = schemas.DeletePortalProductInput,
        output_schema = schemas.DeletePortalProductOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortalProductSharingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortalProductSharingPolicy",
        input_schema = schemas.DeletePortalProductSharingPolicyInput,
        output_schema = schemas.DeletePortalProductSharingPolicyOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}/sharingpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProductPage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProductPage",
        input_schema = schemas.DeleteProductPageInput,
        output_schema = schemas.DeleteProductPageOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages/{ProductPageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProductRestEndpointPage",
        input_schema = schemas.DeleteProductRestEndpointPageInput,
        output_schema = schemas.DeleteProductRestEndpointPageOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages/{ProductRestEndpointPageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoute",
        input_schema = schemas.DeleteRouteInput,
        output_schema = schemas.DeleteRouteOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteRequestParameter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteRequestParameter",
        input_schema = schemas.DeleteRouteRequestParameterInput,
        output_schema = schemas.DeleteRouteRequestParameterOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/requestparameters/{RequestParameterKey}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteResponse",
        input_schema = schemas.DeleteRouteResponseInput,
        output_schema = schemas.DeleteRouteResponseOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRouteSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteSettings",
        input_schema = schemas.DeleteRouteSettingsInput,
        output_schema = schemas.DeleteRouteSettingsOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}/routesettings/{RouteKey}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoutingRule",
        input_schema = schemas.DeleteRoutingRuleInput,
        output_schema = schemas.DeleteRoutingRuleOutput,
        http_method = "DELETE",
        http_path = "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}",
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
        http_path = "/v2/apis/{ApiId}/stages/{StageName}",
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
        http_path = "/v2/vpclinks/{VpcLinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disablePortal(input, options)
    return self:invokeOperation(input, {
        name = "DisablePortal",
        input_schema = schemas.DisablePortalInput,
        output_schema = schemas.DisablePortalOutput,
        http_method = "DELETE",
        http_path = "/v2/portals/{PortalId}/publish",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportApi(input, options)
    return self:invokeOperation(input, {
        name = "ExportApi",
        input_schema = schemas.ExportApiInput,
        output_schema = schemas.ExportApiOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/exports/{Specification}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApi(input, options)
    return self:invokeOperation(input, {
        name = "GetApi",
        input_schema = schemas.GetApiInput,
        output_schema = schemas.GetApiOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetApiMapping",
        input_schema = schemas.GetApiMappingInput,
        output_schema = schemas.GetApiMappingOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApiMappings(input, options)
    return self:invokeOperation(input, {
        name = "GetApiMappings",
        input_schema = schemas.GetApiMappingsInput,
        output_schema = schemas.GetApiMappingsOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/apimappings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApis(input, options)
    return self:invokeOperation(input, {
        name = "GetApis",
        input_schema = schemas.GetApisInput,
        output_schema = schemas.GetApisOutput,
        http_method = "GET",
        http_path = "/v2/apis",
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
        http_path = "/v2/apis/{ApiId}/authorizers/{AuthorizerId}",
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
        http_path = "/v2/apis/{ApiId}/authorizers",
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
        http_path = "/v2/apis/{ApiId}/deployments/{DeploymentId}",
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
        http_path = "/v2/apis/{ApiId}/deployments",
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
        http_path = "/v2/domainnames/{DomainName}",
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
        http_path = "/v2/domainnames",
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
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}",
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
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntegrationResponses(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationResponses",
        input_schema = schemas.GetIntegrationResponsesInput,
        output_schema = schemas.GetIntegrationResponsesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrations",
        input_schema = schemas.GetIntegrationsInput,
        output_schema = schemas.GetIntegrationsOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/integrations",
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
        http_path = "/v2/apis/{ApiId}/models/{ModelId}",
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
        http_path = "/v2/apis/{ApiId}/models",
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
        http_path = "/v2/apis/{ApiId}/models/{ModelId}/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortal(input, options)
    return self:invokeOperation(input, {
        name = "GetPortal",
        input_schema = schemas.GetPortalInput,
        output_schema = schemas.GetPortalOutput,
        http_method = "GET",
        http_path = "/v2/portals/{PortalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "GetPortalProduct",
        input_schema = schemas.GetPortalProductInput,
        output_schema = schemas.GetPortalProductOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPortalProductSharingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPortalProductSharingPolicy",
        input_schema = schemas.GetPortalProductSharingPolicyInput,
        output_schema = schemas.GetPortalProductSharingPolicyOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/sharingpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProductPage(input, options)
    return self:invokeOperation(input, {
        name = "GetProductPage",
        input_schema = schemas.GetProductPageInput,
        output_schema = schemas.GetProductPageOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages/{ProductPageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "GetProductRestEndpointPage",
        input_schema = schemas.GetProductRestEndpointPageInput,
        output_schema = schemas.GetProductRestEndpointPageOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages/{ProductRestEndpointPageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRoute(input, options)
    return self:invokeOperation(input, {
        name = "GetRoute",
        input_schema = schemas.GetRouteInput,
        output_schema = schemas.GetRouteOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteResponse",
        input_schema = schemas.GetRouteResponseInput,
        output_schema = schemas.GetRouteResponseOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRouteResponses(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteResponses",
        input_schema = schemas.GetRouteResponsesInput,
        output_schema = schemas.GetRouteResponsesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRoutes(input, options)
    return self:invokeOperation(input, {
        name = "GetRoutes",
        input_schema = schemas.GetRoutesInput,
        output_schema = schemas.GetRoutesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRoutingRule",
        input_schema = schemas.GetRoutingRuleInput,
        output_schema = schemas.GetRoutingRuleOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}",
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
        http_path = "/v2/apis/{ApiId}/stages/{StageName}",
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
        http_path = "/v2/apis/{ApiId}/stages",
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
        http_path = "/v2/tags/{ResourceArn}",
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
        http_path = "/v2/vpclinks/{VpcLinkId}",
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
        http_path = "/v2/vpclinks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importApi(input, options)
    return self:invokeOperation(input, {
        name = "ImportApi",
        input_schema = schemas.ImportApiInput,
        output_schema = schemas.ImportApiOutput,
        http_method = "PUT",
        http_path = "/v2/apis",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortalProducts(input, options)
    return self:invokeOperation(input, {
        name = "ListPortalProducts",
        input_schema = schemas.ListPortalProductsInput,
        output_schema = schemas.ListPortalProductsOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortals(input, options)
    return self:invokeOperation(input, {
        name = "ListPortals",
        input_schema = schemas.ListPortalsInput,
        output_schema = schemas.ListPortalsOutput,
        http_method = "GET",
        http_path = "/v2/portals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProductPages(input, options)
    return self:invokeOperation(input, {
        name = "ListProductPages",
        input_schema = schemas.ListProductPagesInput,
        output_schema = schemas.ListProductPagesOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProductRestEndpointPages(input, options)
    return self:invokeOperation(input, {
        name = "ListProductRestEndpointPages",
        input_schema = schemas.ListProductRestEndpointPagesInput,
        output_schema = schemas.ListProductRestEndpointPagesOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoutingRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingRules",
        input_schema = schemas.ListRoutingRulesInput,
        output_schema = schemas.ListRoutingRulesOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/routingrules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:previewPortal(input, options)
    return self:invokeOperation(input, {
        name = "PreviewPortal",
        input_schema = schemas.PreviewPortalInput,
        output_schema = schemas.PreviewPortalOutput,
        http_method = "POST",
        http_path = "/v2/portals/{PortalId}/preview",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:publishPortal(input, options)
    return self:invokeOperation(input, {
        name = "PublishPortal",
        input_schema = schemas.PublishPortalInput,
        output_schema = schemas.PublishPortalOutput,
        http_method = "POST",
        http_path = "/v2/portals/{PortalId}/publish",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putPortalProductSharingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPortalProductSharingPolicy",
        input_schema = schemas.PutPortalProductSharingPolicyInput,
        output_schema = schemas.PutPortalProductSharingPolicyOutput,
        http_method = "PUT",
        http_path = "/v2/portalproducts/{PortalProductId}/sharingpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "PutRoutingRule",
        input_schema = schemas.PutRoutingRuleInput,
        output_schema = schemas.PutRoutingRuleOutput,
        http_method = "PUT",
        http_path = "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:reimportApi(input, options)
    return self:invokeOperation(input, {
        name = "ReimportApi",
        input_schema = schemas.ReimportApiInput,
        output_schema = schemas.ReimportApiOutput,
        http_method = "PUT",
        http_path = "/v2/apis/{ApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetAuthorizersCache(input, options)
    return self:invokeOperation(input, {
        name = "ResetAuthorizersCache",
        input_schema = schemas.ResetAuthorizersCacheInput,
        output_schema = schemas.ResetAuthorizersCacheOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}/cache/authorizers",
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
        http_path = "/v2/tags/{ResourceArn}",
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
        http_path = "/v2/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApi(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApi",
        input_schema = schemas.UpdateApiInput,
        output_schema = schemas.UpdateApiOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiMapping",
        input_schema = schemas.UpdateApiMappingInput,
        output_schema = schemas.UpdateApiMappingOutput,
        http_method = "PATCH",
        http_path = "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}",
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
        http_path = "/v2/apis/{ApiId}/authorizers/{AuthorizerId}",
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
        http_path = "/v2/apis/{ApiId}/deployments/{DeploymentId}",
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
        http_path = "/v2/domainnames/{DomainName}",
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
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}",
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
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}",
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
        http_path = "/v2/apis/{ApiId}/models/{ModelId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePortal(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortal",
        input_schema = schemas.UpdatePortalInput,
        output_schema = schemas.UpdatePortalOutput,
        http_method = "PATCH",
        http_path = "/v2/portals/{PortalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortalProduct",
        input_schema = schemas.UpdatePortalProductInput,
        output_schema = schemas.UpdatePortalProductOutput,
        http_method = "PATCH",
        http_path = "/v2/portalproducts/{PortalProductId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProductPage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProductPage",
        input_schema = schemas.UpdateProductPageInput,
        output_schema = schemas.UpdateProductPageOutput,
        http_method = "PATCH",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages/{ProductPageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProductRestEndpointPage",
        input_schema = schemas.UpdateProductRestEndpointPageInput,
        output_schema = schemas.UpdateProductRestEndpointPageOutput,
        http_method = "PATCH",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages/{ProductRestEndpointPageId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoute",
        input_schema = schemas.UpdateRouteInput,
        output_schema = schemas.UpdateRouteOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRouteResponse",
        input_schema = schemas.UpdateRouteResponseInput,
        output_schema = schemas.UpdateRouteResponseOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}",
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
        http_path = "/v2/apis/{ApiId}/stages/{StageName}",
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
        http_path = "/v2/vpclinks/{VpcLinkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
