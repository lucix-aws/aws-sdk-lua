



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("apigateway.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("apigateway.schemas")
local traits = require("smithy.traits")
local types = require("apigateway.types")
local sdk_defaults = require("aws.sdk_defaults")


































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "BackplaneControlService"
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

function C:createApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApiKey, input, options)
end

function C:createAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAuthorizer, input, options)
end

function C:createBasePathMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBasePathMapping, input, options)
end

function C:createDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeployment, input, options)
end

function C:createDocumentationPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDocumentationPart, input, options)
end

function C:createDocumentationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDocumentationVersion, input, options)
end

function C:createDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainName, input, options)
end

function C:createDomainNameAccessAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomainNameAccessAssociation, input, options)
end

function C:createModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModel, input, options)
end

function C:createRequestValidator(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRequestValidator, input, options)
end

function C:createResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateResource, input, options)
end

function C:createRestApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRestApi, input, options)
end

function C:createStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStage, input, options)
end

function C:createUsagePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUsagePlan, input, options)
end

function C:createUsagePlanKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUsagePlanKey, input, options)
end

function C:createVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateVpcLink, input, options)
end

function C:deleteApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApiKey, input, options)
end

function C:deleteAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAuthorizer, input, options)
end

function C:deleteBasePathMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBasePathMapping, input, options)
end

function C:deleteClientCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClientCertificate, input, options)
end

function C:deleteDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeployment, input, options)
end

function C:deleteDocumentationPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDocumentationPart, input, options)
end

function C:deleteDocumentationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDocumentationVersion, input, options)
end

function C:deleteDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainName, input, options)
end

function C:deleteDomainNameAccessAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomainNameAccessAssociation, input, options)
end

function C:deleteGatewayResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteGatewayResponse, input, options)
end

function C:deleteIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegration, input, options)
end

function C:deleteIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIntegrationResponse, input, options)
end

function C:deleteMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMethod, input, options)
end

function C:deleteMethodResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMethodResponse, input, options)
end

function C:deleteModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModel, input, options)
end

function C:deleteRequestValidator(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRequestValidator, input, options)
end

function C:deleteResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResource, input, options)
end

function C:deleteRestApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRestApi, input, options)
end

function C:deleteStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStage, input, options)
end

function C:deleteUsagePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUsagePlan, input, options)
end

function C:deleteUsagePlanKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUsagePlanKey, input, options)
end

function C:deleteVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteVpcLink, input, options)
end

function C:flushStageAuthorizersCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.FlushStageAuthorizersCache, input, options)
end

function C:flushStageCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.FlushStageCache, input, options)
end

function C:generateClientCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GenerateClientCertificate, input, options)
end

function C:getAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccount, input, options)
end

function C:getApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiKey, input, options)
end

function C:getApiKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetApiKeys, input, options)
end

function C:getAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizer, input, options)
end

function C:getAuthorizers(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAuthorizers, input, options)
end

function C:getBasePathMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBasePathMapping, input, options)
end

function C:getBasePathMappings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBasePathMappings, input, options)
end

function C:getClientCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClientCertificate, input, options)
end

function C:getClientCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetClientCertificates, input, options)
end

function C:getDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployment, input, options)
end

function C:getDeployments(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeployments, input, options)
end

function C:getDocumentationPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentationPart, input, options)
end

function C:getDocumentationParts(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentationParts, input, options)
end

function C:getDocumentationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentationVersion, input, options)
end

function C:getDocumentationVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDocumentationVersions, input, options)
end

function C:getDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainName, input, options)
end

function C:getDomainNameAccessAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainNameAccessAssociations, input, options)
end

function C:getDomainNames(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDomainNames, input, options)
end

function C:getExport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetExport, input, options)
end

function C:getGatewayResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGatewayResponse, input, options)
end

function C:getGatewayResponses(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetGatewayResponses, input, options)
end

function C:getIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegration, input, options)
end

function C:getIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetIntegrationResponse, input, options)
end

function C:getMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMethod, input, options)
end

function C:getMethodResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMethodResponse, input, options)
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

function C:getRequestValidator(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRequestValidator, input, options)
end

function C:getRequestValidators(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRequestValidators, input, options)
end

function C:getResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResource, input, options)
end

function C:getResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResources, input, options)
end

function C:getRestApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRestApi, input, options)
end

function C:getRestApis(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetRestApis, input, options)
end

function C:getSdk(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSdk, input, options)
end

function C:getSdkType(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSdkType, input, options)
end

function C:getSdkTypes(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSdkTypes, input, options)
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

function C:getUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsage, input, options)
end

function C:getUsagePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsagePlan, input, options)
end

function C:getUsagePlanKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsagePlanKey, input, options)
end

function C:getUsagePlanKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsagePlanKeys, input, options)
end

function C:getUsagePlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUsagePlans, input, options)
end

function C:getVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcLink, input, options)
end

function C:getVpcLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetVpcLinks, input, options)
end

function C:importApiKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportApiKeys, input, options)
end

function C:importDocumentationParts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportDocumentationParts, input, options)
end

function C:importRestApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportRestApi, input, options)
end

function C:putGatewayResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutGatewayResponse, input, options)
end

function C:putIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIntegration, input, options)
end

function C:putIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutIntegrationResponse, input, options)
end

function C:putMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMethod, input, options)
end

function C:putMethodResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMethodResponse, input, options)
end

function C:putRestApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutRestApi, input, options)
end

function C:rejectDomainNameAccessAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectDomainNameAccessAssociation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testInvokeAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestInvokeAuthorizer, input, options)
end

function C:testInvokeMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestInvokeMethod, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccount, input, options)
end

function C:updateApiKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateApiKey, input, options)
end

function C:updateAuthorizer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAuthorizer, input, options)
end

function C:updateBasePathMapping(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBasePathMapping, input, options)
end

function C:updateClientCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClientCertificate, input, options)
end

function C:updateDeployment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeployment, input, options)
end

function C:updateDocumentationPart(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocumentationPart, input, options)
end

function C:updateDocumentationVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDocumentationVersion, input, options)
end

function C:updateDomainName(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomainName, input, options)
end

function C:updateGatewayResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateGatewayResponse, input, options)
end

function C:updateIntegration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegration, input, options)
end

function C:updateIntegrationResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateIntegrationResponse, input, options)
end

function C:updateMethod(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMethod, input, options)
end

function C:updateMethodResponse(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMethodResponse, input, options)
end

function C:updateModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModel, input, options)
end

function C:updateRequestValidator(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRequestValidator, input, options)
end

function C:updateResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateResource, input, options)
end

function C:updateRestApi(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRestApi, input, options)
end

function C:updateStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStage, input, options)
end

function C:updateUsage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUsage, input, options)
end

function C:updateUsagePlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUsagePlan, input, options)
end

function C:updateVpcLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateVpcLink, input, options)
end

return M
