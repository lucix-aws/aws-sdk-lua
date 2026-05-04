local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codedeploy.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("codedeploy.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeDeploy_20141006"
    cfg.signing_name = "codedeploy"
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

function Client:addTagsToOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToOnPremisesInstances",
        input_schema = types.AddTagsToOnPremisesInstancesInput,
        output_schema = types.AddTagsToOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetApplicationRevisions(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetApplicationRevisions",
        input_schema = types.BatchGetApplicationRevisionsInput,
        output_schema = types.BatchGetApplicationRevisionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetApplications(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetApplications",
        input_schema = types.BatchGetApplicationsInput,
        output_schema = types.BatchGetApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDeploymentGroups(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeploymentGroups",
        input_schema = types.BatchGetDeploymentGroupsInput,
        output_schema = types.BatchGetDeploymentGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDeploymentInstances(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeploymentInstances",
        input_schema = types.BatchGetDeploymentInstancesInput,
        output_schema = types.BatchGetDeploymentInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDeployments(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeployments",
        input_schema = types.BatchGetDeploymentsInput,
        output_schema = types.BatchGetDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetDeploymentTargets(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeploymentTargets",
        input_schema = types.BatchGetDeploymentTargetsInput,
        output_schema = types.BatchGetDeploymentTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchGetOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetOnPremisesInstances",
        input_schema = types.BatchGetOnPremisesInstancesInput,
        output_schema = types.BatchGetOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:continueDeployment(input, options)
    return self:invokeOperation(input, {
        name = "ContinueDeployment",
        input_schema = types.ContinueDeploymentInput,
        output_schema = types.ContinueDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = types.CreateApplicationInput,
        output_schema = types.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = types.CreateDeploymentInput,
        output_schema = types.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDeploymentConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeploymentConfig",
        input_schema = types.CreateDeploymentConfigInput,
        output_schema = types.CreateDeploymentConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeploymentGroup",
        input_schema = types.CreateDeploymentGroupInput,
        output_schema = types.CreateDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = types.DeleteApplicationInput,
        output_schema = types.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDeploymentConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeploymentConfig",
        input_schema = types.DeleteDeploymentConfigInput,
        output_schema = types.DeleteDeploymentConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeploymentGroup",
        input_schema = types.DeleteDeploymentGroupInput,
        output_schema = types.DeleteDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteGitHubAccountToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGitHubAccountToken",
        input_schema = types.DeleteGitHubAccountTokenInput,
        output_schema = types.DeleteGitHubAccountTokenOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteResourcesByExternalId(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcesByExternalId",
        input_schema = types.DeleteResourcesByExternalIdInput,
        output_schema = types.DeleteResourcesByExternalIdOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deregisterOnPremisesInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterOnPremisesInstance",
        input_schema = types.DeregisterOnPremisesInstanceInput,
        output_schema = types.DeregisterOnPremisesInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = types.GetApplicationInput,
        output_schema = types.GetApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getApplicationRevision(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationRevision",
        input_schema = types.GetApplicationRevisionInput,
        output_schema = types.GetApplicationRevisionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = types.GetDeploymentInput,
        output_schema = types.GetDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeploymentConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentConfig",
        input_schema = types.GetDeploymentConfigInput,
        output_schema = types.GetDeploymentConfigOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentGroup",
        input_schema = types.GetDeploymentGroupInput,
        output_schema = types.GetDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeploymentInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentInstance",
        input_schema = types.GetDeploymentInstanceInput,
        output_schema = types.GetDeploymentInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getDeploymentTarget(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentTarget",
        input_schema = types.GetDeploymentTargetInput,
        output_schema = types.GetDeploymentTargetOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getOnPremisesInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetOnPremisesInstance",
        input_schema = types.GetOnPremisesInstanceInput,
        output_schema = types.GetOnPremisesInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplicationRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationRevisions",
        input_schema = types.ListApplicationRevisionsInput,
        output_schema = types.ListApplicationRevisionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = types.ListApplicationsInput,
        output_schema = types.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDeploymentConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentConfigs",
        input_schema = types.ListDeploymentConfigsInput,
        output_schema = types.ListDeploymentConfigsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDeploymentGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentGroups",
        input_schema = types.ListDeploymentGroupsInput,
        output_schema = types.ListDeploymentGroupsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDeploymentInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentInstances",
        input_schema = types.ListDeploymentInstancesInput,
        output_schema = types.ListDeploymentInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = types.ListDeploymentsInput,
        output_schema = types.ListDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listDeploymentTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentTargets",
        input_schema = types.ListDeploymentTargetsInput,
        output_schema = types.ListDeploymentTargetsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listGitHubAccountTokenNames(input, options)
    return self:invokeOperation(input, {
        name = "ListGitHubAccountTokenNames",
        input_schema = types.ListGitHubAccountTokenNamesInput,
        output_schema = types.ListGitHubAccountTokenNamesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListOnPremisesInstances",
        input_schema = types.ListOnPremisesInstancesInput,
        output_schema = types.ListOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:putLifecycleEventHookExecutionStatus(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecycleEventHookExecutionStatus",
        input_schema = types.PutLifecycleEventHookExecutionStatusInput,
        output_schema = types.PutLifecycleEventHookExecutionStatusOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerApplicationRevision(input, options)
    return self:invokeOperation(input, {
        name = "RegisterApplicationRevision",
        input_schema = types.RegisterApplicationRevisionInput,
        output_schema = types.RegisterApplicationRevisionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:registerOnPremisesInstance(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOnPremisesInstance",
        input_schema = types.RegisterOnPremisesInstanceInput,
        output_schema = types.RegisterOnPremisesInstanceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:removeTagsFromOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromOnPremisesInstances",
        input_schema = types.RemoveTagsFromOnPremisesInstancesInput,
        output_schema = types.RemoveTagsFromOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:skipWaitTimeForInstanceTermination(input, options)
    return self:invokeOperation(input, {
        name = "SkipWaitTimeForInstanceTermination",
        input_schema = types.SkipWaitTimeForInstanceTerminationInput,
        output_schema = types.SkipWaitTimeForInstanceTerminationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StopDeployment",
        input_schema = types.StopDeploymentInput,
        output_schema = types.StopDeploymentOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = types.UpdateApplicationInput,
        output_schema = types.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeploymentGroup",
        input_schema = types.UpdateDeploymentGroupInput,
        output_schema = types.UpdateDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
