--
-- Example: TranscribeStreaming (bidirectional event stream)
--
-- Streams audio to Amazon Transcribe and receives transcription events back.
-- Generates a simple sine wave tone as PCM audio to demonstrate the protocol.
--
-- Usage:
--   LUA_PATH="..." luajit example/transcribe_streaming.lua [region]
--

local transcribe = require("aws.sdk.service.transcribestreaming")

local region = arg[1] or os.getenv("AWS_REGION") or "us-east-1"

local client = transcribe.new({ region = region })

print("TranscribeStreaming (" .. region .. ")")
print(string.rep("-", 60))

-- Start the bidirectional stream
local stream, err = client:startStreamTranscription({
    LanguageCode = "en-US",
    MediaSampleRateHertz = 16000,
    MediaEncoding = "pcm",
})

if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

print("Stream established, sending audio...")

-- Generate 1 second of silence (16-bit PCM, 16kHz = 32000 bytes)
-- Real usage would read from a microphone or WAV file
local silence = string.rep("\x00\x00", 16000)

-- Send audio in chunks
local chunk_size = 8000 -- ~250ms chunks
for i = 1, #silence, chunk_size do
    local chunk = silence:sub(i, i + chunk_size - 1)
    local ok, serr = stream:send({ AudioEvent = { AudioChunk = chunk } })
    if serr then
        io.stderr:write("SEND ERROR: " .. (serr.message or "") .. "\n")
        break
    end
end

-- Signal end of audio input
stream:close_input()
print("Audio sent, waiting for transcription events...")

-- Read transcription events
for event, eerr in stream:events() do
    if eerr then
        io.stderr:write("STREAM ERROR: " .. (eerr.code or "unknown") .. ": " .. (eerr.message or "") .. "\n")
        break
    end

    if event.TranscriptEvent then
        local results = event.TranscriptEvent.Transcript and event.TranscriptEvent.Transcript.Results
        if results then
            for _, result in ipairs(results) do
                if not result.IsPartial then
                    for _, alt in ipairs(result.Alternatives or {}) do
                        if alt.Transcript then
                            print("Transcript: " .. alt.Transcript)
                        end
                    end
                end
            end
        end
    end
end

stream:close()
print("Done.")
