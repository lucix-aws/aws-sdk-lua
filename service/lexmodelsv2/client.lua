local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("lexmodelsv2.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("lexmodelsv2.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "LexModelBuildingServiceV2"
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

function Client:batchCreateCustomVocabularyItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateCustomVocabularyItem",
        input_schema = schemas.BatchCreateCustomVocabularyItemInput,
        output_schema = schemas.BatchCreateCustomVocabularyItemOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchcreate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteCustomVocabularyItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteCustomVocabularyItem",
        input_schema = schemas.BatchDeleteCustomVocabularyItemInput,
        output_schema = schemas.BatchDeleteCustomVocabularyItemOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchdelete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateCustomVocabularyItem(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateCustomVocabularyItem",
        input_schema = schemas.BatchUpdateCustomVocabularyItemInput,
        output_schema = schemas.BatchUpdateCustomVocabularyItemOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/batchupdate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:buildBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "BuildBotLocale",
        input_schema = schemas.BuildBotLocaleInput,
        output_schema = schemas.BuildBotLocaleOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBot(input, options)
    return self:invokeOperation(input, {
        name = "CreateBot",
        input_schema = schemas.CreateBotInput,
        output_schema = schemas.CreateBotOutput,
        http_method = "PUT",
        http_path = "/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotAlias",
        input_schema = schemas.CreateBotAliasInput,
        output_schema = schemas.CreateBotAliasOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botaliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotLocale",
        input_schema = schemas.CreateBotLocaleInput,
        output_schema = schemas.CreateBotLocaleOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBotReplica(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotReplica",
        input_schema = schemas.CreateBotReplicaInput,
        output_schema = schemas.CreateBotReplicaOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/replicas",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateBotVersion",
        input_schema = schemas.CreateBotVersionInput,
        output_schema = schemas.CreateBotVersionOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createExport(input, options)
    return self:invokeOperation(input, {
        name = "CreateExport",
        input_schema = schemas.CreateExportInput,
        output_schema = schemas.CreateExportOutput,
        http_method = "PUT",
        http_path = "/exports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntent(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntent",
        input_schema = schemas.CreateIntentInput,
        output_schema = schemas.CreateIntentOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourcePolicy",
        input_schema = schemas.CreateResourcePolicyInput,
        output_schema = schemas.CreateResourcePolicyOutput,
        http_method = "POST",
        http_path = "/policy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createResourcePolicyStatement(input, options)
    return self:invokeOperation(input, {
        name = "CreateResourcePolicyStatement",
        input_schema = schemas.CreateResourcePolicyStatementInput,
        output_schema = schemas.CreateResourcePolicyStatementOutput,
        http_method = "POST",
        http_path = "/policy/{resourceArn}/statements",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSlot(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlot",
        input_schema = schemas.CreateSlotInput,
        output_schema = schemas.CreateSlotOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSlotType(input, options)
    return self:invokeOperation(input, {
        name = "CreateSlotType",
        input_schema = schemas.CreateSlotTypeInput,
        output_schema = schemas.CreateSlotTypeOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTestSetDiscrepancyReport(input, options)
    return self:invokeOperation(input, {
        name = "CreateTestSetDiscrepancyReport",
        input_schema = schemas.CreateTestSetDiscrepancyReportInput,
        output_schema = schemas.CreateTestSetDiscrepancyReportOutput,
        http_method = "POST",
        http_path = "/testsets/{testSetId}/testsetdiscrepancy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUploadUrl(input, options)
    return self:invokeOperation(input, {
        name = "CreateUploadUrl",
        input_schema = schemas.CreateUploadUrlInput,
        output_schema = schemas.CreateUploadUrlOutput,
        http_method = "POST",
        http_path = "/createuploadurl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBot",
        input_schema = schemas.DeleteBotInput,
        output_schema = schemas.DeleteBotOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotAlias",
        input_schema = schemas.DeleteBotAliasInput,
        output_schema = schemas.DeleteBotAliasOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botaliases/{botAliasId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotAnalyzerRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotAnalyzerRecommendation",
        input_schema = schemas.DeleteBotAnalyzerRecommendationInput,
        output_schema = schemas.DeleteBotAnalyzerRecommendationOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botanalyzer/{botAnalyzerRequestId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotLocale",
        input_schema = schemas.DeleteBotLocaleInput,
        output_schema = schemas.DeleteBotLocaleOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotReplica(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotReplica",
        input_schema = schemas.DeleteBotReplicaInput,
        output_schema = schemas.DeleteBotReplicaOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/replicas/{replicaRegion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteBotVersion",
        input_schema = schemas.DeleteBotVersionInput,
        output_schema = schemas.DeleteBotVersionOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomVocabulary",
        input_schema = schemas.DeleteCustomVocabularyInput,
        output_schema = schemas.DeleteCustomVocabularyOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteExport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteExport",
        input_schema = schemas.DeleteExportInput,
        output_schema = schemas.DeleteExportOutput,
        http_method = "DELETE",
        http_path = "/exports/{exportId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteImport(input, options)
    return self:invokeOperation(input, {
        name = "DeleteImport",
        input_schema = schemas.DeleteImportInput,
        output_schema = schemas.DeleteImportOutput,
        http_method = "DELETE",
        http_path = "/imports/{importId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntent(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntent",
        input_schema = schemas.DeleteIntentInput,
        output_schema = schemas.DeleteIntentOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "DELETE",
        http_path = "/policy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicyStatement(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicyStatement",
        input_schema = schemas.DeleteResourcePolicyStatementInput,
        output_schema = schemas.DeleteResourcePolicyStatementOutput,
        http_method = "DELETE",
        http_path = "/policy/{resourceArn}/statements/{statementId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlot",
        input_schema = schemas.DeleteSlotInput,
        output_schema = schemas.DeleteSlotOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSlotType(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSlotType",
        input_schema = schemas.DeleteSlotTypeInput,
        output_schema = schemas.DeleteSlotTypeOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTestSet(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTestSet",
        input_schema = schemas.DeleteTestSetInput,
        output_schema = schemas.DeleteTestSetOutput,
        http_method = "DELETE",
        http_path = "/testsets/{testSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUtterances(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUtterances",
        input_schema = schemas.DeleteUtterancesInput,
        output_schema = schemas.DeleteUtterancesOutput,
        http_method = "DELETE",
        http_path = "/bots/{botId}/utterances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBot",
        input_schema = schemas.DescribeBotInput,
        output_schema = schemas.DescribeBotOutput,
        http_method = "GET",
        http_path = "/bots/{botId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotAlias",
        input_schema = schemas.DescribeBotAliasInput,
        output_schema = schemas.DescribeBotAliasOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botaliases/{botAliasId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotAnalyzerRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotAnalyzerRecommendation",
        input_schema = schemas.DescribeBotAnalyzerRecommendationInput,
        output_schema = schemas.DescribeBotAnalyzerRecommendationOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botanalyzer/describe/{botAnalyzerRequestId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotLocale",
        input_schema = schemas.DescribeBotLocaleInput,
        output_schema = schemas.DescribeBotLocaleOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotRecommendation",
        input_schema = schemas.DescribeBotRecommendationInput,
        output_schema = schemas.DescribeBotRecommendationOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotReplica(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotReplica",
        input_schema = schemas.DescribeBotReplicaInput,
        output_schema = schemas.DescribeBotReplicaOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/replicas/{replicaRegion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotResourceGeneration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotResourceGeneration",
        input_schema = schemas.DescribeBotResourceGenerationInput,
        output_schema = schemas.DescribeBotResourceGenerationOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations/{generationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeBotVersion(input, options)
    return self:invokeOperation(input, {
        name = "DescribeBotVersion",
        input_schema = schemas.DescribeBotVersionInput,
        output_schema = schemas.DescribeBotVersionOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomVocabularyMetadata(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomVocabularyMetadata",
        input_schema = schemas.DescribeCustomVocabularyMetadataInput,
        output_schema = schemas.DescribeCustomVocabularyMetadataOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeExport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeExport",
        input_schema = schemas.DescribeExportInput,
        output_schema = schemas.DescribeExportOutput,
        http_method = "GET",
        http_path = "/exports/{exportId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeImport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeImport",
        input_schema = schemas.DescribeImportInput,
        output_schema = schemas.DescribeImportOutput,
        http_method = "GET",
        http_path = "/imports/{importId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIntent(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIntent",
        input_schema = schemas.DescribeIntentInput,
        output_schema = schemas.DescribeIntentOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResourcePolicy",
        input_schema = schemas.DescribeResourcePolicyInput,
        output_schema = schemas.DescribeResourcePolicyOutput,
        http_method = "GET",
        http_path = "/policy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSlot(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlot",
        input_schema = schemas.DescribeSlotInput,
        output_schema = schemas.DescribeSlotOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSlotType(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSlotType",
        input_schema = schemas.DescribeSlotTypeInput,
        output_schema = schemas.DescribeSlotTypeOutput,
        http_method = "GET",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTestExecution(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestExecution",
        input_schema = schemas.DescribeTestExecutionInput,
        output_schema = schemas.DescribeTestExecutionOutput,
        http_method = "GET",
        http_path = "/testexecutions/{testExecutionId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTestSet(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestSet",
        input_schema = schemas.DescribeTestSetInput,
        output_schema = schemas.DescribeTestSetOutput,
        http_method = "GET",
        http_path = "/testsets/{testSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTestSetDiscrepancyReport(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestSetDiscrepancyReport",
        input_schema = schemas.DescribeTestSetDiscrepancyReportInput,
        output_schema = schemas.DescribeTestSetDiscrepancyReportOutput,
        http_method = "GET",
        http_path = "/testsetdiscrepancy/{testSetDiscrepancyReportId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTestSetGeneration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestSetGeneration",
        input_schema = schemas.DescribeTestSetGenerationInput,
        output_schema = schemas.DescribeTestSetGenerationOutput,
        http_method = "GET",
        http_path = "/testsetgenerations/{testSetGenerationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:generateBotElement(input, options)
    return self:invokeOperation(input, {
        name = "GenerateBotElement",
        input_schema = schemas.GenerateBotElementInput,
        output_schema = schemas.GenerateBotElementOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTestExecutionArtifactsUrl(input, options)
    return self:invokeOperation(input, {
        name = "GetTestExecutionArtifactsUrl",
        input_schema = schemas.GetTestExecutionArtifactsUrlInput,
        output_schema = schemas.GetTestExecutionArtifactsUrlOutput,
        http_method = "GET",
        http_path = "/testexecutions/{testExecutionId}/artifacturl",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAggregatedUtterances(input, options)
    return self:invokeOperation(input, {
        name = "ListAggregatedUtterances",
        input_schema = schemas.ListAggregatedUtterancesInput,
        output_schema = schemas.ListAggregatedUtterancesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/aggregatedutterances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListBotAliases",
        input_schema = schemas.ListBotAliasesInput,
        output_schema = schemas.ListBotAliasesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botaliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotAliasReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListBotAliasReplicas",
        input_schema = schemas.ListBotAliasReplicasInput,
        output_schema = schemas.ListBotAliasReplicasOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/replicas/{replicaRegion}/botaliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotAnalyzerHistory(input, options)
    return self:invokeOperation(input, {
        name = "ListBotAnalyzerHistory",
        input_schema = schemas.ListBotAnalyzerHistoryInput,
        output_schema = schemas.ListBotAnalyzerHistoryOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botanalyzer/history",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotLocales(input, options)
    return self:invokeOperation(input, {
        name = "ListBotLocales",
        input_schema = schemas.ListBotLocalesInput,
        output_schema = schemas.ListBotLocalesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListBotRecommendations",
        input_schema = schemas.ListBotRecommendationsInput,
        output_schema = schemas.ListBotRecommendationsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListBotReplicas",
        input_schema = schemas.ListBotReplicasInput,
        output_schema = schemas.ListBotReplicasOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/replicas",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotResourceGenerations(input, options)
    return self:invokeOperation(input, {
        name = "ListBotResourceGenerations",
        input_schema = schemas.ListBotResourceGenerationsInput,
        output_schema = schemas.ListBotResourceGenerationsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/generations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBots(input, options)
    return self:invokeOperation(input, {
        name = "ListBots",
        input_schema = schemas.ListBotsInput,
        output_schema = schemas.ListBotsOutput,
        http_method = "POST",
        http_path = "/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotVersionReplicas(input, options)
    return self:invokeOperation(input, {
        name = "ListBotVersionReplicas",
        input_schema = schemas.ListBotVersionReplicasInput,
        output_schema = schemas.ListBotVersionReplicasOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/replicas/{replicaRegion}/botversions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBotVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListBotVersions",
        input_schema = schemas.ListBotVersionsInput,
        output_schema = schemas.ListBotVersionsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuiltInIntents(input, options)
    return self:invokeOperation(input, {
        name = "ListBuiltInIntents",
        input_schema = schemas.ListBuiltInIntentsInput,
        output_schema = schemas.ListBuiltInIntentsOutput,
        http_method = "POST",
        http_path = "/builtins/locales/{localeId}/intents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listBuiltInSlotTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListBuiltInSlotTypes",
        input_schema = schemas.ListBuiltInSlotTypesInput,
        output_schema = schemas.ListBuiltInSlotTypesOutput,
        http_method = "POST",
        http_path = "/builtins/locales/{localeId}/slottypes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listCustomVocabularyItems(input, options)
    return self:invokeOperation(input, {
        name = "ListCustomVocabularyItems",
        input_schema = schemas.ListCustomVocabularyItemsInput,
        output_schema = schemas.ListCustomVocabularyItemsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/customvocabulary/DEFAULT/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listExports(input, options)
    return self:invokeOperation(input, {
        name = "ListExports",
        input_schema = schemas.ListExportsInput,
        output_schema = schemas.ListExportsOutput,
        http_method = "POST",
        http_path = "/exports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listImports(input, options)
    return self:invokeOperation(input, {
        name = "ListImports",
        input_schema = schemas.ListImportsInput,
        output_schema = schemas.ListImportsOutput,
        http_method = "POST",
        http_path = "/imports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntentMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListIntentMetrics",
        input_schema = schemas.ListIntentMetricsInput,
        output_schema = schemas.ListIntentMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/intentmetrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntentPaths(input, options)
    return self:invokeOperation(input, {
        name = "ListIntentPaths",
        input_schema = schemas.ListIntentPathsInput,
        output_schema = schemas.ListIntentPathsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/intentpaths",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntents(input, options)
    return self:invokeOperation(input, {
        name = "ListIntents",
        input_schema = schemas.ListIntentsInput,
        output_schema = schemas.ListIntentsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntentStageMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListIntentStageMetrics",
        input_schema = schemas.ListIntentStageMetricsInput,
        output_schema = schemas.ListIntentStageMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/intentstagemetrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendedIntents(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendedIntents",
        input_schema = schemas.ListRecommendedIntentsInput,
        output_schema = schemas.ListRecommendedIntentsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/intents",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessionAnalyticsData(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionAnalyticsData",
        input_schema = schemas.ListSessionAnalyticsDataInput,
        output_schema = schemas.ListSessionAnalyticsDataOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/sessions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSessionMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListSessionMetrics",
        input_schema = schemas.ListSessionMetricsInput,
        output_schema = schemas.ListSessionMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/sessionmetrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSlots(input, options)
    return self:invokeOperation(input, {
        name = "ListSlots",
        input_schema = schemas.ListSlotsInput,
        output_schema = schemas.ListSlotsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSlotTypes(input, options)
    return self:invokeOperation(input, {
        name = "ListSlotTypes",
        input_schema = schemas.ListSlotTypesInput,
        output_schema = schemas.ListSlotTypesOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes",
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
        http_method = "GET",
        http_path = "/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestExecutionResultItems(input, options)
    return self:invokeOperation(input, {
        name = "ListTestExecutionResultItems",
        input_schema = schemas.ListTestExecutionResultItemsInput,
        output_schema = schemas.ListTestExecutionResultItemsOutput,
        http_method = "POST",
        http_path = "/testexecutions/{testExecutionId}/results",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListTestExecutions",
        input_schema = schemas.ListTestExecutionsInput,
        output_schema = schemas.ListTestExecutionsOutput,
        http_method = "POST",
        http_path = "/testexecutions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestSetRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListTestSetRecords",
        input_schema = schemas.ListTestSetRecordsInput,
        output_schema = schemas.ListTestSetRecordsOutput,
        http_method = "POST",
        http_path = "/testsets/{testSetId}/records",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestSets(input, options)
    return self:invokeOperation(input, {
        name = "ListTestSets",
        input_schema = schemas.ListTestSetsInput,
        output_schema = schemas.ListTestSetsOutput,
        http_method = "POST",
        http_path = "/testsets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUtteranceAnalyticsData(input, options)
    return self:invokeOperation(input, {
        name = "ListUtteranceAnalyticsData",
        input_schema = schemas.ListUtteranceAnalyticsDataInput,
        output_schema = schemas.ListUtteranceAnalyticsDataOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/utterances",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUtteranceMetrics(input, options)
    return self:invokeOperation(input, {
        name = "ListUtteranceMetrics",
        input_schema = schemas.ListUtteranceMetricsInput,
        output_schema = schemas.ListUtteranceMetricsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/analytics/utterancemetrics",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAssociatedTranscripts(input, options)
    return self:invokeOperation(input, {
        name = "SearchAssociatedTranscripts",
        input_schema = schemas.SearchAssociatedTranscriptsInput,
        output_schema = schemas.SearchAssociatedTranscriptsOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/associatedtranscripts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBotAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "StartBotAnalyzer",
        input_schema = schemas.StartBotAnalyzerInput,
        output_schema = schemas.StartBotAnalyzerOutput,
        http_method = "POST",
        http_path = "/bots/{botId}/botanalyzer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "StartBotRecommendation",
        input_schema = schemas.StartBotRecommendationInput,
        output_schema = schemas.StartBotRecommendationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startBotResourceGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartBotResourceGeneration",
        input_schema = schemas.StartBotResourceGenerationInput,
        output_schema = schemas.StartBotResourceGenerationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/startgeneration",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startImport(input, options)
    return self:invokeOperation(input, {
        name = "StartImport",
        input_schema = schemas.StartImportInput,
        output_schema = schemas.StartImportOutput,
        http_method = "PUT",
        http_path = "/imports",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTestExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartTestExecution",
        input_schema = schemas.StartTestExecutionInput,
        output_schema = schemas.StartTestExecutionOutput,
        http_method = "POST",
        http_path = "/testsets/{testSetId}/testexecutions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTestSetGeneration(input, options)
    return self:invokeOperation(input, {
        name = "StartTestSetGeneration",
        input_schema = schemas.StartTestSetGenerationInput,
        output_schema = schemas.StartTestSetGenerationOutput,
        http_method = "PUT",
        http_path = "/testsetgenerations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBotAnalyzer(input, options)
    return self:invokeOperation(input, {
        name = "StopBotAnalyzer",
        input_schema = schemas.StopBotAnalyzerInput,
        output_schema = schemas.StopBotAnalyzerOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botanalyzer/{botAnalyzerRequestId}/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "StopBotRecommendation",
        input_schema = schemas.StopBotRecommendationInput,
        output_schema = schemas.StopBotRecommendationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}/stopbotrecommendation",
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
        http_path = "/tags/{resourceARN}",
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
        http_method = "DELETE",
        http_path = "/tags/{resourceARN}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBot",
        input_schema = schemas.UpdateBotInput,
        output_schema = schemas.UpdateBotOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBotAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBotAlias",
        input_schema = schemas.UpdateBotAliasInput,
        output_schema = schemas.UpdateBotAliasOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botaliases/{botAliasId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBotLocale(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBotLocale",
        input_schema = schemas.UpdateBotLocaleInput,
        output_schema = schemas.UpdateBotLocaleOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateBotRecommendation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateBotRecommendation",
        input_schema = schemas.UpdateBotRecommendationInput,
        output_schema = schemas.UpdateBotRecommendationOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/botrecommendations/{botRecommendationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateExport(input, options)
    return self:invokeOperation(input, {
        name = "UpdateExport",
        input_schema = schemas.UpdateExportInput,
        output_schema = schemas.UpdateExportOutput,
        http_method = "PUT",
        http_path = "/exports/{exportId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateIntent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateIntent",
        input_schema = schemas.UpdateIntentInput,
        output_schema = schemas.UpdateIntentOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateResourcePolicy",
        input_schema = schemas.UpdateResourcePolicyInput,
        output_schema = schemas.UpdateResourcePolicyOutput,
        http_method = "PUT",
        http_path = "/policy/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSlot(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSlot",
        input_schema = schemas.UpdateSlotInput,
        output_schema = schemas.UpdateSlotOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/intents/{intentId}/slots/{slotId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSlotType(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSlotType",
        input_schema = schemas.UpdateSlotTypeInput,
        output_schema = schemas.UpdateSlotTypeOutput,
        http_method = "PUT",
        http_path = "/bots/{botId}/botversions/{botVersion}/botlocales/{localeId}/slottypes/{slotTypeId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTestSet(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTestSet",
        input_schema = schemas.UpdateTestSetInput,
        output_schema = schemas.UpdateTestSetOutput,
        http_method = "PUT",
        http_path = "/testsets/{testSetId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
