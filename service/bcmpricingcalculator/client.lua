local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("bcmpricingcalculator.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("bcmpricingcalculator.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSBCMPricingCalculator"
    cfg.signing_name = "awsbcmpricingcalculator"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new("1.0")
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

function Client:batchCreateBillScenarioCommitmentModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateBillScenarioCommitmentModification",
        input_schema = types.BatchCreateBillScenarioCommitmentModificationInput,
        output_schema = types.BatchCreateBillScenarioCommitmentModificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchCreateBillScenarioUsageModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateBillScenarioUsageModification",
        input_schema = types.BatchCreateBillScenarioUsageModificationInput,
        output_schema = types.BatchCreateBillScenarioUsageModificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchCreateWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateWorkloadEstimateUsage",
        input_schema = types.BatchCreateWorkloadEstimateUsageInput,
        output_schema = types.BatchCreateWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteBillScenarioCommitmentModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteBillScenarioCommitmentModification",
        input_schema = types.BatchDeleteBillScenarioCommitmentModificationInput,
        output_schema = types.BatchDeleteBillScenarioCommitmentModificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteBillScenarioUsageModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteBillScenarioUsageModification",
        input_schema = types.BatchDeleteBillScenarioUsageModificationInput,
        output_schema = types.BatchDeleteBillScenarioUsageModificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchDeleteWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteWorkloadEstimateUsage",
        input_schema = types.BatchDeleteWorkloadEstimateUsageInput,
        output_schema = types.BatchDeleteWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchUpdateBillScenarioCommitmentModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateBillScenarioCommitmentModification",
        input_schema = types.BatchUpdateBillScenarioCommitmentModificationInput,
        output_schema = types.BatchUpdateBillScenarioCommitmentModificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchUpdateBillScenarioUsageModification(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateBillScenarioUsageModification",
        input_schema = types.BatchUpdateBillScenarioUsageModificationInput,
        output_schema = types.BatchUpdateBillScenarioUsageModificationOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:batchUpdateWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateWorkloadEstimateUsage",
        input_schema = types.BatchUpdateWorkloadEstimateUsageInput,
        output_schema = types.BatchUpdateWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillEstimate",
        input_schema = types.CreateBillEstimateInput,
        output_schema = types.CreateBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "CreateBillScenario",
        input_schema = types.CreateBillScenarioInput,
        output_schema = types.CreateBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:createWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkloadEstimate",
        input_schema = types.CreateWorkloadEstimateInput,
        output_schema = types.CreateWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillEstimate",
        input_schema = types.DeleteBillEstimateInput,
        output_schema = types.DeleteBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBillScenario",
        input_schema = types.DeleteBillScenarioInput,
        output_schema = types.DeleteBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:deleteWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkloadEstimate",
        input_schema = types.DeleteWorkloadEstimateInput,
        output_schema = types.DeleteWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetBillEstimate",
        input_schema = types.GetBillEstimateInput,
        output_schema = types.GetBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "GetBillScenario",
        input_schema = types.GetBillScenarioInput,
        output_schema = types.GetBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getPreferences(input, options)
    return self:invokeOperation(input, {
        name = "GetPreferences",
        input_schema = types.GetPreferencesInput,
        output_schema = types.GetPreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:getWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkloadEstimate",
        input_schema = types.GetWorkloadEstimateInput,
        output_schema = types.GetWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillEstimateCommitments(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateCommitments",
        input_schema = types.ListBillEstimateCommitmentsInput,
        output_schema = types.ListBillEstimateCommitmentsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillEstimateInputCommitmentModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateInputCommitmentModifications",
        input_schema = types.ListBillEstimateInputCommitmentModificationsInput,
        output_schema = types.ListBillEstimateInputCommitmentModificationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillEstimateInputUsageModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateInputUsageModifications",
        input_schema = types.ListBillEstimateInputUsageModificationsInput,
        output_schema = types.ListBillEstimateInputUsageModificationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillEstimateLineItems(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimateLineItems",
        input_schema = types.ListBillEstimateLineItemsInput,
        output_schema = types.ListBillEstimateLineItemsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillEstimates(input, options)
    return self:invokeOperation(input, {
        name = "ListBillEstimates",
        input_schema = types.ListBillEstimatesInput,
        output_schema = types.ListBillEstimatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillScenarioCommitmentModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillScenarioCommitmentModifications",
        input_schema = types.ListBillScenarioCommitmentModificationsInput,
        output_schema = types.ListBillScenarioCommitmentModificationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillScenarios(input, options)
    return self:invokeOperation(input, {
        name = "ListBillScenarios",
        input_schema = types.ListBillScenariosInput,
        output_schema = types.ListBillScenariosOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listBillScenarioUsageModifications(input, options)
    return self:invokeOperation(input, {
        name = "ListBillScenarioUsageModifications",
        input_schema = types.ListBillScenarioUsageModificationsInput,
        output_schema = types.ListBillScenarioUsageModificationsOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWorkloadEstimates(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadEstimates",
        input_schema = types.ListWorkloadEstimatesInput,
        output_schema = types.ListWorkloadEstimatesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:listWorkloadEstimateUsage(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadEstimateUsage",
        input_schema = types.ListWorkloadEstimateUsageInput,
        output_schema = types.ListWorkloadEstimateUsageOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBillEstimate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillEstimate",
        input_schema = types.UpdateBillEstimateInput,
        output_schema = types.UpdateBillEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateBillScenario(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBillScenario",
        input_schema = types.UpdateBillScenarioInput,
        output_schema = types.UpdateBillScenarioOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updatePreferences(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePreferences",
        input_schema = types.UpdatePreferencesInput,
        output_schema = types.UpdatePreferencesOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

function Client:updateWorkloadEstimate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkloadEstimate",
        input_schema = types.UpdateWorkloadEstimateInput,
        output_schema = types.UpdateWorkloadEstimateOutput,
        http_method = "POST",
        http_path = "/",
    }, options)
end

return M
