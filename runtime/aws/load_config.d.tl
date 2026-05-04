-- Teal declarations for runtime/load_config.lua

local config = require("config")

local record load_config
    record ResolvedConfig
        region: string
        profile: string
        access_key_id: string
        secret_access_key: string
        session_token: string
        use_fips: boolean
        use_dual_stack: boolean
        endpoint_url: string
        max_attempts: integer
        retry_mode: string
        role_arn: string
        source_profile: string
        credential_process: string
        sso_session: string
        sso_account_id: string
        sso_role_name: string
        sso_region: string
        sso_start_url: string
        profiles: config.Profiles
    end

    record Overrides
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

    load: function(overrides: Overrides): ResolvedConfig, string
end

return load_config
