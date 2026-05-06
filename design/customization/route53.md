# Route 53 Customizations

Route 53 has two customizations: resource ID sanitization and a custom error
format.

---

## Tier 1: Important for usability

### 1. Resource ID sanitization (strip path prefixes)

**Problem:** Route 53 APIs return resource IDs with path prefixes like
`/hostedzone/Z1234`, `/change/C1234`, `/delegationset/D1234`. But input
parameters expect just the bare ID (`Z1234`). Users naturally pass output from
one call as input to the next, which breaks.

**Behavior:**
- Before serialization, strip these prefixes from ID input members:
  - `/hostedzone/` → bare ID
  - `/change/` → bare ID
  - `/delegationset/` → bare ID
- Runs in Serialize stage (before the ID is placed in the URL path)

**Where:** Interceptor (`modify_before_serialization`) on the Route 53 client.

**Effort:** 15min — simple string prefix stripping.

### 2. Custom error deserialization for InvalidChangeBatch

**Problem:** The `ChangeResourceRecordSets` operation returns an
`InvalidChangeBatch` error with non-standard XML structure. Instead of the
normal error format, it returns:

```xml
<InvalidChangeBatch>
  <Messages>
    <Message>some error message</Message>
    <Message>another error</Message>
  </Messages>
</InvalidChangeBatch>
```

The standard error deserializer can't parse this because the root element name
IS the error code, and messages are in a nested list.

**Behavior:**
- After standard deserialization, if the error is unrecognized, peek at the
  response XML root element
- If root is `InvalidChangeBatch`, custom-parse the `Messages` list
- Construct the error with code `InvalidChangeBatch` and joined messages

**Where:** Route 53 client interceptor or custom error deserializer.

**Effort:** 30min.

---

## Not customized

- Standard restXml protocol
- No checksums
- No presigning
- No endpoint discovery

---

## References

- Go SDK Route53: `aws-sdk-go-v2/service/route53/internal/customizations/`
