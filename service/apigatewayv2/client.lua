local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("apigatewayv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("apigatewayv2.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "ApiGatewayV2"
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

function Client:createApi(input, options)
    return self:invokeOperation(input, {
        name = "CreateApi",
        input_schema = types.CreateApiInput,
        output_schema = types.CreateApiOutput,
        http_method = "POST",
        http_path = "/v2/apis",
    }, options)
end

function Client:createApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "CreateApiMapping",
        input_schema = types.CreateApiMappingInput,
        output_schema = types.CreateApiMappingOutput,
        http_method = "POST",
        http_path = "/v2/domainnames/{DomainName}/apimappings",
    }, options)
end

function Client:createAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuthorizer",
        input_schema = types.CreateAuthorizerInput,
        output_schema = types.CreateAuthorizerOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/authorizers",
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/deployments",
    }, options)
end

function Client:createDomainName(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomainName",
        input_schema = types.CreateDomainNameInput,
        output_schema = types.CreateDomainNameOutput,
        http_method = "POST",
        http_path = "/v2/domainnames",
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = types.CreateIntegrationInput,
        output_schema = types.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/integrations",
    }, options)
end

function Client:createIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegrationResponse",
        input_schema = types.CreateIntegrationResponseInput,
        output_schema = types.CreateIntegrationResponseOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses",
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = types.CreateModelInput,
        output_schema = types.CreateModelOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/models",
    }, options)
end

function Client:createPortal(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortal",
        input_schema = types.CreatePortalInput,
        output_schema = types.CreatePortalOutput,
        http_method = "POST",
        http_path = "/v2/portals",
    }, options)
end

function Client:createPortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortalProduct",
        input_schema = types.CreatePortalProductInput,
        output_schema = types.CreatePortalProductOutput,
        http_method = "POST",
        http_path = "/v2/portalproducts",
    }, options)
end

function Client:createProductPage(input, options)
    return self:invokeOperation(input, {
        name = "CreateProductPage",
        input_schema = types.CreateProductPageInput,
        output_schema = types.CreateProductPageOutput,
        http_method = "POST",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages",
    }, options)
end

function Client:createProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "CreateProductRestEndpointPage",
        input_schema = types.CreateProductRestEndpointPageInput,
        output_schema = types.CreateProductRestEndpointPageOutput,
        http_method = "POST",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages",
    }, options)
end

function Client:createRoute(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoute",
        input_schema = types.CreateRouteInput,
        output_schema = types.CreateRouteOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/routes",
    }, options)
end

function Client:createRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "CreateRouteResponse",
        input_schema = types.CreateRouteResponseInput,
        output_schema = types.CreateRouteResponseOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses",
    }, options)
end

function Client:createRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoutingRule",
        input_schema = types.CreateRoutingRuleInput,
        output_schema = types.CreateRoutingRuleOutput,
        http_method = "POST",
        http_path = "/v2/domainnames/{DomainName}/routingrules",
    }, options)
end

function Client:createStage(input, options)
    return self:invokeOperation(input, {
        name = "CreateStage",
        input_schema = types.CreateStageInput,
        output_schema = types.CreateStageOutput,
        http_method = "POST",
        http_path = "/v2/apis/{ApiId}/stages",
    }, options)
end

function Client:createVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateVpcLink",
        input_schema = types.CreateVpcLinkInput,
        output_schema = types.CreateVpcLinkOutput,
        http_method = "POST",
        http_path = "/v2/vpclinks",
    }, options)
end

function Client:deleteAccessLogSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessLogSettings",
        input_schema = types.DeleteAccessLogSettingsInput,
        output_schema = types.DeleteAccessLogSettingsOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}/accesslogsettings",
    }, options)
end

function Client:deleteApi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApi",
        input_schema = types.DeleteApiInput,
        output_schema = types.DeleteApiOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}",
    }, options)
end

function Client:deleteApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApiMapping",
        input_schema = types.DeleteApiMappingInput,
        output_schema = types.DeleteApiMappingOutput,
        http_method = "DELETE",
        http_path = "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}",
    }, options)
end

function Client:deleteAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthorizer",
        input_schema = types.DeleteAuthorizerInput,
        output_schema = types.DeleteAuthorizerOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/authorizers/{AuthorizerId}",
    }, options)
end

function Client:deleteCorsConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCorsConfiguration",
        input_schema = types.DeleteCorsConfigurationInput,
        output_schema = types.DeleteCorsConfigurationOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/cors",
    }, options)
