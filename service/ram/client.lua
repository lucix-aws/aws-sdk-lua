local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("ram.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("ram.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonResourceSharing"
    cfg.signing_name = "amazonresourcesharing"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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

function Client:acceptResourceShareInvitation(input, options)
    return self:invokeOperation(input, {
        name = "AcceptResourceShareInvitation",
        input_schema = types.AcceptResourceShareInvitationInput,
        output_schema = types.AcceptResourceShareInvitationOutput,
        http_method = "POST",
        http_path = "/acceptresourceshareinvitation",
    }, options)
end

function Client:associateResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResourceShare",
        input_schema = types.AssociateResourceShareInput,
        output_schema = types.AssociateResourceShareOutput,
        http_method = "POST",
        http_path = "/associateresourceshare",
    }, options)
end

function Client:associateResourceSharePermission(input, options)
    return self:invokeOperation(input, {
        name = "AssociateResourceSharePermission",
        input_schema = types.AssociateResourceSharePermissionInput,
        output_schema = types.AssociateResourceSharePermissionOutput,
        http_method = "POST",
        http_path = "/associateresourcesharepermission",
    }, options)
end

function Client:createPermission(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermission",
        input_schema = types.CreatePermissionInput,
        output_schema = types.CreatePermissionOutput,
        http_method = "POST",
        http_path = "/createpermission",
    }, options)
end

function Client:createPermissionVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreatePermissionVersion",
        input_schema = types.CreatePermissionVersionInput,
        output_schema = types.CreatePermissionVersionOutput,
        http_method = "POST",
        http_path = "/createpermissionversion",
    }, options)
end

function Client:createResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceShare",
        input_schema = types.CreateResourceShareInput,
        output_schema = types.CreateResourceShareOutput,
        http_method = "POST",
        http_path = "/createresourceshare",
    }, options)
end

function Client:deletePermission(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermission",
        input_schema = types.DeletePermissionInput,
        output_schema = types.DeletePermissionOutput,
        http_method = "DELETE",
        http_path = "/deletepermission",
    }, options)
end

function Client:deletePermissionVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeletePermissionVersion",
        input_schema = types.DeletePermissionVersionInput,
        output_schema = types.DeletePermissionVersionOutput,
        http_method = "DELETE",
        http_path = "/deletepermissionversion",
    }, options)
end

function Client:deleteResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceShare",
        input_schema = types.DeleteResourceShareInput,
        output_schema = types.DeleteResourceShareOutput,
        http_method = "DELETE",
        http_path = "/deleteresourceshare",
    }, options)
end

function Client:disassociateResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResourceShare",
        input_schema = types.DisassociateResourceShareInput,
        output_schema = types.DisassociateResourceShareOutput,
        http_method = "POST",
        http_path = "/disassociateresourceshare",
    }, options)
end

function Client:disassociateResourceSharePermission(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateResourceSharePermission",
        input_schema = types.DisassociateResourceSharePermissionInput,
        output_schema = types.DisassociateResourceSharePermissionOutput,
        http_method = "POST",
        http_path = "/disassociateresourcesharepermission",
    }, options)
end

function Client:enableSharingWithAwsOrganization(input, options)
    return self:invokeOperation(input, {
        name = "EnableSharingWithAwsOrganization",
        input_schema = types.EnableSharingWithAwsOrganizationInput,
        output_schema = types.EnableSharingWithAwsOrganizationOutput,
        http_method = "POST",
        http_path = "/enablesharingwithawsorganization",
    }, options)
end

function Client:getPermission(input, options)
    return self:invokeOperation(input, {
        name = "GetPermission",
        input_schema = types.GetPermissionInput,
        output_schema = types.GetPermissionOutput,
        http_method = "POST",
        http_path = "/getpermission",
    }, options)
end

function Client:getResourcePolicies(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicies",
        input_schema = types.GetResourcePoliciesInput,
        output_schema = types.GetResourcePoliciesOutput,
        http_method = "POST",
        http_path = "/getresourcepolicies",
    }, options)
end

function Client:getResourceShareAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceShareAssociations",
        input_schema = types.GetResourceShareAssociationsInput,
        output_schema = types.GetResourceShareAssociationsOutput,
        http_method = "POST",
        http_path = "/getresourceshareassociations",
    }, options)
end

function Client:getResourceShareInvitations(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceShareInvitations",
        input_schema = types.GetResourceShareInvitationsInput,
        output_schema = types.GetResourceShareInvitationsOutput,
        http_method = "POST",
        http_path = "/getresourceshareinvitations",
    }, options)
end

function Client:getResourceShares(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceShares",
        input_schema = types.GetResourceSharesInput,
        output_schema = types.GetResourceSharesOutput,
        http_method = "POST",
        http_path = "/getresourceshares",
    }, options)
