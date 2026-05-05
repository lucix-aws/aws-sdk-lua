local paginator = require("smithy.paginator")

local M = {}

--- Returns a page iterator for getBehaviorModelTrainingSummaries.
function M.pages_get_behavior_model_training_summaries(client, input)
    return paginator.pages(client, "getBehaviorModelTrainingSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "summaries",
    })
end

--- Returns an item iterator for getBehaviorModelTrainingSummaries.
function M.items_get_behavior_model_training_summaries(client, input)
    return paginator.items(client, "getBehaviorModelTrainingSummaries", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "summaries",
    })
end

--- Returns a page iterator for listActiveViolations.
function M.pages_list_active_violations(client, input)
    return paginator.pages(client, "listActiveViolations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activeViolations",
    })
end

--- Returns an item iterator for listActiveViolations.
function M.items_list_active_violations(client, input)
    return paginator.items(client, "listActiveViolations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "activeViolations",
    })
end

--- Returns a page iterator for listAttachedPolicies.
function M.pages_list_attached_policies(client, input)
    return paginator.pages(client, "listAttachedPolicies", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "policies",
    })
end

--- Returns an item iterator for listAttachedPolicies.
function M.items_list_attached_policies(client, input)
    return paginator.items(client, "listAttachedPolicies", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "policies",
    })
end

--- Returns a page iterator for listAuditFindings.
function M.pages_list_audit_findings(client, input)
    return paginator.pages(client, "listAuditFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns an item iterator for listAuditFindings.
function M.items_list_audit_findings(client, input)
    return paginator.items(client, "listAuditFindings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "findings",
    })
end

--- Returns a page iterator for listAuditMitigationActionsExecutions.
function M.pages_list_audit_mitigation_actions_executions(client, input)
    return paginator.pages(client, "listAuditMitigationActionsExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionsExecutions",
    })
end

--- Returns an item iterator for listAuditMitigationActionsExecutions.
function M.items_list_audit_mitigation_actions_executions(client, input)
    return paginator.items(client, "listAuditMitigationActionsExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionsExecutions",
    })
end

--- Returns a page iterator for listAuditMitigationActionsTasks.
function M.pages_list_audit_mitigation_actions_tasks(client, input)
    return paginator.pages(client, "listAuditMitigationActionsTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listAuditMitigationActionsTasks.
function M.items_list_audit_mitigation_actions_tasks(client, input)
    return paginator.items(client, "listAuditMitigationActionsTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns a page iterator for listAuditSuppressions.
function M.pages_list_audit_suppressions(client, input)
    return paginator.pages(client, "listAuditSuppressions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "suppressions",
    })
end

--- Returns an item iterator for listAuditSuppressions.
function M.items_list_audit_suppressions(client, input)
    return paginator.items(client, "listAuditSuppressions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "suppressions",
    })
end

--- Returns a page iterator for listAuditTasks.
function M.pages_list_audit_tasks(client, input)
    return paginator.pages(client, "listAuditTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listAuditTasks.
function M.items_list_audit_tasks(client, input)
    return paginator.items(client, "listAuditTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns a page iterator for listAuthorizers.
function M.pages_list_authorizers(client, input)
    return paginator.pages(client, "listAuthorizers", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "authorizers",
    })
end

--- Returns an item iterator for listAuthorizers.
function M.items_list_authorizers(client, input)
    return paginator.items(client, "listAuthorizers", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "authorizers",
    })
end

--- Returns a page iterator for listBillingGroups.
function M.pages_list_billing_groups(client, input)
    return paginator.pages(client, "listBillingGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "billingGroups",
    })
end

--- Returns an item iterator for listBillingGroups.
function M.items_list_billing_groups(client, input)
    return paginator.items(client, "listBillingGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "billingGroups",
    })
end

--- Returns a page iterator for listCACertificates.
function M.pages_list_c_a_certificates(client, input)
    return paginator.pages(client, "listCACertificates", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "certificates",
    })
end

