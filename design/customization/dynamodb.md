# DynamoDB Customizations

DynamoDB has a moderate set of customizations focused on data integrity and
endpoint optimization.

---

## Tier 1: Important for correctness

### 1. CRC32 response checksum validation

**Problem:** DynamoDB returns a `X-Amz-Crc32` header on every response. The
SDK must validate the response body's CRC32 matches this value to detect data
corruption in transit.

**Behavior:**
- Compute CRC32 (IEEE) of the response body as it's read
- Compare to the `X-Amz-Crc32` header value (decimal integer)
- If mismatch, return a retryable error (transient classification)
- Enabled by default, opt-out via `cfg.disable_validate_response_checksum`

**Where:** Interceptor (`modify_before_deserialization` or wrapping the
response body reader). Could also be a DynamoDB-specific middleware.

**Effort:** 30min — CRC32 is simple (LuaJIT bit ops or FFI to zlib).

### 2. Idempotency token auto-fill

**Problem:** Operations like `TransactWriteItems`, `ExecuteTransaction`,
`ImportTable`, and `ExportTableToPointInTime` have a `ClientRequestToken` field
that must be unique per request for idempotency. If the user doesn't provide
one, the SDK must generate a UUID.

**Behavior:**
- If the token field is nil/empty at request time, generate a UUIDv4
- This is a standard Smithy behavior driven by `@idempotencyToken` trait
- Should already work if the runtime handles the trait generically

**Where:** Generic runtime support in `invokeOperation` (check schema for
idempotency token member, auto-fill if nil). This is NOT DynamoDB-specific if
done correctly.

**Status:** Check if smithy-lua already handles `@idempotencyToken`. If so,
this is free.

---

## Tier 2: Performance optimization

### 3. Endpoint discovery

**Problem:** DynamoDB supports endpoint discovery — the client calls
`DescribeEndpoints` to get optimized regional endpoints, then caches and uses
them for subsequent requests.

**Behavior:**
- Client maintains an endpoint cache (capacity ~10, keyed by region)
- Per-operation, if endpoint discovery is enabled and the operation supports it:
  - Check cache for a valid (non-expired) endpoint
  - If miss, call `DescribeEndpoints`, cache result with TTL
  - Use discovered endpoint instead of the standard resolved endpoint
- Configuration: `cfg.endpoint_discovery` = `"auto"` (default) | `"enabled"` | `"disabled"`
  - `auto`: only discover for operations that mark it required
  - `enabled`: always discover
  - `disabled`: never discover

**Where:** A middleware/interceptor that runs after endpoint resolution and
optionally overrides the URL.

**Effort:** 2-3hr — requires cache implementation, async refresh, and the
DescribeEndpoints call itself.

**Priority for hackathon:** Low. Standard endpoints work fine. This is a
latency optimization for high-throughput workloads.

### 4. Accept-Encoding gzip

**Problem:** DynamoDB supports gzip-compressed responses. Enabling this reduces
bandwidth for large Scan/Query results.

**Behavior:**
- Opt-in: `cfg.enable_accept_encoding_gzip`
- Adds `Accept-Encoding: gzip` request header
- Decompresses response body before deserialization
- CRC32 validation happens on the compressed bytes (before decompression)

**Where:** Generic middleware (shared with any service that opts in).

**Effort:** 1hr — need gzip decompression (zlib FFI or pure Lua).

**Priority for hackathon:** Low. Nice-to-have for bandwidth savings.

---

## Tier 3: Not needed for hackathon

### 5. DynamoDB-specific retry behavior

DynamoDB uses standard retry. No custom retry logic beyond what the standard
AWS retry strategy provides. The `@retryable` traits on DynamoDB errors
(ThrottlingException, etc.) drive classification.

---

## References

- Go SDK DynamoDB runtime: `aws-sdk-go-v2/service/dynamodb/internal/customizations/`
- Go SDK endpoint discovery: `aws-sdk-go-v2/service/internal/endpoint-discovery/`
