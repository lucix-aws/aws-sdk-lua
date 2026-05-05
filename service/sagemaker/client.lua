local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("sagemaker.endpoint_rules")
local schemas = require("sagemaker.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SageMaker"
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
        input_schema = schemas.AddAssociationInput,
        output_schema = schemas.AddAssociationOutput,
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
        input_schema = schemas.AddTagsInput,
        output_schema = schemas.AddTagsOutput,
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
        input_schema = schemas.AssociateTrialComponentInput,
        output_schema = schemas.AssociateTrialComponentOutput,
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
        input_schema = schemas.AttachClusterNodeVolumeInput,
        output_schema = schemas.AttachClusterNodeVolumeOutput,
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
        input_schema = schemas.BatchAddClusterNodesInput,
        output_schema = schemas.BatchAddClusterNodesOutput,
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
        input_schema = schemas.BatchDeleteClusterNodesInput,
        output_schema = schemas.BatchDeleteClusterNodesOutput,
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
        input_schema = schemas.BatchDescribeModelPackageInput,
        output_schema = schemas.BatchDescribeModelPackageOutput,
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
        input_schema = schemas.BatchRebootClusterNodesInput,
        output_schema = schemas.BatchRebootClusterNodesOutput,
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
        input_schema = schemas.BatchReplaceClusterNodesInput,
        output_schema = schemas.BatchReplaceClusterNodesOutput,
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
        input_schema = schemas.CreateActionInput,
        output_schema = schemas.CreateActionOutput,
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
        input_schema = schemas.CreateAIBenchmarkJobInput,
        output_schema = schemas.CreateAIBenchmarkJobOutput,
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
        input_schema = schemas.CreateAIRecommendationJobInput,
        output_schema = schemas.CreateAIRecommendationJobOutput,
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
        input_schema = schemas.CreateAIWorkloadConfigInput,
        output_schema = schemas.CreateAIWorkloadConfigOutput,
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
        input_schema = schemas.CreateAlgorithmInput,
        output_schema = schemas.CreateAlgorithmOutput,
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
        input_schema = schemas.CreateAppInput,
        output_schema = schemas.CreateAppOutput,
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
        input_schema = schemas.CreateAppImageConfigInput,
        output_schema = schemas.CreateAppImageConfigOutput,
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
        input_schema = schemas.CreateArtifactInput,
        output_schema = schemas.CreateArtifactOutput,
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
        input_schema = schemas.CreateAutoMLJobInput,
        output_schema = schemas.CreateAutoMLJobOutput,
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
        input_schema = schemas.CreateAutoMLJobV2Input,
        output_schema = schemas.CreateAutoMLJobV2Output,
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
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
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
        input_schema = schemas.CreateClusterSchedulerConfigInput,
        output_schema = schemas.CreateClusterSchedulerConfigOutput,
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
        input_schema = schemas.CreateCodeRepositoryInput,
        output_schema = schemas.CreateCodeRepositoryOutput,
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
        input_schema = schemas.CreateCompilationJobInput,
        output_schema = schemas.CreateCompilationJobOutput,
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
        input_schema = schemas.CreateComputeQuotaInput,
        output_schema = schemas.CreateComputeQuotaOutput,
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
        input_schema = schemas.CreateContextInput,
        output_schema = schemas.CreateContextOutput,
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
        input_schema = schemas.CreateDataQualityJobDefinitionInput,
        output_schema = schemas.CreateDataQualityJobDefinitionOutput,
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
        input_schema = schemas.CreateDeviceFleetInput,
        output_schema = schemas.CreateDeviceFleetOutput,
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
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
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
        input_schema = schemas.CreateEdgeDeploymentPlanInput,
        output_schema = schemas.CreateEdgeDeploymentPlanOutput,
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
        input_schema = schemas.CreateEdgeDeploymentStageInput,
        output_schema = schemas.CreateEdgeDeploymentStageOutput,
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
        input_schema = schemas.CreateEdgePackagingJobInput,
        output_schema = schemas.CreateEdgePackagingJobOutput,
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
        input_schema = schemas.CreateEndpointInput,
        output_schema = schemas.CreateEndpointOutput,
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
        input_schema = schemas.CreateEndpointConfigInput,
        output_schema = schemas.CreateEndpointConfigOutput,
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
        input_schema = schemas.CreateExperimentInput,
        output_schema = schemas.CreateExperimentOutput,
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
        input_schema = schemas.CreateFeatureGroupInput,
        output_schema = schemas.CreateFeatureGroupOutput,
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
        input_schema = schemas.CreateFlowDefinitionInput,
        output_schema = schemas.CreateFlowDefinitionOutput,
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
        input_schema = schemas.CreateHubInput,
        output_schema = schemas.CreateHubOutput,
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
        input_schema = schemas.CreateHubContentPresignedUrlsInput,
        output_schema = schemas.CreateHubContentPresignedUrlsOutput,
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
        input_schema = schemas.CreateHubContentReferenceInput,
        output_schema = schemas.CreateHubContentReferenceOutput,
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
        input_schema = schemas.CreateHumanTaskUiInput,
        output_schema = schemas.CreateHumanTaskUiOutput,
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
        input_schema = schemas.CreateHyperParameterTuningJobInput,
        output_schema = schemas.CreateHyperParameterTuningJobOutput,
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
        input_schema = schemas.CreateImageInput,
        output_schema = schemas.CreateImageOutput,
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
        input_schema = schemas.CreateImageVersionInput,
        output_schema = schemas.CreateImageVersionOutput,
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
        input_schema = schemas.CreateInferenceComponentInput,
        output_schema = schemas.CreateInferenceComponentOutput,
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
        input_schema = schemas.CreateInferenceExperimentInput,
        output_schema = schemas.CreateInferenceExperimentOutput,
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
        input_schema = schemas.CreateInferenceRecommendationsJobInput,
        output_schema = schemas.CreateInferenceRecommendationsJobOutput,
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
        input_schema = schemas.CreateLabelingJobInput,
        output_schema = schemas.CreateLabelingJobOutput,
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
        input_schema = schemas.CreateMlflowAppInput,
        output_schema = schemas.CreateMlflowAppOutput,
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
        input_schema = schemas.CreateMlflowTrackingServerInput,
        output_schema = schemas.CreateMlflowTrackingServerOutput,
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
        input_schema = schemas.CreateModelInput,
        output_schema = schemas.CreateModelOutput,
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
        input_schema = schemas.CreateModelBiasJobDefinitionInput,
        output_schema = schemas.CreateModelBiasJobDefinitionOutput,
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
        input_schema = schemas.CreateModelCardInput,
        output_schema = schemas.CreateModelCardOutput,
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
        input_schema = schemas.CreateModelCardExportJobInput,
        output_schema = schemas.CreateModelCardExportJobOutput,
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
        input_schema = schemas.CreateModelExplainabilityJobDefinitionInput,
        output_schema = schemas.CreateModelExplainabilityJobDefinitionOutput,
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
        input_schema = schemas.CreateModelPackageInput,
        output_schema = schemas.CreateModelPackageOutput,
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
        input_schema = schemas.CreateModelPackageGroupInput,
        output_schema = schemas.CreateModelPackageGroupOutput,
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
        input_schema = schemas.CreateModelQualityJobDefinitionInput,
        output_schema = schemas.CreateModelQualityJobDefinitionOutput,
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
        input_schema = schemas.CreateMonitoringScheduleInput,
        output_schema = schemas.CreateMonitoringScheduleOutput,
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
        input_schema = schemas.CreateNotebookInstanceInput,
        output_schema = schemas.CreateNotebookInstanceOutput,
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
        input_schema = schemas.CreateNotebookInstanceLifecycleConfigInput,
        output_schema = schemas.CreateNotebookInstanceLifecycleConfigOutput,
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
        input_schema = schemas.CreateOptimizationJobInput,
        output_schema = schemas.CreateOptimizationJobOutput,
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
        input_schema = schemas.CreatePartnerAppInput,
        output_schema = schemas.CreatePartnerAppOutput,
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
        input_schema = schemas.CreatePartnerAppPresignedUrlInput,
        output_schema = schemas.CreatePartnerAppPresignedUrlOutput,
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
        input_schema = schemas.CreatePipelineInput,
        output_schema = schemas.CreatePipelineOutput,
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
        input_schema = schemas.CreatePresignedDomainUrlInput,
        output_schema = schemas.CreatePresignedDomainUrlOutput,
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
        input_schema = schemas.CreatePresignedMlflowAppUrlInput,
        output_schema = schemas.CreatePresignedMlflowAppUrlOutput,
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
        input_schema = schemas.CreatePresignedMlflowTrackingServerUrlInput,
        output_schema = schemas.CreatePresignedMlflowTrackingServerUrlOutput,
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
        input_schema = schemas.CreatePresignedNotebookInstanceUrlInput,
        output_schema = schemas.CreatePresignedNotebookInstanceUrlOutput,
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
        input_schema = schemas.CreateProcessingJobInput,
        output_schema = schemas.CreateProcessingJobOutput,
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
        input_schema = schemas.CreateProjectInput,
        output_schema = schemas.CreateProjectOutput,
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
        input_schema = schemas.CreateSpaceInput,
        output_schema = schemas.CreateSpaceOutput,
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
        input_schema = schemas.CreateStudioLifecycleConfigInput,
        output_schema = schemas.CreateStudioLifecycleConfigOutput,
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
        input_schema = schemas.CreateTrainingJobInput,
        output_schema = schemas.CreateTrainingJobOutput,
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
        input_schema = schemas.CreateTrainingPlanInput,
        output_schema = schemas.CreateTrainingPlanOutput,
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
        input_schema = schemas.CreateTransformJobInput,
        output_schema = schemas.CreateTransformJobOutput,
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
        input_schema = schemas.CreateTrialInput,
        output_schema = schemas.CreateTrialOutput,
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
        input_schema = schemas.CreateTrialComponentInput,
        output_schema = schemas.CreateTrialComponentOutput,
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
        input_schema = schemas.CreateUserProfileInput,
        output_schema = schemas.CreateUserProfileOutput,
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
        input_schema = schemas.CreateWorkforceInput,
        output_schema = schemas.CreateWorkforceOutput,
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
        input_schema = schemas.CreateWorkteamInput,
        output_schema = schemas.CreateWorkteamOutput,
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
        input_schema = schemas.DeleteActionInput,
        output_schema = schemas.DeleteActionOutput,
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
        input_schema = schemas.DeleteAIBenchmarkJobInput,
        output_schema = schemas.DeleteAIBenchmarkJobOutput,
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
        input_schema = schemas.DeleteAIRecommendationJobInput,
        output_schema = schemas.DeleteAIRecommendationJobOutput,
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
        input_schema = schemas.DeleteAIWorkloadConfigInput,
        output_schema = schemas.DeleteAIWorkloadConfigOutput,
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
        input_schema = schemas.DeleteAlgorithmInput,
        output_schema = schemas.DeleteAlgorithmOutput,
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
        input_schema = schemas.DeleteAppInput,
        output_schema = schemas.DeleteAppOutput,
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
        input_schema = schemas.DeleteAppImageConfigInput,
        output_schema = schemas.DeleteAppImageConfigOutput,
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
        input_schema = schemas.DeleteArtifactInput,
        output_schema = schemas.DeleteArtifactOutput,
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
        input_schema = schemas.DeleteAssociationInput,
        output_schema = schemas.DeleteAssociationOutput,
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
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
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
        input_schema = schemas.DeleteClusterSchedulerConfigInput,
        output_schema = schemas.DeleteClusterSchedulerConfigOutput,
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
        input_schema = schemas.DeleteCodeRepositoryInput,
        output_schema = schemas.DeleteCodeRepositoryOutput,
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
        input_schema = schemas.DeleteCompilationJobInput,
        output_schema = schemas.DeleteCompilationJobOutput,
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
        input_schema = schemas.DeleteComputeQuotaInput,
        output_schema = schemas.DeleteComputeQuotaOutput,
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
        input_schema = schemas.DeleteContextInput,
        output_schema = schemas.DeleteContextOutput,
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
        input_schema = schemas.DeleteDataQualityJobDefinitionInput,
        output_schema = schemas.DeleteDataQualityJobDefinitionOutput,
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
        input_schema = schemas.DeleteDeviceFleetInput,
        output_schema = schemas.DeleteDeviceFleetOutput,
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
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
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
        input_schema = schemas.DeleteEdgeDeploymentPlanInput,
        output_schema = schemas.DeleteEdgeDeploymentPlanOutput,
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
        input_schema = schemas.DeleteEdgeDeploymentStageInput,
        output_schema = schemas.DeleteEdgeDeploymentStageOutput,
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
        input_schema = schemas.DeleteEndpointInput,
        output_schema = schemas.DeleteEndpointOutput,
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
        input_schema = schemas.DeleteEndpointConfigInput,
        output_schema = schemas.DeleteEndpointConfigOutput,
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
        input_schema = schemas.DeleteExperimentInput,
        output_schema = schemas.DeleteExperimentOutput,
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
        input_schema = schemas.DeleteFeatureGroupInput,
        output_schema = schemas.DeleteFeatureGroupOutput,
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
        input_schema = schemas.DeleteFlowDefinitionInput,
        output_schema = schemas.DeleteFlowDefinitionOutput,
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
        input_schema = schemas.DeleteHubInput,
        output_schema = schemas.DeleteHubOutput,
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
        input_schema = schemas.DeleteHubContentInput,
        output_schema = schemas.DeleteHubContentOutput,
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
        input_schema = schemas.DeleteHubContentReferenceInput,
        output_schema = schemas.DeleteHubContentReferenceOutput,
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
        input_schema = schemas.DeleteHumanTaskUiInput,
        output_schema = schemas.DeleteHumanTaskUiOutput,
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
        input_schema = schemas.DeleteHyperParameterTuningJobInput,
        output_schema = schemas.DeleteHyperParameterTuningJobOutput,
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
        input_schema = schemas.DeleteImageInput,
        output_schema = schemas.DeleteImageOutput,
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
        input_schema = schemas.DeleteImageVersionInput,
        output_schema = schemas.DeleteImageVersionOutput,
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
        input_schema = schemas.DeleteInferenceComponentInput,
        output_schema = schemas.DeleteInferenceComponentOutput,
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
        input_schema = schemas.DeleteInferenceExperimentInput,
        output_schema = schemas.DeleteInferenceExperimentOutput,
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
        input_schema = schemas.DeleteMlflowAppInput,
        output_schema = schemas.DeleteMlflowAppOutput,
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
        input_schema = schemas.DeleteMlflowTrackingServerInput,
        output_schema = schemas.DeleteMlflowTrackingServerOutput,
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
        input_schema = schemas.DeleteModelInput,
        output_schema = schemas.DeleteModelOutput,
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
        input_schema = schemas.DeleteModelBiasJobDefinitionInput,
        output_schema = schemas.DeleteModelBiasJobDefinitionOutput,
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
        input_schema = schemas.DeleteModelCardInput,
        output_schema = schemas.DeleteModelCardOutput,
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
        input_schema = schemas.DeleteModelExplainabilityJobDefinitionInput,
        output_schema = schemas.DeleteModelExplainabilityJobDefinitionOutput,
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
        input_schema = schemas.DeleteModelPackageInput,
        output_schema = schemas.DeleteModelPackageOutput,
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
        input_schema = schemas.DeleteModelPackageGroupInput,
        output_schema = schemas.DeleteModelPackageGroupOutput,
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
        input_schema = schemas.DeleteModelPackageGroupPolicyInput,
        output_schema = schemas.DeleteModelPackageGroupPolicyOutput,
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
        input_schema = schemas.DeleteModelQualityJobDefinitionInput,
        output_schema = schemas.DeleteModelQualityJobDefinitionOutput,
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
        input_schema = schemas.DeleteMonitoringScheduleInput,
        output_schema = schemas.DeleteMonitoringScheduleOutput,
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
        input_schema = schemas.DeleteNotebookInstanceInput,
        output_schema = schemas.DeleteNotebookInstanceOutput,
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
        input_schema = schemas.DeleteNotebookInstanceLifecycleConfigInput,
        output_schema = schemas.DeleteNotebookInstanceLifecycleConfigOutput,
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
        input_schema = schemas.DeleteOptimizationJobInput,
        output_schema = schemas.DeleteOptimizationJobOutput,
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
        input_schema = schemas.DeletePartnerAppInput,
        output_schema = schemas.DeletePartnerAppOutput,
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
        input_schema = schemas.DeletePipelineInput,
        output_schema = schemas.DeletePipelineOutput,
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
        input_schema = schemas.DeleteProcessingJobInput,
        output_schema = schemas.DeleteProcessingJobOutput,
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
        input_schema = schemas.DeleteProjectInput,
        output_schema = schemas.DeleteProjectOutput,
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
        input_schema = schemas.DeleteSpaceInput,
        output_schema = schemas.DeleteSpaceOutput,
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
        input_schema = schemas.DeleteStudioLifecycleConfigInput,
        output_schema = schemas.DeleteStudioLifecycleConfigOutput,
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
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
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
        input_schema = schemas.DeleteTrainingJobInput,
        output_schema = schemas.DeleteTrainingJobOutput,
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
        input_schema = schemas.DeleteTrialInput,
        output_schema = schemas.DeleteTrialOutput,
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
        input_schema = schemas.DeleteTrialComponentInput,
        output_schema = schemas.DeleteTrialComponentOutput,
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
        input_schema = schemas.DeleteUserProfileInput,
        output_schema = schemas.DeleteUserProfileOutput,
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
        input_schema = schemas.DeleteWorkforceInput,
        output_schema = schemas.DeleteWorkforceOutput,
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
        input_schema = schemas.DeleteWorkteamInput,
        output_schema = schemas.DeleteWorkteamOutput,
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
        input_schema = schemas.DeregisterDevicesInput,
        output_schema = schemas.DeregisterDevicesOutput,
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
        input_schema = schemas.DescribeActionInput,
        output_schema = schemas.DescribeActionOutput,
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
        input_schema = schemas.DescribeAIBenchmarkJobInput,
        output_schema = schemas.DescribeAIBenchmarkJobOutput,
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
        input_schema = schemas.DescribeAIRecommendationJobInput,
        output_schema = schemas.DescribeAIRecommendationJobOutput,
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
        input_schema = schemas.DescribeAIWorkloadConfigInput,
        output_schema = schemas.DescribeAIWorkloadConfigOutput,
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
        input_schema = schemas.DescribeAlgorithmInput,
        output_schema = schemas.DescribeAlgorithmOutput,
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
        input_schema = schemas.DescribeAppInput,
        output_schema = schemas.DescribeAppOutput,
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
        input_schema = schemas.DescribeAppImageConfigInput,
        output_schema = schemas.DescribeAppImageConfigOutput,
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
        input_schema = schemas.DescribeArtifactInput,
        output_schema = schemas.DescribeArtifactOutput,
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
        input_schema = schemas.DescribeAutoMLJobInput,
        output_schema = schemas.DescribeAutoMLJobOutput,
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
        input_schema = schemas.DescribeAutoMLJobV2Input,
        output_schema = schemas.DescribeAutoMLJobV2Output,
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
        input_schema = schemas.DescribeClusterInput,
        output_schema = schemas.DescribeClusterOutput,
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
        input_schema = schemas.DescribeClusterEventInput,
        output_schema = schemas.DescribeClusterEventOutput,
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
        input_schema = schemas.DescribeClusterNodeInput,
        output_schema = schemas.DescribeClusterNodeOutput,
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
        input_schema = schemas.DescribeClusterSchedulerConfigInput,
        output_schema = schemas.DescribeClusterSchedulerConfigOutput,
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
        input_schema = schemas.DescribeCodeRepositoryInput,
        output_schema = schemas.DescribeCodeRepositoryOutput,
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
        input_schema = schemas.DescribeCompilationJobInput,
        output_schema = schemas.DescribeCompilationJobOutput,
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
        input_schema = schemas.DescribeComputeQuotaInput,
        output_schema = schemas.DescribeComputeQuotaOutput,
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
        input_schema = schemas.DescribeContextInput,
        output_schema = schemas.DescribeContextOutput,
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
        input_schema = schemas.DescribeDataQualityJobDefinitionInput,
        output_schema = schemas.DescribeDataQualityJobDefinitionOutput,
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
        input_schema = schemas.DescribeDeviceInput,
        output_schema = schemas.DescribeDeviceOutput,
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
        input_schema = schemas.DescribeDeviceFleetInput,
        output_schema = schemas.DescribeDeviceFleetOutput,
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
        input_schema = schemas.DescribeDomainInput,
        output_schema = schemas.DescribeDomainOutput,
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
        input_schema = schemas.DescribeEdgeDeploymentPlanInput,
        output_schema = schemas.DescribeEdgeDeploymentPlanOutput,
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
        input_schema = schemas.DescribeEdgePackagingJobInput,
        output_schema = schemas.DescribeEdgePackagingJobOutput,
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
        input_schema = schemas.DescribeEndpointInput,
        output_schema = schemas.DescribeEndpointOutput,
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
        input_schema = schemas.DescribeEndpointConfigInput,
        output_schema = schemas.DescribeEndpointConfigOutput,
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
        input_schema = schemas.DescribeExperimentInput,
        output_schema = schemas.DescribeExperimentOutput,
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
        input_schema = schemas.DescribeFeatureGroupInput,
        output_schema = schemas.DescribeFeatureGroupOutput,
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
        input_schema = schemas.DescribeFeatureMetadataInput,
        output_schema = schemas.DescribeFeatureMetadataOutput,
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
        input_schema = schemas.DescribeFlowDefinitionInput,
        output_schema = schemas.DescribeFlowDefinitionOutput,
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
        input_schema = schemas.DescribeHubInput,
        output_schema = schemas.DescribeHubOutput,
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
        input_schema = schemas.DescribeHubContentInput,
        output_schema = schemas.DescribeHubContentOutput,
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
        input_schema = schemas.DescribeHumanTaskUiInput,
        output_schema = schemas.DescribeHumanTaskUiOutput,
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
        input_schema = schemas.DescribeHyperParameterTuningJobInput,
        output_schema = schemas.DescribeHyperParameterTuningJobOutput,
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
        input_schema = schemas.DescribeImageInput,
        output_schema = schemas.DescribeImageOutput,
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
        input_schema = schemas.DescribeImageVersionInput,
        output_schema = schemas.DescribeImageVersionOutput,
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
        input_schema = schemas.DescribeInferenceComponentInput,
        output_schema = schemas.DescribeInferenceComponentOutput,
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
        input_schema = schemas.DescribeInferenceExperimentInput,
        output_schema = schemas.DescribeInferenceExperimentOutput,
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
        input_schema = schemas.DescribeInferenceRecommendationsJobInput,
        output_schema = schemas.DescribeInferenceRecommendationsJobOutput,
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
        input_schema = schemas.DescribeLabelingJobInput,
        output_schema = schemas.DescribeLabelingJobOutput,
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
        input_schema = schemas.DescribeLineageGroupInput,
        output_schema = schemas.DescribeLineageGroupOutput,
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
        input_schema = schemas.DescribeMlflowAppInput,
        output_schema = schemas.DescribeMlflowAppOutput,
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
        input_schema = schemas.DescribeMlflowTrackingServerInput,
        output_schema = schemas.DescribeMlflowTrackingServerOutput,
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
        input_schema = schemas.DescribeModelInput,
        output_schema = schemas.DescribeModelOutput,
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
        input_schema = schemas.DescribeModelBiasJobDefinitionInput,
        output_schema = schemas.DescribeModelBiasJobDefinitionOutput,
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
        input_schema = schemas.DescribeModelCardInput,
        output_schema = schemas.DescribeModelCardOutput,
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
        input_schema = schemas.DescribeModelCardExportJobInput,
        output_schema = schemas.DescribeModelCardExportJobOutput,
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
        input_schema = schemas.DescribeModelExplainabilityJobDefinitionInput,
        output_schema = schemas.DescribeModelExplainabilityJobDefinitionOutput,
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
        input_schema = schemas.DescribeModelPackageInput,
        output_schema = schemas.DescribeModelPackageOutput,
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
        input_schema = schemas.DescribeModelPackageGroupInput,
        output_schema = schemas.DescribeModelPackageGroupOutput,
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
        input_schema = schemas.DescribeModelQualityJobDefinitionInput,
        output_schema = schemas.DescribeModelQualityJobDefinitionOutput,
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
        input_schema = schemas.DescribeMonitoringScheduleInput,
        output_schema = schemas.DescribeMonitoringScheduleOutput,
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
        input_schema = schemas.DescribeNotebookInstanceInput,
        output_schema = schemas.DescribeNotebookInstanceOutput,
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
        input_schema = schemas.DescribeNotebookInstanceLifecycleConfigInput,
        output_schema = schemas.DescribeNotebookInstanceLifecycleConfigOutput,
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
        input_schema = schemas.DescribeOptimizationJobInput,
        output_schema = schemas.DescribeOptimizationJobOutput,
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
        input_schema = schemas.DescribePartnerAppInput,
        output_schema = schemas.DescribePartnerAppOutput,
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
        input_schema = schemas.DescribePipelineInput,
        output_schema = schemas.DescribePipelineOutput,
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
        input_schema = schemas.DescribePipelineDefinitionForExecutionInput,
        output_schema = schemas.DescribePipelineDefinitionForExecutionOutput,
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
        input_schema = schemas.DescribePipelineExecutionInput,
        output_schema = schemas.DescribePipelineExecutionOutput,
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
        input_schema = schemas.DescribeProcessingJobInput,
        output_schema = schemas.DescribeProcessingJobOutput,
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
        input_schema = schemas.DescribeProjectInput,
        output_schema = schemas.DescribeProjectOutput,
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
        input_schema = schemas.DescribeReservedCapacityInput,
        output_schema = schemas.DescribeReservedCapacityOutput,
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
        input_schema = schemas.DescribeSpaceInput,
        output_schema = schemas.DescribeSpaceOutput,
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
        input_schema = schemas.DescribeStudioLifecycleConfigInput,
        output_schema = schemas.DescribeStudioLifecycleConfigOutput,
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
        input_schema = schemas.DescribeSubscribedWorkteamInput,
        output_schema = schemas.DescribeSubscribedWorkteamOutput,
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
        input_schema = schemas.DescribeTrainingJobInput,
        output_schema = schemas.DescribeTrainingJobOutput,
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
        input_schema = schemas.DescribeTrainingPlanInput,
        output_schema = schemas.DescribeTrainingPlanOutput,
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
        input_schema = schemas.DescribeTrainingPlanExtensionHistoryInput,
        output_schema = schemas.DescribeTrainingPlanExtensionHistoryOutput,
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
        input_schema = schemas.DescribeTransformJobInput,
        output_schema = schemas.DescribeTransformJobOutput,
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
        input_schema = schemas.DescribeTrialInput,
        output_schema = schemas.DescribeTrialOutput,
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
        input_schema = schemas.DescribeTrialComponentInput,
        output_schema = schemas.DescribeTrialComponentOutput,
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
        input_schema = schemas.DescribeUserProfileInput,
        output_schema = schemas.DescribeUserProfileOutput,
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
        input_schema = schemas.DescribeWorkforceInput,
        output_schema = schemas.DescribeWorkforceOutput,
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
        input_schema = schemas.DescribeWorkteamInput,
        output_schema = schemas.DescribeWorkteamOutput,
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
        input_schema = schemas.DetachClusterNodeVolumeInput,
        output_schema = schemas.DetachClusterNodeVolumeOutput,
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
        input_schema = schemas.DisableSagemakerServicecatalogPortfolioInput,
        output_schema = schemas.DisableSagemakerServicecatalogPortfolioOutput,
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
        input_schema = schemas.DisassociateTrialComponentInput,
        output_schema = schemas.DisassociateTrialComponentOutput,
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
        input_schema = schemas.EnableSagemakerServicecatalogPortfolioInput,
        output_schema = schemas.EnableSagemakerServicecatalogPortfolioOutput,
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
        input_schema = schemas.ExtendTrainingPlanInput,
        output_schema = schemas.ExtendTrainingPlanOutput,
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
        input_schema = schemas.GetDeviceFleetReportInput,
        output_schema = schemas.GetDeviceFleetReportOutput,
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
        input_schema = schemas.GetLineageGroupPolicyInput,
        output_schema = schemas.GetLineageGroupPolicyOutput,
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
        input_schema = schemas.GetModelPackageGroupPolicyInput,
        output_schema = schemas.GetModelPackageGroupPolicyOutput,
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
        input_schema = schemas.GetSagemakerServicecatalogPortfolioStatusInput,
        output_schema = schemas.GetSagemakerServicecatalogPortfolioStatusOutput,
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
        input_schema = schemas.GetScalingConfigurationRecommendationInput,
        output_schema = schemas.GetScalingConfigurationRecommendationOutput,
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
        input_schema = schemas.GetSearchSuggestionsInput,
        output_schema = schemas.GetSearchSuggestionsOutput,
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
        input_schema = schemas.ImportHubContentInput,
        output_schema = schemas.ImportHubContentOutput,
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
        input_schema = schemas.ListActionsInput,
        output_schema = schemas.ListActionsOutput,
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
        input_schema = schemas.ListAIBenchmarkJobsInput,
        output_schema = schemas.ListAIBenchmarkJobsOutput,
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
        input_schema = schemas.ListAIRecommendationJobsInput,
        output_schema = schemas.ListAIRecommendationJobsOutput,
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
        input_schema = schemas.ListAIWorkloadConfigsInput,
        output_schema = schemas.ListAIWorkloadConfigsOutput,
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
        input_schema = schemas.ListAlgorithmsInput,
        output_schema = schemas.ListAlgorithmsOutput,
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
        input_schema = schemas.ListAliasesInput,
        output_schema = schemas.ListAliasesOutput,
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
        input_schema = schemas.ListAppImageConfigsInput,
        output_schema = schemas.ListAppImageConfigsOutput,
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
        input_schema = schemas.ListAppsInput,
        output_schema = schemas.ListAppsOutput,
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
        input_schema = schemas.ListArtifactsInput,
        output_schema = schemas.ListArtifactsOutput,
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
        input_schema = schemas.ListAssociationsInput,
        output_schema = schemas.ListAssociationsOutput,
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
        input_schema = schemas.ListAutoMLJobsInput,
        output_schema = schemas.ListAutoMLJobsOutput,
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
        input_schema = schemas.ListCandidatesForAutoMLJobInput,
        output_schema = schemas.ListCandidatesForAutoMLJobOutput,
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
        input_schema = schemas.ListClusterEventsInput,
        output_schema = schemas.ListClusterEventsOutput,
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
        input_schema = schemas.ListClusterNodesInput,
        output_schema = schemas.ListClusterNodesOutput,
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
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
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
        input_schema = schemas.ListClusterSchedulerConfigsInput,
        output_schema = schemas.ListClusterSchedulerConfigsOutput,
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
        input_schema = schemas.ListCodeRepositoriesInput,
        output_schema = schemas.ListCodeRepositoriesOutput,
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
        input_schema = schemas.ListCompilationJobsInput,
        output_schema = schemas.ListCompilationJobsOutput,
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
        input_schema = schemas.ListComputeQuotasInput,
        output_schema = schemas.ListComputeQuotasOutput,
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
        input_schema = schemas.ListContextsInput,
        output_schema = schemas.ListContextsOutput,
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
        input_schema = schemas.ListDataQualityJobDefinitionsInput,
        output_schema = schemas.ListDataQualityJobDefinitionsOutput,
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
        input_schema = schemas.ListDeviceFleetsInput,
        output_schema = schemas.ListDeviceFleetsOutput,
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
        input_schema = schemas.ListDevicesInput,
        output_schema = schemas.ListDevicesOutput,
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
        input_schema = schemas.ListDomainsInput,
        output_schema = schemas.ListDomainsOutput,
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
        input_schema = schemas.ListEdgeDeploymentPlansInput,
        output_schema = schemas.ListEdgeDeploymentPlansOutput,
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
        input_schema = schemas.ListEdgePackagingJobsInput,
        output_schema = schemas.ListEdgePackagingJobsOutput,
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
        input_schema = schemas.ListEndpointConfigsInput,
        output_schema = schemas.ListEndpointConfigsOutput,
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
        input_schema = schemas.ListEndpointsInput,
        output_schema = schemas.ListEndpointsOutput,
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
        input_schema = schemas.ListExperimentsInput,
        output_schema = schemas.ListExperimentsOutput,
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
        input_schema = schemas.ListFeatureGroupsInput,
        output_schema = schemas.ListFeatureGroupsOutput,
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
        input_schema = schemas.ListFlowDefinitionsInput,
        output_schema = schemas.ListFlowDefinitionsOutput,
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
        input_schema = schemas.ListHubContentsInput,
        output_schema = schemas.ListHubContentsOutput,
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
        input_schema = schemas.ListHubContentVersionsInput,
        output_schema = schemas.ListHubContentVersionsOutput,
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
        input_schema = schemas.ListHubsInput,
        output_schema = schemas.ListHubsOutput,
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
        input_schema = schemas.ListHumanTaskUisInput,
        output_schema = schemas.ListHumanTaskUisOutput,
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
        input_schema = schemas.ListHyperParameterTuningJobsInput,
        output_schema = schemas.ListHyperParameterTuningJobsOutput,
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
        input_schema = schemas.ListImagesInput,
        output_schema = schemas.ListImagesOutput,
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
        input_schema = schemas.ListImageVersionsInput,
        output_schema = schemas.ListImageVersionsOutput,
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
        input_schema = schemas.ListInferenceComponentsInput,
        output_schema = schemas.ListInferenceComponentsOutput,
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
        input_schema = schemas.ListInferenceExperimentsInput,
        output_schema = schemas.ListInferenceExperimentsOutput,
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
        input_schema = schemas.ListInferenceRecommendationsJobsInput,
        output_schema = schemas.ListInferenceRecommendationsJobsOutput,
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
        input_schema = schemas.ListInferenceRecommendationsJobStepsInput,
        output_schema = schemas.ListInferenceRecommendationsJobStepsOutput,
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
        input_schema = schemas.ListLabelingJobsInput,
        output_schema = schemas.ListLabelingJobsOutput,
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
        input_schema = schemas.ListLabelingJobsForWorkteamInput,
        output_schema = schemas.ListLabelingJobsForWorkteamOutput,
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
        input_schema = schemas.ListLineageGroupsInput,
        output_schema = schemas.ListLineageGroupsOutput,
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
        input_schema = schemas.ListMlflowAppsInput,
        output_schema = schemas.ListMlflowAppsOutput,
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
        input_schema = schemas.ListMlflowTrackingServersInput,
        output_schema = schemas.ListMlflowTrackingServersOutput,
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
        input_schema = schemas.ListModelBiasJobDefinitionsInput,
        output_schema = schemas.ListModelBiasJobDefinitionsOutput,
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
        input_schema = schemas.ListModelCardExportJobsInput,
        output_schema = schemas.ListModelCardExportJobsOutput,
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
        input_schema = schemas.ListModelCardsInput,
        output_schema = schemas.ListModelCardsOutput,
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
        input_schema = schemas.ListModelCardVersionsInput,
        output_schema = schemas.ListModelCardVersionsOutput,
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
        input_schema = schemas.ListModelExplainabilityJobDefinitionsInput,
        output_schema = schemas.ListModelExplainabilityJobDefinitionsOutput,
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
        input_schema = schemas.ListModelMetadataInput,
        output_schema = schemas.ListModelMetadataOutput,
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
        input_schema = schemas.ListModelPackageGroupsInput,
        output_schema = schemas.ListModelPackageGroupsOutput,
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
        input_schema = schemas.ListModelPackagesInput,
        output_schema = schemas.ListModelPackagesOutput,
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
        input_schema = schemas.ListModelQualityJobDefinitionsInput,
        output_schema = schemas.ListModelQualityJobDefinitionsOutput,
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
        input_schema = schemas.ListModelsInput,
        output_schema = schemas.ListModelsOutput,
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
        input_schema = schemas.ListMonitoringAlertHistoryInput,
        output_schema = schemas.ListMonitoringAlertHistoryOutput,
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
        input_schema = schemas.ListMonitoringAlertsInput,
        output_schema = schemas.ListMonitoringAlertsOutput,
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
        input_schema = schemas.ListMonitoringExecutionsInput,
        output_schema = schemas.ListMonitoringExecutionsOutput,
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
        input_schema = schemas.ListMonitoringSchedulesInput,
        output_schema = schemas.ListMonitoringSchedulesOutput,
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
        input_schema = schemas.ListNotebookInstanceLifecycleConfigsInput,
        output_schema = schemas.ListNotebookInstanceLifecycleConfigsOutput,
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
        input_schema = schemas.ListNotebookInstancesInput,
        output_schema = schemas.ListNotebookInstancesOutput,
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
        input_schema = schemas.ListOptimizationJobsInput,
        output_schema = schemas.ListOptimizationJobsOutput,
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
        input_schema = schemas.ListPartnerAppsInput,
        output_schema = schemas.ListPartnerAppsOutput,
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
        input_schema = schemas.ListPipelineExecutionsInput,
        output_schema = schemas.ListPipelineExecutionsOutput,
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
        input_schema = schemas.ListPipelineExecutionStepsInput,
        output_schema = schemas.ListPipelineExecutionStepsOutput,
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
        input_schema = schemas.ListPipelineParametersForExecutionInput,
        output_schema = schemas.ListPipelineParametersForExecutionOutput,
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
        input_schema = schemas.ListPipelinesInput,
        output_schema = schemas.ListPipelinesOutput,
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
        input_schema = schemas.ListPipelineVersionsInput,
        output_schema = schemas.ListPipelineVersionsOutput,
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
        input_schema = schemas.ListProcessingJobsInput,
        output_schema = schemas.ListProcessingJobsOutput,
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
        input_schema = schemas.ListProjectsInput,
        output_schema = schemas.ListProjectsOutput,
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
        input_schema = schemas.ListResourceCatalogsInput,
        output_schema = schemas.ListResourceCatalogsOutput,
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
        input_schema = schemas.ListSpacesInput,
        output_schema = schemas.ListSpacesOutput,
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
        input_schema = schemas.ListStageDevicesInput,
        output_schema = schemas.ListStageDevicesOutput,
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
        input_schema = schemas.ListStudioLifecycleConfigsInput,
        output_schema = schemas.ListStudioLifecycleConfigsOutput,
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
        input_schema = schemas.ListSubscribedWorkteamsInput,
        output_schema = schemas.ListSubscribedWorkteamsOutput,
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
        input_schema = schemas.ListTagsInput,
        output_schema = schemas.ListTagsOutput,
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
        input_schema = schemas.ListTrainingJobsInput,
        output_schema = schemas.ListTrainingJobsOutput,
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
        input_schema = schemas.ListTrainingJobsForHyperParameterTuningJobInput,
        output_schema = schemas.ListTrainingJobsForHyperParameterTuningJobOutput,
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
        input_schema = schemas.ListTrainingPlansInput,
        output_schema = schemas.ListTrainingPlansOutput,
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
        input_schema = schemas.ListTransformJobsInput,
        output_schema = schemas.ListTransformJobsOutput,
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
        input_schema = schemas.ListTrialComponentsInput,
        output_schema = schemas.ListTrialComponentsOutput,
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
        input_schema = schemas.ListTrialsInput,
        output_schema = schemas.ListTrialsOutput,
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
        input_schema = schemas.ListUltraServersByReservedCapacityInput,
        output_schema = schemas.ListUltraServersByReservedCapacityOutput,
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
        input_schema = schemas.ListUserProfilesInput,
        output_schema = schemas.ListUserProfilesOutput,
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
        input_schema = schemas.ListWorkforcesInput,
        output_schema = schemas.ListWorkforcesOutput,
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
        input_schema = schemas.ListWorkteamsInput,
        output_schema = schemas.ListWorkteamsOutput,
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
        input_schema = schemas.PutModelPackageGroupPolicyInput,
        output_schema = schemas.PutModelPackageGroupPolicyOutput,
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
        input_schema = schemas.QueryLineageInput,
        output_schema = schemas.QueryLineageOutput,
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
        input_schema = schemas.RegisterDevicesInput,
        output_schema = schemas.RegisterDevicesOutput,
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
        input_schema = schemas.RenderUiTemplateInput,
        output_schema = schemas.RenderUiTemplateOutput,
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
        input_schema = schemas.RetryPipelineExecutionInput,
        output_schema = schemas.RetryPipelineExecutionOutput,
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
        input_schema = schemas.SearchInput,
        output_schema = schemas.SearchOutput,
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
        input_schema = schemas.SearchTrainingPlanOfferingsInput,
        output_schema = schemas.SearchTrainingPlanOfferingsOutput,
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
        input_schema = schemas.SendPipelineExecutionStepFailureInput,
        output_schema = schemas.SendPipelineExecutionStepFailureOutput,
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
        input_schema = schemas.SendPipelineExecutionStepSuccessInput,
        output_schema = schemas.SendPipelineExecutionStepSuccessOutput,
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
        input_schema = schemas.StartClusterHealthCheckInput,
        output_schema = schemas.StartClusterHealthCheckOutput,
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
        input_schema = schemas.StartEdgeDeploymentStageInput,
        output_schema = schemas.StartEdgeDeploymentStageOutput,
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
        input_schema = schemas.StartInferenceExperimentInput,
        output_schema = schemas.StartInferenceExperimentOutput,
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
        input_schema = schemas.StartMlflowTrackingServerInput,
        output_schema = schemas.StartMlflowTrackingServerOutput,
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
        input_schema = schemas.StartMonitoringScheduleInput,
        output_schema = schemas.StartMonitoringScheduleOutput,
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
        input_schema = schemas.StartNotebookInstanceInput,
        output_schema = schemas.StartNotebookInstanceOutput,
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
        input_schema = schemas.StartPipelineExecutionInput,
        output_schema = schemas.StartPipelineExecutionOutput,
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
        input_schema = schemas.StartSessionInput,
        output_schema = schemas.StartSessionOutput,
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
        input_schema = schemas.StopAIBenchmarkJobInput,
        output_schema = schemas.StopAIBenchmarkJobOutput,
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
        input_schema = schemas.StopAIRecommendationJobInput,
        output_schema = schemas.StopAIRecommendationJobOutput,
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
        input_schema = schemas.StopAutoMLJobInput,
        output_schema = schemas.StopAutoMLJobOutput,
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
        input_schema = schemas.StopCompilationJobInput,
        output_schema = schemas.StopCompilationJobOutput,
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
        input_schema = schemas.StopEdgeDeploymentStageInput,
        output_schema = schemas.StopEdgeDeploymentStageOutput,
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
        input_schema = schemas.StopEdgePackagingJobInput,
        output_schema = schemas.StopEdgePackagingJobOutput,
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
        input_schema = schemas.StopHyperParameterTuningJobInput,
        output_schema = schemas.StopHyperParameterTuningJobOutput,
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
        input_schema = schemas.StopInferenceExperimentInput,
        output_schema = schemas.StopInferenceExperimentOutput,
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
        input_schema = schemas.StopInferenceRecommendationsJobInput,
        output_schema = schemas.StopInferenceRecommendationsJobOutput,
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
        input_schema = schemas.StopLabelingJobInput,
        output_schema = schemas.StopLabelingJobOutput,
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
        input_schema = schemas.StopMlflowTrackingServerInput,
        output_schema = schemas.StopMlflowTrackingServerOutput,
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
        input_schema = schemas.StopMonitoringScheduleInput,
        output_schema = schemas.StopMonitoringScheduleOutput,
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
        input_schema = schemas.StopNotebookInstanceInput,
        output_schema = schemas.StopNotebookInstanceOutput,
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
        input_schema = schemas.StopOptimizationJobInput,
        output_schema = schemas.StopOptimizationJobOutput,
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
        input_schema = schemas.StopPipelineExecutionInput,
        output_schema = schemas.StopPipelineExecutionOutput,
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
        input_schema = schemas.StopProcessingJobInput,
        output_schema = schemas.StopProcessingJobOutput,
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
        input_schema = schemas.StopTrainingJobInput,
        output_schema = schemas.StopTrainingJobOutput,
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
        input_schema = schemas.StopTransformJobInput,
        output_schema = schemas.StopTransformJobOutput,
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
        input_schema = schemas.UpdateActionInput,
        output_schema = schemas.UpdateActionOutput,
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
        input_schema = schemas.UpdateAppImageConfigInput,
        output_schema = schemas.UpdateAppImageConfigOutput,
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
        input_schema = schemas.UpdateArtifactInput,
        output_schema = schemas.UpdateArtifactOutput,
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
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
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
        input_schema = schemas.UpdateClusterSchedulerConfigInput,
        output_schema = schemas.UpdateClusterSchedulerConfigOutput,
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
        input_schema = schemas.UpdateClusterSoftwareInput,
        output_schema = schemas.UpdateClusterSoftwareOutput,
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
        input_schema = schemas.UpdateCodeRepositoryInput,
        output_schema = schemas.UpdateCodeRepositoryOutput,
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
        input_schema = schemas.UpdateComputeQuotaInput,
        output_schema = schemas.UpdateComputeQuotaOutput,
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
        input_schema = schemas.UpdateContextInput,
        output_schema = schemas.UpdateContextOutput,
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
        input_schema = schemas.UpdateDeviceFleetInput,
        output_schema = schemas.UpdateDeviceFleetOutput,
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
        input_schema = schemas.UpdateDevicesInput,
        output_schema = schemas.UpdateDevicesOutput,
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
        input_schema = schemas.UpdateDomainInput,
        output_schema = schemas.UpdateDomainOutput,
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
        input_schema = schemas.UpdateEndpointInput,
        output_schema = schemas.UpdateEndpointOutput,
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
        input_schema = schemas.UpdateEndpointWeightsAndCapacitiesInput,
        output_schema = schemas.UpdateEndpointWeightsAndCapacitiesOutput,
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
        input_schema = schemas.UpdateExperimentInput,
        output_schema = schemas.UpdateExperimentOutput,
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
        input_schema = schemas.UpdateFeatureGroupInput,
        output_schema = schemas.UpdateFeatureGroupOutput,
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
        input_schema = schemas.UpdateFeatureMetadataInput,
        output_schema = schemas.UpdateFeatureMetadataOutput,
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
        input_schema = schemas.UpdateHubInput,
        output_schema = schemas.UpdateHubOutput,
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
        input_schema = schemas.UpdateHubContentInput,
        output_schema = schemas.UpdateHubContentOutput,
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
        input_schema = schemas.UpdateHubContentReferenceInput,
        output_schema = schemas.UpdateHubContentReferenceOutput,
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
        input_schema = schemas.UpdateImageInput,
        output_schema = schemas.UpdateImageOutput,
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
        input_schema = schemas.UpdateImageVersionInput,
        output_schema = schemas.UpdateImageVersionOutput,
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
        input_schema = schemas.UpdateInferenceComponentInput,
        output_schema = schemas.UpdateInferenceComponentOutput,
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
        input_schema = schemas.UpdateInferenceComponentRuntimeConfigInput,
        output_schema = schemas.UpdateInferenceComponentRuntimeConfigOutput,
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
        input_schema = schemas.UpdateInferenceExperimentInput,
        output_schema = schemas.UpdateInferenceExperimentOutput,
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
        input_schema = schemas.UpdateMlflowAppInput,
        output_schema = schemas.UpdateMlflowAppOutput,
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
        input_schema = schemas.UpdateMlflowTrackingServerInput,
        output_schema = schemas.UpdateMlflowTrackingServerOutput,
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
        input_schema = schemas.UpdateModelCardInput,
        output_schema = schemas.UpdateModelCardOutput,
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
        input_schema = schemas.UpdateModelPackageInput,
        output_schema = schemas.UpdateModelPackageOutput,
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
        input_schema = schemas.UpdateMonitoringAlertInput,
        output_schema = schemas.UpdateMonitoringAlertOutput,
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
        input_schema = schemas.UpdateMonitoringScheduleInput,
        output_schema = schemas.UpdateMonitoringScheduleOutput,
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
        input_schema = schemas.UpdateNotebookInstanceInput,
        output_schema = schemas.UpdateNotebookInstanceOutput,
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
        input_schema = schemas.UpdateNotebookInstanceLifecycleConfigInput,
        output_schema = schemas.UpdateNotebookInstanceLifecycleConfigOutput,
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
        input_schema = schemas.UpdatePartnerAppInput,
        output_schema = schemas.UpdatePartnerAppOutput,
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
        input_schema = schemas.UpdatePipelineInput,
        output_schema = schemas.UpdatePipelineOutput,
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
        input_schema = schemas.UpdatePipelineExecutionInput,
        output_schema = schemas.UpdatePipelineExecutionOutput,
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
        input_schema = schemas.UpdatePipelineVersionInput,
        output_schema = schemas.UpdatePipelineVersionOutput,
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
        input_schema = schemas.UpdateProjectInput,
        output_schema = schemas.UpdateProjectOutput,
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
        input_schema = schemas.UpdateSpaceInput,
        output_schema = schemas.UpdateSpaceOutput,
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
        input_schema = schemas.UpdateTrainingJobInput,
        output_schema = schemas.UpdateTrainingJobOutput,
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
        input_schema = schemas.UpdateTrialInput,
        output_schema = schemas.UpdateTrialOutput,
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
        input_schema = schemas.UpdateTrialComponentInput,
        output_schema = schemas.UpdateTrialComponentOutput,
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
        input_schema = schemas.UpdateUserProfileInput,
        output_schema = schemas.UpdateUserProfileOutput,
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
        input_schema = schemas.UpdateWorkforceInput,
        output_schema = schemas.UpdateWorkforceOutput,
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
        input_schema = schemas.UpdateWorkteamInput,
        output_schema = schemas.UpdateWorkteamOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
