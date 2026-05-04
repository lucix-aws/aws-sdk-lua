local types = require("mturk.types")

local record Client
    acceptQualificationRequest: function(Client, types.AcceptQualificationRequestInput): types.AcceptQualificationRequestOutput, table
    approveAssignment: function(Client, types.ApproveAssignmentInput): types.ApproveAssignmentOutput, table
    associateQualificationWithWorker: function(Client, types.AssociateQualificationWithWorkerInput): types.AssociateQualificationWithWorkerOutput, table
    createAdditionalAssignmentsForHIT: function(Client, types.CreateAdditionalAssignmentsForHITInput): types.CreateAdditionalAssignmentsForHITOutput, table
    createHIT: function(Client, types.CreateHITInput): types.CreateHITOutput, table
    createHITType: function(Client, types.CreateHITTypeInput): types.CreateHITTypeOutput, table
    createHITWithHITType: function(Client, types.CreateHITWithHITTypeInput): types.CreateHITWithHITTypeOutput, table
    createQualificationType: function(Client, types.CreateQualificationTypeInput): types.CreateQualificationTypeOutput, table
    createWorkerBlock: function(Client, types.CreateWorkerBlockInput): types.CreateWorkerBlockOutput, table
    deleteHIT: function(Client, types.DeleteHITInput): types.DeleteHITOutput, table
    deleteQualificationType: function(Client, types.DeleteQualificationTypeInput): types.DeleteQualificationTypeOutput, table
    deleteWorkerBlock: function(Client, types.DeleteWorkerBlockInput): types.DeleteWorkerBlockOutput, table
    disassociateQualificationFromWorker: function(Client, types.DisassociateQualificationFromWorkerInput): types.DisassociateQualificationFromWorkerOutput, table
    getAccountBalance: function(Client, types.GetAccountBalanceInput): types.GetAccountBalanceOutput, table
    getAssignment: function(Client, types.GetAssignmentInput): types.GetAssignmentOutput, table
    getFileUploadURL: function(Client, types.GetFileUploadURLInput): types.GetFileUploadURLOutput, table
    getHIT: function(Client, types.GetHITInput): types.GetHITOutput, table
    getQualificationScore: function(Client, types.GetQualificationScoreInput): types.GetQualificationScoreOutput, table
    getQualificationType: function(Client, types.GetQualificationTypeInput): types.GetQualificationTypeOutput, table
    listAssignmentsForHIT: function(Client, types.ListAssignmentsForHITInput): types.ListAssignmentsForHITOutput, table
    listBonusPayments: function(Client, types.ListBonusPaymentsInput): types.ListBonusPaymentsOutput, table
    listHITs: function(Client, types.ListHITsInput): types.ListHITsOutput, table
    listHITsForQualificationType: function(Client, types.ListHITsForQualificationTypeInput): types.ListHITsForQualificationTypeOutput, table
    listQualificationRequests: function(Client, types.ListQualificationRequestsInput): types.ListQualificationRequestsOutput, table
    listQualificationTypes: function(Client, types.ListQualificationTypesInput): types.ListQualificationTypesOutput, table
    listReviewableHITs: function(Client, types.ListReviewableHITsInput): types.ListReviewableHITsOutput, table
    listReviewPolicyResultsForHIT: function(Client, types.ListReviewPolicyResultsForHITInput): types.ListReviewPolicyResultsForHITOutput, table
    listWorkerBlocks: function(Client, types.ListWorkerBlocksInput): types.ListWorkerBlocksOutput, table
    listWorkersWithQualificationType: function(Client, types.ListWorkersWithQualificationTypeInput): types.ListWorkersWithQualificationTypeOutput, table
    notifyWorkers: function(Client, types.NotifyWorkersInput): types.NotifyWorkersOutput, table
    rejectAssignment: function(Client, types.RejectAssignmentInput): types.RejectAssignmentOutput, table
    rejectQualificationRequest: function(Client, types.RejectQualificationRequestInput): types.RejectQualificationRequestOutput, table
    sendBonus: function(Client, types.SendBonusInput): types.SendBonusOutput, table
    sendTestEventNotification: function(Client, types.SendTestEventNotificationInput): types.SendTestEventNotificationOutput, table
    updateExpirationForHIT: function(Client, types.UpdateExpirationForHITInput): types.UpdateExpirationForHITOutput, table
    updateHITReviewStatus: function(Client, types.UpdateHITReviewStatusInput): types.UpdateHITReviewStatusOutput, table
    updateHITTypeOfHIT: function(Client, types.UpdateHITTypeOfHITInput): types.UpdateHITTypeOfHITOutput, table
    updateNotificationSettings: function(Client, types.UpdateNotificationSettingsInput): types.UpdateNotificationSettingsOutput, table
    updateQualificationType: function(Client, types.UpdateQualificationTypeInput): types.UpdateQualificationTypeOutput, table
end

local record M
    new: function(table): Client
end

return M