--- Returns an item iterator for listCACertificates.
function M.items_list_c_a_certificates(client, input)
    return paginator.items(client, "listCACertificates", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "certificates",
    })
end

--- Returns a page iterator for listCertificates.
function M.pages_list_certificates(client, input)
    return paginator.pages(client, "listCertificates", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "certificates",
    })
end

--- Returns an item iterator for listCertificates.
function M.items_list_certificates(client, input)
    return paginator.items(client, "listCertificates", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "certificates",
    })
end

--- Returns a page iterator for listCertificatesByCA.
function M.pages_list_certificates_by_c_a(client, input)
    return paginator.pages(client, "listCertificatesByCA", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "certificates",
    })
end

--- Returns an item iterator for listCertificatesByCA.
function M.items_list_certificates_by_c_a(client, input)
    return paginator.items(client, "listCertificatesByCA", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "certificates",
    })
end

--- Returns a page iterator for listCommandExecutions.
function M.pages_list_command_executions(client, input)
    return paginator.pages(client, "listCommandExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "commandExecutions",
    })
end

--- Returns an item iterator for listCommandExecutions.
function M.items_list_command_executions(client, input)
    return paginator.items(client, "listCommandExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "commandExecutions",
    })
end

--- Returns a page iterator for listCommands.
function M.pages_list_commands(client, input)
    return paginator.pages(client, "listCommands", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "commands",
    })
end

--- Returns an item iterator for listCommands.
function M.items_list_commands(client, input)
    return paginator.items(client, "listCommands", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "commands",
    })
end

--- Returns a page iterator for listCustomMetrics.
function M.pages_list_custom_metrics(client, input)
    return paginator.pages(client, "listCustomMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "metricNames",
    })
end

--- Returns an item iterator for listCustomMetrics.
function M.items_list_custom_metrics(client, input)
    return paginator.items(client, "listCustomMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "metricNames",
    })
end

--- Returns a page iterator for listDetectMitigationActionsExecutions.
function M.pages_list_detect_mitigation_actions_executions(client, input)
    return paginator.pages(client, "listDetectMitigationActionsExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionsExecutions",
    })
end

--- Returns an item iterator for listDetectMitigationActionsExecutions.
function M.items_list_detect_mitigation_actions_executions(client, input)
    return paginator.items(client, "listDetectMitigationActionsExecutions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionsExecutions",
    })
end

--- Returns a page iterator for listDetectMitigationActionsTasks.
function M.pages_list_detect_mitigation_actions_tasks(client, input)
    return paginator.pages(client, "listDetectMitigationActionsTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns an item iterator for listDetectMitigationActionsTasks.
function M.items_list_detect_mitigation_actions_tasks(client, input)
    return paginator.items(client, "listDetectMitigationActionsTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tasks",
    })
end

--- Returns a page iterator for listDimensions.
function M.pages_list_dimensions(client, input)
    return paginator.pages(client, "listDimensions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dimensionNames",
    })
end

--- Returns an item iterator for listDimensions.
function M.items_list_dimensions(client, input)
    return paginator.items(client, "listDimensions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "dimensionNames",
    })
end

--- Returns a page iterator for listDomainConfigurations.
function M.pages_list_domain_configurations(client, input)
    return paginator.pages(client, "listDomainConfigurations", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "domainConfigurations",
    })
end

--- Returns an item iterator for listDomainConfigurations.
function M.items_list_domain_configurations(client, input)
    return paginator.items(client, "listDomainConfigurations", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "domainConfigurations",
    })
end

--- Returns a page iterator for listFleetMetrics.
function M.pages_list_fleet_metrics(client, input)
    return paginator.pages(client, "listFleetMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fleetMetrics",
    })
end

--- Returns an item iterator for listFleetMetrics.
function M.items_list_fleet_metrics(client, input)
    return paginator.items(client, "listFleetMetrics", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "fleetMetrics",
    })
end

--- Returns a page iterator for listIndices.
function M.pages_list_indices(client, input)
    return paginator.pages(client, "listIndices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "indexNames",
    })
end

