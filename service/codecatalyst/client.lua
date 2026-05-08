



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("codecatalyst.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("codecatalyst.schemas")
local traits = require("smithy.traits")
local types = require("codecatalyst.types")
local sdk_defaults = require("aws.sdk_defaults")












































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "CodeCatalyst"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "codecatalyst", signing_region = c.region } }
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

function C:createAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccessToken, input, options)
end

function C:createDevEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateDevEnvironment, input, options)
end

function C:createProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProject, input, options)
end

function C:createSourceRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSourceRepository, input, options)
end

function C:createSourceRepositoryBranch(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateSourceRepositoryBranch, input, options)
end

function C:deleteAccessToken(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccessToken, input, options)
end

function C:deleteDevEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteDevEnvironment, input, options)
end

function C:deleteProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProject, input, options)
end

function C:deleteSourceRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSourceRepository, input, options)
end

function C:deleteSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSpace, input, options)
end

function C:getDevEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetDevEnvironment, input, options)
end

function C:getProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetProject, input, options)
end

function C:getSourceRepository(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSourceRepository, input, options)
end

function C:getSourceRepositoryCloneUrls(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSourceRepositoryCloneUrls, input, options)
end

function C:getSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSpace, input, options)
end

function C:getSubscription(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetSubscription, input, options)
end

function C:getUserDetails(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetUserDetails, input, options)
end

function C:getWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflow, input, options)
end

function C:getWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetWorkflowRun, input, options)
end

function C:listAccessTokens(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccessTokens, input, options)
end

function C:listDevEnvironments(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevEnvironments, input, options)
end

function C:listDevEnvironmentSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListDevEnvironmentSessions, input, options)
end

function C:listEventLogs(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListEventLogs, input, options)
end

function C:listProjects(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProjects, input, options)
end

function C:listSourceRepositories(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceRepositories, input, options)
end

function C:listSourceRepositoryBranches(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSourceRepositoryBranches, input, options)
end

function C:listSpaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSpaces, input, options)
end

function C:listWorkflowRuns(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflowRuns, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:startDevEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDevEnvironment, input, options)
end

function C:startDevEnvironmentSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDevEnvironmentSession, input, options)
end

function C:startWorkflowRun(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWorkflowRun, input, options)
end

function C:stopDevEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDevEnvironment, input, options)
end

function C:stopDevEnvironmentSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopDevEnvironmentSession, input, options)
end

function C:updateDevEnvironment(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateDevEnvironment, input, options)
end

function C:updateProject(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProject, input, options)
end

function C:updateSpace(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateSpace, input, options)
end

function C:verifySession(input, options)
   return self:invokeOperation(schemas.Service, schemas.VerifySession, input, options)
end

return M