end

function Client:deleteDeployment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeployment",
        input_schema = types.DeleteDeploymentInput,
        output_schema = types.DeleteDeploymentOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/deployments/{DeploymentId}",
    }, options)
end

function Client:deleteDomainName(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainName",
        input_schema = types.DeleteDomainNameInput,
        output_schema = types.DeleteDomainNameOutput,
        http_method = "DELETE",
        http_path = "/v2/domainnames/{DomainName}",
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}",
    }, options)
end

function Client:deleteIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegrationResponse",
        input_schema = types.DeleteIntegrationResponseInput,
        output_schema = types.DeleteIntegrationResponseOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}",
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = types.DeleteModelInput,
        output_schema = types.DeleteModelOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/models/{ModelId}",
    }, options)
end

function Client:deletePortal(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortal",
        input_schema = types.DeletePortalInput,
        output_schema = types.DeletePortalOutput,
        http_method = "DELETE",
        http_path = "/v2/portals/{PortalId}",
    }, options)
end

function Client:deletePortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortalProduct",
        input_schema = types.DeletePortalProductInput,
        output_schema = types.DeletePortalProductOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}",
    }, options)
end

function Client:deletePortalProductSharingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortalProductSharingPolicy",
        input_schema = types.DeletePortalProductSharingPolicyInput,
        output_schema = types.DeletePortalProductSharingPolicyOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}/sharingpolicy",
    }, options)
end

function Client:deleteProductPage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProductPage",
        input_schema = types.DeleteProductPageInput,
        output_schema = types.DeleteProductPageOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages/{ProductPageId}",
    }, options)
end

function Client:deleteProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProductRestEndpointPage",
        input_schema = types.DeleteProductRestEndpointPageInput,
        output_schema = types.DeleteProductRestEndpointPageOutput,
        http_method = "DELETE",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages/{ProductRestEndpointPageId}",
    }, options)
end

function Client:deleteRoute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoute",
        input_schema = types.DeleteRouteInput,
        output_schema = types.DeleteRouteOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}",
    }, options)
end

function Client:deleteRouteRequestParameter(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteRequestParameter",
        input_schema = types.DeleteRouteRequestParameterInput,
        output_schema = types.DeleteRouteRequestParameterOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/requestparameters/{RequestParameterKey}",
    }, options)
end

function Client:deleteRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteResponse",
        input_schema = types.DeleteRouteResponseInput,
        output_schema = types.DeleteRouteResponseOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}",
    }, options)
end

function Client:deleteRouteSettings(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRouteSettings",
        input_schema = types.DeleteRouteSettingsInput,
        output_schema = types.DeleteRouteSettingsOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}/routesettings/{RouteKey}",
    }, options)
end

function Client:deleteRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoutingRule",
        input_schema = types.DeleteRoutingRuleInput,
        output_schema = types.DeleteRoutingRuleOutput,
        http_method = "DELETE",
        http_path = "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}",
    }, options)
end

function Client:deleteStage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStage",
        input_schema = types.DeleteStageInput,
        output_schema = types.DeleteStageOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}",
    }, options)
end

function Client:deleteVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVpcLink",
        input_schema = types.DeleteVpcLinkInput,
        output_schema = types.DeleteVpcLinkOutput,
        http_method = "DELETE",
        http_path = "/v2/vpclinks/{VpcLinkId}",
    }, options)
end

function Client:disablePortal(input, options)
    return self:invokeOperation(input, {
        name = "DisablePortal",
        input_schema = types.DisablePortalInput,
        output_schema = types.DisablePortalOutput,
        http_method = "DELETE",
        http_path = "/v2/portals/{PortalId}/publish",
    }, options)
end

function Client:exportApi(input, options)
    return self:invokeOperation(input, {
        name = "ExportApi",
        input_schema = types.ExportApiInput,
        output_schema = types.ExportApiOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/exports/{Specification}",
    }, options)
end

function Client:getApi(input, options)
    return self:invokeOperation(input, {
        name = "GetApi",
        input_schema = types.GetApiInput,
        output_schema = types.GetApiOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}",
    }, options)
end

function Client:getApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "GetApiMapping",
        input_schema = types.GetApiMappingInput,
        output_schema = types.GetApiMappingOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}",
    }, options)
end

function Client:getApiMappings(input, options)
    return self:invokeOperation(input, {
        name = "GetApiMappings",
        input_schema = types.GetApiMappingsInput,
        output_schema = types.GetApiMappingsOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/apimappings",
    }, options)
