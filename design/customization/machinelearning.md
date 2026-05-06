# Machine Learning Customizations

Amazon Machine Learning has a single customization for the Predict operation.

---

## 1. Predict endpoint override

**Problem:** The ML `Predict` operation must be sent to a custom endpoint URL
that is specific to the ML model's real-time prediction server. This endpoint
is returned by a prior `CreateRealtimeEndpoint` API call and stored in the
`PredictEndpoint` input field.

**Behavior:**
- After endpoint resolution, replace the request URL entirely with the value
  of `input.PredictEndpoint`
- The standard endpoint (ml.us-east-1.amazonaws.com) is NOT used for Predict
- Signing still uses the standard service/region (the custom endpoint is just
  a routing target)

**Where:** Serialize-stage middleware/interceptor that overwrites the resolved
URL.

**Effort:** 10min — trivial URL override.

**Priority for hackathon:** Very low. Amazon ML is a legacy service (superseded
by SageMaker).

---

## References

- Go SDK: `aws-sdk-go-v2/service/machinelearning/internal/customizations/predictendpoint.go`
