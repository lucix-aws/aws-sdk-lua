# AWS SDK for Lua (experimental)

Experimental AWS SDK for Lua, currently targeting LuaJIT.

## Requirements

- [LuaJIT](https://luajit.org/)
- A clone of [smithy-lua](https://github.com/aws/smithy-lua) (the Smithy client runtime)

## Setup

The SDK is split across two repositories:

| Repository | Contains | Require prefix |
|---|---|---|
| `smithy-lua` | Smithy client runtime (protocols, signing, retry, etc.) | `smithy.*` |
| `aws-sdk-lua` | AWS SDK runtime, generated service clients, and HLL libraries | `aws.sdk.*` |

Since neither repository is distributed as a package yet, you need both cloned locally and must configure `LUA_PATH` so that `require()` can find all modules.

### LUA_PATH

```bash
# Adjust paths to where you cloned the repos
export SMITHY_LUA=~/git/smithy-lua
export AWS_SDK_LUA=~/git/aws-sdk-lua

export LUA_PATH="$SMITHY_LUA/runtime/?.lua;$SMITHY_LUA/runtime/?/init.lua;$AWS_SDK_LUA/src/?.lua;$AWS_SDK_LUA/src/?/init.lua;;"
```

This enables the following require namespaces:

- `require("smithy.client")` → Smithy client runtime
- `require("aws.sdk.runtime.config")` → SDK runtime (credentials, config, etc.)
- `require("aws.sdk.service.dynamodb")` → generated service client
- `require("aws.sdk.hll.s3.transfermanager")` → high-level libraries

## Quick Start

### Credentials

Set your AWS credentials via environment variables:

```bash
export AWS_ACCESS_KEY_ID=AKIA...
export AWS_SECRET_ACCESS_KEY=...
export AWS_SESSION_TOKEN=...       # optional
export AWS_REGION=us-east-1        # optional, can also pass in config
```

Or configure `~/.aws/credentials` and `~/.aws/config` as usual.

### Usage

```lua
local dynamodb = require("aws.sdk.service.dynamodb")

local client = dynamodb.new({ region = "us-east-1" })

local result, err = client:listTables({})
if err then
    print("error:", err.code, err.message)
    return
end

for _, name in ipairs(result.TableNames) do
    print(name)
end
```

### Examples

Various examples are available in the `example/` directory.

```bash
tl run example/s3/list_buckets.tl
```
