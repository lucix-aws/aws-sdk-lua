local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ram.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("ram.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonResourceSharing"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "ram", signing_region = cfg.region } }
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

function Client:acceptResourceShareInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptResourceShareInvitation",
        input_schema = schemas.AcceptResourceShareInvitationInput,
        output_schema = schemas.AcceptResourceShareInvitationOutput,
        http_method = "POST",
        http_path = "/acceptresourceshareinvitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResourceShare",
        input_schema = schemas.AssociateResourceShareInput,
        output_schema = schemas.AssociateResourceShareOutput,
        http_method = "POST",
        http_path = "/associateresourceshare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateResourceSharePermission(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResourceSharePermission",
        input_schema = schemas.AssociateResourceSharePermissionInput,
        output_schema = schemas.AssociateResourceSharePermissionOutput,
        http_method = "POST",
        http_path = "/associateresourcesharepermission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPermission(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermission",
        input_schema = schemas.CreatePermissionInput,
        output_schema = schemas.CreatePermissionOutput,
        http_method = "POST",
        http_path = "/createpermission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPermissionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermissionVersion",
        input_schema = schemas.CreatePermissionVersionInput,
        output_schema = schemas.CreatePermissionVersionOutput,
        http_method = "POST",
        http_path = "/createpermissionversion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceShare",
        input_schema = schemas.CreateResourceShareInput,
        output_schema = schemas.CreateResourceShareOutput,
        http_method = "POST",
        http_path = "/createresourceshare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermission(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermission",
        input_schema = schemas.DeletePermissionInput,
        output_schema = schemas.DeletePermissionOutput,
        http_method = "DELETE",
        http_path = "/deletepermission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePermissionVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermissionVersion",
        input_schema = schemas.DeletePermissionVersionInput,
        output_schema = schemas.DeletePermissionVersionOutput,
        http_method = "DELETE",
        http_path = "/deletepermissionversion",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceShare",
        input_schema = schemas.DeleteResourceShareInput,
        output_schema = schemas.DeleteResourceShareOutput,
        http_method = "DELETE",
        http_path = "/deleteresourceshare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResourceShare",
        input_schema = schemas.DisassociateResourceShareInput,
        output_schema = schemas.DisassociateResourceShareOutput,
        http_method = "POST",
        http_path = "/disassociateresourceshare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateResourceSharePermission(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResourceSharePermission",
        input_schema = schemas.DisassociateResourceSharePermissionInput,
        output_schema = schemas.DisassociateResourceSharePermissionOutput,
        http_method = "POST",
        http_path = "/disassociateresourcesharepermission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSharingWithAwsOrganization(input, options)
    return self:invokeOperation(input, {
        name = "EnableSharingWithAwsOrganization",
        input_schema = schemas.EnableSharingWithAwsOrganizationInput,
        output_schema = schemas.EnableSharingWithAwsOrganizationOutput,
        http_method = "POST",
        http_path = "/enablesharingwithawsorganization",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPermission(input, options)
    return self:invokeOperation(input, {
        name = "GetPermission",
        input_schema = schemas.GetPermissionInput,
        output_schema = schemas.GetPermissionOutput,
        http_method = "POST",
        http_path = "/getpermission",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicies",
        input_schema = schemas.GetResourcePoliciesInput,
        output_schema = schemas.GetResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/getresourcepolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceShareAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceShareAssociations",
        input_schema = schemas.GetResourceShareAssociationsInput,
        output_schema = schemas.GetResourceShareAssociationsOutput,
        http_method = "POST",
        http_path = "/getresourceshareassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceShareInvitations(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceShareInvitations",
        input_schema = schemas.GetResourceShareInvitationsInput,
        output_schema = schemas.GetResourceShareInvitationsOutput,
        http_method = "POST",
        http_path = "/getresourceshareinvitations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourceShares(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceShares",
        input_schema = schemas.GetResourceSharesInput,
        output_schema = schemas.GetResourceSharesOutput,
        http_method = "POST",
        http_path = "/getresourceshares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPendingInvitationResources(input, options)
    return self:invokeOperation(input, {
        name = "ListPendingInvitationResources",
        input_schema = schemas.ListPendingInvitationResourcesInput,
        output_schema = schemas.ListPendingInvitationResourcesOutput,
        http_method = "POST",
        http_path = "/listpendinginvitationresources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionAssociations",
        input_schema = schemas.ListPermissionAssociationsInput,
        output_schema = schemas.ListPermissionAssociationsOutput,
        http_method = "POST",
        http_path = "/listpermissionassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissions",
        input_schema = schemas.ListPermissionsInput,
        output_schema = schemas.ListPermissionsOutput,
        http_method = "POST",
        http_path = "/listpermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPermissionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionVersions",
        input_schema = schemas.ListPermissionVersionsInput,
        output_schema = schemas.ListPermissionVersionsOutput,
        http_method = "POST",
        http_path = "/listpermissionversions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrincipals(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipals",
        input_schema = schemas.ListPrincipalsInput,
        output_schema = schemas.ListPrincipalsOutput,
        http_method = "POST",
        http_path = "/listprincipals",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReplacePermissionAssociationsWork(input, options)
    return self:invokeOperation(input, {
        name = "ListReplacePermissionAssociationsWork",
        input_schema = schemas.ListReplacePermissionAssociationsWorkInput,
        output_schema = schemas.ListReplacePermissionAssociationsWorkOutput,
        http_method = "POST",
        http_path = "/listreplacepermissionassociationswork",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResources",
        input_schema = schemas.ListResourcesInput,
        output_schema = schemas.ListResourcesOutput,
        http_method = "POST",
        http_path = "/listresources",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceSharePermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSharePermissions",
        input_schema = schemas.ListResourceSharePermissionsInput,
        output_schema = schemas.ListResourceSharePermissionsOutput,
        http_method = "POST",
        http_path = "/listresourcesharepermissions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTypes",
        input_schema = schemas.ListResourceTypesInput,
        output_schema = schemas.ListResourceTypesOutput,
        http_method = "POST",
        http_path = "/listresourcetypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSourceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceAssociations",
        input_schema = schemas.ListSourceAssociationsInput,
        output_schema = schemas.ListSourceAssociationsOutput,
        http_method = "POST",
        http_path = "/listsourceassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:promotePermissionCreatedFromPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PromotePermissionCreatedFromPolicy",
        input_schema = schemas.PromotePermissionCreatedFromPolicyInput,
        output_schema = schemas.PromotePermissionCreatedFromPolicyOutput,
        http_method = "POST",
        http_path = "/promotepermissioncreatedfrompolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:promoteResourceShareCreatedFromPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PromoteResourceShareCreatedFromPolicy",
        input_schema = schemas.PromoteResourceShareCreatedFromPolicyInput,
        output_schema = schemas.PromoteResourceShareCreatedFromPolicyOutput,
        http_method = "POST",
        http_path = "/promoteresourcesharecreatedfrompolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectResourceShareInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectResourceShareInvitation",
        input_schema = schemas.RejectResourceShareInvitationInput,
        output_schema = schemas.RejectResourceShareInvitationOutput,
        http_method = "POST",
        http_path = "/rejectresourceshareinvitation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replacePermissionAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ReplacePermissionAssociations",
        input_schema = schemas.ReplacePermissionAssociationsInput,
        output_schema = schemas.ReplacePermissionAssociationsOutput,
        http_method = "POST",
        http_path = "/replacepermissionassociations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:setDefaultPermissionVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultPermissionVersion",
        input_schema = schemas.SetDefaultPermissionVersionInput,
        output_schema = schemas.SetDefaultPermissionVersionOutput,
        http_method = "POST",
        http_path = "/setdefaultpermissionversion",
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
        http_path = "/tagresource",
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
        http_path = "/untagresource",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceShare",
        input_schema = schemas.UpdateResourceShareInput,
        output_schema = schemas.UpdateResourceShareOutput,
        http_method = "POST",
        http_path = "/updateresourceshare",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
