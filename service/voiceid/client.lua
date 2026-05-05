local awsjson_protocol = require("protocol.awsjson")
local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("voiceid.endpoint_rules")
local schemas = require("voiceid.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "VoiceID"
    if not cfg.protocol then
        cfg.protocol = awsjson_protocol.new({ version = "1.0", service_id = cfg.service_id })
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "voiceid", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:associateFraudster(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFraudster",
        input_schema = schemas.AssociateFraudsterInput,
        output_schema = schemas.AssociateFraudsterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDomain(input, options)
    return self:invokeOperation(input, {
        name = "CreateDomain",
        input_schema = schemas.CreateDomainInput,
        output_schema = schemas.CreateDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWatchlist(input, options)
    return self:invokeOperation(input, {
        name = "CreateWatchlist",
        input_schema = schemas.CreateWatchlistInput,
        output_schema = schemas.CreateWatchlistOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDomain(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDomain",
        input_schema = schemas.DeleteDomainInput,
        output_schema = schemas.DeleteDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteFraudster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteFraudster",
        input_schema = schemas.DeleteFraudsterInput,
        output_schema = schemas.DeleteFraudsterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSpeaker(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSpeaker",
        input_schema = schemas.DeleteSpeakerInput,
        output_schema = schemas.DeleteSpeakerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWatchlist(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWatchlist",
        input_schema = schemas.DeleteWatchlistInput,
        output_schema = schemas.DeleteWatchlistOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDomain(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDomain",
        input_schema = schemas.DescribeDomainInput,
        output_schema = schemas.DescribeDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFraudster(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFraudster",
        input_schema = schemas.DescribeFraudsterInput,
        output_schema = schemas.DescribeFraudsterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeFraudsterRegistrationJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeFraudsterRegistrationJob",
        input_schema = schemas.DescribeFraudsterRegistrationJobInput,
        output_schema = schemas.DescribeFraudsterRegistrationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpeaker(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpeaker",
        input_schema = schemas.DescribeSpeakerInput,
        output_schema = schemas.DescribeSpeakerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSpeakerEnrollmentJob(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSpeakerEnrollmentJob",
        input_schema = schemas.DescribeSpeakerEnrollmentJobInput,
        output_schema = schemas.DescribeSpeakerEnrollmentJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWatchlist(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWatchlist",
        input_schema = schemas.DescribeWatchlistInput,
        output_schema = schemas.DescribeWatchlistOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFraudster(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFraudster",
        input_schema = schemas.DisassociateFraudsterInput,
        output_schema = schemas.DisassociateFraudsterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluateSession(input, options)
    return self:invokeOperation(input, {
        name = "EvaluateSession",
        input_schema = schemas.EvaluateSessionInput,
        output_schema = schemas.EvaluateSessionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDomains(input, options)
    return self:invokeOperation(input, {
        name = "ListDomains",
        input_schema = schemas.ListDomainsInput,
        output_schema = schemas.ListDomainsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFraudsterRegistrationJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListFraudsterRegistrationJobs",
        input_schema = schemas.ListFraudsterRegistrationJobsInput,
        output_schema = schemas.ListFraudsterRegistrationJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFraudsters(input, options)
    return self:invokeOperation(input, {
        name = "ListFraudsters",
        input_schema = schemas.ListFraudstersInput,
        output_schema = schemas.ListFraudstersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSpeakerEnrollmentJobs(input, options)
    return self:invokeOperation(input, {
        name = "ListSpeakerEnrollmentJobs",
        input_schema = schemas.ListSpeakerEnrollmentJobsInput,
        output_schema = schemas.ListSpeakerEnrollmentJobsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSpeakers(input, options)
    return self:invokeOperation(input, {
        name = "ListSpeakers",
        input_schema = schemas.ListSpeakersInput,
        output_schema = schemas.ListSpeakersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = schemas.ListTagsForResourceInput,
        output_schema = schemas.ListTagsForResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWatchlists(input, options)
    return self:invokeOperation(input, {
        name = "ListWatchlists",
        input_schema = schemas.ListWatchlistsInput,
        output_schema = schemas.ListWatchlistsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:optOutSpeaker(input, options)
    return self:invokeOperation(input, {
        name = "OptOutSpeaker",
        input_schema = schemas.OptOutSpeakerInput,
        output_schema = schemas.OptOutSpeakerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startFraudsterRegistrationJob(input, options)
    return self:invokeOperation(input, {
        name = "StartFraudsterRegistrationJob",
        input_schema = schemas.StartFraudsterRegistrationJobInput,
        output_schema = schemas.StartFraudsterRegistrationJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startSpeakerEnrollmentJob(input, options)
    return self:invokeOperation(input, {
        name = "StartSpeakerEnrollmentJob",
        input_schema = schemas.StartSpeakerEnrollmentJobInput,
        output_schema = schemas.StartSpeakerEnrollmentJobOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = schemas.TagResourceInput,
        output_schema = schemas.TagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = schemas.UntagResourceInput,
        output_schema = schemas.UntagResourceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDomain(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDomain",
        input_schema = schemas.UpdateDomainInput,
        output_schema = schemas.UpdateDomainOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWatchlist(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWatchlist",
        input_schema = schemas.UpdateWatchlistInput,
        output_schema = schemas.UpdateWatchlistOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
