local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("deadline.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("deadline.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AssociateMemberToFarmInput,
        output_schema = schemas.AssociateMemberToFarmOutput,
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
        input_schema = schemas.AssociateMemberToFleetInput,
        output_schema = schemas.AssociateMemberToFleetOutput,
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
        input_schema = schemas.AssociateMemberToJobInput,
        output_schema = schemas.AssociateMemberToJobOutput,
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
        input_schema = schemas.AssociateMemberToQueueInput,
        output_schema = schemas.AssociateMemberToQueueOutput,
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
        input_schema = schemas.AssumeFleetRoleForReadInput,
        output_schema = schemas.AssumeFleetRoleForReadOutput,
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
        input_schema = schemas.AssumeFleetRoleForWorkerInput,
        output_schema = schemas.AssumeFleetRoleForWorkerOutput,
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
        input_schema = schemas.AssumeQueueRoleForReadInput,
        output_schema = schemas.AssumeQueueRoleForReadOutput,
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
        input_schema = schemas.AssumeQueueRoleForUserInput,
        output_schema = schemas.AssumeQueueRoleForUserOutput,
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
        input_schema = schemas.AssumeQueueRoleForWorkerInput,
        output_schema = schemas.AssumeQueueRoleForWorkerOutput,
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
        input_schema = schemas.BatchGetJobInput,
        output_schema = schemas.BatchGetJobOutput,
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
        input_schema = schemas.BatchGetJobEntityInput,
        output_schema = schemas.BatchGetJobEntityOutput,
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
        input_schema = schemas.BatchGetSessionInput,
        output_schema = schemas.BatchGetSessionOutput,
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
        input_schema = schemas.BatchGetSessionActionInput,
        output_schema = schemas.BatchGetSessionActionOutput,
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
        input_schema = schemas.BatchGetStepInput,
        output_schema = schemas.BatchGetStepOutput,
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
        input_schema = schemas.BatchGetTaskInput,
        output_schema = schemas.BatchGetTaskOutput,
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
        input_schema = schemas.BatchGetWorkerInput,
        output_schema = schemas.BatchGetWorkerOutput,
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
        input_schema = schemas.BatchUpdateJobInput,
        output_schema = schemas.BatchUpdateJobOutput,
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
        input_schema = schemas.BatchUpdateTaskInput,
        output_schema = schemas.BatchUpdateTaskOutput,
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
        input_schema = schemas.CopyJobTemplateInput,
        output_schema = schemas.CopyJobTemplateOutput,
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
        input_schema = schemas.CreateBudgetInput,
        output_schema = schemas.CreateBudgetOutput,
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
        input_schema = schemas.CreateFarmInput,
        output_schema = schemas.CreateFarmOutput,
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
        input_schema = schemas.CreateFleetInput,
        output_schema = schemas.CreateFleetOutput,
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
        input_schema = schemas.CreateJobInput,
        output_schema = schemas.CreateJobOutput,
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
        input_schema = schemas.CreateLicenseEndpointInput,
        output_schema = schemas.CreateLicenseEndpointOutput,
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
        input_schema = schemas.CreateLimitInput,
        output_schema = schemas.CreateLimitOutput,
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
        input_schema = schemas.CreateMonitorInput,
        output_schema = schemas.CreateMonitorOutput,
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
        input_schema = schemas.CreateQueueInput,
        output_schema = schemas.CreateQueueOutput,
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
        input_schema = schemas.CreateQueueEnvironmentInput,
        output_schema = schemas.CreateQueueEnvironmentOutput,
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
        input_schema = schemas.CreateQueueFleetAssociationInput,
        output_schema = schemas.CreateQueueFleetAssociationOutput,
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
        input_schema = schemas.CreateQueueLimitAssociationInput,
        output_schema = schemas.CreateQueueLimitAssociationOutput,
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
        input_schema = schemas.CreateStorageProfileInput,
        output_schema = schemas.CreateStorageProfileOutput,
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
        input_schema = schemas.CreateWorkerInput,
        output_schema = schemas.CreateWorkerOutput,
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
        input_schema = schemas.DeleteBudgetInput,
        output_schema = schemas.DeleteBudgetOutput,
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
        input_schema = schemas.DeleteFarmInput,
        output_schema = schemas.DeleteFarmOutput,
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
        input_schema = schemas.DeleteFleetInput,
        output_schema = schemas.DeleteFleetOutput,
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
        input_schema = schemas.DeleteLicenseEndpointInput,
        output_schema = schemas.DeleteLicenseEndpointOutput,
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
        input_schema = schemas.DeleteLimitInput,
        output_schema = schemas.DeleteLimitOutput,
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
        input_schema = schemas.DeleteMeteredProductInput,
        output_schema = schemas.DeleteMeteredProductOutput,
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
        input_schema = schemas.DeleteMonitorInput,
        output_schema = schemas.DeleteMonitorOutput,
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
        input_schema = schemas.DeleteQueueInput,
        output_schema = schemas.DeleteQueueOutput,
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
        input_schema = schemas.DeleteQueueEnvironmentInput,
        output_schema = schemas.DeleteQueueEnvironmentOutput,
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
        input_schema = schemas.DeleteQueueFleetAssociationInput,
        output_schema = schemas.DeleteQueueFleetAssociationOutput,
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
        input_schema = schemas.DeleteQueueLimitAssociationInput,
        output_schema = schemas.DeleteQueueLimitAssociationOutput,
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
        input_schema = schemas.DeleteStorageProfileInput,
        output_schema = schemas.DeleteStorageProfileOutput,
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
        input_schema = schemas.DeleteWorkerInput,
        output_schema = schemas.DeleteWorkerOutput,
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
        input_schema = schemas.DisassociateMemberFromFarmInput,
        output_schema = schemas.DisassociateMemberFromFarmOutput,
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
        input_schema = schemas.DisassociateMemberFromFleetInput,
        output_schema = schemas.DisassociateMemberFromFleetOutput,
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
        input_schema = schemas.DisassociateMemberFromJobInput,
        output_schema = schemas.DisassociateMemberFromJobOutput,
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
        input_schema = schemas.DisassociateMemberFromQueueInput,
        output_schema = schemas.DisassociateMemberFromQueueOutput,
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
        input_schema = schemas.GetBudgetInput,
        output_schema = schemas.GetBudgetOutput,
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
        input_schema = schemas.GetFarmInput,
        output_schema = schemas.GetFarmOutput,
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
        input_schema = schemas.GetFleetInput,
        output_schema = schemas.GetFleetOutput,
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
        input_schema = schemas.GetJobInput,
        output_schema = schemas.GetJobOutput,
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
        input_schema = schemas.GetLicenseEndpointInput,
        output_schema = schemas.GetLicenseEndpointOutput,
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
        input_schema = schemas.GetLimitInput,
        output_schema = schemas.GetLimitOutput,
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
        input_schema = schemas.GetMonitorInput,
        output_schema = schemas.GetMonitorOutput,
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
        input_schema = schemas.GetMonitorSettingsInput,
        output_schema = schemas.GetMonitorSettingsOutput,
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
        input_schema = schemas.GetQueueInput,
        output_schema = schemas.GetQueueOutput,
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
        input_schema = schemas.GetQueueEnvironmentInput,
        output_schema = schemas.GetQueueEnvironmentOutput,
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
        input_schema = schemas.GetQueueFleetAssociationInput,
        output_schema = schemas.GetQueueFleetAssociationOutput,
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
        input_schema = schemas.GetQueueLimitAssociationInput,
        output_schema = schemas.GetQueueLimitAssociationOutput,
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
        input_schema = schemas.GetSessionInput,
        output_schema = schemas.GetSessionOutput,
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
        input_schema = schemas.GetSessionActionInput,
        output_schema = schemas.GetSessionActionOutput,
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
        input_schema = schemas.GetSessionsStatisticsAggregationInput,
        output_schema = schemas.GetSessionsStatisticsAggregationOutput,
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
        input_schema = schemas.GetStepInput,
        output_schema = schemas.GetStepOutput,
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
        input_schema = schemas.GetStorageProfileInput,
        output_schema = schemas.GetStorageProfileOutput,
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
        input_schema = schemas.GetStorageProfileForQueueInput,
        output_schema = schemas.GetStorageProfileForQueueOutput,
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
        input_schema = schemas.GetTaskInput,
        output_schema = schemas.GetTaskOutput,
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
        input_schema = schemas.GetWorkerInput,
        output_schema = schemas.GetWorkerOutput,
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
        input_schema = schemas.ListAvailableMeteredProductsInput,
        output_schema = schemas.ListAvailableMeteredProductsOutput,
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
        input_schema = schemas.ListBudgetsInput,
        output_schema = schemas.ListBudgetsOutput,
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
        input_schema = schemas.ListFarmMembersInput,
        output_schema = schemas.ListFarmMembersOutput,
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
        input_schema = schemas.ListFarmsInput,
        output_schema = schemas.ListFarmsOutput,
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
        input_schema = schemas.ListFleetMembersInput,
        output_schema = schemas.ListFleetMembersOutput,
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
        input_schema = schemas.ListFleetsInput,
        output_schema = schemas.ListFleetsOutput,
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
        input_schema = schemas.ListJobMembersInput,
        output_schema = schemas.ListJobMembersOutput,
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
        input_schema = schemas.ListJobParameterDefinitionsInput,
        output_schema = schemas.ListJobParameterDefinitionsOutput,
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
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
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
        input_schema = schemas.ListLicenseEndpointsInput,
        output_schema = schemas.ListLicenseEndpointsOutput,
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
        input_schema = schemas.ListLimitsInput,
        output_schema = schemas.ListLimitsOutput,
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
        input_schema = schemas.ListMeteredProductsInput,
        output_schema = schemas.ListMeteredProductsOutput,
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
        input_schema = schemas.ListMonitorsInput,
        output_schema = schemas.ListMonitorsOutput,
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
        input_schema = schemas.ListQueueEnvironmentsInput,
        output_schema = schemas.ListQueueEnvironmentsOutput,
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
        input_schema = schemas.ListQueueFleetAssociationsInput,
        output_schema = schemas.ListQueueFleetAssociationsOutput,
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
        input_schema = schemas.ListQueueLimitAssociationsInput,
        output_schema = schemas.ListQueueLimitAssociationsOutput,
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
        input_schema = schemas.ListQueueMembersInput,
        output_schema = schemas.ListQueueMembersOutput,
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
        input_schema = schemas.ListQueuesInput,
        output_schema = schemas.ListQueuesOutput,
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
        input_schema = schemas.ListSessionActionsInput,
        output_schema = schemas.ListSessionActionsOutput,
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
        input_schema = schemas.ListSessionsInput,
        output_schema = schemas.ListSessionsOutput,
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
        input_schema = schemas.ListSessionsForWorkerInput,
        output_schema = schemas.ListSessionsForWorkerOutput,
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
        input_schema = schemas.ListStepConsumersInput,
        output_schema = schemas.ListStepConsumersOutput,
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
        input_schema = schemas.ListStepDependenciesInput,
        output_schema = schemas.ListStepDependenciesOutput,
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
        input_schema = schemas.ListStepsInput,
        output_schema = schemas.ListStepsOutput,
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
        input_schema = schemas.ListStorageProfilesInput,
        output_schema = schemas.ListStorageProfilesOutput,
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
        input_schema = schemas.ListStorageProfilesForQueueInput,
        output_schema = schemas.ListStorageProfilesForQueueOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListTasksInput,
        output_schema = schemas.ListTasksOutput,
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
        input_schema = schemas.ListWorkersInput,
        output_schema = schemas.ListWorkersOutput,
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
        input_schema = schemas.PutMeteredProductInput,
        output_schema = schemas.PutMeteredProductOutput,
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
        input_schema = schemas.SearchJobsInput,
        output_schema = schemas.SearchJobsOutput,
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
        input_schema = schemas.SearchStepsInput,
        output_schema = schemas.SearchStepsOutput,
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
        input_schema = schemas.SearchTasksInput,
        output_schema = schemas.SearchTasksOutput,
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
        input_schema = schemas.SearchWorkersInput,
        output_schema = schemas.SearchWorkersOutput,
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
        input_schema = schemas.StartSessionsStatisticsAggregationInput,
        output_schema = schemas.StartSessionsStatisticsAggregationOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
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
        input_schema = schemas.UpdateBudgetInput,
        output_schema = schemas.UpdateBudgetOutput,
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
        input_schema = schemas.UpdateFarmInput,
        output_schema = schemas.UpdateFarmOutput,
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
        input_schema = schemas.UpdateFleetInput,
        output_schema = schemas.UpdateFleetOutput,
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
        input_schema = schemas.UpdateJobInput,
        output_schema = schemas.UpdateJobOutput,
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
        input_schema = schemas.UpdateLimitInput,
        output_schema = schemas.UpdateLimitOutput,
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
        input_schema = schemas.UpdateMonitorInput,
        output_schema = schemas.UpdateMonitorOutput,
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
        input_schema = schemas.UpdateMonitorSettingsInput,
        output_schema = schemas.UpdateMonitorSettingsOutput,
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
        input_schema = schemas.UpdateQueueInput,
        output_schema = schemas.UpdateQueueOutput,
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
        input_schema = schemas.UpdateQueueEnvironmentInput,
        output_schema = schemas.UpdateQueueEnvironmentOutput,
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
        input_schema = schemas.UpdateQueueFleetAssociationInput,
        output_schema = schemas.UpdateQueueFleetAssociationOutput,
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
        input_schema = schemas.UpdateQueueLimitAssociationInput,
        output_schema = schemas.UpdateQueueLimitAssociationOutput,
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
        input_schema = schemas.UpdateSessionInput,
        output_schema = schemas.UpdateSessionOutput,
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
        input_schema = schemas.UpdateStepInput,
        output_schema = schemas.UpdateStepOutput,
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
        input_schema = schemas.UpdateStorageProfileInput,
        output_schema = schemas.UpdateStorageProfileOutput,
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
        input_schema = schemas.UpdateTaskInput,
        output_schema = schemas.UpdateTaskOutput,
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
        input_schema = schemas.UpdateWorkerInput,
        output_schema = schemas.UpdateWorkerOutput,
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
        input_schema = schemas.UpdateWorkerScheduleInput,
        output_schema = schemas.UpdateWorkerScheduleOutput,
        http_method = "PATCH",
        http_path = "/2023-10-12/farms/{farmId}/fleets/{fleetId}/workers/{workerId}/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
