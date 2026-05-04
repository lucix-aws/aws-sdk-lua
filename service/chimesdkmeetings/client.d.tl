local types = require("chimesdkmeetings.types")

local record Client
    batchCreateAttendee: function(Client, types.BatchCreateAttendeeInput): types.BatchCreateAttendeeOutput, table
    batchUpdateAttendeeCapabilitiesExcept: function(Client, types.BatchUpdateAttendeeCapabilitiesExceptInput): types.BatchUpdateAttendeeCapabilitiesExceptOutput, table
    createAttendee: function(Client, types.CreateAttendeeInput): types.CreateAttendeeOutput, table
    createMeeting: function(Client, types.CreateMeetingInput): types.CreateMeetingOutput, table
    createMeetingWithAttendees: function(Client, types.CreateMeetingWithAttendeesInput): types.CreateMeetingWithAttendeesOutput, table
    deleteAttendee: function(Client, types.DeleteAttendeeInput): types.DeleteAttendeeOutput, table
    deleteMeeting: function(Client, types.DeleteMeetingInput): types.DeleteMeetingOutput, table
    getAttendee: function(Client, types.GetAttendeeInput): types.GetAttendeeOutput, table
    getMeeting: function(Client, types.GetMeetingInput): types.GetMeetingOutput, table
    listAttendees: function(Client, types.ListAttendeesInput): types.ListAttendeesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startMeetingTranscription: function(Client, types.StartMeetingTranscriptionInput): types.StartMeetingTranscriptionOutput, table
    stopMeetingTranscription: function(Client, types.StopMeetingTranscriptionInput): types.StopMeetingTranscriptionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAttendeeCapabilities: function(Client, types.UpdateAttendeeCapabilitiesInput): types.UpdateAttendeeCapabilitiesOutput, table
end

local record M
    new: function(table): Client
end

return M
