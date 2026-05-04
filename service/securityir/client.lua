local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("securityir.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("securityir.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityIncidentResponse"
    cfg.signing_name = "security-ir"
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

function Client:batchGetMemberAccountDetails(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMemberAccountDetails",
        input_schema = types.BatchGetMemberAccountDetailsInput,
        output_schema = types.BatchGetMemberAccountDetailsOutput,
        http_method = "POST",
        http_path = "/v1/membership/{membershipId}/batch-member-details",
    }, options)
end

function Client:cancelMembership(input, options)
    return self:invokeOperation(input, {
        name = "CancelMembership",
        input_schema = types.CancelMembershipInput,
        output_schema = types.CancelMembershipOutput,
        http_method = "PUT",
        http_path = "/v1/membership/{membershipId}",
    }, options)
end

function Client:closeCase(input, options)
    return self:invokeOperation(input, {
        name = "CloseCase",
        input_schema = types.CloseCaseInput,
        output_schema = types.CloseCaseOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/close-case",
    }, options)
end

function Client:createCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateCase",
        input_schema = types.CreateCaseInput,
        output_schema = types.CreateCaseOutput,
        http_method = "POST",
        http_path = "/v1/create-case",
    }, options)
end

function Client:createCaseComment(input, options)
    return self:invokeOperation(input, {
        name = "CreateCaseComment",
        input_schema = types.CreateCaseCommentInput,
        output_schema = types.CreateCaseCommentOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/create-comment",
    }, options)
end

function Client:createMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembership",
        input_schema = types.CreateMembershipInput,
        output_schema = types.CreateMembershipOutput,
        http_method = "POST",
        http_path = "/v1/membership",
    }, options)
end

function Client:getCase(input, options)
    return self:invokeOperation(input, {
        name = "GetCase",
        input_schema = types.GetCaseInput,
        output_schema = types.GetCaseOutput,
        http_method = "GET",
        http_path = "/v1/cases/{caseId}/get-case",
    }, options)
end

function Client:getCaseAttachmentDownloadUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseAttachmentDownloadUrl",
        input_schema = types.GetCaseAttachmentDownloadUrlInput,
        output_schema = types.GetCaseAttachmentDownloadUrlOutput,
        http_method = "GET",
        http_path = "/v1/cases/{caseId}/get-presigned-url/{attachmentId}",
    }, options)
end

function Client:getCaseAttachmentUploadUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseAttachmentUploadUrl",
        input_schema = types.GetCaseAttachmentUploadUrlInput,
        output_schema = types.GetCaseAttachmentUploadUrlOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/get-presigned-url",
    }, options)
end

function Client:getMembership(input, options)
    return self:invokeOperation(input, {
        name = "GetMembership",
        input_schema = types.GetMembershipInput,
        output_schema = types.GetMembershipOutput,
        http_method = "GET",
        http_path = "/v1/membership/{membershipId}",
    }, options)
end

function Client:listCaseEdits(input, options)
    return self:invokeOperation(input, {
        name = "ListCaseEdits",
        input_schema = types.ListCaseEditsInput,
        output_schema = types.ListCaseEditsOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/list-case-edits",
    }, options)
end

function Client:listCases(input, options)
    return self:invokeOperation(input, {
        name = "ListCases",
        input_schema = types.ListCasesInput,
        output_schema = types.ListCasesOutput,
        http_method = "POST",
        http_path = "/v1/list-cases",
    }, options)
end

function Client:listComments(input, options)
    return self:invokeOperation(input, {
        name = "ListComments",
        input_schema = types.ListCommentsInput,
        output_schema = types.ListCommentsOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/list-comments",
    }, options)
end

function Client:listInvestigations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvestigations",
        input_schema = types.ListInvestigationsInput,
        output_schema = types.ListInvestigationsOutput,
        http_method = "GET",
        http_path = "/v1/cases/{caseId}/list-investigations",
    }, options)
end

function Client:listMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberships",
        input_schema = types.ListMembershipsInput,
        output_schema = types.ListMembershipsOutput,
        http_method = "POST",
        http_path = "/v1/memberships",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:sendFeedback(input, options)
    return self:invokeOperation(input, {
        name = "SendFeedback",
        input_schema = types.SendFeedbackInput,
        output_schema = types.SendFeedbackOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/feedback/{resultId}/send-feedback",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceArn}",
    }, options)
end

function Client:updateCase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCase",
        input_schema = types.UpdateCaseInput,
        output_schema = types.UpdateCaseOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/update-case",
    }, options)
end

function Client:updateCaseComment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCaseComment",
        input_schema = types.UpdateCaseCommentInput,
        output_schema = types.UpdateCaseCommentOutput,
        http_method = "PUT",
        http_path = "/v1/cases/{caseId}/update-case-comment/{commentId}",
    }, options)
end

function Client:updateCaseStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCaseStatus",
        input_schema = types.UpdateCaseStatusInput,
        output_schema = types.UpdateCaseStatusOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/update-case-status",
    }, options)
end

function Client:updateMembership(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMembership",
        input_schema = types.UpdateMembershipInput,
        output_schema = types.UpdateMembershipOutput,
        http_method = "PUT",
        http_path = "/v1/membership/{membershipId}/update-membership",
    }, options)
end

function Client:updateResolverType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverType",
        input_schema = types.UpdateResolverTypeInput,
        output_schema = types.UpdateResolverTypeOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/update-resolver-type",
    }, options)
end

return M
