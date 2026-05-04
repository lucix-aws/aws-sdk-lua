local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("snowball.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("snowball.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIESnowballJobManagementService"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.1")
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "snowball", signing_region = cfg.region } }
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

function Client:cancelCluster(input, options)
    return self:invokeOperation(input, {
        name = "CancelCluster",
        input_schema = types.CancelClusterInput,
        output_schema = types.CancelClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelJob(input, options)
    return self:invokeOperation(input, {
        name = "CancelJob",
        input_schema = types.CancelJobInput,
        output_schema = types.CancelJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAddress(input, options)
    return self:invokeOperation(input, {
        name = "CreateAddress",
        input_schema = types.CreateAddressInput,
        output_schema = types.CreateAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createJob(input, options)
    return self:invokeOperation(input, {
        name = "CreateJob",
        input_schema = types.CreateJobInput,
        output_schema = types.CreateJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLongTermPricing(input, options)
    return self:invokeOperation(input, {
        name = "CreateLongTermPricing",
        input_schema = types.CreateLongTermPricingInput,
        output_schema = types.CreateLongTermPricingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReturnShippingLabel(input, options)
    return self:invokeOperation(input, {
        name = "CreateReturnShippingLabel",
        input_schema = types.CreateReturnShippingLabelInput,
        output_schema = types.CreateReturnShippingLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddress",
        input_schema = types.DescribeAddressInput,
        output_schema = types.DescribeAddressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAddresses(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAddresses",
        input_schema = types.DescribeAddressesInput,
        output_schema = types.DescribeAddressesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCluster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCluster",
        input_schema = types.DescribeClusterInput,
        output_schema = types.DescribeClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeJob",
        input_schema = types.DescribeJobInput,
        output_schema = types.DescribeJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReturnShippingLabel(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReturnShippingLabel",
        input_schema = types.DescribeReturnShippingLabelInput,
        output_schema = types.DescribeReturnShippingLabelOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobManifest(input, options)
    return self:invokeOperation(input, {
        name = "GetJobManifest",
        input_schema = types.GetJobManifestInput,
        output_schema = types.GetJobManifestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getJobUnlockCode(input, options)
    return self:invokeOperation(input, {
        name = "GetJobUnlockCode",
        input_schema = types.GetJobUnlockCodeInput,
        output_schema = types.GetJobUnlockCodeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSnowballUsage(input, options)
    return self:invokeOperation(input, {
        name = "GetSnowballUsage",
        input_schema = types.GetSnowballUsageInput,
        output_schema = types.GetSnowballUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSoftwareUpdates(input, options)
    return self:invokeOperation(input, {
        name = "GetSoftwareUpdates",
        input_schema = types.GetSoftwareUpdatesInput,
        output_schema = types.GetSoftwareUpdatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusterJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListClusterJobs",
        input_schema = types.ListClusterJobsInput,
        output_schema = types.ListClusterJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listClusters(input, options)
    return self:invokeOperation(input, {
        name = "ListClusters",
        input_schema = types.ListClustersInput,
        output_schema = types.ListClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCompatibleImages(input, options)
    return self:invokeOperation(input, {
        name = "ListCompatibleImages",
        input_schema = types.ListCompatibleImagesInput,
        output_schema = types.ListCompatibleImagesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListJobs",
        input_schema = types.ListJobsInput,
        output_schema = types.ListJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLongTermPricing(input, options)
    return self:invokeOperation(input, {
        name = "ListLongTermPricing",
        input_schema = types.ListLongTermPricingInput,
        output_schema = types.ListLongTermPricingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPickupLocations(input, options)
    return self:invokeOperation(input, {
        name = "ListPickupLocations",
        input_schema = types.ListPickupLocationsInput,
        output_schema = types.ListPickupLocationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listServiceVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListServiceVersions",
        input_schema = types.ListServiceVersionsInput,
        output_schema = types.ListServiceVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCluster(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCluster",
        input_schema = types.UpdateClusterInput,
        output_schema = types.UpdateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJob(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJob",
        input_schema = types.UpdateJobInput,
        output_schema = types.UpdateJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateJobShipmentState(input, options)
    return self:invokeOperation(input, {
        name = "UpdateJobShipmentState",
        input_schema = types.UpdateJobShipmentStateInput,
        output_schema = types.UpdateJobShipmentStateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLongTermPricing(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLongTermPricing",
        input_schema = types.UpdateLongTermPricingInput,
        output_schema = types.UpdateLongTermPricingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
