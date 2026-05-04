local types = require("gameliftstreams.types")

local record Client
    addStreamGroupLocations: function(Client, types.AddStreamGroupLocationsInput): types.AddStreamGroupLocationsOutput, table
    associateApplications: function(Client, types.AssociateApplicationsInput): types.AssociateApplicationsOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createStreamGroup: function(Client, types.CreateStreamGroupInput): types.CreateStreamGroupOutput, table
    createStreamSessionConnection: function(Client, types.CreateStreamSessionConnectionInput): types.CreateStreamSessionConnectionOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteStreamGroup: function(Client, types.DeleteStreamGroupInput): types.DeleteStreamGroupOutput, table
    disassociateApplications: function(Client, types.DisassociateApplicationsInput): types.DisassociateApplicationsOutput, table
    exportStreamSessionFiles: function(Client, types.ExportStreamSessionFilesInput): types.ExportStreamSessionFilesOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getStreamGroup: function(Client, types.GetStreamGroupInput): types.GetStreamGroupOutput, table
    getStreamSession: function(Client, types.GetStreamSessionInput): types.GetStreamSessionOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listStreamGroups: function(Client, types.ListStreamGroupsInput): types.ListStreamGroupsOutput, table
    listStreamSessions: function(Client, types.ListStreamSessionsInput): types.ListStreamSessionsOutput, table
    listStreamSessionsByAccount: function(Client, types.ListStreamSessionsByAccountInput): types.ListStreamSessionsByAccountOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    removeStreamGroupLocations: function(Client, types.RemoveStreamGroupLocationsInput): types.RemoveStreamGroupLocationsOutput, table
    startStreamSession: function(Client, types.StartStreamSessionInput): types.StartStreamSessionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    terminateStreamSession: function(Client, types.TerminateStreamSessionInput): types.TerminateStreamSessionOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateStreamGroup: function(Client, types.UpdateStreamGroupInput): types.UpdateStreamGroupOutput, table
end

local record M
    new: function(table): Client
end

return M