end

function Client:getApis(input, options)
    return self:invokeOperation(input, {
        name = "GetApis",
        input_schema = types.GetApisInput,
        output_schema = types.GetApisOutput,
        http_method = "GET",
        http_path = "/v2/apis",
    }, options)
end

function Client:getAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizer",
        input_schema = types.GetAuthorizerInput,
        output_schema = types.GetAuthorizerOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/authorizers/{AuthorizerId}",
    }, options)
end

function Client:getAuthorizers(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthorizers",
        input_schema = types.GetAuthorizersInput,
        output_schema = types.GetAuthorizersOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/authorizers",
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/deployments/{DeploymentId}",
    }, options)
end

function Client:getDeployments(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployments",
        input_schema = types.GetDeploymentsInput,
        output_schema = types.GetDeploymentsOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/deployments",
    }, options)
end

function Client:getDomainName(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainName",
        input_schema = types.GetDomainNameInput,
        output_schema = types.GetDomainNameOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}",
    }, options)
end

function Client:getDomainNames(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainNames",
        input_schema = types.GetDomainNamesInput,
        output_schema = types.GetDomainNamesOutput,
        http_method = "GET",
        http_path = "/v2/domainnames",
    }, options)
end

function Client:getIntegration(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegration",
        input_schema = types.GetIntegrationInput,
        output_schema = types.GetIntegrationOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}",
    }, options)
end

function Client:getIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationResponse",
        input_schema = types.GetIntegrationResponseInput,
        output_schema = types.GetIntegrationResponseOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}",
    }, options)
end

function Client:getIntegrationResponses(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrationResponses",
        input_schema = types.GetIntegrationResponsesInput,
        output_schema = types.GetIntegrationResponsesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses",
    }, options)
end

function Client:getIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "GetIntegrations",
        input_schema = types.GetIntegrationsInput,
        output_schema = types.GetIntegrationsOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/integrations",
    }, options)
end

function Client:getModel(input, options)
    return self:invokeOperation(input, {
        name = "GetModel",
        input_schema = types.GetModelInput,
        output_schema = types.GetModelOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/models/{ModelId}",
    }, options)
end

function Client:getModels(input, options)
    return self:invokeOperation(input, {
        name = "GetModels",
        input_schema = types.GetModelsInput,
        output_schema = types.GetModelsOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/models",
    }, options)
end

function Client:getModelTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetModelTemplate",
        input_schema = types.GetModelTemplateInput,
        output_schema = types.GetModelTemplateOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/models/{ModelId}/template",
    }, options)
end

function Client:getPortal(input, options)
    return self:invokeOperation(input, {
        name = "GetPortal",
        input_schema = types.GetPortalInput,
        output_schema = types.GetPortalOutput,
        http_method = "GET",
        http_path = "/v2/portals/{PortalId}",
    }, options)
end

function Client:getPortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "GetPortalProduct",
        input_schema = types.GetPortalProductInput,
        output_schema = types.GetPortalProductOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}",
    }, options)
end

function Client:getPortalProductSharingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetPortalProductSharingPolicy",
        input_schema = types.GetPortalProductSharingPolicyInput,
        output_schema = types.GetPortalProductSharingPolicyOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/sharingpolicy",
    }, options)
end

function Client:getProductPage(input, options)
    return self:invokeOperation(input, {
        name = "GetProductPage",
        input_schema = types.GetProductPageInput,
        output_schema = types.GetProductPageOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages/{ProductPageId}",
    }, options)
end

function Client:getProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "GetProductRestEndpointPage",
        input_schema = types.GetProductRestEndpointPageInput,
        output_schema = types.GetProductRestEndpointPageOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages/{ProductRestEndpointPageId}",
    }, options)
end

function Client:getRoute(input, options)
    return self:invokeOperation(input, {
        name = "GetRoute",
        input_schema = types.GetRouteInput,
        output_schema = types.GetRouteOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}",
    }, options)
end

function Client:getRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteResponse",
        input_schema = types.GetRouteResponseInput,
        output_schema = types.GetRouteResponseOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}",
    }, options)
end

function Client:getRouteResponses(input, options)
    return self:invokeOperation(input, {
        name = "GetRouteResponses",
        input_schema = types.GetRouteResponsesInput,
        output_schema = types.GetRouteResponsesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses",
    }, options)
end

