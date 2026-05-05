local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("workspaces.endpoint_rules")
local schemas = require("workspaces.schemas")
local sdk_defaults = require("sdk_defaults")

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
        input_schema = schemas.AcceptAccountLinkInvitationInput,
        output_schema = schemas.AcceptAccountLinkInvitationOutput,
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
        input_schema = schemas.AssociateConnectionAliasInput,
        output_schema = schemas.AssociateConnectionAliasOutput,
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
        input_schema = schemas.AssociateIpGroupsInput,
        output_schema = schemas.AssociateIpGroupsOutput,
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
        input_schema = schemas.AssociateWorkspaceApplicationInput,
        output_schema = schemas.AssociateWorkspaceApplicationOutput,
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
        input_schema = schemas.AuthorizeIpRulesInput,
        output_schema = schemas.AuthorizeIpRulesOutput,
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
        input_schema = schemas.CopyWorkspaceImageInput,
        output_schema = schemas.CopyWorkspaceImageOutput,
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
        input_schema = schemas.CreateAccountLinkInvitationInput,
        output_schema = schemas.CreateAccountLinkInvitationOutput,
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
        input_schema = schemas.CreateConnectClientAddInInput,
        output_schema = schemas.CreateConnectClientAddInOutput,
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
        input_schema = schemas.CreateConnectionAliasInput,
        output_schema = schemas.CreateConnectionAliasOutput,
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
        input_schema = schemas.CreateIpGroupInput,
        output_schema = schemas.CreateIpGroupOutput,
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
        input_schema = schemas.CreateStandbyWorkspacesInput,
        output_schema = schemas.CreateStandbyWorkspacesOutput,
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
        input_schema = schemas.CreateTagsInput,
        output_schema = schemas.CreateTagsOutput,
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
        input_schema = schemas.CreateUpdatedWorkspaceImageInput,
        output_schema = schemas.CreateUpdatedWorkspaceImageOutput,
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
        input_schema = schemas.CreateWorkspaceBundleInput,
        output_schema = schemas.CreateWorkspaceBundleOutput,
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
        input_schema = schemas.CreateWorkspaceImageInput,
        output_schema = schemas.CreateWorkspaceImageOutput,
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
        input_schema = schemas.CreateWorkspacesInput,
        output_schema = schemas.CreateWorkspacesOutput,
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
        input_schema = schemas.CreateWorkspacesPoolInput,
        output_schema = schemas.CreateWorkspacesPoolOutput,
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
        input_schema = schemas.DeleteAccountLinkInvitationInput,
        output_schema = schemas.DeleteAccountLinkInvitationOutput,
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
        input_schema = schemas.DeleteClientBrandingInput,
        output_schema = schemas.DeleteClientBrandingOutput,
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
        input_schema = schemas.DeleteConnectClientAddInInput,
        output_schema = schemas.DeleteConnectClientAddInOutput,
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
        input_schema = schemas.DeleteConnectionAliasInput,
        output_schema = schemas.DeleteConnectionAliasOutput,
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
        input_schema = schemas.DeleteIpGroupInput,
        output_schema = schemas.DeleteIpGroupOutput,
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
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
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
        input_schema = schemas.DeleteWorkspaceBundleInput,
        output_schema = schemas.DeleteWorkspaceBundleOutput,
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
        input_schema = schemas.DeleteWorkspaceImageInput,
        output_schema = schemas.DeleteWorkspaceImageOutput,
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
        input_schema = schemas.DeployWorkspaceApplicationsInput,
        output_schema = schemas.DeployWorkspaceApplicationsOutput,
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
        input_schema = schemas.DeregisterWorkspaceDirectoryInput,
        output_schema = schemas.DeregisterWorkspaceDirectoryOutput,
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
        input_schema = schemas.DescribeAccountInput,
        output_schema = schemas.DescribeAccountOutput,
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
        input_schema = schemas.DescribeAccountModificationsInput,
        output_schema = schemas.DescribeAccountModificationsOutput,
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
        input_schema = schemas.DescribeApplicationAssociationsInput,
        output_schema = schemas.DescribeApplicationAssociationsOutput,
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
        input_schema = schemas.DescribeApplicationsInput,
        output_schema = schemas.DescribeApplicationsOutput,
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
        input_schema = schemas.DescribeBundleAssociationsInput,
        output_schema = schemas.DescribeBundleAssociationsOutput,
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
        input_schema = schemas.DescribeClientBrandingInput,
        output_schema = schemas.DescribeClientBrandingOutput,
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
        input_schema = schemas.DescribeClientPropertiesInput,
        output_schema = schemas.DescribeClientPropertiesOutput,
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
        input_schema = schemas.DescribeConnectClientAddInsInput,
        output_schema = schemas.DescribeConnectClientAddInsOutput,
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
        input_schema = schemas.DescribeConnectionAliasesInput,
        output_schema = schemas.DescribeConnectionAliasesOutput,
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
        input_schema = schemas.DescribeConnectionAliasPermissionsInput,
        output_schema = schemas.DescribeConnectionAliasPermissionsOutput,
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
        input_schema = schemas.DescribeCustomWorkspaceImageImportInput,
        output_schema = schemas.DescribeCustomWorkspaceImageImportOutput,
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
        input_schema = schemas.DescribeImageAssociationsInput,
        output_schema = schemas.DescribeImageAssociationsOutput,
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
        input_schema = schemas.DescribeIpGroupsInput,
        output_schema = schemas.DescribeIpGroupsOutput,
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
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
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
        input_schema = schemas.DescribeWorkspaceAssociationsInput,
        output_schema = schemas.DescribeWorkspaceAssociationsOutput,
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
        input_schema = schemas.DescribeWorkspaceBundlesInput,
        output_schema = schemas.DescribeWorkspaceBundlesOutput,
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
        input_schema = schemas.DescribeWorkspaceDirectoriesInput,
        output_schema = schemas.DescribeWorkspaceDirectoriesOutput,
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
        input_schema = schemas.DescribeWorkspaceImagePermissionsInput,
        output_schema = schemas.DescribeWorkspaceImagePermissionsOutput,
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
        input_schema = schemas.DescribeWorkspaceImagesInput,
        output_schema = schemas.DescribeWorkspaceImagesOutput,
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
        input_schema = schemas.DescribeWorkspacesInput,
        output_schema = schemas.DescribeWorkspacesOutput,
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
        input_schema = schemas.DescribeWorkspacesConnectionStatusInput,
        output_schema = schemas.DescribeWorkspacesConnectionStatusOutput,
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
        input_schema = schemas.DescribeWorkspaceSnapshotsInput,
        output_schema = schemas.DescribeWorkspaceSnapshotsOutput,
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
        input_schema = schemas.DescribeWorkspacesPoolsInput,
        output_schema = schemas.DescribeWorkspacesPoolsOutput,
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
        input_schema = schemas.DescribeWorkspacesPoolSessionsInput,
        output_schema = schemas.DescribeWorkspacesPoolSessionsOutput,
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
        input_schema = schemas.DisassociateConnectionAliasInput,
        output_schema = schemas.DisassociateConnectionAliasOutput,
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
        input_schema = schemas.DisassociateIpGroupsInput,
        output_schema = schemas.DisassociateIpGroupsOutput,
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
        input_schema = schemas.DisassociateWorkspaceApplicationInput,
        output_schema = schemas.DisassociateWorkspaceApplicationOutput,
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
        input_schema = schemas.GetAccountLinkInput,
        output_schema = schemas.GetAccountLinkOutput,
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
        input_schema = schemas.ImportClientBrandingInput,
        output_schema = schemas.ImportClientBrandingOutput,
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
        input_schema = schemas.ImportCustomWorkspaceImageInput,
        output_schema = schemas.ImportCustomWorkspaceImageOutput,
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
        input_schema = schemas.ImportWorkspaceImageInput,
        output_schema = schemas.ImportWorkspaceImageOutput,
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
        input_schema = schemas.ListAccountLinksInput,
        output_schema = schemas.ListAccountLinksOutput,
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
        input_schema = schemas.ListAvailableManagementCidrRangesInput,
        output_schema = schemas.ListAvailableManagementCidrRangesOutput,
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
        input_schema = schemas.MigrateWorkspaceInput,
        output_schema = schemas.MigrateWorkspaceOutput,
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
        input_schema = schemas.ModifyAccountInput,
        output_schema = schemas.ModifyAccountOutput,
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
        input_schema = schemas.ModifyCertificateBasedAuthPropertiesInput,
        output_schema = schemas.ModifyCertificateBasedAuthPropertiesOutput,
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
        input_schema = schemas.ModifyClientPropertiesInput,
        output_schema = schemas.ModifyClientPropertiesOutput,
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
        input_schema = schemas.ModifyEndpointEncryptionModeInput,
        output_schema = schemas.ModifyEndpointEncryptionModeOutput,
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
        input_schema = schemas.ModifySamlPropertiesInput,
        output_schema = schemas.ModifySamlPropertiesOutput,
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
        input_schema = schemas.ModifySelfservicePermissionsInput,
        output_schema = schemas.ModifySelfservicePermissionsOutput,
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
        input_schema = schemas.ModifyStreamingPropertiesInput,
        output_schema = schemas.ModifyStreamingPropertiesOutput,
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
        input_schema = schemas.ModifyWorkspaceAccessPropertiesInput,
        output_schema = schemas.ModifyWorkspaceAccessPropertiesOutput,
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
        input_schema = schemas.ModifyWorkspaceCreationPropertiesInput,
        output_schema = schemas.ModifyWorkspaceCreationPropertiesOutput,
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
        input_schema = schemas.ModifyWorkspacePropertiesInput,
        output_schema = schemas.ModifyWorkspacePropertiesOutput,
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
        input_schema = schemas.ModifyWorkspaceStateInput,
        output_schema = schemas.ModifyWorkspaceStateOutput,
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
        input_schema = schemas.RebootWorkspacesInput,
        output_schema = schemas.RebootWorkspacesOutput,
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
        input_schema = schemas.RebuildWorkspacesInput,
        output_schema = schemas.RebuildWorkspacesOutput,
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
        input_schema = schemas.RegisterWorkspaceDirectoryInput,
        output_schema = schemas.RegisterWorkspaceDirectoryOutput,
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
        input_schema = schemas.RejectAccountLinkInvitationInput,
        output_schema = schemas.RejectAccountLinkInvitationOutput,
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
        input_schema = schemas.RestoreWorkspaceInput,
        output_schema = schemas.RestoreWorkspaceOutput,
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
        input_schema = schemas.RevokeIpRulesInput,
        output_schema = schemas.RevokeIpRulesOutput,
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
        input_schema = schemas.StartWorkspacesInput,
        output_schema = schemas.StartWorkspacesOutput,
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
        input_schema = schemas.StartWorkspacesPoolInput,
        output_schema = schemas.StartWorkspacesPoolOutput,
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
        input_schema = schemas.StopWorkspacesInput,
        output_schema = schemas.StopWorkspacesOutput,
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
        input_schema = schemas.StopWorkspacesPoolInput,
        output_schema = schemas.StopWorkspacesPoolOutput,
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
        input_schema = schemas.TerminateWorkspacesInput,
        output_schema = schemas.TerminateWorkspacesOutput,
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
        input_schema = schemas.TerminateWorkspacesPoolInput,
        output_schema = schemas.TerminateWorkspacesPoolOutput,
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
        input_schema = schemas.TerminateWorkspacesPoolSessionInput,
        output_schema = schemas.TerminateWorkspacesPoolSessionOutput,
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
        input_schema = schemas.UpdateConnectClientAddInInput,
        output_schema = schemas.UpdateConnectClientAddInOutput,
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
        input_schema = schemas.UpdateConnectionAliasPermissionInput,
        output_schema = schemas.UpdateConnectionAliasPermissionOutput,
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
        input_schema = schemas.UpdateRulesOfIpGroupInput,
        output_schema = schemas.UpdateRulesOfIpGroupOutput,
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
        input_schema = schemas.UpdateWorkspaceBundleInput,
        output_schema = schemas.UpdateWorkspaceBundleOutput,
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
        input_schema = schemas.UpdateWorkspaceImagePermissionInput,
        output_schema = schemas.UpdateWorkspaceImagePermissionOutput,
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
        input_schema = schemas.UpdateWorkspacesPoolInput,
        output_schema = schemas.UpdateWorkspacesPoolOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
