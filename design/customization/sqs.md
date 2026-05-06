# SQS Customizations

SQS has a single meaningful customization: message body checksum validation.

---

## Tier 1: Important for correctness

### 1. MD5 message checksum validation

**Problem:** SQS returns MD5 checksums of message bodies. The SDK must
validate these to detect message corruption.

**Affected operations:**
- **SendMessage**: Validate `output.MD5OfMessageBody` matches MD5 of
  `input.MessageBody`
- **SendMessageBatch**: For each entry, match input/output by `Id`, validate
  body MD5
- **ReceiveMessage**: For each received message, validate `MD5OfBody` matches
  MD5 of `Body`

**Behavior:**
- Compute MD5 of the message body (hex-encoded)
- Compare to the MD5 field in the response
- If mismatch, return an error (not retryable — the message was corrupted or
  tampered with)
- Enabled by default, opt-out via `cfg.disable_message_checksum_validation`

**Where:** Per-operation interceptor or middleware. Runs after deserialization
(needs both input and output).

**Effort:** 30min — MD5 is straightforward (pure Lua or OpenSSL FFI).

**Note:** This is a legacy behavior. Newer SQS features may move toward
flexible checksums (CRC32C etc.) but MD5 validation is still the standard SDK
behavior.

---

## Not customized

- No endpoint discovery
- No presigning
- No custom error handling
- No idempotency tokens
- Standard awsQuery protocol (migrated to awsJson in newer SDK versions via
  query-compatible mode)

---

## References

- Go SDK SQS: `aws-sdk-go-v2/service/sqs/cust_checksum_validation.go`