--- Returns an item iterator for listIndices.
function M.items_list_indices(client, input)
    return paginator.items(client, "listIndices", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "indexNames",
    })
end

--- Returns a page iterator for listJobExecutionsForJob.
function M.pages_list_job_executions_for_job(client, input)
    return paginator.pages(client, "listJobExecutionsForJob", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "executionSummaries",
    })
end

--- Returns an item iterator for listJobExecutionsForJob.
function M.items_list_job_executions_for_job(client, input)
    return paginator.items(client, "listJobExecutionsForJob", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "executionSummaries",
    })
end

--- Returns a page iterator for listJobExecutionsForThing.
function M.pages_list_job_executions_for_thing(client, input)
    return paginator.pages(client, "listJobExecutionsForThing", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "executionSummaries",
    })
end

--- Returns an item iterator for listJobExecutionsForThing.
function M.items_list_job_executions_for_thing(client, input)
    return paginator.items(client, "listJobExecutionsForThing", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "executionSummaries",
    })
end

--- Returns a page iterator for listJobTemplates.
function M.pages_list_job_templates(client, input)
    return paginator.pages(client, "listJobTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobTemplates",
    })
end

--- Returns an item iterator for listJobTemplates.
function M.items_list_job_templates(client, input)
    return paginator.items(client, "listJobTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobTemplates",
    })
end

--- Returns a page iterator for listJobs.
function M.pages_list_jobs(client, input)
    return paginator.pages(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns an item iterator for listJobs.
function M.items_list_jobs(client, input)
    return paginator.items(client, "listJobs", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "jobs",
    })
end

--- Returns a page iterator for listManagedJobTemplates.
function M.pages_list_managed_job_templates(client, input)
    return paginator.pages(client, "listManagedJobTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedJobTemplates",
    })
end

--- Returns an item iterator for listManagedJobTemplates.
function M.items_list_managed_job_templates(client, input)
    return paginator.items(client, "listManagedJobTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "managedJobTemplates",
    })
end

--- Returns a page iterator for listMetricValues.
function M.pages_list_metric_values(client, input)
    return paginator.pages(client, "listMetricValues", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "metricDatumList",
    })
end

--- Returns an item iterator for listMetricValues.
function M.items_list_metric_values(client, input)
    return paginator.items(client, "listMetricValues", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "metricDatumList",
    })
end

--- Returns a page iterator for listMitigationActions.
function M.pages_list_mitigation_actions(client, input)
    return paginator.pages(client, "listMitigationActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionIdentifiers",
    })
end

--- Returns an item iterator for listMitigationActions.
function M.items_list_mitigation_actions(client, input)
    return paginator.items(client, "listMitigationActions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "actionIdentifiers",
    })
end

--- Returns a page iterator for listOTAUpdates.
function M.pages_list_o_t_a_updates(client, input)
    return paginator.pages(client, "listOTAUpdates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "otaUpdates",
    })
end

--- Returns an item iterator for listOTAUpdates.
function M.items_list_o_t_a_updates(client, input)
    return paginator.items(client, "listOTAUpdates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "otaUpdates",
    })
end

--- Returns a page iterator for listOutgoingCertificates.
function M.pages_list_outgoing_certificates(client, input)
    return paginator.pages(client, "listOutgoingCertificates", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "outgoingCertificates",
    })
end

--- Returns an item iterator for listOutgoingCertificates.
function M.items_list_outgoing_certificates(client, input)
    return paginator.items(client, "listOutgoingCertificates", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "outgoingCertificates",
    })
end

--- Returns a page iterator for listPackageVersions.
function M.pages_list_package_versions(client, input)
    return paginator.pages(client, "listPackageVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageVersionSummaries",
    })
end

--- Returns an item iterator for listPackageVersions.
function M.items_list_package_versions(client, input)
    return paginator.items(client, "listPackageVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageVersionSummaries",
    })
end

--- Returns a page iterator for listPackages.
function M.pages_list_packages(client, input)
    return paginator.pages(client, "listPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageSummaries",
    })
