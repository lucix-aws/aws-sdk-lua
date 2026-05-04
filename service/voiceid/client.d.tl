local types = require("voiceid.types")

local record Client
    associateFraudster: function(Client, types.AssociateFraudsterInput): types.AssociateFraudsterOutput, table
    createDomain: function(Client, types.CreateDomainInput): types.CreateDomainOutput, table
    createWatchlist: function(Client, types.CreateWatchlistInput): types.CreateWatchlistOutput, table
    deleteDomain: function(Client, types.DeleteDomainInput): types.DeleteDomainOutput, table
    deleteFraudster: function(Client, types.DeleteFraudsterInput): types.DeleteFraudsterOutput, table
    deleteSpeaker: function(Client, types.DeleteSpeakerInput): types.DeleteSpeakerOutput, table
    deleteWatchlist: function(Client, types.DeleteWatchlistInput): types.DeleteWatchlistOutput, table
    describeDomain: function(Client, types.DescribeDomainInput): types.DescribeDomainOutput, table
    describeFraudster: function(Client, types.DescribeFraudsterInput): types.DescribeFraudsterOutput, table
    describeFraudsterRegistrationJob: function(Client, types.DescribeFraudsterRegistrationJobInput): types.DescribeFraudsterRegistrationJobOutput, table
    describeSpeaker: function(Client, types.DescribeSpeakerInput): types.DescribeSpeakerOutput, table
    describeSpeakerEnrollmentJob: function(Client, types.DescribeSpeakerEnrollmentJobInput): types.DescribeSpeakerEnrollmentJobOutput, table
    describeWatchlist: function(Client, types.DescribeWatchlistInput): types.DescribeWatchlistOutput, table
    disassociateFraudster: function(Client, types.DisassociateFraudsterInput): types.DisassociateFraudsterOutput, table
    evaluateSession: function(Client, types.EvaluateSessionInput): types.EvaluateSessionOutput, table
    listDomains: function(Client, types.ListDomainsInput): types.ListDomainsOutput, table
    listFraudsterRegistrationJobs: function(Client, types.ListFraudsterRegistrationJobsInput): types.ListFraudsterRegistrationJobsOutput, table
    listFraudsters: function(Client, types.ListFraudstersInput): types.ListFraudstersOutput, table
    listSpeakerEnrollmentJobs: function(Client, types.ListSpeakerEnrollmentJobsInput): types.ListSpeakerEnrollmentJobsOutput, table
    listSpeakers: function(Client, types.ListSpeakersInput): types.ListSpeakersOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listWatchlists: function(Client, types.ListWatchlistsInput): types.ListWatchlistsOutput, table
    optOutSpeaker: function(Client, types.OptOutSpeakerInput): types.OptOutSpeakerOutput, table
    startFraudsterRegistrationJob: function(Client, types.StartFraudsterRegistrationJobInput): types.StartFraudsterRegistrationJobOutput, table
    startSpeakerEnrollmentJob: function(Client, types.StartSpeakerEnrollmentJobInput): types.StartSpeakerEnrollmentJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateDomain: function(Client, types.UpdateDomainInput): types.UpdateDomainOutput, table
    updateWatchlist: function(Client, types.UpdateWatchlistInput): types.UpdateWatchlistOutput, table
end

local record M
    new: function(table): Client
end

return M
