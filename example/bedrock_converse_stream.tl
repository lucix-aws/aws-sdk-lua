--
-- Example: Bedrock Runtime ConverseStream
--
-- Streams a response from a Bedrock model using event streams.
--
-- Requires AWS credentials via environment variables, ~/.aws/credentials,
-- or ~/.aws/config (standard credential chain).
--
-- Usage:
--   make run-example EXAMPLE=bedrock_converse_stream
--
-- Or:
--   LUA_PATH="..." luajit example/bedrock_converse_stream.lua [region] [model-id]
--

local bedrockruntime = require("aws.sdk.service.bedrockruntime")

local region = arg[1] or os.getenv("AWS_REGION") or "us-east-1"
local model_id = arg[2] or "us.amazon.nova-lite-v1:0"

local client = bedrockruntime.new({ region = region })

print("Bedrock ConverseStream (" .. region .. ", " .. model_id .. ")")
print(string.rep("-", 60))

local stream, err = client:converseStream({
    modelId = model_id,
    messages = {
        {
            role = "user",
            content = {
                { text = "Write a haiku about Lua programming." },
            },
        },
    },
})

if err then
    io.stderr:write("ERROR: " .. (err.code or "unknown") .. ": " .. (err.message or "") .. "\n")
    os.exit(1)
end

-- Iterate events from the stream
for event, eerr in stream:events() do
    if eerr then
        io.stderr:write("STREAM ERROR: " .. (eerr.code or "unknown") .. ": " .. (eerr.message or "") .. "\n")
        break
    end

    if event.contentBlockDelta then
        local delta = event.contentBlockDelta.delta
        if delta and delta.text then
            io.write(delta.text)
            io.flush()
        end
    elseif event.messageStop then
        -- End of message
        io.write("\n")
    elseif event.metadata then
        local meta = event.metadata
        if meta.usage then
            print(string.format("\n[tokens: input=%d, output=%d]",
                meta.usage.inputTokens or 0,
                meta.usage.outputTokens or 0))
        end
    end
end

stream:close()
