local paginator = require("paginator")

local M = {}

--- Returns a page iterator for createHubContentPresignedUrls.
function M.pages_create_hub_content_presigned_urls(client, input)
    return paginator.pages(client, "createHubContentPresignedUrls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AuthorizedUrlConfigs",
    })
end

--- Returns an item iterator for createHubContentPresignedUrls.
function M.items_create_hub_content_presigned_urls(client, input)
    return paginator.items(client, "createHubContentPresignedUrls", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AuthorizedUrlConfigs",
    })
end

--- Returns a page iterator for describeTrainingPlanExtensionHistory.
function M.pages_describe_training_plan_extension_history(client, input)
    return paginator.pages(client, "describeTrainingPlanExtensionHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingPlanExtensions",
    })
end

--- Returns an item iterator for describeTrainingPlanExtensionHistory.
function M.items_describe_training_plan_extension_history(client, input)
    return paginator.items(client, "describeTrainingPlanExtensionHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingPlanExtensions",
    })
end

--- Returns a page iterator for listAIBenchmarkJobs.
function M.pages_list_a_i_benchmark_jobs(client, input)
    return paginator.pages(client, "listAIBenchmarkJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AIBenchmarkJobs",
    })
end

--- Returns an item iterator for listAIBenchmarkJobs.
function M.items_list_a_i_benchmark_jobs(client, input)
    return paginator.items(client, "listAIBenchmarkJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AIBenchmarkJobs",
    })
end

--- Returns a page iterator for listAIRecommendationJobs.
function M.pages_list_a_i_recommendation_jobs(client, input)
    return paginator.pages(client, "listAIRecommendationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AIRecommendationJobs",
    })
end

--- Returns an item iterator for listAIRecommendationJobs.
function M.items_list_a_i_recommendation_jobs(client, input)
    return paginator.items(client, "listAIRecommendationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AIRecommendationJobs",
    })
end

--- Returns a page iterator for listAIWorkloadConfigs.
function M.pages_list_a_i_workload_configs(client, input)
    return paginator.pages(client, "listAIWorkloadConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AIWorkloadConfigs",
    })
end

--- Returns an item iterator for listAIWorkloadConfigs.
function M.items_list_a_i_workload_configs(client, input)
    return paginator.items(client, "listAIWorkloadConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AIWorkloadConfigs",
    })
end

--- Returns a page iterator for listActions.
function M.pages_list_actions(client, input)
    return paginator.pages(client, "listActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionSummaries",
    })
end

--- Returns an item iterator for listActions.
function M.items_list_actions(client, input)
    return paginator.items(client, "listActions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ActionSummaries",
    })
end

--- Returns a page iterator for listAlgorithms.
function M.pages_list_algorithms(client, input)
    return paginator.pages(client, "listAlgorithms", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AlgorithmSummaryList",
    })
end

--- Returns an item iterator for listAlgorithms.
function M.items_list_algorithms(client, input)
    return paginator.items(client, "listAlgorithms", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AlgorithmSummaryList",
    })
end

--- Returns a page iterator for listAliases.
function M.pages_list_aliases(client, input)
    return paginator.pages(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SageMakerImageVersionAliases",
    })
end

--- Returns an item iterator for listAliases.
function M.items_list_aliases(client, input)
    return paginator.items(client, "listAliases", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SageMakerImageVersionAliases",
    })
end

--- Returns a page iterator for listAppImageConfigs.
function M.pages_list_app_image_configs(client, input)
    return paginator.pages(client, "listAppImageConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AppImageConfigs",
    })
end

--- Returns an item iterator for listAppImageConfigs.
function M.items_list_app_image_configs(client, input)
    return paginator.items(client, "listAppImageConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AppImageConfigs",
    })
end

--- Returns a page iterator for listApps.
function M.pages_list_apps(client, input)
    return paginator.pages(client, "listApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Apps",
    })
end

--- Returns an item iterator for listApps.
function M.items_list_apps(client, input)
    return paginator.items(client, "listApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Apps",
    })
end

--- Returns a page iterator for listArtifacts.
function M.pages_list_artifacts(client, input)
    return paginator.pages(client, "listArtifacts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ArtifactSummaries",
    })
end

