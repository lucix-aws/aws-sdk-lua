-- Teal declarations for runtime/env.lua

local record env
    record EnvConfig
        region: string
        profile: string
        config_file: string
        credentials_file: string
        access_key_id: string
        secret_access_key: string
        session_token: string
        use_fips: boolean
        use_dual_stack: boolean
        endpoint_url: string
        max_attempts: integer
        retry_mode: string
    end

    load: function(): EnvConfig, string
end

return env
