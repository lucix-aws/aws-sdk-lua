local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("wellarchitected.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("wellarchitected.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "WellArchitectedApiServiceLambda"
    cfg.signing_name = "wellarchitectedapiservicelambda"
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

function Client:associateLenses(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLenses",
        input_schema = types.AssociateLensesInput,
        output_schema = types.AssociateLensesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/associateLenses",
    }, options)
end

function Client:associateProfiles(input, options)
    return self:invokeOperation(input, {
        name = "AssociateProfiles",
        input_schema = types.AssociateProfilesInput,
        output_schema = types.AssociateProfilesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/associateProfiles",
    }, options)
end

function Client:createLensShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateLensShare",
        input_schema = types.CreateLensShareInput,
        output_schema = types.CreateLensShareOutput,
        http_method = "POST",
        http_path = "/lenses/{LensAlias}/shares",
    }, options)
end

function Client:createLensVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateLensVersion",
        input_schema = types.CreateLensVersionInput,
        output_schema = types.CreateLensVersionOutput,
        http_method = "POST",
        http_path = "/lenses/{LensAlias}/versions",
    }, options)
end

function Client:createMilestone(input, options)
    return self:invokeOperation(input, {
        name = "CreateMilestone",
        input_schema = types.CreateMilestoneInput,
        output_schema = types.CreateMilestoneOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/milestones",
    }, options)
end

function Client:createProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfile",
        input_schema = types.CreateProfileInput,
        output_schema = types.CreateProfileOutput,
        http_method = "POST",
        http_path = "/profiles",
    }, options)
end

function Client:createProfileShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateProfileShare",
        input_schema = types.CreateProfileShareInput,
        output_schema = types.CreateProfileShareOutput,
        http_method = "POST",
        http_path = "/profiles/{ProfileArn}/shares",
    }, options)
end

function Client:createReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateReviewTemplate",
        input_schema = types.CreateReviewTemplateInput,
        output_schema = types.CreateReviewTemplateOutput,
        http_method = "POST",
        http_path = "/reviewTemplates",
    }, options)
end

function Client:createTemplateShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateTemplateShare",
        input_schema = types.CreateTemplateShareInput,
        output_schema = types.CreateTemplateShareOutput,
        http_method = "POST",
        http_path = "/templates/shares/{TemplateArn}",
    }, options)
end

function Client:createWorkload(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkload",
        input_schema = types.CreateWorkloadInput,
        output_schema = types.CreateWorkloadOutput,
        http_method = "POST",
        http_path = "/workloads",
    }, options)
end

function Client:createWorkloadShare(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkloadShare",
        input_schema = types.CreateWorkloadShareInput,
        output_schema = types.CreateWorkloadShareOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/shares",
    }, options)
end

function Client:deleteLens(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLens",
        input_schema = types.DeleteLensInput,
        output_schema = types.DeleteLensOutput,
        http_method = "DELETE",
        http_path = "/lenses/{LensAlias}",
    }, options)
end

function Client:deleteLensShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteLensShare",
        input_schema = types.DeleteLensShareInput,
        output_schema = types.DeleteLensShareOutput,
        http_method = "DELETE",
        http_path = "/lenses/{LensAlias}/shares/{ShareId}",
    }, options)
end

function Client:deleteProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfile",
        input_schema = types.DeleteProfileInput,
        output_schema = types.DeleteProfileOutput,
        http_method = "DELETE",
        http_path = "/profiles/{ProfileArn}",
    }, options)
end

function Client:deleteProfileShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteProfileShare",
        input_schema = types.DeleteProfileShareInput,
        output_schema = types.DeleteProfileShareOutput,
        http_method = "DELETE",
        http_path = "/profiles/{ProfileArn}/shares/{ShareId}",
    }, options)
end

function Client:deleteReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteReviewTemplate",
        input_schema = types.DeleteReviewTemplateInput,
        output_schema = types.DeleteReviewTemplateOutput,
        http_method = "DELETE",
        http_path = "/reviewTemplates/{TemplateArn}",
    }, options)
end

function Client:deleteTemplateShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTemplateShare",
        input_schema = types.DeleteTemplateShareInput,
        output_schema = types.DeleteTemplateShareOutput,
        http_method = "DELETE",
        http_path = "/templates/shares/{TemplateArn}/{ShareId}",
    }, options)
end

function Client:deleteWorkload(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkload",
        input_schema = types.DeleteWorkloadInput,
        output_schema = types.DeleteWorkloadOutput,
        http_method = "DELETE",
        http_path = "/workloads/{WorkloadId}",
    }, options)
