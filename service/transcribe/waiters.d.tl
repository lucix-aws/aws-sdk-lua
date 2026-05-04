local types = require("transcribe.types")

local record M
    wait_until_call_analytics_job_completed: function(client: table, input: table, options: table): table, table
    wait_until_language_model_completed: function(client: table, input: table, options: table): table, table
    wait_until_medical_scribe_job_completed: function(client: table, input: table, options: table): table, table
    wait_until_medical_transcription_job_completed: function(client: table, input: table, options: table): table, table
    wait_until_medical_vocabulary_ready: function(client: table, input: table, options: table): table, table
    wait_until_transcription_job_completed: function(client: table, input: table, options: table): table, table
    wait_until_vocabulary_ready: function(client: table, input: table, options: table): table, table
end

return M
