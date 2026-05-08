



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("imagebuilder.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("imagebuilder.schemas")
local traits = require("smithy.traits")
local types = require("imagebuilder.types")
local sdk_defaults = require("aws.sdk_defaults")



















































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "imagebuilder"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "imagebuilder", signing_region = c.region } }
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

function C:cancelImageCreation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelImageCreation, input, options)
end

function C:cancelLifecycleExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.CancelLifecycleExecution, input, options)
end

function C:createComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComponent, input, options)
end

function C:createContainerRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContainerRecipe, input, options)
end

function C:createDistributionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDistributionConfiguration, input, options)
end

function C:createImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImage, input, options)
end

function C:createImagePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImagePipeline, input, options)
end

function C:createImageRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImageRecipe, input, options)
end

function C:createInfrastructureConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInfrastructureConfiguration, input, options)
end

function C:createLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLifecyclePolicy, input, options)
end

function C:createWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflow, input, options)
end

function C:deleteComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComponent, input, options)
end

function C:deleteContainerRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContainerRecipe, input, options)
end

function C:deleteDistributionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDistributionConfiguration, input, options)
end

function C:deleteImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImage, input, options)
end

function C:deleteImagePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImagePipeline, input, options)
end

function C:deleteImageRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImageRecipe, input, options)
end

function C:deleteInfrastructureConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInfrastructureConfiguration, input, options)
end

function C:deleteLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLifecyclePolicy, input, options)
end

function C:deleteWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflow, input, options)
end

function C:distributeImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DistributeImage, input, options)
end

function C:getComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComponent, input, options)
end

function C:getComponentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetComponentPolicy, input, options)
end

function C:getContainerRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerRecipe, input, options)
end

function C:getContainerRecipePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetContainerRecipePolicy, input, options)
end

function C:getDistributionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDistributionConfiguration, input, options)
end

function C:getImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImage, input, options)
end

function C:getImagePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImagePipeline, input, options)
end

function C:getImagePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImagePolicy, input, options)
end

function C:getImageRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageRecipe, input, options)
end

function C:getImageRecipePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetImageRecipePolicy, input, options)
end

function C:getInfrastructureConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetInfrastructureConfiguration, input, options)
end

function C:getLifecycleExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLifecycleExecution, input, options)
end

function C:getLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLifecyclePolicy, input, options)
end

function C:getMarketplaceResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMarketplaceResource, input, options)
end

function C:getWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflow, input, options)
end

function C:getWorkflowExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowExecution, input, options)
end

function C:getWorkflowStepExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowStepExecution, input, options)
end

function C:importComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportComponent, input, options)
end

function C:importDiskImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportDiskImage, input, options)
end

function C:importVmImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportVmImage, input, options)
end

function C:listComponentBuildVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponentBuildVersions, input, options)
end

function C:listComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComponents, input, options)
end

function C:listContainerRecipes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContainerRecipes, input, options)
end

function C:listDistributionConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDistributionConfigurations, input, options)
end

function C:listImageBuildVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageBuildVersions, input, options)
end

function C:listImagePackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImagePackages, input, options)
end

function C:listImagePipelineImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImagePipelineImages, input, options)
end

function C:listImagePipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImagePipelines, input, options)
end

function C:listImageRecipes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageRecipes, input, options)
end

function C:listImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImages, input, options)
end

function C:listImageScanFindingAggregations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageScanFindingAggregations, input, options)
end

function C:listImageScanFindings(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageScanFindings, input, options)
end

function C:listInfrastructureConfigurations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInfrastructureConfigurations, input, options)
end

function C:listLifecycleExecutionResources(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLifecycleExecutionResources, input, options)
end

function C:listLifecycleExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLifecycleExecutions, input, options)
end

function C:listLifecyclePolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLifecyclePolicies, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listWaitingWorkflowSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWaitingWorkflowSteps, input, options)
end

function C:listWorkflowBuildVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowBuildVersions, input, options)
end

function C:listWorkflowExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowExecutions, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:listWorkflowStepExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowStepExecutions, input, options)
end

function C:putComponentPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutComponentPolicy, input, options)
end

function C:putContainerRecipePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutContainerRecipePolicy, input, options)
end

function C:putImagePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutImagePolicy, input, options)
end

function C:putImageRecipePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutImageRecipePolicy, input, options)
end

function C:retryImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryImage, input, options)
end

function C:sendWorkflowStepAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendWorkflowStepAction, input, options)
end

function C:startImagePipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartImagePipelineExecution, input, options)
end

function C:startResourceStateUpdate(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartResourceStateUpdate, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDistributionConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDistributionConfiguration, input, options)
end

function C:updateImagePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImagePipeline, input, options)
end

function C:updateInfrastructureConfiguration(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInfrastructureConfiguration, input, options)
end

function C:updateLifecyclePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLifecyclePolicy, input, options)
end

return M