--- Returns an item iterator for listArtifacts.
function M.items_list_artifacts(client, input)
    return paginator.items(client, "listArtifacts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ArtifactSummaries",
    })
end

--- Returns a page iterator for listAssociations.
function M.pages_list_associations(client, input)
    return paginator.pages(client, "listAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssociationSummaries",
    })
end

--- Returns an item iterator for listAssociations.
function M.items_list_associations(client, input)
    return paginator.items(client, "listAssociations", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AssociationSummaries",
    })
end

--- Returns a page iterator for listAutoMLJobs.
function M.pages_list_auto_m_l_jobs(client, input)
    return paginator.pages(client, "listAutoMLJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AutoMLJobSummaries",
    })
end

--- Returns an item iterator for listAutoMLJobs.
function M.items_list_auto_m_l_jobs(client, input)
    return paginator.items(client, "listAutoMLJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "AutoMLJobSummaries",
    })
end

--- Returns a page iterator for listCandidatesForAutoMLJob.
function M.pages_list_candidates_for_auto_m_l_job(client, input)
    return paginator.pages(client, "listCandidatesForAutoMLJob", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Candidates",
    })
end

--- Returns an item iterator for listCandidatesForAutoMLJob.
function M.items_list_candidates_for_auto_m_l_job(client, input)
    return paginator.items(client, "listCandidatesForAutoMLJob", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Candidates",
    })
end

--- Returns a page iterator for listClusterEvents.
function M.pages_list_cluster_events(client, input)
    return paginator.pages(client, "listClusterEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns an item iterator for listClusterEvents.
function M.items_list_cluster_events(client, input)
    return paginator.items(client, "listClusterEvents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Events",
    })
end

--- Returns a page iterator for listClusterNodes.
function M.pages_list_cluster_nodes(client, input)
    return paginator.pages(client, "listClusterNodes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClusterNodeSummaries",
    })
end

--- Returns an item iterator for listClusterNodes.
function M.items_list_cluster_nodes(client, input)
    return paginator.items(client, "listClusterNodes", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClusterNodeSummaries",
    })
end

--- Returns a page iterator for listClusterSchedulerConfigs.
function M.pages_list_cluster_scheduler_configs(client, input)
    return paginator.pages(client, "listClusterSchedulerConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClusterSchedulerConfigSummaries",
    })
end

--- Returns an item iterator for listClusterSchedulerConfigs.
function M.items_list_cluster_scheduler_configs(client, input)
    return paginator.items(client, "listClusterSchedulerConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClusterSchedulerConfigSummaries",
    })
end

--- Returns a page iterator for listClusters.
function M.pages_list_clusters(client, input)
    return paginator.pages(client, "listClusters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClusterSummaries",
    })
end

--- Returns an item iterator for listClusters.
function M.items_list_clusters(client, input)
    return paginator.items(client, "listClusters", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ClusterSummaries",
    })
end

--- Returns a page iterator for listCodeRepositories.
function M.pages_list_code_repositories(client, input)
    return paginator.pages(client, "listCodeRepositories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CodeRepositorySummaryList",
    })
end

--- Returns an item iterator for listCodeRepositories.
function M.items_list_code_repositories(client, input)
    return paginator.items(client, "listCodeRepositories", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CodeRepositorySummaryList",
    })
end

--- Returns a page iterator for listCompilationJobs.
function M.pages_list_compilation_jobs(client, input)
    return paginator.pages(client, "listCompilationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CompilationJobSummaries",
    })
end

--- Returns an item iterator for listCompilationJobs.
function M.items_list_compilation_jobs(client, input)
    return paginator.items(client, "listCompilationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "CompilationJobSummaries",
    })
end

--- Returns a page iterator for listComputeQuotas.
function M.pages_list_compute_quotas(client, input)
    return paginator.pages(client, "listComputeQuotas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ComputeQuotaSummaries",
    })
end

--- Returns an item iterator for listComputeQuotas.
function M.items_list_compute_quotas(client, input)
    return paginator.items(client, "listComputeQuotas", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ComputeQuotaSummaries",
    })
end

--- Returns a page iterator for listContexts.
function M.pages_list_contexts(client, input)
    return paginator.pages(client, "listContexts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContextSummaries",
    })
end

--- Returns an item iterator for listContexts.
function M.items_list_contexts(client, input)
    return paginator.items(client, "listContexts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ContextSummaries",
    })
