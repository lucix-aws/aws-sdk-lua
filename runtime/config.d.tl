-- Teal declarations for runtime/config.lua

local record config
    record ProfileData
        props: {string: string}
        sub_props: {string: {string: string}}
    end

    type Profiles = {string: ProfileData}

    default_config_path: function(): string
    default_credentials_path: function(): string
    load: function(config_path: string, credentials_path: string): Profiles, string
    get_profile: function(profiles: Profiles, name: string): {string: string}
end

return config
