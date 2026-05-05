local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("route53.endpoint_rules")
local restxml_protocol = require("smithy.protocol.restxml")
local schemas = require("route53.schemas")
local sdk_defaults = require("aws.sdk_defaults")

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
        input_schema = schemas.ActivateKeySigningKeyInput,
        output_schema = schemas.ActivateKeySigningKeyOutput,
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
        input_schema = schemas.AssociateVPCWithHostedZoneInput,
        output_schema = schemas.AssociateVPCWithHostedZoneOutput,
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
        input_schema = schemas.ChangeCidrCollectionInput,
        output_schema = schemas.ChangeCidrCollectionOutput,
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
        input_schema = schemas.ChangeResourceRecordSetsInput,
        output_schema = schemas.ChangeResourceRecordSetsOutput,
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
        input_schema = schemas.ChangeTagsForResourceInput,
        output_schema = schemas.ChangeTagsForResourceOutput,
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
        input_schema = schemas.CreateCidrCollectionInput,
        output_schema = schemas.CreateCidrCollectionOutput,
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
        input_schema = schemas.CreateHealthCheckInput,
        output_schema = schemas.CreateHealthCheckOutput,
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
        input_schema = schemas.CreateHostedZoneInput,
        output_schema = schemas.CreateHostedZoneOutput,
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
        input_schema = schemas.CreateKeySigningKeyInput,
        output_schema = schemas.CreateKeySigningKeyOutput,
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
        input_schema = schemas.CreateQueryLoggingConfigInput,
        output_schema = schemas.CreateQueryLoggingConfigOutput,
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
        input_schema = schemas.CreateReusableDelegationSetInput,
        output_schema = schemas.CreateReusableDelegationSetOutput,
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
        input_schema = schemas.CreateTrafficPolicyInput,
        output_schema = schemas.CreateTrafficPolicyOutput,
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
        input_schema = schemas.CreateTrafficPolicyInstanceInput,
        output_schema = schemas.CreateTrafficPolicyInstanceOutput,
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
        input_schema = schemas.CreateTrafficPolicyVersionInput,
        output_schema = schemas.CreateTrafficPolicyVersionOutput,
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
        input_schema = schemas.CreateVPCAssociationAuthorizationInput,
        output_schema = schemas.CreateVPCAssociationAuthorizationOutput,
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
        input_schema = schemas.DeactivateKeySigningKeyInput,
        output_schema = schemas.DeactivateKeySigningKeyOutput,
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
        input_schema = schemas.DeleteCidrCollectionInput,
        output_schema = schemas.DeleteCidrCollectionOutput,
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
        input_schema = schemas.DeleteHealthCheckInput,
        output_schema = schemas.DeleteHealthCheckOutput,
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
        input_schema = schemas.DeleteHostedZoneInput,
        output_schema = schemas.DeleteHostedZoneOutput,
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
        input_schema = schemas.DeleteKeySigningKeyInput,
        output_schema = schemas.DeleteKeySigningKeyOutput,
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
        input_schema = schemas.DeleteQueryLoggingConfigInput,
        output_schema = schemas.DeleteQueryLoggingConfigOutput,
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
        input_schema = schemas.DeleteReusableDelegationSetInput,
        output_schema = schemas.DeleteReusableDelegationSetOutput,
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
        input_schema = schemas.DeleteTrafficPolicyInput,
        output_schema = schemas.DeleteTrafficPolicyOutput,
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
        input_schema = schemas.DeleteTrafficPolicyInstanceInput,
        output_schema = schemas.DeleteTrafficPolicyInstanceOutput,
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
        input_schema = schemas.DeleteVPCAssociationAuthorizationInput,
        output_schema = schemas.DeleteVPCAssociationAuthorizationOutput,
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
        input_schema = schemas.DisableHostedZoneDNSSECInput,
        output_schema = schemas.DisableHostedZoneDNSSECOutput,
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
        input_schema = schemas.DisassociateVPCFromHostedZoneInput,
        output_schema = schemas.DisassociateVPCFromHostedZoneOutput,
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
        input_schema = schemas.EnableHostedZoneDNSSECInput,
        output_schema = schemas.EnableHostedZoneDNSSECOutput,
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
        input_schema = schemas.GetAccountLimitInput,
        output_schema = schemas.GetAccountLimitOutput,
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
        input_schema = schemas.GetChangeInput,
        output_schema = schemas.GetChangeOutput,
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
        input_schema = schemas.GetCheckerIpRangesInput,
        output_schema = schemas.GetCheckerIpRangesOutput,
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
        input_schema = schemas.GetDNSSECInput,
        output_schema = schemas.GetDNSSECOutput,
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
        input_schema = schemas.GetGeoLocationInput,
        output_schema = schemas.GetGeoLocationOutput,
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
        input_schema = schemas.GetHealthCheckInput,
        output_schema = schemas.GetHealthCheckOutput,
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
        input_schema = schemas.GetHealthCheckCountInput,
        output_schema = schemas.GetHealthCheckCountOutput,
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
        input_schema = schemas.GetHealthCheckLastFailureReasonInput,
        output_schema = schemas.GetHealthCheckLastFailureReasonOutput,
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
        input_schema = schemas.GetHealthCheckStatusInput,
        output_schema = schemas.GetHealthCheckStatusOutput,
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
        input_schema = schemas.GetHostedZoneInput,
        output_schema = schemas.GetHostedZoneOutput,
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
        input_schema = schemas.GetHostedZoneCountInput,
        output_schema = schemas.GetHostedZoneCountOutput,
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
        input_schema = schemas.GetHostedZoneLimitInput,
        output_schema = schemas.GetHostedZoneLimitOutput,
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
        input_schema = schemas.GetQueryLoggingConfigInput,
        output_schema = schemas.GetQueryLoggingConfigOutput,
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
        input_schema = schemas.GetReusableDelegationSetInput,
        output_schema = schemas.GetReusableDelegationSetOutput,
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
        input_schema = schemas.GetReusableDelegationSetLimitInput,
        output_schema = schemas.GetReusableDelegationSetLimitOutput,
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
        input_schema = schemas.GetTrafficPolicyInput,
        output_schema = schemas.GetTrafficPolicyOutput,
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
        input_schema = schemas.GetTrafficPolicyInstanceInput,
        output_schema = schemas.GetTrafficPolicyInstanceOutput,
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
        input_schema = schemas.GetTrafficPolicyInstanceCountInput,
        output_schema = schemas.GetTrafficPolicyInstanceCountOutput,
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
        input_schema = schemas.ListCidrBlocksInput,
        output_schema = schemas.ListCidrBlocksOutput,
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
        input_schema = schemas.ListCidrCollectionsInput,
        output_schema = schemas.ListCidrCollectionsOutput,
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
        input_schema = schemas.ListCidrLocationsInput,
        output_schema = schemas.ListCidrLocationsOutput,
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
        input_schema = schemas.ListGeoLocationsInput,
        output_schema = schemas.ListGeoLocationsOutput,
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
        input_schema = schemas.ListHealthChecksInput,
        output_schema = schemas.ListHealthChecksOutput,
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
        input_schema = schemas.ListHostedZonesInput,
        output_schema = schemas.ListHostedZonesOutput,
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
        input_schema = schemas.ListHostedZonesByNameInput,
        output_schema = schemas.ListHostedZonesByNameOutput,
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
        input_schema = schemas.ListHostedZonesByVPCInput,
        output_schema = schemas.ListHostedZonesByVPCOutput,
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
        input_schema = schemas.ListQueryLoggingConfigsInput,
        output_schema = schemas.ListQueryLoggingConfigsOutput,
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
        input_schema = schemas.ListResourceRecordSetsInput,
        output_schema = schemas.ListResourceRecordSetsOutput,
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
        input_schema = schemas.ListReusableDelegationSetsInput,
        output_schema = schemas.ListReusableDelegationSetsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
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
        input_schema = schemas.ListTagsForResourcesInput,
        output_schema = schemas.ListTagsForResourcesOutput,
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
        input_schema = schemas.ListTrafficPoliciesInput,
        output_schema = schemas.ListTrafficPoliciesOutput,
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
        input_schema = schemas.ListTrafficPolicyInstancesInput,
        output_schema = schemas.ListTrafficPolicyInstancesOutput,
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
        input_schema = schemas.ListTrafficPolicyInstancesByHostedZoneInput,
        output_schema = schemas.ListTrafficPolicyInstancesByHostedZoneOutput,
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
        input_schema = schemas.ListTrafficPolicyInstancesByPolicyInput,
        output_schema = schemas.ListTrafficPolicyInstancesByPolicyOutput,
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
        input_schema = schemas.ListTrafficPolicyVersionsInput,
        output_schema = schemas.ListTrafficPolicyVersionsOutput,
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
        input_schema = schemas.ListVPCAssociationAuthorizationsInput,
        output_schema = schemas.ListVPCAssociationAuthorizationsOutput,
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
        input_schema = schemas.TestDNSAnswerInput,
        output_schema = schemas.TestDNSAnswerOutput,
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
        input_schema = schemas.UpdateHealthCheckInput,
        output_schema = schemas.UpdateHealthCheckOutput,
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
        input_schema = schemas.UpdateHostedZoneCommentInput,
        output_schema = schemas.UpdateHostedZoneCommentOutput,
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
        input_schema = schemas.UpdateHostedZoneFeaturesInput,
        output_schema = schemas.UpdateHostedZoneFeaturesOutput,
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
        input_schema = schemas.UpdateTrafficPolicyCommentInput,
        output_schema = schemas.UpdateTrafficPolicyCommentOutput,
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
        input_schema = schemas.UpdateTrafficPolicyInstanceInput,
        output_schema = schemas.UpdateTrafficPolicyInstanceOutput,
        http_method = "POST",
        http_path = "/2013-04-01/trafficpolicyinstance/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