end

--- Returns a page iterator for listDataQualityJobDefinitions.
function M.pages_list_data_quality_job_definitions(client, input)
    return paginator.pages(client, "listDataQualityJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns an item iterator for listDataQualityJobDefinitions.
function M.items_list_data_quality_job_definitions(client, input)
    return paginator.items(client, "listDataQualityJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns a page iterator for listDeviceFleets.
function M.pages_list_device_fleets(client, input)
    return paginator.pages(client, "listDeviceFleets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DeviceFleetSummaries",
    })
end

--- Returns an item iterator for listDeviceFleets.
function M.items_list_device_fleets(client, input)
    return paginator.items(client, "listDeviceFleets", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DeviceFleetSummaries",
    })
end

--- Returns a page iterator for listDevices.
function M.pages_list_devices(client, input)
    return paginator.pages(client, "listDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DeviceSummaries",
    })
end

--- Returns an item iterator for listDevices.
function M.items_list_devices(client, input)
    return paginator.items(client, "listDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DeviceSummaries",
    })
end

--- Returns a page iterator for listDomains.
function M.pages_list_domains(client, input)
    return paginator.pages(client, "listDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Domains",
    })
end

--- Returns an item iterator for listDomains.
function M.items_list_domains(client, input)
    return paginator.items(client, "listDomains", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Domains",
    })
end

--- Returns a page iterator for listEdgeDeploymentPlans.
function M.pages_list_edge_deployment_plans(client, input)
    return paginator.pages(client, "listEdgeDeploymentPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EdgeDeploymentPlanSummaries",
    })
end

--- Returns an item iterator for listEdgeDeploymentPlans.
function M.items_list_edge_deployment_plans(client, input)
    return paginator.items(client, "listEdgeDeploymentPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EdgeDeploymentPlanSummaries",
    })
end

--- Returns a page iterator for listEdgePackagingJobs.
function M.pages_list_edge_packaging_jobs(client, input)
    return paginator.pages(client, "listEdgePackagingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EdgePackagingJobSummaries",
    })
end

--- Returns an item iterator for listEdgePackagingJobs.
function M.items_list_edge_packaging_jobs(client, input)
    return paginator.items(client, "listEdgePackagingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EdgePackagingJobSummaries",
    })
end

--- Returns a page iterator for listEndpointConfigs.
function M.pages_list_endpoint_configs(client, input)
    return paginator.pages(client, "listEndpointConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointConfigs",
    })
end

--- Returns an item iterator for listEndpointConfigs.
function M.items_list_endpoint_configs(client, input)
    return paginator.items(client, "listEndpointConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "EndpointConfigs",
    })
end

--- Returns a page iterator for listEndpoints.
function M.pages_list_endpoints(client, input)
    return paginator.pages(client, "listEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns an item iterator for listEndpoints.
function M.items_list_endpoints(client, input)
    return paginator.items(client, "listEndpoints", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Endpoints",
    })
end

--- Returns a page iterator for listExperiments.
function M.pages_list_experiments(client, input)
    return paginator.pages(client, "listExperiments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExperimentSummaries",
    })
end

--- Returns an item iterator for listExperiments.
function M.items_list_experiments(client, input)
    return paginator.items(client, "listExperiments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ExperimentSummaries",
    })
end

--- Returns a page iterator for listFeatureGroups.
function M.pages_list_feature_groups(client, input)
    return paginator.pages(client, "listFeatureGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FeatureGroupSummaries",
    })
end

--- Returns an item iterator for listFeatureGroups.
function M.items_list_feature_groups(client, input)
    return paginator.items(client, "listFeatureGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FeatureGroupSummaries",
    })
end

--- Returns a page iterator for listFlowDefinitions.
function M.pages_list_flow_definitions(client, input)
    return paginator.pages(client, "listFlowDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowDefinitionSummaries",
    })
end

--- Returns an item iterator for listFlowDefinitions.
function M.items_list_flow_definitions(client, input)
    return paginator.items(client, "listFlowDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "FlowDefinitionSummaries",
    })
end

--- Returns a page iterator for listHumanTaskUis.
function M.pages_list_human_task_uis(client, input)
    return paginator.pages(client, "listHumanTaskUis", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HumanTaskUiSummaries",
    })
