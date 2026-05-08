



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("apigatewayv2.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("apigatewayv2.schemas")
local traits = require("smithy.traits")
local types = require("apigatewayv2.types")
local sdk_defaults = require("aws.sdk_defaults")













































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "ApiGatewayV2"
   if not c.protocol then c.protocol = restjson_protocol.new() end
   if not c.endpoint_provider then
      c.endpoint_provider = function(params)
         return endpoint.resolve(endpoint_rules, params)
      end
   end
   if not c.auth_scheme_resolver then
      c.auth_scheme_resolver = function(_service, operation)
         local auth_trait = operation:trait(traits.AUTH) or _service:trait(traits.AUTH)
         local options = {}
         for _, scheme in ipairs(auth_trait or {}) do
            local scheme_id = scheme.scheme_id or scheme
            if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "apigateway", signing_region = c.region } }
            else
               options[#options + 1] = { scheme_id = scheme_id }
            end
         end
         return options
      end
   end
   defaults.resolve_auth_schemes(c)
   defaults.resolve_identity_resolvers(c)
   defaults.resolve_http_client(c)
   defaults.resolve_retry_strategy(c)
   sdk_defaults.resolve_identity_resolver(c)
   local self = setmetatable(base_client.new(c), Client_mt)
   return self
end

function C:createApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApi, input, options)
end

function C:createApiMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApiMapping, input, options)
end

function C:createAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAuthorizer, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:createDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainName, input, options)
end

function C:createIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegration, input, options)
end

function C:createIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIntegrationResponse, input, options)
end

function C:createModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModel, input, options)
end

function C:createPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePortal, input, options)
end

function C:createPortalProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePortalProduct, input, options)
end

function C:createProductPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProductPage, input, options)
end

function C:createProductRestEndpointPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProductRestEndpointPage, input, options)
end

function C:createRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoute, input, options)
end

function C:createRouteResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRouteResponse, input, options)
end

function C:createRoutingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRoutingRule, input, options)
end

function C:createStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStage, input, options)
end

function C:createVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcLink, input, options)
end

function C:deleteAccessLogSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessLogSettings, input, options)
end

function C:deleteApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApi, input, options)
end

function C:deleteApiMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApiMapping, input, options)
end

function C:deleteAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAuthorizer, input, options)
end

function C:deleteCorsConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCorsConfiguration, input, options)
end

function C:deleteDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeployment, input, options)
end

function C:deleteDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainName, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegrationResponse, input, options)
end

function C:deleteModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModel, input, options)
end

function C:deletePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortal, input, options)
end

function C:deletePortalProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortalProduct, input, options)
end

function C:deletePortalProductSharingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortalProductSharingPolicy, input, options)
end

function C:deleteProductPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProductPage, input, options)
end

function C:deleteProductRestEndpointPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProductRestEndpointPage, input, options)
end

function C:deleteRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoute, input, options)
end

function C:deleteRouteRequestParameter(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteRequestParameter, input, options)
end

function C:deleteRouteResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteResponse, input, options)
end

function C:deleteRouteSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRouteSettings, input, options)
end

function C:deleteRoutingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRoutingRule, input, options)
end

function C:deleteStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStage, input, options)
end

function C:deleteVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcLink, input, options)
end

function C:disablePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisablePortal, input, options)
end

function C:exportApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExportApi, input, options)
end

function C:getApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApi, input, options)
end

function C:getApiMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiMapping, input, options)
end

function C:getApiMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiMappings, input, options)
end

function C:getApis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApis, input, options)
end

function C:getAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizer, input, options)
end

function C:getAuthorizers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizers, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployments, input, options)
end

function C:getDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainName, input, options)
end

function C:getDomainNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainNames, input, options)
end

function C:getIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegration, input, options)
end

function C:getIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegrationResponse, input, options)
end

function C:getIntegrationResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegrationResponses, input, options)
end

function C:getIntegrations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegrations, input, options)
end

function C:getModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModel, input, options)
end

function C:getModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModels, input, options)
end

function C:getModelTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelTemplate, input, options)
end

function C:getPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortal, input, options)
end

function C:getPortalProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortalProduct, input, options)
end

function C:getPortalProductSharingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetPortalProductSharingPolicy, input, options)
end

function C:getProductPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProductPage, input, options)
end

function C:getProductRestEndpointPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProductRestEndpointPage, input, options)
end

function C:getRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRoute, input, options)
end

function C:getRouteResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouteResponse, input, options)
end

function C:getRouteResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRouteResponses, input, options)
end

function C:getRoutes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRoutes, input, options)
end

function C:getRoutingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRoutingRule, input, options)
end

function C:getStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStage, input, options)
end

function C:getStages(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStages, input, options)
end

function C:getTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTags, input, options)
end

function C:getVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcLink, input, options)
end

function C:getVpcLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcLinks, input, options)
end

function C:importApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportApi, input, options)
end

function C:listPortalProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortalProducts, input, options)
end

function C:listPortals(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortals, input, options)
end

function C:listProductPages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProductPages, input, options)
end

function C:listProductRestEndpointPages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProductRestEndpointPages, input, options)
end

function C:listRoutingRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRoutingRules, input, options)
end

function C:previewPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.PreviewPortal, input, options)
end

function C:publishPortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishPortal, input, options)
end

function C:putPortalProductSharingPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutPortalProductSharingPolicy, input, options)
end

function C:putRoutingRule(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRoutingRule, input, options)
end

function C:reimportApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.ReimportApi, input, options)
end

function C:resetAuthorizersCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.ResetAuthorizersCache, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApi, input, options)
end

function C:updateApiMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApiMapping, input, options)
end

function C:updateAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAuthorizer, input, options)
end

function C:updateDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeployment, input, options)
end

function C:updateDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainName, input, options)
end

function C:updateIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegration, input, options)
end

function C:updateIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegrationResponse, input, options)
end

function C:updateModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModel, input, options)
end

function C:updatePortal(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePortal, input, options)
end

function C:updatePortalProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePortalProduct, input, options)
end

function C:updateProductPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProductPage, input, options)
end

function C:updateProductRestEndpointPage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProductRestEndpointPage, input, options)
end

function C:updateRoute(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRoute, input, options)
end

function C:updateRouteResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRouteResponse, input, options)
end

function C:updateStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStage, input, options)
end

function C:updateVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcLink, input, options)
end

return M
