



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("sagemaker.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("sagemaker.schemas")
local traits = require("smithy.traits")
local types = require("sagemaker.types")
local sdk_defaults = require("aws.sdk_defaults")


















































































































































































































































































































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "SageMaker"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sagemaker", signing_region = c.region } }
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

function C:addAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddAssociation, input, options)
end

function C:addTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.AddTags, input, options)
end

function C:associateTrialComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateTrialComponent, input, options)
end

function C:attachClusterNodeVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.AttachClusterNodeVolume, input, options)
end

function C:batchAddClusterNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchAddClusterNodes, input, options)
end

function C:batchDeleteClusterNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteClusterNodes, input, options)
end

function C:batchDescribeModelPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDescribeModelPackage, input, options)
end

function C:batchRebootClusterNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchRebootClusterNodes, input, options)
end

function C:batchReplaceClusterNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchReplaceClusterNodes, input, options)
end

function C:createAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAction, input, options)
end

function C:createAIBenchmarkJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIBenchmarkJob, input, options)
end

function C:createAIRecommendationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIRecommendationJob, input, options)
end

function C:createAIWorkloadConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAIWorkloadConfig, input, options)
end

function C:createAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAlgorithm, input, options)
end

function C:createApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateApp, input, options)
end

function C:createAppImageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAppImageConfig, input, options)
end

function C:createArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateArtifact, input, options)
end

function C:createAutoMLJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutoMLJob, input, options)
end

function C:createAutoMLJobV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAutoMLJobV2, input, options)
end

function C:createCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCluster, input, options)
end

function C:createClusterSchedulerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateClusterSchedulerConfig, input, options)
end

function C:createCodeRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCodeRepository, input, options)
end

function C:createCompilationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateCompilationJob, input, options)
end

function C:createComputeQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateComputeQuota, input, options)
end

function C:createContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateContext, input, options)
end

function C:createDataQualityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataQualityJobDefinition, input, options)
end

function C:createDeviceFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDeviceFleet, input, options)
end

function C:createDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDomain, input, options)
end

function C:createEdgeDeploymentPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEdgeDeploymentPlan, input, options)
end

function C:createEdgeDeploymentStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEdgeDeploymentStage, input, options)
end

function C:createEdgePackagingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEdgePackagingJob, input, options)
end

function C:createEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpoint, input, options)
end

function C:createEndpointConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateEndpointConfig, input, options)
end

function C:createExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateExperiment, input, options)
end

function C:createFeatureGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFeatureGroup, input, options)
end

function C:createFlowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFlowDefinition, input, options)
end

function C:createHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHub, input, options)
end

function C:createHubContentPresignedUrls(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHubContentPresignedUrls, input, options)
end

function C:createHubContentReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHubContentReference, input, options)
end

function C:createHumanTaskUi(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHumanTaskUi, input, options)
end

function C:createHyperParameterTuningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateHyperParameterTuningJob, input, options)
end

function C:createImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImage, input, options)
end

function C:createImageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateImageVersion, input, options)
end

function C:createInferenceComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInferenceComponent, input, options)
end

function C:createInferenceExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInferenceExperiment, input, options)
end

function C:createInferenceRecommendationsJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateInferenceRecommendationsJob, input, options)
end

function C:createLabelingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLabelingJob, input, options)
end

function C:createMlflowApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMlflowApp, input, options)
end

function C:createMlflowTrackingServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMlflowTrackingServer, input, options)
end

function C:createModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModel, input, options)
end

function C:createModelBiasJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelBiasJobDefinition, input, options)
end

function C:createModelCard(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelCard, input, options)
end

function C:createModelCardExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelCardExportJob, input, options)
end

function C:createModelExplainabilityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelExplainabilityJobDefinition, input, options)
end

function C:createModelPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelPackage, input, options)
end

function C:createModelPackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelPackageGroup, input, options)
end

function C:createModelQualityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateModelQualityJobDefinition, input, options)
end

function C:createMonitoringSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMonitoringSchedule, input, options)
end

function C:createNotebookInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotebookInstance, input, options)
end

function C:createNotebookInstanceLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateNotebookInstanceLifecycleConfig, input, options)
end

function C:createOptimizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateOptimizationJob, input, options)
end

function C:createPartnerApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartnerApp, input, options)
end

function C:createPartnerAppPresignedUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePartnerAppPresignedUrl, input, options)
end

function C:createPipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePipeline, input, options)
end

