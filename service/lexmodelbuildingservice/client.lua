local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lexmodelbuildingservice.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local sdk_defaults = require("sdk_defaults")
local types = require("lexmodelbuildingservice.types")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AWSDeepSenseModelBuildingService"
    if not cfg.protocol then
        cfg.protocol = restjson_protocol.new()
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "lex", signing_region = cfg.region } }
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

function Client:createBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotVersion",
        input_schema = types.CreateBotVersionInput,
        output_schema = types.CreateBotVersionOutput,
        http_method = "POST",
        http_path = "/bots/{name}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntentVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntentVersion",
        input_schema = types.CreateIntentVersionInput,
        output_schema = types.CreateIntentVersionOutput,
        http_method = "POST",
        http_path = "/intents/{name}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSlotTypeVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlotTypeVersion",
        input_schema = types.CreateSlotTypeVersionInput,
        output_schema = types.CreateSlotTypeVersionOutput,
        http_method = "POST",
        http_path = "/slottypes/{name}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBot",
        input_schema = types.DeleteBotInput,
        output_schema = types.DeleteBotOutput,
        http_method = "DELETE",
        http_path = "/bots/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotAlias",
        input_schema = types.DeleteBotAliasInput,
        output_schema = types.DeleteBotAliasOutput,
        http_method = "DELETE",
        http_path = "/bots/{botName}/aliases/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotChannelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotChannelAssociation",
        input_schema = types.DeleteBotChannelAssociationInput,
        output_schema = types.DeleteBotChannelAssociationOutput,
        http_method = "DELETE",
        http_path = "/bots/{botName}/aliases/{botAlias}/channels/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotVersion",
        input_schema = types.DeleteBotVersionInput,
        output_schema = types.DeleteBotVersionOutput,
        http_method = "DELETE",
        http_path = "/bots/{name}/versions/{version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntent",
        input_schema = types.DeleteIntentInput,
        output_schema = types.DeleteIntentOutput,
        http_method = "DELETE",
        http_path = "/intents/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntentVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntentVersion",
        input_schema = types.DeleteIntentVersionInput,
        output_schema = types.DeleteIntentVersionOutput,
        http_method = "DELETE",
        http_path = "/intents/{name}/versions/{version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlotType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlotType",
        input_schema = types.DeleteSlotTypeInput,
        output_schema = types.DeleteSlotTypeOutput,
        http_method = "DELETE",
        http_path = "/slottypes/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlotTypeVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlotTypeVersion",
        input_schema = types.DeleteSlotTypeVersionInput,
        output_schema = types.DeleteSlotTypeVersionOutput,
        http_method = "DELETE",
        http_path = "/slottypes/{name}/version/{version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUtterances(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUtterances",
        input_schema = types.DeleteUtterancesInput,
        output_schema = types.DeleteUtterancesOutput,
        http_method = "DELETE",
        http_path = "/bots/{botName}/utterances/{userId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBot(input, options)
    return self:invokeOperation(input, {
        name = "GetBot",
        input_schema = types.GetBotInput,
        output_schema = types.GetBotOutput,
        http_method = "GET",
        http_path = "/bots/{name}/versions/{versionOrAlias}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "GetBotAlias",
        input_schema = types.GetBotAliasInput,
        output_schema = types.GetBotAliasOutput,
        http_method = "GET",
        http_path = "/bots/{botName}/aliases/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBotAliases(input, options)
    return self:invokeOperation(input, {
        name = "GetBotAliases",
        input_schema = types.GetBotAliasesInput,
        output_schema = types.GetBotAliasesOutput,
        http_method = "GET",
        http_path = "/bots/{botName}/aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBotChannelAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetBotChannelAssociation",
        input_schema = types.GetBotChannelAssociationInput,
        output_schema = types.GetBotChannelAssociationOutput,
        http_method = "GET",
        http_path = "/bots/{botName}/aliases/{botAlias}/channels/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBotChannelAssociations(input, options)
    return self:invokeOperation(input, {
        name = "GetBotChannelAssociations",
        input_schema = types.GetBotChannelAssociationsInput,
        output_schema = types.GetBotChannelAssociationsOutput,
        http_method = "GET",
        http_path = "/bots/{botName}/aliases/{botAlias}/channels",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBots(input, options)
    return self:invokeOperation(input, {
        name = "GetBots",
        input_schema = types.GetBotsInput,
        output_schema = types.GetBotsOutput,
        http_method = "GET",
        http_path = "/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBotVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetBotVersions",
        input_schema = types.GetBotVersionsInput,
        output_schema = types.GetBotVersionsOutput,
        http_method = "GET",
        http_path = "/bots/{name}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBuiltinIntent(input, options)
    return self:invokeOperation(input, {
        name = "GetBuiltinIntent",
        input_schema = types.GetBuiltinIntentInput,
        output_schema = types.GetBuiltinIntentOutput,
        http_method = "GET",
        http_path = "/builtins/intents/{signature}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBuiltinIntents(input, options)
    return self:invokeOperation(input, {
        name = "GetBuiltinIntents",
        input_schema = types.GetBuiltinIntentsInput,
        output_schema = types.GetBuiltinIntentsOutput,
        http_method = "GET",
        http_path = "/builtins/intents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getBuiltinSlotTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetBuiltinSlotTypes",
        input_schema = types.GetBuiltinSlotTypesInput,
        output_schema = types.GetBuiltinSlotTypesOutput,
        http_method = "GET",
        http_path = "/builtins/slottypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getExport(input, options)
    return self:invokeOperation(input, {
        name = "GetExport",
        input_schema = types.GetExportInput,
        output_schema = types.GetExportOutput,
        http_method = "GET",
        http_path = "/exports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getImport(input, options)
    return self:invokeOperation(input, {
        name = "GetImport",
        input_schema = types.GetImportInput,
        output_schema = types.GetImportOutput,
        http_method = "GET",
        http_path = "/imports/{importId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntent(input, options)
    return self:invokeOperation(input, {
        name = "GetIntent",
        input_schema = types.GetIntentInput,
        output_schema = types.GetIntentOutput,
        http_method = "GET",
        http_path = "/intents/{name}/versions/{version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntents(input, options)
    return self:invokeOperation(input, {
        name = "GetIntents",
        input_schema = types.GetIntentsInput,
        output_schema = types.GetIntentsOutput,
        http_method = "GET",
        http_path = "/intents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIntentVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetIntentVersions",
        input_schema = types.GetIntentVersionsInput,
        output_schema = types.GetIntentVersionsOutput,
        http_method = "GET",
        http_path = "/intents/{name}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMigration(input, options)
    return self:invokeOperation(input, {
        name = "GetMigration",
        input_schema = types.GetMigrationInput,
        output_schema = types.GetMigrationOutput,
        http_method = "GET",
        http_path = "/migrations/{migrationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMigrations(input, options)
    return self:invokeOperation(input, {
        name = "GetMigrations",
        input_schema = types.GetMigrationsInput,
        output_schema = types.GetMigrationsOutput,
        http_method = "GET",
        http_path = "/migrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSlotType(input, options)
    return self:invokeOperation(input, {
        name = "GetSlotType",
        input_schema = types.GetSlotTypeInput,
        output_schema = types.GetSlotTypeOutput,
        http_method = "GET",
        http_path = "/slottypes/{name}/versions/{version}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSlotTypes(input, options)
    return self:invokeOperation(input, {
        name = "GetSlotTypes",
        input_schema = types.GetSlotTypesInput,
        output_schema = types.GetSlotTypesOutput,
        http_method = "GET",
        http_path = "/slottypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getSlotTypeVersions(input, options)
    return self:invokeOperation(input, {
        name = "GetSlotTypeVersions",
        input_schema = types.GetSlotTypeVersionsInput,
        output_schema = types.GetSlotTypeVersionsOutput,
        http_method = "GET",
        http_path = "/slottypes/{name}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getUtterancesView(input, options)
    return self:invokeOperation(input, {
        name = "GetUtterancesView",
        input_schema = types.GetUtterancesViewInput,
        output_schema = types.GetUtterancesViewOutput,
        http_method = "GET",
        http_path = "/bots/{botName}/utterances?view=aggregation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTagsForResource(input, options)
    return self:invokeOperation(input, {
        name = "ListTagsForResource",
        input_schema = types.ListTagsForResourceInput,
        output_schema = types.ListTagsForResourceOutput,
        http_method = "GET",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBot(input, options)
    return self:invokeOperation(input, {
        name = "PutBot",
        input_schema = types.PutBotInput,
        output_schema = types.PutBotOutput,
        http_method = "PUT",
        http_path = "/bots/{name}/versions/$LATEST",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "PutBotAlias",
        input_schema = types.PutBotAliasInput,
        output_schema = types.PutBotAliasOutput,
        http_method = "PUT",
        http_path = "/bots/{botName}/aliases/{name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putIntent(input, options)
    return self:invokeOperation(input, {
        name = "PutIntent",
        input_schema = types.PutIntentInput,
        output_schema = types.PutIntentOutput,
        http_method = "PUT",
        http_path = "/intents/{name}/versions/$LATEST",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putSlotType(input, options)
    return self:invokeOperation(input, {
        name = "PutSlotType",
        input_schema = types.PutSlotTypeInput,
        output_schema = types.PutSlotTypeOutput,
        http_method = "PUT",
        http_path = "/slottypes/{name}/versions/$LATEST",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImport(input, options)
    return self:invokeOperation(input, {
        name = "StartImport",
        input_schema = types.StartImportInput,
        output_schema = types.StartImportOutput,
        http_method = "POST",
        http_path = "/imports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startMigration(input, options)
    return self:invokeOperation(input, {
        name = "StartMigration",
        input_schema = types.StartMigrationInput,
        output_schema = types.StartMigrationOutput,
        http_method = "POST",
        http_path = "/migrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagResource(input, options)
    return self:invokeOperation(input, {
        name = "TagResource",
        input_schema = types.TagResourceInput,
        output_schema = types.TagResourceOutput,
        http_method = "POST",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagResource(input, options)
    return self:invokeOperation(input, {
        name = "UntagResource",
        input_schema = types.UntagResourceInput,
        output_schema = types.UntagResourceOutput,
        http_method = "DELETE",
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
