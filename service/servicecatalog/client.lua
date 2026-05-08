



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("servicecatalog.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("servicecatalog.schemas")
local traits = require("smithy.traits")
local types = require("servicecatalog.types")
local sdk_defaults = require("aws.sdk_defaults")
































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWS242ServiceCatalogService"
   if not c.protocol then c.protocol = awsjson_protocol.new({ version = "1.1", service_id = c.service_id }) end
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicecatalog", signing_region = c.region } }
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

function C:acceptPortfolioShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptPortfolioShare, input, options)
end

function C:associateBudgetWithResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateBudgetWithResource, input, options)
end

function C:associatePrincipalWithPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociatePrincipalWithPortfolio, input, options)
end

function C:associateProductWithPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateProductWithPortfolio, input, options)
end

function C:associateServiceActionWithProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateServiceActionWithProvisioningArtifact, input, options)
end

function C:associateTagOptionWithResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTagOptionWithResource, input, options)
end

function C:batchAssociateServiceActionWithProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAssociateServiceActionWithProvisioningArtifact, input, options)
end

function C:batchDisassociateServiceActionFromProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDisassociateServiceActionFromProvisioningArtifact, input, options)
end

function C:copyProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyProduct, input, options)
end

function C:createConstraint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConstraint, input, options)
end

function C:createPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePortfolio, input, options)
end

function C:createPortfolioShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePortfolioShare, input, options)
end

function C:createProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProduct, input, options)
end

function C:createProvisionedProductPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisionedProductPlan, input, options)
end

function C:createProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProvisioningArtifact, input, options)
end

function C:createServiceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServiceAction, input, options)
end

function C:createTagOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTagOption, input, options)
end

function C:deleteConstraint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConstraint, input, options)
end

function C:deletePortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortfolio, input, options)
end

function C:deletePortfolioShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePortfolioShare, input, options)
end

function C:deleteProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProduct, input, options)
end

function C:deleteProvisionedProductPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisionedProductPlan, input, options)
end

function C:deleteProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProvisioningArtifact, input, options)
end

function C:deleteServiceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServiceAction, input, options)
end

function C:deleteTagOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTagOption, input, options)
end

function C:describeConstraint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConstraint, input, options)
end

function C:describeCopyProductStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCopyProductStatus, input, options)
end

function C:describePortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePortfolio, input, options)
end

function C:describePortfolioShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePortfolioShares, input, options)
end

function C:describePortfolioShareStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePortfolioShareStatus, input, options)
end

function C:describeProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProduct, input, options)
end

function C:describeProductAsAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProductAsAdmin, input, options)
end

function C:describeProductView(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProductView, input, options)
end

function C:describeProvisionedProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProvisionedProduct, input, options)
end

function C:describeProvisionedProductPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProvisionedProductPlan, input, options)
end

function C:describeProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProvisioningArtifact, input, options)
end

function C:describeProvisioningParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProvisioningParameters, input, options)
end

function C:describeRecord(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecord, input, options)
end

function C:describeServiceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceAction, input, options)
end

function C:describeServiceActionExecutionParameters(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServiceActionExecutionParameters, input, options)
end

function C:describeTagOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTagOption, input, options)
end

function C:disableAWSOrganizationsAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableAWSOrganizationsAccess, input, options)
end

function C:disassociateBudgetFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateBudgetFromResource, input, options)
end

function C:disassociatePrincipalFromPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociatePrincipalFromPortfolio, input, options)
end

function C:disassociateProductFromPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateProductFromPortfolio, input, options)
end

function C:disassociateServiceActionFromProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateServiceActionFromProvisioningArtifact, input, options)
end

function C:disassociateTagOptionFromResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTagOptionFromResource, input, options)
end

function C:enableAWSOrganizationsAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableAWSOrganizationsAccess, input, options)
end

function C:executeProvisionedProductPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteProvisionedProductPlan, input, options)
end

function C:executeProvisionedProductServiceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExecuteProvisionedProductServiceAction, input, options)
end

function C:getAWSOrganizationsAccessStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAWSOrganizationsAccessStatus, input, options)
end

function C:getProvisionedProductOutputs(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProvisionedProductOutputs, input, options)
end

function C:importAsProvisionedProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportAsProvisionedProduct, input, options)
end

function C:listAcceptedPortfolioShares(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAcceptedPortfolioShares, input, options)
end

function C:listBudgetsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBudgetsForResource, input, options)
end

function C:listConstraintsForPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConstraintsForPortfolio, input, options)
end

function C:listLaunchPaths(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLaunchPaths, input, options)
end

function C:listOrganizationPortfolioAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOrganizationPortfolioAccess, input, options)
end

function C:listPortfolioAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortfolioAccess, input, options)
end

function C:listPortfolios(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortfolios, input, options)
end

function C:listPortfoliosForProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPortfoliosForProduct, input, options)
end

function C:listPrincipalsForPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPrincipalsForPortfolio, input, options)
end

function C:listProvisionedProductPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisionedProductPlans, input, options)
end

function C:listProvisioningArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisioningArtifacts, input, options)
end

function C:listProvisioningArtifactsForServiceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProvisioningArtifactsForServiceAction, input, options)
end

function C:listRecordHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecordHistory, input, options)
end

function C:listResourcesForTagOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourcesForTagOption, input, options)
end

function C:listServiceActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceActions, input, options)
end

function C:listServiceActionsForProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServiceActionsForProvisioningArtifact, input, options)
end

function C:listStackInstancesForProvisionedProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStackInstancesForProvisionedProduct, input, options)
end

function C:listTagOptions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagOptions, input, options)
end

function C:notifyProvisionProductEngineWorkflowResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyProvisionProductEngineWorkflowResult, input, options)
end

function C:notifyTerminateProvisionedProductEngineWorkflowResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyTerminateProvisionedProductEngineWorkflowResult, input, options)
end

function C:notifyUpdateProvisionedProductEngineWorkflowResult(input, options)
   return self:invokeOperation(schemas.Service, schemas.NotifyUpdateProvisionedProductEngineWorkflowResult, input, options)
end

function C:provisionProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.ProvisionProduct, input, options)
end

function C:rejectPortfolioShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectPortfolioShare, input, options)
end

function C:scanProvisionedProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ScanProvisionedProducts, input, options)
end

function C:searchProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchProducts, input, options)
end

function C:searchProductsAsAdmin(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchProductsAsAdmin, input, options)
end

function C:searchProvisionedProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchProvisionedProducts, input, options)
end

function C:terminateProvisionedProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateProvisionedProduct, input, options)
end

function C:updateConstraint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConstraint, input, options)
end

function C:updatePortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePortfolio, input, options)
end

function C:updatePortfolioShare(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePortfolioShare, input, options)
end

function C:updateProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProduct, input, options)
end

function C:updateProvisionedProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProvisionedProduct, input, options)
end

function C:updateProvisionedProductProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProvisionedProductProperties, input, options)
end

function C:updateProvisioningArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProvisioningArtifact, input, options)
end

function C:updateServiceAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServiceAction, input, options)
end

function C:updateTagOption(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTagOption, input, options)
end

return M