function Client:getRoutes(input, options)
    return self:invokeOperation(input, {
        name = "GetRoutes",
        input_schema = types.GetRoutesInput,
        output_schema = types.GetRoutesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/routes",
    }, options)
end

function Client:getRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRoutingRule",
        input_schema = types.GetRoutingRuleInput,
        output_schema = types.GetRoutingRuleOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}",
    }, options)
end

function Client:getStage(input, options)
    return self:invokeOperation(input, {
        name = "GetStage",
        input_schema = types.GetStageInput,
        output_schema = types.GetStageOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}",
    }, options)
end

function Client:getStages(input, options)
    return self:invokeOperation(input, {
        name = "GetStages",
        input_schema = types.GetStagesInput,
        output_schema = types.GetStagesOutput,
        http_method = "GET",
        http_path = "/v2/apis/{ApiId}/stages",
    }, options)
end

function Client:getTags(input, options)
    return self:invokeOperation(input, {
        name = "GetTags",
        input_schema = types.GetTagsInput,
        output_schema = types.GetTagsOutput,
        http_method = "GET",
        http_path = "/v2/tags/{ResourceArn}",
    }, options)
end

function Client:getVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcLink",
        input_schema = types.GetVpcLinkInput,
        output_schema = types.GetVpcLinkOutput,
        http_method = "GET",
        http_path = "/v2/vpclinks/{VpcLinkId}",
    }, options)
end

function Client:getVpcLinks(input, options)
    return self:invokeOperation(input, {
        name = "GetVpcLinks",
        input_schema = types.GetVpcLinksInput,
        output_schema = types.GetVpcLinksOutput,
        http_method = "GET",
        http_path = "/v2/vpclinks",
    }, options)
end

function Client:importApi(input, options)
    return self:invokeOperation(input, {
        name = "ImportApi",
        input_schema = types.ImportApiInput,
        output_schema = types.ImportApiOutput,
        http_method = "PUT",
        http_path = "/v2/apis",
    }, options)
end

function Client:listPortalProducts(input, options)
    return self:invokeOperation(input, {
        name = "ListPortalProducts",
        input_schema = types.ListPortalProductsInput,
        output_schema = types.ListPortalProductsOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts",
    }, options)
end

function Client:listPortals(input, options)
    return self:invokeOperation(input, {
        name = "ListPortals",
        input_schema = types.ListPortalsInput,
        output_schema = types.ListPortalsOutput,
        http_method = "GET",
        http_path = "/v2/portals",
    }, options)
end

function Client:listProductPages(input, options)
    return self:invokeOperation(input, {
        name = "ListProductPages",
        input_schema = types.ListProductPagesInput,
        output_schema = types.ListProductPagesOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages",
    }, options)
end

function Client:listProductRestEndpointPages(input, options)
    return self:invokeOperation(input, {
        name = "ListProductRestEndpointPages",
        input_schema = types.ListProductRestEndpointPagesInput,
        output_schema = types.ListProductRestEndpointPagesOutput,
        http_method = "GET",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages",
    }, options)
end

function Client:listRoutingRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingRules",
        input_schema = types.ListRoutingRulesInput,
        output_schema = types.ListRoutingRulesOutput,
        http_method = "GET",
        http_path = "/v2/domainnames/{DomainName}/routingrules",
    }, options)
end

function Client:previewPortal(input, options)
    return self:invokeOperation(input, {
        name = "PreviewPortal",
        input_schema = types.PreviewPortalInput,
        output_schema = types.PreviewPortalOutput,
        http_method = "POST",
        http_path = "/v2/portals/{PortalId}/preview",
    }, options)
end

function Client:publishPortal(input, options)
    return self:invokeOperation(input, {
        name = "PublishPortal",
        input_schema = types.PublishPortalInput,
        output_schema = types.PublishPortalOutput,
        http_method = "POST",
        http_path = "/v2/portals/{PortalId}/publish",
    }, options)
end

function Client:putPortalProductSharingPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutPortalProductSharingPolicy",
        input_schema = types.PutPortalProductSharingPolicyInput,
        output_schema = types.PutPortalProductSharingPolicyOutput,
        http_method = "PUT",
        http_path = "/v2/portalproducts/{PortalProductId}/sharingpolicy",
    }, options)
end

function Client:putRoutingRule(input, options)
    return self:invokeOperation(input, {
        name = "PutRoutingRule",
        input_schema = types.PutRoutingRuleInput,
        output_schema = types.PutRoutingRuleOutput,
        http_method = "PUT",
        http_path = "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}",
    }, options)
