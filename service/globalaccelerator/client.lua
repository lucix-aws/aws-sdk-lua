local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("globalaccelerator.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("globalaccelerator.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "GlobalAccelerator_V20180706"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "globalaccelerator", signing_region = cfg.region } }
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

function Client:addCustomRoutingEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "AddCustomRoutingEndpoints",
        input_schema = types.AddCustomRoutingEndpointsInput,
        output_schema = types.AddCustomRoutingEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "AddEndpoints",
        input_schema = types.AddEndpointsInput,
        output_schema = types.AddEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:advertiseByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "AdvertiseByoipCidr",
        input_schema = types.AdvertiseByoipCidrInput,
        output_schema = types.AdvertiseByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:allowCustomRoutingTraffic(input, options)
    return self:invokeOperation(input, {
        name = "AllowCustomRoutingTraffic",
        input_schema = types.AllowCustomRoutingTrafficInput,
        output_schema = types.AllowCustomRoutingTrafficOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccelerator",
        input_schema = types.CreateAcceleratorInput,
        output_schema = types.CreateAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCrossAccountAttachment(input, options)
    return self:invokeOperation(input, {
        name = "CreateCrossAccountAttachment",
        input_schema = types.CreateCrossAccountAttachmentInput,
        output_schema = types.CreateCrossAccountAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomRoutingAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomRoutingAccelerator",
        input_schema = types.CreateCustomRoutingAcceleratorInput,
        output_schema = types.CreateCustomRoutingAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomRoutingEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomRoutingEndpointGroup",
        input_schema = types.CreateCustomRoutingEndpointGroupInput,
        output_schema = types.CreateCustomRoutingEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomRoutingListener(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomRoutingListener",
        input_schema = types.CreateCustomRoutingListenerInput,
        output_schema = types.CreateCustomRoutingListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpointGroup",
        input_schema = types.CreateEndpointGroupInput,
        output_schema = types.CreateEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createListener(input, options)
    return self:invokeOperation(input, {
        name = "CreateListener",
        input_schema = types.CreateListenerInput,
        output_schema = types.CreateListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccelerator",
        input_schema = types.DeleteAcceleratorInput,
        output_schema = types.DeleteAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCrossAccountAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCrossAccountAttachment",
        input_schema = types.DeleteCrossAccountAttachmentInput,
        output_schema = types.DeleteCrossAccountAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomRoutingAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomRoutingAccelerator",
        input_schema = types.DeleteCustomRoutingAcceleratorInput,
        output_schema = types.DeleteCustomRoutingAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomRoutingEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomRoutingEndpointGroup",
        input_schema = types.DeleteCustomRoutingEndpointGroupInput,
        output_schema = types.DeleteCustomRoutingEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomRoutingListener(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomRoutingListener",
        input_schema = types.DeleteCustomRoutingListenerInput,
        output_schema = types.DeleteCustomRoutingListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpointGroup",
        input_schema = types.DeleteEndpointGroupInput,
        output_schema = types.DeleteEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteListener(input, options)
    return self:invokeOperation(input, {
        name = "DeleteListener",
        input_schema = types.DeleteListenerInput,
        output_schema = types.DeleteListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:denyCustomRoutingTraffic(input, options)
    return self:invokeOperation(input, {
        name = "DenyCustomRoutingTraffic",
        input_schema = types.DenyCustomRoutingTrafficInput,
        output_schema = types.DenyCustomRoutingTrafficOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deprovisionByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "DeprovisionByoipCidr",
        input_schema = types.DeprovisionByoipCidrInput,
        output_schema = types.DeprovisionByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccelerator",
        input_schema = types.DescribeAcceleratorInput,
        output_schema = types.DescribeAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAcceleratorAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAcceleratorAttributes",
        input_schema = types.DescribeAcceleratorAttributesInput,
        output_schema = types.DescribeAcceleratorAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCrossAccountAttachment(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCrossAccountAttachment",
        input_schema = types.DescribeCrossAccountAttachmentInput,
        output_schema = types.DescribeCrossAccountAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomRoutingAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomRoutingAccelerator",
        input_schema = types.DescribeCustomRoutingAcceleratorInput,
        output_schema = types.DescribeCustomRoutingAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomRoutingAcceleratorAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomRoutingAcceleratorAttributes",
        input_schema = types.DescribeCustomRoutingAcceleratorAttributesInput,
        output_schema = types.DescribeCustomRoutingAcceleratorAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomRoutingEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomRoutingEndpointGroup",
        input_schema = types.DescribeCustomRoutingEndpointGroupInput,
        output_schema = types.DescribeCustomRoutingEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomRoutingListener(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomRoutingListener",
        input_schema = types.DescribeCustomRoutingListenerInput,
        output_schema = types.DescribeCustomRoutingListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpointGroup",
        input_schema = types.DescribeEndpointGroupInput,
        output_schema = types.DescribeEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeListener(input, options)
    return self:invokeOperation(input, {
        name = "DescribeListener",
        input_schema = types.DescribeListenerInput,
        output_schema = types.DescribeListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAccelerators(input, options)
    return self:invokeOperation(input, {
        name = "ListAccelerators",
        input_schema = types.ListAcceleratorsInput,
        output_schema = types.ListAcceleratorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listByoipCidrs(input, options)
    return self:invokeOperation(input, {
        name = "ListByoipCidrs",
        input_schema = types.ListByoipCidrsInput,
        output_schema = types.ListByoipCidrsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCrossAccountAttachments(input, options)
    return self:invokeOperation(input, {
        name = "ListCrossAccountAttachments",
        input_schema = types.ListCrossAccountAttachmentsInput,
        output_schema = types.ListCrossAccountAttachmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCrossAccountResourceAccounts(input, options)
    return self:invokeOperation(input, {
        name = "ListCrossAccountResourceAccounts",
        input_schema = types.ListCrossAccountResourceAccountsInput,
        output_schema = types.ListCrossAccountResourceAccountsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCrossAccountResources(input, options)
    return self:invokeOperation(input, {
        name = "ListCrossAccountResources",
        input_schema = types.ListCrossAccountResourcesInput,
        output_schema = types.ListCrossAccountResourcesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomRoutingAccelerators(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomRoutingAccelerators",
        input_schema = types.ListCustomRoutingAcceleratorsInput,
        output_schema = types.ListCustomRoutingAcceleratorsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomRoutingEndpointGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomRoutingEndpointGroups",
        input_schema = types.ListCustomRoutingEndpointGroupsInput,
        output_schema = types.ListCustomRoutingEndpointGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomRoutingListeners(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomRoutingListeners",
        input_schema = types.ListCustomRoutingListenersInput,
        output_schema = types.ListCustomRoutingListenersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomRoutingPortMappings(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomRoutingPortMappings",
        input_schema = types.ListCustomRoutingPortMappingsInput,
        output_schema = types.ListCustomRoutingPortMappingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomRoutingPortMappingsByDestination(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomRoutingPortMappingsByDestination",
        input_schema = types.ListCustomRoutingPortMappingsByDestinationInput,
        output_schema = types.ListCustomRoutingPortMappingsByDestinationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEndpointGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListEndpointGroups",
        input_schema = types.ListEndpointGroupsInput,
        output_schema = types.ListEndpointGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listListeners(input, options)
    return self:invokeOperation(input, {
        name = "ListListeners",
        input_schema = types.ListListenersInput,
        output_schema = types.ListListenersOutput,
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

function Client:provisionByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "ProvisionByoipCidr",
        input_schema = types.ProvisionByoipCidrInput,
        output_schema = types.ProvisionByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeCustomRoutingEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "RemoveCustomRoutingEndpoints",
        input_schema = types.RemoveCustomRoutingEndpointsInput,
        output_schema = types.RemoveCustomRoutingEndpointsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:removeEndpoints(input, options)
    return self:invokeOperation(input, {
        name = "RemoveEndpoints",
        input_schema = types.RemoveEndpointsInput,
        output_schema = types.RemoveEndpointsOutput,
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

function Client:updateAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccelerator",
        input_schema = types.UpdateAcceleratorInput,
        output_schema = types.UpdateAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAcceleratorAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAcceleratorAttributes",
        input_schema = types.UpdateAcceleratorAttributesInput,
        output_schema = types.UpdateAcceleratorAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCrossAccountAttachment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCrossAccountAttachment",
        input_schema = types.UpdateCrossAccountAttachmentInput,
        output_schema = types.UpdateCrossAccountAttachmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomRoutingAccelerator(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomRoutingAccelerator",
        input_schema = types.UpdateCustomRoutingAcceleratorInput,
        output_schema = types.UpdateCustomRoutingAcceleratorOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomRoutingAcceleratorAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomRoutingAcceleratorAttributes",
        input_schema = types.UpdateCustomRoutingAcceleratorAttributesInput,
        output_schema = types.UpdateCustomRoutingAcceleratorAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCustomRoutingListener(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCustomRoutingListener",
        input_schema = types.UpdateCustomRoutingListenerInput,
        output_schema = types.UpdateCustomRoutingListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEndpointGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEndpointGroup",
        input_schema = types.UpdateEndpointGroupInput,
        output_schema = types.UpdateEndpointGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateListener(input, options)
    return self:invokeOperation(input, {
        name = "UpdateListener",
        input_schema = types.UpdateListenerInput,
        output_schema = types.UpdateListenerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:withdrawByoipCidr(input, options)
    return self:invokeOperation(input, {
        name = "WithdrawByoipCidr",
        input_schema = types.WithdrawByoipCidrInput,
        output_schema = types.WithdrawByoipCidrOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
