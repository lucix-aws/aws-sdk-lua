local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("snowball.endpoint_rules")
local schemas = require("snowball.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSIESnowballJobManagementService"
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
        input_schema = schemas.CancelClusterInput,
        output_schema = schemas.CancelClusterOutput,
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
        input_schema = schemas.CancelJobInput,
        output_schema = schemas.CancelJobOutput,
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
        input_schema = schemas.CreateAddressInput,
        output_schema = schemas.CreateAddressOutput,
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
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
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
        input_schema = schemas.CreateJobInput,
        output_schema = schemas.CreateJobOutput,
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
        input_schema = schemas.CreateLongTermPricingInput,
        output_schema = schemas.CreateLongTermPricingOutput,
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
        input_schema = schemas.CreateReturnShippingLabelInput,
        output_schema = schemas.CreateReturnShippingLabelOutput,
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
        input_schema = schemas.DescribeAddressInput,
        output_schema = schemas.DescribeAddressOutput,
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
        input_schema = schemas.DescribeAddressesInput,
        output_schema = schemas.DescribeAddressesOutput,
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
        input_schema = schemas.DescribeClusterInput,
        output_schema = schemas.DescribeClusterOutput,
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
        input_schema = schemas.DescribeJobInput,
        output_schema = schemas.DescribeJobOutput,
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
        input_schema = schemas.DescribeReturnShippingLabelInput,
        output_schema = schemas.DescribeReturnShippingLabelOutput,
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
        input_schema = schemas.GetJobManifestInput,
        output_schema = schemas.GetJobManifestOutput,
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
        input_schema = schemas.GetJobUnlockCodeInput,
        output_schema = schemas.GetJobUnlockCodeOutput,
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
        input_schema = schemas.GetSnowballUsageInput,
        output_schema = schemas.GetSnowballUsageOutput,
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
        input_schema = schemas.GetSoftwareUpdatesInput,
        output_schema = schemas.GetSoftwareUpdatesOutput,
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
        input_schema = schemas.ListClusterJobsInput,
        output_schema = schemas.ListClusterJobsOutput,
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
        input_schema = schemas.ListClustersInput,
        output_schema = schemas.ListClustersOutput,
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
        input_schema = schemas.ListCompatibleImagesInput,
        output_schema = schemas.ListCompatibleImagesOutput,
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
        input_schema = schemas.ListJobsInput,
        output_schema = schemas.ListJobsOutput,
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
        input_schema = schemas.ListLongTermPricingInput,
        output_schema = schemas.ListLongTermPricingOutput,
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
        input_schema = schemas.ListPickupLocationsInput,
        output_schema = schemas.ListPickupLocationsOutput,
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
        input_schema = schemas.ListServiceVersionsInput,
        output_schema = schemas.ListServiceVersionsOutput,
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
        input_schema = schemas.UpdateClusterInput,
        output_schema = schemas.UpdateClusterOutput,
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
        input_schema = schemas.UpdateJobInput,
        output_schema = schemas.UpdateJobOutput,
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
        input_schema = schemas.UpdateJobShipmentStateInput,
        output_schema = schemas.UpdateJobShipmentStateOutput,
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
        input_schema = schemas.UpdateLongTermPricingInput,
        output_schema = schemas.UpdateLongTermPricingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
