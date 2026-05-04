local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("transfer.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("transfer.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TransferService"
    cfg.signing_name = "transfer"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.1", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    defaults.resolve_signer(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:createAccess(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccess",
        input_schema = types.CreateAccessInput,
        output_schema = types.CreateAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createAgreement(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgreement",
        input_schema = types.CreateAgreementInput,
        output_schema = types.CreateAgreementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = types.CreateConnectorInput,
        output_schema = types.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = types.CreateProfileInput,
        output_schema = types.CreateProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateServer",
        input_schema = types.CreateServerInput,
        output_schema = types.CreateServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = types.CreateUserInput,
        output_schema = types.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createWebApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebApp",
        input_schema = types.CreateWebAppInput,
        output_schema = types.CreateWebAppOutput,
        http_method = "POST",
        http_path = "/createWebApp",
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = types.CreateWorkflowInput,
        output_schema = types.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccess",
        input_schema = types.DeleteAccessInput,
        output_schema = types.DeleteAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteAgreement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgreement",
        input_schema = types.DeleteAgreementInput,
        output_schema = types.DeleteAgreementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = types.DeleteCertificateInput,
        output_schema = types.DeleteCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = types.DeleteConnectorInput,
        output_schema = types.DeleteConnectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteHostKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHostKey",
        input_schema = types.DeleteHostKeyInput,
        output_schema = types.DeleteHostKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = types.DeleteProfileInput,
        output_schema = types.DeleteProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServer",
        input_schema = types.DeleteServerInput,
        output_schema = types.DeleteServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteSshPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSshPublicKey",
        input_schema = types.DeleteSshPublicKeyInput,
        output_schema = types.DeleteSshPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = types.DeleteUserInput,
        output_schema = types.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWebApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebApp",
        input_schema = types.DeleteWebAppInput,
        output_schema = types.DeleteWebAppOutput,
        http_method = "POST",
        http_path = "/deleteWebApp",
    }, options)
end

function Client:deleteWebAppCustomization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebAppCustomization",
        input_schema = types.DeleteWebAppCustomizationInput,
        output_schema = types.DeleteWebAppCustomizationOutput,
        http_method = "POST",
        http_path = "/deleteWebAppCustomization",
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = types.DeleteWorkflowInput,
        output_schema = types.DeleteWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccess",
        input_schema = types.DescribeAccessInput,
        output_schema = types.DescribeAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeAgreement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAgreement",
        input_schema = types.DescribeAgreementInput,
        output_schema = types.DescribeAgreementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificate",
        input_schema = types.DescribeCertificateInput,
        output_schema = types.DescribeCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeConnector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnector",
        input_schema = types.DescribeConnectorInput,
        output_schema = types.DescribeConnectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = types.DescribeExecutionInput,
        output_schema = types.DescribeExecutionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeHostKey(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHostKey",
        input_schema = types.DescribeHostKeyInput,
        output_schema = types.DescribeHostKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProfile",
        input_schema = types.DescribeProfileInput,
        output_schema = types.DescribeProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityPolicy",
        input_schema = types.DescribeSecurityPolicyInput,
        output_schema = types.DescribeSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeServer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServer",
        input_schema = types.DescribeServerInput,
        output_schema = types.DescribeServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = types.DescribeUserInput,
        output_schema = types.DescribeUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:describeWebApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWebApp",
        input_schema = types.DescribeWebAppInput,
        output_schema = types.DescribeWebAppOutput,
        http_method = "POST",
        http_path = "/describeWebApp",
    }, options)
end

function Client:describeWebAppCustomization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWebAppCustomization",
        input_schema = types.DescribeWebAppCustomizationInput,
        output_schema = types.DescribeWebAppCustomizationOutput,
        http_method = "POST",
        http_path = "/describeWebAppCustomization",
    }, options)
end

