local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53recoverycontrolconfig.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("route53recoverycontrolconfig.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "Route53RecoveryControlConfig"
    cfg.signing_name = "route53-recovery-control-config"
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

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/cluster",
    }, options)
end

function Client:createControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "CreateControlPanel",
        input_schema = types.CreateControlPanelInput,
        output_schema = types.CreateControlPanelOutput,
        http_method = "POST",
        http_path = "/controlpanel",
    }, options)
end

function Client:createRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoutingControl",
        input_schema = types.CreateRoutingControlInput,
        output_schema = types.CreateRoutingControlOutput,
        http_method = "POST",
        http_path = "/routingcontrol",
    }, options)
end

function Client:createSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSafetyRule",
        input_schema = types.CreateSafetyRuleInput,
        output_schema = types.CreateSafetyRuleOutput,
        http_method = "POST",
        http_path = "/safetyrule",
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
        http_method = "DELETE",
        http_path = "/cluster/{ClusterArn}",
    }, options)
end

function Client:deleteControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "DeleteControlPanel",
        input_schema = types.DeleteControlPanelInput,
        output_schema = types.DeleteControlPanelOutput,
        http_method = "DELETE",
        http_path = "/controlpanel/{ControlPanelArn}",
    }, options)
end

function Client:deleteRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoutingControl",
        input_schema = types.DeleteRoutingControlInput,
        output_schema = types.DeleteRoutingControlOutput,
        http_method = "DELETE",
        http_path = "/routingcontrol/{RoutingControlArn}",
    }, options)
end

function Client:deleteSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSafetyRule",
        input_schema = types.DeleteSafetyRuleInput,
        output_schema = types.DeleteSafetyRuleOutput,
        http_method = "DELETE",
        http_path = "/safetyrule/{SafetyRuleArn}",
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = types.DescribeClusterInput,
        output_schema = types.DescribeClusterOutput,
        http_method = "GET",
        http_path = "/cluster/{ClusterArn}",
    }, options)
end

function Client:describeControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeControlPanel",
        input_schema = types.DescribeControlPanelInput,
        output_schema = types.DescribeControlPanelOutput,
        http_method = "GET",
        http_path = "/controlpanel/{ControlPanelArn}",
    }, options)
end

function Client:describeRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoutingControl",
        input_schema = types.DescribeRoutingControlInput,
        output_schema = types.DescribeRoutingControlOutput,
        http_method = "GET",
        http_path = "/routingcontrol/{RoutingControlArn}",
    }, options)
end

function Client:describeSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSafetyRule",
        input_schema = types.DescribeSafetyRuleInput,
        output_schema = types.DescribeSafetyRuleOutput,
        http_method = "GET",
        http_path = "/safetyrule/{SafetyRuleArn}",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resourcePolicy/{ResourceArn}",
    }, options)
end

function Client:listAssociatedRoute53HealthChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedRoute53HealthChecks",
        input_schema = types.ListAssociatedRoute53HealthChecksInput,
        output_schema = types.ListAssociatedRoute53HealthChecksOutput,
        http_method = "GET",
        http_path = "/routingcontrol/{RoutingControlArn}/associatedRoute53HealthChecks",
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "GET",
        http_path = "/cluster",
    }, options)
end

function Client:listControlPanels(input, options)
    return self:invokeOperation(input, {
        name = "ListControlPanels",
        input_schema = types.ListControlPanelsInput,
        output_schema = types.ListControlPanelsOutput,
        http_method = "GET",
        http_path = "/controlpanels",
    }, options)
end

function Client:listRoutingControls(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingControls",
        input_schema = types.ListRoutingControlsInput,
        output_schema = types.ListRoutingControlsOutput,
        http_method = "GET",
        http_path = "/controlpanel/{ControlPanelArn}/routingcontrols",
    }, options)
end

function Client:listSafetyRules(input, options)
    return self:invokeOperation(input, {
        name = "ListSafetyRules",
        input_schema = types.ListSafetyRulesInput,
        output_schema = types.ListSafetyRulesOutput,
        http_method = "GET",
        http_path = "/controlpanel/{ControlPanelArn}/safetyrules",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{ResourceArn}",
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "PUT",
        http_path = "/cluster",
    }, options)
end

function Client:updateControlPanel(input, options)
    return self:invokeOperation(input, {
        name = "UpdateControlPanel",
        input_schema = types.UpdateControlPanelInput,
        output_schema = types.UpdateControlPanelOutput,
        http_method = "PUT",
        http_path = "/controlpanel",
    }, options)
end

function Client:updateRoutingControl(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingControl",
        input_schema = types.UpdateRoutingControlInput,
        output_schema = types.UpdateRoutingControlOutput,
        http_method = "PUT",
        http_path = "/routingcontrol",
    }, options)
end

function Client:updateSafetyRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSafetyRule",
        input_schema = types.UpdateSafetyRuleInput,
        output_schema = types.UpdateSafetyRuleOutput,
        http_method = "PUT",
        http_path = "/safetyrule",
    }, options)
end

return M