end

--- Returns an item iterator for listHumanTaskUis.
function M.items_list_human_task_uis(client, input)
    return paginator.items(client, "listHumanTaskUis", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HumanTaskUiSummaries",
    })
end

--- Returns a page iterator for listHyperParameterTuningJobs.
function M.pages_list_hyper_parameter_tuning_jobs(client, input)
    return paginator.pages(client, "listHyperParameterTuningJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HyperParameterTuningJobSummaries",
    })
end

--- Returns an item iterator for listHyperParameterTuningJobs.
function M.items_list_hyper_parameter_tuning_jobs(client, input)
    return paginator.items(client, "listHyperParameterTuningJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "HyperParameterTuningJobSummaries",
    })
end

--- Returns a page iterator for listImageVersions.
function M.pages_list_image_versions(client, input)
    return paginator.pages(client, "listImageVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ImageVersions",
    })
end

--- Returns an item iterator for listImageVersions.
function M.items_list_image_versions(client, input)
    return paginator.items(client, "listImageVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ImageVersions",
    })
end

--- Returns a page iterator for listImages.
function M.pages_list_images(client, input)
    return paginator.pages(client, "listImages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Images",
    })
end

--- Returns an item iterator for listImages.
function M.items_list_images(client, input)
    return paginator.items(client, "listImages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Images",
    })
end

--- Returns a page iterator for listInferenceComponents.
function M.pages_list_inference_components(client, input)
    return paginator.pages(client, "listInferenceComponents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InferenceComponents",
    })
end

--- Returns an item iterator for listInferenceComponents.
function M.items_list_inference_components(client, input)
    return paginator.items(client, "listInferenceComponents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InferenceComponents",
    })
end

--- Returns a page iterator for listInferenceExperiments.
function M.pages_list_inference_experiments(client, input)
    return paginator.pages(client, "listInferenceExperiments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InferenceExperiments",
    })
end

--- Returns an item iterator for listInferenceExperiments.
function M.items_list_inference_experiments(client, input)
    return paginator.items(client, "listInferenceExperiments", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InferenceExperiments",
    })
end

--- Returns a page iterator for listInferenceRecommendationsJobSteps.
function M.pages_list_inference_recommendations_job_steps(client, input)
    return paginator.pages(client, "listInferenceRecommendationsJobSteps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Steps",
    })
end

--- Returns an item iterator for listInferenceRecommendationsJobSteps.
function M.items_list_inference_recommendations_job_steps(client, input)
    return paginator.items(client, "listInferenceRecommendationsJobSteps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Steps",
    })
end

--- Returns a page iterator for listInferenceRecommendationsJobs.
function M.pages_list_inference_recommendations_jobs(client, input)
    return paginator.pages(client, "listInferenceRecommendationsJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InferenceRecommendationsJobs",
    })
end

--- Returns an item iterator for listInferenceRecommendationsJobs.
function M.items_list_inference_recommendations_jobs(client, input)
    return paginator.items(client, "listInferenceRecommendationsJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "InferenceRecommendationsJobs",
    })
end

--- Returns a page iterator for listLabelingJobs.
function M.pages_list_labeling_jobs(client, input)
    return paginator.pages(client, "listLabelingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LabelingJobSummaryList",
    })
end

--- Returns an item iterator for listLabelingJobs.
function M.items_list_labeling_jobs(client, input)
    return paginator.items(client, "listLabelingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LabelingJobSummaryList",
    })
end

--- Returns a page iterator for listLabelingJobsForWorkteam.
function M.pages_list_labeling_jobs_for_workteam(client, input)
    return paginator.pages(client, "listLabelingJobsForWorkteam", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LabelingJobSummaryList",
    })
end

--- Returns an item iterator for listLabelingJobsForWorkteam.
function M.items_list_labeling_jobs_for_workteam(client, input)
    return paginator.items(client, "listLabelingJobsForWorkteam", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LabelingJobSummaryList",
    })
end

--- Returns a page iterator for listLineageGroups.
function M.pages_list_lineage_groups(client, input)
    return paginator.pages(client, "listLineageGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LineageGroupSummaries",
    })
end

--- Returns an item iterator for listLineageGroups.
function M.items_list_lineage_groups(client, input)
    return paginator.items(client, "listLineageGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "LineageGroupSummaries",
    })
