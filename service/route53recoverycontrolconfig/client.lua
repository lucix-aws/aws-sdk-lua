local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53recoverycontrolconfig.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("route53recoverycontrolconfig.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53RecoveryControlConfig"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53-recovery-control-config", signing_region = cfg.region } }
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

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
        http_method = "POST",
        http_path = "/cluster",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "CreateControlPanel",
        input_schema = schemas.CreateControlPanelInput,
        output_schema = schemas.CreateControlPanelOutput,
        http_method = "POST",
        http_path = "/controlpanel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoutingControl",
        input_schema = schemas.CreateRoutingControlInput,
        output_schema = schemas.CreateRoutingControlOutput,
        http_method = "POST",
        http_path = "/routingcontrol",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSafetyRule",
        input_schema = schemas.CreateSafetyRuleInput,
        output_schema = schemas.CreateSafetyRuleOutput,
        http_method = "POST",
        http_path = "/safetyrule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/cluster/{ClusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteControlPanel",
        input_schema = schemas.DeleteControlPanelInput,
        output_schema = schemas.DeleteControlPanelOutput,
        http_method = "DELETE",
        http_path = "/controlpanel/{ControlPanelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoutingControl",
        input_schema = schemas.DeleteRoutingControlInput,
        output_schema = schemas.DeleteRoutingControlOutput,
        http_method = "DELETE",
        http_path = "/routingcontrol/{RoutingControlArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSafetyRule",
        input_schema = schemas.DeleteSafetyRuleInput,
        output_schema = schemas.DeleteSafetyRuleOutput,
        http_method = "DELETE",
        http_path = "/safetyrule/{SafetyRuleArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = schemas.DescribeClusterInput,
        output_schema = schemas.DescribeClusterOutput,
        http_method = "GET",
        http_path = "/cluster/{ClusterArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeControlPanel",
        input_schema = schemas.DescribeControlPanelInput,
        output_schema = schemas.DescribeControlPanelOutput,
        http_method = "GET",
        http_path = "/controlpanel/{ControlPanelArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoutingControl",
        input_schema = schemas.DescribeRoutingControlInput,
        output_schema = schemas.DescribeRoutingControlOutput,
        http_method = "GET",
        http_path = "/routingcontrol/{RoutingControlArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSafetyRule",
        input_schema = schemas.DescribeSafetyRuleInput,
        output_schema = schemas.DescribeSafetyRuleOutput,
        http_method = "GET",
        http_path = "/safetyrule/{SafetyRuleArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resourcePolicy/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedRoute53HealthChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedRoute53HealthChecks",
        input_schema = schemas.ListAssociatedRoute53HealthChecksInput,
        output_schema = schemas.ListAssociatedRoute53HealthChecksOutput,
        http_method = "GET",
        http_path = "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
        http_method = "GET",
        http_path = "/cluster",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listControlPanels(input, options)
    return self:invokeOperation(input, {
        name = "ListControlPanels",
        input_schema = schemas.ListControlPanelsInput,
        output_schema = schemas.ListControlPanelsOutput,
        http_method = "GET",
        http_path = "/controlpanels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoutingControls(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingControls",
        input_schema = schemas.ListRoutingControlsInput,
        output_schema = schemas.ListRoutingControlsOutput,
        http_method = "GET",
        http_path = "/controlpanel/{ControlPanelArn}/routingcontrols",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSafetyRules(input, options)
    return self:invokeOperation(input, {
        name = "ListSafetyRules",
        input_schema = schemas.ListSafetyRulesInput,
        output_schema = schemas.ListSafetyRulesOutput,
        http_method = "GET",
        http_path = "/controlpanel/{ControlPanelArn}/safetyrules",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
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
        http_path = "/tags/{ResourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
        http_method = "PUT",
        http_path = "/cluster",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateControlPanel",
        input_schema = schemas.UpdateControlPanelInput,
        output_schema = schemas.UpdateControlPanelOutput,
        http_method = "PUT",
        http_path = "/controlpanel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingControl",
        input_schema = schemas.UpdateRoutingControlInput,
        output_schema = schemas.UpdateRoutingControlOutput,
        http_method = "PUT",
        http_path = "/routingcontrol",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSafetyRule",
        input_schema = schemas.UpdateSafetyRuleInput,
        output_schema = schemas.UpdateSafetyRuleOutput,
        http_method = "PUT",
        http_path = "/safetyrule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
