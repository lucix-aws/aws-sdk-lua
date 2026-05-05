local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("transfer.endpoint_rules")
local schemas = require("transfer.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TransferService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "transfer", signing_region = cfg.region } }
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

function Client:createAccess(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccess",
        input_schema = schemas.CreateAccessInput,
        output_schema = schemas.CreateAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAgreement(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgreement",
        input_schema = schemas.CreateAgreementInput,
        output_schema = schemas.CreateAgreementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createConnector(input, options)
    return self:invokeOperation(input, {
        name = "CreateConnector",
        input_schema = schemas.CreateConnectorInput,
        output_schema = schemas.CreateConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = schemas.CreateProfileInput,
        output_schema = schemas.CreateProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createServer(input, options)
    return self:invokeOperation(input, {
        name = "CreateServer",
        input_schema = schemas.CreateServerInput,
        output_schema = schemas.CreateServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWebApp(input, options)
    return self:invokeOperation(input, {
        name = "CreateWebApp",
        input_schema = schemas.CreateWebAppInput,
        output_schema = schemas.CreateWebAppOutput,
        http_method = "POST",
        http_path = "/createWebApp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkflow",
        input_schema = schemas.CreateWorkflowInput,
        output_schema = schemas.CreateWorkflowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccess",
        input_schema = schemas.DeleteAccessInput,
        output_schema = schemas.DeleteAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAgreement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAgreement",
        input_schema = schemas.DeleteAgreementInput,
        output_schema = schemas.DeleteAgreementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCertificate",
        input_schema = schemas.DeleteCertificateInput,
        output_schema = schemas.DeleteCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteConnector(input, options)
    return self:invokeOperation(input, {
        name = "DeleteConnector",
        input_schema = schemas.DeleteConnectorInput,
        output_schema = schemas.DeleteConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHostKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHostKey",
        input_schema = schemas.DeleteHostKeyInput,
        output_schema = schemas.DeleteHostKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = schemas.DeleteProfileInput,
        output_schema = schemas.DeleteProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteServer(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServer",
        input_schema = schemas.DeleteServerInput,
        output_schema = schemas.DeleteServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSshPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSshPublicKey",
        input_schema = schemas.DeleteSshPublicKeyInput,
        output_schema = schemas.DeleteSshPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebApp(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebApp",
        input_schema = schemas.DeleteWebAppInput,
        output_schema = schemas.DeleteWebAppOutput,
        http_method = "POST",
        http_path = "/deleteWebApp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWebAppCustomization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWebAppCustomization",
        input_schema = schemas.DeleteWebAppCustomizationInput,
        output_schema = schemas.DeleteWebAppCustomizationOutput,
        http_method = "POST",
        http_path = "/deleteWebAppCustomization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkflow",
        input_schema = schemas.DeleteWorkflowInput,
        output_schema = schemas.DeleteWorkflowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccess",
        input_schema = schemas.DescribeAccessInput,
        output_schema = schemas.DescribeAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAgreement(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAgreement",
        input_schema = schemas.DescribeAgreementInput,
        output_schema = schemas.DescribeAgreementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCertificate",
        input_schema = schemas.DescribeCertificateInput,
        output_schema = schemas.DescribeCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeConnector(input, options)
    return self:invokeOperation(input, {
        name = "DescribeConnector",
        input_schema = schemas.DescribeConnectorInput,
        output_schema = schemas.DescribeConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExecution",
        input_schema = schemas.DescribeExecutionInput,
        output_schema = schemas.DescribeExecutionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHostKey(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHostKey",
        input_schema = schemas.DescribeHostKeyInput,
        output_schema = schemas.DescribeHostKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeProfile",
        input_schema = schemas.DescribeProfileInput,
        output_schema = schemas.DescribeProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityPolicy",
        input_schema = schemas.DescribeSecurityPolicyInput,
        output_schema = schemas.DescribeSecurityPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeServer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeServer",
        input_schema = schemas.DescribeServerInput,
        output_schema = schemas.DescribeServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = schemas.DescribeUserInput,
        output_schema = schemas.DescribeUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWebApp(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWebApp",
        input_schema = schemas.DescribeWebAppInput,
        output_schema = schemas.DescribeWebAppOutput,
        http_method = "POST",
        http_path = "/describeWebApp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWebAppCustomization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWebAppCustomization",
        input_schema = schemas.DescribeWebAppCustomizationInput,
        output_schema = schemas.DescribeWebAppCustomizationOutput,
        http_method = "POST",
        http_path = "/describeWebAppCustomization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkflow(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkflow",
        input_schema = schemas.DescribeWorkflowInput,
        output_schema = schemas.DescribeWorkflowOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importCertificate(input, options)
    return self:invokeOperation(input, {
        name = "ImportCertificate",
        input_schema = schemas.ImportCertificateInput,
        output_schema = schemas.ImportCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importHostKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportHostKey",
        input_schema = schemas.ImportHostKeyInput,
        output_schema = schemas.ImportHostKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importSshPublicKey(input, options)
    return self:invokeOperation(input, {
        name = "ImportSshPublicKey",
        input_schema = schemas.ImportSshPublicKeyInput,
        output_schema = schemas.ImportSshPublicKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccesses(input, options)
    return self:invokeOperation(input, {
        name = "ListAccesses",
        input_schema = schemas.ListAccessesInput,
        output_schema = schemas.ListAccessesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgreements(input, options)
    return self:invokeOperation(input, {
        name = "ListAgreements",
        input_schema = schemas.ListAgreementsInput,
        output_schema = schemas.ListAgreementsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCertificates(input, options)
    return self:invokeOperation(input, {
        name = "ListCertificates",
        input_schema = schemas.ListCertificatesInput,
        output_schema = schemas.ListCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listConnectors(input, options)
    return self:invokeOperation(input, {
        name = "ListConnectors",
        input_schema = schemas.ListConnectorsInput,
        output_schema = schemas.ListConnectorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListExecutions",
        input_schema = schemas.ListExecutionsInput,
        output_schema = schemas.ListExecutionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFileTransferResults(input, options)
    return self:invokeOperation(input, {
        name = "ListFileTransferResults",
        input_schema = schemas.ListFileTransferResultsInput,
        output_schema = schemas.ListFileTransferResultsOutput,
        http_method = "POST",
        http_path = "/listFileTransferResults",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHostKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListHostKeys",
        input_schema = schemas.ListHostKeysInput,
        output_schema = schemas.ListHostKeysOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProfiles",
        input_schema = schemas.ListProfilesInput,
        output_schema = schemas.ListProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityPolicies",
        input_schema = schemas.ListSecurityPoliciesInput,
        output_schema = schemas.ListSecurityPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServers(input, options)
    return self:invokeOperation(input, {
        name = "ListServers",
        input_schema = schemas.ListServersInput,
        output_schema = schemas.ListServersOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWebApps(input, options)
    return self:invokeOperation(input, {
        name = "ListWebApps",
        input_schema = schemas.ListWebAppsInput,
        output_schema = schemas.ListWebAppsOutput,
        http_method = "POST",
        http_path = "/listWebApps",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkflows(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkflows",
        input_schema = schemas.ListWorkflowsInput,
        output_schema = schemas.ListWorkflowsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendWorkflowStepState(input, options)
    return self:invokeOperation(input, {
        name = "SendWorkflowStepState",
        input_schema = schemas.SendWorkflowStepStateInput,
        output_schema = schemas.SendWorkflowStepStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startDirectoryListing(input, options)
    return self:invokeOperation(input, {
        name = "StartDirectoryListing",
        input_schema = schemas.StartDirectoryListingInput,
        output_schema = schemas.StartDirectoryListingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFileTransfer(input, options)
    return self:invokeOperation(input, {
        name = "StartFileTransfer",
        input_schema = schemas.StartFileTransferInput,
        output_schema = schemas.StartFileTransferOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRemoteDelete(input, options)
    return self:invokeOperation(input, {
        name = "StartRemoteDelete",
        input_schema = schemas.StartRemoteDeleteInput,
        output_schema = schemas.StartRemoteDeleteOutput,
        http_method = "POST",
        http_path = "/startRemoteDelete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startRemoteMove(input, options)
    return self:invokeOperation(input, {
        name = "StartRemoteMove",
        input_schema = schemas.StartRemoteMoveInput,
        output_schema = schemas.StartRemoteMoveOutput,
        http_method = "POST",
        http_path = "/startRemoteMove",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startServer(input, options)
    return self:invokeOperation(input, {
        name = "StartServer",
        input_schema = schemas.StartServerInput,
        output_schema = schemas.StartServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopServer(input, options)
    return self:invokeOperation(input, {
        name = "StopServer",
        input_schema = schemas.StopServerInput,
        output_schema = schemas.StopServerOutput,
        http_method = "POST",
        http_path = "/",
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
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testConnection(input, options)
    return self:invokeOperation(input, {
        name = "TestConnection",
        input_schema = schemas.TestConnectionInput,
        output_schema = schemas.TestConnectionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testIdentityProvider(input, options)
    return self:invokeOperation(input, {
        name = "TestIdentityProvider",
        input_schema = schemas.TestIdentityProviderInput,
        output_schema = schemas.TestIdentityProviderOutput,
        http_method = "POST",
        http_path = "/",
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
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAccess(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccess",
        input_schema = schemas.UpdateAccessInput,
        output_schema = schemas.UpdateAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAgreement(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgreement",
        input_schema = schemas.UpdateAgreementInput,
        output_schema = schemas.UpdateAgreementOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCertificate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCertificate",
        input_schema = schemas.UpdateCertificateInput,
        output_schema = schemas.UpdateCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateConnector(input, options)
    return self:invokeOperation(input, {
        name = "UpdateConnector",
        input_schema = schemas.UpdateConnectorInput,
        output_schema = schemas.UpdateConnectorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHostKey(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHostKey",
        input_schema = schemas.UpdateHostKeyInput,
        output_schema = schemas.UpdateHostKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = schemas.UpdateProfileInput,
        output_schema = schemas.UpdateProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateServer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServer",
        input_schema = schemas.UpdateServerInput,
        output_schema = schemas.UpdateServerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUser(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUser",
        input_schema = schemas.UpdateUserInput,
        output_schema = schemas.UpdateUserOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWebApp(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebApp",
        input_schema = schemas.UpdateWebAppInput,
        output_schema = schemas.UpdateWebAppOutput,
        http_method = "POST",
        http_path = "/updateWebApp",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWebAppCustomization(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWebAppCustomization",
        input_schema = schemas.UpdateWebAppCustomizationInput,
        output_schema = schemas.UpdateWebAppCustomizationOutput,
        http_method = "POST",
        http_path = "/updateWebAppCustomization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