end

--- Returns a page iterator for listMlflowApps.
function M.pages_list_mlflow_apps(client, input)
    return paginator.pages(client, "listMlflowApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Summaries",
    })
end

--- Returns an item iterator for listMlflowApps.
function M.items_list_mlflow_apps(client, input)
    return paginator.items(client, "listMlflowApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Summaries",
    })
end

--- Returns a page iterator for listMlflowTrackingServers.
function M.pages_list_mlflow_tracking_servers(client, input)
    return paginator.pages(client, "listMlflowTrackingServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrackingServerSummaries",
    })
end

--- Returns an item iterator for listMlflowTrackingServers.
function M.items_list_mlflow_tracking_servers(client, input)
    return paginator.items(client, "listMlflowTrackingServers", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrackingServerSummaries",
    })
end

--- Returns a page iterator for listModelBiasJobDefinitions.
function M.pages_list_model_bias_job_definitions(client, input)
    return paginator.pages(client, "listModelBiasJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns an item iterator for listModelBiasJobDefinitions.
function M.items_list_model_bias_job_definitions(client, input)
    return paginator.items(client, "listModelBiasJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns a page iterator for listModelCardExportJobs.
function M.pages_list_model_card_export_jobs(client, input)
    return paginator.pages(client, "listModelCardExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelCardExportJobSummaries",
    })
end

--- Returns an item iterator for listModelCardExportJobs.
function M.items_list_model_card_export_jobs(client, input)
    return paginator.items(client, "listModelCardExportJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelCardExportJobSummaries",
    })
end

--- Returns a page iterator for listModelCardVersions.
function M.pages_list_model_card_versions(client, input)
    return paginator.pages(client, "listModelCardVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelCardVersionSummaryList",
    })
end

--- Returns an item iterator for listModelCardVersions.
function M.items_list_model_card_versions(client, input)
    return paginator.items(client, "listModelCardVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelCardVersionSummaryList",
    })
end

--- Returns a page iterator for listModelCards.
function M.pages_list_model_cards(client, input)
    return paginator.pages(client, "listModelCards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelCardSummaries",
    })
end

--- Returns an item iterator for listModelCards.
function M.items_list_model_cards(client, input)
    return paginator.items(client, "listModelCards", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelCardSummaries",
    })
end

--- Returns a page iterator for listModelExplainabilityJobDefinitions.
function M.pages_list_model_explainability_job_definitions(client, input)
    return paginator.pages(client, "listModelExplainabilityJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns an item iterator for listModelExplainabilityJobDefinitions.
function M.items_list_model_explainability_job_definitions(client, input)
    return paginator.items(client, "listModelExplainabilityJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns a page iterator for listModelMetadata.
function M.pages_list_model_metadata(client, input)
    return paginator.pages(client, "listModelMetadata", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelMetadataSummaries",
    })
end

--- Returns an item iterator for listModelMetadata.
function M.items_list_model_metadata(client, input)
    return paginator.items(client, "listModelMetadata", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelMetadataSummaries",
    })
end

--- Returns a page iterator for listModelPackageGroups.
function M.pages_list_model_package_groups(client, input)
    return paginator.pages(client, "listModelPackageGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelPackageGroupSummaryList",
    })
end

--- Returns an item iterator for listModelPackageGroups.
function M.items_list_model_package_groups(client, input)
    return paginator.items(client, "listModelPackageGroups", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelPackageGroupSummaryList",
    })
end

--- Returns a page iterator for listModelPackages.
function M.pages_list_model_packages(client, input)
    return paginator.pages(client, "listModelPackages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelPackageSummaryList",
    })
end

--- Returns an item iterator for listModelPackages.
function M.items_list_model_packages(client, input)
    return paginator.items(client, "listModelPackages", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ModelPackageSummaryList",
    })
end

--- Returns a page iterator for listModelQualityJobDefinitions.
function M.pages_list_model_quality_job_definitions(client, input)
    return paginator.pages(client, "listModelQualityJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns an item iterator for listModelQualityJobDefinitions.
function M.items_list_model_quality_job_definitions(client, input)
    return paginator.items(client, "listModelQualityJobDefinitions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "JobDefinitionSummaries",
    })