function C:createPresignedDomainUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePresignedDomainUrl, input, options)
end

function C:createPresignedMlflowAppUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePresignedMlflowAppUrl, input, options)
end

function C:createPresignedMlflowTrackingServerUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePresignedMlflowTrackingServerUrl, input, options)
end

function C:createPresignedNotebookInstanceUrl(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreatePresignedNotebookInstanceUrl, input, options)
end

function C:createProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProcessingJob, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSpace, input, options)
end

function C:createStudioLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStudioLifecycleConfig, input, options)
end

function C:createTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrainingJob, input, options)
end

function C:createTrainingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrainingPlan, input, options)
end

function C:createTransformJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTransformJob, input, options)
end

function C:createTrial(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrial, input, options)
end

function C:createTrialComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTrialComponent, input, options)
end

function C:createUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUserProfile, input, options)
end

function C:createWorkforce(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkforce, input, options)
end

function C:createWorkteam(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkteam, input, options)
end

function C:deleteAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAction, input, options)
end

function C:deleteAIBenchmarkJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIBenchmarkJob, input, options)
end

function C:deleteAIRecommendationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIRecommendationJob, input, options)
end

function C:deleteAIWorkloadConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAIWorkloadConfig, input, options)
end

function C:deleteAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAlgorithm, input, options)
end

function C:deleteApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteApp, input, options)
end

function C:deleteAppImageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAppImageConfig, input, options)
end

function C:deleteArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteArtifact, input, options)
end

function C:deleteAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAssociation, input, options)
end

function C:deleteCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCluster, input, options)
end

function C:deleteClusterSchedulerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClusterSchedulerConfig, input, options)
end

function C:deleteCodeRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCodeRepository, input, options)
end

function C:deleteCompilationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCompilationJob, input, options)
end

function C:deleteComputeQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteComputeQuota, input, options)
end

function C:deleteContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteContext, input, options)
end

function C:deleteDataQualityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataQualityJobDefinition, input, options)
end

function C:deleteDeviceFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDeviceFleet, input, options)
end

function C:deleteDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDomain, input, options)
end

function C:deleteEdgeDeploymentPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEdgeDeploymentPlan, input, options)
end

function C:deleteEdgeDeploymentStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEdgeDeploymentStage, input, options)
end

function C:deleteEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpoint, input, options)
end

function C:deleteEndpointConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteEndpointConfig, input, options)
end

function C:deleteExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteExperiment, input, options)
end

function C:deleteFeatureGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFeatureGroup, input, options)
end

function C:deleteFlowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFlowDefinition, input, options)
end

function C:deleteHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHub, input, options)
end

function C:deleteHubContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHubContent, input, options)
end

function C:deleteHubContentReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHubContentReference, input, options)
end

function C:deleteHumanTaskUi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHumanTaskUi, input, options)
end

function C:deleteHyperParameterTuningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHyperParameterTuningJob, input, options)
end

function C:deleteImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImage, input, options)
end

function C:deleteImageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteImageVersion, input, options)
end

function C:deleteInferenceComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInferenceComponent, input, options)
end

function C:deleteInferenceExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteInferenceExperiment, input, options)
end

function C:deleteMlflowApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMlflowApp, input, options)
end

function C:deleteMlflowTrackingServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMlflowTrackingServer, input, options)
end

function C:deleteModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModel, input, options)
end

function C:deleteModelBiasJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelBiasJobDefinition, input, options)
end

function C:deleteModelCard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelCard, input, options)
end

function C:deleteModelExplainabilityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelExplainabilityJobDefinition, input, options)
end

function C:deleteModelPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelPackage, input, options)
end

function C:deleteModelPackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelPackageGroup, input, options)
end

function C:deleteModelPackageGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelPackageGroupPolicy, input, options)
end

function C:deleteModelQualityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteModelQualityJobDefinition, input, options)
end

function C:deleteMonitoringSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMonitoringSchedule, input, options)
end

function C:deleteNotebookInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotebookInstance, input, options)
end

function C:deleteNotebookInstanceLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteNotebookInstanceLifecycleConfig, input, options)
end

function C:deleteOptimizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteOptimizationJob, input, options)
end

function C:deletePartnerApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePartnerApp, input, options)
end

function C:deletePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeletePipeline, input, options)
end

function C:deleteProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProcessingJob, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSpace, input, options)
end

function C:deleteStudioLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStudioLifecycleConfig, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:deleteTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrainingJob, input, options)
end