end

function Client:listPendingInvitationResources(input, options)
    return self:invokeOperation(input, {
        name = "ListPendingInvitationResources",
        input_schema = types.ListPendingInvitationResourcesInput,
        output_schema = types.ListPendingInvitationResourcesOutput,
        http_method = "POST",
        http_path = "/listpendinginvitationresources",
    }, options)
end

function Client:listPermissionAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionAssociations",
        input_schema = types.ListPermissionAssociationsInput,
        output_schema = types.ListPermissionAssociationsOutput,
        http_method = "POST",
        http_path = "/listpermissionassociations",
    }, options)
end

function Client:listPermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissions",
        input_schema = types.ListPermissionsInput,
        output_schema = types.ListPermissionsOutput,
        http_method = "POST",
        http_path = "/listpermissions",
    }, options)
end

function Client:listPermissionVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListPermissionVersions",
        input_schema = types.ListPermissionVersionsInput,
        output_schema = types.ListPermissionVersionsOutput,
        http_method = "POST",
        http_path = "/listpermissionversions",
    }, options)
end

function Client:listPrincipals(input, options)
    return self:invokeOperation(input, {
        name = "ListPrincipals",
        input_schema = types.ListPrincipalsInput,
        output_schema = types.ListPrincipalsOutput,
        http_method = "POST",
        http_path = "/listprincipals",
    }, options)
end

function Client:listReplacePermissionAssociationsWork(input, options)
    return self:invokeOperation(input, {
        name = "ListReplacePermissionAssociationsWork",
        input_schema = types.ListReplacePermissionAssociationsWorkInput,
        output_schema = types.ListReplacePermissionAssociationsWorkOutput,
        http_method = "POST",
        http_path = "/listreplacepermissionassociationswork",
    }, options)
end

function Client:listResources(input, options)
    return self:invokeOperation(input, {
        name = "ListResources",
        input_schema = types.ListResourcesInput,
        output_schema = types.ListResourcesOutput,
        http_method = "POST",
        http_path = "/listresources",
    }, options)
end

function Client:listResourceSharePermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceSharePermissions",
        input_schema = types.ListResourceSharePermissionsInput,
        output_schema = types.ListResourceSharePermissionsOutput,
        http_method = "POST",
        http_path = "/listresourcesharepermissions",
    }, options)
end

function Client:listResourceTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceTypes",
        input_schema = types.ListResourceTypesInput,
        output_schema = types.ListResourceTypesOutput,
        http_method = "POST",
        http_path = "/listresourcetypes",
    }, options)
end

function Client:listSourceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListSourceAssociations",
        input_schema = types.ListSourceAssociationsInput,
        output_schema = types.ListSourceAssociationsOutput,
        http_method = "POST",
        http_path = "/listsourceassociations",
    }, options)
end

function Client:promotePermissionCreatedFromPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PromotePermissionCreatedFromPolicy",
        input_schema = types.PromotePermissionCreatedFromPolicyInput,
        output_schema = types.PromotePermissionCreatedFromPolicyOutput,
        http_method = "POST",
        http_path = "/promotepermissioncreatedfrompolicy",
    }, options)
end

function Client:promoteResourceShareCreatedFromPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PromoteResourceShareCreatedFromPolicy",
        input_schema = types.PromoteResourceShareCreatedFromPolicyInput,
        output_schema = types.PromoteResourceShareCreatedFromPolicyOutput,
        http_method = "POST",
        http_path = "/promoteresourcesharecreatedfrompolicy",
    }, options)
end

function Client:rejectResourceShareInvitation(input, options)
    return self:invokeOperation(input, {
        name = "RejectResourceShareInvitation",
        input_schema = types.RejectResourceShareInvitationInput,
        output_schema = types.RejectResourceShareInvitationOutput,
        http_method = "POST",
        http_path = "/rejectresourceshareinvitation",
    }, options)
end

function Client:replacePermissionAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ReplacePermissionAssociations",
        input_schema = types.ReplacePermissionAssociationsInput,
        output_schema = types.ReplacePermissionAssociationsOutput,
        http_method = "POST",
        http_path = "/replacepermissionassociations",
    }, options)
end

function Client:setDefaultPermissionVersion(input, options)
    return self:invokeOperation(input, {
        name = "SetDefaultPermissionVersion",
        input_schema = types.SetDefaultPermissionVersionInput,
        output_schema = types.SetDefaultPermissionVersionOutput,
        http_method = "POST",
        http_path = "/setdefaultpermissionversion",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tagresource",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/untagresource",
    }, options)
end

function Client:updateResourceShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceShare",
        input_schema = types.UpdateResourceShareInput,
        output_schema = types.UpdateResourceShareOutput,
        http_method = "POST",
        http_path = "/updateresourceshare",
    }, options)
end

return M
