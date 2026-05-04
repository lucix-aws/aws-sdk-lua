local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("vpclattice.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("vpclattice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MercuryControlPlane"
    cfg.signing_name = "mercurycontrolplane"
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

function Client:batchUpdateRule(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateRule",
        input_schema = types.BatchUpdateRuleInput,
        output_schema = types.BatchUpdateRuleOutput,
        http_method = "PATCH",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules",
    }, options)
end

function Client:createAccessLogSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateAccessLogSubscription",
        input_schema = types.CreateAccessLogSubscriptionInput,
        output_schema = types.CreateAccessLogSubscriptionOutput,
        http_method = "POST",
        http_path = "/accesslogsubscriptions",
    }, options)
end

function Client:createListener(input, options)
    return self:invokeOperation(input, {
        name = "CreateListener",
        input_schema = types.CreateListenerInput,
        output_schema = types.CreateListenerOutput,
        http_method = "POST",
        http_path = "/services/{serviceIdentifier}/listeners",
    }, options)
end

function Client:createResourceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceConfiguration",
        input_schema = types.CreateResourceConfigurationInput,
        output_schema = types.CreateResourceConfigurationOutput,
        http_method = "POST",
        http_path = "/resourceconfigurations",
    }, options)
end

function Client:createResourceGateway(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourceGateway",
        input_schema = types.CreateResourceGatewayInput,
        output_schema = types.CreateResourceGatewayOutput,
        http_method = "POST",
        http_path = "/resourcegateways",
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = types.CreateRuleInput,
        output_schema = types.CreateRuleOutput,
        http_method = "POST",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules",
    }, options)
end

function Client:createService(input, options)
    return self:invokeOperation(input, {
        name = "CreateService",
        input_schema = types.CreateServiceInput,
        output_schema = types.CreateServiceOutput,
        http_method = "POST",
        http_path = "/services",
    }, options)
end

function Client:createServiceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceNetwork",
        input_schema = types.CreateServiceNetworkInput,
        output_schema = types.CreateServiceNetworkOutput,
        http_method = "POST",
        http_path = "/servicenetworks",
    }, options)
end

function Client:createServiceNetworkResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceNetworkResourceAssociation",
        input_schema = types.CreateServiceNetworkResourceAssociationInput,
        output_schema = types.CreateServiceNetworkResourceAssociationOutput,
        http_method = "POST",
        http_path = "/servicenetworkresourceassociations",
    }, options)
end

function Client:createServiceNetworkServiceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceNetworkServiceAssociation",
        input_schema = types.CreateServiceNetworkServiceAssociationInput,
        output_schema = types.CreateServiceNetworkServiceAssociationOutput,
        http_method = "POST",
        http_path = "/servicenetworkserviceassociations",
    }, options)
end

function Client:createServiceNetworkVpcAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateServiceNetworkVpcAssociation",
        input_schema = types.CreateServiceNetworkVpcAssociationInput,
        output_schema = types.CreateServiceNetworkVpcAssociationOutput,
        http_method = "POST",
        http_path = "/servicenetworkvpcassociations",
    }, options)
end

function Client:createTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateTargetGroup",
        input_schema = types.CreateTargetGroupInput,
        output_schema = types.CreateTargetGroupOutput,
        http_method = "POST",
        http_path = "/targetgroups",
    }, options)
end

function Client:deleteAccessLogSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAccessLogSubscription",
        input_schema = types.DeleteAccessLogSubscriptionInput,
        output_schema = types.DeleteAccessLogSubscriptionOutput,
        http_method = "DELETE",
        http_path = "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}",
    }, options)
end

function Client:deleteAuthPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthPolicy",
        input_schema = types.DeleteAuthPolicyInput,
        output_schema = types.DeleteAuthPolicyOutput,
        http_method = "DELETE",
        http_path = "/authpolicy/{resourceIdentifier}",
    }, options)
end

function Client:deleteDomainVerification(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomainVerification",
        input_schema = types.DeleteDomainVerificationInput,
        output_schema = types.DeleteDomainVerificationOutput,
        http_method = "DELETE",
        http_path = "/domainverifications/{domainVerificationIdentifier}",
    }, options)
end

function Client:deleteListener(input, options)
    return self:invokeOperation(input, {
        name = "DeleteListener",
        input_schema = types.DeleteListenerInput,
        output_schema = types.DeleteListenerOutput,
        http_method = "DELETE",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}",
    }, options)
end

function Client:deleteResourceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceConfiguration",
        input_schema = types.DeleteResourceConfigurationInput,
        output_schema = types.DeleteResourceConfigurationOutput,
        http_method = "DELETE",
        http_path = "/resourceconfigurations/{resourceConfigurationIdentifier}",
    }, options)
end