function C:deleteTrial(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrial, input, options)
end

function C:deleteTrialComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTrialComponent, input, options)
end

function C:deleteUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUserProfile, input, options)
end

function C:deleteWorkforce(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkforce, input, options)
end

function C:deleteWorkteam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkteam, input, options)
end

function C:deregisterDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterDevices, input, options)
end

function C:describeAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAction, input, options)
end

function C:describeAIBenchmarkJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAIBenchmarkJob, input, options)
end

function C:describeAIRecommendationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAIRecommendationJob, input, options)
end

function C:describeAIWorkloadConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAIWorkloadConfig, input, options)
end

function C:describeAlgorithm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAlgorithm, input, options)
end

function C:describeApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApp, input, options)
end

function C:describeAppImageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAppImageConfig, input, options)
end

function C:describeArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeArtifact, input, options)
end

function C:describeAutoMLJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoMLJob, input, options)
end

function C:describeAutoMLJobV2(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAutoMLJobV2, input, options)
end

function C:describeCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCluster, input, options)
end

function C:describeClusterEvent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterEvent, input, options)
end

function C:describeClusterNode(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterNode, input, options)
end

function C:describeClusterSchedulerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClusterSchedulerConfig, input, options)
end

function C:describeCodeRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCodeRepository, input, options)
end

function C:describeCompilationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCompilationJob, input, options)
end

function C:describeComputeQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeComputeQuota, input, options)
end

function C:describeContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeContext, input, options)
end

function C:describeDataQualityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataQualityJobDefinition, input, options)
end

function C:describeDevice(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDevice, input, options)
end

function C:describeDeviceFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDeviceFleet, input, options)
end

function C:describeDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDomain, input, options)
end

function C:describeEdgeDeploymentPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEdgeDeploymentPlan, input, options)
end

function C:describeEdgePackagingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEdgePackagingJob, input, options)
end

function C:describeEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpoint, input, options)
end

function C:describeEndpointConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeEndpointConfig, input, options)
end

function C:describeExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExperiment, input, options)
end

function C:describeFeatureGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFeatureGroup, input, options)
end

function C:describeFeatureMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFeatureMetadata, input, options)
end

function C:describeFlowDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeFlowDefinition, input, options)
end

function C:describeHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHub, input, options)
end

function C:describeHubContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHubContent, input, options)
end

function C:describeHumanTaskUi(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHumanTaskUi, input, options)
end

function C:describeHyperParameterTuningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHyperParameterTuningJob, input, options)
end

function C:describeImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImage, input, options)
end

function C:describeImageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageVersion, input, options)
end

function C:describeInferenceComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInferenceComponent, input, options)
end

function C:describeInferenceExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInferenceExperiment, input, options)
end

function C:describeInferenceRecommendationsJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeInferenceRecommendationsJob, input, options)
end

function C:describeLabelingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLabelingJob, input, options)
end

function C:describeLineageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeLineageGroup, input, options)
end

function C:describeMlflowApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMlflowApp, input, options)
end

function C:describeMlflowTrackingServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMlflowTrackingServer, input, options)
end

function C:describeModel(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModel, input, options)
end

function C:describeModelBiasJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelBiasJobDefinition, input, options)
end

function C:describeModelCard(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelCard, input, options)
end

function C:describeModelCardExportJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelCardExportJob, input, options)
end

function C:describeModelExplainabilityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelExplainabilityJobDefinition, input, options)
end

function C:describeModelPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelPackage, input, options)
end

function C:describeModelPackageGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelPackageGroup, input, options)
end

function C:describeModelQualityJobDefinition(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeModelQualityJobDefinition, input, options)
end

function C:describeMonitoringSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeMonitoringSchedule, input, options)
end

function C:describeNotebookInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotebookInstance, input, options)
end

function C:describeNotebookInstanceLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeNotebookInstanceLifecycleConfig, input, options)
end

function C:describeOptimizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeOptimizationJob, input, options)
end

function C:describePartnerApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePartnerApp, input, options)
end

function C:describePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePipeline, input, options)
end

function C:describePipelineDefinitionForExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePipelineDefinitionForExecution, input, options)
end

function C:describePipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribePipelineExecution, input, options)
end

function C:describeProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProcessingJob, input, options)
end

function C:describeProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProject, input, options)
end

function C:describeReservedCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeReservedCapacity, input, options)
end

function C:describeSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSpace, input, options)
end

