



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codebuild.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("codebuild.schemas")
local traits = require("smithy.traits")
local types = require("codebuild.types")
local sdk_defaults = require("aws.sdk_defaults")

































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeBuild_20161006"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codebuild", signing_region = c.region } }
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

function C:batchDeleteBuilds(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteBuilds, input, options)
end

function C:batchGetBuildBatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetBuildBatches, input, options)
end

function C:batchGetBuilds(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetBuilds, input, options)
end

function C:batchGetCommandExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetCommandExecutions, input, options)
end

function C:batchGetFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetFleets, input, options)
end

function C:batchGetProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetProjects, input, options)
end

function C:batchGetReportGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetReportGroups, input, options)
end

function C:batchGetReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetReports, input, options)
end

function C:batchGetSandboxes(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchGetSandboxes, input, options)
end

function C:createFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateFleet, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createReportGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateReportGroup, input, options)
end

function C:createWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebhook, input, options)
end

function C:deleteBuildBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteBuildBatch, input, options)
end

function C:deleteFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteFleet, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteReport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReport, input, options)
end

function C:deleteReportGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteReportGroup, input, options)
end

function C:deleteResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteResourcePolicy, input, options)
end

function C:deleteSourceCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSourceCredentials, input, options)
end

function C:deleteWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebhook, input, options)
end

function C:describeCodeCoverages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCodeCoverages, input, options)
end

function C:describeTestCases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTestCases, input, options)
end

function C:getReportGroupTrend(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetReportGroupTrend, input, options)
end

function C:getResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetResourcePolicy, input, options)
end

function C:importSourceCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportSourceCredentials, input, options)
end

function C:invalidateProjectCache(input, options)
   return self:invokeOperation(schemas.Service, schemas.InvalidateProjectCache, input, options)
end

function C:listBuildBatches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuildBatches, input, options)
end

function C:listBuildBatchesForProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuildBatchesForProject, input, options)
end

function C:listBuilds(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuilds, input, options)
end

function C:listBuildsForProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListBuildsForProject, input, options)
end

function C:listCommandExecutionsForSandbox(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCommandExecutionsForSandbox, input, options)
end

function C:listCuratedEnvironmentImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCuratedEnvironmentImages, input, options)
end

function C:listFleets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFleets, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listReportGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReportGroups, input, options)
end

function C:listReports(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReports, input, options)
end

function C:listReportsForReportGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListReportsForReportGroup, input, options)
end

function C:listSandboxes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSandboxes, input, options)
end

function C:listSandboxesForProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSandboxesForProject, input, options)
end

function C:listSharedProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSharedProjects, input, options)
end

function C:listSharedReportGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSharedReportGroups, input, options)
end

function C:listSourceCredentials(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceCredentials, input, options)
end

function C:putResourcePolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.PutResourcePolicy, input, options)
end

function C:retryBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryBuild, input, options)
end

function C:retryBuildBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.RetryBuildBatch, input, options)
end

function C:startBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBuild, input, options)
end

function C:startBuildBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartBuildBatch, input, options)
end

function C:startCommandExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartCommandExecution, input, options)
end

function C:startSandbox(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSandbox, input, options)
end

function C:startSandboxConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartSandboxConnection, input, options)
end

function C:stopBuild(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBuild, input, options)
end

function C:stopBuildBatch(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopBuildBatch, input, options)
end

function C:stopSandbox(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopSandbox, input, options)
end

function C:updateFleet(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateFleet, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

function C:updateProjectVisibility(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProjectVisibility, input, options)
end

function C:updateReportGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateReportGroup, input, options)
end

function C:updateWebhook(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebhook, input, options)
end

return M