function Client:deleteResourceEndpointAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceEndpointAssociation",
        input_schema = types.DeleteResourceEndpointAssociationInput,
        output_schema = types.DeleteResourceEndpointAssociationOutput,
        http_method = "DELETE",
        http_path = "/resourceendpointassociations/{resourceEndpointAssociationIdentifier}",
    }, options)
end

function Client:deleteResourceGateway(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourceGateway",
        input_schema = types.DeleteResourceGatewayInput,
        output_schema = types.DeleteResourceGatewayOutput,
        http_method = "DELETE",
        http_path = "/resourcegateways/{resourceGatewayIdentifier}",
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/resourcepolicy/{resourceArn}",
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = types.DeleteRuleInput,
        output_schema = types.DeleteRuleOutput,
        http_method = "DELETE",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}",
    }, options)
end

function Client:deleteService(input, options)
    return self:invokeOperation(input, {
        name = "DeleteService",
        input_schema = types.DeleteServiceInput,
        output_schema = types.DeleteServiceOutput,
        http_method = "DELETE",
        http_path = "/services/{serviceIdentifier}",
    }, options)
end

function Client:deleteServiceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceNetwork",
        input_schema = types.DeleteServiceNetworkInput,
        output_schema = types.DeleteServiceNetworkOutput,
        http_method = "DELETE",
        http_path = "/servicenetworks/{serviceNetworkIdentifier}",
    }, options)
end

function Client:deleteServiceNetworkResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceNetworkResourceAssociation",
        input_schema = types.DeleteServiceNetworkResourceAssociationInput,
        output_schema = types.DeleteServiceNetworkResourceAssociationOutput,
        http_method = "DELETE",
        http_path = "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}",
    }, options)
end

function Client:deleteServiceNetworkServiceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceNetworkServiceAssociation",
        input_schema = types.DeleteServiceNetworkServiceAssociationInput,
        output_schema = types.DeleteServiceNetworkServiceAssociationOutput,
        http_method = "DELETE",
        http_path = "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}",
    }, options)
end

function Client:deleteServiceNetworkVpcAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteServiceNetworkVpcAssociation",
        input_schema = types.DeleteServiceNetworkVpcAssociationInput,
        output_schema = types.DeleteServiceNetworkVpcAssociationOutput,
        http_method = "DELETE",
        http_path = "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}",
    }, options)
end

function Client:deleteTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTargetGroup",
        input_schema = types.DeleteTargetGroupInput,
        output_schema = types.DeleteTargetGroupOutput,
        http_method = "DELETE",
        http_path = "/targetgroups/{targetGroupIdentifier}",
    }, options)
end

function Client:deregisterTargets(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterTargets",
        input_schema = types.DeregisterTargetsInput,
        output_schema = types.DeregisterTargetsOutput,
        http_method = "POST",
        http_path = "/targetgroups/{targetGroupIdentifier}/deregistertargets",
    }, options)
end

function Client:getAccessLogSubscription(input, options)
    return self:invokeOperation(input, {
        name = "GetAccessLogSubscription",
        input_schema = types.GetAccessLogSubscriptionInput,
        output_schema = types.GetAccessLogSubscriptionOutput,
        http_method = "GET",
        http_path = "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}",
    }, options)
end

function Client:getAuthPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetAuthPolicy",
        input_schema = types.GetAuthPolicyInput,
        output_schema = types.GetAuthPolicyOutput,
        http_method = "GET",
        http_path = "/authpolicy/{resourceIdentifier}",
    }, options)
end

function Client:getDomainVerification(input, options)
    return self:invokeOperation(input, {
        name = "GetDomainVerification",
        input_schema = types.GetDomainVerificationInput,
        output_schema = types.GetDomainVerificationOutput,
        http_method = "GET",
        http_path = "/domainverifications/{domainVerificationIdentifier}",
    }, options)
end

function Client:getListener(input, options)
    return self:invokeOperation(input, {
        name = "GetListener",
        input_schema = types.GetListenerInput,
        output_schema = types.GetListenerOutput,
        http_method = "GET",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}",
    }, options)
end

function Client:getResourceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceConfiguration",
        input_schema = types.GetResourceConfigurationInput,
        output_schema = types.GetResourceConfigurationOutput,
        http_method = "GET",
        http_path = "/resourceconfigurations/{resourceConfigurationIdentifier}",
    }, options)
end

function Client:getResourceGateway(input, options)
    return self:invokeOperation(input, {
        name = "GetResourceGateway",
        input_schema = types.GetResourceGatewayInput,
        output_schema = types.GetResourceGatewayOutput,
        http_method = "GET",
        http_path = "/resourcegateways/{resourceGatewayIdentifier}",
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
        http_method = "GET",
        http_path = "/resourcepolicy/{resourceArn}",
    }, options)
end

