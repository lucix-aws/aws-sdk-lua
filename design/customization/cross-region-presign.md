# Cross-Region Presigned URL Auto-Fill

Applies to: **EC2**, **RDS**, **DocDB**, **Neptune**

Several services require a presigned URL when performing cross-region copy or
create operations. The SDK auto-generates this URL when `SourceRegion` is
provided.

---

## Affected Operations

| Service | Operations |
|---------|-----------|
| EC2 | CopySnapshot |
| RDS | CopyDBSnapshot, CopyDBClusterSnapshot, CreateDBInstanceReadReplica, CreateDBCluster |
| DocDB | CopyDBClusterSnapshot, CreateDBCluster |
| Neptune | CopyDBClusterSnapshot, CreateDBCluster |

---

## Behavior

**Problem:** Cross-region operations (e.g., copying an encrypted RDS snapshot
from us-east-1 to us-west-2) require a presigned URL targeting the source
region's API endpoint. This proves to the source region that the caller is
authorized.

**SDK auto-fill logic:**
1. User sets `SourceRegion` on the input (synthetic member, not in the API model)
2. If `PresignedUrl` / `PreSignedUrl` is NOT already set:
   a. Copy the input parameters
   b. Set `DestinationRegion` to the client's configured region
   c. Create a presign client targeting `SourceRegion`
   d. Presign the same operation against the source region
   e. Set the resulting URL into the `PresignedUrl` field
3. The actual request goes to the destination region with the presigned URL

**Codegen-level:** The Go SDK implements this as `PresignURLAutoFill.java` —
a codegen customization that:
- Adds `SourceRegion` and `DestinationRegion` synthetic input members
- Generates a presign client for the affected operations
- Generates middleware that auto-fills the URL

---

## Implementation Options

### Option A: Codegen customization (correct)
Add synthetic members and presign logic per-operation in codegen. Requires
the presigning subsystem to exist.

### Option B: Runtime interceptor (hackathon shortcut)
Register an interceptor on these clients that detects `SourceRegion`, builds
and signs the URL manually. Less maintainable but faster to implement.

---

## Priority for hackathon

**Low.** Cross-region copy is an advanced use case. These operations work
fine within a single region without the presigned URL. Only needed when
`SourceRegion` differs from the client's region.

**Dependency:** Requires the presigning subsystem (query-string SigV4 signing).

---

## References

- Go SDK codegen: `PresignURLAutoFill.java`
- Go SDK shared runtime: `aws-sdk-go-v2/service/internal/presigned-url/`