function C:describeStudioLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeStudioLifecycleConfig, input, options)
end

function C:describeSubscribedWorkteam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSubscribedWorkteam, input, options)
end

function C:describeTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrainingJob, input, options)
end

function C:describeTrainingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrainingPlan, input, options)
end

function C:describeTrainingPlanExtensionHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrainingPlanExtensionHistory, input, options)
end

function C:describeTransformJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTransformJob, input, options)
end

function C:describeTrial(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrial, input, options)
end

function C:describeTrialComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTrialComponent, input, options)
end

function C:describeUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUserProfile, input, options)
end

function C:describeWorkforce(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkforce, input, options)
end

function C:describeWorkteam(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkteam, input, options)
end

function C:detachClusterNodeVolume(input, options)
   return self:invokeOperation(schemas.Service, schemas.DetachClusterNodeVolume, input, options)
end

function C:disableSagemakerServicecatalogPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisableSagemakerServicecatalogPortfolio, input, options)
end

function C:disassociateTrialComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateTrialComponent, input, options)
end

function C:enableSagemakerServicecatalogPortfolio(input, options)
   return self:invokeOperation(schemas.Service, schemas.EnableSagemakerServicecatalogPortfolio, input, options)
end

function C:extendTrainingPlan(input, options)
   return self:invokeOperation(schemas.Service, schemas.ExtendTrainingPlan, input, options)
end

function C:getDeviceFleetReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDeviceFleetReport, input, options)
end

function C:getLineageGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLineageGroupPolicy, input, options)
end

function C:getModelPackageGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetModelPackageGroupPolicy, input, options)
end

function C:getSagemakerServicecatalogPortfolioStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSagemakerServicecatalogPortfolioStatus, input, options)
end

function C:getScalingConfigurationRecommendation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetScalingConfigurationRecommendation, input, options)
end

function C:getSearchSuggestions(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSearchSuggestions, input, options)
end

function C:importHubContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportHubContent, input, options)
end

function C:listActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListActions, input, options)
end

function C:listAIBenchmarkJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIBenchmarkJobs, input, options)
end

function C:listAIRecommendationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIRecommendationJobs, input, options)
end

function C:listAIWorkloadConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAIWorkloadConfigs, input, options)
end

function C:listAlgorithms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAlgorithms, input, options)
end

function C:listAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAliases, input, options)
end

function C:listAppImageConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAppImageConfigs, input, options)
end

function C:listApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListApps, input, options)
end

function C:listArtifacts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListArtifacts, input, options)
end

function C:listAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAssociations, input, options)
end

function C:listAutoMLJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAutoMLJobs, input, options)
end

function C:listCandidatesForAutoMLJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCandidatesForAutoMLJob, input, options)
end

function C:listClusterEvents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterEvents, input, options)
end

function C:listClusterNodes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterNodes, input, options)
end

function C:listClusters(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusters, input, options)
end

function C:listClusterSchedulerConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListClusterSchedulerConfigs, input, options)
end

function C:listCodeRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCodeRepositories, input, options)
end

function C:listCompilationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCompilationJobs, input, options)
end

function C:listComputeQuotas(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListComputeQuotas, input, options)
end

function C:listContexts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListContexts, input, options)
end

function C:listDataQualityJobDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDataQualityJobDefinitions, input, options)
end

function C:listDeviceFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDeviceFleets, input, options)
end

function C:listDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevices, input, options)
end

function C:listDomains(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDomains, input, options)
end

function C:listEdgeDeploymentPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEdgeDeploymentPlans, input, options)
end

function C:listEdgePackagingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEdgePackagingJobs, input, options)
end

function C:listEndpointConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpointConfigs, input, options)
end

function C:listEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEndpoints, input, options)
end

function C:listExperiments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExperiments, input, options)
end

function C:listFeatureGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFeatureGroups, input, options)
end

function C:listFlowDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFlowDefinitions, input, options)
end

function C:listHubContents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHubContents, input, options)
end

function C:listHubContentVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHubContentVersions, input, options)
end

function C:listHubs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHubs, input, options)
end

function C:listHumanTaskUis(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHumanTaskUis, input, options)
end

function C:listHyperParameterTuningJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHyperParameterTuningJobs, input, options)
end

function C:listImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImages, input, options)
end

function C:listImageVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListImageVersions, input, options)
end

function C:listInferenceComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceComponents, input, options)
end

function C:listInferenceExperiments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceExperiments, input, options)
end

function C:listInferenceRecommendationsJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceRecommendationsJobs, input, options)
end

function C:listInferenceRecommendationsJobSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListInferenceRecommendationsJobSteps, input, options)
end

function C:listLabelingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLabelingJobs, input, options)
end

function C:listLabelingJobsForWorkteam(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLabelingJobsForWorkteam, input, options)
end

function C:listLineageGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLineageGroups, input, options)
end

function C:listMlflowApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMlflowApps, input, options)
end

function C:listMlflowTrackingServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMlflowTrackingServers, input, options)
end

function C:listModelBiasJobDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelBiasJobDefinitions, input, options)
end

function C:listModelCardExportJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelCardExportJobs, input, options)
end

function C:listModelCards(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelCards, input, options)
end

function C:listModelCardVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelCardVersions, input, options)
end

function C:listModelExplainabilityJobDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelExplainabilityJobDefinitions, input, options)
end

function C:listModelMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelMetadata, input, options)
end

function C:listModelPackageGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelPackageGroups, input, options)
end

function C:listModelPackages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelPackages, input, options)
end

function C:listModelQualityJobDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModelQualityJobDefinitions, input, options)
end

function C:listModels(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListModels, input, options)
end

function C:listMonitoringAlertHistory(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitoringAlertHistory, input, options)
end

function C:listMonitoringAlerts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitoringAlerts, input, options)
end

function C:listMonitoringExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitoringExecutions, input, options)
end

function C:listMonitoringSchedules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitoringSchedules, input, options)
end

function C:listNotebookInstanceLifecycleConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotebookInstanceLifecycleConfigs, input, options)
end

function C:listNotebookInstances(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListNotebookInstances, input, options)
end

function C:listOptimizationJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListOptimizationJobs, input, options)
end

function C:listPartnerApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPartnerApps, input, options)
end

function C:listPipelineExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineExecutions, input, options)
end

function C:listPipelineExecutionSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineExecutionSteps, input, options)
end

function C:listPipelineParametersForExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineParametersForExecution, input, options)
end

function C:listPipelines(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelines, input, options)
end

function C:listPipelineVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListPipelineVersions, input, options)
end

function C:listProcessingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProcessingJobs, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listResourceCatalogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListResourceCatalogs, input, options)
end

function C:listSpaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSpaces, input, options)
end

function C:listStageDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStageDevices, input, options)
end

function C:listStudioLifecycleConfigs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStudioLifecycleConfigs, input, options)
end

function C:listSubscribedWorkteams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSubscribedWorkteams, input, options)
end

function C:listTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTags, input, options)
end

function C:listTrainingJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainingJobs, input, options)
end

function C:listTrainingJobsForHyperParameterTuningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainingJobsForHyperParameterTuningJob, input, options)
end

function C:listTrainingPlans(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrainingPlans, input, options)
end

function C:listTransformJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTransformJobs, input, options)
end

function C:listTrialComponents(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrialComponents, input, options)
end

function C:listTrials(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTrials, input, options)
end

function C:listUltraServersByReservedCapacity(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUltraServersByReservedCapacity, input, options)
end

function C:listUserProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUserProfiles, input, options)
end

function C:listWorkforces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkforces, input, options)
end

function C:listWorkteams(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkteams, input, options)
end

function C:putModelPackageGroupPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutModelPackageGroupPolicy, input, options)
end

function C:queryLineage(input, options)
   return self:invokeOperation(schemas.Service, schemas.QueryLineage, input, options)
end

function C:registerDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterDevices, input, options)
end

function C:renderUiTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.RenderUiTemplate, input, options)
end

function C:retryPipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryPipelineExecution, input, options)
end

function C:search(input, options)
   return self:invokeOperation(schemas.Service, schemas.Search, input, options)
end

function C:searchTrainingPlanOfferings(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTrainingPlanOfferings, input, options)
end

function C:sendPipelineExecutionStepFailure(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendPipelineExecutionStepFailure, input, options)
end

function C:sendPipelineExecutionStepSuccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendPipelineExecutionStepSuccess, input, options)
end

function C:startClusterHealthCheck(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartClusterHealthCheck, input, options)
end

function C:startEdgeDeploymentStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartEdgeDeploymentStage, input, options)
end

function C:startInferenceExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartInferenceExperiment, input, options)
end

function C:startMlflowTrackingServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMlflowTrackingServer, input, options)
end