function Client:getRule(input, options)
    return self:invokeOperation(input, {
        name = "GetRule",
        input_schema = types.GetRuleInput,
        output_schema = types.GetRuleOutput,
        http_method = "GET",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}",
    }, options)
end

function Client:getService(input, options)
    return self:invokeOperation(input, {
        name = "GetService",
        input_schema = types.GetServiceInput,
        output_schema = types.GetServiceOutput,
        http_method = "GET",
        http_path = "/services/{serviceIdentifier}",
    }, options)
end

function Client:getServiceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceNetwork",
        input_schema = types.GetServiceNetworkInput,
        output_schema = types.GetServiceNetworkOutput,
        http_method = "GET",
        http_path = "/servicenetworks/{serviceNetworkIdentifier}",
    }, options)
end

function Client:getServiceNetworkResourceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceNetworkResourceAssociation",
        input_schema = types.GetServiceNetworkResourceAssociationInput,
        output_schema = types.GetServiceNetworkResourceAssociationOutput,
        http_method = "GET",
        http_path = "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}",
    }, options)
end

function Client:getServiceNetworkServiceAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceNetworkServiceAssociation",
        input_schema = types.GetServiceNetworkServiceAssociationInput,
        output_schema = types.GetServiceNetworkServiceAssociationOutput,
        http_method = "GET",
        http_path = "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}",
    }, options)
end

function Client:getServiceNetworkVpcAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetServiceNetworkVpcAssociation",
        input_schema = types.GetServiceNetworkVpcAssociationInput,
        output_schema = types.GetServiceNetworkVpcAssociationOutput,
        http_method = "GET",
        http_path = "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}",
    }, options)
end

function Client:getTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "GetTargetGroup",
        input_schema = types.GetTargetGroupInput,
        output_schema = types.GetTargetGroupOutput,
        http_method = "GET",
        http_path = "/targetgroups/{targetGroupIdentifier}",
    }, options)
end

function Client:listAccessLogSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "ListAccessLogSubscriptions",
        input_schema = types.ListAccessLogSubscriptionsInput,
        output_schema = types.ListAccessLogSubscriptionsOutput,
        http_method = "GET",
        http_path = "/accesslogsubscriptions",
    }, options)
end

function Client:listDomainVerifications(input, options)
    return self:invokeOperation(input, {
        name = "ListDomainVerifications",
        input_schema = types.ListDomainVerificationsInput,
        output_schema = types.ListDomainVerificationsOutput,
        http_method = "GET",
        http_path = "/domainverifications",
    }, options)
end

function Client:listListeners(input, options)
    return self:invokeOperation(input, {
        name = "ListListeners",
        input_schema = types.ListListenersInput,
        output_schema = types.ListListenersOutput,
        http_method = "GET",
        http_path = "/services/{serviceIdentifier}/listeners",
    }, options)
end

function Client:listResourceConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceConfigurations",
        input_schema = types.ListResourceConfigurationsInput,
        output_schema = types.ListResourceConfigurationsOutput,
        http_method = "GET",
        http_path = "/resourceconfigurations",
    }, options)
end

function Client:listResourceEndpointAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceEndpointAssociations",
        input_schema = types.ListResourceEndpointAssociationsInput,
        output_schema = types.ListResourceEndpointAssociationsOutput,
        http_method = "GET",
        http_path = "/resourceendpointassociations",
    }, options)
end

function Client:listResourceGateways(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceGateways",
        input_schema = types.ListResourceGatewaysInput,
        output_schema = types.ListResourceGatewaysOutput,
        http_method = "GET",
        http_path = "/resourcegateways",
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = types.ListRulesInput,
        output_schema = types.ListRulesOutput,
        http_method = "GET",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules",
    }, options)
end

function Client:listServiceNetworkResourceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceNetworkResourceAssociations",
        input_schema = types.ListServiceNetworkResourceAssociationsInput,
        output_schema = types.ListServiceNetworkResourceAssociationsOutput,
        http_method = "GET",
        http_path = "/servicenetworkresourceassociations",
    }, options)
end

function Client:listServiceNetworks(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceNetworks",
        input_schema = types.ListServiceNetworksInput,
        output_schema = types.ListServiceNetworksOutput,
        http_method = "GET",
        http_path = "/servicenetworks",
    }, options)
end

function Client:listServiceNetworkServiceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceNetworkServiceAssociations",
        input_schema = types.ListServiceNetworkServiceAssociationsInput,
        output_schema = types.ListServiceNetworkServiceAssociationsOutput,
        http_method = "GET",
        http_path = "/servicenetworkserviceassociations",
    }, options)
end

function Client:listServiceNetworkVpcAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceNetworkVpcAssociations",
        input_schema = types.ListServiceNetworkVpcAssociationsInput,
        output_schema = types.ListServiceNetworkVpcAssociationsOutput,
        http_method = "GET",
        http_path = "/servicenetworkvpcassociations",
    }, options)