end

function Client:deleteWorkloadShare(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkloadShare",
        input_schema = types.DeleteWorkloadShareInput,
        output_schema = types.DeleteWorkloadShareOutput,
        http_method = "DELETE",
        http_path = "/workloads/{WorkloadId}/shares/{ShareId}",
    }, options)
end

function Client:disassociateLenses(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLenses",
        input_schema = types.DisassociateLensesInput,
        output_schema = types.DisassociateLensesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/disassociateLenses",
    }, options)
end

function Client:disassociateProfiles(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateProfiles",
        input_schema = types.DisassociateProfilesInput,
        output_schema = types.DisassociateProfilesOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/disassociateProfiles",
    }, options)
end

function Client:exportLens(input, options)
    return self:invokeOperation(input, {
        name = "ExportLens",
        input_schema = types.ExportLensInput,
        output_schema = types.ExportLensOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}/export",
    }, options)
end

function Client:getAnswer(input, options)
    return self:invokeOperation(input, {
        name = "GetAnswer",
        input_schema = types.GetAnswerInput,
        output_schema = types.GetAnswerOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}",
    }, options)
end

function Client:getConsolidatedReport(input, options)
    return self:invokeOperation(input, {
        name = "GetConsolidatedReport",
        input_schema = types.GetConsolidatedReportInput,
        output_schema = types.GetConsolidatedReportOutput,
        http_method = "GET",
        http_path = "/consolidatedReport",
    }, options)
end

function Client:getGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "GetGlobalSettings",
        input_schema = types.GetGlobalSettingsInput,
        output_schema = types.GetGlobalSettingsOutput,
        http_method = "GET",
        http_path = "/global-settings",
    }, options)
end

function Client:getLens(input, options)
    return self:invokeOperation(input, {
        name = "GetLens",
        input_schema = types.GetLensInput,
        output_schema = types.GetLensOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}",
    }, options)
end

function Client:getLensReview(input, options)
    return self:invokeOperation(input, {
        name = "GetLensReview",
        input_schema = types.GetLensReviewInput,
        output_schema = types.GetLensReviewOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}",
    }, options)
end

function Client:getLensReviewReport(input, options)
    return self:invokeOperation(input, {
        name = "GetLensReviewReport",
        input_schema = types.GetLensReviewReportInput,
        output_schema = types.GetLensReviewReportOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/report",
    }, options)
end

function Client:getLensVersionDifference(input, options)
    return self:invokeOperation(input, {
        name = "GetLensVersionDifference",
        input_schema = types.GetLensVersionDifferenceInput,
        output_schema = types.GetLensVersionDifferenceOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}/versionDifference",
    }, options)
end

function Client:getMilestone(input, options)
    return self:invokeOperation(input, {
        name = "GetMilestone",
        input_schema = types.GetMilestoneInput,
        output_schema = types.GetMilestoneOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/milestones/{MilestoneNumber}",
    }, options)
end

function Client:getProfile(input, options)
    return self:invokeOperation(input, {
        name = "GetProfile",
        input_schema = types.GetProfileInput,
        output_schema = types.GetProfileOutput,
        http_method = "GET",
        http_path = "/profiles/{ProfileArn}",
    }, options)
end

function Client:getProfileTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetProfileTemplate",
        input_schema = types.GetProfileTemplateInput,
        output_schema = types.GetProfileTemplateOutput,
        http_method = "GET",
        http_path = "/profileTemplate",
    }, options)
end

function Client:getReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetReviewTemplate",
        input_schema = types.GetReviewTemplateInput,
        output_schema = types.GetReviewTemplateOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}",
    }, options)
end

function Client:getReviewTemplateAnswer(input, options)
    return self:invokeOperation(input, {
        name = "GetReviewTemplateAnswer",
        input_schema = types.GetReviewTemplateAnswerInput,
        output_schema = types.GetReviewTemplateAnswerOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}",
    }, options)
end

function Client:getReviewTemplateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "GetReviewTemplateLensReview",
        input_schema = types.GetReviewTemplateLensReviewInput,
        output_schema = types.GetReviewTemplateLensReviewOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}",
    }, options)
end

function Client:getWorkload(input, options)
    return self:invokeOperation(input, {
        name = "GetWorkload",
        input_schema = types.GetWorkloadInput,
        output_schema = types.GetWorkloadOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}",
    }, options)
end