function Client:describeWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkflow",
        input_schema = types.DescribeWorkflowInput,
        output_schema = types.DescribeWorkflowOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ImportCertificate",
        input_schema = types.ImportCertificateInput,
        output_schema = types.ImportCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importHostKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportHostKey",
        input_schema = types.ImportHostKeyInput,
        output_schema = types.ImportHostKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:importSshPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportSshPublicKey",
        input_schema = types.ImportSshPublicKeyInput,
        output_schema = types.ImportSshPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAccesses(input, options)
    return self:invokeOperation(input, {
        name = "ListAccesses",
        input_schema = types.ListAccessesInput,
        output_schema = types.ListAccessesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listAgreements(input, options)
    return self:invokeOperation(input, {
        name = "ListAgreements",
        input_schema = types.ListAgreementsInput,
        output_schema = types.ListAgreementsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificates",
        input_schema = types.ListCertificatesInput,
        output_schema = types.ListCertificatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = types.ListConnectorsInput,
        output_schema = types.ListConnectorsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = types.ListExecutionsInput,
        output_schema = types.ListExecutionsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listFileTransferResults(input, options)
    return self:invokeOperation(input, {
        name = "ListFileTransferResults",
        input_schema = types.ListFileTransferResultsInput,
        output_schema = types.ListFileTransferResultsOutput,
        http_method = "POST",
        http_path = "/listFileTransferResults",
    }, options)
end

function Client:listHostKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListHostKeys",
        input_schema = types.ListHostKeysInput,
        output_schema = types.ListHostKeysOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProfiles",
        input_schema = types.ListProfilesInput,
        output_schema = types.ListProfilesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listSecurityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityPolicies",
        input_schema = types.ListSecurityPoliciesInput,
        output_schema = types.ListSecurityPoliciesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listServers(input, options)
    return self:invokeOperation(input, {
        name = "ListServers",
        input_schema = types.ListServersInput,
        output_schema = types.ListServersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = types.ListUsersInput,
        output_schema = types.ListUsersOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWebApps(input, options)
    return self:invokeOperation(input, {
        name = "ListWebApps",
        input_schema = types.ListWebAppsInput,
        output_schema = types.ListWebAppsOutput,
        http_method = "POST",
        http_path = "/listWebApps",
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = types.ListWorkflowsInput,
        output_schema = types.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:sendWorkflowStepState(input, options)
    return self:invokeOperation(input, {
        name = "SendWorkflowStepState",
        input_schema = types.SendWorkflowStepStateInput,
        output_schema = types.SendWorkflowStepStateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startDirectoryListing(input, options)
    return self:invokeOperation(input, {
        name = "StartDirectoryListing",
        input_schema = types.StartDirectoryListingInput,
        output_schema = types.StartDirectoryListingOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startFileTransfer(input, options)
    return self:invokeOperation(input, {
        name = "StartFileTransfer",
        input_schema = types.StartFileTransferInput,
        output_schema = types.StartFileTransferOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:startRemoteDelete(input, options)
    return self:invokeOperation(input, {
        name = "StartRemoteDelete",
        input_schema = types.StartRemoteDeleteInput,
        output_schema = types.StartRemoteDeleteOutput,
        http_method = "POST",
        http_path = "/startRemoteDelete",
    }, options)
end

function Client:startRemoteMove(input, options)
    return self:invokeOperation(input, {
        name = "StartRemoteMove",
        input_schema = types.StartRemoteMoveInput,
        output_schema = types.StartRemoteMoveOutput,
        http_method = "POST",
        http_path = "/startRemoteMove",
    }, options)
end

function Client:startServer(input, options)
    return self:invokeOperation(input, {
        name = "StartServer",
        input_schema = types.StartServerInput,
        output_schema = types.StartServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:stopServer(input, options)
    return self:invokeOperation(input, {
        name = "StopServer",
        input_schema = types.StopServerInput,
        output_schema = types.StopServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testConnection(input, options)
    return self:invokeOperation(input, {
        name = "TestConnection",
        input_schema = types.TestConnectionInput,
        output_schema = types.TestConnectionOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:testIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "TestIdentityProvider",
        input_schema = types.TestIdentityProviderInput,
        output_schema = types.TestIdentityProviderOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAccess(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccess",
        input_schema = types.UpdateAccessInput,
        output_schema = types.UpdateAccessOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateAgreement(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgreement",
        input_schema = types.UpdateAgreementInput,
        output_schema = types.UpdateAgreementOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificate",
        input_schema = types.UpdateCertificateInput,
        output_schema = types.UpdateCertificateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnector",
        input_schema = types.UpdateConnectorInput,
        output_schema = types.UpdateConnectorOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateHostKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHostKey",
        input_schema = types.UpdateHostKeyInput,
        output_schema = types.UpdateHostKeyOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = types.UpdateProfileInput,
        output_schema = types.UpdateProfileOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServer",
        input_schema = types.UpdateServerInput,
        output_schema = types.UpdateServerOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = types.UpdateUserInput,
        output_schema = types.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateWebApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebApp",
        input_schema = types.UpdateWebAppInput,
        output_schema = types.UpdateWebAppOutput,
        http_method = "POST",
        http_path = "/updateWebApp",
    }, options)
end

function Client:updateWebAppCustomization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebAppCustomization",
        input_schema = types.UpdateWebAppCustomizationInput,
        output_schema = types.UpdateWebAppCustomizationOutput,
        http_method = "POST",
        http_path = "/updateWebAppCustomization",
    }, options)
end

return M
