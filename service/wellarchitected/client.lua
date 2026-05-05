local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("wellarchitected.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("wellarchitected.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WellArchitectedApiServiceLambda"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "wellarchitected", signing_region = cfg.region } }
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

function Client:associateLenses(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLenses",
        input_schema = schemas.AssociateLensesInput,
        output_schema = schemas.AssociateLensesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/associateLenses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateProfiles(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProfiles",
        input_schema = schemas.AssociateProfilesInput,
        output_schema = schemas.AssociateProfilesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/associateProfiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLensShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateLensShare",
        input_schema = schemas.CreateLensShareInput,
        output_schema = schemas.CreateLensShareOutput,
        http_method = "POST",
        http_path = "/lenses/{LensAlias}/shares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createLensVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateLensVersion",
        input_schema = schemas.CreateLensVersionInput,
        output_schema = schemas.CreateLensVersionOutput,
        http_method = "POST",
        http_path = "/lenses/{LensAlias}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createMilestone(input, options)
    return self:invokeOperation(input, {
        name = "CreateMilestone",
        input_schema = schemas.CreateMilestoneInput,
        output_schema = schemas.CreateMilestoneOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/milestones",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = schemas.CreateProfileInput,
        output_schema = schemas.CreateProfileOutput,
        http_method = "POST",
        http_path = "/profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createProfileShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfileShare",
        input_schema = schemas.CreateProfileShareInput,
        output_schema = schemas.CreateProfileShareOutput,
        http_method = "POST",
        http_path = "/profiles/{ProfileArn}/shares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateReviewTemplate",
        input_schema = schemas.CreateReviewTemplateInput,
        output_schema = schemas.CreateReviewTemplateOutput,
        http_method = "POST",
        http_path = "/reviewTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTemplateShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplateShare",
        input_schema = schemas.CreateTemplateShareInput,
        output_schema = schemas.CreateTemplateShareOutput,
        http_method = "POST",
        http_path = "/templates/shares/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkload(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkload",
        input_schema = schemas.CreateWorkloadInput,
        output_schema = schemas.CreateWorkloadOutput,
        http_method = "POST",
        http_path = "/workloads",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkloadShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkloadShare",
        input_schema = schemas.CreateWorkloadShareInput,
        output_schema = schemas.CreateWorkloadShareOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/shares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLens(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLens",
        input_schema = schemas.DeleteLensInput,
        output_schema = schemas.DeleteLensOutput,
        http_method = "DELETE",
        http_path = "/lenses/{LensAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteLensShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLensShare",
        input_schema = schemas.DeleteLensShareInput,
        output_schema = schemas.DeleteLensShareOutput,
        http_method = "DELETE",
        http_path = "/lenses/{LensAlias}/shares/{ShareId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = schemas.DeleteProfileInput,
        output_schema = schemas.DeleteProfileOutput,
        http_method = "DELETE",
        http_path = "/profiles/{ProfileArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteProfileShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfileShare",
        input_schema = schemas.DeleteProfileShareInput,
        output_schema = schemas.DeleteProfileShareOutput,
        http_method = "DELETE",
        http_path = "/profiles/{ProfileArn}/shares/{ShareId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReviewTemplate",
        input_schema = schemas.DeleteReviewTemplateInput,
        output_schema = schemas.DeleteReviewTemplateOutput,
        http_method = "DELETE",
        http_path = "/reviewTemplates/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTemplateShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplateShare",
        input_schema = schemas.DeleteTemplateShareInput,
        output_schema = schemas.DeleteTemplateShareOutput,
        http_method = "DELETE",
        http_path = "/templates/shares/{TemplateArn}/{ShareId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkload(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkload",
        input_schema = schemas.DeleteWorkloadInput,
        output_schema = schemas.DeleteWorkloadOutput,
        http_method = "DELETE",
        http_path = "/workloads/{WorkloadId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkloadShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkloadShare",
        input_schema = schemas.DeleteWorkloadShareInput,
        output_schema = schemas.DeleteWorkloadShareOutput,
        http_method = "DELETE",
        http_path = "/workloads/{WorkloadId}/shares/{ShareId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateLenses(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLenses",
        input_schema = schemas.DisassociateLensesInput,
        output_schema = schemas.DisassociateLensesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/disassociateLenses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateProfiles(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProfiles",
        input_schema = schemas.DisassociateProfilesInput,
        output_schema = schemas.DisassociateProfilesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/disassociateProfiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:exportLens(input, options)
    return self:invokeOperation(input, {
        name = "ExportLens",
        input_schema = schemas.ExportLensInput,
        output_schema = schemas.ExportLensOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}/export",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAnswer(input, options)
    return self:invokeOperation(input, {
        name = "GetAnswer",
        input_schema = schemas.GetAnswerInput,
        output_schema = schemas.GetAnswerOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getConsolidatedReport(input, options)
    return self:invokeOperation(input, {
        name = "GetConsolidatedReport",
        input_schema = schemas.GetConsolidatedReportInput,
        output_schema = schemas.GetConsolidatedReportOutput,
        http_method = "GET",
        http_path = "/consolidatedReport",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalSettings",
        input_schema = schemas.GetGlobalSettingsInput,
        output_schema = schemas.GetGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/global-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLens(input, options)
    return self:invokeOperation(input, {
        name = "GetLens",
        input_schema = schemas.GetLensInput,
        output_schema = schemas.GetLensOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLensReview(input, options)
    return self:invokeOperation(input, {
        name = "GetLensReview",
        input_schema = schemas.GetLensReviewInput,
        output_schema = schemas.GetLensReviewOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLensReviewReport(input, options)
    return self:invokeOperation(input, {
        name = "GetLensReviewReport",
        input_schema = schemas.GetLensReviewReportInput,
        output_schema = schemas.GetLensReviewReportOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getLensVersionDifference(input, options)
    return self:invokeOperation(input, {
        name = "GetLensVersionDifference",
        input_schema = schemas.GetLensVersionDifferenceInput,
        output_schema = schemas.GetLensVersionDifferenceOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}/versionDifference",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMilestone(input, options)
    return self:invokeOperation(input, {
        name = "GetMilestone",
        input_schema = schemas.GetMilestoneInput,
        output_schema = schemas.GetMilestoneOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/milestones/{MilestoneNumber}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProfile",
        input_schema = schemas.GetProfileInput,
        output_schema = schemas.GetProfileOutput,
        http_method = "GET",
        http_path = "/profiles/{ProfileArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getProfileTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileTemplate",
        input_schema = schemas.GetProfileTemplateInput,
        output_schema = schemas.GetProfileTemplateOutput,
        http_method = "GET",
        http_path = "/profileTemplate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetReviewTemplate",
        input_schema = schemas.GetReviewTemplateInput,
        output_schema = schemas.GetReviewTemplateOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReviewTemplateAnswer(input, options)
    return self:invokeOperation(input, {
        name = "GetReviewTemplateAnswer",
        input_schema = schemas.GetReviewTemplateAnswerInput,
        output_schema = schemas.GetReviewTemplateAnswerOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReviewTemplateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "GetReviewTemplateLensReview",
        input_schema = schemas.GetReviewTemplateLensReviewInput,
        output_schema = schemas.GetReviewTemplateLensReviewOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getWorkload(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkload",
        input_schema = schemas.GetWorkloadInput,
        output_schema = schemas.GetWorkloadOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importLens(input, options)
    return self:invokeOperation(input, {
        name = "ImportLens",
        input_schema = schemas.ImportLensInput,
        output_schema = schemas.ImportLensOutput,
        http_method = "PUT",
        http_path = "/importLens",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnswers(input, options)
    return self:invokeOperation(input, {
        name = "ListAnswers",
        input_schema = schemas.ListAnswersInput,
        output_schema = schemas.ListAnswersOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCheckDetails(input, options)
    return self:invokeOperation(input, {
        name = "ListCheckDetails",
        input_schema = schemas.ListCheckDetailsInput,
        output_schema = schemas.ListCheckDetailsOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/checks",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCheckSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListCheckSummaries",
        input_schema = schemas.ListCheckSummariesInput,
        output_schema = schemas.ListCheckSummariesOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/checkSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLenses(input, options)
    return self:invokeOperation(input, {
        name = "ListLenses",
        input_schema = schemas.ListLensesInput,
        output_schema = schemas.ListLensesOutput,
        http_method = "GET",
        http_path = "/lenses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLensReviewImprovements(input, options)
    return self:invokeOperation(input, {
        name = "ListLensReviewImprovements",
        input_schema = schemas.ListLensReviewImprovementsInput,
        output_schema = schemas.ListLensReviewImprovementsOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLensReviews(input, options)
    return self:invokeOperation(input, {
        name = "ListLensReviews",
        input_schema = schemas.ListLensReviewsInput,
        output_schema = schemas.ListLensReviewsOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLensShares(input, options)
    return self:invokeOperation(input, {
        name = "ListLensShares",
        input_schema = schemas.ListLensSharesInput,
        output_schema = schemas.ListLensSharesOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}/shares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listMilestones(input, options)
    return self:invokeOperation(input, {
        name = "ListMilestones",
        input_schema = schemas.ListMilestonesInput,
        output_schema = schemas.ListMilestonesOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/milestonesSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifications",
        input_schema = schemas.ListNotificationsInput,
        output_schema = schemas.ListNotificationsOutput,
        http_method = "POST",
        http_path = "/notifications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfileNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileNotifications",
        input_schema = schemas.ListProfileNotificationsInput,
        output_schema = schemas.ListProfileNotificationsOutput,
        http_method = "GET",
        http_path = "/profileNotifications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProfiles",
        input_schema = schemas.ListProfilesInput,
        output_schema = schemas.ListProfilesOutput,
        http_method = "GET",
        http_path = "/profileSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listProfileShares(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileShares",
        input_schema = schemas.ListProfileSharesInput,
        output_schema = schemas.ListProfileSharesOutput,
        http_method = "GET",
        http_path = "/profiles/{ProfileArn}/shares",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReviewTemplateAnswers(input, options)
    return self:invokeOperation(input, {
        name = "ListReviewTemplateAnswers",
        input_schema = schemas.ListReviewTemplateAnswersInput,
        output_schema = schemas.ListReviewTemplateAnswersOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listReviewTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListReviewTemplates",
        input_schema = schemas.ListReviewTemplatesInput,
        output_schema = schemas.ListReviewTemplatesOutput,
        http_method = "GET",
        http_path = "/reviewTemplates",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listShareInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListShareInvitations",
        input_schema = schemas.ListShareInvitationsInput,
        output_schema = schemas.ListShareInvitationsOutput,
        http_method = "GET",
        http_path = "/shareInvitations",
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
        http_path = "/tags/{WorkloadArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTemplateShares(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateShares",
        input_schema = schemas.ListTemplateSharesInput,
        output_schema = schemas.ListTemplateSharesOutput,
        http_method = "GET",
        http_path = "/templates/shares/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloads(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloads",
        input_schema = schemas.ListWorkloadsInput,
        output_schema = schemas.ListWorkloadsOutput,
        http_method = "POST",
        http_path = "/workloadsSummaries",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkloadShares(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadShares",
        input_schema = schemas.ListWorkloadSharesInput,
        output_schema = schemas.ListWorkloadSharesOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/shares",
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
        http_path = "/tags/{WorkloadArn}",
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
        http_path = "/tags/{WorkloadArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAnswer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnswer",
        input_schema = schemas.UpdateAnswerInput,
        output_schema = schemas.UpdateAnswerOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = schemas.UpdateGlobalSettingsInput,
        output_schema = schemas.UpdateGlobalSettingsOutput,
        http_method = "PATCH",
        http_path = "/global-settings",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegration",
        input_schema = schemas.UpdateIntegrationInput,
        output_schema = schemas.UpdateIntegrationOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/updateIntegration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLensReview",
        input_schema = schemas.UpdateLensReviewInput,
        output_schema = schemas.UpdateLensReviewOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = schemas.UpdateProfileInput,
        output_schema = schemas.UpdateProfileOutput,
        http_method = "PATCH",
        http_path = "/profiles/{ProfileArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReviewTemplate",
        input_schema = schemas.UpdateReviewTemplateInput,
        output_schema = schemas.UpdateReviewTemplateOutput,
        http_method = "PATCH",
        http_path = "/reviewTemplates/{TemplateArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReviewTemplateAnswer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReviewTemplateAnswer",
        input_schema = schemas.UpdateReviewTemplateAnswerInput,
        output_schema = schemas.UpdateReviewTemplateAnswerOutput,
        http_method = "PATCH",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateReviewTemplateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReviewTemplateLensReview",
        input_schema = schemas.UpdateReviewTemplateLensReviewInput,
        output_schema = schemas.UpdateReviewTemplateLensReviewOutput,
        http_method = "PATCH",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateShareInvitation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateShareInvitation",
        input_schema = schemas.UpdateShareInvitationInput,
        output_schema = schemas.UpdateShareInvitationOutput,
        http_method = "PATCH",
        http_path = "/shareInvitations/{ShareInvitationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkload(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkload",
        input_schema = schemas.UpdateWorkloadInput,
        output_schema = schemas.UpdateWorkloadOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkloadShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkloadShare",
        input_schema = schemas.UpdateWorkloadShareInput,
        output_schema = schemas.UpdateWorkloadShareOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/shares/{ShareId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeLensReview",
        input_schema = schemas.UpgradeLensReviewInput,
        output_schema = schemas.UpgradeLensReviewOutput,
        http_method = "PUT",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeProfileVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeProfileVersion",
        input_schema = schemas.UpgradeProfileVersionInput,
        output_schema = schemas.UpgradeProfileVersionOutput,
        http_method = "PUT",
        http_path = "/workloads/{WorkloadId}/profiles/{ProfileArn}/upgrade",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:upgradeReviewTemplateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeReviewTemplateLensReview",
        input_schema = schemas.UpgradeReviewTemplateLensReviewInput,
        output_schema = schemas.UpgradeReviewTemplateLensReviewOutput,
        http_method = "PUT",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/upgrade",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