function Client:importLens(input, options)
    return self:invokeOperation(input, {
        name = "ImportLens",
        input_schema = types.ImportLensInput,
        output_schema = types.ImportLensOutput,
        http_method = "PUT",
        http_path = "/importLens",
    }, options)
end

function Client:listAnswers(input, options)
    return self:invokeOperation(input, {
        name = "ListAnswers",
        input_schema = types.ListAnswersInput,
        output_schema = types.ListAnswersOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers",
    }, options)
end

function Client:listCheckDetails(input, options)
    return self:invokeOperation(input, {
        name = "ListCheckDetails",
        input_schema = types.ListCheckDetailsInput,
        output_schema = types.ListCheckDetailsOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/checks",
    }, options)
end

function Client:listCheckSummaries(input, options)
    return self:invokeOperation(input, {
        name = "ListCheckSummaries",
        input_schema = types.ListCheckSummariesInput,
        output_schema = types.ListCheckSummariesOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/checkSummaries",
    }, options)
end

function Client:listLenses(input, options)
    return self:invokeOperation(input, {
        name = "ListLenses",
        input_schema = types.ListLensesInput,
        output_schema = types.ListLensesOutput,
        http_method = "GET",
        http_path = "/lenses",
    }, options)
end

function Client:listLensReviewImprovements(input, options)
    return self:invokeOperation(input, {
        name = "ListLensReviewImprovements",
        input_schema = types.ListLensReviewImprovementsInput,
        output_schema = types.ListLensReviewImprovementsOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/improvements",
    }, options)
end

function Client:listLensReviews(input, options)
    return self:invokeOperation(input, {
        name = "ListLensReviews",
        input_schema = types.ListLensReviewsInput,
        output_schema = types.ListLensReviewsOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/lensReviews",
    }, options)
end

function Client:listLensShares(input, options)
    return self:invokeOperation(input, {
        name = "ListLensShares",
        input_schema = types.ListLensSharesInput,
        output_schema = types.ListLensSharesOutput,
        http_method = "GET",
        http_path = "/lenses/{LensAlias}/shares",
    }, options)
end

function Client:listMilestones(input, options)
    return self:invokeOperation(input, {
        name = "ListMilestones",
        input_schema = types.ListMilestonesInput,
        output_schema = types.ListMilestonesOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/milestonesSummaries",
    }, options)
end

function Client:listNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifications",
        input_schema = types.ListNotificationsInput,
        output_schema = types.ListNotificationsOutput,
        http_method = "POST",
        http_path = "/notifications",
    }, options)
end

function Client:listProfileNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileNotifications",
        input_schema = types.ListProfileNotificationsInput,
        output_schema = types.ListProfileNotificationsOutput,
        http_method = "GET",
        http_path = "/profileNotifications",
    }, options)
end

function Client:listProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListProfiles",
        input_schema = types.ListProfilesInput,
        output_schema = types.ListProfilesOutput,
        http_method = "GET",
        http_path = "/profileSummaries",
    }, options)
end

function Client:listProfileShares(input, options)
    return self:invokeOperation(input, {
        name = "ListProfileShares",
        input_schema = types.ListProfileSharesInput,
        output_schema = types.ListProfileSharesOutput,
        http_method = "GET",
        http_path = "/profiles/{ProfileArn}/shares",
    }, options)
end

function Client:listReviewTemplateAnswers(input, options)
    return self:invokeOperation(input, {
        name = "ListReviewTemplateAnswers",
        input_schema = types.ListReviewTemplateAnswersInput,
        output_schema = types.ListReviewTemplateAnswersOutput,
        http_method = "GET",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers",
    }, options)
end

function Client:listReviewTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListReviewTemplates",
        input_schema = types.ListReviewTemplatesInput,
        output_schema = types.ListReviewTemplatesOutput,
        http_method = "GET",
        http_path = "/reviewTemplates",
    }, options)
end

function Client:listShareInvitations(input, options)
    return self:invokeOperation(input, {
        name = "ListShareInvitations",
        input_schema = types.ListShareInvitationsInput,
        output_schema = types.ListShareInvitationsOutput,
        http_method = "GET",
        http_path = "/shareInvitations",
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{WorkloadArn}",
    }, options)
end

function Client:listTemplateShares(input, options)
    return self:invokeOperation(input, {
        name = "ListTemplateShares",
        input_schema = types.ListTemplateSharesInput,
        output_schema = types.ListTemplateSharesOutput,
        http_method = "GET",
        http_path = "/templates/shares/{TemplateArn}",
    }, options)