end

function Client:reimportApi(input, options)
    return self:invokeOperation(input, {
        name = "ReimportApi",
        input_schema = types.ReimportApiInput,
        output_schema = types.ReimportApiOutput,
        http_method = "PUT",
        http_path = "/v2/apis/{ApiId}",
    }, options)
end

function Client:resetAuthorizersCache(input, options)
    return self:invokeOperation(input, {
        name = "ResetAuthorizersCache",
        input_schema = types.ResetAuthorizersCacheInput,
        output_schema = types.ResetAuthorizersCacheOutput,
        http_method = "DELETE",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}/cache/authorizers",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v2/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v2/tags/{ResourceArn}",
    }, options)
end

function Client:updateApi(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApi",
        input_schema = types.UpdateApiInput,
        output_schema = types.UpdateApiOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}",
    }, options)
end

function Client:updateApiMapping(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApiMapping",
        input_schema = types.UpdateApiMappingInput,
        output_schema = types.UpdateApiMappingOutput,
        http_method = "PATCH",
        http_path = "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}",
    }, options)
end

function Client:updateAuthorizer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthorizer",
        input_schema = types.UpdateAuthorizerInput,
        output_schema = types.UpdateAuthorizerOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/authorizers/{AuthorizerId}",
    }, options)
end

function Client:updateDeployment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeployment",
        input_schema = types.UpdateDeploymentInput,
        output_schema = types.UpdateDeploymentOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/deployments/{DeploymentId}",
    }, options)
end

function Client:updateDomainName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomainName",
        input_schema = types.UpdateDomainNameInput,
        output_schema = types.UpdateDomainNameOutput,
        http_method = "PATCH",
        http_path = "/v2/domainnames/{DomainName}",
    }, options)
end

function Client:updateIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegration",
        input_schema = types.UpdateIntegrationInput,
        output_schema = types.UpdateIntegrationOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}",
    }, options)
end

function Client:updateIntegrationResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegrationResponse",
        input_schema = types.UpdateIntegrationResponseInput,
        output_schema = types.UpdateIntegrationResponseOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}",
    }, options)
end

function Client:updateModel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModel",
        input_schema = types.UpdateModelInput,
        output_schema = types.UpdateModelOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/models/{ModelId}",
    }, options)
end

function Client:updatePortal(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortal",
        input_schema = types.UpdatePortalInput,
        output_schema = types.UpdatePortalOutput,
        http_method = "PATCH",
        http_path = "/v2/portals/{PortalId}",
    }, options)
end

function Client:updatePortalProduct(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortalProduct",
        input_schema = types.UpdatePortalProductInput,
        output_schema = types.UpdatePortalProductOutput,
        http_method = "PATCH",
        http_path = "/v2/portalproducts/{PortalProductId}",
    }, options)
end

function Client:updateProductPage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProductPage",
        input_schema = types.UpdateProductPageInput,
        output_schema = types.UpdateProductPageOutput,
        http_method = "PATCH",
        http_path = "/v2/portalproducts/{PortalProductId}/productpages/{ProductPageId}",
    }, options)
end

function Client:updateProductRestEndpointPage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProductRestEndpointPage",
        input_schema = types.UpdateProductRestEndpointPageInput,
        output_schema = types.UpdateProductRestEndpointPageOutput,
        http_method = "PATCH",
        http_path = "/v2/portalproducts/{PortalProductId}/productrestendpointpages/{ProductRestEndpointPageId}",
    }, options)
end

function Client:updateRoute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoute",
        input_schema = types.UpdateRouteInput,
        output_schema = types.UpdateRouteOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}",
    }, options)
end

function Client:updateRouteResponse(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRouteResponse",
        input_schema = types.UpdateRouteResponseInput,
        output_schema = types.UpdateRouteResponseOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}",
    }, options)
end

function Client:updateStage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStage",
        input_schema = types.UpdateStageInput,
        output_schema = types.UpdateStageOutput,
        http_method = "PATCH",
        http_path = "/v2/apis/{ApiId}/stages/{StageName}",
    }, options)
end

function Client:updateVpcLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateVpcLink",
        input_schema = types.UpdateVpcLinkInput,
        output_schema = types.UpdateVpcLinkOutput,
        http_method = "PATCH",
        http_path = "/v2/vpclinks/{VpcLinkId}",
    }, options)
end

return M
