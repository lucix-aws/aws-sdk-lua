local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("imagebuilder.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("imagebuilder.types")

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
        input_schema = types.CancelImageCreationInput,
        output_schema = types.CancelImageCreationOutput,
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
        input_schema = types.CancelLifecycleExecutionInput,
        output_schema = types.CancelLifecycleExecutionOutput,
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
        input_schema = types.CreateComponentInput,
        output_schema = types.CreateComponentOutput,
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
        input_schema = types.CreateContainerRecipeInput,
        output_schema = types.CreateContainerRecipeOutput,
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
        input_schema = types.CreateDistributionConfigurationInput,
        output_schema = types.CreateDistributionConfigurationOutput,
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
        input_schema = types.CreateImageInput,
        output_schema = types.CreateImageOutput,
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
        input_schema = types.CreateImagePipelineInput,
        output_schema = types.CreateImagePipelineOutput,
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
        input_schema = types.CreateImageRecipeInput,
        output_schema = types.CreateImageRecipeOutput,
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
        input_schema = types.CreateInfrastructureConfigurationInput,
        output_schema = types.CreateInfrastructureConfigurationOutput,
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
        input_schema = types.CreateLifecyclePolicyInput,
        output_schema = types.CreateLifecyclePolicyOutput,
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
        input_schema = types.CreateWorkflowInput,
        output_schema = types.CreateWorkflowOutput,
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
        input_schema = types.DeleteComponentInput,
        output_schema = types.DeleteComponentOutput,
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
        input_schema = types.DeleteContainerRecipeInput,
        output_schema = types.DeleteContainerRecipeOutput,
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
        input_schema = types.DeleteDistributionConfigurationInput,
        output_schema = types.DeleteDistributionConfigurationOutput,
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
        input_schema = types.DeleteImageInput,
        output_schema = types.DeleteImageOutput,
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
        input_schema = types.DeleteImagePipelineInput,
        output_schema = types.DeleteImagePipelineOutput,
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
        input_schema = types.DeleteImageRecipeInput,
        output_schema = types.DeleteImageRecipeOutput,
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
        input_schema = types.DeleteInfrastructureConfigurationInput,
        output_schema = types.DeleteInfrastructureConfigurationOutput,
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
        input_schema = types.DeleteLifecyclePolicyInput,
        output_schema = types.DeleteLifecyclePolicyOutput,
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
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
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
        input_schema = types.DistributeImageInput,
        output_schema = types.DistributeImageOutput,
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
        input_schema = types.GetComponentInput,
        output_schema = types.GetComponentOutput,
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
        input_schema = types.GetComponentPolicyInput,
        output_schema = types.GetComponentPolicyOutput,
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
        input_schema = types.GetContainerRecipeInput,
        output_schema = types.GetContainerRecipeOutput,
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
        input_schema = types.GetContainerRecipePolicyInput,
        output_schema = types.GetContainerRecipePolicyOutput,
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
        input_schema = types.GetDistributionConfigurationInput,
        output_schema = types.GetDistributionConfigurationOutput,
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
        input_schema = types.GetImageInput,
        output_schema = types.GetImageOutput,
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
        input_schema = types.GetImagePipelineInput,
        output_schema = types.GetImagePipelineOutput,
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
        input_schema = types.GetImagePolicyInput,
        output_schema = types.GetImagePolicyOutput,
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
        input_schema = types.GetImageRecipeInput,
        output_schema = types.GetImageRecipeOutput,
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
        input_schema = types.GetImageRecipePolicyInput,
        output_schema = types.GetImageRecipePolicyOutput,
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
        input_schema = types.GetInfrastructureConfigurationInput,
        output_schema = types.GetInfrastructureConfigurationOutput,
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
        input_schema = types.GetLifecycleExecutionInput,
        output_schema = types.GetLifecycleExecutionOutput,
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
        input_schema = types.GetLifecyclePolicyInput,
        output_schema = types.GetLifecyclePolicyOutput,
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
        input_schema = types.GetMarketplaceResourceInput,
        output_schema = types.GetMarketplaceResourceOutput,
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
        input_schema = types.GetWorkflowInput,
        output_schema = types.GetWorkflowOutput,
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
        input_schema = types.GetWorkflowExecutionInput,
        output_schema = types.GetWorkflowExecutionOutput,
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
        input_schema = types.GetWorkflowStepExecutionInput,
        output_schema = types.GetWorkflowStepExecutionOutput,
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
        input_schema = types.ImportComponentInput,
        output_schema = types.ImportComponentOutput,
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
        input_schema = types.ImportDiskImageInput,
        output_schema = types.ImportDiskImageOutput,
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
        input_schema = types.ImportVmImageInput,
        output_schema = types.ImportVmImageOutput,
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
        input_schema = types.ListComponentBuildVersionsInput,
        output_schema = types.ListComponentBuildVersionsOutput,
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
        input_schema = types.ListComponentsInput,
        output_schema = types.ListComponentsOutput,
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
        input_schema = types.ListContainerRecipesInput,
        output_schema = types.ListContainerRecipesOutput,
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
        input_schema = types.ListDistributionConfigurationsInput,
        output_schema = types.ListDistributionConfigurationsOutput,
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
        input_schema = types.ListImageBuildVersionsInput,
        output_schema = types.ListImageBuildVersionsOutput,
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
        input_schema = types.ListImagePackagesInput,
        output_schema = types.ListImagePackagesOutput,
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
        input_schema = types.ListImagePipelineImagesInput,
        output_schema = types.ListImagePipelineImagesOutput,
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
        input_schema = types.ListImagePipelinesInput,
        output_schema = types.ListImagePipelinesOutput,
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
        input_schema = types.ListImageRecipesInput,
        output_schema = types.ListImageRecipesOutput,
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
        input_schema = types.ListImagesInput,
        output_schema = types.ListImagesOutput,
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
        input_schema = types.ListImageScanFindingAggregationsInput,
        output_schema = types.ListImageScanFindingAggregationsOutput,
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
        input_schema = types.ListImageScanFindingsInput,
        output_schema = types.ListImageScanFindingsOutput,
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
        input_schema = types.ListInfrastructureConfigurationsInput,
        output_schema = types.ListInfrastructureConfigurationsOutput,
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
        input_schema = types.ListLifecycleExecutionResourcesInput,
        output_schema = types.ListLifecycleExecutionResourcesOutput,
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
        input_schema = types.ListLifecycleExecutionsInput,
        output_schema = types.ListLifecycleExecutionsOutput,
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
        input_schema = types.ListLifecyclePoliciesInput,
        output_schema = types.ListLifecyclePoliciesOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
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
        input_schema = types.ListWaitingWorkflowStepsInput,
        output_schema = types.ListWaitingWorkflowStepsOutput,
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
        input_schema = types.ListWorkflowBuildVersionsInput,
        output_schema = types.ListWorkflowBuildVersionsOutput,
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
        input_schema = types.ListWorkflowExecutionsInput,
        output_schema = types.ListWorkflowExecutionsOutput,
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
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
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
        input_schema = types.ListWorkflowStepExecutionsInput,
        output_schema = types.ListWorkflowStepExecutionsOutput,
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
        input_schema = types.PutComponentPolicyInput,
        output_schema = types.PutComponentPolicyOutput,
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
        input_schema = types.PutContainerRecipePolicyInput,
        output_schema = types.PutContainerRecipePolicyOutput,
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
        input_schema = types.PutImagePolicyInput,
        output_schema = types.PutImagePolicyOutput,
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
        input_schema = types.PutImageRecipePolicyInput,
        output_schema = types.PutImageRecipePolicyOutput,
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
        input_schema = types.RetryImageInput,
        output_schema = types.RetryImageOutput,
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
        input_schema = types.SendWorkflowStepActionInput,
        output_schema = types.SendWorkflowStepActionOutput,
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
        input_schema = types.StartImagePipelineExecutionInput,
        output_schema = types.StartImagePipelineExecutionOutput,
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
        input_schema = types.StartResourceStateUpdateInput,
        output_schema = types.StartResourceStateUpdateOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
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
        input_schema = types.UpdateDistributionConfigurationInput,
        output_schema = types.UpdateDistributionConfigurationOutput,
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
        input_schema = types.UpdateImagePipelineInput,
        output_schema = types.UpdateImagePipelineOutput,
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
        input_schema = types.UpdateInfrastructureConfigurationInput,
        output_schema = types.UpdateInfrastructureConfigurationOutput,
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
        input_schema = types.UpdateLifecyclePolicyInput,
        output_schema = types.UpdateLifecyclePolicyOutput,
        http_method = "PUT",
        http_path = "/UpdateLifecyclePolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