end

function Client:listServiceNetworkVpcEndpointAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceNetworkVpcEndpointAssociations",
        input_schema = types.ListServiceNetworkVpcEndpointAssociationsInput,
        output_schema = types.ListServiceNetworkVpcEndpointAssociationsOutput,
        http_method = "GET",
        http_path = "/servicenetworkvpcendpointassociations",
    }, options)
end

function Client:listServices(input, options)
    return self:invokeOperation(input, {
        name = "ListServices",
        input_schema = types.ListServicesInput,
        output_schema = types.ListServicesOutput,
        http_method = "GET",
        http_path = "/services",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:listTargetGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListTargetGroups",
        input_schema = types.ListTargetGroupsInput,
        output_schema = types.ListTargetGroupsOutput,
        http_method = "GET",
        http_path = "/targetgroups",
    }, options)
end

function Client:listTargets(input, options)
    return self:invokeOperation(input, {
        name = "ListTargets",
        input_schema = types.ListTargetsInput,
        output_schema = types.ListTargetsOutput,
        http_method = "POST",
        http_path = "/targetgroups/{targetGroupIdentifier}/listtargets",
    }, options)
end

function Client:putAuthPolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutAuthPolicy",
        input_schema = types.PutAuthPolicyInput,
        output_schema = types.PutAuthPolicyOutput,
        http_method = "PUT",
        http_path = "/authpolicy/{resourceIdentifier}",
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/resourcepolicy/{resourceArn}",
    }, options)
end

function Client:registerTargets(input, options)
    return self:invokeOperation(input, {
        name = "RegisterTargets",
        input_schema = types.RegisterTargetsInput,
        output_schema = types.RegisterTargetsOutput,
        http_method = "POST",
        http_path = "/targetgroups/{targetGroupIdentifier}/registertargets",
    }, options)
end

function Client:startDomainVerification(input, options)
    return self:invokeOperation(input, {
        name = "StartDomainVerification",
        input_schema = types.StartDomainVerificationInput,
        output_schema = types.StartDomainVerificationOutput,
        http_method = "POST",
        http_path = "/domainverifications",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
    }, options)
end

function Client:updateAccessLogSubscription(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAccessLogSubscription",
        input_schema = types.UpdateAccessLogSubscriptionInput,
        output_schema = types.UpdateAccessLogSubscriptionOutput,
        http_method = "PATCH",
        http_path = "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}",
    }, options)
end

function Client:updateListener(input, options)
    return self:invokeOperation(input, {
        name = "UpdateListener",
        input_schema = types.UpdateListenerInput,
        output_schema = types.UpdateListenerOutput,
        http_method = "PATCH",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}",
    }, options)
end

function Client:updateResourceConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceConfiguration",
        input_schema = types.UpdateResourceConfigurationInput,
        output_schema = types.UpdateResourceConfigurationOutput,
        http_method = "PATCH",
        http_path = "/resourceconfigurations/{resourceConfigurationIdentifier}",
    }, options)
end

function Client:updateResourceGateway(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourceGateway",
        input_schema = types.UpdateResourceGatewayInput,
        output_schema = types.UpdateResourceGatewayOutput,
        http_method = "PATCH",
        http_path = "/resourcegateways/{resourceGatewayIdentifier}",
    }, options)
end

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = types.UpdateRuleInput,
        output_schema = types.UpdateRuleOutput,
        http_method = "PATCH",
        http_path = "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}",
    }, options)
end

function Client:updateService(input, options)
    return self:invokeOperation(input, {
        name = "UpdateService",
        input_schema = types.UpdateServiceInput,
        output_schema = types.UpdateServiceOutput,
        http_method = "PATCH",
        http_path = "/services/{serviceIdentifier}",
    }, options)
end

function Client:updateServiceNetwork(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceNetwork",
        input_schema = types.UpdateServiceNetworkInput,
        output_schema = types.UpdateServiceNetworkOutput,
        http_method = "PATCH",
        http_path = "/servicenetworks/{serviceNetworkIdentifier}",
    }, options)
end

function Client:updateServiceNetworkVpcAssociation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateServiceNetworkVpcAssociation",
        input_schema = types.UpdateServiceNetworkVpcAssociationInput,
        output_schema = types.UpdateServiceNetworkVpcAssociationOutput,
        http_method = "PATCH",
        http_path = "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}",
    }, options)
end

function Client:updateTargetGroup(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTargetGroup",
        input_schema = types.UpdateTargetGroupInput,
        output_schema = types.UpdateTargetGroupOutput,
        http_method = "PATCH",
        http_path = "/targetgroups/{targetGroupIdentifier}",
    }, options)
end

return M
