# API Gateway Customizations

API Gateway has a single customization: Accept header injection.

---

## 1. Accept header injection

**Problem:** The API Gateway control plane requires an `Accept: application/json`
header on every request. This isn't modeled in the Smithy model, so the SDK
must inject it.

**Behavior:**
- Add `Accept: application/json` header to every API Gateway request
- Unconditional — applies to all operations

**Where:** Build-stage middleware/interceptor on the API Gateway client.

**Effort:** 5min — trivial header injection.

**Priority for hackathon:** Low. API Gateway is not a common first-use service.

---

## References

- Go SDK: `aws-sdk-go-v2/service/apigateway/internal/customizations/accept_header.go`
- Go SDK codegen: `APIGatewayAcceptHeader.java`
