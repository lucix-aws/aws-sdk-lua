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