end

--- Returns an item iterator for listPackages.
function M.items_list_packages(client, input)
    return paginator.items(client, "listPackages", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "packageSummaries",
    })
end

--- Returns a page iterator for listPolicies.
function M.pages_list_policies(client, input)
    return paginator.pages(client, "listPolicies", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "policies",
    })
end

--- Returns an item iterator for listPolicies.
function M.items_list_policies(client, input)
    return paginator.items(client, "listPolicies", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "policies",
    })
end

--- Returns a page iterator for listPolicyPrincipals.
function M.pages_list_policy_principals(client, input)
    return paginator.pages(client, "listPolicyPrincipals", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "principals",
    })
end

--- Returns an item iterator for listPolicyPrincipals.
function M.items_list_policy_principals(client, input)
    return paginator.items(client, "listPolicyPrincipals", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "principals",
    })
end

--- Returns a page iterator for listPrincipalPolicies.
function M.pages_list_principal_policies(client, input)
    return paginator.pages(client, "listPrincipalPolicies", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "policies",
    })
end

--- Returns an item iterator for listPrincipalPolicies.
function M.items_list_principal_policies(client, input)
    return paginator.items(client, "listPrincipalPolicies", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "policies",
    })
end

--- Returns a page iterator for listPrincipalThings.
function M.pages_list_principal_things(client, input)
    return paginator.pages(client, "listPrincipalThings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns an item iterator for listPrincipalThings.
function M.items_list_principal_things(client, input)
    return paginator.items(client, "listPrincipalThings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns a page iterator for listPrincipalThingsV2.
function M.pages_list_principal_things_v2(client, input)
    return paginator.pages(client, "listPrincipalThingsV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "principalThingObjects",
    })
end

--- Returns an item iterator for listPrincipalThingsV2.
function M.items_list_principal_things_v2(client, input)
    return paginator.items(client, "listPrincipalThingsV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "principalThingObjects",
    })
end

--- Returns a page iterator for listProvisioningTemplateVersions.
function M.pages_list_provisioning_template_versions(client, input)
    return paginator.pages(client, "listProvisioningTemplateVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "versions",
    })
end

--- Returns an item iterator for listProvisioningTemplateVersions.
function M.items_list_provisioning_template_versions(client, input)
    return paginator.items(client, "listProvisioningTemplateVersions", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "versions",
    })
end

--- Returns a page iterator for listProvisioningTemplates.
function M.pages_list_provisioning_templates(client, input)
    return paginator.pages(client, "listProvisioningTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templates",
    })
end

--- Returns an item iterator for listProvisioningTemplates.
function M.items_list_provisioning_templates(client, input)
    return paginator.items(client, "listProvisioningTemplates", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "templates",
    })
end

--- Returns a page iterator for listRelatedResourcesForAuditFinding.
function M.pages_list_related_resources_for_audit_finding(client, input)
    return paginator.pages(client, "listRelatedResourcesForAuditFinding", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedResources",
    })
end

--- Returns an item iterator for listRelatedResourcesForAuditFinding.
function M.items_list_related_resources_for_audit_finding(client, input)
    return paginator.items(client, "listRelatedResourcesForAuditFinding", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "relatedResources",
    })
end

--- Returns a page iterator for listRoleAliases.
function M.pages_list_role_aliases(client, input)
    return paginator.pages(client, "listRoleAliases", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "roleAliases",
    })
end

--- Returns an item iterator for listRoleAliases.
function M.items_list_role_aliases(client, input)
    return paginator.items(client, "listRoleAliases", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "roleAliases",
    })
end

--- Returns a page iterator for listSbomValidationResults.
function M.pages_list_sbom_validation_results(client, input)
    return paginator.pages(client, "listSbomValidationResults", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "validationResultSummaries",
    })
end

--- Returns an item iterator for listSbomValidationResults.
function M.items_list_sbom_validation_results(client, input)
    return paginator.items(client, "listSbomValidationResults", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "validationResultSummaries",
    })
end

