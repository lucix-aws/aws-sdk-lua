# Decisions Log

Chronological log of design decisions made during implementation. All agents should read this file at session start and append to it when making decisions that affect other modules.

---

## 2026-05-04 — Config loading module structure: env.lua, config.lua, load_config.lua
**Context:** Need to load AWS configuration from environment variables and shared config files per the configuration-file SEP and configuration-values SEP.
**Decision:** Three modules in `runtime/`:
- `env.lua` — reads SDK-relevant environment variables into a flat table
- `config.lua` — INI parser for `~/.aws/config` and `~/.aws/credentials`, merges profiles per SEP rules
- `load_config.lua` — top-level resolver with precedence: explicit config > env vars > shared config files
**Affects:** Credential providers, generated client constructors, any SDK-level config consumer.

## 2026-05-04 — Config file parser follows configuration-file SEP strictly
**Context:** The configuration-file SEP defines precise parsing rules for the INI-like format.
**Decision:** Parser implements: `profile` prefix requirement in config files, sub-properties, case-insensitive keys (stored lowercase), comment handling (# and ; with whitespace rule), duplicate profile merging, credentials-file-wins-on-conflict, `[profile default]` overrides `[default]` in config files. Parse errors are fatal (return nil, err).
**Affects:** All code that reads shared config/credentials.

## 2026-05-04 — Environment config covers hackathon-relevant subset only
**Context:** Full Go SDK env_config.go has ~40 env vars. Most are irrelevant for the hackathon.
**Decision:** env.lua reads: AWS_REGION, AWS_DEFAULT_REGION, AWS_PROFILE, AWS_DEFAULT_PROFILE, AWS_CONFIG_FILE, AWS_SHARED_CREDENTIALS_FILE, AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, AWS_SESSION_TOKEN, AWS_USE_FIPS_ENDPOINT, AWS_USE_DUALSTACK_ENDPOINT, AWS_ENDPOINT_URL, AWS_MAX_ATTEMPTS, AWS_RETRY_MODE. Easily extensible later.
**Affects:** load_config.lua, credential providers.

## 2026-05-04 — Config resolver system: LuaIntegration.getConfigResolvers() hook
**Context:** Generated client constructors need to resolve defaults for protocol, signer, HTTP client, retry, and credentials. Some resolvers are generic Smithy concerns, others are SDK-specific.
**Decision:** Three-part design:
1. `ConfigResolver` record in smithy-lua codegen (requirePath, requireAlias, functionCall).
2. `LuaIntegration.getConfigResolvers(LuaContext)` hook — integrations return resolver entries to emit in generated constructors.
3. `DirectedLuaCodegen.generateService()` collects all resolvers from all integrations and emits them as calls in `new(cfg)`.
Base codegen handles: protocol (detected from service traits), endpoint (from endpoint rules), signer/http_client/retry (via `defaults.lua`). AWS SDK codegen adds: identity_resolver (via `sdk_defaults.lua`).
**Affects:** All generated client constructors, smithy-lua defaults.lua, aws-sdk-lua sdk_defaults.lua.

## 2026-05-04 — defaults.lua in smithy-lua runtime for generic config resolution
**Context:** Generated constructors call `defaults.resolve_signer(cfg)`, `defaults.resolve_http_client(cfg)`, `defaults.resolve_retry_strategy(cfg)`.
**Decision:** Each resolver does a nil-guard + lazy require + set default. Signer defaults to SigV4, HTTP client auto-detects via `http.client.resolve()`, retry defaults to standard retry (respects `cfg.max_attempts`).
**Affects:** All generated service clients, any code that constructs a client without explicit config.

## 2026-05-04 — AWS SDK codegen project structure
**Context:** Need a codegen project in aws-sdk-lua that extends smithy-lua codegen to generate all AWS service clients.
**Decision:** `codegen/` directory with: `smithy-aws-lua-codegen/` (Java, AwsSdkIntegration LuaIntegration), `sdk-codegen/` (dynamic smithy-build.json from aws-models, copyToService task). Models checked in under `sdk-codegen/aws-models/`. smithy-build.json is gitignored and generated at build time by scanning models and extracting sdkId from ServiceTrait. Output copied to `service/` directory.
**Affects:** Service client generation, CI/CD pipeline.

## 2026-05-04 — Service namespace uses sdkId from aws.api#service trait
**Context:** `getServiceNamespace()` used the Smithy shape name, causing collisions (RDS/DocDB/Neptune all mapped to `amazonRDSv19`) and ugly names (`aWSSecurityTokenServiceV20110615`).
**Decision:** Use `sdkId` from the `aws.api#service` trait when present, normalized (remove dashes/spaces, lowercase). Falls back to uncapitalized shape name for non-AWS services. Produces clean names: `dynamodb`, `s3`, `sts`, `lambda`.
**Affects:** All generated service client directory names, all require() paths in generated code.
