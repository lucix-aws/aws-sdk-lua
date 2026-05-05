local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("rtbfabric.endpoint_rules")
local restjson_protocol = require("smithy.protocol.restjson")
local schemas = require("rtbfabric.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RTBFabric"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "rtbfabric", signing_region = cfg.region } }
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

function Client:acceptLink(input, options)
    return self:invokeOperation(input, {
        name = "AcceptLink",
        input_schema = schemas.AcceptLinkInput,
        output_schema = schemas.AcceptLinkOutput,
        http_method = "POST",
        http_path = "/gateway/{gatewayId}/link/{linkId}/accept",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInboundExternalLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateInboundExternalLink",
        input_schema = schemas.CreateInboundExternalLinkInput,
        output_schema = schemas.CreateInboundExternalLinkOutput,
        http_method = "POST",
        http_path = "/responder-gateway/{gatewayId}/inbound-external-link",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateLink",
        input_schema = schemas.CreateLinkInput,
        output_schema = schemas.CreateLinkOutput,
        http_method = "POST",
        http_path = "/gateway/{gatewayId}/create-link",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createOutboundExternalLink(input, options)
    return self:invokeOperation(input, {
        name = "CreateOutboundExternalLink",
        input_schema = schemas.CreateOutboundExternalLinkInput,
        output_schema = schemas.CreateOutboundExternalLinkOutput,
        http_method = "POST",
        http_path = "/requester-gateway/{gatewayId}/outbound-external-link",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRequesterGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateRequesterGateway",
        input_schema = schemas.CreateRequesterGatewayInput,
        output_schema = schemas.CreateRequesterGatewayOutput,
        http_method = "POST",
        http_path = "/requester-gateway",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResponderGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateResponderGateway",
        input_schema = schemas.CreateResponderGatewayInput,
        output_schema = schemas.CreateResponderGatewayOutput,
        http_method = "POST",
        http_path = "/responder-gateway",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInboundExternalLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInboundExternalLink",
        input_schema = schemas.DeleteInboundExternalLinkInput,
        output_schema = schemas.DeleteInboundExternalLinkOutput,
        http_method = "DELETE",
        http_path = "/responder-gateway/{gatewayId}/inbound-external-link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLink",
        input_schema = schemas.DeleteLinkInput,
        output_schema = schemas.DeleteLinkOutput,
        http_method = "DELETE",
        http_path = "/gateway/{gatewayId}/link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteOutboundExternalLink(input, options)
    return self:invokeOperation(input, {
        name = "DeleteOutboundExternalLink",
        input_schema = schemas.DeleteOutboundExternalLinkInput,
        output_schema = schemas.DeleteOutboundExternalLinkOutput,
        http_method = "DELETE",
        http_path = "/requester-gateway/{gatewayId}/outbound-external-link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRequesterGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRequesterGateway",
        input_schema = schemas.DeleteRequesterGatewayInput,
        output_schema = schemas.DeleteRequesterGatewayOutput,
        http_method = "DELETE",
        http_path = "/requester-gateway/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResponderGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResponderGateway",
        input_schema = schemas.DeleteResponderGatewayInput,
        output_schema = schemas.DeleteResponderGatewayOutput,
        http_method = "DELETE",
        http_path = "/responder-gateway/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getInboundExternalLink(input, options)
    return self:invokeOperation(input, {
        name = "GetInboundExternalLink",
        input_schema = schemas.GetInboundExternalLinkInput,
        output_schema = schemas.GetInboundExternalLinkOutput,
        http_method = "GET",
        http_path = "/responder-gateway/{gatewayId}/inbound-external-link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLink(input, options)
    return self:invokeOperation(input, {
        name = "GetLink",
        input_schema = schemas.GetLinkInput,
        output_schema = schemas.GetLinkOutput,
        http_method = "GET",
        http_path = "/gateway/{gatewayId}/link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getOutboundExternalLink(input, options)
    return self:invokeOperation(input, {
        name = "GetOutboundExternalLink",
        input_schema = schemas.GetOutboundExternalLinkInput,
        output_schema = schemas.GetOutboundExternalLinkOutput,
        http_method = "GET",
        http_path = "/requester-gateway/{gatewayId}/outbound-external-link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getRequesterGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetRequesterGateway",
        input_schema = schemas.GetRequesterGatewayInput,
        output_schema = schemas.GetRequesterGatewayOutput,
        http_method = "GET",
        http_path = "/requester-gateway/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResponderGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetResponderGateway",
        input_schema = schemas.GetResponderGatewayInput,
        output_schema = schemas.GetResponderGatewayOutput,
        http_method = "GET",
        http_path = "/responder-gateway/{gatewayId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLinks(input, options)
    return self:invokeOperation(input, {
        name = "ListLinks",
        input_schema = schemas.ListLinksInput,
        output_schema = schemas.ListLinksOutput,
        http_method = "GET",
        http_path = "/gateway/{gatewayId}/links/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRequesterGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListRequesterGateways",
        input_schema = schemas.ListRequesterGatewaysInput,
        output_schema = schemas.ListRequesterGatewaysOutput,
        http_method = "GET",
        http_path = "/requester-gateways",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResponderGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListResponderGateways",
        input_schema = schemas.ListResponderGatewaysInput,
        output_schema = schemas.ListResponderGatewaysOutput,
        http_method = "GET",
        http_path = "/responder-gateways",
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
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectLink(input, options)
    return self:invokeOperation(input, {
        name = "RejectLink",
        input_schema = schemas.RejectLinkInput,
        output_schema = schemas.RejectLinkOutput,
        http_method = "POST",
        http_path = "/gateway/{gatewayId}/link/{linkId}/reject",
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
        http_path = "/tags/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLink(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLink",
        input_schema = schemas.UpdateLinkInput,
        output_schema = schemas.UpdateLinkOutput,
        http_method = "PATCH",
        http_path = "/gateway/{gatewayId}/link/{linkId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLinkModuleFlow(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLinkModuleFlow",
        input_schema = schemas.UpdateLinkModuleFlowInput,
        output_schema = schemas.UpdateLinkModuleFlowOutput,
        http_method = "POST",
        http_path = "/gateway/{gatewayId}/link/{linkId}/module-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRequesterGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRequesterGateway",
        input_schema = schemas.UpdateRequesterGatewayInput,
        output_schema = schemas.UpdateRequesterGatewayOutput,
        http_method = "POST",
        http_path = "/requester-gateway/{gatewayId}/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResponderGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResponderGateway",
        input_schema = schemas.UpdateResponderGatewayInput,
        output_schema = schemas.UpdateResponderGatewayOutput,
        http_method = "POST",
        http_path = "/responder-gateway/{gatewayId}/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
