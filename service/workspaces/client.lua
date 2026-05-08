



local async = require("smithy.async")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("workspaces.endpoint_rules")
local awsjson_protocol = require("smithy.protocol.awsjson")
local schemas = require("workspaces.schemas")
local traits = require("smithy.traits")
local types = require("workspaces.types")
local sdk_defaults = require("aws.sdk_defaults")

































































































local M = {}



local Client_mt = { __index = {} }
local C = Client_mt.__index
C.invokeOperation = base_client.invokeOperation

function M.new(cfg)
   local c = cfg or {}
   c.service_id = "WorkspacesService"
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
               options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workspaces", signing_region = c.region } }
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

function C:acceptAccountLinkInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.AcceptAccountLinkInvitation, input, options)
end

function C:associateConnectionAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateConnectionAlias, input, options)
end

function C:associateIpGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateIpGroups, input, options)
end

function C:associateWorkspaceApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.AssociateWorkspaceApplication, input, options)
end

function C:authorizeIpRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.AuthorizeIpRules, input, options)
end

function C:copyWorkspaceImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CopyWorkspaceImage, input, options)
end

function C:createAccountLinkInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateAccountLinkInvitation, input, options)
end

function C:createConnectClientAddIn(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectClientAddIn, input, options)
end

function C:createConnectionAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateConnectionAlias, input, options)
end

function C:createIpGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateIpGroup, input, options)
end

function C:createStandbyWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateStandbyWorkspaces, input, options)
end

function C:createTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateTags, input, options)
end

function C:createUpdatedWorkspaceImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateUpdatedWorkspaceImage, input, options)
end

function C:createWorkspaceBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaceBundle, input, options)
end

function C:createWorkspaceImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaceImage, input, options)
end

function C:createWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspaces, input, options)
end

function C:createWorkspacesPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.CreateWorkspacesPool, input, options)
end

function C:deleteAccountLinkInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteAccountLinkInvitation, input, options)
end

function C:deleteClientBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteClientBranding, input, options)
end

function C:deleteConnectClientAddIn(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectClientAddIn, input, options)
end

function C:deleteConnectionAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteConnectionAlias, input, options)
end

function C:deleteIpGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteIpGroup, input, options)
end

function C:deleteTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteTags, input, options)
end

function C:deleteWorkspaceBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceBundle, input, options)
end

function C:deleteWorkspaceImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeleteWorkspaceImage, input, options)
end

function C:deployWorkspaceApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeployWorkspaceApplications, input, options)
end

function C:deregisterWorkspaceDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.DeregisterWorkspaceDirectory, input, options)
end

function C:describeAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccount, input, options)
end

function C:describeAccountModifications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeAccountModifications, input, options)
end

function C:describeApplicationAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplicationAssociations, input, options)
end

function C:describeApplications(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeApplications, input, options)
end

function C:describeBundleAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeBundleAssociations, input, options)
end

function C:describeClientBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientBranding, input, options)
end

function C:describeClientProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeClientProperties, input, options)
end

function C:describeConnectClientAddIns(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectClientAddIns, input, options)
end

function C:describeConnectionAliases(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectionAliases, input, options)
end

function C:describeConnectionAliasPermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeConnectionAliasPermissions, input, options)
end

function C:describeCustomWorkspaceImageImport(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeCustomWorkspaceImageImport, input, options)
end

function C:describeImageAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeImageAssociations, input, options)
end

function C:describeIpGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeIpGroups, input, options)
end

function C:describeTags(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeTags, input, options)
end

function C:describeWorkspaceAssociations(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceAssociations, input, options)
end

function C:describeWorkspaceBundles(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceBundles, input, options)
end

function C:describeWorkspaceDirectories(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceDirectories, input, options)
end

function C:describeWorkspaceImagePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceImagePermissions, input, options)
end

function C:describeWorkspaceImages(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceImages, input, options)
end

function C:describeWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaces, input, options)
end

function C:describeWorkspacesConnectionStatus(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspacesConnectionStatus, input, options)
end

function C:describeWorkspaceSnapshots(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspaceSnapshots, input, options)
end

