local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("securityir.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("securityir.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "SecurityIncidentResponse"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "security-ir", signing_region = cfg.region } }
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

function Client:batchGetMemberAccountDetails(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetMemberAccountDetails",
        input_schema = schemas.BatchGetMemberAccountDetailsInput,
        output_schema = schemas.BatchGetMemberAccountDetailsOutput,
        http_method = "POST",
        http_path = "/v1/membership/{membershipId}/batch-member-details",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelMembership(input, options)
    return self:invokeOperation(input, {
        name = "CancelMembership",
        input_schema = schemas.CancelMembershipInput,
        output_schema = schemas.CancelMembershipOutput,
        http_method = "PUT",
        http_path = "/v1/membership/{membershipId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:closeCase(input, options)
    return self:invokeOperation(input, {
        name = "CloseCase",
        input_schema = schemas.CloseCaseInput,
        output_schema = schemas.CloseCaseOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/close-case",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateCase",
        input_schema = schemas.CreateCaseInput,
        output_schema = schemas.CreateCaseOutput,
        http_method = "POST",
        http_path = "/v1/create-case",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCaseComment(input, options)
    return self:invokeOperation(input, {
        name = "CreateCaseComment",
        input_schema = schemas.CreateCaseCommentInput,
        output_schema = schemas.CreateCaseCommentOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/create-comment",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMembership(input, options)
    return self:invokeOperation(input, {
        name = "CreateMembership",
        input_schema = schemas.CreateMembershipInput,
        output_schema = schemas.CreateMembershipOutput,
        http_method = "POST",
        http_path = "/v1/membership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCase(input, options)
    return self:invokeOperation(input, {
        name = "GetCase",
        input_schema = schemas.GetCaseInput,
        output_schema = schemas.GetCaseOutput,
        http_method = "GET",
        http_path = "/v1/cases/{caseId}/get-case",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCaseAttachmentDownloadUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseAttachmentDownloadUrl",
        input_schema = schemas.GetCaseAttachmentDownloadUrlInput,
        output_schema = schemas.GetCaseAttachmentDownloadUrlOutput,
        http_method = "GET",
        http_path = "/v1/cases/{caseId}/get-presigned-url/{attachmentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCaseAttachmentUploadUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetCaseAttachmentUploadUrl",
        input_schema = schemas.GetCaseAttachmentUploadUrlInput,
        output_schema = schemas.GetCaseAttachmentUploadUrlOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/get-presigned-url",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMembership(input, options)
    return self:invokeOperation(input, {
        name = "GetMembership",
        input_schema = schemas.GetMembershipInput,
        output_schema = schemas.GetMembershipOutput,
        http_method = "GET",
        http_path = "/v1/membership/{membershipId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCaseEdits(input, options)
    return self:invokeOperation(input, {
        name = "ListCaseEdits",
        input_schema = schemas.ListCaseEditsInput,
        output_schema = schemas.ListCaseEditsOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/list-case-edits",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCases(input, options)
    return self:invokeOperation(input, {
        name = "ListCases",
        input_schema = schemas.ListCasesInput,
        output_schema = schemas.ListCasesOutput,
        http_method = "POST",
        http_path = "/v1/list-cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listComments(input, options)
    return self:invokeOperation(input, {
        name = "ListComments",
        input_schema = schemas.ListCommentsInput,
        output_schema = schemas.ListCommentsOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/list-comments",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInvestigations(input, options)
    return self:invokeOperation(input, {
        name = "ListInvestigations",
        input_schema = schemas.ListInvestigationsInput,
        output_schema = schemas.ListInvestigationsOutput,
        http_method = "GET",
        http_path = "/v1/cases/{caseId}/list-investigations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMemberships(input, options)
    return self:invokeOperation(input, {
        name = "ListMemberships",
        input_schema = schemas.ListMembershipsInput,
        output_schema = schemas.ListMembershipsOutput,
        http_method = "POST",
        http_path = "/v1/memberships",
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
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendFeedback(input, options)
    return self:invokeOperation(input, {
        name = "SendFeedback",
        input_schema = schemas.SendFeedbackInput,
        output_schema = schemas.SendFeedbackOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/feedback/{resultId}/send-feedback",
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
        http_path = "/v1/tags/{resourceArn}",
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
        http_method = "DELETE",
        http_path = "/v1/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCase",
        input_schema = schemas.UpdateCaseInput,
        output_schema = schemas.UpdateCaseOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/update-case",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCaseComment(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCaseComment",
        input_schema = schemas.UpdateCaseCommentInput,
        output_schema = schemas.UpdateCaseCommentOutput,
        http_method = "PUT",
        http_path = "/v1/cases/{caseId}/update-case-comment/{commentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateCaseStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateCaseStatus",
        input_schema = schemas.UpdateCaseStatusInput,
        output_schema = schemas.UpdateCaseStatusOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/update-case-status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateMembership(input, options)
    return self:invokeOperation(input, {
        name = "UpdateMembership",
        input_schema = schemas.UpdateMembershipInput,
        output_schema = schemas.UpdateMembershipOutput,
        http_method = "PUT",
        http_path = "/v1/membership/{membershipId}/update-membership",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResolverType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResolverType",
        input_schema = schemas.UpdateResolverTypeInput,
        output_schema = schemas.UpdateResolverTypeOutput,
        http_method = "POST",
        http_path = "/v1/cases/{caseId}/update-resolver-type",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
