local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codedeploy.endpoint_rules")
local schemas = require("codedeploy.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "CodeDeploy_20141006"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codedeploy", signing_region = cfg.region } }
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

function Client:addTagsToOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "AddTagsToOnPremisesInstances",
        input_schema = schemas.AddTagsToOnPremisesInstancesInput,
        output_schema = schemas.AddTagsToOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetApplicationRevisions(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetApplicationRevisions",
        input_schema = schemas.BatchGetApplicationRevisionsInput,
        output_schema = schemas.BatchGetApplicationRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetApplications(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetApplications",
        input_schema = schemas.BatchGetApplicationsInput,
        output_schema = schemas.BatchGetApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetDeploymentGroups(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeploymentGroups",
        input_schema = schemas.BatchGetDeploymentGroupsInput,
        output_schema = schemas.BatchGetDeploymentGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetDeploymentInstances(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeploymentInstances",
        input_schema = schemas.BatchGetDeploymentInstancesInput,
        output_schema = schemas.BatchGetDeploymentInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetDeployments(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeployments",
        input_schema = schemas.BatchGetDeploymentsInput,
        output_schema = schemas.BatchGetDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetDeploymentTargets(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetDeploymentTargets",
        input_schema = schemas.BatchGetDeploymentTargetsInput,
        output_schema = schemas.BatchGetDeploymentTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetOnPremisesInstances",
        input_schema = schemas.BatchGetOnPremisesInstancesInput,
        output_schema = schemas.BatchGetOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:continueDeployment(input, options)
    return self:invokeOperation(input, {
        name = "ContinueDeployment",
        input_schema = schemas.ContinueDeploymentInput,
        output_schema = schemas.ContinueDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateApplication",
        input_schema = schemas.CreateApplicationInput,
        output_schema = schemas.CreateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeployment(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeployment",
        input_schema = schemas.CreateDeploymentInput,
        output_schema = schemas.CreateDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeploymentConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeploymentConfig",
        input_schema = schemas.CreateDeploymentConfigInput,
        output_schema = schemas.CreateDeploymentConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateDeploymentGroup",
        input_schema = schemas.CreateDeploymentGroupInput,
        output_schema = schemas.CreateDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteApplication",
        input_schema = schemas.DeleteApplicationInput,
        output_schema = schemas.DeleteApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeploymentConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeploymentConfig",
        input_schema = schemas.DeleteDeploymentConfigInput,
        output_schema = schemas.DeleteDeploymentConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDeploymentGroup",
        input_schema = schemas.DeleteDeploymentGroupInput,
        output_schema = schemas.DeleteDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteGitHubAccountToken(input, options)
    return self:invokeOperation(input, {
        name = "DeleteGitHubAccountToken",
        input_schema = schemas.DeleteGitHubAccountTokenInput,
        output_schema = schemas.DeleteGitHubAccountTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcesByExternalId(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcesByExternalId",
        input_schema = schemas.DeleteResourcesByExternalIdInput,
        output_schema = schemas.DeleteResourcesByExternalIdOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterOnPremisesInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterOnPremisesInstance",
        input_schema = schemas.DeregisterOnPremisesInstanceInput,
        output_schema = schemas.DeregisterOnPremisesInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplication(input, options)
    return self:invokeOperation(input, {
        name = "GetApplication",
        input_schema = schemas.GetApplicationInput,
        output_schema = schemas.GetApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getApplicationRevision(input, options)
    return self:invokeOperation(input, {
        name = "GetApplicationRevision",
        input_schema = schemas.GetApplicationRevisionInput,
        output_schema = schemas.GetApplicationRevisionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeployment(input, options)
    return self:invokeOperation(input, {
        name = "GetDeployment",
        input_schema = schemas.GetDeploymentInput,
        output_schema = schemas.GetDeploymentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentConfig",
        input_schema = schemas.GetDeploymentConfigInput,
        output_schema = schemas.GetDeploymentConfigOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentGroup",
        input_schema = schemas.GetDeploymentGroupInput,
        output_schema = schemas.GetDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentInstance",
        input_schema = schemas.GetDeploymentInstanceInput,
        output_schema = schemas.GetDeploymentInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDeploymentTarget(input, options)
    return self:invokeOperation(input, {
        name = "GetDeploymentTarget",
        input_schema = schemas.GetDeploymentTargetInput,
        output_schema = schemas.GetDeploymentTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOnPremisesInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetOnPremisesInstance",
        input_schema = schemas.GetOnPremisesInstanceInput,
        output_schema = schemas.GetOnPremisesInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplicationRevisions(input, options)
    return self:invokeOperation(input, {
        name = "ListApplicationRevisions",
        input_schema = schemas.ListApplicationRevisionsInput,
        output_schema = schemas.ListApplicationRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListApplications",
        input_schema = schemas.ListApplicationsInput,
        output_schema = schemas.ListApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentConfigs",
        input_schema = schemas.ListDeploymentConfigsInput,
        output_schema = schemas.ListDeploymentConfigsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentGroups",
        input_schema = schemas.ListDeploymentGroupsInput,
        output_schema = schemas.ListDeploymentGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentInstances",
        input_schema = schemas.ListDeploymentInstancesInput,
        output_schema = schemas.ListDeploymentInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeployments(input, options)
    return self:invokeOperation(input, {
        name = "ListDeployments",
        input_schema = schemas.ListDeploymentsInput,
        output_schema = schemas.ListDeploymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDeploymentTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListDeploymentTargets",
        input_schema = schemas.ListDeploymentTargetsInput,
        output_schema = schemas.ListDeploymentTargetsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGitHubAccountTokenNames(input, options)
    return self:invokeOperation(input, {
        name = "ListGitHubAccountTokenNames",
        input_schema = schemas.ListGitHubAccountTokenNamesInput,
        output_schema = schemas.ListGitHubAccountTokenNamesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListOnPremisesInstances",
        input_schema = schemas.ListOnPremisesInstancesInput,
        output_schema = schemas.ListOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putLifecycleEventHookExecutionStatus(input, options)
    return self:invokeOperation(input, {
        name = "PutLifecycleEventHookExecutionStatus",
        input_schema = schemas.PutLifecycleEventHookExecutionStatusInput,
        output_schema = schemas.PutLifecycleEventHookExecutionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerApplicationRevision(input, options)
    return self:invokeOperation(input, {
        name = "RegisterApplicationRevision",
        input_schema = schemas.RegisterApplicationRevisionInput,
        output_schema = schemas.RegisterApplicationRevisionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerOnPremisesInstance(input, options)
    return self:invokeOperation(input, {
        name = "RegisterOnPremisesInstance",
        input_schema = schemas.RegisterOnPremisesInstanceInput,
        output_schema = schemas.RegisterOnPremisesInstanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeTagsFromOnPremisesInstances(input, options)
    return self:invokeOperation(input, {
        name = "RemoveTagsFromOnPremisesInstances",
        input_schema = schemas.RemoveTagsFromOnPremisesInstancesInput,
        output_schema = schemas.RemoveTagsFromOnPremisesInstancesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:skipWaitTimeForInstanceTermination(input, options)
    return self:invokeOperation(input, {
        name = "SkipWaitTimeForInstanceTermination",
        input_schema = schemas.SkipWaitTimeForInstanceTerminationInput,
        output_schema = schemas.SkipWaitTimeForInstanceTerminationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopDeployment(input, options)
    return self:invokeOperation(input, {
        name = "StopDeployment",
        input_schema = schemas.StopDeploymentInput,
        output_schema = schemas.StopDeploymentOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateApplication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateApplication",
        input_schema = schemas.UpdateApplicationInput,
        output_schema = schemas.UpdateApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDeploymentGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDeploymentGroup",
        input_schema = schemas.UpdateDeploymentGroupInput,
        output_schema = schemas.UpdateDeploymentGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