end

function Client:listWorkloads(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloads",
        input_schema = types.ListWorkloadsInput,
        output_schema = types.ListWorkloadsOutput,
        http_method = "POST",
        http_path = "/workloadsSummaries",
    }, options)
end

function Client:listWorkloadShares(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkloadShares",
        input_schema = types.ListWorkloadSharesInput,
        output_schema = types.ListWorkloadSharesOutput,
        http_method = "GET",
        http_path = "/workloads/{WorkloadId}/shares",
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{WorkloadArn}",
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{WorkloadArn}",
    }, options)
end

function Client:updateAnswer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAnswer",
        input_schema = types.UpdateAnswerInput,
        output_schema = types.UpdateAnswerOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/answers/{QuestionId}",
    }, options)
end

function Client:updateGlobalSettings(input, options)
    return self:invokeOperation(input, {
        name = "UpdateGlobalSettings",
        input_schema = types.UpdateGlobalSettingsInput,
        output_schema = types.UpdateGlobalSettingsOutput,
        http_method = "PATCH",
        http_path = "/global-settings",
    }, options)
end

function Client:updateIntegration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntegration",
        input_schema = types.UpdateIntegrationInput,
        output_schema = types.UpdateIntegrationOutput,
        http_method = "POST",
        http_path = "/workloads/{WorkloadId}/updateIntegration",
    }, options)
end

function Client:updateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpdateLensReview",
        input_schema = types.UpdateLensReviewInput,
        output_schema = types.UpdateLensReviewOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}",
    }, options)
end

function Client:updateProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateProfile",
        input_schema = types.UpdateProfileInput,
        output_schema = types.UpdateProfileOutput,
        http_method = "PATCH",
        http_path = "/profiles/{ProfileArn}",
    }, options)
end

function Client:updateReviewTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReviewTemplate",
        input_schema = types.UpdateReviewTemplateInput,
        output_schema = types.UpdateReviewTemplateOutput,
        http_method = "PATCH",
        http_path = "/reviewTemplates/{TemplateArn}",
    }, options)
end

function Client:updateReviewTemplateAnswer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReviewTemplateAnswer",
        input_schema = types.UpdateReviewTemplateAnswerInput,
        output_schema = types.UpdateReviewTemplateAnswerOutput,
        http_method = "PATCH",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/answers/{QuestionId}",
    }, options)
end

function Client:updateReviewTemplateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpdateReviewTemplateLensReview",
        input_schema = types.UpdateReviewTemplateLensReviewInput,
        output_schema = types.UpdateReviewTemplateLensReviewOutput,
        http_method = "PATCH",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}",
    }, options)
end

function Client:updateShareInvitation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateShareInvitation",
        input_schema = types.UpdateShareInvitationInput,
        output_schema = types.UpdateShareInvitationOutput,
        http_method = "PATCH",
        http_path = "/shareInvitations/{ShareInvitationId}",
    }, options)
end

function Client:updateWorkload(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkload",
        input_schema = types.UpdateWorkloadInput,
        output_schema = types.UpdateWorkloadOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}",
    }, options)
end

function Client:updateWorkloadShare(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkloadShare",
        input_schema = types.UpdateWorkloadShareInput,
        output_schema = types.UpdateWorkloadShareOutput,
        http_method = "PATCH",
        http_path = "/workloads/{WorkloadId}/shares/{ShareId}",
    }, options)
end

function Client:upgradeLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeLensReview",
        input_schema = types.UpgradeLensReviewInput,
        output_schema = types.UpgradeLensReviewOutput,
        http_method = "PUT",
        http_path = "/workloads/{WorkloadId}/lensReviews/{LensAlias}/upgrade",
    }, options)
end

function Client:upgradeProfileVersion(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeProfileVersion",
        input_schema = types.UpgradeProfileVersionInput,
        output_schema = types.UpgradeProfileVersionOutput,
        http_method = "PUT",
        http_path = "/workloads/{WorkloadId}/profiles/{ProfileArn}/upgrade",
    }, options)
end

function Client:upgradeReviewTemplateLensReview(input, options)
    return self:invokeOperation(input, {
        name = "UpgradeReviewTemplateLensReview",
        input_schema = types.UpgradeReviewTemplateLensReviewInput,
        output_schema = types.UpgradeReviewTemplateLensReviewOutput,
        http_method = "PUT",
        http_path = "/reviewTemplates/{TemplateArn}/lensReviews/{LensAlias}/upgrade",
    }, options)
end

return M
