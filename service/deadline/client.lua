



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("deadline.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("deadline.schemas")
local traits = require("smithy.traits")
local types = require("deadline.types")
local sdk_defaults = require("aws.sdk_defaults")

































































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "Deadline"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "deadline", signing_region = c.region } }
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

function C:associateMemberToFarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMemberToFarm, input, options)
end

function C:associateMemberToFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMemberToFleet, input, options)
end

function C:associateMemberToJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMemberToJob, input, options)
end

function C:associateMemberToQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateMemberToQueue, input, options)
end

function C:assumeFleetRoleForRead(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeFleetRoleForRead, input, options)
end

function C:assumeFleetRoleForWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeFleetRoleForWorker, input, options)
end

function C:assumeQueueRoleForRead(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeQueueRoleForRead, input, options)
end

function C:assumeQueueRoleForUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeQueueRoleForUser, input, options)
end

function C:assumeQueueRoleForWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssumeQueueRoleForWorker, input, options)
end

function C:batchGetJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetJob, input, options)
end

function C:batchGetJobEntity(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetJobEntity, input, options)
end

function C:batchGetSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSession, input, options)
end

function C:batchGetSessionAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSessionAction, input, options)
end

function C:batchGetStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetStep, input, options)
end

function C:batchGetTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetTask, input, options)
end

function C:batchGetWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetWorker, input, options)
end

function C:batchUpdateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateJob, input, options)
end

function C:batchUpdateTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchUpdateTask, input, options)
end

function C:copyJobTemplate(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyJobTemplate, input, options)
end

function C:createBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateBudget, input, options)
end

function C:createFarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFarm, input, options)
end

function C:createFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleet, input, options)
end

function C:createJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateJob, input, options)
end

function C:createLicenseEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLicenseEndpoint, input, options)
end

function C:createLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateLimit, input, options)
end

function C:createMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateMonitor, input, options)
end

function C:createQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueue, input, options)
end

function C:createQueueEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueueEnvironment, input, options)
end

function C:createQueueFleetAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueueFleetAssociation, input, options)
end

function C:createQueueLimitAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateQueueLimitAssociation, input, options)
end

function C:createStorageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStorageProfile, input, options)
end

function C:createWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorker, input, options)
end

function C:deleteBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBudget, input, options)
end

function C:deleteFarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFarm, input, options)
end

function C:deleteFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleet, input, options)
end

function C:deleteLicenseEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLicenseEndpoint, input, options)
end

function C:deleteLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteLimit, input, options)
end

function C:deleteMeteredProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMeteredProduct, input, options)
end

function C:deleteMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteMonitor, input, options)
end

function C:deleteQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueue, input, options)
end

function C:deleteQueueEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueueEnvironment, input, options)
end

function C:deleteQueueFleetAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueueFleetAssociation, input, options)
end

function C:deleteQueueLimitAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteQueueLimitAssociation, input, options)
end

function C:deleteStorageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteStorageProfile, input, options)
end

function C:deleteWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorker, input, options)
end

function C:disassociateMemberFromFarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMemberFromFarm, input, options)
end

function C:disassociateMemberFromFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMemberFromFleet, input, options)
end

function C:disassociateMemberFromJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMemberFromJob, input, options)
end

function C:disassociateMemberFromQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateMemberFromQueue, input, options)
end

function C:getBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetBudget, input, options)
end

function C:getFarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFarm, input, options)
end

function C:getFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetFleet, input, options)
end

function C:getJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetJob, input, options)
end

function C:getLicenseEndpoint(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLicenseEndpoint, input, options)
end

function C:getLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetLimit, input, options)
end

function C:getMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMonitor, input, options)
end

function C:getMonitorSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetMonitorSettings, input, options)
end

function C:getQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueue, input, options)
end

function C:getQueueEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueueEnvironment, input, options)
end

function C:getQueueFleetAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueueFleetAssociation, input, options)
end

function C:getQueueLimitAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetQueueLimitAssociation, input, options)
end

function C:getSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSession, input, options)
end

function C:getSessionAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionAction, input, options)
end

function C:getSessionsStatisticsAggregation(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSessionsStatisticsAggregation, input, options)
end

function C:getStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStep, input, options)
end

function C:getStorageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStorageProfile, input, options)
end

function C:getStorageProfileForQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetStorageProfileForQueue, input, options)
end

function C:getTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetTask, input, options)
end

function C:getWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorker, input, options)
end

function C:listAvailableMeteredProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableMeteredProducts, input, options)
end

function C:listBudgets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBudgets, input, options)
end

function C:listFarmMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFarmMembers, input, options)
end

function C:listFarms(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFarms, input, options)
end

function C:listFleetMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleetMembers, input, options)
end

function C:listFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleets, input, options)
end

function C:listJobMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobMembers, input, options)
end

function C:listJobParameterDefinitions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobParameterDefinitions, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listLicenseEndpoints(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLicenseEndpoints, input, options)
end

function C:listLimits(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListLimits, input, options)
end

function C:listMeteredProducts(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMeteredProducts, input, options)
end

function C:listMonitors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListMonitors, input, options)
end

function C:listQueueEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueEnvironments, input, options)
end

function C:listQueueFleetAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueFleetAssociations, input, options)
end

function C:listQueueLimitAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueLimitAssociations, input, options)
end

function C:listQueueMembers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueueMembers, input, options)
end

function C:listQueues(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListQueues, input, options)
end

function C:listSessionActions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessionActions, input, options)
end

function C:listSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessions, input, options)
end

function C:listSessionsForWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSessionsForWorker, input, options)
end

function C:listStepConsumers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStepConsumers, input, options)
end

function C:listStepDependencies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStepDependencies, input, options)
end

function C:listSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSteps, input, options)
end

function C:listStorageProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStorageProfiles, input, options)
end

function C:listStorageProfilesForQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListStorageProfilesForQueue, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTasks, input, options)
end

function C:listWorkers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkers, input, options)
end

function C:putMeteredProduct(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutMeteredProduct, input, options)
end

function C:searchJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchJobs, input, options)
end

function C:searchSteps(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchSteps, input, options)
end

function C:searchTasks(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchTasks, input, options)
end

function C:searchWorkers(input, options)
   return self:invokeOperation(schemas.Service, schemas.SearchWorkers, input, options)
end

function C:startSessionsStatisticsAggregation(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSessionsStatisticsAggregation, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateBudget(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateBudget, input, options)
end

function C:updateFarm(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFarm, input, options)
end

function C:updateFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleet, input, options)
end

function C:updateJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateJob, input, options)
end

function C:updateLimit(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateLimit, input, options)
end

function C:updateMonitor(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMonitor, input, options)
end

function C:updateMonitorSettings(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateMonitorSettings, input, options)
end

function C:updateQueue(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueue, input, options)
end

function C:updateQueueEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueEnvironment, input, options)
end

function C:updateQueueFleetAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueFleetAssociation, input, options)
end

function C:updateQueueLimitAssociation(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateQueueLimitAssociation, input, options)
end

function C:updateSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSession, input, options)
end

function C:updateStep(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStep, input, options)
end

function C:updateStorageProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateStorageProfile, input, options)
end

function C:updateTask(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateTask, input, options)
end

function C:updateWorker(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorker, input, options)
end

function C:updateWorkerSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkerSchedule, input, options)
end

return M
