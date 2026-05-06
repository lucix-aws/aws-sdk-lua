# SSO / SSO OIDC Customizations

Both SSO services have operations that use anonymous auth (no SigV4 signing)
because they authenticate via tokens passed as input parameters.

---

## 1. Anonymous auth for token-based operations

**Problem:** Certain SSO operations authenticate via bearer tokens or device
codes passed as input parameters, not via AWS credentials. The SDK must not
require or use SigV4 credentials for these calls.

**Affected operations:**

| Service | Operations |
|---------|-----------|
| SSO | GetRoleCredentials, ListAccountRoles, ListAccounts, Logout |
| SSO OIDC | CreateToken, RegisterClient, StartDeviceAuthorization |

**Behavior:**
- These operations have `@optionalAuth` / `@auth([])` in the model
- The auth scheme resolver returns `smithy.api#noAuth` (anonymous)
- No signing middleware runs
- The access token / device code is passed as a regular input field (serialized
  as a header or body parameter)

**Where:** Should be handled generically by the SRA auth resolution pipeline.
If `effective_auth_schemes` includes `smithy.api#noAuth` and it's selected
(either because no credentials are available, or because it's the only option),
skip signing entirely.

**Status:** Check if smithy-lua already handles `noAuth` in
`effective_auth_schemes`. The codegen emits this from the model. If the auth
resolver correctly selects `noAuth` when it's the only scheme listed, this is
free.

**Effort:** 0 if auth resolution works correctly. Otherwise ~30min to handle
the `noAuth` scheme.

---

## Not customized

- Standard restJson1 protocol
- No checksums
- No endpoint discovery
- No custom error handling

---

## References

- Go SDK codegen: `BackfillOptionalAuthTrait.java`
- Go SDK auth: `GlobalAnonymousOption.java`
