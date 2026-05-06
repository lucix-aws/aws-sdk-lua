-- S3Express config resolve/finalize.
-- resolve() registers the auth scheme (pre-construction).
-- finalize() wires the identity resolver with the client reference (post-construction).

local s3express_signer = require("smithy.s3express_signer")
local s3express = require("aws.s3express")

local M = {}

local S3EXPRESS_SCHEME_ID = "com.amazonaws.s3#sigv4express"

function M.resolve(cfg)
    if cfg.disable_s3_express_session_auth then return end

    cfg.auth_schemes[S3EXPRESS_SCHEME_ID] = {
        scheme_id = S3EXPRESS_SCHEME_ID,
        identity_type = "s3express_credentials",
        signer = s3express_signer.sign,
        identity_resolver = function(self, identity_resolvers)
            return identity_resolvers[self.identity_type]
        end,
    }
end

function M.finalize(cfg, self)
    if cfg.disable_s3_express_session_auth then return end

    local provider = s3express.new({
        s3_client = self,
        base_credentials_resolver = cfg.identity_resolvers["aws_credentials"],
    })
    cfg.identity_resolvers["s3express_credentials"] = function()
        local bucket = cfg._s3express_bucket
        if not bucket then
            return nil, { type = "sdk", code = "S3ExpressError", message = "no bucket in context for S3Express" }
        end
        return provider.resolve(bucket)
    end
end

return M
