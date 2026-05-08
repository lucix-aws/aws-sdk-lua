



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("transfer.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("transfer.schemas")
local traits = require("smithy.traits")
local types = require("transfer.types")
local sdk_defaults = require("aws.sdk_defaults")













































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "TransferService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "transfer", signing_region = c.region } }
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

function C:createAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccess, input, options)
end

function C:createAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAgreement, input, options)
end

function C:createConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnector, input, options)
end

function C:createProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateProfile, input, options)
end

function C:createServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateServer, input, options)
end

function C:createUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUser, input, options)
end

function C:createWebApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWebApp, input, options)
end

function C:createWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkflow, input, options)
end

function C:deleteAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccess, input, options)
end

function C:deleteAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAgreement, input, options)
end

function C:deleteCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteCertificate, input, options)
end

function C:deleteConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnector, input, options)
end

function C:deleteHostKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteHostKey, input, options)
end

function C:deleteProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteProfile, input, options)
end

function C:deleteServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteServer, input, options)
end

function C:deleteSshPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteSshPublicKey, input, options)
end

function C:deleteUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteUser, input, options)
end

function C:deleteWebApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebApp, input, options)
end

function C:deleteWebAppCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWebAppCustomization, input, options)
end

function C:deleteWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkflow, input, options)
end

function C:describeAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccess, input, options)
end

function C:describeAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAgreement, input, options)
end

function C:describeCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCertificate, input, options)
end

function C:describeConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnector, input, options)
end

function C:describeExecution(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeExecution, input, options)
end

function C:describeHostKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeHostKey, input, options)
end

function C:describeProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeProfile, input, options)
end

function C:describeSecurityPolicy(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeSecurityPolicy, input, options)
end

function C:describeServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeServer, input, options)
end

function C:describeUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeUser, input, options)
end

function C:describeWebApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWebApp, input, options)
end

function C:describeWebAppCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWebAppCustomization, input, options)
end

function C:describeWorkflow(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkflow, input, options)
end

function C:importCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCertificate, input, options)
end

function C:importHostKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportHostKey, input, options)
end

function C:importSshPublicKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportSshPublicKey, input, options)
end

function C:listAccesses(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccesses, input, options)
end

function C:listAgreements(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAgreements, input, options)
end

function C:listCertificates(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListCertificates, input, options)
end

function C:listConnectors(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListConnectors, input, options)
end

function C:listExecutions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListExecutions, input, options)
end

function C:listFileTransferResults(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListFileTransferResults, input, options)
end

function C:listHostKeys(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListHostKeys, input, options)
end

function C:listProfiles(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListProfiles, input, options)
end

function C:listSecurityPolicies(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListSecurityPolicies, input, options)
end

function C:listServers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListServers, input, options)
end

function C:listTagsForResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListTagsForResource, input, options)
end

function C:listUsers(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListUsers, input, options)
end

function C:listWebApps(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWebApps, input, options)
end

function C:listWorkflows(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListWorkflows, input, options)
end

function C:sendWorkflowStepState(input, options)
   return self:invokeOperation(schemas.Service, schemas.SendWorkflowStepState, input, options)
end

function C:startDirectoryListing(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartDirectoryListing, input, options)
end

function C:startFileTransfer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartFileTransfer, input, options)
end

function C:startRemoteDelete(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRemoteDelete, input, options)
end

function C:startRemoteMove(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartRemoteMove, input, options)
end

function C:startServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartServer, input, options)
end

function C:stopServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopServer, input, options)
end

function C:tagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.TagResource, input, options)
end

function C:testConnection(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestConnection, input, options)
end

function C:testIdentityProvider(input, options)
   return self:invokeOperation(schemas.Service, schemas.TestIdentityProvider, input, options)
end

function C:untagResource(input, options)
   return self:invokeOperation(schemas.Service, schemas.UntagResource, input, options)
end

function C:updateAccess(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAccess, input, options)
end

function C:updateAgreement(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateAgreement, input, options)
end

function C:updateCertificate(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateCertificate, input, options)
end

function C:updateConnector(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnector, input, options)
end

function C:updateHostKey(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateHostKey, input, options)
end

function C:updateProfile(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateProfile, input, options)
end

function C:updateServer(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateServer, input, options)
end

function C:updateUser(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateUser, input, options)
end

function C:updateWebApp(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebApp, input, options)
end

function C:updateWebAppCustomization(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWebAppCustomization, input, options)
end

return M
