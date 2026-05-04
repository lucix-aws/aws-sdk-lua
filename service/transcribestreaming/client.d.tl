local types = require("transcribestreaming.types")

local record Client
    getMedicalScribeStream: function(Client, types.GetMedicalScribeStreamInput): types.GetMedicalScribeStreamOutput, table
    startCallAnalyticsStreamTranscription: function(Client, types.StartCallAnalyticsStreamTranscriptionInput): types.StartCallAnalyticsStreamTranscriptionOutput, table
    startMedicalScribeStream: function(Client, types.StartMedicalScribeStreamInput): types.StartMedicalScribeStreamOutput, table
    startMedicalStreamTranscription: function(Client, types.StartMedicalStreamTranscriptionInput): types.StartMedicalStreamTranscriptionOutput, table
    startStreamTranscription: function(Client, types.StartStreamTranscriptionInput): types.StartStreamTranscriptionOutput, table
end

local record M
    new: function(table): Client
end

return M
