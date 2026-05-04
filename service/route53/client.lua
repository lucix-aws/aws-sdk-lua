local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("route53.endpoint_rules")
local restxml_protocol = require("protocol.restxml")
local sdk_defaults = require("sdk_defaults")
local types = require("route53.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSDnsV20130401"
    if not cfg.protocol then
        cfg.protocol = restxml_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "route53", signing_region = cfg.region } }
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

function Client:activateKeySigningKey(input, options)
    return self:invokeOperation(input, {
        name = "ActivateKeySigningKey",
        input_schema = types.ActivateKeySigningKeyInput,
        output_schema = types.ActivateKeySigningKeyOutput,
        http_method = "POST",
        http_path = "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/activate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateVPCWithHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "AssociateVPCWithHostedZone",
        input_schema = types.AssociateVPCWithHostedZoneInput,
        output_schema = types.AssociateVPCWithHostedZoneOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/associatevpc",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changeCidrCollection(input, options)
    return self:invokeOperation(input, {
        name = "ChangeCidrCollection",
        input_schema = types.ChangeCidrCollectionInput,
        output_schema = types.ChangeCidrCollectionOutput,
        http_method = "POST",
        http_path = "/2013-04-01/cidrcollection/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changeResourceRecordSets(input, options)
    return self:invokeOperation(input, {
        name = "ChangeResourceRecordSets",
        input_schema = types.ChangeResourceRecordSetsInput,
        output_schema = types.ChangeResourceRecordSetsOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/rrset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:changeTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ChangeTagsForResource",
        input_schema = types.ChangeTagsForResourceInput,
        output_schema = types.ChangeTagsForResourceOutput,
        http_method = "POST",
        http_path = "/2013-04-01/tags/{ResourceType}/{ResourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCidrCollection(input, options)
    return self:invokeOperation(input, {
        name = "CreateCidrCollection",
        input_schema = types.CreateCidrCollectionInput,
        output_schema = types.CreateCidrCollectionOutput,
        http_method = "POST",
        http_path = "/2013-04-01/cidrcollection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "CreateHealthCheck",
        input_schema = types.CreateHealthCheckInput,
        output_schema = types.CreateHealthCheckOutput,
        http_method = "POST",
        http_path = "/2013-04-01/healthcheck",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "CreateHostedZone",
        input_schema = types.CreateHostedZoneInput,
        output_schema = types.CreateHostedZoneOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createKeySigningKey(input, options)
    return self:invokeOperation(input, {
        name = "CreateKeySigningKey",
        input_schema = types.CreateKeySigningKeyInput,
        output_schema = types.CreateKeySigningKeyOutput,
        http_method = "POST",
        http_path = "/2013-04-01/keysigningkey",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueryLoggingConfig(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueryLoggingConfig",
        input_schema = types.CreateQueryLoggingConfigInput,
        output_schema = types.CreateQueryLoggingConfigOutput,
        http_method = "POST",
        http_path = "/2013-04-01/queryloggingconfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReusableDelegationSet(input, options)
    return self:invokeOperation(input, {
        name = "CreateReusableDelegationSet",
        input_schema = types.CreateReusableDelegationSetInput,
        output_schema = types.CreateReusableDelegationSetOutput,
        http_method = "POST",
        http_path = "/2013-04-01/delegationset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficPolicy",
        input_schema = types.CreateTrafficPolicyInput,
        output_schema = types.CreateTrafficPolicyOutput,
        http_method = "POST",
        http_path = "/2013-04-01/trafficpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficPolicyInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficPolicyInstance",
        input_schema = types.CreateTrafficPolicyInstanceInput,
        output_schema = types.CreateTrafficPolicyInstanceOutput,
        http_method = "POST",
        http_path = "/2013-04-01/trafficpolicyinstance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficPolicyVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficPolicyVersion",
        input_schema = types.CreateTrafficPolicyVersionInput,
        output_schema = types.CreateTrafficPolicyVersionOutput,
        http_method = "POST",
        http_path = "/2013-04-01/trafficpolicy/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVPCAssociationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "CreateVPCAssociationAuthorization",
        input_schema = types.CreateVPCAssociationAuthorizationInput,
        output_schema = types.CreateVPCAssociationAuthorizationOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/authorizevpcassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateKeySigningKey(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateKeySigningKey",
        input_schema = types.DeactivateKeySigningKeyInput,
        output_schema = types.DeactivateKeySigningKeyOutput,
        http_method = "POST",
        http_path = "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}/deactivate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCidrCollection(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCidrCollection",
        input_schema = types.DeleteCidrCollectionInput,
        output_schema = types.DeleteCidrCollectionOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/cidrcollection/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHealthCheck",
        input_schema = types.DeleteHealthCheckInput,
        output_schema = types.DeleteHealthCheckOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/healthcheck/{HealthCheckId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHostedZone",
        input_schema = types.DeleteHostedZoneInput,
        output_schema = types.DeleteHostedZoneOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/hostedzone/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteKeySigningKey(input, options)
    return self:invokeOperation(input, {
        name = "DeleteKeySigningKey",
        input_schema = types.DeleteKeySigningKeyInput,
        output_schema = types.DeleteKeySigningKeyOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/keysigningkey/{HostedZoneId}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueryLoggingConfig(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueryLoggingConfig",
        input_schema = types.DeleteQueryLoggingConfigInput,
        output_schema = types.DeleteQueryLoggingConfigOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/queryloggingconfig/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReusableDelegationSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReusableDelegationSet",
        input_schema = types.DeleteReusableDelegationSetInput,
        output_schema = types.DeleteReusableDelegationSetOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/delegationset/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficPolicy",
        input_schema = types.DeleteTrafficPolicyInput,
        output_schema = types.DeleteTrafficPolicyOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/trafficpolicy/{Id}/{Version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficPolicyInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficPolicyInstance",
        input_schema = types.DeleteTrafficPolicyInstanceInput,
        output_schema = types.DeleteTrafficPolicyInstanceOutput,
        http_method = "DELETE",
        http_path = "/2013-04-01/trafficpolicyinstance/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVPCAssociationAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVPCAssociationAuthorization",
        input_schema = types.DeleteVPCAssociationAuthorizationInput,
        output_schema = types.DeleteVPCAssociationAuthorizationOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/deauthorizevpcassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableHostedZoneDNSSEC(input, options)
    return self:invokeOperation(input, {
        name = "DisableHostedZoneDNSSEC",
        input_schema = types.DisableHostedZoneDNSSECInput,
        output_schema = types.DisableHostedZoneDNSSECOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/disable-dnssec",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateVPCFromHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateVPCFromHostedZone",
        input_schema = types.DisassociateVPCFromHostedZoneInput,
        output_schema = types.DisassociateVPCFromHostedZoneOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/disassociatevpc",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableHostedZoneDNSSEC(input, options)
    return self:invokeOperation(input, {
        name = "EnableHostedZoneDNSSEC",
        input_schema = types.EnableHostedZoneDNSSECInput,
        output_schema = types.EnableHostedZoneDNSSECOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/enable-dnssec",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountLimit(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountLimit",
        input_schema = types.GetAccountLimitInput,
        output_schema = types.GetAccountLimitOutput,
        http_method = "GET",
        http_path = "/2013-04-01/accountlimit/{Type}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getChange(input, options)
    return self:invokeOperation(input, {
        name = "GetChange",
        input_schema = types.GetChangeInput,
        output_schema = types.GetChangeOutput,
        http_method = "GET",
        http_path = "/2013-04-01/change/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCheckerIpRanges(input, options)
    return self:invokeOperation(input, {
        name = "GetCheckerIpRanges",
        input_schema = types.GetCheckerIpRangesInput,
        output_schema = types.GetCheckerIpRangesOutput,
        http_method = "GET",
        http_path = "/2013-04-01/checkeripranges",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getDNSSEC(input, options)
    return self:invokeOperation(input, {
        name = "GetDNSSEC",
        input_schema = types.GetDNSSECInput,
        output_schema = types.GetDNSSECOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/dnssec",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGeoLocation(input, options)
    return self:invokeOperation(input, {
        name = "GetGeoLocation",
        input_schema = types.GetGeoLocationInput,
        output_schema = types.GetGeoLocationOutput,
        http_method = "GET",
        http_path = "/2013-04-01/geolocation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "GetHealthCheck",
        input_schema = types.GetHealthCheckInput,
        output_schema = types.GetHealthCheckOutput,
        http_method = "GET",
        http_path = "/2013-04-01/healthcheck/{HealthCheckId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHealthCheckCount(input, options)
    return self:invokeOperation(input, {
        name = "GetHealthCheckCount",
        input_schema = types.GetHealthCheckCountInput,
        output_schema = types.GetHealthCheckCountOutput,
        http_method = "GET",
        http_path = "/2013-04-01/healthcheckcount",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHealthCheckLastFailureReason(input, options)
    return self:invokeOperation(input, {
        name = "GetHealthCheckLastFailureReason",
        input_schema = types.GetHealthCheckLastFailureReasonInput,
        output_schema = types.GetHealthCheckLastFailureReasonOutput,
        http_method = "GET",
        http_path = "/2013-04-01/healthcheck/{HealthCheckId}/lastfailurereason",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHealthCheckStatus(input, options)
    return self:invokeOperation(input, {
        name = "GetHealthCheckStatus",
        input_schema = types.GetHealthCheckStatusInput,
        output_schema = types.GetHealthCheckStatusOutput,
        http_method = "GET",
        http_path = "/2013-04-01/healthcheck/{HealthCheckId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "GetHostedZone",
        input_schema = types.GetHostedZoneInput,
        output_schema = types.GetHostedZoneOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzone/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHostedZoneCount(input, options)
    return self:invokeOperation(input, {
        name = "GetHostedZoneCount",
        input_schema = types.GetHostedZoneCountInput,
        output_schema = types.GetHostedZoneCountOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzonecount",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHostedZoneLimit(input, options)
    return self:invokeOperation(input, {
        name = "GetHostedZoneLimit",
        input_schema = types.GetHostedZoneLimitInput,
        output_schema = types.GetHostedZoneLimitOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzonelimit/{HostedZoneId}/{Type}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQueryLoggingConfig(input, options)
    return self:invokeOperation(input, {
        name = "GetQueryLoggingConfig",
        input_schema = types.GetQueryLoggingConfigInput,
        output_schema = types.GetQueryLoggingConfigOutput,
        http_method = "GET",
        http_path = "/2013-04-01/queryloggingconfig/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReusableDelegationSet(input, options)
    return self:invokeOperation(input, {
        name = "GetReusableDelegationSet",
        input_schema = types.GetReusableDelegationSetInput,
        output_schema = types.GetReusableDelegationSetOutput,
        http_method = "GET",
        http_path = "/2013-04-01/delegationset/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReusableDelegationSetLimit(input, options)
    return self:invokeOperation(input, {
        name = "GetReusableDelegationSetLimit",
        input_schema = types.GetReusableDelegationSetLimitInput,
        output_schema = types.GetReusableDelegationSetLimitOutput,
        http_method = "GET",
        http_path = "/2013-04-01/reusabledelegationsetlimit/{DelegationSetId}/{Type}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrafficPolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetTrafficPolicy",
        input_schema = types.GetTrafficPolicyInput,
        output_schema = types.GetTrafficPolicyOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicy/{Id}/{Version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrafficPolicyInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetTrafficPolicyInstance",
        input_schema = types.GetTrafficPolicyInstanceInput,
        output_schema = types.GetTrafficPolicyInstanceOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicyinstance/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrafficPolicyInstanceCount(input, options)
    return self:invokeOperation(input, {
        name = "GetTrafficPolicyInstanceCount",
        input_schema = types.GetTrafficPolicyInstanceCountInput,
        output_schema = types.GetTrafficPolicyInstanceCountOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicyinstancecount",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCidrBlocks(input, options)
    return self:invokeOperation(input, {
        name = "ListCidrBlocks",
        input_schema = types.ListCidrBlocksInput,
        output_schema = types.ListCidrBlocksOutput,
        http_method = "GET",
        http_path = "/2013-04-01/cidrcollection/{CollectionId}/cidrblocks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCidrCollections(input, options)
    return self:invokeOperation(input, {
        name = "ListCidrCollections",
        input_schema = types.ListCidrCollectionsInput,
        output_schema = types.ListCidrCollectionsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/cidrcollection",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCidrLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListCidrLocations",
        input_schema = types.ListCidrLocationsInput,
        output_schema = types.ListCidrLocationsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/cidrcollection/{CollectionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listGeoLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListGeoLocations",
        input_schema = types.ListGeoLocationsInput,
        output_schema = types.ListGeoLocationsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/geolocations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHealthChecks(input, options)
    return self:invokeOperation(input, {
        name = "ListHealthChecks",
        input_schema = types.ListHealthChecksInput,
        output_schema = types.ListHealthChecksOutput,
        http_method = "GET",
        http_path = "/2013-04-01/healthcheck",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHostedZones(input, options)
    return self:invokeOperation(input, {
        name = "ListHostedZones",
        input_schema = types.ListHostedZonesInput,
        output_schema = types.ListHostedZonesOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHostedZonesByName(input, options)
    return self:invokeOperation(input, {
        name = "ListHostedZonesByName",
        input_schema = types.ListHostedZonesByNameInput,
        output_schema = types.ListHostedZonesByNameOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzonesbyname",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHostedZonesByVPC(input, options)
    return self:invokeOperation(input, {
        name = "ListHostedZonesByVPC",
        input_schema = types.ListHostedZonesByVPCInput,
        output_schema = types.ListHostedZonesByVPCOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzonesbyvpc",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueryLoggingConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListQueryLoggingConfigs",
        input_schema = types.ListQueryLoggingConfigsInput,
        output_schema = types.ListQueryLoggingConfigsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/queryloggingconfig",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listResourceRecordSets(input, options)
    return self:invokeOperation(input, {
        name = "ListResourceRecordSets",
        input_schema = types.ListResourceRecordSetsInput,
        output_schema = types.ListResourceRecordSetsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/rrset",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReusableDelegationSets(input, options)
    return self:invokeOperation(input, {
        name = "ListReusableDelegationSets",
        input_schema = types.ListReusableDelegationSetsInput,
        output_schema = types.ListReusableDelegationSetsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/delegationset",
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
        http_method = "GET",
        http_path = "/2013-04-01/tags/{ResourceType}/{ResourceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResources(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResources",
        input_schema = types.ListTagsForResourcesInput,
        output_schema = types.ListTagsForResourcesOutput,
        http_method = "POST",
        http_path = "/2013-04-01/tags/{ResourceType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficPolicies(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficPolicies",
        input_schema = types.ListTrafficPoliciesInput,
        output_schema = types.ListTrafficPoliciesOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficPolicyInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficPolicyInstances",
        input_schema = types.ListTrafficPolicyInstancesInput,
        output_schema = types.ListTrafficPolicyInstancesOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicyinstances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficPolicyInstancesByHostedZone(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficPolicyInstancesByHostedZone",
        input_schema = types.ListTrafficPolicyInstancesByHostedZoneInput,
        output_schema = types.ListTrafficPolicyInstancesByHostedZoneOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicyinstances/hostedzone",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficPolicyInstancesByPolicy(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficPolicyInstancesByPolicy",
        input_schema = types.ListTrafficPolicyInstancesByPolicyInput,
        output_schema = types.ListTrafficPolicyInstancesByPolicyOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicyinstances/trafficpolicy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficPolicyVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficPolicyVersions",
        input_schema = types.ListTrafficPolicyVersionsInput,
        output_schema = types.ListTrafficPolicyVersionsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/trafficpolicies/{Id}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listVPCAssociationAuthorizations(input, options)
    return self:invokeOperation(input, {
        name = "ListVPCAssociationAuthorizations",
        input_schema = types.ListVPCAssociationAuthorizationsInput,
        output_schema = types.ListVPCAssociationAuthorizationsOutput,
        http_method = "GET",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/authorizevpcassociation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:testDNSAnswer(input, options)
    return self:invokeOperation(input, {
        name = "TestDNSAnswer",
        input_schema = types.TestDNSAnswerInput,
        output_schema = types.TestDNSAnswerOutput,
        http_method = "GET",
        http_path = "/2013-04-01/testdnsanswer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHealthCheck(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHealthCheck",
        input_schema = types.UpdateHealthCheckInput,
        output_schema = types.UpdateHealthCheckOutput,
        http_method = "POST",
        http_path = "/2013-04-01/healthcheck/{HealthCheckId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHostedZoneComment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHostedZoneComment",
        input_schema = types.UpdateHostedZoneCommentInput,
        output_schema = types.UpdateHostedZoneCommentOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHostedZoneFeatures(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHostedZoneFeatures",
        input_schema = types.UpdateHostedZoneFeaturesInput,
        output_schema = types.UpdateHostedZoneFeaturesOutput,
        http_method = "POST",
        http_path = "/2013-04-01/hostedzone/{HostedZoneId}/features",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrafficPolicyComment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrafficPolicyComment",
        input_schema = types.UpdateTrafficPolicyCommentInput,
        output_schema = types.UpdateTrafficPolicyCommentOutput,
        http_method = "POST",
        http_path = "/2013-04-01/trafficpolicy/{Id}/{Version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrafficPolicyInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrafficPolicyInstance",
        input_schema = types.UpdateTrafficPolicyInstanceInput,
        output_schema = types.UpdateTrafficPolicyInstanceOutput,
        http_method = "POST",
        http_path = "/2013-04-01/trafficpolicyinstance/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
