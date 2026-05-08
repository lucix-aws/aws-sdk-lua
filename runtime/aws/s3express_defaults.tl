-- S3Express config resolve/finalize.

local s3express_signer = require("smithy.s3express_signer") as {string:any}
local s3express = require("aws.s3express") as {string:any}

local record M
    resolve: function(cfg: {string:any})
    finalize: function(cfg: {string:any}, self: any)
end

local S3EXPRESS_SCHEME_ID = "com.amazonaws.s3#sigv4express"

function M.resolve(cfg: {string:any})
    if cfg.disable_s3_express_session_auth then return end

    local schemes = cfg.auth_schemes as {string:any}
    schemes[S3EXPRESS_SCHEME_ID] = {
        scheme_id = S3EXPRESS_SCHEME_ID,
        identity_type = "s3express_credentials",
        signer = s3express_signer.sign,
        identity_resolver = function(self: {string:any}, identity_resolvers: {string:any}): any
            return identity_resolvers[self.identity_type as string]
        end,
    }
end

function M.finalize(cfg: {string:any}, self: any)
    if cfg.disable_s3_express_session_auth then return end

    local s3express_new = s3express.new as function({string:any}): {string:any}
    local provider = s3express_new({
        s3_client = self,
        base_credentials_resolver = (cfg.identity_resolvers as {string:any})["aws_credentials"],
    })
    local resolve_fn = provider.resolve as function({string:any}, any): any, any
    local ir = cfg.identity_resolvers as {string:any}
    ir["s3express_credentials"] = function(): any, any
        local bucket = cfg._s3express_bucket
        if not bucket then
            return nil, { type = "sdk", code = "S3ExpressError", message = "no bucket in context for S3Express" }
        end
        return resolve_fn(provider, bucket)
    end
end

return M
