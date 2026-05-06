# Glacier Customizations

Glacier has three customizations, all related to its unique API design
decisions.

---

## Tier 1: Required for Glacier to work

### 1. Tree hash computation

**Problem:** Glacier requires a SHA-256 tree hash of the request body for
upload operations. This is a Merkle tree where leaves are SHA-256 hashes of
1MB chunks, and internal nodes are SHA-256 of concatenated child hashes.

**Behavior:**
- Read body in 1MB chunks
- Compute SHA-256 of each chunk (leaves)
- Build binary tree: each parent = SHA-256(left_child || right_child)
- Set `X-Amz-Sha256-Tree-Hash` header to hex-encoded root hash
- Also set `X-Amz-Content-Sha256` header (linear hash of full body)
- Only works on seekable streams (must read body twice or buffer)

**Where:** Finalize-stage middleware/interceptor. Runs before signing (signing
needs the headers to be present).

**Effort:** 1-2hr — tree hash algorithm is ~50 lines, but needs body
buffering.

**Priority for hackathon:** Low. Glacier is rarely used interactively.

### 2. Account ID defaulting

**Problem:** Every Glacier operation requires an `AccountId` in the URL path.
Most users want "my account" but don't know their account ID.

**Behavior:**
- If `AccountId` is nil/empty, set it to `"-"` (means "current account")
- Runs in Initialize stage (before serialization)

**Where:** Interceptor (`read_before_serialization` or `modify_before_serialization`).

**Effort:** 5min — trivial string default.

### 3. API version header

**Problem:** Glacier uses `X-Amz-Glacier-Version` header for version
negotiation instead of the standard mechanism.

**Behavior:**
- Set `X-Amz-Glacier-Version` to the service's API version string (e.g.,
  `"2012-06-01"`)
- Added to every request

**Where:** Serialize-stage middleware/interceptor.

**Effort:** 5min — trivial header injection.

---

## Not customized

- Standard restJson1 protocol
- No endpoint discovery
- No presigning
- No custom error handling

---

## References

- Go SDK Glacier: `aws-sdk-go-v2/service/glacier/internal/customizations/`
