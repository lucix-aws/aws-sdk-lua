local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemaker.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("sagemaker.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SageMaker"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "sagemaker", signing_region = cfg.region } }
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

function Client:addAssociation(input, options)
    return self:invokeOperation(input, {
        name = "AddAssociation",
        input_schema = types.AddAssociationInput,
        output_schema = types.AddAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addTags(input, options)
    return self:invokeOperation(input, {
        name = "AddTags",
        input_schema = types.AddTagsInput,
        output_schema = types.AddTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTrialComponent(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTrialComponent",
        input_schema = types.AssociateTrialComponentInput,
        output_schema = types.AssociateTrialComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachClusterNodeVolume(input, options)
    return self:invokeOperation(input, {
        name = "AttachClusterNodeVolume",
        input_schema = types.AttachClusterNodeVolumeInput,
        output_schema = types.AttachClusterNodeVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAddClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "BatchAddClusterNodes",
        input_schema = types.BatchAddClusterNodesInput,
        output_schema = types.BatchAddClusterNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteClusterNodes",
        input_schema = types.BatchDeleteClusterNodesInput,
        output_schema = types.BatchDeleteClusterNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDescribeModelPackage(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeModelPackage",
        input_schema = types.BatchDescribeModelPackageInput,
        output_schema = types.BatchDescribeModelPackageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchRebootClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "BatchRebootClusterNodes",
        input_schema = types.BatchRebootClusterNodesInput,
        output_schema = types.BatchRebootClusterNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchReplaceClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "BatchReplaceClusterNodes",
        input_schema = types.BatchReplaceClusterNodesInput,
        output_schema = types.BatchReplaceClusterNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateAction",
        input_schema = types.CreateActionInput,
        output_schema = types.CreateActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIBenchmarkJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIBenchmarkJob",
        input_schema = types.CreateAIBenchmarkJobInput,
        output_schema = types.CreateAIBenchmarkJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIRecommendationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIRecommendationJob",
        input_schema = types.CreateAIRecommendationJobInput,
        output_schema = types.CreateAIRecommendationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAIWorkloadConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateAIWorkloadConfig",
        input_schema = types.CreateAIWorkloadConfigInput,
        output_schema = types.CreateAIWorkloadConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "CreateAlgorithm",
        input_schema = types.CreateAlgorithmInput,
        output_schema = types.CreateAlgorithmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateApp",
        input_schema = types.CreateAppInput,
        output_schema = types.CreateAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAppImageConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateAppImageConfig",
        input_schema = types.CreateAppImageConfigInput,
        output_schema = types.CreateAppImageConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createArtifact(input, options)
    return self:invokeOperation(input, {
        name = "CreateArtifact",
        input_schema = types.CreateArtifactInput,
        output_schema = types.CreateArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutoMLJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutoMLJob",
        input_schema = types.CreateAutoMLJobInput,
        output_schema = types.CreateAutoMLJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAutoMLJobV2(input, options)
    return self:invokeOperation(input, {
        name = "CreateAutoMLJobV2",
        input_schema = types.CreateAutoMLJobV2Input,
        output_schema = types.CreateAutoMLJobV2Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterSchedulerConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterSchedulerConfig",
        input_schema = types.CreateClusterSchedulerConfigInput,
        output_schema = types.CreateClusterSchedulerConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCodeRepository(input, options)
    return self:invokeOperation(input, {
        name = "CreateCodeRepository",
        input_schema = types.CreateCodeRepositoryInput,
        output_schema = types.CreateCodeRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCompilationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateCompilationJob",
        input_schema = types.CreateCompilationJobInput,
        output_schema = types.CreateCompilationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createComputeQuota(input, options)
    return self:invokeOperation(input, {
        name = "CreateComputeQuota",
        input_schema = types.CreateComputeQuotaInput,
        output_schema = types.CreateComputeQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContext(input, options)
    return self:invokeOperation(input, {
        name = "CreateContext",
        input_schema = types.CreateContextInput,
        output_schema = types.CreateContextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataQualityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataQualityJobDefinition",
        input_schema = types.CreateDataQualityJobDefinitionInput,
        output_schema = types.CreateDataQualityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeviceFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeviceFleet",
        input_schema = types.CreateDeviceFleetInput,
        output_schema = types.CreateDeviceFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = types.CreateDomainInput,
        output_schema = types.CreateDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEdgeDeploymentPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateEdgeDeploymentPlan",
        input_schema = types.CreateEdgeDeploymentPlanInput,
        output_schema = types.CreateEdgeDeploymentPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEdgeDeploymentStage(input, options)
    return self:invokeOperation(input, {
        name = "CreateEdgeDeploymentStage",
        input_schema = types.CreateEdgeDeploymentStageInput,
        output_schema = types.CreateEdgeDeploymentStageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEdgePackagingJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateEdgePackagingJob",
        input_schema = types.CreateEdgePackagingJobInput,
        output_schema = types.CreateEdgePackagingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpoint",
        input_schema = types.CreateEndpointInput,
        output_schema = types.CreateEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEndpointConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpointConfig",
        input_schema = types.CreateEndpointConfigInput,
        output_schema = types.CreateEndpointConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExperiment(input, options)
    return self:invokeOperation(input, {
        name = "CreateExperiment",
        input_schema = types.CreateExperimentInput,
        output_schema = types.CreateExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFeatureGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateFeatureGroup",
        input_schema = types.CreateFeatureGroupInput,
        output_schema = types.CreateFeatureGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFlowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateFlowDefinition",
        input_schema = types.CreateFlowDefinitionInput,
        output_schema = types.CreateFlowDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHub(input, options)
    return self:invokeOperation(input, {
        name = "CreateHub",
        input_schema = types.CreateHubInput,
        output_schema = types.CreateHubOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHubContentPresignedUrls(input, options)
    return self:invokeOperation(input, {
        name = "CreateHubContentPresignedUrls",
        input_schema = types.CreateHubContentPresignedUrlsInput,
        output_schema = types.CreateHubContentPresignedUrlsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHubContentReference(input, options)
    return self:invokeOperation(input, {
        name = "CreateHubContentReference",
        input_schema = types.CreateHubContentReferenceInput,
        output_schema = types.CreateHubContentReferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHumanTaskUi(input, options)
    return self:invokeOperation(input, {
        name = "CreateHumanTaskUi",
        input_schema = types.CreateHumanTaskUiInput,
        output_schema = types.CreateHumanTaskUiOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHyperParameterTuningJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateHyperParameterTuningJob",
        input_schema = types.CreateHyperParameterTuningJobInput,
        output_schema = types.CreateHyperParameterTuningJobOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createImageVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateImageVersion",
        input_schema = types.CreateImageVersionInput,
        output_schema = types.CreateImageVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInferenceComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateInferenceComponent",
        input_schema = types.CreateInferenceComponentInput,
        output_schema = types.CreateInferenceComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInferenceExperiment(input, options)
    return self:invokeOperation(input, {
        name = "CreateInferenceExperiment",
        input_schema = types.CreateInferenceExperimentInput,
        output_schema = types.CreateInferenceExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInferenceRecommendationsJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateInferenceRecommendationsJob",
        input_schema = types.CreateInferenceRecommendationsJobInput,
        output_schema = types.CreateInferenceRecommendationsJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLabelingJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateLabelingJob",
        input_schema = types.CreateLabelingJobInput,
        output_schema = types.CreateLabelingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMlflowApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateMlflowApp",
        input_schema = types.CreateMlflowAppInput,
        output_schema = types.CreateMlflowAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMlflowTrackingServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateMlflowTrackingServer",
        input_schema = types.CreateMlflowTrackingServerInput,
        output_schema = types.CreateMlflowTrackingServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModel(input, options)
    return self:invokeOperation(input, {
        name = "CreateModel",
        input_schema = types.CreateModelInput,
        output_schema = types.CreateModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelBiasJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelBiasJobDefinition",
        input_schema = types.CreateModelBiasJobDefinitionInput,
        output_schema = types.CreateModelBiasJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelCard(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelCard",
        input_schema = types.CreateModelCardInput,
        output_schema = types.CreateModelCardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelCardExportJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelCardExportJob",
        input_schema = types.CreateModelCardExportJobInput,
        output_schema = types.CreateModelCardExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelExplainabilityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelExplainabilityJobDefinition",
        input_schema = types.CreateModelExplainabilityJobDefinitionInput,
        output_schema = types.CreateModelExplainabilityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelPackage",
        input_schema = types.CreateModelPackageInput,
        output_schema = types.CreateModelPackageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelPackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelPackageGroup",
        input_schema = types.CreateModelPackageGroupInput,
        output_schema = types.CreateModelPackageGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createModelQualityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "CreateModelQualityJobDefinition",
        input_schema = types.CreateModelQualityJobDefinitionInput,
        output_schema = types.CreateModelQualityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMonitoringSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitoringSchedule",
        input_schema = types.CreateMonitoringScheduleInput,
        output_schema = types.CreateMonitoringScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotebookInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotebookInstance",
        input_schema = types.CreateNotebookInstanceInput,
        output_schema = types.CreateNotebookInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotebookInstanceLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotebookInstanceLifecycleConfig",
        input_schema = types.CreateNotebookInstanceLifecycleConfigInput,
        output_schema = types.CreateNotebookInstanceLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOptimizationJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateOptimizationJob",
        input_schema = types.CreateOptimizationJobInput,
        output_schema = types.CreateOptimizationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPartnerApp(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnerApp",
        input_schema = types.CreatePartnerAppInput,
        output_schema = types.CreatePartnerAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPartnerAppPresignedUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePartnerAppPresignedUrl",
        input_schema = types.CreatePartnerAppPresignedUrlInput,
        output_schema = types.CreatePartnerAppPresignedUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPipeline(input, options)
    return self:invokeOperation(input, {
        name = "CreatePipeline",
        input_schema = types.CreatePipelineInput,
        output_schema = types.CreatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPresignedDomainUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedDomainUrl",
        input_schema = types.CreatePresignedDomainUrlInput,
        output_schema = types.CreatePresignedDomainUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPresignedMlflowAppUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedMlflowAppUrl",
        input_schema = types.CreatePresignedMlflowAppUrlInput,
        output_schema = types.CreatePresignedMlflowAppUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPresignedMlflowTrackingServerUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedMlflowTrackingServerUrl",
        input_schema = types.CreatePresignedMlflowTrackingServerUrlInput,
        output_schema = types.CreatePresignedMlflowTrackingServerUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPresignedNotebookInstanceUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreatePresignedNotebookInstanceUrl",
        input_schema = types.CreatePresignedNotebookInstanceUrlInput,
        output_schema = types.CreatePresignedNotebookInstanceUrlOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateProcessingJob",
        input_schema = types.CreateProcessingJobInput,
        output_schema = types.CreateProcessingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProject(input, options)
    return self:invokeOperation(input, {
        name = "CreateProject",
        input_schema = types.CreateProjectInput,
        output_schema = types.CreateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSpace(input, options)
    return self:invokeOperation(input, {
        name = "CreateSpace",
        input_schema = types.CreateSpaceInput,
        output_schema = types.CreateSpaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStudioLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateStudioLifecycleConfig",
        input_schema = types.CreateStudioLifecycleConfigInput,
        output_schema = types.CreateStudioLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrainingJob",
        input_schema = types.CreateTrainingJobInput,
        output_schema = types.CreateTrainingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrainingPlan(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrainingPlan",
        input_schema = types.CreateTrainingPlanInput,
        output_schema = types.CreateTrainingPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateTransformJob",
        input_schema = types.CreateTransformJobInput,
        output_schema = types.CreateTransformJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrial(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrial",
        input_schema = types.CreateTrialInput,
        output_schema = types.CreateTrialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrialComponent(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrialComponent",
        input_schema = types.CreateTrialComponentInput,
        output_schema = types.CreateTrialComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserProfile",
        input_schema = types.CreateUserProfileInput,
        output_schema = types.CreateUserProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkforce(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkforce",
        input_schema = types.CreateWorkforceInput,
        output_schema = types.CreateWorkforceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkteam(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkteam",
        input_schema = types.CreateWorkteamInput,
        output_schema = types.CreateWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAction",
        input_schema = types.DeleteActionInput,
        output_schema = types.DeleteActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIBenchmarkJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIBenchmarkJob",
        input_schema = types.DeleteAIBenchmarkJobInput,
        output_schema = types.DeleteAIBenchmarkJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIRecommendationJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIRecommendationJob",
        input_schema = types.DeleteAIRecommendationJobInput,
        output_schema = types.DeleteAIRecommendationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAIWorkloadConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAIWorkloadConfig",
        input_schema = types.DeleteAIWorkloadConfigInput,
        output_schema = types.DeleteAIWorkloadConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAlgorithm",
        input_schema = types.DeleteAlgorithmInput,
        output_schema = types.DeleteAlgorithmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApp",
        input_schema = types.DeleteAppInput,
        output_schema = types.DeleteAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAppImageConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAppImageConfig",
        input_schema = types.DeleteAppImageConfigInput,
        output_schema = types.DeleteAppImageConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DeleteArtifact",
        input_schema = types.DeleteArtifactInput,
        output_schema = types.DeleteArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAssociation",
        input_schema = types.DeleteAssociationInput,
        output_schema = types.DeleteAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterSchedulerConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterSchedulerConfig",
        input_schema = types.DeleteClusterSchedulerConfigInput,
        output_schema = types.DeleteClusterSchedulerConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCodeRepository(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCodeRepository",
        input_schema = types.DeleteCodeRepositoryInput,
        output_schema = types.DeleteCodeRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCompilationJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCompilationJob",
        input_schema = types.DeleteCompilationJobInput,
        output_schema = types.DeleteCompilationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteComputeQuota(input, options)
    return self:invokeOperation(input, {
        name = "DeleteComputeQuota",
        input_schema = types.DeleteComputeQuotaInput,
        output_schema = types.DeleteComputeQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContext(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContext",
        input_schema = types.DeleteContextInput,
        output_schema = types.DeleteContextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataQualityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataQualityJobDefinition",
        input_schema = types.DeleteDataQualityJobDefinitionInput,
        output_schema = types.DeleteDataQualityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeviceFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeviceFleet",
        input_schema = types.DeleteDeviceFleetInput,
        output_schema = types.DeleteDeviceFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = types.DeleteDomainInput,
        output_schema = types.DeleteDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEdgeDeploymentPlan(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEdgeDeploymentPlan",
        input_schema = types.DeleteEdgeDeploymentPlanInput,
        output_schema = types.DeleteEdgeDeploymentPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEdgeDeploymentStage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEdgeDeploymentStage",
        input_schema = types.DeleteEdgeDeploymentStageInput,
        output_schema = types.DeleteEdgeDeploymentStageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpoint",
        input_schema = types.DeleteEndpointInput,
        output_schema = types.DeleteEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpointConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpointConfig",
        input_schema = types.DeleteEndpointConfigInput,
        output_schema = types.DeleteEndpointConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExperiment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExperiment",
        input_schema = types.DeleteExperimentInput,
        output_schema = types.DeleteExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFeatureGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFeatureGroup",
        input_schema = types.DeleteFeatureGroupInput,
        output_schema = types.DeleteFeatureGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFlowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFlowDefinition",
        input_schema = types.DeleteFlowDefinitionInput,
        output_schema = types.DeleteFlowDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHub(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHub",
        input_schema = types.DeleteHubInput,
        output_schema = types.DeleteHubOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHubContent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHubContent",
        input_schema = types.DeleteHubContentInput,
        output_schema = types.DeleteHubContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHubContentReference(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHubContentReference",
        input_schema = types.DeleteHubContentReferenceInput,
        output_schema = types.DeleteHubContentReferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHumanTaskUi(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHumanTaskUi",
        input_schema = types.DeleteHumanTaskUiInput,
        output_schema = types.DeleteHumanTaskUiOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHyperParameterTuningJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHyperParameterTuningJob",
        input_schema = types.DeleteHyperParameterTuningJobInput,
        output_schema = types.DeleteHyperParameterTuningJobOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImageVersion",
        input_schema = types.DeleteImageVersionInput,
        output_schema = types.DeleteImageVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInferenceComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInferenceComponent",
        input_schema = types.DeleteInferenceComponentInput,
        output_schema = types.DeleteInferenceComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInferenceExperiment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInferenceExperiment",
        input_schema = types.DeleteInferenceExperimentInput,
        output_schema = types.DeleteInferenceExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMlflowApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMlflowApp",
        input_schema = types.DeleteMlflowAppInput,
        output_schema = types.DeleteMlflowAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMlflowTrackingServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMlflowTrackingServer",
        input_schema = types.DeleteMlflowTrackingServerInput,
        output_schema = types.DeleteMlflowTrackingServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModel",
        input_schema = types.DeleteModelInput,
        output_schema = types.DeleteModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelBiasJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelBiasJobDefinition",
        input_schema = types.DeleteModelBiasJobDefinitionInput,
        output_schema = types.DeleteModelBiasJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelCard(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelCard",
        input_schema = types.DeleteModelCardInput,
        output_schema = types.DeleteModelCardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelExplainabilityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelExplainabilityJobDefinition",
        input_schema = types.DeleteModelExplainabilityJobDefinitionInput,
        output_schema = types.DeleteModelExplainabilityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelPackage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelPackage",
        input_schema = types.DeleteModelPackageInput,
        output_schema = types.DeleteModelPackageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelPackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelPackageGroup",
        input_schema = types.DeleteModelPackageGroupInput,
        output_schema = types.DeleteModelPackageGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelPackageGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelPackageGroupPolicy",
        input_schema = types.DeleteModelPackageGroupPolicyInput,
        output_schema = types.DeleteModelPackageGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteModelQualityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DeleteModelQualityJobDefinition",
        input_schema = types.DeleteModelQualityJobDefinitionInput,
        output_schema = types.DeleteModelQualityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMonitoringSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitoringSchedule",
        input_schema = types.DeleteMonitoringScheduleInput,
        output_schema = types.DeleteMonitoringScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotebookInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotebookInstance",
        input_schema = types.DeleteNotebookInstanceInput,
        output_schema = types.DeleteNotebookInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotebookInstanceLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotebookInstanceLifecycleConfig",
        input_schema = types.DeleteNotebookInstanceLifecycleConfigInput,
        output_schema = types.DeleteNotebookInstanceLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOptimizationJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOptimizationJob",
        input_schema = types.DeleteOptimizationJobInput,
        output_schema = types.DeleteOptimizationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePartnerApp(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartnerApp",
        input_schema = types.DeletePartnerAppInput,
        output_schema = types.DeletePartnerAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DeletePipeline",
        input_schema = types.DeletePipelineInput,
        output_schema = types.DeletePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProcessingJob",
        input_schema = types.DeleteProcessingJobInput,
        output_schema = types.DeleteProcessingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProject(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProject",
        input_schema = types.DeleteProjectInput,
        output_schema = types.DeleteProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSpace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpace",
        input_schema = types.DeleteSpaceInput,
        output_schema = types.DeleteSpaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStudioLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStudioLifecycleConfig",
        input_schema = types.DeleteStudioLifecycleConfigInput,
        output_schema = types.DeleteStudioLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrainingJob",
        input_schema = types.DeleteTrainingJobInput,
        output_schema = types.DeleteTrainingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrial(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrial",
        input_schema = types.DeleteTrialInput,
        output_schema = types.DeleteTrialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrialComponent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrialComponent",
        input_schema = types.DeleteTrialComponentInput,
        output_schema = types.DeleteTrialComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserProfile",
        input_schema = types.DeleteUserProfileInput,
        output_schema = types.DeleteUserProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkforce(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkforce",
        input_schema = types.DeleteWorkforceInput,
        output_schema = types.DeleteWorkforceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkteam(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkteam",
        input_schema = types.DeleteWorkteamInput,
        output_schema = types.DeleteWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterDevices(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDevices",
        input_schema = types.DeregisterDevicesInput,
        output_schema = types.DeregisterDevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAction(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAction",
        input_schema = types.DescribeActionInput,
        output_schema = types.DescribeActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAIBenchmarkJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAIBenchmarkJob",
        input_schema = types.DescribeAIBenchmarkJobInput,
        output_schema = types.DescribeAIBenchmarkJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAIRecommendationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAIRecommendationJob",
        input_schema = types.DescribeAIRecommendationJobInput,
        output_schema = types.DescribeAIRecommendationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAIWorkloadConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAIWorkloadConfig",
        input_schema = types.DescribeAIWorkloadConfigInput,
        output_schema = types.DescribeAIWorkloadConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAlgorithm(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAlgorithm",
        input_schema = types.DescribeAlgorithmInput,
        output_schema = types.DescribeAlgorithmOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApp",
        input_schema = types.DescribeAppInput,
        output_schema = types.DescribeAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAppImageConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAppImageConfig",
        input_schema = types.DescribeAppImageConfigInput,
        output_schema = types.DescribeAppImageConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeArtifact(input, options)
    return self:invokeOperation(input, {
        name = "DescribeArtifact",
        input_schema = types.DescribeArtifactInput,
        output_schema = types.DescribeArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoMLJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoMLJob",
        input_schema = types.DescribeAutoMLJobInput,
        output_schema = types.DescribeAutoMLJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAutoMLJobV2(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAutoMLJobV2",
        input_schema = types.DescribeAutoMLJobV2Input,
        output_schema = types.DescribeAutoMLJobV2Output,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = types.DescribeClusterInput,
        output_schema = types.DescribeClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterEvent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterEvent",
        input_schema = types.DescribeClusterEventInput,
        output_schema = types.DescribeClusterEventOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterNode(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterNode",
        input_schema = types.DescribeClusterNodeInput,
        output_schema = types.DescribeClusterNodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterSchedulerConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterSchedulerConfig",
        input_schema = types.DescribeClusterSchedulerConfigInput,
        output_schema = types.DescribeClusterSchedulerConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCodeRepository(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCodeRepository",
        input_schema = types.DescribeCodeRepositoryInput,
        output_schema = types.DescribeCodeRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCompilationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCompilationJob",
        input_schema = types.DescribeCompilationJobInput,
        output_schema = types.DescribeCompilationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeComputeQuota(input, options)
    return self:invokeOperation(input, {
        name = "DescribeComputeQuota",
        input_schema = types.DescribeComputeQuotaInput,
        output_schema = types.DescribeComputeQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContext(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContext",
        input_schema = types.DescribeContextInput,
        output_schema = types.DescribeContextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataQualityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataQualityJobDefinition",
        input_schema = types.DescribeDataQualityJobDefinitionInput,
        output_schema = types.DescribeDataQualityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDevice(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDevice",
        input_schema = types.DescribeDeviceInput,
        output_schema = types.DescribeDeviceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDeviceFleet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDeviceFleet",
        input_schema = types.DescribeDeviceFleetInput,
        output_schema = types.DescribeDeviceFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomain",
        input_schema = types.DescribeDomainInput,
        output_schema = types.DescribeDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEdgeDeploymentPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEdgeDeploymentPlan",
        input_schema = types.DescribeEdgeDeploymentPlanInput,
        output_schema = types.DescribeEdgeDeploymentPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEdgePackagingJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEdgePackagingJob",
        input_schema = types.DescribeEdgePackagingJobInput,
        output_schema = types.DescribeEdgePackagingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpoint",
        input_schema = types.DescribeEndpointInput,
        output_schema = types.DescribeEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpointConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpointConfig",
        input_schema = types.DescribeEndpointConfigInput,
        output_schema = types.DescribeEndpointConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExperiment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExperiment",
        input_schema = types.DescribeExperimentInput,
        output_schema = types.DescribeExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFeatureGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeatureGroup",
        input_schema = types.DescribeFeatureGroupInput,
        output_schema = types.DescribeFeatureGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFeatureMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFeatureMetadata",
        input_schema = types.DescribeFeatureMetadataInput,
        output_schema = types.DescribeFeatureMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFlowDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFlowDefinition",
        input_schema = types.DescribeFlowDefinitionInput,
        output_schema = types.DescribeFlowDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHub(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHub",
        input_schema = types.DescribeHubInput,
        output_schema = types.DescribeHubOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHubContent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHubContent",
        input_schema = types.DescribeHubContentInput,
        output_schema = types.DescribeHubContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHumanTaskUi(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHumanTaskUi",
        input_schema = types.DescribeHumanTaskUiInput,
        output_schema = types.DescribeHumanTaskUiOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHyperParameterTuningJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHyperParameterTuningJob",
        input_schema = types.DescribeHyperParameterTuningJobInput,
        output_schema = types.DescribeHyperParameterTuningJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImage",
        input_schema = types.DescribeImageInput,
        output_schema = types.DescribeImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageVersion",
        input_schema = types.DescribeImageVersionInput,
        output_schema = types.DescribeImageVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInferenceComponent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInferenceComponent",
        input_schema = types.DescribeInferenceComponentInput,
        output_schema = types.DescribeInferenceComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInferenceExperiment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInferenceExperiment",
        input_schema = types.DescribeInferenceExperimentInput,
        output_schema = types.DescribeInferenceExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInferenceRecommendationsJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInferenceRecommendationsJob",
        input_schema = types.DescribeInferenceRecommendationsJobInput,
        output_schema = types.DescribeInferenceRecommendationsJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLabelingJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLabelingJob",
        input_schema = types.DescribeLabelingJobInput,
        output_schema = types.DescribeLabelingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLineageGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLineageGroup",
        input_schema = types.DescribeLineageGroupInput,
        output_schema = types.DescribeLineageGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMlflowApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMlflowApp",
        input_schema = types.DescribeMlflowAppInput,
        output_schema = types.DescribeMlflowAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMlflowTrackingServer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMlflowTrackingServer",
        input_schema = types.DescribeMlflowTrackingServerInput,
        output_schema = types.DescribeMlflowTrackingServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModel",
        input_schema = types.DescribeModelInput,
        output_schema = types.DescribeModelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelBiasJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelBiasJobDefinition",
        input_schema = types.DescribeModelBiasJobDefinitionInput,
        output_schema = types.DescribeModelBiasJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelCard(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelCard",
        input_schema = types.DescribeModelCardInput,
        output_schema = types.DescribeModelCardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelCardExportJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelCardExportJob",
        input_schema = types.DescribeModelCardExportJobInput,
        output_schema = types.DescribeModelCardExportJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelExplainabilityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelExplainabilityJobDefinition",
        input_schema = types.DescribeModelExplainabilityJobDefinitionInput,
        output_schema = types.DescribeModelExplainabilityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelPackage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelPackage",
        input_schema = types.DescribeModelPackageInput,
        output_schema = types.DescribeModelPackageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelPackageGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelPackageGroup",
        input_schema = types.DescribeModelPackageGroupInput,
        output_schema = types.DescribeModelPackageGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeModelQualityJobDefinition(input, options)
    return self:invokeOperation(input, {
        name = "DescribeModelQualityJobDefinition",
        input_schema = types.DescribeModelQualityJobDefinitionInput,
        output_schema = types.DescribeModelQualityJobDefinitionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeMonitoringSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeMonitoringSchedule",
        input_schema = types.DescribeMonitoringScheduleInput,
        output_schema = types.DescribeMonitoringScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotebookInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotebookInstance",
        input_schema = types.DescribeNotebookInstanceInput,
        output_schema = types.DescribeNotebookInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotebookInstanceLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotebookInstanceLifecycleConfig",
        input_schema = types.DescribeNotebookInstanceLifecycleConfigInput,
        output_schema = types.DescribeNotebookInstanceLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOptimizationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOptimizationJob",
        input_schema = types.DescribeOptimizationJobInput,
        output_schema = types.DescribeOptimizationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePartnerApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribePartnerApp",
        input_schema = types.DescribePartnerAppInput,
        output_schema = types.DescribePartnerAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePipeline(input, options)
    return self:invokeOperation(input, {
        name = "DescribePipeline",
        input_schema = types.DescribePipelineInput,
        output_schema = types.DescribePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePipelineDefinitionForExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribePipelineDefinitionForExecution",
        input_schema = types.DescribePipelineDefinitionForExecutionInput,
        output_schema = types.DescribePipelineDefinitionForExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribePipelineExecution",
        input_schema = types.DescribePipelineExecutionInput,
        output_schema = types.DescribePipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProcessingJob",
        input_schema = types.DescribeProcessingJobInput,
        output_schema = types.DescribeProcessingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProject(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProject",
        input_schema = types.DescribeProjectInput,
        output_schema = types.DescribeProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedCapacity(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedCapacity",
        input_schema = types.DescribeReservedCapacityInput,
        output_schema = types.DescribeReservedCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpace",
        input_schema = types.DescribeSpaceInput,
        output_schema = types.DescribeSpaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStudioLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStudioLifecycleConfig",
        input_schema = types.DescribeStudioLifecycleConfigInput,
        output_schema = types.DescribeStudioLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSubscribedWorkteam(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSubscribedWorkteam",
        input_schema = types.DescribeSubscribedWorkteamInput,
        output_schema = types.DescribeSubscribedWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrainingJob",
        input_schema = types.DescribeTrainingJobInput,
        output_schema = types.DescribeTrainingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrainingPlan(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrainingPlan",
        input_schema = types.DescribeTrainingPlanInput,
        output_schema = types.DescribeTrainingPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrainingPlanExtensionHistory(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrainingPlanExtensionHistory",
        input_schema = types.DescribeTrainingPlanExtensionHistoryInput,
        output_schema = types.DescribeTrainingPlanExtensionHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTransformJob",
        input_schema = types.DescribeTransformJobInput,
        output_schema = types.DescribeTransformJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrial(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrial",
        input_schema = types.DescribeTrialInput,
        output_schema = types.DescribeTrialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrialComponent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrialComponent",
        input_schema = types.DescribeTrialComponentInput,
        output_schema = types.DescribeTrialComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserProfile",
        input_schema = types.DescribeUserProfileInput,
        output_schema = types.DescribeUserProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkforce(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkforce",
        input_schema = types.DescribeWorkforceInput,
        output_schema = types.DescribeWorkforceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkteam(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkteam",
        input_schema = types.DescribeWorkteamInput,
        output_schema = types.DescribeWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachClusterNodeVolume(input, options)
    return self:invokeOperation(input, {
        name = "DetachClusterNodeVolume",
        input_schema = types.DetachClusterNodeVolumeInput,
        output_schema = types.DetachClusterNodeVolumeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSagemakerServicecatalogPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "DisableSagemakerServicecatalogPortfolio",
        input_schema = types.DisableSagemakerServicecatalogPortfolioInput,
        output_schema = types.DisableSagemakerServicecatalogPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTrialComponent(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTrialComponent",
        input_schema = types.DisassociateTrialComponentInput,
        output_schema = types.DisassociateTrialComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSagemakerServicecatalogPortfolio(input, options)
    return self:invokeOperation(input, {
        name = "EnableSagemakerServicecatalogPortfolio",
        input_schema = types.EnableSagemakerServicecatalogPortfolioInput,
        output_schema = types.EnableSagemakerServicecatalogPortfolioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:extendTrainingPlan(input, options)
    return self:invokeOperation(input, {
        name = "ExtendTrainingPlan",
        input_schema = types.ExtendTrainingPlanInput,
        output_schema = types.ExtendTrainingPlanOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeviceFleetReport(input, options)
    return self:invokeOperation(input, {
        name = "GetDeviceFleetReport",
        input_schema = types.GetDeviceFleetReportInput,
        output_schema = types.GetDeviceFleetReportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLineageGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetLineageGroupPolicy",
        input_schema = types.GetLineageGroupPolicyInput,
        output_schema = types.GetLineageGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getModelPackageGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetModelPackageGroupPolicy",
        input_schema = types.GetModelPackageGroupPolicyInput,
        output_schema = types.GetModelPackageGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSagemakerServicecatalogPortfolioStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetSagemakerServicecatalogPortfolioStatus",
        input_schema = types.GetSagemakerServicecatalogPortfolioStatusInput,
        output_schema = types.GetSagemakerServicecatalogPortfolioStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getScalingConfigurationRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "GetScalingConfigurationRecommendation",
        input_schema = types.GetScalingConfigurationRecommendationInput,
        output_schema = types.GetScalingConfigurationRecommendationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSearchSuggestions(input, options)
    return self:invokeOperation(input, {
        name = "GetSearchSuggestions",
        input_schema = types.GetSearchSuggestionsInput,
        output_schema = types.GetSearchSuggestionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importHubContent(input, options)
    return self:invokeOperation(input, {
        name = "ImportHubContent",
        input_schema = types.ImportHubContentInput,
        output_schema = types.ImportHubContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listActions(input, options)
    return self:invokeOperation(input, {
        name = "ListActions",
        input_schema = types.ListActionsInput,
        output_schema = types.ListActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIBenchmarkJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAIBenchmarkJobs",
        input_schema = types.ListAIBenchmarkJobsInput,
        output_schema = types.ListAIBenchmarkJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIRecommendationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAIRecommendationJobs",
        input_schema = types.ListAIRecommendationJobsInput,
        output_schema = types.ListAIRecommendationJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAIWorkloadConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListAIWorkloadConfigs",
        input_schema = types.ListAIWorkloadConfigsInput,
        output_schema = types.ListAIWorkloadConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAlgorithms(input, options)
    return self:invokeOperation(input, {
        name = "ListAlgorithms",
        input_schema = types.ListAlgorithmsInput,
        output_schema = types.ListAlgorithmsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListAliases",
        input_schema = types.ListAliasesInput,
        output_schema = types.ListAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAppImageConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListAppImageConfigs",
        input_schema = types.ListAppImageConfigsInput,
        output_schema = types.ListAppImageConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApps(input, options)
    return self:invokeOperation(input, {
        name = "ListApps",
        input_schema = types.ListAppsInput,
        output_schema = types.ListAppsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listArtifacts(input, options)
    return self:invokeOperation(input, {
        name = "ListArtifacts",
        input_schema = types.ListArtifactsInput,
        output_schema = types.ListArtifactsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociations",
        input_schema = types.ListAssociationsInput,
        output_schema = types.ListAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAutoMLJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListAutoMLJobs",
        input_schema = types.ListAutoMLJobsInput,
        output_schema = types.ListAutoMLJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCandidatesForAutoMLJob(input, options)
    return self:invokeOperation(input, {
        name = "ListCandidatesForAutoMLJob",
        input_schema = types.ListCandidatesForAutoMLJobInput,
        output_schema = types.ListCandidatesForAutoMLJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterEvents(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterEvents",
        input_schema = types.ListClusterEventsInput,
        output_schema = types.ListClusterEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterNodes(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterNodes",
        input_schema = types.ListClusterNodesInput,
        output_schema = types.ListClusterNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterSchedulerConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterSchedulerConfigs",
        input_schema = types.ListClusterSchedulerConfigsInput,
        output_schema = types.ListClusterSchedulerConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCodeRepositories(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeRepositories",
        input_schema = types.ListCodeRepositoriesInput,
        output_schema = types.ListCodeRepositoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCompilationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListCompilationJobs",
        input_schema = types.ListCompilationJobsInput,
        output_schema = types.ListCompilationJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComputeQuotas(input, options)
    return self:invokeOperation(input, {
        name = "ListComputeQuotas",
        input_schema = types.ListComputeQuotasInput,
        output_schema = types.ListComputeQuotasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContexts(input, options)
    return self:invokeOperation(input, {
        name = "ListContexts",
        input_schema = types.ListContextsInput,
        output_schema = types.ListContextsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataQualityJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListDataQualityJobDefinitions",
        input_schema = types.ListDataQualityJobDefinitionsInput,
        output_schema = types.ListDataQualityJobDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeviceFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListDeviceFleets",
        input_schema = types.ListDeviceFleetsInput,
        output_schema = types.ListDeviceFleetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListDevices",
        input_schema = types.ListDevicesInput,
        output_schema = types.ListDevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = types.ListDomainsInput,
        output_schema = types.ListDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEdgeDeploymentPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListEdgeDeploymentPlans",
        input_schema = types.ListEdgeDeploymentPlansInput,
        output_schema = types.ListEdgeDeploymentPlansOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEdgePackagingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListEdgePackagingJobs",
        input_schema = types.ListEdgePackagingJobsInput,
        output_schema = types.ListEdgePackagingJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEndpointConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpointConfigs",
        input_schema = types.ListEndpointConfigsInput,
        output_schema = types.ListEndpointConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpoints",
        input_schema = types.ListEndpointsInput,
        output_schema = types.ListEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExperiments(input, options)
    return self:invokeOperation(input, {
        name = "ListExperiments",
        input_schema = types.ListExperimentsInput,
        output_schema = types.ListExperimentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFeatureGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListFeatureGroups",
        input_schema = types.ListFeatureGroupsInput,
        output_schema = types.ListFeatureGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowDefinitions",
        input_schema = types.ListFlowDefinitionsInput,
        output_schema = types.ListFlowDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHubContents(input, options)
    return self:invokeOperation(input, {
        name = "ListHubContents",
        input_schema = types.ListHubContentsInput,
        output_schema = types.ListHubContentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHubContentVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListHubContentVersions",
        input_schema = types.ListHubContentVersionsInput,
        output_schema = types.ListHubContentVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHubs(input, options)
    return self:invokeOperation(input, {
        name = "ListHubs",
        input_schema = types.ListHubsInput,
        output_schema = types.ListHubsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHumanTaskUis(input, options)
    return self:invokeOperation(input, {
        name = "ListHumanTaskUis",
        input_schema = types.ListHumanTaskUisInput,
        output_schema = types.ListHumanTaskUisOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHyperParameterTuningJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListHyperParameterTuningJobs",
        input_schema = types.ListHyperParameterTuningJobsInput,
        output_schema = types.ListHyperParameterTuningJobsOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImageVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListImageVersions",
        input_schema = types.ListImageVersionsInput,
        output_schema = types.ListImageVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceComponents",
        input_schema = types.ListInferenceComponentsInput,
        output_schema = types.ListInferenceComponentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceExperiments(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceExperiments",
        input_schema = types.ListInferenceExperimentsInput,
        output_schema = types.ListInferenceExperimentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceRecommendationsJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceRecommendationsJobs",
        input_schema = types.ListInferenceRecommendationsJobsInput,
        output_schema = types.ListInferenceRecommendationsJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInferenceRecommendationsJobSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListInferenceRecommendationsJobSteps",
        input_schema = types.ListInferenceRecommendationsJobStepsInput,
        output_schema = types.ListInferenceRecommendationsJobStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLabelingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListLabelingJobs",
        input_schema = types.ListLabelingJobsInput,
        output_schema = types.ListLabelingJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLabelingJobsForWorkteam(input, options)
    return self:invokeOperation(input, {
        name = "ListLabelingJobsForWorkteam",
        input_schema = types.ListLabelingJobsForWorkteamInput,
        output_schema = types.ListLabelingJobsForWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLineageGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListLineageGroups",
        input_schema = types.ListLineageGroupsInput,
        output_schema = types.ListLineageGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMlflowApps(input, options)
    return self:invokeOperation(input, {
        name = "ListMlflowApps",
        input_schema = types.ListMlflowAppsInput,
        output_schema = types.ListMlflowAppsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMlflowTrackingServers(input, options)
    return self:invokeOperation(input, {
        name = "ListMlflowTrackingServers",
        input_schema = types.ListMlflowTrackingServersInput,
        output_schema = types.ListMlflowTrackingServersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelBiasJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListModelBiasJobDefinitions",
        input_schema = types.ListModelBiasJobDefinitionsInput,
        output_schema = types.ListModelBiasJobDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelCardExportJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListModelCardExportJobs",
        input_schema = types.ListModelCardExportJobsInput,
        output_schema = types.ListModelCardExportJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelCards(input, options)
    return self:invokeOperation(input, {
        name = "ListModelCards",
        input_schema = types.ListModelCardsInput,
        output_schema = types.ListModelCardsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelCardVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListModelCardVersions",
        input_schema = types.ListModelCardVersionsInput,
        output_schema = types.ListModelCardVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelExplainabilityJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListModelExplainabilityJobDefinitions",
        input_schema = types.ListModelExplainabilityJobDefinitionsInput,
        output_schema = types.ListModelExplainabilityJobDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelMetadata(input, options)
    return self:invokeOperation(input, {
        name = "ListModelMetadata",
        input_schema = types.ListModelMetadataInput,
        output_schema = types.ListModelMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelPackageGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListModelPackageGroups",
        input_schema = types.ListModelPackageGroupsInput,
        output_schema = types.ListModelPackageGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListModelPackages",
        input_schema = types.ListModelPackagesInput,
        output_schema = types.ListModelPackagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModelQualityJobDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListModelQualityJobDefinitions",
        input_schema = types.ListModelQualityJobDefinitionsInput,
        output_schema = types.ListModelQualityJobDefinitionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listModels(input, options)
    return self:invokeOperation(input, {
        name = "ListModels",
        input_schema = types.ListModelsInput,
        output_schema = types.ListModelsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitoringAlertHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitoringAlertHistory",
        input_schema = types.ListMonitoringAlertHistoryInput,
        output_schema = types.ListMonitoringAlertHistoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitoringAlerts(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitoringAlerts",
        input_schema = types.ListMonitoringAlertsInput,
        output_schema = types.ListMonitoringAlertsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitoringExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitoringExecutions",
        input_schema = types.ListMonitoringExecutionsInput,
        output_schema = types.ListMonitoringExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitoringSchedules(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitoringSchedules",
        input_schema = types.ListMonitoringSchedulesInput,
        output_schema = types.ListMonitoringSchedulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotebookInstanceLifecycleConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookInstanceLifecycleConfigs",
        input_schema = types.ListNotebookInstanceLifecycleConfigsInput,
        output_schema = types.ListNotebookInstanceLifecycleConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotebookInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListNotebookInstances",
        input_schema = types.ListNotebookInstancesInput,
        output_schema = types.ListNotebookInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOptimizationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListOptimizationJobs",
        input_schema = types.ListOptimizationJobsInput,
        output_schema = types.ListOptimizationJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPartnerApps(input, options)
    return self:invokeOperation(input, {
        name = "ListPartnerApps",
        input_schema = types.ListPartnerAppsInput,
        output_schema = types.ListPartnerAppsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelineExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineExecutions",
        input_schema = types.ListPipelineExecutionsInput,
        output_schema = types.ListPipelineExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelineExecutionSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineExecutionSteps",
        input_schema = types.ListPipelineExecutionStepsInput,
        output_schema = types.ListPipelineExecutionStepsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelineParametersForExecution(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineParametersForExecution",
        input_schema = types.ListPipelineParametersForExecutionInput,
        output_schema = types.ListPipelineParametersForExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelines(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelines",
        input_schema = types.ListPipelinesInput,
        output_schema = types.ListPipelinesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPipelineVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPipelineVersions",
        input_schema = types.ListPipelineVersionsInput,
        output_schema = types.ListPipelineVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProcessingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListProcessingJobs",
        input_schema = types.ListProcessingJobsInput,
        output_schema = types.ListProcessingJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProjects(input, options)
    return self:invokeOperation(input, {
        name = "ListProjects",
        input_schema = types.ListProjectsInput,
        output_schema = types.ListProjectsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceCatalogs(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceCatalogs",
        input_schema = types.ListResourceCatalogsInput,
        output_schema = types.ListResourceCatalogsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSpaces(input, options)
    return self:invokeOperation(input, {
        name = "ListSpaces",
        input_schema = types.ListSpacesInput,
        output_schema = types.ListSpacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStageDevices(input, options)
    return self:invokeOperation(input, {
        name = "ListStageDevices",
        input_schema = types.ListStageDevicesInput,
        output_schema = types.ListStageDevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStudioLifecycleConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListStudioLifecycleConfigs",
        input_schema = types.ListStudioLifecycleConfigsInput,
        output_schema = types.ListStudioLifecycleConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSubscribedWorkteams(input, options)
    return self:invokeOperation(input, {
        name = "ListSubscribedWorkteams",
        input_schema = types.ListSubscribedWorkteamsInput,
        output_schema = types.ListSubscribedWorkteamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTags(input, options)
    return self:invokeOperation(input, {
        name = "ListTags",
        input_schema = types.ListTagsInput,
        output_schema = types.ListTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainingJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainingJobs",
        input_schema = types.ListTrainingJobsInput,
        output_schema = types.ListTrainingJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainingJobsForHyperParameterTuningJob(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainingJobsForHyperParameterTuningJob",
        input_schema = types.ListTrainingJobsForHyperParameterTuningJobInput,
        output_schema = types.ListTrainingJobsForHyperParameterTuningJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrainingPlans(input, options)
    return self:invokeOperation(input, {
        name = "ListTrainingPlans",
        input_schema = types.ListTrainingPlansInput,
        output_schema = types.ListTrainingPlansOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTransformJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListTransformJobs",
        input_schema = types.ListTransformJobsInput,
        output_schema = types.ListTransformJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrialComponents(input, options)
    return self:invokeOperation(input, {
        name = "ListTrialComponents",
        input_schema = types.ListTrialComponentsInput,
        output_schema = types.ListTrialComponentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrials(input, options)
    return self:invokeOperation(input, {
        name = "ListTrials",
        input_schema = types.ListTrialsInput,
        output_schema = types.ListTrialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUltraServersByReservedCapacity(input, options)
    return self:invokeOperation(input, {
        name = "ListUltraServersByReservedCapacity",
        input_schema = types.ListUltraServersByReservedCapacityInput,
        output_schema = types.ListUltraServersByReservedCapacityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListUserProfiles",
        input_schema = types.ListUserProfilesInput,
        output_schema = types.ListUserProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkforces(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkforces",
        input_schema = types.ListWorkforcesInput,
        output_schema = types.ListWorkforcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkteams(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkteams",
        input_schema = types.ListWorkteamsInput,
        output_schema = types.ListWorkteamsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putModelPackageGroupPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutModelPackageGroupPolicy",
        input_schema = types.PutModelPackageGroupPolicyInput,
        output_schema = types.PutModelPackageGroupPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:queryLineage(input, options)
    return self:invokeOperation(input, {
        name = "QueryLineage",
        input_schema = types.QueryLineageInput,
        output_schema = types.QueryLineageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDevices(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDevices",
        input_schema = types.RegisterDevicesInput,
        output_schema = types.RegisterDevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:renderUiTemplate(input, options)
    return self:invokeOperation(input, {
        name = "RenderUiTemplate",
        input_schema = types.RenderUiTemplateInput,
        output_schema = types.RenderUiTemplateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:retryPipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "RetryPipelineExecution",
        input_schema = types.RetryPipelineExecutionInput,
        output_schema = types.RetryPipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:search(input, options)
    return self:invokeOperation(input, {
        name = "Search",
        input_schema = types.SearchInput,
        output_schema = types.SearchOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTrainingPlanOfferings(input, options)
    return self:invokeOperation(input, {
        name = "SearchTrainingPlanOfferings",
        input_schema = types.SearchTrainingPlanOfferingsInput,
        output_schema = types.SearchTrainingPlanOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendPipelineExecutionStepFailure(input, options)
    return self:invokeOperation(input, {
        name = "SendPipelineExecutionStepFailure",
        input_schema = types.SendPipelineExecutionStepFailureInput,
        output_schema = types.SendPipelineExecutionStepFailureOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendPipelineExecutionStepSuccess(input, options)
    return self:invokeOperation(input, {
        name = "SendPipelineExecutionStepSuccess",
        input_schema = types.SendPipelineExecutionStepSuccessInput,
        output_schema = types.SendPipelineExecutionStepSuccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startClusterHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "StartClusterHealthCheck",
        input_schema = types.StartClusterHealthCheckInput,
        output_schema = types.StartClusterHealthCheckOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEdgeDeploymentStage(input, options)
    return self:invokeOperation(input, {
        name = "StartEdgeDeploymentStage",
        input_schema = types.StartEdgeDeploymentStageInput,
        output_schema = types.StartEdgeDeploymentStageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startInferenceExperiment(input, options)
    return self:invokeOperation(input, {
        name = "StartInferenceExperiment",
        input_schema = types.StartInferenceExperimentInput,
        output_schema = types.StartInferenceExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMlflowTrackingServer(input, options)
    return self:invokeOperation(input, {
        name = "StartMlflowTrackingServer",
        input_schema = types.StartMlflowTrackingServerInput,
        output_schema = types.StartMlflowTrackingServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMonitoringSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StartMonitoringSchedule",
        input_schema = types.StartMonitoringScheduleInput,
        output_schema = types.StartMonitoringScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startNotebookInstance(input, options)
    return self:invokeOperation(input, {
        name = "StartNotebookInstance",
        input_schema = types.StartNotebookInstanceInput,
        output_schema = types.StartNotebookInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startPipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartPipelineExecution",
        input_schema = types.StartPipelineExecutionInput,
        output_schema = types.StartPipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSession(input, options)
    return self:invokeOperation(input, {
        name = "StartSession",
        input_schema = types.StartSessionInput,
        output_schema = types.StartSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAIBenchmarkJob(input, options)
    return self:invokeOperation(input, {
        name = "StopAIBenchmarkJob",
        input_schema = types.StopAIBenchmarkJobInput,
        output_schema = types.StopAIBenchmarkJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAIRecommendationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopAIRecommendationJob",
        input_schema = types.StopAIRecommendationJobInput,
        output_schema = types.StopAIRecommendationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopAutoMLJob(input, options)
    return self:invokeOperation(input, {
        name = "StopAutoMLJob",
        input_schema = types.StopAutoMLJobInput,
        output_schema = types.StopAutoMLJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopCompilationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopCompilationJob",
        input_schema = types.StopCompilationJobInput,
        output_schema = types.StopCompilationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopEdgeDeploymentStage(input, options)
    return self:invokeOperation(input, {
        name = "StopEdgeDeploymentStage",
        input_schema = types.StopEdgeDeploymentStageInput,
        output_schema = types.StopEdgeDeploymentStageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopEdgePackagingJob(input, options)
    return self:invokeOperation(input, {
        name = "StopEdgePackagingJob",
        input_schema = types.StopEdgePackagingJobInput,
        output_schema = types.StopEdgePackagingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopHyperParameterTuningJob(input, options)
    return self:invokeOperation(input, {
        name = "StopHyperParameterTuningJob",
        input_schema = types.StopHyperParameterTuningJobInput,
        output_schema = types.StopHyperParameterTuningJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopInferenceExperiment(input, options)
    return self:invokeOperation(input, {
        name = "StopInferenceExperiment",
        input_schema = types.StopInferenceExperimentInput,
        output_schema = types.StopInferenceExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopInferenceRecommendationsJob(input, options)
    return self:invokeOperation(input, {
        name = "StopInferenceRecommendationsJob",
        input_schema = types.StopInferenceRecommendationsJobInput,
        output_schema = types.StopInferenceRecommendationsJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopLabelingJob(input, options)
    return self:invokeOperation(input, {
        name = "StopLabelingJob",
        input_schema = types.StopLabelingJobInput,
        output_schema = types.StopLabelingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMlflowTrackingServer(input, options)
    return self:invokeOperation(input, {
        name = "StopMlflowTrackingServer",
        input_schema = types.StopMlflowTrackingServerInput,
        output_schema = types.StopMlflowTrackingServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopMonitoringSchedule(input, options)
    return self:invokeOperation(input, {
        name = "StopMonitoringSchedule",
        input_schema = types.StopMonitoringScheduleInput,
        output_schema = types.StopMonitoringScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopNotebookInstance(input, options)
    return self:invokeOperation(input, {
        name = "StopNotebookInstance",
        input_schema = types.StopNotebookInstanceInput,
        output_schema = types.StopNotebookInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopOptimizationJob(input, options)
    return self:invokeOperation(input, {
        name = "StopOptimizationJob",
        input_schema = types.StopOptimizationJobInput,
        output_schema = types.StopOptimizationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopPipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopPipelineExecution",
        input_schema = types.StopPipelineExecutionInput,
        output_schema = types.StopPipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopProcessingJob(input, options)
    return self:invokeOperation(input, {
        name = "StopProcessingJob",
        input_schema = types.StopProcessingJobInput,
        output_schema = types.StopProcessingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "StopTrainingJob",
        input_schema = types.StopTrainingJobInput,
        output_schema = types.StopTrainingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopTransformJob(input, options)
    return self:invokeOperation(input, {
        name = "StopTransformJob",
        input_schema = types.StopTransformJobInput,
        output_schema = types.StopTransformJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAction(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAction",
        input_schema = types.UpdateActionInput,
        output_schema = types.UpdateActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAppImageConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAppImageConfig",
        input_schema = types.UpdateAppImageConfigInput,
        output_schema = types.UpdateAppImageConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateArtifact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateArtifact",
        input_schema = types.UpdateArtifactInput,
        output_schema = types.UpdateArtifactOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterSchedulerConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterSchedulerConfig",
        input_schema = types.UpdateClusterSchedulerConfigInput,
        output_schema = types.UpdateClusterSchedulerConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateClusterSoftware(input, options)
    return self:invokeOperation(input, {
        name = "UpdateClusterSoftware",
        input_schema = types.UpdateClusterSoftwareInput,
        output_schema = types.UpdateClusterSoftwareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCodeRepository(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCodeRepository",
        input_schema = types.UpdateCodeRepositoryInput,
        output_schema = types.UpdateCodeRepositoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateComputeQuota(input, options)
    return self:invokeOperation(input, {
        name = "UpdateComputeQuota",
        input_schema = types.UpdateComputeQuotaInput,
        output_schema = types.UpdateComputeQuotaOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContext(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContext",
        input_schema = types.UpdateContextInput,
        output_schema = types.UpdateContextOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeviceFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeviceFleet",
        input_schema = types.UpdateDeviceFleetInput,
        output_schema = types.UpdateDeviceFleetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDevices(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDevices",
        input_schema = types.UpdateDevicesInput,
        output_schema = types.UpdateDevicesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomain",
        input_schema = types.UpdateDomainInput,
        output_schema = types.UpdateDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpoint",
        input_schema = types.UpdateEndpointInput,
        output_schema = types.UpdateEndpointOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEndpointWeightsAndCapacities(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpointWeightsAndCapacities",
        input_schema = types.UpdateEndpointWeightsAndCapacitiesInput,
        output_schema = types.UpdateEndpointWeightsAndCapacitiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExperiment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExperiment",
        input_schema = types.UpdateExperimentInput,
        output_schema = types.UpdateExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFeatureGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFeatureGroup",
        input_schema = types.UpdateFeatureGroupInput,
        output_schema = types.UpdateFeatureGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFeatureMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFeatureMetadata",
        input_schema = types.UpdateFeatureMetadataInput,
        output_schema = types.UpdateFeatureMetadataOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHub(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHub",
        input_schema = types.UpdateHubInput,
        output_schema = types.UpdateHubOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHubContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHubContent",
        input_schema = types.UpdateHubContentInput,
        output_schema = types.UpdateHubContentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHubContentReference(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHubContentReference",
        input_schema = types.UpdateHubContentReferenceInput,
        output_schema = types.UpdateHubContentReferenceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImage",
        input_schema = types.UpdateImageInput,
        output_schema = types.UpdateImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateImageVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdateImageVersion",
        input_schema = types.UpdateImageVersionInput,
        output_schema = types.UpdateImageVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInferenceComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInferenceComponent",
        input_schema = types.UpdateInferenceComponentInput,
        output_schema = types.UpdateInferenceComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInferenceComponentRuntimeConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInferenceComponentRuntimeConfig",
        input_schema = types.UpdateInferenceComponentRuntimeConfigInput,
        output_schema = types.UpdateInferenceComponentRuntimeConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInferenceExperiment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInferenceExperiment",
        input_schema = types.UpdateInferenceExperimentInput,
        output_schema = types.UpdateInferenceExperimentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMlflowApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMlflowApp",
        input_schema = types.UpdateMlflowAppInput,
        output_schema = types.UpdateMlflowAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMlflowTrackingServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMlflowTrackingServer",
        input_schema = types.UpdateMlflowTrackingServerInput,
        output_schema = types.UpdateMlflowTrackingServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModelCard(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelCard",
        input_schema = types.UpdateModelCardInput,
        output_schema = types.UpdateModelCardOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateModelPackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateModelPackage",
        input_schema = types.UpdateModelPackageInput,
        output_schema = types.UpdateModelPackageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMonitoringAlert(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitoringAlert",
        input_schema = types.UpdateMonitoringAlertInput,
        output_schema = types.UpdateMonitoringAlertOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMonitoringSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitoringSchedule",
        input_schema = types.UpdateMonitoringScheduleInput,
        output_schema = types.UpdateMonitoringScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotebookInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotebookInstance",
        input_schema = types.UpdateNotebookInstanceInput,
        output_schema = types.UpdateNotebookInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotebookInstanceLifecycleConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotebookInstanceLifecycleConfig",
        input_schema = types.UpdateNotebookInstanceLifecycleConfigInput,
        output_schema = types.UpdateNotebookInstanceLifecycleConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePartnerApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartnerApp",
        input_schema = types.UpdatePartnerAppInput,
        output_schema = types.UpdatePartnerAppOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePipeline(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePipeline",
        input_schema = types.UpdatePipelineInput,
        output_schema = types.UpdatePipelineOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePipelineExecution(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePipelineExecution",
        input_schema = types.UpdatePipelineExecutionInput,
        output_schema = types.UpdatePipelineExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePipelineVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePipelineVersion",
        input_schema = types.UpdatePipelineVersionInput,
        output_schema = types.UpdatePipelineVersionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProject(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProject",
        input_schema = types.UpdateProjectInput,
        output_schema = types.UpdateProjectOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSpace(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSpace",
        input_schema = types.UpdateSpaceInput,
        output_schema = types.UpdateSpaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrainingJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrainingJob",
        input_schema = types.UpdateTrainingJobInput,
        output_schema = types.UpdateTrainingJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrial(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrial",
        input_schema = types.UpdateTrialInput,
        output_schema = types.UpdateTrialOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrialComponent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrialComponent",
        input_schema = types.UpdateTrialComponentInput,
        output_schema = types.UpdateTrialComponentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserProfile",
        input_schema = types.UpdateUserProfileInput,
        output_schema = types.UpdateUserProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkforce(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkforce",
        input_schema = types.UpdateWorkforceInput,
        output_schema = types.UpdateWorkforceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkteam(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkteam",
        input_schema = types.UpdateWorkteamInput,
        output_schema = types.UpdateWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