--- Returns a page iterator for listScheduledAudits.
function M.pages_list_scheduled_audits(client, input)
    return paginator.pages(client, "listScheduledAudits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scheduledAudits",
    })
end

--- Returns an item iterator for listScheduledAudits.
function M.items_list_scheduled_audits(client, input)
    return paginator.items(client, "listScheduledAudits", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "scheduledAudits",
    })
end

--- Returns a page iterator for listSecurityProfiles.
function M.pages_list_security_profiles(client, input)
    return paginator.pages(client, "listSecurityProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "securityProfileIdentifiers",
    })
end

--- Returns an item iterator for listSecurityProfiles.
function M.items_list_security_profiles(client, input)
    return paginator.items(client, "listSecurityProfiles", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "securityProfileIdentifiers",
    })
end

--- Returns a page iterator for listSecurityProfilesForTarget.
function M.pages_list_security_profiles_for_target(client, input)
    return paginator.pages(client, "listSecurityProfilesForTarget", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "securityProfileTargetMappings",
    })
end

--- Returns an item iterator for listSecurityProfilesForTarget.
function M.items_list_security_profiles_for_target(client, input)
    return paginator.items(client, "listSecurityProfilesForTarget", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "securityProfileTargetMappings",
    })
end

--- Returns a page iterator for listStreams.
function M.pages_list_streams(client, input)
    return paginator.pages(client, "listStreams", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "streams",
    })
end

--- Returns an item iterator for listStreams.
function M.items_list_streams(client, input)
    return paginator.items(client, "listStreams", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "streams",
    })
end

--- Returns a page iterator for listTagsForResource.
function M.pages_list_tags_for_resource(client, input)
    return paginator.pages(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns an item iterator for listTagsForResource.
function M.items_list_tags_for_resource(client, input)
    return paginator.items(client, "listTagsForResource", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "tags",
    })
end

--- Returns a page iterator for listTargetsForPolicy.
function M.pages_list_targets_for_policy(client, input)
    return paginator.pages(client, "listTargetsForPolicy", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "targets",
    })
end

--- Returns an item iterator for listTargetsForPolicy.
function M.items_list_targets_for_policy(client, input)
    return paginator.items(client, "listTargetsForPolicy", input, {
        input_token = "marker",
        output_token = "nextMarker",
        items = "targets",
    })
end

--- Returns a page iterator for listTargetsForSecurityProfile.
function M.pages_list_targets_for_security_profile(client, input)
    return paginator.pages(client, "listTargetsForSecurityProfile", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "securityProfileTargets",
    })
end

--- Returns an item iterator for listTargetsForSecurityProfile.
function M.items_list_targets_for_security_profile(client, input)
    return paginator.items(client, "listTargetsForSecurityProfile", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "securityProfileTargets",
    })
end

--- Returns a page iterator for listThingGroups.
function M.pages_list_thing_groups(client, input)
    return paginator.pages(client, "listThingGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingGroups",
    })
end

--- Returns an item iterator for listThingGroups.
function M.items_list_thing_groups(client, input)
    return paginator.items(client, "listThingGroups", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingGroups",
    })
end

--- Returns a page iterator for listThingGroupsForThing.
function M.pages_list_thing_groups_for_thing(client, input)
    return paginator.pages(client, "listThingGroupsForThing", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingGroups",
    })
end

--- Returns an item iterator for listThingGroupsForThing.
function M.items_list_thing_groups_for_thing(client, input)
    return paginator.items(client, "listThingGroupsForThing", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingGroups",
    })
end

--- Returns a page iterator for listThingPrincipals.
function M.pages_list_thing_principals(client, input)
    return paginator.pages(client, "listThingPrincipals", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "principals",
    })
end

--- Returns an item iterator for listThingPrincipals.
function M.items_list_thing_principals(client, input)
    return paginator.items(client, "listThingPrincipals", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "principals",
    })
end

--- Returns a page iterator for listThingPrincipalsV2.
function M.pages_list_thing_principals_v2(client, input)
    return paginator.pages(client, "listThingPrincipalsV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingPrincipalObjects",
    })
