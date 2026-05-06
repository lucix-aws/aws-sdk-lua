# Transcribe Streaming Customizations

Transcribe Streaming uses bidirectional event streams with per-message SigV4
signing.

---

## 1. Bidirectional event stream with per-message signing

**Problem:** `StartStreamTranscription` is a bidirectional streaming operation:
the client sends audio frames as event stream messages while simultaneously
receiving transcription results. Each outbound message must be individually
signed using SigV4 event stream signing.

**Behavior:**
- HTTP/2 bidirectional stream (not WebSocket — that was the v1 SDK approach)
- Outbound: audio chunks encoded as event stream binary frames, each signed
- Inbound: transcription events decoded from event stream binary frames
- **Signature chaining**: each message's signature incorporates the previous
  message's signature (initial signature = the request signature)
- Frame format: prelude (total length + headers length + CRC) + headers +
  payload + message CRC

**Where:** Event stream codec + stream signer. smithy-lua already has
output-only event stream support (used for Bedrock ConverseStream). This
would extend it to bidirectional (input + output) streams.

**Effort:** 4-8hr — significant. Requires:
- Input event stream encoding (frame construction)
- Per-message SigV4 stream signing
- Bidirectional HTTP/2 stream management
- Async send/receive coordination

**Priority for hackathon:** Low. Output-only streaming (Bedrock) already works.
Bidirectional is a stretch goal.

---

## Not customized (beyond event streams)

- Standard restJson1 protocol for the initial request
- No checksums
- No endpoint discovery
- No custom error handling

---

## References

- Go SDK: `aws-sdk-go-v2/service/transcribestreaming/eventstream.go`
- smithy-lua event stream: `runtime/smithy/eventstream.lua`
