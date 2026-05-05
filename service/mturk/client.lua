local awsjson_protocol = require("smithy.protocol.awsjson")
local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("mturk.endpoint_rules")
local schemas = require("mturk.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MTurkRequesterServiceV20170117"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "mturk-requester", signing_region = cfg.region } }
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

function Client:acceptQualificationRequest(input, options)
    return self:invokeOperation(input, {
        name = "AcceptQualificationRequest",
        input_schema = schemas.AcceptQualificationRequestInput,
        output_schema = schemas.AcceptQualificationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:approveAssignment(input, options)
    return self:invokeOperation(input, {
        name = "ApproveAssignment",
        input_schema = schemas.ApproveAssignmentInput,
        output_schema = schemas.ApproveAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateQualificationWithWorker(input, options)
    return self:invokeOperation(input, {
        name = "AssociateQualificationWithWorker",
        input_schema = schemas.AssociateQualificationWithWorkerInput,
        output_schema = schemas.AssociateQualificationWithWorkerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAdditionalAssignmentsForHIT(input, options)
    return self:invokeOperation(input, {
        name = "CreateAdditionalAssignmentsForHIT",
        input_schema = schemas.CreateAdditionalAssignmentsForHITInput,
        output_schema = schemas.CreateAdditionalAssignmentsForHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHIT(input, options)
    return self:invokeOperation(input, {
        name = "CreateHIT",
        input_schema = schemas.CreateHITInput,
        output_schema = schemas.CreateHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHITType(input, options)
    return self:invokeOperation(input, {
        name = "CreateHITType",
        input_schema = schemas.CreateHITTypeInput,
        output_schema = schemas.CreateHITTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHITWithHITType(input, options)
    return self:invokeOperation(input, {
        name = "CreateHITWithHITType",
        input_schema = schemas.CreateHITWithHITTypeInput,
        output_schema = schemas.CreateHITWithHITTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQualificationType(input, options)
    return self:invokeOperation(input, {
        name = "CreateQualificationType",
        input_schema = schemas.CreateQualificationTypeInput,
        output_schema = schemas.CreateQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkerBlock(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkerBlock",
        input_schema = schemas.CreateWorkerBlockInput,
        output_schema = schemas.CreateWorkerBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHIT(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHIT",
        input_schema = schemas.DeleteHITInput,
        output_schema = schemas.DeleteHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQualificationType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQualificationType",
        input_schema = schemas.DeleteQualificationTypeInput,
        output_schema = schemas.DeleteQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkerBlock(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkerBlock",
        input_schema = schemas.DeleteWorkerBlockInput,
        output_schema = schemas.DeleteWorkerBlockOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateQualificationFromWorker(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateQualificationFromWorker",
        input_schema = schemas.DisassociateQualificationFromWorkerInput,
        output_schema = schemas.DisassociateQualificationFromWorkerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAccountBalance(input, options)
    return self:invokeOperation(input, {
        name = "GetAccountBalance",
        input_schema = schemas.GetAccountBalanceInput,
        output_schema = schemas.GetAccountBalanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAssignment(input, options)
    return self:invokeOperation(input, {
        name = "GetAssignment",
        input_schema = schemas.GetAssignmentInput,
        output_schema = schemas.GetAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFileUploadURL(input, options)
    return self:invokeOperation(input, {
        name = "GetFileUploadURL",
        input_schema = schemas.GetFileUploadURLInput,
        output_schema = schemas.GetFileUploadURLOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getHIT(input, options)
    return self:invokeOperation(input, {
        name = "GetHIT",
        input_schema = schemas.GetHITInput,
        output_schema = schemas.GetHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQualificationScore(input, options)
    return self:invokeOperation(input, {
        name = "GetQualificationScore",
        input_schema = schemas.GetQualificationScoreInput,
        output_schema = schemas.GetQualificationScoreOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getQualificationType(input, options)
    return self:invokeOperation(input, {
        name = "GetQualificationType",
        input_schema = schemas.GetQualificationTypeInput,
        output_schema = schemas.GetQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssignmentsForHIT(input, options)
    return self:invokeOperation(input, {
        name = "ListAssignmentsForHIT",
        input_schema = schemas.ListAssignmentsForHITInput,
        output_schema = schemas.ListAssignmentsForHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBonusPayments(input, options)
    return self:invokeOperation(input, {
        name = "ListBonusPayments",
        input_schema = schemas.ListBonusPaymentsInput,
        output_schema = schemas.ListBonusPaymentsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHITs(input, options)
    return self:invokeOperation(input, {
        name = "ListHITs",
        input_schema = schemas.ListHITsInput,
        output_schema = schemas.ListHITsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHITsForQualificationType(input, options)
    return self:invokeOperation(input, {
        name = "ListHITsForQualificationType",
        input_schema = schemas.ListHITsForQualificationTypeInput,
        output_schema = schemas.ListHITsForQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQualificationRequests(input, options)
    return self:invokeOperation(input, {
        name = "ListQualificationRequests",
        input_schema = schemas.ListQualificationRequestsInput,
        output_schema = schemas.ListQualificationRequestsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQualificationTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListQualificationTypes",
        input_schema = schemas.ListQualificationTypesInput,
        output_schema = schemas.ListQualificationTypesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReviewableHITs(input, options)
    return self:invokeOperation(input, {
        name = "ListReviewableHITs",
        input_schema = schemas.ListReviewableHITsInput,
        output_schema = schemas.ListReviewableHITsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReviewPolicyResultsForHIT(input, options)
    return self:invokeOperation(input, {
        name = "ListReviewPolicyResultsForHIT",
        input_schema = schemas.ListReviewPolicyResultsForHITInput,
        output_schema = schemas.ListReviewPolicyResultsForHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkerBlocks(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkerBlocks",
        input_schema = schemas.ListWorkerBlocksInput,
        output_schema = schemas.ListWorkerBlocksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkersWithQualificationType(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkersWithQualificationType",
        input_schema = schemas.ListWorkersWithQualificationTypeInput,
        output_schema = schemas.ListWorkersWithQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:notifyWorkers(input, options)
    return self:invokeOperation(input, {
        name = "NotifyWorkers",
        input_schema = schemas.NotifyWorkersInput,
        output_schema = schemas.NotifyWorkersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectAssignment(input, options)
    return self:invokeOperation(input, {
        name = "RejectAssignment",
        input_schema = schemas.RejectAssignmentInput,
        output_schema = schemas.RejectAssignmentOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectQualificationRequest(input, options)
    return self:invokeOperation(input, {
        name = "RejectQualificationRequest",
        input_schema = schemas.RejectQualificationRequestInput,
        output_schema = schemas.RejectQualificationRequestOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendBonus(input, options)
    return self:invokeOperation(input, {
        name = "SendBonus",
        input_schema = schemas.SendBonusInput,
        output_schema = schemas.SendBonusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendTestEventNotification(input, options)
    return self:invokeOperation(input, {
        name = "SendTestEventNotification",
        input_schema = schemas.SendTestEventNotificationInput,
        output_schema = schemas.SendTestEventNotificationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExpirationForHIT(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExpirationForHIT",
        input_schema = schemas.UpdateExpirationForHITInput,
        output_schema = schemas.UpdateExpirationForHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHITReviewStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHITReviewStatus",
        input_schema = schemas.UpdateHITReviewStatusInput,
        output_schema = schemas.UpdateHITReviewStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHITTypeOfHIT(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHITTypeOfHIT",
        input_schema = schemas.UpdateHITTypeOfHITInput,
        output_schema = schemas.UpdateHITTypeOfHITOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotificationSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationSettings",
        input_schema = schemas.UpdateNotificationSettingsInput,
        output_schema = schemas.UpdateNotificationSettingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQualificationType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQualificationType",
        input_schema = schemas.UpdateQualificationTypeInput,
        output_schema = schemas.UpdateQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