function C:describeWorkspacesPools(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspacesPools, input, options)
end

function C:describeWorkspacesPoolSessions(input, options)
   return self:invokeOperation(schemas.Service, schemas.DescribeWorkspacesPoolSessions, input, options)
end

function C:disassociateConnectionAlias(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateConnectionAlias, input, options)
end

function C:disassociateIpGroups(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateIpGroups, input, options)
end

function C:disassociateWorkspaceApplication(input, options)
   return self:invokeOperation(schemas.Service, schemas.DisassociateWorkspaceApplication, input, options)
end

function C:getAccountLink(input, options)
   return self:invokeOperation(schemas.Service, schemas.GetAccountLink, input, options)
end

function C:importClientBranding(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportClientBranding, input, options)
end

function C:importCustomWorkspaceImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportCustomWorkspaceImage, input, options)
end

function C:importWorkspaceImage(input, options)
   return self:invokeOperation(schemas.Service, schemas.ImportWorkspaceImage, input, options)
end

function C:listAccountLinks(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAccountLinks, input, options)
end

function C:listAvailableManagementCidrRanges(input, options)
   return self:invokeOperation(schemas.Service, schemas.ListAvailableManagementCidrRanges, input, options)
end

function C:migrateWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.MigrateWorkspace, input, options)
end

function C:modifyAccount(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyAccount, input, options)
end

function C:modifyCertificateBasedAuthProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyCertificateBasedAuthProperties, input, options)
end

function C:modifyClientProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyClientProperties, input, options)
end

function C:modifyEndpointEncryptionMode(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyEndpointEncryptionMode, input, options)
end

function C:modifySamlProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySamlProperties, input, options)
end

function C:modifySelfservicePermissions(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifySelfservicePermissions, input, options)
end

function C:modifyStreamingProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyStreamingProperties, input, options)
end

function C:modifyWorkspaceAccessProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyWorkspaceAccessProperties, input, options)
end

function C:modifyWorkspaceCreationProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyWorkspaceCreationProperties, input, options)
end

function C:modifyWorkspaceProperties(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyWorkspaceProperties, input, options)
end

function C:modifyWorkspaceState(input, options)
   return self:invokeOperation(schemas.Service, schemas.ModifyWorkspaceState, input, options)
end

function C:rebootWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebootWorkspaces, input, options)
end

function C:rebuildWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.RebuildWorkspaces, input, options)
end

function C:registerWorkspaceDirectory(input, options)
   return self:invokeOperation(schemas.Service, schemas.RegisterWorkspaceDirectory, input, options)
end

function C:rejectAccountLinkInvitation(input, options)
   return self:invokeOperation(schemas.Service, schemas.RejectAccountLinkInvitation, input, options)
end

function C:restoreWorkspace(input, options)
   return self:invokeOperation(schemas.Service, schemas.RestoreWorkspace, input, options)
end

function C:revokeIpRules(input, options)
   return self:invokeOperation(schemas.Service, schemas.RevokeIpRules, input, options)
end

function C:startWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWorkspaces, input, options)
end

function C:startWorkspacesPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.StartWorkspacesPool, input, options)
end

function C:stopWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopWorkspaces, input, options)
end

function C:stopWorkspacesPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.StopWorkspacesPool, input, options)
end

function C:terminateWorkspaces(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateWorkspaces, input, options)
end

function C:terminateWorkspacesPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateWorkspacesPool, input, options)
end

function C:terminateWorkspacesPoolSession(input, options)
   return self:invokeOperation(schemas.Service, schemas.TerminateWorkspacesPoolSession, input, options)
end

function C:updateConnectClientAddIn(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectClientAddIn, input, options)
end

function C:updateConnectionAliasPermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateConnectionAliasPermission, input, options)
end

function C:updateRulesOfIpGroup(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateRulesOfIpGroup, input, options)
end

function C:updateWorkspaceBundle(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceBundle, input, options)
end

function C:updateWorkspaceImagePermission(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspaceImagePermission, input, options)
end

function C:updateWorkspacesPool(input, options)
   return self:invokeOperation(schemas.Service, schemas.UpdateWorkspacesPool, input, options)
end

return M
