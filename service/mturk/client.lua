local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("mturk.endpoint_rules")
local sdk_defaults = require("sdk_defaults")
local types = require("mturk.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "MTurkRequesterServiceV20170117"
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
        input_schema = types.AcceptQualificationRequestInput,
        output_schema = types.AcceptQualificationRequestOutput,
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
        input_schema = types.ApproveAssignmentInput,
        output_schema = types.ApproveAssignmentOutput,
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
        input_schema = types.AssociateQualificationWithWorkerInput,
        output_schema = types.AssociateQualificationWithWorkerOutput,
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
        input_schema = types.CreateAdditionalAssignmentsForHITInput,
        output_schema = types.CreateAdditionalAssignmentsForHITOutput,
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
        input_schema = types.CreateHITInput,
        output_schema = types.CreateHITOutput,
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
        input_schema = types.CreateHITTypeInput,
        output_schema = types.CreateHITTypeOutput,
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
        input_schema = types.CreateHITWithHITTypeInput,
        output_schema = types.CreateHITWithHITTypeOutput,
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
        input_schema = types.CreateQualificationTypeInput,
        output_schema = types.CreateQualificationTypeOutput,
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
        input_schema = types.CreateWorkerBlockInput,
        output_schema = types.CreateWorkerBlockOutput,
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
        input_schema = types.DeleteHITInput,
        output_schema = types.DeleteHITOutput,
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
        input_schema = types.DeleteQualificationTypeInput,
        output_schema = types.DeleteQualificationTypeOutput,
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
        input_schema = types.DeleteWorkerBlockInput,
        output_schema = types.DeleteWorkerBlockOutput,
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
        input_schema = types.DisassociateQualificationFromWorkerInput,
        output_schema = types.DisassociateQualificationFromWorkerOutput,
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
        input_schema = types.GetAccountBalanceInput,
        output_schema = types.GetAccountBalanceOutput,
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
        input_schema = types.GetAssignmentInput,
        output_schema = types.GetAssignmentOutput,
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
        input_schema = types.GetFileUploadURLInput,
        output_schema = types.GetFileUploadURLOutput,
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
        input_schema = types.GetHITInput,
        output_schema = types.GetHITOutput,
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
        input_schema = types.GetQualificationScoreInput,
        output_schema = types.GetQualificationScoreOutput,
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
        input_schema = types.GetQualificationTypeInput,
        output_schema = types.GetQualificationTypeOutput,
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
        input_schema = types.ListAssignmentsForHITInput,
        output_schema = types.ListAssignmentsForHITOutput,
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
        input_schema = types.ListBonusPaymentsInput,
        output_schema = types.ListBonusPaymentsOutput,
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
        input_schema = types.ListHITsInput,
        output_schema = types.ListHITsOutput,
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
        input_schema = types.ListHITsForQualificationTypeInput,
        output_schema = types.ListHITsForQualificationTypeOutput,
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
        input_schema = types.ListQualificationRequestsInput,
        output_schema = types.ListQualificationRequestsOutput,
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
        input_schema = types.ListQualificationTypesInput,
        output_schema = types.ListQualificationTypesOutput,
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
        input_schema = types.ListReviewableHITsInput,
        output_schema = types.ListReviewableHITsOutput,
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
        input_schema = types.ListReviewPolicyResultsForHITInput,
        output_schema = types.ListReviewPolicyResultsForHITOutput,
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
        input_schema = types.ListWorkerBlocksInput,
        output_schema = types.ListWorkerBlocksOutput,
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
        input_schema = types.ListWorkersWithQualificationTypeInput,
        output_schema = types.ListWorkersWithQualificationTypeOutput,
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
        input_schema = types.NotifyWorkersInput,
        output_schema = types.NotifyWorkersOutput,
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
        input_schema = types.RejectAssignmentInput,
        output_schema = types.RejectAssignmentOutput,
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
        input_schema = types.RejectQualificationRequestInput,
        output_schema = types.RejectQualificationRequestOutput,
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
        input_schema = types.SendBonusInput,
        output_schema = types.SendBonusOutput,
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
        input_schema = types.SendTestEventNotificationInput,
        output_schema = types.SendTestEventNotificationOutput,
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
        input_schema = types.UpdateExpirationForHITInput,
        output_schema = types.UpdateExpirationForHITOutput,
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
        input_schema = types.UpdateHITReviewStatusInput,
        output_schema = types.UpdateHITReviewStatusOutput,
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
        input_schema = types.UpdateHITTypeOfHITInput,
        output_schema = types.UpdateHITTypeOfHITOutput,
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
        input_schema = types.UpdateNotificationSettingsInput,
        output_schema = types.UpdateNotificationSettingsOutput,
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
        input_schema = types.UpdateQualificationTypeInput,
        output_schema = types.UpdateQualificationTypeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
