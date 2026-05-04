local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("servicecatalog.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("servicecatalog.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWS242ServiceCatalogService"
    cfg.signing_name = "servicecatalog"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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

function Client:acceptPortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "AcceptPortfolioShare",
        input_schema = types.AcceptPortfolioShareInput,
        output_schema = types.AcceptPortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateBudgetWithResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBudgetWithResource",
        input_schema = types.AssociateBudgetWithResourceInput,
        output_schema = types.AssociateBudgetWithResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associatePrincipalWithPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePrincipalWithPortfolio",
        input_schema = types.AssociatePrincipalWithPortfolioInput,
        output_schema = types.AssociatePrincipalWithPortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateProductWithPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProductWithPortfolio",
        input_schema = types.AssociateProductWithPortfolioInput,
        output_schema = types.AssociateProductWithPortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateServiceActionWithProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "AssociateServiceActionWithProvisioningArtifact",
        input_schema = types.AssociateServiceActionWithProvisioningArtifactInput,
        output_schema = types.AssociateServiceActionWithProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:associateTagOptionWithResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTagOptionWithResource",
        input_schema = types.AssociateTagOptionWithResourceInput,
        output_schema = types.AssociateTagOptionWithResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchAssociateServiceActionWithProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateServiceActionWithProvisioningArtifact",
        input_schema = types.BatchAssociateServiceActionWithProvisioningArtifactInput,
        output_schema = types.BatchAssociateServiceActionWithProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDisassociateServiceActionFromProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateServiceActionFromProvisioningArtifact",
        input_schema = types.BatchDisassociateServiceActionFromProvisioningArtifactInput,
        output_schema = types.BatchDisassociateServiceActionFromProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:copyProduct(input, options)
    return self:invokeOperation(input, {
        name = "CopyProduct",
        input_schema = types.CopyProductInput,
        output_schema = types.CopyProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createConstraint(input, options)
    return self:invokeOperation(input, {
        name = "CreateConstraint",
        input_schema = types.CreateConstraintInput,
        output_schema = types.CreateConstraintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortfolio",
        input_schema = types.CreatePortfolioInput,
        output_schema = types.CreatePortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createPortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortfolioShare",
        input_schema = types.CreatePortfolioShareInput,
        output_schema = types.CreatePortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProduct(input, options)
    return self:invokeOperation(input, {
        name = "CreateProduct",
        input_schema = types.CreateProductInput,
        output_schema = types.CreateProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisionedProductPlan",
        input_schema = types.CreateProvisionedProductPlanInput,
        output_schema = types.CreateProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningArtifact",
        input_schema = types.CreateProvisioningArtifactInput,
        output_schema = types.CreateProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceAction",
        input_schema = types.CreateServiceActionInput,
        output_schema = types.CreateServiceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createTagOption(input, options)
    return self:invokeOperation(input, {
        name = "CreateTagOption",
        input_schema = types.CreateTagOptionInput,
        output_schema = types.CreateTagOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConstraint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConstraint",
        input_schema = types.DeleteConstraintInput,
        output_schema = types.DeleteConstraintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortfolio",
        input_schema = types.DeletePortfolioInput,
        output_schema = types.DeletePortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deletePortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortfolioShare",
        input_schema = types.DeletePortfolioShareInput,
        output_schema = types.DeletePortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProduct",
        input_schema = types.DeleteProductInput,
        output_schema = types.DeleteProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisionedProductPlan",
        input_schema = types.DeleteProvisionedProductPlanInput,
        output_schema = types.DeleteProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningArtifact",
        input_schema = types.DeleteProvisioningArtifactInput,
        output_schema = types.DeleteProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceAction",
        input_schema = types.DeleteServiceActionInput,
        output_schema = types.DeleteServiceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteTagOption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTagOption",
        input_schema = types.DeleteTagOptionInput,
        output_schema = types.DeleteTagOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConstraint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConstraint",
        input_schema = types.DescribeConstraintInput,
        output_schema = types.DescribeConstraintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCopyProductStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCopyProductStatus",
        input_schema = types.DescribeCopyProductStatusInput,
        output_schema = types.DescribeCopyProductStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortfolio",
        input_schema = types.DescribePortfolioInput,
        output_schema = types.DescribePortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePortfolioShares(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortfolioShares",
        input_schema = types.DescribePortfolioSharesInput,
        output_schema = types.DescribePortfolioSharesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describePortfolioShareStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortfolioShareStatus",
        input_schema = types.DescribePortfolioShareStatusInput,
        output_schema = types.DescribePortfolioShareStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProduct(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProduct",
        input_schema = types.DescribeProductInput,
        output_schema = types.DescribeProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProductAsAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProductAsAdmin",
        input_schema = types.DescribeProductAsAdminInput,
        output_schema = types.DescribeProductAsAdminOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProductView(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProductView",
        input_schema = types.DescribeProductViewInput,
        output_schema = types.DescribeProductViewOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisionedProduct",
        input_schema = types.DescribeProvisionedProductInput,
        output_schema = types.DescribeProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisionedProductPlan",
        input_schema = types.DescribeProvisionedProductPlanInput,
        output_schema = types.DescribeProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningArtifact",
        input_schema = types.DescribeProvisioningArtifactInput,
        output_schema = types.DescribeProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProvisioningParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningParameters",
        input_schema = types.DescribeProvisioningParametersInput,
        output_schema = types.DescribeProvisioningParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeRecord(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecord",
        input_schema = types.DescribeRecordInput,
        output_schema = types.DescribeRecordOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceAction",
        input_schema = types.DescribeServiceActionInput,
        output_schema = types.DescribeServiceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServiceActionExecutionParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceActionExecutionParameters",
        input_schema = types.DescribeServiceActionExecutionParametersInput,
        output_schema = types.DescribeServiceActionExecutionParametersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeTagOption(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTagOption",
        input_schema = types.DescribeTagOptionInput,
        output_schema = types.DescribeTagOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disableAWSOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableAWSOrganizationsAccess",
        input_schema = types.DisableAWSOrganizationsAccessInput,
        output_schema = types.DisableAWSOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateBudgetFromResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBudgetFromResource",
        input_schema = types.DisassociateBudgetFromResourceInput,
        output_schema = types.DisassociateBudgetFromResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociatePrincipalFromPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePrincipalFromPortfolio",
        input_schema = types.DisassociatePrincipalFromPortfolioInput,
        output_schema = types.DisassociatePrincipalFromPortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateProductFromPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProductFromPortfolio",
        input_schema = types.DisassociateProductFromPortfolioInput,
        output_schema = types.DisassociateProductFromPortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateServiceActionFromProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateServiceActionFromProvisioningArtifact",
        input_schema = types.DisassociateServiceActionFromProvisioningArtifactInput,
        output_schema = types.DisassociateServiceActionFromProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:disassociateTagOptionFromResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTagOptionFromResource",
        input_schema = types.DisassociateTagOptionFromResourceInput,
        output_schema = types.DisassociateTagOptionFromResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:enableAWSOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableAWSOrganizationsAccess",
        input_schema = types.EnableAWSOrganizationsAccessInput,
        output_schema = types.EnableAWSOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteProvisionedProductPlan",
        input_schema = types.ExecuteProvisionedProductPlanInput,
        output_schema = types.ExecuteProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:executeProvisionedProductServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteProvisionedProductServiceAction",
        input_schema = types.ExecuteProvisionedProductServiceActionInput,
        output_schema = types.ExecuteProvisionedProductServiceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getAWSOrganizationsAccessStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetAWSOrganizationsAccessStatus",
        input_schema = types.GetAWSOrganizationsAccessStatusInput,
        output_schema = types.GetAWSOrganizationsAccessStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getProvisionedProductOutputs(input, options)
    return self:invokeOperation(input, {
        name = "GetProvisionedProductOutputs",
        input_schema = types.GetProvisionedProductOutputsInput,
        output_schema = types.GetProvisionedProductOutputsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importAsProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "ImportAsProvisionedProduct",
        input_schema = types.ImportAsProvisionedProductInput,
        output_schema = types.ImportAsProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAcceptedPortfolioShares(input, options)
    return self:invokeOperation(input, {
        name = "ListAcceptedPortfolioShares",
        input_schema = types.ListAcceptedPortfolioSharesInput,
        output_schema = types.ListAcceptedPortfolioSharesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBudgetsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListBudgetsForResource",
        input_schema = types.ListBudgetsForResourceInput,
        output_schema = types.ListBudgetsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConstraintsForPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "ListConstraintsForPortfolio",
        input_schema = types.ListConstraintsForPortfolioInput,
        output_schema = types.ListConstraintsForPortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listLaunchPaths(input, options)
    return self:invokeOperation(input, {
        name = "ListLaunchPaths",
        input_schema = types.ListLaunchPathsInput,
        output_schema = types.ListLaunchPathsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOrganizationPortfolioAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationPortfolioAccess",
        input_schema = types.ListOrganizationPortfolioAccessInput,
        output_schema = types.ListOrganizationPortfolioAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPortfolioAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListPortfolioAccess",
        input_schema = types.ListPortfolioAccessInput,
        output_schema = types.ListPortfolioAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPortfolios(input, options)
    return self:invokeOperation(input, {
        name = "ListPortfolios",
        input_schema = types.ListPortfoliosInput,
        output_schema = types.ListPortfoliosOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPortfoliosForProduct(input, options)
    return self:invokeOperation(input, {
        name = "ListPortfoliosForProduct",
        input_schema = types.ListPortfoliosForProductInput,
        output_schema = types.ListPortfoliosForProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listPrincipalsForPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalsForPortfolio",
        input_schema = types.ListPrincipalsForPortfolioInput,
        output_schema = types.ListPrincipalsForPortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProvisionedProductPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisionedProductPlans",
        input_schema = types.ListProvisionedProductPlansInput,
        output_schema = types.ListProvisionedProductPlansOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProvisioningArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningArtifacts",
        input_schema = types.ListProvisioningArtifactsInput,
        output_schema = types.ListProvisioningArtifactsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProvisioningArtifactsForServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningArtifactsForServiceAction",
        input_schema = types.ListProvisioningArtifactsForServiceActionInput,
        output_schema = types.ListProvisioningArtifactsForServiceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listRecordHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListRecordHistory",
        input_schema = types.ListRecordHistoryInput,
        output_schema = types.ListRecordHistoryOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listResourcesForTagOption(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesForTagOption",
        input_schema = types.ListResourcesForTagOptionInput,
        output_schema = types.ListResourcesForTagOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceActions(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceActions",
        input_schema = types.ListServiceActionsInput,
        output_schema = types.ListServiceActionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServiceActionsForProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceActionsForProvisioningArtifact",
        input_schema = types.ListServiceActionsForProvisioningArtifactInput,
        output_schema = types.ListServiceActionsForProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listStackInstancesForProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "ListStackInstancesForProvisionedProduct",
        input_schema = types.ListStackInstancesForProvisionedProductInput,
        output_schema = types.ListStackInstancesForProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListTagOptions",
        input_schema = types.ListTagOptionsInput,
        output_schema = types.ListTagOptionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:notifyProvisionProductEngineWorkflowResult(input, options)
    return self:invokeOperation(input, {
        name = "NotifyProvisionProductEngineWorkflowResult",
        input_schema = types.NotifyProvisionProductEngineWorkflowResultInput,
        output_schema = types.NotifyProvisionProductEngineWorkflowResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:notifyTerminateProvisionedProductEngineWorkflowResult(input, options)
    return self:invokeOperation(input, {
        name = "NotifyTerminateProvisionedProductEngineWorkflowResult",
        input_schema = types.NotifyTerminateProvisionedProductEngineWorkflowResultInput,
        output_schema = types.NotifyTerminateProvisionedProductEngineWorkflowResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:notifyUpdateProvisionedProductEngineWorkflowResult(input, options)
    return self:invokeOperation(input, {
        name = "NotifyUpdateProvisionedProductEngineWorkflowResult",
        input_schema = types.NotifyUpdateProvisionedProductEngineWorkflowResultInput,
        output_schema = types.NotifyUpdateProvisionedProductEngineWorkflowResultOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:provisionProduct(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionProduct",
        input_schema = types.ProvisionProductInput,
        output_schema = types.ProvisionProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:rejectPortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "RejectPortfolioShare",
        input_schema = types.RejectPortfolioShareInput,
        output_schema = types.RejectPortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:scanProvisionedProducts(input, options)
    return self:invokeOperation(input, {
        name = "ScanProvisionedProducts",
        input_schema = types.ScanProvisionedProductsInput,
        output_schema = types.ScanProvisionedProductsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchProducts(input, options)
    return self:invokeOperation(input, {
        name = "SearchProducts",
        input_schema = types.SearchProductsInput,
        output_schema = types.SearchProductsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchProductsAsAdmin(input, options)
    return self:invokeOperation(input, {
        name = "SearchProductsAsAdmin",
        input_schema = types.SearchProductsAsAdminInput,
        output_schema = types.SearchProductsAsAdminOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:searchProvisionedProducts(input, options)
    return self:invokeOperation(input, {
        name = "SearchProvisionedProducts",
        input_schema = types.SearchProvisionedProductsInput,
        output_schema = types.SearchProvisionedProductsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:terminateProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "TerminateProvisionedProduct",
        input_schema = types.TerminateProvisionedProductInput,
        output_schema = types.TerminateProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConstraint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConstraint",
        input_schema = types.UpdateConstraintInput,
        output_schema = types.UpdateConstraintOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePortfolio(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortfolio",
        input_schema = types.UpdatePortfolioInput,
        output_schema = types.UpdatePortfolioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortfolioShare",
        input_schema = types.UpdatePortfolioShareInput,
        output_schema = types.UpdatePortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProduct(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProduct",
        input_schema = types.UpdateProductInput,
        output_schema = types.UpdateProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisionedProduct",
        input_schema = types.UpdateProvisionedProductInput,
        output_schema = types.UpdateProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProvisionedProductProperties(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisionedProductProperties",
        input_schema = types.UpdateProvisionedProductPropertiesInput,
        output_schema = types.UpdateProvisionedProductPropertiesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisioningArtifact",
        input_schema = types.UpdateProvisioningArtifactInput,
        output_schema = types.UpdateProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceAction",
        input_schema = types.UpdateServiceActionInput,
        output_schema = types.UpdateServiceActionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateTagOption(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTagOption",
        input_schema = types.UpdateTagOptionInput,
        output_schema = types.UpdateTagOptionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
