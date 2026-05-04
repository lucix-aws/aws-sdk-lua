local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("tnb.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("tnb.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "TNB"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "tnb", signing_region = cfg.region } }
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

function Client:cancelSolNetworkOperation(input, options)
    return self:invokeOperation(input, {
        name = "CancelSolNetworkOperation",
        input_schema = types.CancelSolNetworkOperationInput,
        output_schema = types.CancelSolNetworkOperationOutput,
        http_method = "POST",
        http_path = "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}/cancel",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSolFunctionPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolFunctionPackage",
        input_schema = types.CreateSolFunctionPackageInput,
        output_schema = types.CreateSolFunctionPackageOutput,
        http_method = "POST",
        http_path = "/sol/vnfpkgm/v1/vnf_packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSolNetworkInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolNetworkInstance",
        input_schema = types.CreateSolNetworkInstanceInput,
        output_schema = types.CreateSolNetworkInstanceOutput,
        http_method = "POST",
        http_path = "/sol/nslcm/v1/ns_instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSolNetworkPackage(input, options)
    return self:invokeOperation(input, {
        name = "CreateSolNetworkPackage",
        input_schema = types.CreateSolNetworkPackageInput,
        output_schema = types.CreateSolNetworkPackageOutput,
        http_method = "POST",
        http_path = "/sol/nsd/v1/ns_descriptors",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSolFunctionPackage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSolFunctionPackage",
        input_schema = types.DeleteSolFunctionPackageInput,
        output_schema = types.DeleteSolFunctionPackageOutput,
        http_method = "DELETE",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSolNetworkInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSolNetworkInstance",
        input_schema = types.DeleteSolNetworkInstanceInput,
        output_schema = types.DeleteSolNetworkInstanceOutput,
        http_method = "DELETE",
        http_path = "/sol/nslcm/v1/ns_instances/{nsInstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSolNetworkPackage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSolNetworkPackage",
        input_schema = types.DeleteSolNetworkPackageInput,
        output_schema = types.DeleteSolNetworkPackageOutput,
        http_method = "DELETE",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolFunctionInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetSolFunctionInstance",
        input_schema = types.GetSolFunctionInstanceInput,
        output_schema = types.GetSolFunctionInstanceOutput,
        http_method = "GET",
        http_path = "/sol/vnflcm/v1/vnf_instances/{vnfInstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolFunctionPackage(input, options)
    return self:invokeOperation(input, {
        name = "GetSolFunctionPackage",
        input_schema = types.GetSolFunctionPackageInput,
        output_schema = types.GetSolFunctionPackageOutput,
        http_method = "GET",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolFunctionPackageContent(input, options)
    return self:invokeOperation(input, {
        name = "GetSolFunctionPackageContent",
        input_schema = types.GetSolFunctionPackageContentInput,
        output_schema = types.GetSolFunctionPackageContentOutput,
        http_method = "GET",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolFunctionPackageDescriptor(input, options)
    return self:invokeOperation(input, {
        name = "GetSolFunctionPackageDescriptor",
        input_schema = types.GetSolFunctionPackageDescriptorInput,
        output_schema = types.GetSolFunctionPackageDescriptorOutput,
        http_method = "GET",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/vnfd",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolNetworkInstance(input, options)
    return self:invokeOperation(input, {
        name = "GetSolNetworkInstance",
        input_schema = types.GetSolNetworkInstanceInput,
        output_schema = types.GetSolNetworkInstanceOutput,
        http_method = "GET",
        http_path = "/sol/nslcm/v1/ns_instances/{nsInstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolNetworkOperation(input, options)
    return self:invokeOperation(input, {
        name = "GetSolNetworkOperation",
        input_schema = types.GetSolNetworkOperationInput,
        output_schema = types.GetSolNetworkOperationOutput,
        http_method = "GET",
        http_path = "/sol/nslcm/v1/ns_lcm_op_occs/{nsLcmOpOccId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolNetworkPackage(input, options)
    return self:invokeOperation(input, {
        name = "GetSolNetworkPackage",
        input_schema = types.GetSolNetworkPackageInput,
        output_schema = types.GetSolNetworkPackageOutput,
        http_method = "GET",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolNetworkPackageContent(input, options)
    return self:invokeOperation(input, {
        name = "GetSolNetworkPackageContent",
        input_schema = types.GetSolNetworkPackageContentInput,
        output_schema = types.GetSolNetworkPackageContentOutput,
        http_method = "GET",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSolNetworkPackageDescriptor(input, options)
    return self:invokeOperation(input, {
        name = "GetSolNetworkPackageDescriptor",
        input_schema = types.GetSolNetworkPackageDescriptorInput,
        output_schema = types.GetSolNetworkPackageDescriptorOutput,
        http_method = "GET",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:instantiateSolNetworkInstance(input, options)
    return self:invokeOperation(input, {
        name = "InstantiateSolNetworkInstance",
        input_schema = types.InstantiateSolNetworkInstanceInput,
        output_schema = types.InstantiateSolNetworkInstanceOutput,
        http_method = "POST",
        http_path = "/sol/nslcm/v1/ns_instances/{nsInstanceId}/instantiate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolFunctionInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListSolFunctionInstances",
        input_schema = types.ListSolFunctionInstancesInput,
        output_schema = types.ListSolFunctionInstancesOutput,
        http_method = "GET",
        http_path = "/sol/vnflcm/v1/vnf_instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolFunctionPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListSolFunctionPackages",
        input_schema = types.ListSolFunctionPackagesInput,
        output_schema = types.ListSolFunctionPackagesOutput,
        http_method = "GET",
        http_path = "/sol/vnfpkgm/v1/vnf_packages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolNetworkInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListSolNetworkInstances",
        input_schema = types.ListSolNetworkInstancesInput,
        output_schema = types.ListSolNetworkInstancesOutput,
        http_method = "GET",
        http_path = "/sol/nslcm/v1/ns_instances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolNetworkOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListSolNetworkOperations",
        input_schema = types.ListSolNetworkOperationsInput,
        output_schema = types.ListSolNetworkOperationsOutput,
        http_method = "GET",
        http_path = "/sol/nslcm/v1/ns_lcm_op_occs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSolNetworkPackages(input, options)
    return self:invokeOperation(input, {
        name = "ListSolNetworkPackages",
        input_schema = types.ListSolNetworkPackagesInput,
        output_schema = types.ListSolNetworkPackagesOutput,
        http_method = "GET",
        http_path = "/sol/nsd/v1/ns_descriptors",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSolFunctionPackageContent(input, options)
    return self:invokeOperation(input, {
        name = "PutSolFunctionPackageContent",
        input_schema = types.PutSolFunctionPackageContentInput,
        output_schema = types.PutSolFunctionPackageContentOutput,
        http_method = "PUT",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSolNetworkPackageContent(input, options)
    return self:invokeOperation(input, {
        name = "PutSolNetworkPackageContent",
        input_schema = types.PutSolNetworkPackageContentInput,
        output_schema = types.PutSolNetworkPackageContentOutput,
        http_method = "PUT",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:terminateSolNetworkInstance(input, options)
    return self:invokeOperation(input, {
        name = "TerminateSolNetworkInstance",
        input_schema = types.TerminateSolNetworkInstanceInput,
        output_schema = types.TerminateSolNetworkInstanceOutput,
        http_method = "POST",
        http_path = "/sol/nslcm/v1/ns_instances/{nsInstanceId}/terminate",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSolFunctionPackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSolFunctionPackage",
        input_schema = types.UpdateSolFunctionPackageInput,
        output_schema = types.UpdateSolFunctionPackageOutput,
        http_method = "PATCH",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSolNetworkInstance(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSolNetworkInstance",
        input_schema = types.UpdateSolNetworkInstanceInput,
        output_schema = types.UpdateSolNetworkInstanceOutput,
        http_method = "POST",
        http_path = "/sol/nslcm/v1/ns_instances/{nsInstanceId}/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSolNetworkPackage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSolNetworkPackage",
        input_schema = types.UpdateSolNetworkPackageInput,
        output_schema = types.UpdateSolNetworkPackageOutput,
        http_method = "PATCH",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateSolFunctionPackageContent(input, options)
    return self:invokeOperation(input, {
        name = "ValidateSolFunctionPackageContent",
        input_schema = types.ValidateSolFunctionPackageContentInput,
        output_schema = types.ValidateSolFunctionPackageContentOutput,
        http_method = "PUT",
        http_path = "/sol/vnfpkgm/v1/vnf_packages/{vnfPkgId}/package_content/validate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:validateSolNetworkPackageContent(input, options)
    return self:invokeOperation(input, {
        name = "ValidateSolNetworkPackageContent",
        input_schema = types.ValidateSolNetworkPackageContentInput,
        output_schema = types.ValidateSolNetworkPackageContentOutput,
        http_method = "PUT",
        http_path = "/sol/nsd/v1/ns_descriptors/{nsdInfoId}/nsd_content/validate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