end

--- Returns a page iterator for listModels.
function M.pages_list_models(client, input)
    return paginator.pages(client, "listModels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Models",
    })
end

--- Returns an item iterator for listModels.
function M.items_list_models(client, input)
    return paginator.items(client, "listModels", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Models",
    })
end

--- Returns a page iterator for listMonitoringAlertHistory.
function M.pages_list_monitoring_alert_history(client, input)
    return paginator.pages(client, "listMonitoringAlertHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringAlertHistory",
    })
end

--- Returns an item iterator for listMonitoringAlertHistory.
function M.items_list_monitoring_alert_history(client, input)
    return paginator.items(client, "listMonitoringAlertHistory", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringAlertHistory",
    })
end

--- Returns a page iterator for listMonitoringAlerts.
function M.pages_list_monitoring_alerts(client, input)
    return paginator.pages(client, "listMonitoringAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringAlertSummaries",
    })
end

--- Returns an item iterator for listMonitoringAlerts.
function M.items_list_monitoring_alerts(client, input)
    return paginator.items(client, "listMonitoringAlerts", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringAlertSummaries",
    })
end

--- Returns a page iterator for listMonitoringExecutions.
function M.pages_list_monitoring_executions(client, input)
    return paginator.pages(client, "listMonitoringExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringExecutionSummaries",
    })
end

--- Returns an item iterator for listMonitoringExecutions.
function M.items_list_monitoring_executions(client, input)
    return paginator.items(client, "listMonitoringExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringExecutionSummaries",
    })
end

--- Returns a page iterator for listMonitoringSchedules.
function M.pages_list_monitoring_schedules(client, input)
    return paginator.pages(client, "listMonitoringSchedules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringScheduleSummaries",
    })
end

--- Returns an item iterator for listMonitoringSchedules.
function M.items_list_monitoring_schedules(client, input)
    return paginator.items(client, "listMonitoringSchedules", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "MonitoringScheduleSummaries",
    })
end

--- Returns a page iterator for listNotebookInstanceLifecycleConfigs.
function M.pages_list_notebook_instance_lifecycle_configs(client, input)
    return paginator.pages(client, "listNotebookInstanceLifecycleConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotebookInstanceLifecycleConfigs",
    })
end

--- Returns an item iterator for listNotebookInstanceLifecycleConfigs.
function M.items_list_notebook_instance_lifecycle_configs(client, input)
    return paginator.items(client, "listNotebookInstanceLifecycleConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotebookInstanceLifecycleConfigs",
    })
end

--- Returns a page iterator for listNotebookInstances.
function M.pages_list_notebook_instances(client, input)
    return paginator.pages(client, "listNotebookInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotebookInstances",
    })
end

--- Returns an item iterator for listNotebookInstances.
function M.items_list_notebook_instances(client, input)
    return paginator.items(client, "listNotebookInstances", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "NotebookInstances",
    })
end

--- Returns a page iterator for listOptimizationJobs.
function M.pages_list_optimization_jobs(client, input)
    return paginator.pages(client, "listOptimizationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OptimizationJobSummaries",
    })
end

--- Returns an item iterator for listOptimizationJobs.
function M.items_list_optimization_jobs(client, input)
    return paginator.items(client, "listOptimizationJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "OptimizationJobSummaries",
    })
end

--- Returns a page iterator for listPartnerApps.
function M.pages_list_partner_apps(client, input)
    return paginator.pages(client, "listPartnerApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Summaries",
    })
end

--- Returns an item iterator for listPartnerApps.
function M.items_list_partner_apps(client, input)
    return paginator.items(client, "listPartnerApps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Summaries",
    })
end

--- Returns a page iterator for listPipelineExecutionSteps.
function M.pages_list_pipeline_execution_steps(client, input)
    return paginator.pages(client, "listPipelineExecutionSteps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineExecutionSteps",
    })
end

--- Returns an item iterator for listPipelineExecutionSteps.
function M.items_list_pipeline_execution_steps(client, input)
    return paginator.items(client, "listPipelineExecutionSteps", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineExecutionSteps",
    })
end

--- Returns a page iterator for listPipelineExecutions.
function M.pages_list_pipeline_executions(client, input)
    return paginator.pages(client, "listPipelineExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineExecutionSummaries",
    })
