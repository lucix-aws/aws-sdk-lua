# Cross-Cutting Customizations

These customizations apply to all (or many) services and are implemented at
the codegen or shared runtime level.

---

## 1. Lambda recursion detection

**Applies to:** All services

**Problem:** When an AWS SDK call is made from within a Lambda function, and
that call triggers the same Lambda (directly or indirectly), it creates an
infinite recursion loop. The SDK propagates the `_X_AMZN_TRACE_ID` environment
variable as the `X-Amzn-Trace-Id` header so Lambda can detect and break cycles.

**Behavior:**
- If `AWS_LAMBDA_FUNCTION_NAME` env var is set (we're in Lambda):
  - Read `_X_AMZN_TRACE_ID` env var
  - Set `X-Amzn-Trace-Id` header on the request
- Runs unconditionally on all service clients

**Where:** Generic middleware added to all clients.

**Effort:** 5min.

**Priority:** Low for hackathon (Lambda-specific optimization).

---

## 2. Idempotency token auto-fill

**Applies to:** Any operation with `@idempotencyToken` trait member

**Problem:** Operations with idempotency tokens should auto-generate a UUID if
the user doesn't provide one.

**Behavior:**
- Check if the idempotency token member (identified by trait) is nil
- If nil, generate a UUIDv4 and set it
- Runs in Initialize stage

**Where:** Generic runtime behavior in `invokeOperation`. The schema should
indicate which member (if any) is the idempotency token.

**Status:** Check if smithy-lua handles this. If not, ~15min to add.

---

## 3. Request compression (gzip)

**Applies to:** Operations with `@requestCompression` trait (CloudWatch Logs,
CloudTrail, etc.)

**Problem:** Some operations support gzip-compressed request bodies to reduce
bandwidth for large payloads.

**Behavior:**
- If the operation has `@requestCompression` with `encodings: ["gzip"]`:
  - Gzip-compress the request body
  - Set `Content-Encoding: gzip` header
  - Update `Content-Length`
- Configurable: `cfg.disable_request_compression` and
  `cfg.request_min_compression_size_bytes` (default 10240)

**Where:** Generic middleware, driven by operation trait.

**Effort:** 30min (need gzip via zlib FFI).

**Priority:** Low for hackathon.

---

## 4. Flexible checksums (v2)

**Applies to:** Operations with `@httpChecksum` trait (S3, DynamoDB Streams,
etc.)

**Problem:** Modern AWS operations support multiple checksum algorithms
(CRC32, CRC32C, CRC64-NVME, SHA-1, SHA-256) for request and response
integrity.

**Behavior:**
- Request: compute checksum of body, send as `x-amz-checksum-{algorithm}`
  header (or trailing chunk for streaming)
- Response: validate `x-amz-checksum-{algorithm}` header against body
- Algorithm selection: user-specified > operation default > SDK default (CRC32)
- Configuration: `cfg.request_checksum_calculation` (when_supported |
  when_required), `cfg.response_checksum_validation`

**Where:** Generic middleware driven by operation traits.

**Effort:** 4-8hr (multiple algorithms, trailing checksums, aws-chunked
encoding).

**Priority:** Medium. S3 PutObject and others benefit significantly.

---

## 5. Endpoint auth scheme resolution

**Applies to:** S3, EventBridge, SES v2

**Problem:** Most services determine their auth scheme from the operation model.
These three services determine it from endpoint rules (the endpoint resolution
returns `authSchemes` in its properties). This means the auth scheme can change
per-request based on the input (e.g., S3 MRAP → sigv4a, S3Express →
sigv4express).

**Behavior:**
- After endpoint resolution, check if the endpoint returned `authSchemes`
- If so, use those as the auth scheme options (overriding the operation model)
- Map endpoint scheme names to SDK scheme IDs:
  - `sigv4` → `aws.auth#sigv4`
  - `sigv4a` → `aws.auth#sigv4a`
  - `sigv4-s3express` → `com.amazonaws.s3#sigv4express`

**Where:** Custom auth scheme resolver on these specific clients.

**Status:** smithy-lua already extracts signing name/region from endpoint auth
scheme properties. The gap is: it doesn't swap the auth scheme itself (e.g.,
from sigv4 to sigv4a).

---

## 6. User-agent feature tracking

**Applies to:** All services

**Problem:** AWS tracks SDK feature usage via the user-agent string for
service improvement decisions.

**Features tracked:** retry mode, paginator usage, waiter usage, protocol
(rpcv2cbor), checksum config, compression, account ID endpoint mode, S3Express.

**Where:** User-agent middleware appends feature flags.

**Priority:** Very low for hackathon. Nice-to-have for telemetry.

---

## References

- Go SDK codegen: `aws-sdk-go-v2/codegen/smithy-aws-go-codegen/src/main/java/software/amazon/smithy/aws/go/codegen/customization/`
- Go SDK shared: `aws-sdk-go-v2/service/internal/`
