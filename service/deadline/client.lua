local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("deadline.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("deadline.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Deadline"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "deadline", signing_region = cfg.region } }
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

function Client:associateMemberToFarm(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMemberToFarm",
        input_schema = types.AssociateMemberToFarmInput,
        output_schema = types.AssociateMemberToFarmOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/farms/{farmId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMemberToFleet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMemberToFleet",
        input_schema = types.AssociateMemberToFleetInput,
        output_schema = types.AssociateMemberToFleetOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMemberToJob(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMemberToJob",
        input_schema = types.AssociateMemberToJobInput,
        output_schema = types.AssociateMemberToJobOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateMemberToQueue(input, options)
    return self:invokeOperation(input, {
        name = "AssociateMemberToQueue",
        input_schema = types.AssociateMemberToQueueInput,
        output_schema = types.AssociateMemberToQueueOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeFleetRoleForRead(input, options)
    return self:invokeOperation(input, {
        name = "AssumeFleetRoleForRead",
        input_schema = types.AssumeFleetRoleForReadInput,
        output_schema = types.AssumeFleetRoleForReadOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/read-roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeFleetRoleForWorker(input, options)
    return self:invokeOperation(input, {
        name = "AssumeFleetRoleForWorker",
        input_schema = types.AssumeFleetRoleForWorkerInput,
        output_schema = types.AssumeFleetRoleForWorkerOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/fleet-roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeQueueRoleForRead(input, options)
    return self:invokeOperation(input, {
        name = "AssumeQueueRoleForRead",
        input_schema = types.AssumeQueueRoleForReadInput,
        output_schema = types.AssumeQueueRoleForReadOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/read-roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeQueueRoleForUser(input, options)
    return self:invokeOperation(input, {
        name = "AssumeQueueRoleForUser",
        input_schema = types.AssumeQueueRoleForUserInput,
        output_schema = types.AssumeQueueRoleForUserOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/user-roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:assumeQueueRoleForWorker(input, options)
    return self:invokeOperation(input, {
        name = "AssumeQueueRoleForWorker",
        input_schema = types.AssumeQueueRoleForWorkerInput,
        output_schema = types.AssumeQueueRoleForWorkerOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/queue-roles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetJob(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetJob",
        input_schema = types.BatchGetJobInput,
        output_schema = types.BatchGetJobOutput,
        http_method = "POST",
        http_path = "/2023-10-12/batch-get-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetJobEntity(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetJobEntity",
        input_schema = types.BatchGetJobEntityInput,
        output_schema = types.BatchGetJobEntityOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/batchGetJobEntity",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetSession(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSession",
        input_schema = types.BatchGetSessionInput,
        output_schema = types.BatchGetSessionOutput,
        http_method = "POST",
        http_path = "/2023-10-12/batch-get-session",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetSessionAction(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetSessionAction",
        input_schema = types.BatchGetSessionActionInput,
        output_schema = types.BatchGetSessionActionOutput,
        http_method = "POST",
        http_path = "/2023-10-12/batch-get-session-action",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetStep(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetStep",
        input_schema = types.BatchGetStepInput,
        output_schema = types.BatchGetStepOutput,
        http_method = "POST",
        http_path = "/2023-10-12/batch-get-step",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetTask(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetTask",
        input_schema = types.BatchGetTaskInput,
        output_schema = types.BatchGetTaskOutput,
        http_method = "POST",
        http_path = "/2023-10-12/batch-get-task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetWorker(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetWorker",
        input_schema = types.BatchGetWorkerInput,
        output_schema = types.BatchGetWorkerOutput,
        http_method = "POST",
        http_path = "/2023-10-12/batch-get-worker",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateJob(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateJob",
        input_schema = types.BatchUpdateJobInput,
        output_schema = types.BatchUpdateJobOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/batch-update-job",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateTask(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateTask",
        input_schema = types.BatchUpdateTaskInput,
        output_schema = types.BatchUpdateTaskOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/batch-update-task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyJobTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CopyJobTemplate",
        input_schema = types.CopyJobTemplateInput,
        output_schema = types.CopyJobTemplateOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBudget(input, options)
    return self:invokeOperation(input, {
        name = "CreateBudget",
        input_schema = types.CreateBudgetInput,
        output_schema = types.CreateBudgetOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/budgets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFarm(input, options)
    return self:invokeOperation(input, {
        name = "CreateFarm",
        input_schema = types.CreateFarmInput,
        output_schema = types.CreateFarmOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createFleet(input, options)
    return self:invokeOperation(input, {
        name = "CreateFleet",
        input_schema = types.CreateFleetInput,
        output_schema = types.CreateFleetOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/fleets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLicenseEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "CreateLicenseEndpoint",
        input_schema = types.CreateLicenseEndpointInput,
        output_schema = types.CreateLicenseEndpointOutput,
        http_method = "POST",
        http_path = "/2023-10-12/license-endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLimit(input, options)
    return self:invokeOperation(input, {
        name = "CreateLimit",
        input_schema = types.CreateLimitInput,
        output_schema = types.CreateLimitOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMonitor(input, options)
    return self:invokeOperation(input, {
        name = "CreateMonitor",
        input_schema = types.CreateMonitorInput,
        output_schema = types.CreateMonitorOutput,
        http_method = "POST",
        http_path = "/2023-10-12/monitors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueue",
        input_schema = types.CreateQueueInput,
        output_schema = types.CreateQueueOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueueEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueueEnvironment",
        input_schema = types.CreateQueueEnvironmentInput,
        output_schema = types.CreateQueueEnvironmentOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueueFleetAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueueFleetAssociation",
        input_schema = types.CreateQueueFleetAssociationInput,
        output_schema = types.CreateQueueFleetAssociationOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/farms/{farmId}/queue-fleet-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueueLimitAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueueLimitAssociation",
        input_schema = types.CreateQueueLimitAssociationInput,
        output_schema = types.CreateQueueLimitAssociationOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/farms/{farmId}/queue-limit-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStorageProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateStorageProfile",
        input_schema = types.CreateStorageProfileInput,
        output_schema = types.CreateStorageProfileOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/storage-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorker(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorker",
        input_schema = types.CreateWorkerInput,
        output_schema = types.CreateWorkerOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBudget(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBudget",
        input_schema = types.DeleteBudgetInput,
        output_schema = types.DeleteBudgetOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/budgets/{budgetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFarm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFarm",
        input_schema = types.DeleteFarmInput,
        output_schema = types.DeleteFarmOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFleet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFleet",
        input_schema = types.DeleteFleetInput,
        output_schema = types.DeleteFleetOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLicenseEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLicenseEndpoint",
        input_schema = types.DeleteLicenseEndpointInput,
        output_schema = types.DeleteLicenseEndpointOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/license-endpoints/{licenseEndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLimit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLimit",
        input_schema = types.DeleteLimitInput,
        output_schema = types.DeleteLimitOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/limits/{limitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMeteredProduct(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMeteredProduct",
        input_schema = types.DeleteMeteredProductInput,
        output_schema = types.DeleteMeteredProductOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteMonitor(input, options)
    return self:invokeOperation(input, {
        name = "DeleteMonitor",
        input_schema = types.DeleteMonitorInput,
        output_schema = types.DeleteMonitorOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/monitors/{monitorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueue",
        input_schema = types.DeleteQueueInput,
        output_schema = types.DeleteQueueOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueueEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueueEnvironment",
        input_schema = types.DeleteQueueEnvironmentInput,
        output_schema = types.DeleteQueueEnvironmentOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueueFleetAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueueFleetAssociation",
        input_schema = types.DeleteQueueFleetAssociationInput,
        output_schema = types.DeleteQueueFleetAssociationOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueueLimitAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueueLimitAssociation",
        input_schema = types.DeleteQueueLimitAssociationInput,
        output_schema = types.DeleteQueueLimitAssociationOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteStorageProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteStorageProfile",
        input_schema = types.DeleteStorageProfileInput,
        output_schema = types.DeleteStorageProfileOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorker",
        input_schema = types.DeleteWorkerInput,
        output_schema = types.DeleteWorkerOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMemberFromFarm(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMemberFromFarm",
        input_schema = types.DisassociateMemberFromFarmInput,
        output_schema = types.DisassociateMemberFromFarmOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMemberFromFleet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMemberFromFleet",
        input_schema = types.DisassociateMemberFromFleetInput,
        output_schema = types.DisassociateMemberFromFleetOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMemberFromJob(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMemberFromJob",
        input_schema = types.DisassociateMemberFromJobInput,
        output_schema = types.DisassociateMemberFromJobOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateMemberFromQueue(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateMemberFromQueue",
        input_schema = types.DisassociateMemberFromQueueInput,
        output_schema = types.DisassociateMemberFromQueueOutput,
        http_method = "DELETE",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/members/{principalId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBudget(input, options)
    return self:invokeOperation(input, {
        name = "GetBudget",
        input_schema = types.GetBudgetInput,
        output_schema = types.GetBudgetOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/budgets/{budgetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFarm(input, options)
    return self:invokeOperation(input, {
        name = "GetFarm",
        input_schema = types.GetFarmInput,
        output_schema = types.GetFarmOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFleet(input, options)
    return self:invokeOperation(input, {
        name = "GetFleet",
        input_schema = types.GetFleetInput,
        output_schema = types.GetFleetOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJob(input, options)
    return self:invokeOperation(input, {
        name = "GetJob",
        input_schema = types.GetJobInput,
        output_schema = types.GetJobOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLicenseEndpoint(input, options)
    return self:invokeOperation(input, {
        name = "GetLicenseEndpoint",
        input_schema = types.GetLicenseEndpointInput,
        output_schema = types.GetLicenseEndpointOutput,
        http_method = "GET",
        http_path = "/2023-10-12/license-endpoints/{licenseEndpointId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLimit(input, options)
    return self:invokeOperation(input, {
        name = "GetLimit",
        input_schema = types.GetLimitInput,
        output_schema = types.GetLimitOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/limits/{limitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMonitor(input, options)
    return self:invokeOperation(input, {
        name = "GetMonitor",
        input_schema = types.GetMonitorInput,
        output_schema = types.GetMonitorOutput,
        http_method = "GET",
        http_path = "/2023-10-12/monitors/{monitorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMonitorSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetMonitorSettings",
        input_schema = types.GetMonitorSettingsInput,
        output_schema = types.GetMonitorSettingsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/monitors/{monitorId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueue(input, options)
    return self:invokeOperation(input, {
        name = "GetQueue",
        input_schema = types.GetQueueInput,
        output_schema = types.GetQueueOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueueEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "GetQueueEnvironment",
        input_schema = types.GetQueueEnvironmentInput,
        output_schema = types.GetQueueEnvironmentOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueueFleetAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetQueueFleetAssociation",
        input_schema = types.GetQueueFleetAssociationInput,
        output_schema = types.GetQueueFleetAssociationOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueueLimitAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetQueueLimitAssociation",
        input_schema = types.GetQueueLimitAssociationInput,
        output_schema = types.GetQueueLimitAssociationOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSession(input, options)
    return self:invokeOperation(input, {
        name = "GetSession",
        input_schema = types.GetSessionInput,
        output_schema = types.GetSessionOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionAction(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionAction",
        input_schema = types.GetSessionActionInput,
        output_schema = types.GetSessionActionOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions/{sessionActionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSessionsStatisticsAggregation(input, options)
    return self:invokeOperation(input, {
        name = "GetSessionsStatisticsAggregation",
        input_schema = types.GetSessionsStatisticsAggregationInput,
        output_schema = types.GetSessionsStatisticsAggregationOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStep(input, options)
    return self:invokeOperation(input, {
        name = "GetStep",
        input_schema = types.GetStepInput,
        output_schema = types.GetStepOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStorageProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageProfile",
        input_schema = types.GetStorageProfileInput,
        output_schema = types.GetStorageProfileOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getStorageProfileForQueue(input, options)
    return self:invokeOperation(input, {
        name = "GetStorageProfileForQueue",
        input_schema = types.GetStorageProfileForQueueInput,
        output_schema = types.GetStorageProfileForQueueOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles/{storageProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTask(input, options)
    return self:invokeOperation(input, {
        name = "GetTask",
        input_schema = types.GetTaskInput,
        output_schema = types.GetTaskOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorker(input, options)
    return self:invokeOperation(input, {
        name = "GetWorker",
        input_schema = types.GetWorkerInput,
        output_schema = types.GetWorkerOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableMeteredProducts(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableMeteredProducts",
        input_schema = types.ListAvailableMeteredProductsInput,
        output_schema = types.ListAvailableMeteredProductsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/metered-products",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBudgets(input, options)
    return self:invokeOperation(input, {
        name = "ListBudgets",
        input_schema = types.ListBudgetsInput,
        output_schema = types.ListBudgetsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/budgets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFarmMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListFarmMembers",
        input_schema = types.ListFarmMembersInput,
        output_schema = types.ListFarmMembersOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFarms(input, options)
    return self:invokeOperation(input, {
        name = "ListFarms",
        input_schema = types.ListFarmsInput,
        output_schema = types.ListFarmsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFleetMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListFleetMembers",
        input_schema = types.ListFleetMembersInput,
        output_schema = types.ListFleetMembersOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFleets(input, options)
    return self:invokeOperation(input, {
        name = "ListFleets",
        input_schema = types.ListFleetsInput,
        output_schema = types.ListFleetsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListJobMembers",
        input_schema = types.ListJobMembersInput,
        output_schema = types.ListJobMembersOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobParameterDefinitions(input, options)
    return self:invokeOperation(input, {
        name = "ListJobParameterDefinitions",
        input_schema = types.ListJobParameterDefinitionsInput,
        output_schema = types.ListJobParameterDefinitionsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/parameter-definitions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLicenseEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "ListLicenseEndpoints",
        input_schema = types.ListLicenseEndpointsInput,
        output_schema = types.ListLicenseEndpointsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/license-endpoints",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLimits(input, options)
    return self:invokeOperation(input, {
        name = "ListLimits",
        input_schema = types.ListLimitsInput,
        output_schema = types.ListLimitsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/limits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMeteredProducts(input, options)
    return self:invokeOperation(input, {
        name = "ListMeteredProducts",
        input_schema = types.ListMeteredProductsInput,
        output_schema = types.ListMeteredProductsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMonitors(input, options)
    return self:invokeOperation(input, {
        name = "ListMonitors",
        input_schema = types.ListMonitorsInput,
        output_schema = types.ListMonitorsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/monitors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueEnvironments(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueEnvironments",
        input_schema = types.ListQueueEnvironmentsInput,
        output_schema = types.ListQueueEnvironmentsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueFleetAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueFleetAssociations",
        input_schema = types.ListQueueFleetAssociationsInput,
        output_schema = types.ListQueueFleetAssociationsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queue-fleet-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueLimitAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueLimitAssociations",
        input_schema = types.ListQueueLimitAssociationsInput,
        output_schema = types.ListQueueLimitAssociationsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queue-limit-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueMembers(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueMembers",
        input_schema = types.ListQueueMembersInput,
        output_schema = types.ListQueueMembersOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/members",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListQueues",
        input_schema = types.ListQueuesInput,
        output_schema = types.ListQueuesOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessionActions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionActions",
        input_schema = types.ListSessionActionsInput,
        output_schema = types.ListSessionActionsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/session-actions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessions(input, options)
    return self:invokeOperation(input, {
        name = "ListSessions",
        input_schema = types.ListSessionsInput,
        output_schema = types.ListSessionsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessionsForWorker(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionsForWorker",
        input_schema = types.ListSessionsForWorkerInput,
        output_schema = types.ListSessionsForWorkerOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStepConsumers(input, options)
    return self:invokeOperation(input, {
        name = "ListStepConsumers",
        input_schema = types.ListStepConsumersInput,
        output_schema = types.ListStepConsumersOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/consumers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStepDependencies(input, options)
    return self:invokeOperation(input, {
        name = "ListStepDependencies",
        input_schema = types.ListStepDependenciesInput,
        output_schema = types.ListStepDependenciesOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/dependencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSteps(input, options)
    return self:invokeOperation(input, {
        name = "ListSteps",
        input_schema = types.ListStepsInput,
        output_schema = types.ListStepsOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStorageProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListStorageProfiles",
        input_schema = types.ListStorageProfilesInput,
        output_schema = types.ListStorageProfilesOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/storage-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listStorageProfilesForQueue(input, options)
    return self:invokeOperation(input, {
        name = "ListStorageProfilesForQueue",
        input_schema = types.ListStorageProfilesForQueueInput,
        output_schema = types.ListStorageProfilesForQueueOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/storage-profiles",
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
        http_path = "/2023-10-12/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTasks(input, options)
    return self:invokeOperation(input, {
        name = "ListTasks",
        input_schema = types.ListTasksInput,
        output_schema = types.ListTasksOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkers(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkers",
        input_schema = types.ListWorkersInput,
        output_schema = types.ListWorkersOutput,
        http_method = "GET",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putMeteredProduct(input, options)
    return self:invokeOperation(input, {
        name = "PutMeteredProduct",
        input_schema = types.PutMeteredProductInput,
        output_schema = types.PutMeteredProductOutput,
        http_method = "PUT",
        http_path = "/2023-10-12/license-endpoints/{licenseEndpointId}/metered-products/{productId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchJobs(input, options)
    return self:invokeOperation(input, {
        name = "SearchJobs",
        input_schema = types.SearchJobsInput,
        output_schema = types.SearchJobsOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/search/jobs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchSteps(input, options)
    return self:invokeOperation(input, {
        name = "SearchSteps",
        input_schema = types.SearchStepsInput,
        output_schema = types.SearchStepsOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/search/steps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTasks(input, options)
    return self:invokeOperation(input, {
        name = "SearchTasks",
        input_schema = types.SearchTasksInput,
        output_schema = types.SearchTasksOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/search/tasks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchWorkers(input, options)
    return self:invokeOperation(input, {
        name = "SearchWorkers",
        input_schema = types.SearchWorkersInput,
        output_schema = types.SearchWorkersOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/search/workers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSessionsStatisticsAggregation(input, options)
    return self:invokeOperation(input, {
        name = "StartSessionsStatisticsAggregation",
        input_schema = types.StartSessionsStatisticsAggregationInput,
        output_schema = types.StartSessionsStatisticsAggregationOutput,
        http_method = "POST",
        http_path = "/2023-10-12/farms/{farmId}/sessions-statistics-aggregation",
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
        http_path = "/2023-10-12/tags/{resourceArn}",
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
        http_path = "/2023-10-12/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBudget(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBudget",
        input_schema = types.UpdateBudgetInput,
        output_schema = types.UpdateBudgetOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/budgets/{budgetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFarm(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFarm",
        input_schema = types.UpdateFarmInput,
        output_schema = types.UpdateFarmOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateFleet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateFleet",
        input_schema = types.UpdateFleetInput,
        output_schema = types.UpdateFleetOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJob",
        input_schema = types.UpdateJobInput,
        output_schema = types.UpdateJobOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLimit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLimit",
        input_schema = types.UpdateLimitInput,
        output_schema = types.UpdateLimitOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/limits/{limitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMonitor(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitor",
        input_schema = types.UpdateMonitorInput,
        output_schema = types.UpdateMonitorOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/monitors/{monitorId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMonitorSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMonitorSettings",
        input_schema = types.UpdateMonitorSettingsInput,
        output_schema = types.UpdateMonitorSettingsOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/monitors/{monitorId}/settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueue",
        input_schema = types.UpdateQueueInput,
        output_schema = types.UpdateQueueOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueEnvironment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueEnvironment",
        input_schema = types.UpdateQueueEnvironmentInput,
        output_schema = types.UpdateQueueEnvironmentOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/environments/{queueEnvironmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueFleetAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueFleetAssociation",
        input_schema = types.UpdateQueueFleetAssociationInput,
        output_schema = types.UpdateQueueFleetAssociationOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queue-fleet-associations/{queueId}/{fleetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueLimitAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueLimitAssociation",
        input_schema = types.UpdateQueueLimitAssociationInput,
        output_schema = types.UpdateQueueLimitAssociationOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queue-limit-associations/{queueId}/{limitId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSession(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSession",
        input_schema = types.UpdateSessionInput,
        output_schema = types.UpdateSessionOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/sessions/{sessionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStep(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStep",
        input_schema = types.UpdateStepInput,
        output_schema = types.UpdateStepOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateStorageProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateStorageProfile",
        input_schema = types.UpdateStorageProfileInput,
        output_schema = types.UpdateStorageProfileOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/storage-profiles/{storageProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTask(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTask",
        input_schema = types.UpdateTaskInput,
        output_schema = types.UpdateTaskOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/queues/{queueId}/jobs/{jobId}/steps/{stepId}/tasks/{taskId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorker(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorker",
        input_schema = types.UpdateWorkerInput,
        output_schema = types.UpdateWorkerOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkerSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkerSchedule",
        input_schema = types.UpdateWorkerScheduleInput,
        output_schema = types.UpdateWorkerScheduleOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
