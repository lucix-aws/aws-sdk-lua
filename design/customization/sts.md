# STS Customizations

STS has two customizations: presigning and anonymous auth for certain
operations.

---

## Tier 1: Important for ecosystem

### 1. Presigning GetCallerIdentity and AssumeRole

**Problem:** `GetCallerIdentity` presigned URLs are used as bearer tokens for
EKS cluster authentication and other identity verification flows.
`AssumeRole` presigned URLs are used in cross-account delegation scenarios.

**Behavior:**
- Convert the request to a GET (move POST body params to query string)
- Sign the URL with SigV4 (credentials, date, expires, signature in query
  params)
- Return the presigned URL + signed headers + HTTP method
- Default expiry: 900 seconds (15 minutes)
- Remove retry, deserialize, user-agent middleware (not needed for presigning)

**Where:** Presign client wrapper (like Go's `PresignClient`). Requires the
general presigning subsystem to exist first.

**Effort:** Depends on presigning infrastructure. If presigning exists, wiring
STS is ~30min.

**Priority for hackathon:** Medium-high. EKS auth is a common use case, but
presigning is a large feature on its own.

### 2. Anonymous auth for AssumeRoleWithSAML / AssumeRoleWithWebIdentity

**Problem:** These operations authenticate via SAML assertions or OIDC tokens
passed as input parameters, not via SigV4 credentials. The SDK must not
require AWS credentials for these calls.

**Behavior:**
- Operations have `@optionalAuth` / `@auth([])` traits
- The auth scheme resolver returns anonymous (no signing) for these operations
- If the user has credentials configured, they're still ignored for these ops

**Where:** Should be handled generically by the SRA auth resolution pipeline.
If the operation's `effective_auth_schemes` includes `smithy.api#noAuth` and
no credentials are available, skip signing.

**Status:** Check if smithy-lua's auth resolution already handles `noAuth`.
If so, this is free from the model.

---

## Not customized

- No CRC32 validation
- No endpoint discovery
- No custom error handling
- Standard awsQuery protocol

---

## References

- Go SDK STS: `aws-sdk-go-v2/service/sts/api_client.go` (PresignClient)
- Go SDK auth: `BackfillOptionalAuthTrait.java` in codegen customizations
