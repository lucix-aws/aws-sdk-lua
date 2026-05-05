local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("organizations.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("organizations.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSOrganizationsV20161128"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "organizations", signing_region = cfg.region } }
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

function Client:acceptHandshake(input, options)
    return self:invokeOperation(input, {
        name = "AcceptHandshake",
        input_schema = types.AcceptHandshakeInput,
        output_schema = types.AcceptHandshakeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:attachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "AttachPolicy",
        input_schema = types.AttachPolicyInput,
        output_schema = types.AttachPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelHandshake(input, options)
    return self:invokeOperation(input, {
        name = "CancelHandshake",
        input_schema = types.CancelHandshakeInput,
        output_schema = types.CancelHandshakeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:closeAccount(input, options)
    return self:invokeOperation(input, {
        name = "CloseAccount",
        input_schema = types.CloseAccountInput,
        output_schema = types.CloseAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccount(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccount",
        input_schema = types.CreateAccountInput,
        output_schema = types.CreateAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createGovCloudAccount(input, options)
    return self:invokeOperation(input, {
        name = "CreateGovCloudAccount",
        input_schema = types.CreateGovCloudAccountInput,
        output_schema = types.CreateGovCloudAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOrganization(input, options)
    return self:invokeOperation(input, {
        name = "CreateOrganization",
        input_schema = types.CreateOrganizationInput,
        output_schema = types.CreateOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOrganizationalUnit(input, options)
    return self:invokeOperation(input, {
        name = "CreateOrganizationalUnit",
        input_schema = types.CreateOrganizationalUnitInput,
        output_schema = types.CreateOrganizationalUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreatePolicy",
        input_schema = types.CreatePolicyInput,
        output_schema = types.CreatePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:declineHandshake(input, options)
    return self:invokeOperation(input, {
        name = "DeclineHandshake",
        input_schema = types.DeclineHandshakeInput,
        output_schema = types.DeclineHandshakeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOrganization",
        input_schema = types.DeleteOrganizationInput,
        output_schema = types.DeleteOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOrganizationalUnit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOrganizationalUnit",
        input_schema = types.DeleteOrganizationalUnitInput,
        output_schema = types.DeleteOrganizationalUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeletePolicy",
        input_schema = types.DeletePolicyInput,
        output_schema = types.DeletePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterDelegatedAdministrator(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterDelegatedAdministrator",
        input_schema = types.DeregisterDelegatedAdministratorInput,
        output_schema = types.DeregisterDelegatedAdministratorOutput,
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

function Client:describeCreateAccountStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCreateAccountStatus",
        input_schema = types.DescribeCreateAccountStatusInput,
        output_schema = types.DescribeCreateAccountStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEffectivePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEffectivePolicy",
        input_schema = types.DescribeEffectivePolicyInput,
        output_schema = types.DescribeEffectivePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHandshake(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHandshake",
        input_schema = types.DescribeHandshakeInput,
        output_schema = types.DescribeHandshakeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganization",
        input_schema = types.DescribeOrganizationInput,
        output_schema = types.DescribeOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrganizationalUnit(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrganizationalUnit",
        input_schema = types.DescribeOrganizationalUnitInput,
        output_schema = types.DescribeOrganizationalUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribePolicy",
        input_schema = types.DescribePolicyInput,
        output_schema = types.DescribePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = types.DescribeResourcePolicyInput,
        output_schema = types.DescribeResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResponsibilityTransfer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResponsibilityTransfer",
        input_schema = types.DescribeResponsibilityTransferInput,
        output_schema = types.DescribeResponsibilityTransferOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:detachPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DetachPolicy",
        input_schema = types.DetachPolicyInput,
        output_schema = types.DetachPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableAWSServiceAccess(input, options)
    return self:invokeOperation(input, {
        name = "DisableAWSServiceAccess",
        input_schema = types.DisableAWSServiceAccessInput,
        output_schema = types.DisableAWSServiceAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disablePolicyType(input, options)
    return self:invokeOperation(input, {
        name = "DisablePolicyType",
        input_schema = types.DisablePolicyTypeInput,
        output_schema = types.DisablePolicyTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAllFeatures(input, options)
    return self:invokeOperation(input, {
        name = "EnableAllFeatures",
        input_schema = types.EnableAllFeaturesInput,
        output_schema = types.EnableAllFeaturesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableAWSServiceAccess(input, options)
    return self:invokeOperation(input, {
        name = "EnableAWSServiceAccess",
        input_schema = types.EnableAWSServiceAccessInput,
        output_schema = types.EnableAWSServiceAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enablePolicyType(input, options)
    return self:invokeOperation(input, {
        name = "EnablePolicyType",
        input_schema = types.EnablePolicyTypeInput,
        output_schema = types.EnablePolicyTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inviteAccountToOrganization(input, options)
    return self:invokeOperation(input, {
        name = "InviteAccountToOrganization",
        input_schema = types.InviteAccountToOrganizationInput,
        output_schema = types.InviteAccountToOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:inviteOrganizationToTransferResponsibility(input, options)
    return self:invokeOperation(input, {
        name = "InviteOrganizationToTransferResponsibility",
        input_schema = types.InviteOrganizationToTransferResponsibilityInput,
        output_schema = types.InviteOrganizationToTransferResponsibilityOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:leaveOrganization(input, options)
    return self:invokeOperation(input, {
        name = "LeaveOrganization",
        input_schema = types.LeaveOrganizationInput,
        output_schema = types.LeaveOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListAccounts",
        input_schema = types.ListAccountsInput,
        output_schema = types.ListAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountsForParent(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountsForParent",
        input_schema = types.ListAccountsForParentInput,
        output_schema = types.ListAccountsForParentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccountsWithInvalidEffectivePolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListAccountsWithInvalidEffectivePolicy",
        input_schema = types.ListAccountsWithInvalidEffectivePolicyInput,
        output_schema = types.ListAccountsWithInvalidEffectivePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAWSServiceAccessForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListAWSServiceAccessForOrganization",
        input_schema = types.ListAWSServiceAccessForOrganizationInput,
        output_schema = types.ListAWSServiceAccessForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChildren(input, options)
    return self:invokeOperation(input, {
        name = "ListChildren",
        input_schema = types.ListChildrenInput,
        output_schema = types.ListChildrenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCreateAccountStatus(input, options)
    return self:invokeOperation(input, {
        name = "ListCreateAccountStatus",
        input_schema = types.ListCreateAccountStatusInput,
        output_schema = types.ListCreateAccountStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDelegatedAdministrators(input, options)
    return self:invokeOperation(input, {
        name = "ListDelegatedAdministrators",
        input_schema = types.ListDelegatedAdministratorsInput,
        output_schema = types.ListDelegatedAdministratorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDelegatedServicesForAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListDelegatedServicesForAccount",
        input_schema = types.ListDelegatedServicesForAccountInput,
        output_schema = types.ListDelegatedServicesForAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEffectivePolicyValidationErrors(input, options)
    return self:invokeOperation(input, {
        name = "ListEffectivePolicyValidationErrors",
        input_schema = types.ListEffectivePolicyValidationErrorsInput,
        output_schema = types.ListEffectivePolicyValidationErrorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHandshakesForAccount(input, options)
    return self:invokeOperation(input, {
        name = "ListHandshakesForAccount",
        input_schema = types.ListHandshakesForAccountInput,
        output_schema = types.ListHandshakesForAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHandshakesForOrganization(input, options)
    return self:invokeOperation(input, {
        name = "ListHandshakesForOrganization",
        input_schema = types.ListHandshakesForOrganizationInput,
        output_schema = types.ListHandshakesForOrganizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInboundResponsibilityTransfers(input, options)
    return self:invokeOperation(input, {
        name = "ListInboundResponsibilityTransfers",
        input_schema = types.ListInboundResponsibilityTransfersInput,
        output_schema = types.ListInboundResponsibilityTransfersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOrganizationalUnitsForParent(input, options)
    return self:invokeOperation(input, {
        name = "ListOrganizationalUnitsForParent",
        input_schema = types.ListOrganizationalUnitsForParentInput,
        output_schema = types.ListOrganizationalUnitsForParentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listOutboundResponsibilityTransfers(input, options)
    return self:invokeOperation(input, {
        name = "ListOutboundResponsibilityTransfers",
        input_schema = types.ListOutboundResponsibilityTransfersInput,
        output_schema = types.ListOutboundResponsibilityTransfersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listParents(input, options)
    return self:invokeOperation(input, {
        name = "ListParents",
        input_schema = types.ListParentsInput,
        output_schema = types.ListParentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListPolicies",
        input_schema = types.ListPoliciesInput,
        output_schema = types.ListPoliciesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPoliciesForTarget(input, options)
    return self:invokeOperation(input, {
        name = "ListPoliciesForTarget",
        input_schema = types.ListPoliciesForTargetInput,
        output_schema = types.ListPoliciesForTargetOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoots(input, options)
    return self:invokeOperation(input, {
        name = "ListRoots",
        input_schema = types.ListRootsInput,
        output_schema = types.ListRootsOutput,
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
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTargetsForPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetsForPolicy",
        input_schema = types.ListTargetsForPolicyInput,
        output_schema = types.ListTargetsForPolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:moveAccount(input, options)
    return self:invokeOperation(input, {
        name = "MoveAccount",
        input_schema = types.MoveAccountInput,
        output_schema = types.MoveAccountOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerDelegatedAdministrator(input, options)
    return self:invokeOperation(input, {
        name = "RegisterDelegatedAdministrator",
        input_schema = types.RegisterDelegatedAdministratorInput,
        output_schema = types.RegisterDelegatedAdministratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeAccountFromOrganization(input, options)
    return self:invokeOperation(input, {
        name = "RemoveAccountFromOrganization",
        input_schema = types.RemoveAccountFromOrganizationInput,
        output_schema = types.RemoveAccountFromOrganizationOutput,
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
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateResponsibilityTransfer(input, options)
    return self:invokeOperation(input, {
        name = "TerminateResponsibilityTransfer",
        input_schema = types.TerminateResponsibilityTransferInput,
        output_schema = types.TerminateResponsibilityTransferOutput,
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
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateOrganizationalUnit(input, options)
    return self:invokeOperation(input, {
        name = "UpdateOrganizationalUnit",
        input_schema = types.UpdateOrganizationalUnitInput,
        output_schema = types.UpdateOrganizationalUnitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePolicy",
        input_schema = types.UpdatePolicyInput,
        output_schema = types.UpdatePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResponsibilityTransfer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResponsibilityTransfer",
        input_schema = types.UpdateResponsibilityTransferInput,
        output_schema = types.UpdateResponsibilityTransferOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
