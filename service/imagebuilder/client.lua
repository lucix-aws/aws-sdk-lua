local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("imagebuilder.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("imagebuilder.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "imagebuilder"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "imagebuilder", signing_region = cfg.region } }
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

function Client:cancelImageCreation(input, options)
    return self:invokeOperation(input, {
        name = "CancelImageCreation",
        input_schema = schemas.CancelImageCreationInput,
        output_schema = schemas.CancelImageCreationOutput,
        http_method = "PUT",
        http_path = "/CancelImageCreation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelLifecycleExecution(input, options)
    return self:invokeOperation(input, {
        name = "CancelLifecycleExecution",
        input_schema = schemas.CancelLifecycleExecutionInput,
        output_schema = schemas.CancelLifecycleExecutionOutput,
        http_method = "PUT",
        http_path = "/CancelLifecycleExecution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateComponent",
        input_schema = schemas.CreateComponentInput,
        output_schema = schemas.CreateComponentOutput,
        http_method = "PUT",
        http_path = "/CreateComponent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContainerRecipe(input, options)
    return self:invokeOperation(input, {
        name = "CreateContainerRecipe",
        input_schema = schemas.CreateContainerRecipeInput,
        output_schema = schemas.CreateContainerRecipeOutput,
        http_method = "PUT",
        http_path = "/CreateContainerRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDistributionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateDistributionConfiguration",
        input_schema = schemas.CreateDistributionConfigurationInput,
        output_schema = schemas.CreateDistributionConfigurationOutput,
        http_method = "PUT",
        http_path = "/CreateDistributionConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateImage",
        input_schema = schemas.CreateImageInput,
        output_schema = schemas.CreateImageOutput,
        http_method = "PUT",
        http_path = "/CreateImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImagePipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreateImagePipeline",
        input_schema = schemas.CreateImagePipelineInput,
        output_schema = schemas.CreateImagePipelineOutput,
        http_method = "PUT",
        http_path = "/CreateImagePipeline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImageRecipe(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageRecipe",
        input_schema = schemas.CreateImageRecipeInput,
        output_schema = schemas.CreateImageRecipeOutput,
        http_method = "PUT",
        http_path = "/CreateImageRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInfrastructureConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateInfrastructureConfiguration",
        input_schema = schemas.CreateInfrastructureConfigurationInput,
        output_schema = schemas.CreateInfrastructureConfigurationOutput,
        http_method = "PUT",
        http_path = "/CreateInfrastructureConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateLifecyclePolicy",
        input_schema = schemas.CreateLifecyclePolicyInput,
        output_schema = schemas.CreateLifecyclePolicyOutput,
        http_method = "PUT",
        http_path = "/CreateLifecyclePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = schemas.CreateWorkflowInput,
        output_schema = schemas.CreateWorkflowOutput,
        http_method = "PUT",
        http_path = "/CreateWorkflow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComponent",
        input_schema = schemas.DeleteComponentInput,
        output_schema = schemas.DeleteComponentOutput,
        http_method = "DELETE",
        http_path = "/DeleteComponent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContainerRecipe(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContainerRecipe",
        input_schema = schemas.DeleteContainerRecipeInput,
        output_schema = schemas.DeleteContainerRecipeOutput,
        http_method = "DELETE",
        http_path = "/DeleteContainerRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDistributionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDistributionConfiguration",
        input_schema = schemas.DeleteDistributionConfigurationInput,
        output_schema = schemas.DeleteDistributionConfigurationOutput,
        http_method = "DELETE",
        http_path = "/DeleteDistributionConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImage",
        input_schema = schemas.DeleteImageInput,
        output_schema = schemas.DeleteImageOutput,
        http_method = "DELETE",
        http_path = "/DeleteImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImagePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImagePipeline",
        input_schema = schemas.DeleteImagePipelineInput,
        output_schema = schemas.DeleteImagePipelineOutput,
        http_method = "DELETE",
        http_path = "/DeleteImagePipeline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImageRecipe(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImageRecipe",
        input_schema = schemas.DeleteImageRecipeInput,
        output_schema = schemas.DeleteImageRecipeOutput,
        http_method = "DELETE",
        http_path = "/DeleteImageRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInfrastructureConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInfrastructureConfiguration",
        input_schema = schemas.DeleteInfrastructureConfigurationInput,
        output_schema = schemas.DeleteInfrastructureConfigurationOutput,
        http_method = "DELETE",
        http_path = "/DeleteInfrastructureConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLifecyclePolicy",
        input_schema = schemas.DeleteLifecyclePolicyInput,
        output_schema = schemas.DeleteLifecyclePolicyOutput,
        http_method = "DELETE",
        http_path = "/DeleteLifecyclePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = schemas.DeleteWorkflowInput,
        output_schema = schemas.DeleteWorkflowOutput,
        http_method = "DELETE",
        http_path = "/DeleteWorkflow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:distributeImage(input, options)
    return self:invokeOperation(input, {
        name = "DistributeImage",
        input_schema = schemas.DistributeImageInput,
        output_schema = schemas.DistributeImageOutput,
        http_method = "PUT",
        http_path = "/DistributeImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponent(input, options)
    return self:invokeOperation(input, {
        name = "GetComponent",
        input_schema = schemas.GetComponentInput,
        output_schema = schemas.GetComponentOutput,
        http_method = "GET",
        http_path = "/GetComponent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getComponentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetComponentPolicy",
        input_schema = schemas.GetComponentPolicyInput,
        output_schema = schemas.GetComponentPolicyOutput,
        http_method = "GET",
        http_path = "/GetComponentPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerRecipe(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerRecipe",
        input_schema = schemas.GetContainerRecipeInput,
        output_schema = schemas.GetContainerRecipeOutput,
        http_method = "GET",
        http_path = "/GetContainerRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContainerRecipePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetContainerRecipePolicy",
        input_schema = schemas.GetContainerRecipePolicyInput,
        output_schema = schemas.GetContainerRecipePolicyOutput,
        http_method = "GET",
        http_path = "/GetContainerRecipePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDistributionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetDistributionConfiguration",
        input_schema = schemas.GetDistributionConfigurationInput,
        output_schema = schemas.GetDistributionConfigurationOutput,
        http_method = "GET",
        http_path = "/GetDistributionConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImage(input, options)
    return self:invokeOperation(input, {
        name = "GetImage",
        input_schema = schemas.GetImageInput,
        output_schema = schemas.GetImageOutput,
        http_method = "GET",
        http_path = "/GetImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImagePipeline(input, options)
    return self:invokeOperation(input, {
        name = "GetImagePipeline",
        input_schema = schemas.GetImagePipelineInput,
        output_schema = schemas.GetImagePipelineOutput,
        http_method = "GET",
        http_path = "/GetImagePipeline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImagePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetImagePolicy",
        input_schema = schemas.GetImagePolicyInput,
        output_schema = schemas.GetImagePolicyOutput,
        http_method = "GET",
        http_path = "/GetImagePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImageRecipe(input, options)
    return self:invokeOperation(input, {
        name = "GetImageRecipe",
        input_schema = schemas.GetImageRecipeInput,
        output_schema = schemas.GetImageRecipeOutput,
        http_method = "GET",
        http_path = "/GetImageRecipe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImageRecipePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetImageRecipePolicy",
        input_schema = schemas.GetImageRecipePolicyInput,
        output_schema = schemas.GetImageRecipePolicyOutput,
        http_method = "GET",
        http_path = "/GetImageRecipePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInfrastructureConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetInfrastructureConfiguration",
        input_schema = schemas.GetInfrastructureConfigurationInput,
        output_schema = schemas.GetInfrastructureConfigurationOutput,
        http_method = "GET",
        http_path = "/GetInfrastructureConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLifecycleExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecycleExecution",
        input_schema = schemas.GetLifecycleExecutionInput,
        output_schema = schemas.GetLifecycleExecutionOutput,
        http_method = "GET",
        http_path = "/GetLifecycleExecution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLifecyclePolicy",
        input_schema = schemas.GetLifecyclePolicyInput,
        output_schema = schemas.GetLifecyclePolicyOutput,
        http_method = "GET",
        http_path = "/GetLifecyclePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMarketplaceResource(input, options)
    return self:invokeOperation(input, {
        name = "GetMarketplaceResource",
        input_schema = schemas.GetMarketplaceResourceInput,
        output_schema = schemas.GetMarketplaceResourceOutput,
        http_method = "POST",
        http_path = "/GetMarketplaceResource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflow",
        input_schema = schemas.GetWorkflowInput,
        output_schema = schemas.GetWorkflowOutput,
        http_method = "GET",
        http_path = "/GetWorkflow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowExecution",
        input_schema = schemas.GetWorkflowExecutionInput,
        output_schema = schemas.GetWorkflowExecutionOutput,
        http_method = "GET",
        http_path = "/GetWorkflowExecution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkflowStepExecution(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkflowStepExecution",
        input_schema = schemas.GetWorkflowStepExecutionInput,
        output_schema = schemas.GetWorkflowStepExecutionOutput,
        http_method = "GET",
        http_path = "/GetWorkflowStepExecution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importComponent(input, options)
    return self:invokeOperation(input, {
        name = "ImportComponent",
        input_schema = schemas.ImportComponentInput,
        output_schema = schemas.ImportComponentOutput,
        http_method = "PUT",
        http_path = "/ImportComponent",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importDiskImage(input, options)
    return self:invokeOperation(input, {
        name = "ImportDiskImage",
        input_schema = schemas.ImportDiskImageInput,
        output_schema = schemas.ImportDiskImageOutput,
        http_method = "PUT",
        http_path = "/ImportDiskImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importVmImage(input, options)
    return self:invokeOperation(input, {
        name = "ImportVmImage",
        input_schema = schemas.ImportVmImageInput,
        output_schema = schemas.ImportVmImageOutput,
        http_method = "PUT",
        http_path = "/ImportVmImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponentBuildVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListComponentBuildVersions",
        input_schema = schemas.ListComponentBuildVersionsInput,
        output_schema = schemas.ListComponentBuildVersionsOutput,
        http_method = "POST",
        http_path = "/ListComponentBuildVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListComponents",
        input_schema = schemas.ListComponentsInput,
        output_schema = schemas.ListComponentsOutput,
        http_method = "POST",
        http_path = "/ListComponents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContainerRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListContainerRecipes",
        input_schema = schemas.ListContainerRecipesInput,
        output_schema = schemas.ListContainerRecipesOutput,
        http_method = "POST",
        http_path = "/ListContainerRecipes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDistributionConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListDistributionConfigurations",
        input_schema = schemas.ListDistributionConfigurationsInput,
        output_schema = schemas.ListDistributionConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListDistributionConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImageBuildVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListImageBuildVersions",
        input_schema = schemas.ListImageBuildVersionsInput,
        output_schema = schemas.ListImageBuildVersionsOutput,
        http_method = "POST",
        http_path = "/ListImageBuildVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImagePackages(input, options)
    return self:invokeOperation(input, {
        name = "ListImagePackages",
        input_schema = schemas.ListImagePackagesInput,
        output_schema = schemas.ListImagePackagesOutput,
        http_method = "POST",
        http_path = "/ListImagePackages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImagePipelineImages(input, options)
    return self:invokeOperation(input, {
        name = "ListImagePipelineImages",
        input_schema = schemas.ListImagePipelineImagesInput,
        output_schema = schemas.ListImagePipelineImagesOutput,
        http_method = "POST",
        http_path = "/ListImagePipelineImages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImagePipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListImagePipelines",
        input_schema = schemas.ListImagePipelinesInput,
        output_schema = schemas.ListImagePipelinesOutput,
        http_method = "POST",
        http_path = "/ListImagePipelines",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImageRecipes(input, options)
    return self:invokeOperation(input, {
        name = "ListImageRecipes",
        input_schema = schemas.ListImageRecipesInput,
        output_schema = schemas.ListImageRecipesOutput,
        http_method = "POST",
        http_path = "/ListImageRecipes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImages(input, options)
    return self:invokeOperation(input, {
        name = "ListImages",
        input_schema = schemas.ListImagesInput,
        output_schema = schemas.ListImagesOutput,
        http_method = "POST",
        http_path = "/ListImages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImageScanFindingAggregations(input, options)
    return self:invokeOperation(input, {
        name = "ListImageScanFindingAggregations",
        input_schema = schemas.ListImageScanFindingAggregationsInput,
        output_schema = schemas.ListImageScanFindingAggregationsOutput,
        http_method = "POST",
        http_path = "/ListImageScanFindingAggregations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImageScanFindings(input, options)
    return self:invokeOperation(input, {
        name = "ListImageScanFindings",
        input_schema = schemas.ListImageScanFindingsInput,
        output_schema = schemas.ListImageScanFindingsOutput,
        http_method = "POST",
        http_path = "/ListImageScanFindings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInfrastructureConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListInfrastructureConfigurations",
        input_schema = schemas.ListInfrastructureConfigurationsInput,
        output_schema = schemas.ListInfrastructureConfigurationsOutput,
        http_method = "POST",
        http_path = "/ListInfrastructureConfigurations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLifecycleExecutionResources(input, options)
    return self:invokeOperation(input, {
        name = "ListLifecycleExecutionResources",
        input_schema = schemas.ListLifecycleExecutionResourcesInput,
        output_schema = schemas.ListLifecycleExecutionResourcesOutput,
        http_method = "POST",
        http_path = "/ListLifecycleExecutionResources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLifecycleExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListLifecycleExecutions",
        input_schema = schemas.ListLifecycleExecutionsInput,
        output_schema = schemas.ListLifecycleExecutionsOutput,
        http_method = "POST",
        http_path = "/ListLifecycleExecutions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLifecyclePolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListLifecyclePolicies",
        input_schema = schemas.ListLifecyclePoliciesInput,
        output_schema = schemas.ListLifecyclePoliciesOutput,
        http_method = "POST",
        http_path = "/ListLifecyclePolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWaitingWorkflowSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListWaitingWorkflowSteps",
        input_schema = schemas.ListWaitingWorkflowStepsInput,
        output_schema = schemas.ListWaitingWorkflowStepsOutput,
        http_method = "POST",
        http_path = "/ListWaitingWorkflowSteps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowBuildVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowBuildVersions",
        input_schema = schemas.ListWorkflowBuildVersionsInput,
        output_schema = schemas.ListWorkflowBuildVersionsOutput,
        http_method = "POST",
        http_path = "/ListWorkflowBuildVersions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowExecutions",
        input_schema = schemas.ListWorkflowExecutionsInput,
        output_schema = schemas.ListWorkflowExecutionsOutput,
        http_method = "POST",
        http_path = "/ListWorkflowExecutions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = schemas.ListWorkflowsInput,
        output_schema = schemas.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/ListWorkflows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflowStepExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflowStepExecutions",
        input_schema = schemas.ListWorkflowStepExecutionsInput,
        output_schema = schemas.ListWorkflowStepExecutionsOutput,
        http_method = "POST",
        http_path = "/ListWorkflowStepExecutions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putComponentPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutComponentPolicy",
        input_schema = schemas.PutComponentPolicyInput,
        output_schema = schemas.PutComponentPolicyOutput,
        http_method = "PUT",
        http_path = "/PutComponentPolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putContainerRecipePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutContainerRecipePolicy",
        input_schema = schemas.PutContainerRecipePolicyInput,
        output_schema = schemas.PutContainerRecipePolicyOutput,
        http_method = "PUT",
        http_path = "/PutContainerRecipePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putImagePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutImagePolicy",
        input_schema = schemas.PutImagePolicyInput,
        output_schema = schemas.PutImagePolicyOutput,
        http_method = "PUT",
        http_path = "/PutImagePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putImageRecipePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutImageRecipePolicy",
        input_schema = schemas.PutImageRecipePolicyInput,
        output_schema = schemas.PutImageRecipePolicyOutput,
        http_method = "PUT",
        http_path = "/PutImageRecipePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryImage(input, options)
    return self:invokeOperation(input, {
        name = "RetryImage",
        input_schema = schemas.RetryImageInput,
        output_schema = schemas.RetryImageOutput,
        http_method = "PUT",
        http_path = "/RetryImage",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendWorkflowStepAction(input, options)
    return self:invokeOperation(input, {
        name = "SendWorkflowStepAction",
        input_schema = schemas.SendWorkflowStepActionInput,
        output_schema = schemas.SendWorkflowStepActionOutput,
        http_method = "PUT",
        http_path = "/SendWorkflowStepAction",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImagePipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartImagePipelineExecution",
        input_schema = schemas.StartImagePipelineExecutionInput,
        output_schema = schemas.StartImagePipelineExecutionOutput,
        http_method = "PUT",
        http_path = "/StartImagePipelineExecution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startResourceStateUpdate(input, options)
    return self:invokeOperation(input, {
        name = "StartResourceStateUpdate",
        input_schema = schemas.StartResourceStateUpdateInput,
        output_schema = schemas.StartResourceStateUpdateOutput,
        http_method = "PUT",
        http_path = "/StartResourceStateUpdate",
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
        http_path = "/tags/{resourceArn}",
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

function Client:updateDistributionConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDistributionConfiguration",
        input_schema = schemas.UpdateDistributionConfigurationInput,
        output_schema = schemas.UpdateDistributionConfigurationOutput,
        http_method = "PUT",
        http_path = "/UpdateDistributionConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImagePipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImagePipeline",
        input_schema = schemas.UpdateImagePipelineInput,
        output_schema = schemas.UpdateImagePipelineOutput,
        http_method = "PUT",
        http_path = "/UpdateImagePipeline",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInfrastructureConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInfrastructureConfiguration",
        input_schema = schemas.UpdateInfrastructureConfigurationInput,
        output_schema = schemas.UpdateInfrastructureConfigurationOutput,
        http_method = "PUT",
        http_path = "/UpdateInfrastructureConfiguration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLifecyclePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLifecyclePolicy",
        input_schema = schemas.UpdateLifecyclePolicyInput,
        output_schema = schemas.UpdateLifecyclePolicyOutput,
        http_method = "PUT",
        http_path = "/UpdateLifecyclePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