end

--- Returns an item iterator for listThingPrincipalsV2.
function M.items_list_thing_principals_v2(client, input)
    return paginator.items(client, "listThingPrincipalsV2", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingPrincipalObjects",
    })
end

--- Returns a page iterator for listThingRegistrationTaskReports.
function M.pages_list_thing_registration_task_reports(client, input)
    return paginator.pages(client, "listThingRegistrationTaskReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourceLinks",
    })
end

--- Returns an item iterator for listThingRegistrationTaskReports.
function M.items_list_thing_registration_task_reports(client, input)
    return paginator.items(client, "listThingRegistrationTaskReports", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "resourceLinks",
    })
end

--- Returns a page iterator for listThingRegistrationTasks.
function M.pages_list_thing_registration_tasks(client, input)
    return paginator.pages(client, "listThingRegistrationTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskIds",
    })
end

--- Returns an item iterator for listThingRegistrationTasks.
function M.items_list_thing_registration_tasks(client, input)
    return paginator.items(client, "listThingRegistrationTasks", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "taskIds",
    })
end

--- Returns a page iterator for listThingTypes.
function M.pages_list_thing_types(client, input)
    return paginator.pages(client, "listThingTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingTypes",
    })
end

--- Returns an item iterator for listThingTypes.
function M.items_list_thing_types(client, input)
    return paginator.items(client, "listThingTypes", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "thingTypes",
    })
end

--- Returns a page iterator for listThings.
function M.pages_list_things(client, input)
    return paginator.pages(client, "listThings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns an item iterator for listThings.
function M.items_list_things(client, input)
    return paginator.items(client, "listThings", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns a page iterator for listThingsInBillingGroup.
function M.pages_list_things_in_billing_group(client, input)
    return paginator.pages(client, "listThingsInBillingGroup", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns an item iterator for listThingsInBillingGroup.
function M.items_list_things_in_billing_group(client, input)
    return paginator.items(client, "listThingsInBillingGroup", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns a page iterator for listThingsInThingGroup.
function M.pages_list_things_in_thing_group(client, input)
    return paginator.pages(client, "listThingsInThingGroup", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns an item iterator for listThingsInThingGroup.
function M.items_list_things_in_thing_group(client, input)
    return paginator.items(client, "listThingsInThingGroup", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "things",
    })
end

--- Returns a page iterator for listTopicRuleDestinations.
function M.pages_list_topic_rule_destinations(client, input)
    return paginator.pages(client, "listTopicRuleDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "destinationSummaries",
    })
end

--- Returns an item iterator for listTopicRuleDestinations.
function M.items_list_topic_rule_destinations(client, input)
    return paginator.items(client, "listTopicRuleDestinations", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "destinationSummaries",
    })
end

--- Returns a page iterator for listTopicRules.
function M.pages_list_topic_rules(client, input)
    return paginator.pages(client, "listTopicRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "rules",
    })
end

--- Returns an item iterator for listTopicRules.
function M.items_list_topic_rules(client, input)
    return paginator.items(client, "listTopicRules", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "rules",
    })
end

--- Returns a page iterator for listV2LoggingLevels.
function M.pages_list_v2_logging_levels(client, input)
    return paginator.pages(client, "listV2LoggingLevels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logTargetConfigurations",
    })
end

--- Returns an item iterator for listV2LoggingLevels.
function M.items_list_v2_logging_levels(client, input)
    return paginator.items(client, "listV2LoggingLevels", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "logTargetConfigurations",
    })
end

--- Returns a page iterator for listViolationEvents.
function M.pages_list_violation_events(client, input)
    return paginator.pages(client, "listViolationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "violationEvents",
    })
end

--- Returns an item iterator for listViolationEvents.
function M.items_list_violation_events(client, input)
    return paginator.items(client, "listViolationEvents", input, {
        input_token = "nextToken",
        output_token = "nextToken",
        items = "violationEvents",
    })
end

return M
