



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("databrew.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("databrew.schemas")
local traits = require("smithy.traits")
local types = require("databrew.types")
local sdk_defaults = require("aws.sdk_defaults")


















































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "AWSGlueDataBrew"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "databrew", signing_region = c.region } }
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

function C:batchDeleteRecipeVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.BatchDeleteRecipeVersion, input, options)
end

function C:createDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDataset, input, options)
end

function C:createProfileJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfileJob, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecipe, input, options)
end

function C:createRecipeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRecipeJob, input, options)
end

function C:createRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateRuleset, input, options)
end

function C:createSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSchedule, input, options)
end

function C:deleteDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDataset, input, options)
end

function C:deleteJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteJob, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteRecipeVersion(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRecipeVersion, input, options)
end

function C:deleteRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteRuleset, input, options)
end

function C:deleteSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSchedule, input, options)
end

function C:describeDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeDataset, input, options)
end

function C:describeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJob, input, options)
end

function C:describeJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeJobRun, input, options)
end

function C:describeProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProject, input, options)
end

function C:describeRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRecipe, input, options)
end

function C:describeRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeRuleset, input, options)
end

function C:describeSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSchedule, input, options)
end

function C:listDatasets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDatasets, input, options)
end

function C:listJobRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobRuns, input, options)
end

function C:listJobs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListJobs, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listRecipes(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecipes, input, options)
end

function C:listRecipeVersions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRecipeVersions, input, options)
end

function C:listRulesets(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListRulesets, input, options)
end

function C:listSchedules(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSchedules, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:publishRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.PublishRecipe, input, options)
end

function C:sendProjectSessionAction(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendProjectSessionAction, input, options)
end

function C:startJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartJobRun, input, options)
end

function C:startProjectSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartProjectSession, input, options)
end

function C:stopJobRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopJobRun, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateDataset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDataset, input, options)
end

function C:updateProfileJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfileJob, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

function C:updateRecipe(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecipe, input, options)
end

function C:updateRecipeJob(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRecipeJob, input, options)
end

function C:updateRuleset(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRuleset, input, options)
end

function C:updateSchedule(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSchedule, input, options)
end

return M
