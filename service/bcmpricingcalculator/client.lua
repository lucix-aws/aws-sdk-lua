local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("bcmpricingcalculator.endpoint_rules")
local schemas = require("bcmpricingcalculator.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBCMPricingCalculator"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "bcm-pricing-calculator", signing_region = cfg.region } }
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

function Client:batchCreateBillScenarioCommitmentModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateBillScenarioCommitmentModification",
        input_schema = schemas.BatchCreateBillScenarioCommitmentModificationInput,
        output_schema = schemas.BatchCreateBillScenarioCommitmentModificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateBillScenarioUsageModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateBillScenarioUsageModification",
        input_schema = schemas.BatchCreateBillScenarioUsageModificationInput,
        output_schema = schemas.BatchCreateBillScenarioUsageModificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateWorkloadEstimateUsage",
        input_schema = schemas.BatchCreateWorkloadEstimateUsageInput,
        output_schema = schemas.BatchCreateWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteBillScenarioCommitmentModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteBillScenarioCommitmentModification",
        input_schema = schemas.BatchDeleteBillScenarioCommitmentModificationInput,
        output_schema = schemas.BatchDeleteBillScenarioCommitmentModificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteBillScenarioUsageModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteBillScenarioUsageModification",
        input_schema = schemas.BatchDeleteBillScenarioUsageModificationInput,
        output_schema = schemas.BatchDeleteBillScenarioUsageModificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteWorkloadEstimateUsage",
        input_schema = schemas.BatchDeleteWorkloadEstimateUsageInput,
        output_schema = schemas.BatchDeleteWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateBillScenarioCommitmentModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateBillScenarioCommitmentModification",
        input_schema = schemas.BatchUpdateBillScenarioCommitmentModificationInput,
        output_schema = schemas.BatchUpdateBillScenarioCommitmentModificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateBillScenarioUsageModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateBillScenarioUsageModification",
        input_schema = schemas.BatchUpdateBillScenarioUsageModificationInput,
        output_schema = schemas.BatchUpdateBillScenarioUsageModificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateWorkloadEstimateUsage",
        input_schema = schemas.BatchUpdateWorkloadEstimateUsageInput,
        output_schema = schemas.BatchUpdateWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillEstimate",
        input_schema = schemas.CreateBillEstimateInput,
        output_schema = schemas.CreateBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillScenario",
        input_schema = schemas.CreateBillScenarioInput,
        output_schema = schemas.CreateBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkloadEstimate",
        input_schema = schemas.CreateWorkloadEstimateInput,
        output_schema = schemas.CreateWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillEstimate",
        input_schema = schemas.DeleteBillEstimateInput,
        output_schema = schemas.DeleteBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillScenario",
        input_schema = schemas.DeleteBillScenarioInput,
        output_schema = schemas.DeleteBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkloadEstimate",
        input_schema = schemas.DeleteWorkloadEstimateInput,
        output_schema = schemas.DeleteWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetBillEstimate",
        input_schema = schemas.GetBillEstimateInput,
        output_schema = schemas.GetBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "GetBillScenario",
        input_schema = schemas.GetBillScenarioInput,
        output_schema = schemas.GetBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetPreferences",
        input_schema = schemas.GetPreferencesInput,
        output_schema = schemas.GetPreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadEstimate",
        input_schema = schemas.GetWorkloadEstimateInput,
        output_schema = schemas.GetWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillEstimateCommitments(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateCommitments",
        input_schema = schemas.ListBillEstimateCommitmentsInput,
        output_schema = schemas.ListBillEstimateCommitmentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillEstimateInputCommitmentModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateInputCommitmentModifications",
        input_schema = schemas.ListBillEstimateInputCommitmentModificationsInput,
        output_schema = schemas.ListBillEstimateInputCommitmentModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillEstimateInputUsageModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateInputUsageModifications",
        input_schema = schemas.ListBillEstimateInputUsageModificationsInput,
        output_schema = schemas.ListBillEstimateInputUsageModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillEstimateLineItems(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateLineItems",
        input_schema = schemas.ListBillEstimateLineItemsInput,
        output_schema = schemas.ListBillEstimateLineItemsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillEstimates(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimates",
        input_schema = schemas.ListBillEstimatesInput,
        output_schema = schemas.ListBillEstimatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillScenarioCommitmentModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillScenarioCommitmentModifications",
        input_schema = schemas.ListBillScenarioCommitmentModificationsInput,
        output_schema = schemas.ListBillScenarioCommitmentModificationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillScenarios(input, options)
    return self:invokeOperation(input, {
        name = "ListBillScenarios",
        input_schema = schemas.ListBillScenariosInput,
        output_schema = schemas.ListBillScenariosOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBillScenarioUsageModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillScenarioUsageModifications",
        input_schema = schemas.ListBillScenarioUsageModificationsInput,
        output_schema = schemas.ListBillScenarioUsageModificationsOutput,
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
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloadEstimates(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadEstimates",
        input_schema = schemas.ListWorkloadEstimatesInput,
        output_schema = schemas.ListWorkloadEstimatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadEstimateUsage",
        input_schema = schemas.ListWorkloadEstimateUsageInput,
        output_schema = schemas.ListWorkloadEstimateUsageOutput,
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
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
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
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillEstimate",
        input_schema = schemas.UpdateBillEstimateInput,
        output_schema = schemas.UpdateBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillScenario",
        input_schema = schemas.UpdateBillScenarioInput,
        output_schema = schemas.UpdateBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePreferences",
        input_schema = schemas.UpdatePreferencesInput,
        output_schema = schemas.UpdatePreferencesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkloadEstimate",
        input_schema = schemas.UpdateWorkloadEstimateInput,
        output_schema = schemas.UpdateWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
