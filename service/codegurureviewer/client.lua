local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("codegurureviewer.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("codegurureviewer.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSGuruFrontendService"
    cfg.signing_name = "awsgurufrontendservice"
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

function Client:associateRepository(input, options)
    return self:invokeOperation(input, {
        name = "AssociateRepository",
        input_schema = types.AssociateRepositoryInput,
        output_schema = types.AssociateRepositoryOutput,
        http_method = "POST",
        http_path = "/associations",
    }, options)
end

function Client:createCodeReview(input, options)
    return self:invokeOperation(input, {
        name = "CreateCodeReview",
        input_schema = types.CreateCodeReviewInput,
        output_schema = types.CreateCodeReviewOutput,
        http_method = "POST",
        http_path = "/codereviews",
    }, options)
end

function Client:describeCodeReview(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCodeReview",
        input_schema = types.DescribeCodeReviewInput,
        output_schema = types.DescribeCodeReviewOutput,
        http_method = "GET",
        http_path = "/codereviews/{CodeReviewArn}",
    }, options)
end

function Client:describeRecommendationFeedback(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRecommendationFeedback",
        input_schema = types.DescribeRecommendationFeedbackInput,
        output_schema = types.DescribeRecommendationFeedbackOutput,
        http_method = "GET",
        http_path = "/feedback/{CodeReviewArn}",
    }, options)
end

function Client:describeRepositoryAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRepositoryAssociation",
        input_schema = types.DescribeRepositoryAssociationInput,
        output_schema = types.DescribeRepositoryAssociationOutput,
        http_method = "GET",
        http_path = "/associations/{AssociationArn}",
    }, options)
end

function Client:disassociateRepository(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRepository",
        input_schema = types.DisassociateRepositoryInput,
        output_schema = types.DisassociateRepositoryOutput,
        http_method = "DELETE",
        http_path = "/associations/{AssociationArn}",
    }, options)
end

function Client:listCodeReviews(input, options)
    return self:invokeOperation(input, {
        name = "ListCodeReviews",
        input_schema = types.ListCodeReviewsInput,
        output_schema = types.ListCodeReviewsOutput,
        http_method = "GET",
        http_path = "/codereviews",
    }, options)
end

function Client:listRecommendationFeedback(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendationFeedback",
        input_schema = types.ListRecommendationFeedbackInput,
        output_schema = types.ListRecommendationFeedbackOutput,
        http_method = "GET",
        http_path = "/feedback/{CodeReviewArn}/RecommendationFeedback",
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
        http_method = "GET",
        http_path = "/codereviews/{CodeReviewArn}/Recommendations",
    }, options)
end

function Client:listRepositoryAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListRepositoryAssociations",
        input_schema = types.ListRepositoryAssociationsInput,
        output_schema = types.ListRepositoryAssociationsOutput,
        http_method = "GET",
        http_path = "/associations",
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

function Client:putRecommendationFeedback(input, options)
    return self:invokeOperation(input, {
        name = "PutRecommendationFeedback",
        input_schema = types.PutRecommendationFeedbackInput,
        output_schema = types.PutRecommendationFeedbackOutput,
        http_method = "PUT",
        http_path = "/feedback",
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

return M