end

--- Returns an item iterator for listPipelineExecutions.
function M.items_list_pipeline_executions(client, input)
    return paginator.items(client, "listPipelineExecutions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineExecutionSummaries",
    })
end

--- Returns a page iterator for listPipelineParametersForExecution.
function M.pages_list_pipeline_parameters_for_execution(client, input)
    return paginator.pages(client, "listPipelineParametersForExecution", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineParameters",
    })
end

--- Returns an item iterator for listPipelineParametersForExecution.
function M.items_list_pipeline_parameters_for_execution(client, input)
    return paginator.items(client, "listPipelineParametersForExecution", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineParameters",
    })
end

--- Returns a page iterator for listPipelineVersions.
function M.pages_list_pipeline_versions(client, input)
    return paginator.pages(client, "listPipelineVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineVersionSummaries",
    })
end

--- Returns an item iterator for listPipelineVersions.
function M.items_list_pipeline_versions(client, input)
    return paginator.items(client, "listPipelineVersions", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineVersionSummaries",
    })
end

--- Returns a page iterator for listPipelines.
function M.pages_list_pipelines(client, input)
    return paginator.pages(client, "listPipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineSummaries",
    })
end

--- Returns an item iterator for listPipelines.
function M.items_list_pipelines(client, input)
    return paginator.items(client, "listPipelines", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "PipelineSummaries",
    })
end

--- Returns a page iterator for listProcessingJobs.
function M.pages_list_processing_jobs(client, input)
    return paginator.pages(client, "listProcessingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProcessingJobSummaries",
    })
end

--- Returns an item iterator for listProcessingJobs.
function M.items_list_processing_jobs(client, input)
    return paginator.items(client, "listProcessingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ProcessingJobSummaries",
    })
end

--- Returns a page iterator for listProjects.
function M.pages_list_projects(client, input)
    return paginator.pages(client, "listProjects", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for listResourceCatalogs.
function M.pages_list_resource_catalogs(client, input)
    return paginator.pages(client, "listResourceCatalogs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceCatalogs",
    })
end

--- Returns an item iterator for listResourceCatalogs.
function M.items_list_resource_catalogs(client, input)
    return paginator.items(client, "listResourceCatalogs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "ResourceCatalogs",
    })
end

--- Returns a page iterator for listSpaces.
function M.pages_list_spaces(client, input)
    return paginator.pages(client, "listSpaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Spaces",
    })
end

--- Returns an item iterator for listSpaces.
function M.items_list_spaces(client, input)
    return paginator.items(client, "listSpaces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Spaces",
    })
end

--- Returns a page iterator for listStageDevices.
function M.pages_list_stage_devices(client, input)
    return paginator.pages(client, "listStageDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DeviceDeploymentSummaries",
    })
end

--- Returns an item iterator for listStageDevices.
function M.items_list_stage_devices(client, input)
    return paginator.items(client, "listStageDevices", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "DeviceDeploymentSummaries",
    })
end

--- Returns a page iterator for listStudioLifecycleConfigs.
function M.pages_list_studio_lifecycle_configs(client, input)
    return paginator.pages(client, "listStudioLifecycleConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "StudioLifecycleConfigs",
    })
end

--- Returns an item iterator for listStudioLifecycleConfigs.
function M.items_list_studio_lifecycle_configs(client, input)
    return paginator.items(client, "listStudioLifecycleConfigs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "StudioLifecycleConfigs",
    })
end

--- Returns a page iterator for listSubscribedWorkteams.
function M.pages_list_subscribed_workteams(client, input)
    return paginator.pages(client, "listSubscribedWorkteams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SubscribedWorkteams",
    })
end

--- Returns an item iterator for listSubscribedWorkteams.
function M.items_list_subscribed_workteams(client, input)
    return paginator.items(client, "listSubscribedWorkteams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "SubscribedWorkteams",
    })
end

--- Returns a page iterator for listTags.
function M.pages_list_tags(client, input)
    return paginator.pages(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns an item iterator for listTags.
function M.items_list_tags(client, input)
    return paginator.items(client, "listTags", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Tags",
    })
end

--- Returns a page iterator for listTrainingJobs.
function M.pages_list_training_jobs(client, input)
    return paginator.pages(client, "listTrainingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingJobSummaries",
    })
