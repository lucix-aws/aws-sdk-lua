local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("servicecatalog.endpoint_rules")
local schemas = require("servicecatalog.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWS242ServiceCatalogService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "servicecatalog", signing_region = cfg.region } }
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

function Client:acceptPortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "AcceptPortfolioShare",
        input_schema = schemas.AcceptPortfolioShareInput,
        output_schema = schemas.AcceptPortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateBudgetWithResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBudgetWithResource",
        input_schema = schemas.AssociateBudgetWithResourceInput,
        output_schema = schemas.AssociateBudgetWithResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePrincipalWithPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePrincipalWithPortfolio",
        input_schema = schemas.AssociatePrincipalWithPortfolioInput,
        output_schema = schemas.AssociatePrincipalWithPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateProductWithPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProductWithPortfolio",
        input_schema = schemas.AssociateProductWithPortfolioInput,
        output_schema = schemas.AssociateProductWithPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateServiceActionWithProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "AssociateServiceActionWithProvisioningArtifact",
        input_schema = schemas.AssociateServiceActionWithProvisioningArtifactInput,
        output_schema = schemas.AssociateServiceActionWithProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTagOptionWithResource(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTagOptionWithResource",
        input_schema = schemas.AssociateTagOptionWithResourceInput,
        output_schema = schemas.AssociateTagOptionWithResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateServiceActionWithProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateServiceActionWithProvisioningArtifact",
        input_schema = schemas.BatchAssociateServiceActionWithProvisioningArtifactInput,
        output_schema = schemas.BatchAssociateServiceActionWithProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateServiceActionFromProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateServiceActionFromProvisioningArtifact",
        input_schema = schemas.BatchDisassociateServiceActionFromProvisioningArtifactInput,
        output_schema = schemas.BatchDisassociateServiceActionFromProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyProduct(input, options)
    return self:invokeOperation(input, {
        name = "CopyProduct",
        input_schema = schemas.CopyProductInput,
        output_schema = schemas.CopyProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConstraint(input, options)
    return self:invokeOperation(input, {
        name = "CreateConstraint",
        input_schema = schemas.CreateConstraintInput,
        output_schema = schemas.CreateConstraintOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortfolio",
        input_schema = schemas.CreatePortfolioInput,
        output_schema = schemas.CreatePortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "CreatePortfolioShare",
        input_schema = schemas.CreatePortfolioShareInput,
        output_schema = schemas.CreatePortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProduct(input, options)
    return self:invokeOperation(input, {
        name = "CreateProduct",
        input_schema = schemas.CreateProductInput,
        output_schema = schemas.CreateProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisionedProductPlan",
        input_schema = schemas.CreateProvisionedProductPlanInput,
        output_schema = schemas.CreateProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "CreateProvisioningArtifact",
        input_schema = schemas.CreateProvisioningArtifactInput,
        output_schema = schemas.CreateProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceAction",
        input_schema = schemas.CreateServiceActionInput,
        output_schema = schemas.CreateServiceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTagOption(input, options)
    return self:invokeOperation(input, {
        name = "CreateTagOption",
        input_schema = schemas.CreateTagOptionInput,
        output_schema = schemas.CreateTagOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConstraint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConstraint",
        input_schema = schemas.DeleteConstraintInput,
        output_schema = schemas.DeleteConstraintOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortfolio",
        input_schema = schemas.DeletePortfolioInput,
        output_schema = schemas.DeletePortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "DeletePortfolioShare",
        input_schema = schemas.DeletePortfolioShareInput,
        output_schema = schemas.DeletePortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProduct",
        input_schema = schemas.DeleteProductInput,
        output_schema = schemas.DeleteProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisionedProductPlan",
        input_schema = schemas.DeleteProvisionedProductPlanInput,
        output_schema = schemas.DeleteProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProvisioningArtifact",
        input_schema = schemas.DeleteProvisioningArtifactInput,
        output_schema = schemas.DeleteProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceAction",
        input_schema = schemas.DeleteServiceActionInput,
        output_schema = schemas.DeleteServiceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTagOption(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTagOption",
        input_schema = schemas.DeleteTagOptionInput,
        output_schema = schemas.DeleteTagOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConstraint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConstraint",
        input_schema = schemas.DescribeConstraintInput,
        output_schema = schemas.DescribeConstraintOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCopyProductStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCopyProductStatus",
        input_schema = schemas.DescribeCopyProductStatusInput,
        output_schema = schemas.DescribeCopyProductStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortfolio",
        input_schema = schemas.DescribePortfolioInput,
        output_schema = schemas.DescribePortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePortfolioShares(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortfolioShares",
        input_schema = schemas.DescribePortfolioSharesInput,
        output_schema = schemas.DescribePortfolioSharesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePortfolioShareStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribePortfolioShareStatus",
        input_schema = schemas.DescribePortfolioShareStatusInput,
        output_schema = schemas.DescribePortfolioShareStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProduct(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProduct",
        input_schema = schemas.DescribeProductInput,
        output_schema = schemas.DescribeProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProductAsAdmin(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProductAsAdmin",
        input_schema = schemas.DescribeProductAsAdminInput,
        output_schema = schemas.DescribeProductAsAdminOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProductView(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProductView",
        input_schema = schemas.DescribeProductViewInput,
        output_schema = schemas.DescribeProductViewOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisionedProduct",
        input_schema = schemas.DescribeProvisionedProductInput,
        output_schema = schemas.DescribeProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisionedProductPlan",
        input_schema = schemas.DescribeProvisionedProductPlanInput,
        output_schema = schemas.DescribeProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningArtifact",
        input_schema = schemas.DescribeProvisioningArtifactInput,
        output_schema = schemas.DescribeProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProvisioningParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProvisioningParameters",
        input_schema = schemas.DescribeProvisioningParametersInput,
        output_schema = schemas.DescribeProvisioningParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRecord(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecord",
        input_schema = schemas.DescribeRecordInput,
        output_schema = schemas.DescribeRecordOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceAction",
        input_schema = schemas.DescribeServiceActionInput,
        output_schema = schemas.DescribeServiceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServiceActionExecutionParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServiceActionExecutionParameters",
        input_schema = schemas.DescribeServiceActionExecutionParametersInput,
        output_schema = schemas.DescribeServiceActionExecutionParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTagOption(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTagOption",
        input_schema = schemas.DescribeTagOptionInput,
        output_schema = schemas.DescribeTagOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAWSOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableAWSOrganizationsAccess",
        input_schema = schemas.DisableAWSOrganizationsAccessInput,
        output_schema = schemas.DisableAWSOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateBudgetFromResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBudgetFromResource",
        input_schema = schemas.DisassociateBudgetFromResourceInput,
        output_schema = schemas.DisassociateBudgetFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePrincipalFromPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePrincipalFromPortfolio",
        input_schema = schemas.DisassociatePrincipalFromPortfolioInput,
        output_schema = schemas.DisassociatePrincipalFromPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateProductFromPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProductFromPortfolio",
        input_schema = schemas.DisassociateProductFromPortfolioInput,
        output_schema = schemas.DisassociateProductFromPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateServiceActionFromProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateServiceActionFromProvisioningArtifact",
        input_schema = schemas.DisassociateServiceActionFromProvisioningArtifactInput,
        output_schema = schemas.DisassociateServiceActionFromProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTagOptionFromResource(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTagOptionFromResource",
        input_schema = schemas.DisassociateTagOptionFromResourceInput,
        output_schema = schemas.DisassociateTagOptionFromResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAWSOrganizationsAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableAWSOrganizationsAccess",
        input_schema = schemas.EnableAWSOrganizationsAccessInput,
        output_schema = schemas.EnableAWSOrganizationsAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeProvisionedProductPlan(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteProvisionedProductPlan",
        input_schema = schemas.ExecuteProvisionedProductPlanInput,
        output_schema = schemas.ExecuteProvisionedProductPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:executeProvisionedProductServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "ExecuteProvisionedProductServiceAction",
        input_schema = schemas.ExecuteProvisionedProductServiceActionInput,
        output_schema = schemas.ExecuteProvisionedProductServiceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAWSOrganizationsAccessStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetAWSOrganizationsAccessStatus",
        input_schema = schemas.GetAWSOrganizationsAccessStatusInput,
        output_schema = schemas.GetAWSOrganizationsAccessStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProvisionedProductOutputs(input, options)
    return self:invokeOperation(input, {
        name = "GetProvisionedProductOutputs",
        input_schema = schemas.GetProvisionedProductOutputsInput,
        output_schema = schemas.GetProvisionedProductOutputsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importAsProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "ImportAsProvisionedProduct",
        input_schema = schemas.ImportAsProvisionedProductInput,
        output_schema = schemas.ImportAsProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAcceptedPortfolioShares(input, options)
    return self:invokeOperation(input, {
        name = "ListAcceptedPortfolioShares",
        input_schema = schemas.ListAcceptedPortfolioSharesInput,
        output_schema = schemas.ListAcceptedPortfolioSharesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBudgetsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListBudgetsForResource",
        input_schema = schemas.ListBudgetsForResourceInput,
        output_schema = schemas.ListBudgetsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConstraintsForPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "ListConstraintsForPortfolio",
        input_schema = schemas.ListConstraintsForPortfolioInput,
        output_schema = schemas.ListConstraintsForPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLaunchPaths(input, options)
    return self:invokeOperation(input, {
        name = "ListLaunchPaths",
        input_schema = schemas.ListLaunchPathsInput,
        output_schema = schemas.ListLaunchPathsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationPortfolioAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationPortfolioAccess",
        input_schema = schemas.ListOrganizationPortfolioAccessInput,
        output_schema = schemas.ListOrganizationPortfolioAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortfolioAccess(input, options)
    return self:invokeOperation(input, {
        name = "ListPortfolioAccess",
        input_schema = schemas.ListPortfolioAccessInput,
        output_schema = schemas.ListPortfolioAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortfolios(input, options)
    return self:invokeOperation(input, {
        name = "ListPortfolios",
        input_schema = schemas.ListPortfoliosInput,
        output_schema = schemas.ListPortfoliosOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPortfoliosForProduct(input, options)
    return self:invokeOperation(input, {
        name = "ListPortfoliosForProduct",
        input_schema = schemas.ListPortfoliosForProductInput,
        output_schema = schemas.ListPortfoliosForProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrincipalsForPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipalsForPortfolio",
        input_schema = schemas.ListPrincipalsForPortfolioInput,
        output_schema = schemas.ListPrincipalsForPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisionedProductPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisionedProductPlans",
        input_schema = schemas.ListProvisionedProductPlansInput,
        output_schema = schemas.ListProvisionedProductPlansOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisioningArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningArtifacts",
        input_schema = schemas.ListProvisioningArtifactsInput,
        output_schema = schemas.ListProvisioningArtifactsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProvisioningArtifactsForServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "ListProvisioningArtifactsForServiceAction",
        input_schema = schemas.ListProvisioningArtifactsForServiceActionInput,
        output_schema = schemas.ListProvisioningArtifactsForServiceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecordHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListRecordHistory",
        input_schema = schemas.ListRecordHistoryInput,
        output_schema = schemas.ListRecordHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourcesForTagOption(input, options)
    return self:invokeOperation(input, {
        name = "ListResourcesForTagOption",
        input_schema = schemas.ListResourcesForTagOptionInput,
        output_schema = schemas.ListResourcesForTagOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceActions(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceActions",
        input_schema = schemas.ListServiceActionsInput,
        output_schema = schemas.ListServiceActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceActionsForProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceActionsForProvisioningArtifact",
        input_schema = schemas.ListServiceActionsForProvisioningArtifactInput,
        output_schema = schemas.ListServiceActionsForProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStackInstancesForProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "ListStackInstancesForProvisionedProduct",
        input_schema = schemas.ListStackInstancesForProvisionedProductInput,
        output_schema = schemas.ListStackInstancesForProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagOptions(input, options)
    return self:invokeOperation(input, {
        name = "ListTagOptions",
        input_schema = schemas.ListTagOptionsInput,
        output_schema = schemas.ListTagOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyProvisionProductEngineWorkflowResult(input, options)
    return self:invokeOperation(input, {
        name = "NotifyProvisionProductEngineWorkflowResult",
        input_schema = schemas.NotifyProvisionProductEngineWorkflowResultInput,
        output_schema = schemas.NotifyProvisionProductEngineWorkflowResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyTerminateProvisionedProductEngineWorkflowResult(input, options)
    return self:invokeOperation(input, {
        name = "NotifyTerminateProvisionedProductEngineWorkflowResult",
        input_schema = schemas.NotifyTerminateProvisionedProductEngineWorkflowResultInput,
        output_schema = schemas.NotifyTerminateProvisionedProductEngineWorkflowResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyUpdateProvisionedProductEngineWorkflowResult(input, options)
    return self:invokeOperation(input, {
        name = "NotifyUpdateProvisionedProductEngineWorkflowResult",
        input_schema = schemas.NotifyUpdateProvisionedProductEngineWorkflowResultInput,
        output_schema = schemas.NotifyUpdateProvisionedProductEngineWorkflowResultOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:provisionProduct(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionProduct",
        input_schema = schemas.ProvisionProductInput,
        output_schema = schemas.ProvisionProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectPortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "RejectPortfolioShare",
        input_schema = schemas.RejectPortfolioShareInput,
        output_schema = schemas.RejectPortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:scanProvisionedProducts(input, options)
    return self:invokeOperation(input, {
        name = "ScanProvisionedProducts",
        input_schema = schemas.ScanProvisionedProductsInput,
        output_schema = schemas.ScanProvisionedProductsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchProducts(input, options)
    return self:invokeOperation(input, {
        name = "SearchProducts",
        input_schema = schemas.SearchProductsInput,
        output_schema = schemas.SearchProductsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchProductsAsAdmin(input, options)
    return self:invokeOperation(input, {
        name = "SearchProductsAsAdmin",
        input_schema = schemas.SearchProductsAsAdminInput,
        output_schema = schemas.SearchProductsAsAdminOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchProvisionedProducts(input, options)
    return self:invokeOperation(input, {
        name = "SearchProvisionedProducts",
        input_schema = schemas.SearchProvisionedProductsInput,
        output_schema = schemas.SearchProvisionedProductsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "TerminateProvisionedProduct",
        input_schema = schemas.TerminateProvisionedProductInput,
        output_schema = schemas.TerminateProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConstraint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConstraint",
        input_schema = schemas.UpdateConstraintInput,
        output_schema = schemas.UpdateConstraintOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePortfolio(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortfolio",
        input_schema = schemas.UpdatePortfolioInput,
        output_schema = schemas.UpdatePortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePortfolioShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePortfolioShare",
        input_schema = schemas.UpdatePortfolioShareInput,
        output_schema = schemas.UpdatePortfolioShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProduct(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProduct",
        input_schema = schemas.UpdateProductInput,
        output_schema = schemas.UpdateProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProvisionedProduct(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisionedProduct",
        input_schema = schemas.UpdateProvisionedProductInput,
        output_schema = schemas.UpdateProvisionedProductOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProvisionedProductProperties(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisionedProductProperties",
        input_schema = schemas.UpdateProvisionedProductPropertiesInput,
        output_schema = schemas.UpdateProvisionedProductPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProvisioningArtifact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProvisioningArtifact",
        input_schema = schemas.UpdateProvisioningArtifactInput,
        output_schema = schemas.UpdateProvisioningArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServiceAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceAction",
        input_schema = schemas.UpdateServiceActionInput,
        output_schema = schemas.UpdateServiceActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTagOption(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTagOption",
        input_schema = schemas.UpdateTagOptionInput,
        output_schema = schemas.UpdateTagOptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
