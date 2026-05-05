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
| `aws-sdk-lua` | AWS SDK runtime + generated service clients | `aws.*`, `<service>.*` |

Since neither repository is distributed as a package yet, you need both cloned locally and must configure `LUA_PATH` so that `require()` can find all modules.

### LUA_PATH

Set `LUA_PATH` to include the runtime directories from both repos and the service directory:

```bash
# Adjust paths to where you cloned the repos
export SMITHY_LUA=~/git/smithy-lua
export AWS_SDK_LUA=~/git/aws-sdk-lua

export LUA_PATH="$SMITHY_LUA/runtime/?.lua;$AWS_SDK_LUA/runtime/?.lua;$AWS_SDK_LUA/service/?.lua;;"
```

This enables the three require namespaces:
- `require("smithy.client")` → resolves from `smithy-lua/runtime/smithy/client.lua`
- `require("aws.sdk_defaults")` → resolves from `aws-sdk-lua/runtime/aws/sdk_defaults.lua`
- `require("dynamodb.client")` → resolves from `aws-sdk-lua/service/dynamodb/client.lua`

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
local dynamodb = require("dynamodb.client")

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