end

--- Returns an item iterator for listTrainingJobs.
function M.items_list_training_jobs(client, input)
    return paginator.items(client, "listTrainingJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingJobSummaries",
    })
end

--- Returns a page iterator for listTrainingJobsForHyperParameterTuningJob.
function M.pages_list_training_jobs_for_hyper_parameter_tuning_job(client, input)
    return paginator.pages(client, "listTrainingJobsForHyperParameterTuningJob", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingJobSummaries",
    })
end

--- Returns an item iterator for listTrainingJobsForHyperParameterTuningJob.
function M.items_list_training_jobs_for_hyper_parameter_tuning_job(client, input)
    return paginator.items(client, "listTrainingJobsForHyperParameterTuningJob", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingJobSummaries",
    })
end

--- Returns a page iterator for listTrainingPlans.
function M.pages_list_training_plans(client, input)
    return paginator.pages(client, "listTrainingPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingPlanSummaries",
    })
end

--- Returns an item iterator for listTrainingPlans.
function M.items_list_training_plans(client, input)
    return paginator.items(client, "listTrainingPlans", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrainingPlanSummaries",
    })
end

--- Returns a page iterator for listTransformJobs.
function M.pages_list_transform_jobs(client, input)
    return paginator.pages(client, "listTransformJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TransformJobSummaries",
    })
end

--- Returns an item iterator for listTransformJobs.
function M.items_list_transform_jobs(client, input)
    return paginator.items(client, "listTransformJobs", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TransformJobSummaries",
    })
end

--- Returns a page iterator for listTrialComponents.
function M.pages_list_trial_components(client, input)
    return paginator.pages(client, "listTrialComponents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrialComponentSummaries",
    })
end

--- Returns an item iterator for listTrialComponents.
function M.items_list_trial_components(client, input)
    return paginator.items(client, "listTrialComponents", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrialComponentSummaries",
    })
end

--- Returns a page iterator for listTrials.
function M.pages_list_trials(client, input)
    return paginator.pages(client, "listTrials", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrialSummaries",
    })
end

--- Returns an item iterator for listTrials.
function M.items_list_trials(client, input)
    return paginator.items(client, "listTrials", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "TrialSummaries",
    })
end

--- Returns a page iterator for listUltraServersByReservedCapacity.
function M.pages_list_ultra_servers_by_reserved_capacity(client, input)
    return paginator.pages(client, "listUltraServersByReservedCapacity", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UltraServers",
    })
end

--- Returns an item iterator for listUltraServersByReservedCapacity.
function M.items_list_ultra_servers_by_reserved_capacity(client, input)
    return paginator.items(client, "listUltraServersByReservedCapacity", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UltraServers",
    })
end

--- Returns a page iterator for listUserProfiles.
function M.pages_list_user_profiles(client, input)
    return paginator.pages(client, "listUserProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserProfiles",
    })
end

--- Returns an item iterator for listUserProfiles.
function M.items_list_user_profiles(client, input)
    return paginator.items(client, "listUserProfiles", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "UserProfiles",
    })
end

--- Returns a page iterator for listWorkforces.
function M.pages_list_workforces(client, input)
    return paginator.pages(client, "listWorkforces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workforces",
    })
end

--- Returns an item iterator for listWorkforces.
function M.items_list_workforces(client, input)
    return paginator.items(client, "listWorkforces", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workforces",
    })
end

--- Returns a page iterator for listWorkteams.
function M.pages_list_workteams(client, input)
    return paginator.pages(client, "listWorkteams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workteams",
    })
end

--- Returns an item iterator for listWorkteams.
function M.items_list_workteams(client, input)
    return paginator.items(client, "listWorkteams", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Workteams",
    })
end

--- Returns a page iterator for queryLineage.
function M.pages_query_lineage(client, input)
    return paginator.pages(client, "queryLineage", input, {
        input_token = "NextToken",
        output_token = "NextToken",
    })
end

--- Returns a page iterator for search.
function M.pages_search(client, input)
    return paginator.pages(client, "search", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

--- Returns an item iterator for search.
function M.items_search(client, input)
    return paginator.items(client, "search", input, {
        input_token = "NextToken",
        output_token = "NextToken",
        items = "Results",
    })
end

return M
