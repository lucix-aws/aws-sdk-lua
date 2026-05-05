local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workspaces.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("workspaces.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WorkspacesService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "workspaces", signing_region = cfg.region } }
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

function Client:acceptAccountLinkInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptAccountLinkInvitation",
        input_schema = types.AcceptAccountLinkInvitationInput,
        output_schema = types.AcceptAccountLinkInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateConnectionAlias(input, options)
    return self:invokeOperation(input, {
        name = "AssociateConnectionAlias",
        input_schema = types.AssociateConnectionAliasInput,
        output_schema = types.AssociateConnectionAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateIpGroups(input, options)
    return self:invokeOperation(input, {
        name = "AssociateIpGroups",
        input_schema = types.AssociateIpGroupsInput,
        output_schema = types.AssociateIpGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWorkspaceApplication(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWorkspaceApplication",
        input_schema = types.AssociateWorkspaceApplicationInput,
        output_schema = types.AssociateWorkspaceApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeIpRules(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeIpRules",
        input_schema = types.AuthorizeIpRulesInput,
        output_schema = types.AuthorizeIpRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyWorkspaceImage(input, options)
    return self:invokeOperation(input, {
        name = "CopyWorkspaceImage",
        input_schema = types.CopyWorkspaceImageInput,
        output_schema = types.CopyWorkspaceImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccountLinkInvitation(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccountLinkInvitation",
        input_schema = types.CreateAccountLinkInvitationInput,
        output_schema = types.CreateAccountLinkInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectClientAddIn(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectClientAddIn",
        input_schema = types.CreateConnectClientAddInInput,
        output_schema = types.CreateConnectClientAddInOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnectionAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnectionAlias",
        input_schema = types.CreateConnectionAliasInput,
        output_schema = types.CreateConnectionAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIpGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateIpGroup",
        input_schema = types.CreateIpGroupInput,
        output_schema = types.CreateIpGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createStandbyWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "CreateStandbyWorkspaces",
        input_schema = types.CreateStandbyWorkspacesInput,
        output_schema = types.CreateStandbyWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUpdatedWorkspaceImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateUpdatedWorkspaceImage",
        input_schema = types.CreateUpdatedWorkspaceImageInput,
        output_schema = types.CreateUpdatedWorkspaceImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspaceBundle(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaceBundle",
        input_schema = types.CreateWorkspaceBundleInput,
        output_schema = types.CreateWorkspaceBundleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspaceImage(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaceImage",
        input_schema = types.CreateWorkspaceImageInput,
        output_schema = types.CreateWorkspaceImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspaces",
        input_schema = types.CreateWorkspacesInput,
        output_schema = types.CreateWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspacesPool(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspacesPool",
        input_schema = types.CreateWorkspacesPoolInput,
        output_schema = types.CreateWorkspacesPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccountLinkInvitation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccountLinkInvitation",
        input_schema = types.DeleteAccountLinkInvitationInput,
        output_schema = types.DeleteAccountLinkInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClientBranding(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClientBranding",
        input_schema = types.DeleteClientBrandingInput,
        output_schema = types.DeleteClientBrandingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectClientAddIn(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectClientAddIn",
        input_schema = types.DeleteConnectClientAddInInput,
        output_schema = types.DeleteConnectClientAddInOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnectionAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnectionAlias",
        input_schema = types.DeleteConnectionAliasInput,
        output_schema = types.DeleteConnectionAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIpGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIpGroup",
        input_schema = types.DeleteIpGroupInput,
        output_schema = types.DeleteIpGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspaceBundle(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceBundle",
        input_schema = types.DeleteWorkspaceBundleInput,
        output_schema = types.DeleteWorkspaceBundleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspaceImage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceImage",
        input_schema = types.DeleteWorkspaceImageInput,
        output_schema = types.DeleteWorkspaceImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deployWorkspaceApplications(input, options)
    return self:invokeOperation(input, {
        name = "DeployWorkspaceApplications",
        input_schema = types.DeployWorkspaceApplicationsInput,
        output_schema = types.DeployWorkspaceApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterWorkspaceDirectory(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterWorkspaceDirectory",
        input_schema = types.DeregisterWorkspaceDirectoryInput,
        output_schema = types.DeregisterWorkspaceDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccount(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccount",
        input_schema = types.DescribeAccountInput,
        output_schema = types.DescribeAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountModifications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountModifications",
        input_schema = types.DescribeAccountModificationsInput,
        output_schema = types.DescribeAccountModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplicationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplicationAssociations",
        input_schema = types.DescribeApplicationAssociationsInput,
        output_schema = types.DescribeApplicationAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeApplications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeApplications",
        input_schema = types.DescribeApplicationsInput,
        output_schema = types.DescribeApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBundleAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBundleAssociations",
        input_schema = types.DescribeBundleAssociationsInput,
        output_schema = types.DescribeBundleAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientBranding(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientBranding",
        input_schema = types.DescribeClientBrandingInput,
        output_schema = types.DescribeClientBrandingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClientProperties(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClientProperties",
        input_schema = types.DescribeClientPropertiesInput,
        output_schema = types.DescribeClientPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectClientAddIns(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectClientAddIns",
        input_schema = types.DescribeConnectClientAddInsInput,
        output_schema = types.DescribeConnectClientAddInsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectionAliases(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionAliases",
        input_schema = types.DescribeConnectionAliasesInput,
        output_schema = types.DescribeConnectionAliasesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnectionAliasPermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnectionAliasPermissions",
        input_schema = types.DescribeConnectionAliasPermissionsInput,
        output_schema = types.DescribeConnectionAliasPermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomWorkspaceImageImport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomWorkspaceImageImport",
        input_schema = types.DescribeCustomWorkspaceImageImportInput,
        output_schema = types.DescribeCustomWorkspaceImageImportOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImageAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImageAssociations",
        input_schema = types.DescribeImageAssociationsInput,
        output_schema = types.DescribeImageAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIpGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIpGroups",
        input_schema = types.DescribeIpGroupsInput,
        output_schema = types.DescribeIpGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceAssociations",
        input_schema = types.DescribeWorkspaceAssociationsInput,
        output_schema = types.DescribeWorkspaceAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceBundles(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceBundles",
        input_schema = types.DescribeWorkspaceBundlesInput,
        output_schema = types.DescribeWorkspaceBundlesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceDirectories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceDirectories",
        input_schema = types.DescribeWorkspaceDirectoriesInput,
        output_schema = types.DescribeWorkspaceDirectoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceImagePermissions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceImagePermissions",
        input_schema = types.DescribeWorkspaceImagePermissionsInput,
        output_schema = types.DescribeWorkspaceImagePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceImages(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceImages",
        input_schema = types.DescribeWorkspaceImagesInput,
        output_schema = types.DescribeWorkspaceImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaces",
        input_schema = types.DescribeWorkspacesInput,
        output_schema = types.DescribeWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspacesConnectionStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspacesConnectionStatus",
        input_schema = types.DescribeWorkspacesConnectionStatusInput,
        output_schema = types.DescribeWorkspacesConnectionStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspaceSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspaceSnapshots",
        input_schema = types.DescribeWorkspaceSnapshotsInput,
        output_schema = types.DescribeWorkspaceSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspacesPools(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspacesPools",
        input_schema = types.DescribeWorkspacesPoolsInput,
        output_schema = types.DescribeWorkspacesPoolsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspacesPoolSessions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspacesPoolSessions",
        input_schema = types.DescribeWorkspacesPoolSessionsInput,
        output_schema = types.DescribeWorkspacesPoolSessionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateConnectionAlias(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateConnectionAlias",
        input_schema = types.DisassociateConnectionAliasInput,
        output_schema = types.DisassociateConnectionAliasOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateIpGroups(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateIpGroups",
        input_schema = types.DisassociateIpGroupsInput,
        output_schema = types.DisassociateIpGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWorkspaceApplication(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWorkspaceApplication",
        input_schema = types.DisassociateWorkspaceApplicationInput,
        output_schema = types.DisassociateWorkspaceApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountLink(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountLink",
        input_schema = types.GetAccountLinkInput,
        output_schema = types.GetAccountLinkOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importClientBranding(input, options)
    return self:invokeOperation(input, {
        name = "ImportClientBranding",
        input_schema = types.ImportClientBrandingInput,
        output_schema = types.ImportClientBrandingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importCustomWorkspaceImage(input, options)
    return self:invokeOperation(input, {
        name = "ImportCustomWorkspaceImage",
        input_schema = types.ImportCustomWorkspaceImageInput,
        output_schema = types.ImportCustomWorkspaceImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importWorkspaceImage(input, options)
    return self:invokeOperation(input, {
        name = "ImportWorkspaceImage",
        input_schema = types.ImportWorkspaceImageInput,
        output_schema = types.ImportWorkspaceImageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountLinks",
        input_schema = types.ListAccountLinksInput,
        output_schema = types.ListAccountLinksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAvailableManagementCidrRanges(input, options)
    return self:invokeOperation(input, {
        name = "ListAvailableManagementCidrRanges",
        input_schema = types.ListAvailableManagementCidrRangesInput,
        output_schema = types.ListAvailableManagementCidrRangesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:migrateWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "MigrateWorkspace",
        input_schema = types.MigrateWorkspaceInput,
        output_schema = types.MigrateWorkspaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyAccount(input, options)
    return self:invokeOperation(input, {
        name = "ModifyAccount",
        input_schema = types.ModifyAccountInput,
        output_schema = types.ModifyAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCertificateBasedAuthProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCertificateBasedAuthProperties",
        input_schema = types.ModifyCertificateBasedAuthPropertiesInput,
        output_schema = types.ModifyCertificateBasedAuthPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClientProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClientProperties",
        input_schema = types.ModifyClientPropertiesInput,
        output_schema = types.ModifyClientPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEndpointEncryptionMode(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEndpointEncryptionMode",
        input_schema = types.ModifyEndpointEncryptionModeInput,
        output_schema = types.ModifyEndpointEncryptionModeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySamlProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifySamlProperties",
        input_schema = types.ModifySamlPropertiesInput,
        output_schema = types.ModifySamlPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySelfservicePermissions(input, options)
    return self:invokeOperation(input, {
        name = "ModifySelfservicePermissions",
        input_schema = types.ModifySelfservicePermissionsInput,
        output_schema = types.ModifySelfservicePermissionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyStreamingProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifyStreamingProperties",
        input_schema = types.ModifyStreamingPropertiesInput,
        output_schema = types.ModifyStreamingPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyWorkspaceAccessProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifyWorkspaceAccessProperties",
        input_schema = types.ModifyWorkspaceAccessPropertiesInput,
        output_schema = types.ModifyWorkspaceAccessPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyWorkspaceCreationProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifyWorkspaceCreationProperties",
        input_schema = types.ModifyWorkspaceCreationPropertiesInput,
        output_schema = types.ModifyWorkspaceCreationPropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyWorkspaceProperties(input, options)
    return self:invokeOperation(input, {
        name = "ModifyWorkspaceProperties",
        input_schema = types.ModifyWorkspacePropertiesInput,
        output_schema = types.ModifyWorkspacePropertiesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyWorkspaceState(input, options)
    return self:invokeOperation(input, {
        name = "ModifyWorkspaceState",
        input_schema = types.ModifyWorkspaceStateInput,
        output_schema = types.ModifyWorkspaceStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "RebootWorkspaces",
        input_schema = types.RebootWorkspacesInput,
        output_schema = types.RebootWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebuildWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "RebuildWorkspaces",
        input_schema = types.RebuildWorkspacesInput,
        output_schema = types.RebuildWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerWorkspaceDirectory(input, options)
    return self:invokeOperation(input, {
        name = "RegisterWorkspaceDirectory",
        input_schema = types.RegisterWorkspaceDirectoryInput,
        output_schema = types.RegisterWorkspaceDirectoryOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectAccountLinkInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectAccountLinkInvitation",
        input_schema = types.RejectAccountLinkInvitationInput,
        output_schema = types.RejectAccountLinkInvitationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "RestoreWorkspace",
        input_schema = types.RestoreWorkspaceInput,
        output_schema = types.RestoreWorkspaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeIpRules(input, options)
    return self:invokeOperation(input, {
        name = "RevokeIpRules",
        input_schema = types.RevokeIpRulesInput,
        output_schema = types.RevokeIpRulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkspaces",
        input_schema = types.StartWorkspacesInput,
        output_schema = types.StartWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startWorkspacesPool(input, options)
    return self:invokeOperation(input, {
        name = "StartWorkspacesPool",
        input_schema = types.StartWorkspacesPoolInput,
        output_schema = types.StartWorkspacesPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkspaces",
        input_schema = types.StopWorkspacesInput,
        output_schema = types.StopWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopWorkspacesPool(input, options)
    return self:invokeOperation(input, {
        name = "StopWorkspacesPool",
        input_schema = types.StopWorkspacesPoolInput,
        output_schema = types.StopWorkspacesPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "TerminateWorkspaces",
        input_schema = types.TerminateWorkspacesInput,
        output_schema = types.TerminateWorkspacesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateWorkspacesPool(input, options)
    return self:invokeOperation(input, {
        name = "TerminateWorkspacesPool",
        input_schema = types.TerminateWorkspacesPoolInput,
        output_schema = types.TerminateWorkspacesPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateWorkspacesPoolSession(input, options)
    return self:invokeOperation(input, {
        name = "TerminateWorkspacesPoolSession",
        input_schema = types.TerminateWorkspacesPoolSessionInput,
        output_schema = types.TerminateWorkspacesPoolSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectClientAddIn(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectClientAddIn",
        input_schema = types.UpdateConnectClientAddInInput,
        output_schema = types.UpdateConnectClientAddInOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnectionAliasPermission(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnectionAliasPermission",
        input_schema = types.UpdateConnectionAliasPermissionInput,
        output_schema = types.UpdateConnectionAliasPermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRulesOfIpGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRulesOfIpGroup",
        input_schema = types.UpdateRulesOfIpGroupInput,
        output_schema = types.UpdateRulesOfIpGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceBundle(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceBundle",
        input_schema = types.UpdateWorkspaceBundleInput,
        output_schema = types.UpdateWorkspaceBundleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceImagePermission(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceImagePermission",
        input_schema = types.UpdateWorkspaceImagePermissionInput,
        output_schema = types.UpdateWorkspaceImagePermissionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspacesPool(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspacesPool",
        input_schema = types.UpdateWorkspacesPoolInput,
        output_schema = types.UpdateWorkspacesPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