function C:startMonitoringSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartMonitoringSchedule, input, options)
end

function C:startNotebookInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartNotebookInstance, input, options)
end

function C:startPipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartPipelineExecution, input, options)
end

function C:startSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSession, input, options)
end

function C:stopAIBenchmarkJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAIBenchmarkJob, input, options)
end

function C:stopAIRecommendationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAIRecommendationJob, input, options)
end

function C:stopAutoMLJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopAutoMLJob, input, options)
end

function C:stopCompilationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopCompilationJob, input, options)
end

function C:stopEdgeDeploymentStage(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEdgeDeploymentStage, input, options)
end

function C:stopEdgePackagingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopEdgePackagingJob, input, options)
end

function C:stopHyperParameterTuningJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopHyperParameterTuningJob, input, options)
end

function C:stopInferenceExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopInferenceExperiment, input, options)
end

function C:stopInferenceRecommendationsJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopInferenceRecommendationsJob, input, options)
end

function C:stopLabelingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopLabelingJob, input, options)
end

function C:stopMlflowTrackingServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMlflowTrackingServer, input, options)
end

function C:stopMonitoringSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopMonitoringSchedule, input, options)
end

function C:stopNotebookInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopNotebookInstance, input, options)
end

function C:stopOptimizationJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopOptimizationJob, input, options)
end

function C:stopPipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopPipelineExecution, input, options)
end

function C:stopProcessingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopProcessingJob, input, options)
end

function C:stopTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTrainingJob, input, options)
end

function C:stopTransformJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopTransformJob, input, options)
end

function C:updateAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAction, input, options)
end

function C:updateAppImageConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAppImageConfig, input, options)
end

function C:updateArtifact(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateArtifact, input, options)
end

function C:updateCluster(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCluster, input, options)
end

function C:updateClusterSchedulerConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterSchedulerConfig, input, options)
end

function C:updateClusterSoftware(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateClusterSoftware, input, options)
end

function C:updateCodeRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCodeRepository, input, options)
end

function C:updateComputeQuota(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateComputeQuota, input, options)
end

function C:updateContext(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateContext, input, options)
end

function C:updateDeviceFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDeviceFleet, input, options)
end

function C:updateDevices(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDevices, input, options)
end

function C:updateDomain(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDomain, input, options)
end

function C:updateEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpoint, input, options)
end

function C:updateEndpointWeightsAndCapacities(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateEndpointWeightsAndCapacities, input, options)
end

function C:updateExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateExperiment, input, options)
end

function C:updateFeatureGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFeatureGroup, input, options)
end

function C:updateFeatureMetadata(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFeatureMetadata, input, options)
end

function C:updateHub(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHub, input, options)
end

function C:updateHubContent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHubContent, input, options)
end

function C:updateHubContentReference(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHubContentReference, input, options)
end

function C:updateImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImage, input, options)
end

function C:updateImageVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateImageVersion, input, options)
end

function C:updateInferenceComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInferenceComponent, input, options)
end

function C:updateInferenceComponentRuntimeConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInferenceComponentRuntimeConfig, input, options)
end

function C:updateInferenceExperiment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateInferenceExperiment, input, options)
end

function C:updateMlflowApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMlflowApp, input, options)
end

function C:updateMlflowTrackingServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMlflowTrackingServer, input, options)
end

function C:updateModelCard(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModelCard, input, options)
end

function C:updateModelPackage(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateModelPackage, input, options)
end

function C:updateMonitoringAlert(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMonitoringAlert, input, options)
end

function C:updateMonitoringSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMonitoringSchedule, input, options)
end

function C:updateNotebookInstance(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotebookInstance, input, options)
end

function C:updateNotebookInstanceLifecycleConfig(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateNotebookInstanceLifecycleConfig, input, options)
end

function C:updatePartnerApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePartnerApp, input, options)
end

function C:updatePipeline(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePipeline, input, options)
end

function C:updatePipelineExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePipelineExecution, input, options)
end

function C:updatePipelineVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdatePipelineVersion, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

function C:updateSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSpace, input, options)
end

function C:updateTrainingJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrainingJob, input, options)
end

function C:updateTrial(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrial, input, options)
end

function C:updateTrialComponent(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTrialComponent, input, options)
end

function C:updateUserProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUserProfile, input, options)
end

function C:updateWorkforce(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkforce, input, options)
end

function C:updateWorkteam(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkteam, input, options)
end

return M
