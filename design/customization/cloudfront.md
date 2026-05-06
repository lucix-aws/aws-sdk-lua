# CloudFront Customizations

CloudFront has no API-level customizations but provides URL/cookie signing
utilities as a separate feature module.

---

## 1. URL and cookie signing utilities

**Problem:** CloudFront private distributions require signed URLs or signed
cookies to authorize content access. This is NOT an API call — it's a
client-side cryptographic operation using the distribution's RSA key pair.

**Behavior:**
- **URL signing**: Generate a signed CloudFront URL with:
  - Canned policy (just an expiry time), or
  - Custom policy (IP restrictions, date ranges, path wildcards)
- **Cookie signing**: Generate `CloudFront-Policy`, `CloudFront-Signature`,
  `CloudFront-Key-Pair-Id` cookies for browser-based access
- Uses RSA-SHA1 signatures with the CloudFront key pair
- Base64-encodes with URL-safe alphabet (replace `+/=` with `-~_`)

**Where:** Standalone utility module, not part of the CloudFront service client.
In Go SDK: `feature/cloudfront/sign/` package.

**Effort:** 1-2hr — RSA signing via OpenSSL FFI, policy JSON construction,
URL assembly.

**Priority for hackathon:** Low. This is a utility feature, not required for
the CloudFront API to work.

---

## CloudFront KeyValueStore

A separate service (`cloudfrontkeyvaluestore`) that uses SigV4a signing by
default. This is handled by the model's auth traits — no custom code needed
if the SDK supports SigV4a (which smithy-lua already does).

---

## References

- Go SDK: `aws-sdk-go-v2/feature/cloudfront/sign/`
- Go SDK codegen: `CloudFrontKVSSigV4a.java`
