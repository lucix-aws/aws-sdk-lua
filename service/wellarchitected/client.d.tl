local types = require("wellarchitected.types")

local record Client
    associateLenses: function(Client, types.AssociateLensesInput): types.AssociateLensesOutput, table
    associateProfiles: function(Client, types.AssociateProfilesInput): types.AssociateProfilesOutput, table
    createLensShare: function(Client, types.CreateLensShareInput): types.CreateLensShareOutput, table
    createLensVersion: function(Client, types.CreateLensVersionInput): types.CreateLensVersionOutput, table
    createMilestone: function(Client, types.CreateMilestoneInput): types.CreateMilestoneOutput, table
    createProfile: function(Client, types.CreateProfileInput): types.CreateProfileOutput, table
    createProfileShare: function(Client, types.CreateProfileShareInput): types.CreateProfileShareOutput, table
    createReviewTemplate: function(Client, types.CreateReviewTemplateInput): types.CreateReviewTemplateOutput, table
    createTemplateShare: function(Client, types.CreateTemplateShareInput): types.CreateTemplateShareOutput, table
    createWorkload: function(Client, types.CreateWorkloadInput): types.CreateWorkloadOutput, table
    createWorkloadShare: function(Client, types.CreateWorkloadShareInput): types.CreateWorkloadShareOutput, table
    deleteLens: function(Client, types.DeleteLensInput): types.DeleteLensOutput, table
    deleteLensShare: function(Client, types.DeleteLensShareInput): types.DeleteLensShareOutput, table
    deleteProfile: function(Client, types.DeleteProfileInput): types.DeleteProfileOutput, table
    deleteProfileShare: function(Client, types.DeleteProfileShareInput): types.DeleteProfileShareOutput, table
    deleteReviewTemplate: function(Client, types.DeleteReviewTemplateInput): types.DeleteReviewTemplateOutput, table
    deleteTemplateShare: function(Client, types.DeleteTemplateShareInput): types.DeleteTemplateShareOutput, table
    deleteWorkload: function(Client, types.DeleteWorkloadInput): types.DeleteWorkloadOutput, table
    deleteWorkloadShare: function(Client, types.DeleteWorkloadShareInput): types.DeleteWorkloadShareOutput, table
    disassociateLenses: function(Client, types.DisassociateLensesInput): types.DisassociateLensesOutput, table
    disassociateProfiles: function(Client, types.DisassociateProfilesInput): types.DisassociateProfilesOutput, table
    exportLens: function(Client, types.ExportLensInput): types.ExportLensOutput, table
    getAnswer: function(Client, types.GetAnswerInput): types.GetAnswerOutput, table
    getConsolidatedReport: function(Client, types.GetConsolidatedReportInput): types.GetConsolidatedReportOutput, table
    getGlobalSettings: function(Client, types.GetGlobalSettingsInput): types.GetGlobalSettingsOutput, table
    getLens: function(Client, types.GetLensInput): types.GetLensOutput, table
    getLensReview: function(Client, types.GetLensReviewInput): types.GetLensReviewOutput, table
    getLensReviewReport: function(Client, types.GetLensReviewReportInput): types.GetLensReviewReportOutput, table
    getLensVersionDifference: function(Client, types.GetLensVersionDifferenceInput): types.GetLensVersionDifferenceOutput, table
    getMilestone: function(Client, types.GetMilestoneInput): types.GetMilestoneOutput, table
    getProfile: function(Client, types.GetProfileInput): types.GetProfileOutput, table
    getProfileTemplate: function(Client, types.GetProfileTemplateInput): types.GetProfileTemplateOutput, table
    getReviewTemplate: function(Client, types.GetReviewTemplateInput): types.GetReviewTemplateOutput, table
    getReviewTemplateAnswer: function(Client, types.GetReviewTemplateAnswerInput): types.GetReviewTemplateAnswerOutput, table
    getReviewTemplateLensReview: function(Client, types.GetReviewTemplateLensReviewInput): types.GetReviewTemplateLensReviewOutput, table
    getWorkload: function(Client, types.GetWorkloadInput): types.GetWorkloadOutput, table
    importLens: function(Client, types.ImportLensInput): types.ImportLensOutput, table
    listAnswers: function(Client, types.ListAnswersInput): types.ListAnswersOutput, table
    listCheckDetails: function(Client, types.ListCheckDetailsInput): types.ListCheckDetailsOutput, table
    listCheckSummaries: function(Client, types.ListCheckSummariesInput): types.ListCheckSummariesOutput, table
    listLenses: function(Client, types.ListLensesInput): types.ListLensesOutput, table
    listLensReviewImprovements: function(Client, types.ListLensReviewImprovementsInput): types.ListLensReviewImprovementsOutput, table
    listLensReviews: function(Client, types.ListLensReviewsInput): types.ListLensReviewsOutput, table
    listLensShares: function(Client, types.ListLensSharesInput): types.ListLensSharesOutput, table
    listMilestones: function(Client, types.ListMilestonesInput): types.ListMilestonesOutput, table
    listNotifications: function(Client, types.ListNotificationsInput): types.ListNotificationsOutput, table
    listProfileNotifications: function(Client, types.ListProfileNotificationsInput): types.ListProfileNotificationsOutput, table
    listProfiles: function(Client, types.ListProfilesInput): types.ListProfilesOutput, table
    listProfileShares: function(Client, types.ListProfileSharesInput): types.ListProfileSharesOutput, table
    listReviewTemplateAnswers: function(Client, types.ListReviewTemplateAnswersInput): types.ListReviewTemplateAnswersOutput, table
    listReviewTemplates: function(Client, types.ListReviewTemplatesInput): types.ListReviewTemplatesOutput, table
    listShareInvitations: function(Client, types.ListShareInvitationsInput): types.ListShareInvitationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTemplateShares: function(Client, types.ListTemplateSharesInput): types.ListTemplateSharesOutput, table
    listWorkloads: function(Client, types.ListWorkloadsInput): types.ListWorkloadsOutput, table
    listWorkloadShares: function(Client, types.ListWorkloadSharesInput): types.ListWorkloadSharesOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAnswer: function(Client, types.UpdateAnswerInput): types.UpdateAnswerOutput, table
    updateGlobalSettings: function(Client, types.UpdateGlobalSettingsInput): types.UpdateGlobalSettingsOutput, table
    updateIntegration: function(Client, types.UpdateIntegrationInput): types.UpdateIntegrationOutput, table
    updateLensReview: function(Client, types.UpdateLensReviewInput): types.UpdateLensReviewOutput, table
    updateProfile: function(Client, types.UpdateProfileInput): types.UpdateProfileOutput, table
    updateReviewTemplate: function(Client, types.UpdateReviewTemplateInput): types.UpdateReviewTemplateOutput, table
    updateReviewTemplateAnswer: function(Client, types.UpdateReviewTemplateAnswerInput): types.UpdateReviewTemplateAnswerOutput, table
    updateReviewTemplateLensReview: function(Client, types.UpdateReviewTemplateLensReviewInput): types.UpdateReviewTemplateLensReviewOutput, table
    updateShareInvitation: function(Client, types.UpdateShareInvitationInput): types.UpdateShareInvitationOutput, table
    updateWorkload: function(Client, types.UpdateWorkloadInput): types.UpdateWorkloadOutput, table
    updateWorkloadShare: function(Client, types.UpdateWorkloadShareInput): types.UpdateWorkloadShareOutput, table
    upgradeLensReview: function(Client, types.UpgradeLensReviewInput): types.UpgradeLensReviewOutput, table
    upgradeProfileVersion: function(Client, types.UpgradeProfileVersionInput): types.UpgradeProfileVersionOutput, table
    upgradeReviewTemplateLensReview: function(Client, types.UpgradeReviewTemplateLensReviewInput): types.UpgradeReviewTemplateLensReviewOutput, table
end

local record M
    new: function(table): Client
end

return M
