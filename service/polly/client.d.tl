local types = require("polly.types")

local record Client
    deleteLexicon: function(Client, types.DeleteLexiconInput): types.DeleteLexiconOutput, table
    describeVoices: function(Client, types.DescribeVoicesInput): types.DescribeVoicesOutput, table
    getLexicon: function(Client, types.GetLexiconInput): types.GetLexiconOutput, table
    getSpeechSynthesisTask: function(Client, types.GetSpeechSynthesisTaskInput): types.GetSpeechSynthesisTaskOutput, table
    listLexicons: function(Client, types.ListLexiconsInput): types.ListLexiconsOutput, table
    listSpeechSynthesisTasks: function(Client, types.ListSpeechSynthesisTasksInput): types.ListSpeechSynthesisTasksOutput, table
    putLexicon: function(Client, types.PutLexiconInput): types.PutLexiconOutput, table
    startSpeechSynthesisStream: function(Client, types.StartSpeechSynthesisStreamInput): types.StartSpeechSynthesisStreamOutput, table
    startSpeechSynthesisTask: function(Client, types.StartSpeechSynthesisTaskInput): types.StartSpeechSynthesisTaskOutput, table
    synthesizeSpeech: function(Client, types.SynthesizeSpeechInput): types.SynthesizeSpeechOutput, table
end

local record M
    new: function(table): Client
end

return M
