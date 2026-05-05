local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("connect.endpoint_rules")
local restjson_protocol = require("protocol.restjson")
local schemas = require("connect.schemas")
local sdk_defaults = require("sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "AmazonConnectService"
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
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "connect", signing_region = cfg.region } }
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

function Client:activateEvaluationForm(input, options)
    return self:invokeOperation(input, {
        name = "ActivateEvaluationForm",
        input_schema = schemas.ActivateEvaluationFormInput,
        output_schema = schemas.ActivateEvaluationFormOutput,
        http_method = "POST",
        http_path = "/evaluation-forms/{InstanceId}/{EvaluationFormId}/activate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateAnalyticsDataSet(input, options)
    return self:invokeOperation(input, {
        name = "AssociateAnalyticsDataSet",
        input_schema = schemas.AssociateAnalyticsDataSetInput,
        output_schema = schemas.AssociateAnalyticsDataSetOutput,
        http_method = "PUT",
        http_path = "/analytics-data/instance/{InstanceId}/association",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateApprovedOrigin(input, options)
    return self:invokeOperation(input, {
        name = "AssociateApprovedOrigin",
        input_schema = schemas.AssociateApprovedOriginInput,
        output_schema = schemas.AssociateApprovedOriginOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/approved-origin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateBot(input, options)
    return self:invokeOperation(input, {
        name = "AssociateBot",
        input_schema = schemas.AssociateBotInput,
        output_schema = schemas.AssociateBotOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/bot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateContactWithUser(input, options)
    return self:invokeOperation(input, {
        name = "AssociateContactWithUser",
        input_schema = schemas.AssociateContactWithUserInput,
        output_schema = schemas.AssociateContactWithUserOutput,
        http_method = "POST",
        http_path = "/contacts/{InstanceId}/{ContactId}/associate-user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDefaultVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDefaultVocabulary",
        input_schema = schemas.AssociateDefaultVocabularyInput,
        output_schema = schemas.AssociateDefaultVocabularyOutput,
        http_method = "PUT",
        http_path = "/default-vocabulary/{InstanceId}/{LanguageCode}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateEmailAddressAlias(input, options)
    return self:invokeOperation(input, {
        name = "AssociateEmailAddressAlias",
        input_schema = schemas.AssociateEmailAddressAliasInput,
        output_schema = schemas.AssociateEmailAddressAliasOutput,
        http_method = "POST",
        http_path = "/email-addresses/{InstanceId}/{EmailAddressId}/associate-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateFlow(input, options)
    return self:invokeOperation(input, {
        name = "AssociateFlow",
        input_schema = schemas.AssociateFlowInput,
        output_schema = schemas.AssociateFlowOutput,
        http_method = "PUT",
        http_path = "/flow-associations/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateHoursOfOperations(input, options)
    return self:invokeOperation(input, {
        name = "AssociateHoursOfOperations",
        input_schema = schemas.AssociateHoursOfOperationsInput,
        output_schema = schemas.AssociateHoursOfOperationsOutput,
        http_method = "POST",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/associate-hours",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateInstanceStorageConfig(input, options)
    return self:invokeOperation(input, {
        name = "AssociateInstanceStorageConfig",
        input_schema = schemas.AssociateInstanceStorageConfigInput,
        output_schema = schemas.AssociateInstanceStorageConfigOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/storage-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateLambdaFunction(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLambdaFunction",
        input_schema = schemas.AssociateLambdaFunctionInput,
        output_schema = schemas.AssociateLambdaFunctionOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/lambda-function",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateLexBot(input, options)
    return self:invokeOperation(input, {
        name = "AssociateLexBot",
        input_schema = schemas.AssociateLexBotInput,
        output_schema = schemas.AssociateLexBotOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/lex-bot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associatePhoneNumberContactFlow(input, options)
    return self:invokeOperation(input, {
        name = "AssociatePhoneNumberContactFlow",
        input_schema = schemas.AssociatePhoneNumberContactFlowInput,
        output_schema = schemas.AssociatePhoneNumberContactFlowOutput,
        http_method = "PUT",
        http_path = "/phone-number/{PhoneNumberId}/contact-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateQueueEmailAddresses(input, options)
    return self:invokeOperation(input, {
        name = "AssociateQueueEmailAddresses",
        input_schema = schemas.AssociateQueueEmailAddressesInput,
        output_schema = schemas.AssociateQueueEmailAddressesOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/associate-email-addresses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateQueueQuickConnects(input, options)
    return self:invokeOperation(input, {
        name = "AssociateQueueQuickConnects",
        input_schema = schemas.AssociateQueueQuickConnectsInput,
        output_schema = schemas.AssociateQueueQuickConnectsOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/associate-quick-connects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateRoutingProfileQueues(input, options)
    return self:invokeOperation(input, {
        name = "AssociateRoutingProfileQueues",
        input_schema = schemas.AssociateRoutingProfileQueuesInput,
        output_schema = schemas.AssociateRoutingProfileQueuesOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/associate-queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSecurityKey(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSecurityKey",
        input_schema = schemas.AssociateSecurityKeyInput,
        output_schema = schemas.AssociateSecurityKeyOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/security-key",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "AssociateSecurityProfiles",
        input_schema = schemas.AssociateSecurityProfilesInput,
        output_schema = schemas.AssociateSecurityProfilesOutput,
        http_method = "POST",
        http_path = "/associate-security-profiles/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateTrafficDistributionGroupUser(input, options)
    return self:invokeOperation(input, {
        name = "AssociateTrafficDistributionGroupUser",
        input_schema = schemas.AssociateTrafficDistributionGroupUserInput,
        output_schema = schemas.AssociateTrafficDistributionGroupUserOutput,
        http_method = "PUT",
        http_path = "/traffic-distribution-group/{TrafficDistributionGroupId}/user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateUserProficiencies(input, options)
    return self:invokeOperation(input, {
        name = "AssociateUserProficiencies",
        input_schema = schemas.AssociateUserProficienciesInput,
        output_schema = schemas.AssociateUserProficienciesOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/associate-proficiencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "AssociateWorkspace",
        input_schema = schemas.AssociateWorkspaceInput,
        output_schema = schemas.AssociateWorkspaceOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/associate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchAssociateAnalyticsDataSet(input, options)
    return self:invokeOperation(input, {
        name = "BatchAssociateAnalyticsDataSet",
        input_schema = schemas.BatchAssociateAnalyticsDataSetInput,
        output_schema = schemas.BatchAssociateAnalyticsDataSetOutput,
        http_method = "PUT",
        http_path = "/analytics-data/instance/{InstanceId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchCreateDataTableValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchCreateDataTableValue",
        input_schema = schemas.BatchCreateDataTableValueInput,
        output_schema = schemas.BatchCreateDataTableValueOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/create",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteDataTableValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteDataTableValue",
        input_schema = schemas.BatchDeleteDataTableValueInput,
        output_schema = schemas.BatchDeleteDataTableValueOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/delete",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDescribeDataTableValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchDescribeDataTableValue",
        input_schema = schemas.BatchDescribeDataTableValueInput,
        output_schema = schemas.BatchDescribeDataTableValueOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/describe",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDisassociateAnalyticsDataSet(input, options)
    return self:invokeOperation(input, {
        name = "BatchDisassociateAnalyticsDataSet",
        input_schema = schemas.BatchDisassociateAnalyticsDataSetInput,
        output_schema = schemas.BatchDisassociateAnalyticsDataSetOutput,
        http_method = "POST",
        http_path = "/analytics-data/instance/{InstanceId}/associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetAttachedFileMetadata(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetAttachedFileMetadata",
        input_schema = schemas.BatchGetAttachedFileMetadataInput,
        output_schema = schemas.BatchGetAttachedFileMetadataOutput,
        http_method = "POST",
        http_path = "/attached-files/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchGetFlowAssociation(input, options)
    return self:invokeOperation(input, {
        name = "BatchGetFlowAssociation",
        input_schema = schemas.BatchGetFlowAssociationInput,
        output_schema = schemas.BatchGetFlowAssociationOutput,
        http_method = "POST",
        http_path = "/flow-associations-batch/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchPutContact(input, options)
    return self:invokeOperation(input, {
        name = "BatchPutContact",
        input_schema = schemas.BatchPutContactInput,
        output_schema = schemas.BatchPutContactOutput,
        http_method = "PUT",
        http_path = "/contact/batch/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchUpdateDataTableValue(input, options)
    return self:invokeOperation(input, {
        name = "BatchUpdateDataTableValue",
        input_schema = schemas.BatchUpdateDataTableValueInput,
        output_schema = schemas.BatchUpdateDataTableValueOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/update",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:claimPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "ClaimPhoneNumber",
        input_schema = schemas.ClaimPhoneNumberInput,
        output_schema = schemas.ClaimPhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-number/claim",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:completeAttachedFileUpload(input, options)
    return self:invokeOperation(input, {
        name = "CompleteAttachedFileUpload",
        input_schema = schemas.CompleteAttachedFileUploadInput,
        output_schema = schemas.CompleteAttachedFileUploadOutput,
        http_method = "POST",
        http_path = "/attached-files/{InstanceId}/{FileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAgentStatus(input, options)
    return self:invokeOperation(input, {
        name = "CreateAgentStatus",
        input_schema = schemas.CreateAgentStatusInput,
        output_schema = schemas.CreateAgentStatusOutput,
        http_method = "PUT",
        http_path = "/agent-status/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContact(input, options)
    return self:invokeOperation(input, {
        name = "CreateContact",
        input_schema = schemas.CreateContactInput,
        output_schema = schemas.CreateContactOutput,
        http_method = "PUT",
        http_path = "/contact/create-contact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactFlow(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactFlow",
        input_schema = schemas.CreateContactFlowInput,
        output_schema = schemas.CreateContactFlowOutput,
        http_method = "PUT",
        http_path = "/contact-flows/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactFlowModule(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactFlowModule",
        input_schema = schemas.CreateContactFlowModuleInput,
        output_schema = schemas.CreateContactFlowModuleOutput,
        http_method = "PUT",
        http_path = "/contact-flow-modules/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactFlowModuleAlias(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactFlowModuleAlias",
        input_schema = schemas.CreateContactFlowModuleAliasInput,
        output_schema = schemas.CreateContactFlowModuleAliasOutput,
        http_method = "PUT",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactFlowModuleVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactFlowModuleVersion",
        input_schema = schemas.CreateContactFlowModuleVersionInput,
        output_schema = schemas.CreateContactFlowModuleVersionOutput,
        http_method = "PUT",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createContactFlowVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateContactFlowVersion",
        input_schema = schemas.CreateContactFlowVersionInput,
        output_schema = schemas.CreateContactFlowVersionOutput,
        http_method = "PUT",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}/version",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataTable(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataTable",
        input_schema = schemas.CreateDataTableInput,
        output_schema = schemas.CreateDataTableOutput,
        http_method = "PUT",
        http_path = "/data-tables/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createDataTableAttribute(input, options)
    return self:invokeOperation(input, {
        name = "CreateDataTableAttribute",
        input_schema = schemas.CreateDataTableAttributeInput,
        output_schema = schemas.CreateDataTableAttributeOutput,
        http_method = "PUT",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEmailAddress(input, options)
    return self:invokeOperation(input, {
        name = "CreateEmailAddress",
        input_schema = schemas.CreateEmailAddressInput,
        output_schema = schemas.CreateEmailAddressOutput,
        http_method = "PUT",
        http_path = "/email-addresses/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEvaluationForm(input, options)
    return self:invokeOperation(input, {
        name = "CreateEvaluationForm",
        input_schema = schemas.CreateEvaluationFormInput,
        output_schema = schemas.CreateEvaluationFormOutput,
        http_method = "PUT",
        http_path = "/evaluation-forms/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHoursOfOperation(input, options)
    return self:invokeOperation(input, {
        name = "CreateHoursOfOperation",
        input_schema = schemas.CreateHoursOfOperationInput,
        output_schema = schemas.CreateHoursOfOperationOutput,
        http_method = "PUT",
        http_path = "/hours-of-operations/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHoursOfOperationOverride(input, options)
    return self:invokeOperation(input, {
        name = "CreateHoursOfOperationOverride",
        input_schema = schemas.CreateHoursOfOperationOverrideInput,
        output_schema = schemas.CreateHoursOfOperationOverrideOutput,
        http_method = "PUT",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createInstance(input, options)
    return self:invokeOperation(input, {
        name = "CreateInstance",
        input_schema = schemas.CreateInstanceInput,
        output_schema = schemas.CreateInstanceOutput,
        http_method = "PUT",
        http_path = "/instance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntegrationAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegrationAssociation",
        input_schema = schemas.CreateIntegrationAssociationInput,
        output_schema = schemas.CreateIntegrationAssociationOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/integration-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createNotification(input, options)
    return self:invokeOperation(input, {
        name = "CreateNotification",
        input_schema = schemas.CreateNotificationInput,
        output_schema = schemas.CreateNotificationOutput,
        http_method = "PUT",
        http_path = "/notifications/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createParticipant(input, options)
    return self:invokeOperation(input, {
        name = "CreateParticipant",
        input_schema = schemas.CreateParticipantInput,
        output_schema = schemas.CreateParticipantOutput,
        http_method = "POST",
        http_path = "/contact/create-participant",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPersistentContactAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreatePersistentContactAssociation",
        input_schema = schemas.CreatePersistentContactAssociationInput,
        output_schema = schemas.CreatePersistentContactAssociationOutput,
        http_method = "POST",
        http_path = "/contact/persistent-contact-association/{InstanceId}/{InitialContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPredefinedAttribute(input, options)
    return self:invokeOperation(input, {
        name = "CreatePredefinedAttribute",
        input_schema = schemas.CreatePredefinedAttributeInput,
        output_schema = schemas.CreatePredefinedAttributeOutput,
        http_method = "PUT",
        http_path = "/predefined-attributes/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPrompt(input, options)
    return self:invokeOperation(input, {
        name = "CreatePrompt",
        input_schema = schemas.CreatePromptInput,
        output_schema = schemas.CreatePromptOutput,
        http_method = "PUT",
        http_path = "/prompts/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createPushNotificationRegistration(input, options)
    return self:invokeOperation(input, {
        name = "CreatePushNotificationRegistration",
        input_schema = schemas.CreatePushNotificationRegistrationInput,
        output_schema = schemas.CreatePushNotificationRegistrationOutput,
        http_method = "PUT",
        http_path = "/push-notification/{InstanceId}/registrations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQueue(input, options)
    return self:invokeOperation(input, {
        name = "CreateQueue",
        input_schema = schemas.CreateQueueInput,
        output_schema = schemas.CreateQueueOutput,
        http_method = "PUT",
        http_path = "/queues/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createQuickConnect(input, options)
    return self:invokeOperation(input, {
        name = "CreateQuickConnect",
        input_schema = schemas.CreateQuickConnectInput,
        output_schema = schemas.CreateQuickConnectOutput,
        http_method = "PUT",
        http_path = "/quick-connects/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRoutingProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateRoutingProfile",
        input_schema = schemas.CreateRoutingProfileInput,
        output_schema = schemas.CreateRoutingProfileOutput,
        http_method = "PUT",
        http_path = "/routing-profiles/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRule(input, options)
    return self:invokeOperation(input, {
        name = "CreateRule",
        input_schema = schemas.CreateRuleInput,
        output_schema = schemas.CreateRuleOutput,
        http_method = "POST",
        http_path = "/rules/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateSecurityProfile",
        input_schema = schemas.CreateSecurityProfileInput,
        output_schema = schemas.CreateSecurityProfileOutput,
        http_method = "PUT",
        http_path = "/security-profiles/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTaskTemplate(input, options)
    return self:invokeOperation(input, {
        name = "CreateTaskTemplate",
        input_schema = schemas.CreateTaskTemplateInput,
        output_schema = schemas.CreateTaskTemplateOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/task/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTestCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateTestCase",
        input_schema = schemas.CreateTestCaseInput,
        output_schema = schemas.CreateTestCaseOutput,
        http_method = "PUT",
        http_path = "/test-cases/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTrafficDistributionGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateTrafficDistributionGroup",
        input_schema = schemas.CreateTrafficDistributionGroupInput,
        output_schema = schemas.CreateTrafficDistributionGroupOutput,
        http_method = "PUT",
        http_path = "/traffic-distribution-group",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUseCase(input, options)
    return self:invokeOperation(input, {
        name = "CreateUseCase",
        input_schema = schemas.CreateUseCaseInput,
        output_schema = schemas.CreateUseCaseOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUser(input, options)
    return self:invokeOperation(input, {
        name = "CreateUser",
        input_schema = schemas.CreateUserInput,
        output_schema = schemas.CreateUserOutput,
        http_method = "PUT",
        http_path = "/users/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUserHierarchyGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateUserHierarchyGroup",
        input_schema = schemas.CreateUserHierarchyGroupInput,
        output_schema = schemas.CreateUserHierarchyGroupOutput,
        http_method = "PUT",
        http_path = "/user-hierarchy-groups/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createView(input, options)
    return self:invokeOperation(input, {
        name = "CreateView",
        input_schema = schemas.CreateViewInput,
        output_schema = schemas.CreateViewOutput,
        http_method = "PUT",
        http_path = "/views/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createViewVersion(input, options)
    return self:invokeOperation(input, {
        name = "CreateViewVersion",
        input_schema = schemas.CreateViewVersionInput,
        output_schema = schemas.CreateViewVersionOutput,
        http_method = "PUT",
        http_path = "/views/{InstanceId}/{ViewId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "CreateVocabulary",
        input_schema = schemas.CreateVocabularyInput,
        output_schema = schemas.CreateVocabularyOutput,
        http_method = "POST",
        http_path = "/vocabulary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspace",
        input_schema = schemas.CreateWorkspaceInput,
        output_schema = schemas.CreateWorkspaceOutput,
        http_method = "PUT",
        http_path = "/workspaces/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createWorkspacePage(input, options)
    return self:invokeOperation(input, {
        name = "CreateWorkspacePage",
        input_schema = schemas.CreateWorkspacePageInput,
        output_schema = schemas.CreateWorkspacePageOutput,
        http_method = "PUT",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/pages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deactivateEvaluationForm(input, options)
    return self:invokeOperation(input, {
        name = "DeactivateEvaluationForm",
        input_schema = schemas.DeactivateEvaluationFormInput,
        output_schema = schemas.DeactivateEvaluationFormOutput,
        http_method = "POST",
        http_path = "/evaluation-forms/{InstanceId}/{EvaluationFormId}/deactivate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAttachedFile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAttachedFile",
        input_schema = schemas.DeleteAttachedFileInput,
        output_schema = schemas.DeleteAttachedFileOutput,
        http_method = "DELETE",
        http_path = "/attached-files/{InstanceId}/{FileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactEvaluation",
        input_schema = schemas.DeleteContactEvaluationInput,
        output_schema = schemas.DeleteContactEvaluationOutput,
        http_method = "DELETE",
        http_path = "/contact-evaluations/{InstanceId}/{EvaluationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactFlow(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactFlow",
        input_schema = schemas.DeleteContactFlowInput,
        output_schema = schemas.DeleteContactFlowOutput,
        http_method = "DELETE",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactFlowModule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactFlowModule",
        input_schema = schemas.DeleteContactFlowModuleInput,
        output_schema = schemas.DeleteContactFlowModuleOutput,
        http_method = "DELETE",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactFlowModuleAlias(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactFlowModuleAlias",
        input_schema = schemas.DeleteContactFlowModuleAliasInput,
        output_schema = schemas.DeleteContactFlowModuleAliasOutput,
        http_method = "DELETE",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias/{AliasId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactFlowModuleVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactFlowModuleVersion",
        input_schema = schemas.DeleteContactFlowModuleVersionInput,
        output_schema = schemas.DeleteContactFlowModuleVersionOutput,
        http_method = "DELETE",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/version/{ContactFlowModuleVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteContactFlowVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteContactFlowVersion",
        input_schema = schemas.DeleteContactFlowVersionInput,
        output_schema = schemas.DeleteContactFlowVersionOutput,
        http_method = "DELETE",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}/version/{ContactFlowVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataTable(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataTable",
        input_schema = schemas.DeleteDataTableInput,
        output_schema = schemas.DeleteDataTableOutput,
        http_method = "DELETE",
        http_path = "/data-tables/{InstanceId}/{DataTableId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteDataTableAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DeleteDataTableAttribute",
        input_schema = schemas.DeleteDataTableAttributeInput,
        output_schema = schemas.DeleteDataTableAttributeOutput,
        http_method = "DELETE",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/attributes/{AttributeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEmailAddress(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEmailAddress",
        input_schema = schemas.DeleteEmailAddressInput,
        output_schema = schemas.DeleteEmailAddressOutput,
        http_method = "DELETE",
        http_path = "/email-addresses/{InstanceId}/{EmailAddressId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEvaluationForm(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEvaluationForm",
        input_schema = schemas.DeleteEvaluationFormInput,
        output_schema = schemas.DeleteEvaluationFormOutput,
        http_method = "DELETE",
        http_path = "/evaluation-forms/{InstanceId}/{EvaluationFormId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHoursOfOperation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHoursOfOperation",
        input_schema = schemas.DeleteHoursOfOperationInput,
        output_schema = schemas.DeleteHoursOfOperationOutput,
        http_method = "DELETE",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHoursOfOperationOverride(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHoursOfOperationOverride",
        input_schema = schemas.DeleteHoursOfOperationOverrideInput,
        output_schema = schemas.DeleteHoursOfOperationOverrideOutput,
        http_method = "DELETE",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteInstance(input, options)
    return self:invokeOperation(input, {
        name = "DeleteInstance",
        input_schema = schemas.DeleteInstanceInput,
        output_schema = schemas.DeleteInstanceOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegrationAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegrationAssociation",
        input_schema = schemas.DeleteIntegrationAssociationInput,
        output_schema = schemas.DeleteIntegrationAssociationOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteNotification(input, options)
    return self:invokeOperation(input, {
        name = "DeleteNotification",
        input_schema = schemas.DeleteNotificationInput,
        output_schema = schemas.DeleteNotificationOutput,
        http_method = "DELETE",
        http_path = "/notifications/{InstanceId}/{NotificationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePredefinedAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DeletePredefinedAttribute",
        input_schema = schemas.DeletePredefinedAttributeInput,
        output_schema = schemas.DeletePredefinedAttributeOutput,
        http_method = "DELETE",
        http_path = "/predefined-attributes/{InstanceId}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePrompt(input, options)
    return self:invokeOperation(input, {
        name = "DeletePrompt",
        input_schema = schemas.DeletePromptInput,
        output_schema = schemas.DeletePromptOutput,
        http_method = "DELETE",
        http_path = "/prompts/{InstanceId}/{PromptId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePushNotificationRegistration(input, options)
    return self:invokeOperation(input, {
        name = "DeletePushNotificationRegistration",
        input_schema = schemas.DeletePushNotificationRegistrationInput,
        output_schema = schemas.DeletePushNotificationRegistrationOutput,
        http_method = "DELETE",
        http_path = "/push-notification/{InstanceId}/registrations/{RegistrationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQueue(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQueue",
        input_schema = schemas.DeleteQueueInput,
        output_schema = schemas.DeleteQueueOutput,
        http_method = "DELETE",
        http_path = "/queues/{InstanceId}/{QueueId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteQuickConnect(input, options)
    return self:invokeOperation(input, {
        name = "DeleteQuickConnect",
        input_schema = schemas.DeleteQuickConnectInput,
        output_schema = schemas.DeleteQuickConnectOutput,
        http_method = "DELETE",
        http_path = "/quick-connects/{InstanceId}/{QuickConnectId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRoutingProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRoutingProfile",
        input_schema = schemas.DeleteRoutingProfileInput,
        output_schema = schemas.DeleteRoutingProfileOutput,
        http_method = "DELETE",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRule",
        input_schema = schemas.DeleteRuleInput,
        output_schema = schemas.DeleteRuleOutput,
        http_method = "DELETE",
        http_path = "/rules/{InstanceId}/{RuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSecurityProfile",
        input_schema = schemas.DeleteSecurityProfileInput,
        output_schema = schemas.DeleteSecurityProfileOutput,
        http_method = "DELETE",
        http_path = "/security-profiles/{InstanceId}/{SecurityProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTaskTemplate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTaskTemplate",
        input_schema = schemas.DeleteTaskTemplateInput,
        output_schema = schemas.DeleteTaskTemplateOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/task/template/{TaskTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTestCase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTestCase",
        input_schema = schemas.DeleteTestCaseInput,
        output_schema = schemas.DeleteTestCaseOutput,
        http_method = "DELETE",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTrafficDistributionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTrafficDistributionGroup",
        input_schema = schemas.DeleteTrafficDistributionGroupInput,
        output_schema = schemas.DeleteTrafficDistributionGroupOutput,
        http_method = "DELETE",
        http_path = "/traffic-distribution-group/{TrafficDistributionGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUseCase(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUseCase",
        input_schema = schemas.DeleteUseCaseInput,
        output_schema = schemas.DeleteUseCaseOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases/{UseCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUser(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUser",
        input_schema = schemas.DeleteUserInput,
        output_schema = schemas.DeleteUserOutput,
        http_method = "DELETE",
        http_path = "/users/{InstanceId}/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUserHierarchyGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUserHierarchyGroup",
        input_schema = schemas.DeleteUserHierarchyGroupInput,
        output_schema = schemas.DeleteUserHierarchyGroupOutput,
        http_method = "DELETE",
        http_path = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteView(input, options)
    return self:invokeOperation(input, {
        name = "DeleteView",
        input_schema = schemas.DeleteViewInput,
        output_schema = schemas.DeleteViewOutput,
        http_method = "DELETE",
        http_path = "/views/{InstanceId}/{ViewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteViewVersion(input, options)
    return self:invokeOperation(input, {
        name = "DeleteViewVersion",
        input_schema = schemas.DeleteViewVersionInput,
        output_schema = schemas.DeleteViewVersionOutput,
        http_method = "DELETE",
        http_path = "/views/{InstanceId}/{ViewId}/versions/{ViewVersion}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DeleteVocabulary",
        input_schema = schemas.DeleteVocabularyInput,
        output_schema = schemas.DeleteVocabularyOutput,
        http_method = "POST",
        http_path = "/vocabulary-remove/{InstanceId}/{VocabularyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspace",
        input_schema = schemas.DeleteWorkspaceInput,
        output_schema = schemas.DeleteWorkspaceOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspaceMedia(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspaceMedia",
        input_schema = schemas.DeleteWorkspaceMediaInput,
        output_schema = schemas.DeleteWorkspaceMediaOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/media",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteWorkspacePage(input, options)
    return self:invokeOperation(input, {
        name = "DeleteWorkspacePage",
        input_schema = schemas.DeleteWorkspacePageInput,
        output_schema = schemas.DeleteWorkspacePageOutput,
        http_method = "DELETE",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/pages/{Page}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAgentStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAgentStatus",
        input_schema = schemas.DescribeAgentStatusInput,
        output_schema = schemas.DescribeAgentStatusOutput,
        http_method = "GET",
        http_path = "/agent-status/{InstanceId}/{AgentStatusId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAttachedFilesConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAttachedFilesConfiguration",
        input_schema = schemas.DescribeAttachedFilesConfigurationInput,
        output_schema = schemas.DescribeAttachedFilesConfigurationOutput,
        http_method = "GET",
        http_path = "/attached-files-configurations/{InstanceId}/{AttachmentScope}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuthenticationProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuthenticationProfile",
        input_schema = schemas.DescribeAuthenticationProfileInput,
        output_schema = schemas.DescribeAuthenticationProfileOutput,
        http_method = "GET",
        http_path = "/authentication-profiles/{InstanceId}/{AuthenticationProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContact(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContact",
        input_schema = schemas.DescribeContactInput,
        output_schema = schemas.DescribeContactOutput,
        http_method = "GET",
        http_path = "/contacts/{InstanceId}/{ContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContactEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContactEvaluation",
        input_schema = schemas.DescribeContactEvaluationInput,
        output_schema = schemas.DescribeContactEvaluationOutput,
        http_method = "GET",
        http_path = "/contact-evaluations/{InstanceId}/{EvaluationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContactFlow(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContactFlow",
        input_schema = schemas.DescribeContactFlowInput,
        output_schema = schemas.DescribeContactFlowOutput,
        http_method = "GET",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContactFlowModule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContactFlowModule",
        input_schema = schemas.DescribeContactFlowModuleInput,
        output_schema = schemas.DescribeContactFlowModuleOutput,
        http_method = "GET",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeContactFlowModuleAlias(input, options)
    return self:invokeOperation(input, {
        name = "DescribeContactFlowModuleAlias",
        input_schema = schemas.DescribeContactFlowModuleAliasInput,
        output_schema = schemas.DescribeContactFlowModuleAliasOutput,
        http_method = "GET",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias/{AliasId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataTable(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataTable",
        input_schema = schemas.DescribeDataTableInput,
        output_schema = schemas.DescribeDataTableOutput,
        http_method = "GET",
        http_path = "/data-tables/{InstanceId}/{DataTableId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataTableAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataTableAttribute",
        input_schema = schemas.DescribeDataTableAttributeInput,
        output_schema = schemas.DescribeDataTableAttributeOutput,
        http_method = "GET",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/attributes/{AttributeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEmailAddress(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEmailAddress",
        input_schema = schemas.DescribeEmailAddressInput,
        output_schema = schemas.DescribeEmailAddressOutput,
        http_method = "GET",
        http_path = "/email-addresses/{InstanceId}/{EmailAddressId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvaluationForm(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvaluationForm",
        input_schema = schemas.DescribeEvaluationFormInput,
        output_schema = schemas.DescribeEvaluationFormOutput,
        http_method = "GET",
        http_path = "/evaluation-forms/{InstanceId}/{EvaluationFormId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHoursOfOperation(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHoursOfOperation",
        input_schema = schemas.DescribeHoursOfOperationInput,
        output_schema = schemas.DescribeHoursOfOperationOutput,
        http_method = "GET",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHoursOfOperationOverride(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHoursOfOperationOverride",
        input_schema = schemas.DescribeHoursOfOperationOverrideInput,
        output_schema = schemas.DescribeHoursOfOperationOverrideOutput,
        http_method = "GET",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstance(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstance",
        input_schema = schemas.DescribeInstanceInput,
        output_schema = schemas.DescribeInstanceOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceAttribute",
        input_schema = schemas.DescribeInstanceAttributeInput,
        output_schema = schemas.DescribeInstanceAttributeOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/attribute/{AttributeType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInstanceStorageConfig(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInstanceStorageConfig",
        input_schema = schemas.DescribeInstanceStorageConfigInput,
        output_schema = schemas.DescribeInstanceStorageConfigOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/storage-config/{AssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNotification(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNotification",
        input_schema = schemas.DescribeNotificationInput,
        output_schema = schemas.DescribeNotificationOutput,
        http_method = "GET",
        http_path = "/notifications/{InstanceId}/{NotificationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "DescribePhoneNumber",
        input_schema = schemas.DescribePhoneNumberInput,
        output_schema = schemas.DescribePhoneNumberOutput,
        http_method = "GET",
        http_path = "/phone-number/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePredefinedAttribute(input, options)
    return self:invokeOperation(input, {
        name = "DescribePredefinedAttribute",
        input_schema = schemas.DescribePredefinedAttributeInput,
        output_schema = schemas.DescribePredefinedAttributeOutput,
        http_method = "GET",
        http_path = "/predefined-attributes/{InstanceId}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePrompt(input, options)
    return self:invokeOperation(input, {
        name = "DescribePrompt",
        input_schema = schemas.DescribePromptInput,
        output_schema = schemas.DescribePromptOutput,
        http_method = "GET",
        http_path = "/prompts/{InstanceId}/{PromptId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQueue(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQueue",
        input_schema = schemas.DescribeQueueInput,
        output_schema = schemas.DescribeQueueOutput,
        http_method = "GET",
        http_path = "/queues/{InstanceId}/{QueueId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeQuickConnect(input, options)
    return self:invokeOperation(input, {
        name = "DescribeQuickConnect",
        input_schema = schemas.DescribeQuickConnectInput,
        output_schema = schemas.DescribeQuickConnectOutput,
        http_method = "GET",
        http_path = "/quick-connects/{InstanceId}/{QuickConnectId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRoutingProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRoutingProfile",
        input_schema = schemas.DescribeRoutingProfileInput,
        output_schema = schemas.DescribeRoutingProfileOutput,
        http_method = "GET",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRule(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRule",
        input_schema = schemas.DescribeRuleInput,
        output_schema = schemas.DescribeRuleOutput,
        http_method = "GET",
        http_path = "/rules/{InstanceId}/{RuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSecurityProfile",
        input_schema = schemas.DescribeSecurityProfileInput,
        output_schema = schemas.DescribeSecurityProfileOutput,
        http_method = "GET",
        http_path = "/security-profiles/{InstanceId}/{SecurityProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTestCase(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTestCase",
        input_schema = schemas.DescribeTestCaseInput,
        output_schema = schemas.DescribeTestCaseOutput,
        http_method = "GET",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTrafficDistributionGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTrafficDistributionGroup",
        input_schema = schemas.DescribeTrafficDistributionGroupInput,
        output_schema = schemas.DescribeTrafficDistributionGroupOutput,
        http_method = "GET",
        http_path = "/traffic-distribution-group/{TrafficDistributionGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUser(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUser",
        input_schema = schemas.DescribeUserInput,
        output_schema = schemas.DescribeUserOutput,
        http_method = "GET",
        http_path = "/users/{InstanceId}/{UserId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUserHierarchyGroup(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserHierarchyGroup",
        input_schema = schemas.DescribeUserHierarchyGroupInput,
        output_schema = schemas.DescribeUserHierarchyGroupOutput,
        http_method = "GET",
        http_path = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUserHierarchyStructure(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUserHierarchyStructure",
        input_schema = schemas.DescribeUserHierarchyStructureInput,
        output_schema = schemas.DescribeUserHierarchyStructureOutput,
        http_method = "GET",
        http_path = "/user-hierarchy-structure/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeView(input, options)
    return self:invokeOperation(input, {
        name = "DescribeView",
        input_schema = schemas.DescribeViewInput,
        output_schema = schemas.DescribeViewOutput,
        http_method = "GET",
        http_path = "/views/{InstanceId}/{ViewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeVocabulary(input, options)
    return self:invokeOperation(input, {
        name = "DescribeVocabulary",
        input_schema = schemas.DescribeVocabularyInput,
        output_schema = schemas.DescribeVocabularyOutput,
        http_method = "GET",
        http_path = "/vocabulary/{InstanceId}/{VocabularyId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DescribeWorkspace",
        input_schema = schemas.DescribeWorkspaceInput,
        output_schema = schemas.DescribeWorkspaceOutput,
        http_method = "GET",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateAnalyticsDataSet(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateAnalyticsDataSet",
        input_schema = schemas.DisassociateAnalyticsDataSetInput,
        output_schema = schemas.DisassociateAnalyticsDataSetOutput,
        http_method = "POST",
        http_path = "/analytics-data/instance/{InstanceId}/association",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateApprovedOrigin(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateApprovedOrigin",
        input_schema = schemas.DisassociateApprovedOriginInput,
        output_schema = schemas.DisassociateApprovedOriginOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/approved-origin",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateBot(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateBot",
        input_schema = schemas.DisassociateBotInput,
        output_schema = schemas.DisassociateBotOutput,
        http_method = "POST",
        http_path = "/instance/{InstanceId}/bot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateEmailAddressAlias(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateEmailAddressAlias",
        input_schema = schemas.DisassociateEmailAddressAliasInput,
        output_schema = schemas.DisassociateEmailAddressAliasOutput,
        http_method = "POST",
        http_path = "/email-addresses/{InstanceId}/{EmailAddressId}/disassociate-alias",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateFlow(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateFlow",
        input_schema = schemas.DisassociateFlowInput,
        output_schema = schemas.DisassociateFlowOutput,
        http_method = "DELETE",
        http_path = "/flow-associations/{InstanceId}/{ResourceId}/{ResourceType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateHoursOfOperations(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateHoursOfOperations",
        input_schema = schemas.DisassociateHoursOfOperationsInput,
        output_schema = schemas.DisassociateHoursOfOperationsOutput,
        http_method = "POST",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/disassociate-hours",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateInstanceStorageConfig(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateInstanceStorageConfig",
        input_schema = schemas.DisassociateInstanceStorageConfigInput,
        output_schema = schemas.DisassociateInstanceStorageConfigOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/storage-config/{AssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateLambdaFunction(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLambdaFunction",
        input_schema = schemas.DisassociateLambdaFunctionInput,
        output_schema = schemas.DisassociateLambdaFunctionOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/lambda-function",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateLexBot(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateLexBot",
        input_schema = schemas.DisassociateLexBotInput,
        output_schema = schemas.DisassociateLexBotOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/lex-bot",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociatePhoneNumberContactFlow(input, options)
    return self:invokeOperation(input, {
        name = "DisassociatePhoneNumberContactFlow",
        input_schema = schemas.DisassociatePhoneNumberContactFlowInput,
        output_schema = schemas.DisassociatePhoneNumberContactFlowOutput,
        http_method = "DELETE",
        http_path = "/phone-number/{PhoneNumberId}/contact-flow",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateQueueEmailAddresses(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateQueueEmailAddresses",
        input_schema = schemas.DisassociateQueueEmailAddressesInput,
        output_schema = schemas.DisassociateQueueEmailAddressesOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/disassociate-email-addresses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateQueueQuickConnects(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateQueueQuickConnects",
        input_schema = schemas.DisassociateQueueQuickConnectsInput,
        output_schema = schemas.DisassociateQueueQuickConnectsOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/disassociate-quick-connects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateRoutingProfileQueues(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateRoutingProfileQueues",
        input_schema = schemas.DisassociateRoutingProfileQueuesInput,
        output_schema = schemas.DisassociateRoutingProfileQueuesOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/disassociate-queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSecurityKey(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSecurityKey",
        input_schema = schemas.DisassociateSecurityKeyInput,
        output_schema = schemas.DisassociateSecurityKeyOutput,
        http_method = "DELETE",
        http_path = "/instance/{InstanceId}/security-key/{AssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateSecurityProfiles",
        input_schema = schemas.DisassociateSecurityProfilesInput,
        output_schema = schemas.DisassociateSecurityProfilesOutput,
        http_method = "POST",
        http_path = "/disassociate-security-profiles/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateTrafficDistributionGroupUser(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateTrafficDistributionGroupUser",
        input_schema = schemas.DisassociateTrafficDistributionGroupUserInput,
        output_schema = schemas.DisassociateTrafficDistributionGroupUserOutput,
        http_method = "DELETE",
        http_path = "/traffic-distribution-group/{TrafficDistributionGroupId}/user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateUserProficiencies(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateUserProficiencies",
        input_schema = schemas.DisassociateUserProficienciesInput,
        output_schema = schemas.DisassociateUserProficienciesOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/disassociate-proficiencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateWorkspace(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateWorkspace",
        input_schema = schemas.DisassociateWorkspaceInput,
        output_schema = schemas.DisassociateWorkspaceOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/disassociate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:dismissUserContact(input, options)
    return self:invokeOperation(input, {
        name = "DismissUserContact",
        input_schema = schemas.DismissUserContactInput,
        output_schema = schemas.DismissUserContactOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/contact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:evaluateDataTableValues(input, options)
    return self:invokeOperation(input, {
        name = "EvaluateDataTableValues",
        input_schema = schemas.EvaluateDataTableValuesInput,
        output_schema = schemas.EvaluateDataTableValuesOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/evaluate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getAttachedFile(input, options)
    return self:invokeOperation(input, {
        name = "GetAttachedFile",
        input_schema = schemas.GetAttachedFileInput,
        output_schema = schemas.GetAttachedFileOutput,
        http_method = "GET",
        http_path = "/attached-files/{InstanceId}/{FileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactAttributes(input, options)
    return self:invokeOperation(input, {
        name = "GetContactAttributes",
        input_schema = schemas.GetContactAttributesInput,
        output_schema = schemas.GetContactAttributesOutput,
        http_method = "GET",
        http_path = "/contact/attributes/{InstanceId}/{InitialContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getContactMetrics(input, options)
    return self:invokeOperation(input, {
        name = "GetContactMetrics",
        input_schema = schemas.GetContactMetricsInput,
        output_schema = schemas.GetContactMetricsOutput,
        http_method = "POST",
        http_path = "/metrics/contact",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCurrentMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetCurrentMetricData",
        input_schema = schemas.GetCurrentMetricDataInput,
        output_schema = schemas.GetCurrentMetricDataOutput,
        http_method = "POST",
        http_path = "/metrics/current/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getCurrentUserData(input, options)
    return self:invokeOperation(input, {
        name = "GetCurrentUserData",
        input_schema = schemas.GetCurrentUserDataInput,
        output_schema = schemas.GetCurrentUserDataOutput,
        http_method = "POST",
        http_path = "/metrics/userdata/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getEffectiveHoursOfOperations(input, options)
    return self:invokeOperation(input, {
        name = "GetEffectiveHoursOfOperations",
        input_schema = schemas.GetEffectiveHoursOfOperationsInput,
        output_schema = schemas.GetEffectiveHoursOfOperationsOutput,
        http_method = "GET",
        http_path = "/effective-hours-of-operations/{InstanceId}/{HoursOfOperationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFederationToken(input, options)
    return self:invokeOperation(input, {
        name = "GetFederationToken",
        input_schema = schemas.GetFederationTokenInput,
        output_schema = schemas.GetFederationTokenOutput,
        http_method = "GET",
        http_path = "/user/federate/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getFlowAssociation(input, options)
    return self:invokeOperation(input, {
        name = "GetFlowAssociation",
        input_schema = schemas.GetFlowAssociationInput,
        output_schema = schemas.GetFlowAssociationOutput,
        http_method = "GET",
        http_path = "/flow-associations/{InstanceId}/{ResourceId}/{ResourceType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricData(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricData",
        input_schema = schemas.GetMetricDataInput,
        output_schema = schemas.GetMetricDataOutput,
        http_method = "POST",
        http_path = "/metrics/historical/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getMetricDataV2(input, options)
    return self:invokeOperation(input, {
        name = "GetMetricDataV2",
        input_schema = schemas.GetMetricDataV2Input,
        output_schema = schemas.GetMetricDataV2Output,
        http_method = "POST",
        http_path = "/metrics/data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getPromptFile(input, options)
    return self:invokeOperation(input, {
        name = "GetPromptFile",
        input_schema = schemas.GetPromptFileInput,
        output_schema = schemas.GetPromptFileOutput,
        http_method = "GET",
        http_path = "/prompts/{InstanceId}/{PromptId}/file",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTaskTemplate(input, options)
    return self:invokeOperation(input, {
        name = "GetTaskTemplate",
        input_schema = schemas.GetTaskTemplateInput,
        output_schema = schemas.GetTaskTemplateOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/task/template/{TaskTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTestCaseExecutionSummary(input, options)
    return self:invokeOperation(input, {
        name = "GetTestCaseExecutionSummary",
        input_schema = schemas.GetTestCaseExecutionSummaryInput,
        output_schema = schemas.GetTestCaseExecutionSummaryOutput,
        http_method = "GET",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}/{TestCaseExecutionId}/summary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getTrafficDistribution(input, options)
    return self:invokeOperation(input, {
        name = "GetTrafficDistribution",
        input_schema = schemas.GetTrafficDistributionInput,
        output_schema = schemas.GetTrafficDistributionOutput,
        http_method = "GET",
        http_path = "/traffic-distribution/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importPhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "ImportPhoneNumber",
        input_schema = schemas.ImportPhoneNumberInput,
        output_schema = schemas.ImportPhoneNumberOutput,
        http_method = "POST",
        http_path = "/phone-number/import",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:importWorkspaceMedia(input, options)
    return self:invokeOperation(input, {
        name = "ImportWorkspaceMedia",
        input_schema = schemas.ImportWorkspaceMediaInput,
        output_schema = schemas.ImportWorkspaceMediaOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/media",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAgentStatuses(input, options)
    return self:invokeOperation(input, {
        name = "ListAgentStatuses",
        input_schema = schemas.ListAgentStatusesInput,
        output_schema = schemas.ListAgentStatusesOutput,
        http_method = "GET",
        http_path = "/agent-status/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalyticsDataAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyticsDataAssociations",
        input_schema = schemas.ListAnalyticsDataAssociationsInput,
        output_schema = schemas.ListAnalyticsDataAssociationsOutput,
        http_method = "GET",
        http_path = "/analytics-data/instance/{InstanceId}/association",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAnalyticsDataLakeDataSets(input, options)
    return self:invokeOperation(input, {
        name = "ListAnalyticsDataLakeDataSets",
        input_schema = schemas.ListAnalyticsDataLakeDataSetsInput,
        output_schema = schemas.ListAnalyticsDataLakeDataSetsOutput,
        http_method = "GET",
        http_path = "/analytics-data/instance/{InstanceId}/datasets",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listApprovedOrigins(input, options)
    return self:invokeOperation(input, {
        name = "ListApprovedOrigins",
        input_schema = schemas.ListApprovedOriginsInput,
        output_schema = schemas.ListApprovedOriginsOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/approved-origins",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAssociatedContacts(input, options)
    return self:invokeOperation(input, {
        name = "ListAssociatedContacts",
        input_schema = schemas.ListAssociatedContactsInput,
        output_schema = schemas.ListAssociatedContactsOutput,
        http_method = "GET",
        http_path = "/contact/associated/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAttachedFilesConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "ListAttachedFilesConfigurations",
        input_schema = schemas.ListAttachedFilesConfigurationsInput,
        output_schema = schemas.ListAttachedFilesConfigurationsOutput,
        http_method = "GET",
        http_path = "/attached-files-configurations/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listAuthenticationProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListAuthenticationProfiles",
        input_schema = schemas.ListAuthenticationProfilesInput,
        output_schema = schemas.ListAuthenticationProfilesOutput,
        http_method = "GET",
        http_path = "/authentication-profiles-summary/{InstanceId}",
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
        http_method = "GET",
        http_path = "/instance/{InstanceId}/bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listChildHoursOfOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListChildHoursOfOperations",
        input_schema = schemas.ListChildHoursOfOperationsInput,
        output_schema = schemas.ListChildHoursOfOperationsOutput,
        http_method = "GET",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/hours",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "ListContactEvaluations",
        input_schema = schemas.ListContactEvaluationsInput,
        output_schema = schemas.ListContactEvaluationsOutput,
        http_method = "GET",
        http_path = "/contact-evaluations/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactFlowModuleAliases(input, options)
    return self:invokeOperation(input, {
        name = "ListContactFlowModuleAliases",
        input_schema = schemas.ListContactFlowModuleAliasesInput,
        output_schema = schemas.ListContactFlowModuleAliasesOutput,
        http_method = "GET",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/aliases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactFlowModules(input, options)
    return self:invokeOperation(input, {
        name = "ListContactFlowModules",
        input_schema = schemas.ListContactFlowModulesInput,
        output_schema = schemas.ListContactFlowModulesOutput,
        http_method = "GET",
        http_path = "/contact-flow-modules-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactFlowModuleVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListContactFlowModuleVersions",
        input_schema = schemas.ListContactFlowModuleVersionsInput,
        output_schema = schemas.ListContactFlowModuleVersionsOutput,
        http_method = "GET",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactFlows(input, options)
    return self:invokeOperation(input, {
        name = "ListContactFlows",
        input_schema = schemas.ListContactFlowsInput,
        output_schema = schemas.ListContactFlowsOutput,
        http_method = "GET",
        http_path = "/contact-flows-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactFlowVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListContactFlowVersions",
        input_schema = schemas.ListContactFlowVersionsInput,
        output_schema = schemas.ListContactFlowVersionsOutput,
        http_method = "GET",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listContactReferences(input, options)
    return self:invokeOperation(input, {
        name = "ListContactReferences",
        input_schema = schemas.ListContactReferencesInput,
        output_schema = schemas.ListContactReferencesOutput,
        http_method = "GET",
        http_path = "/contact/references/{InstanceId}/{ContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataTableAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListDataTableAttributes",
        input_schema = schemas.ListDataTableAttributesInput,
        output_schema = schemas.ListDataTableAttributesOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataTablePrimaryValues(input, options)
    return self:invokeOperation(input, {
        name = "ListDataTablePrimaryValues",
        input_schema = schemas.ListDataTablePrimaryValuesInput,
        output_schema = schemas.ListDataTablePrimaryValuesOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/list-primary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataTables(input, options)
    return self:invokeOperation(input, {
        name = "ListDataTables",
        input_schema = schemas.ListDataTablesInput,
        output_schema = schemas.ListDataTablesOutput,
        http_method = "GET",
        http_path = "/data-tables/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDataTableValues(input, options)
    return self:invokeOperation(input, {
        name = "ListDataTableValues",
        input_schema = schemas.ListDataTableValuesInput,
        output_schema = schemas.ListDataTableValuesOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listDefaultVocabularies(input, options)
    return self:invokeOperation(input, {
        name = "ListDefaultVocabularies",
        input_schema = schemas.ListDefaultVocabulariesInput,
        output_schema = schemas.ListDefaultVocabulariesOutput,
        http_method = "POST",
        http_path = "/default-vocabulary-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEntitySecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListEntitySecurityProfiles",
        input_schema = schemas.ListEntitySecurityProfilesInput,
        output_schema = schemas.ListEntitySecurityProfilesOutput,
        http_method = "POST",
        http_path = "/entity-security-profiles-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEvaluationForms(input, options)
    return self:invokeOperation(input, {
        name = "ListEvaluationForms",
        input_schema = schemas.ListEvaluationFormsInput,
        output_schema = schemas.ListEvaluationFormsOutput,
        http_method = "GET",
        http_path = "/evaluation-forms/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listEvaluationFormVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListEvaluationFormVersions",
        input_schema = schemas.ListEvaluationFormVersionsInput,
        output_schema = schemas.ListEvaluationFormVersionsOutput,
        http_method = "GET",
        http_path = "/evaluation-forms/{InstanceId}/{EvaluationFormId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listFlowAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListFlowAssociations",
        input_schema = schemas.ListFlowAssociationsInput,
        output_schema = schemas.ListFlowAssociationsOutput,
        http_method = "GET",
        http_path = "/flow-associations-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHoursOfOperationOverrides(input, options)
    return self:invokeOperation(input, {
        name = "ListHoursOfOperationOverrides",
        input_schema = schemas.ListHoursOfOperationOverridesInput,
        output_schema = schemas.ListHoursOfOperationOverridesOutput,
        http_method = "GET",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listHoursOfOperations(input, options)
    return self:invokeOperation(input, {
        name = "ListHoursOfOperations",
        input_schema = schemas.ListHoursOfOperationsInput,
        output_schema = schemas.ListHoursOfOperationsOutput,
        http_method = "GET",
        http_path = "/hours-of-operations-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceAttributes",
        input_schema = schemas.ListInstanceAttributesInput,
        output_schema = schemas.ListInstanceAttributesOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstances(input, options)
    return self:invokeOperation(input, {
        name = "ListInstances",
        input_schema = schemas.ListInstancesInput,
        output_schema = schemas.ListInstancesOutput,
        http_method = "GET",
        http_path = "/instance",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listInstanceStorageConfigs(input, options)
    return self:invokeOperation(input, {
        name = "ListInstanceStorageConfigs",
        input_schema = schemas.ListInstanceStorageConfigsInput,
        output_schema = schemas.ListInstanceStorageConfigsOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/storage-configs",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listIntegrationAssociations(input, options)
    return self:invokeOperation(input, {
        name = "ListIntegrationAssociations",
        input_schema = schemas.ListIntegrationAssociationsInput,
        output_schema = schemas.ListIntegrationAssociationsOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/integration-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLambdaFunctions(input, options)
    return self:invokeOperation(input, {
        name = "ListLambdaFunctions",
        input_schema = schemas.ListLambdaFunctionsInput,
        output_schema = schemas.ListLambdaFunctionsOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/lambda-functions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listLexBots(input, options)
    return self:invokeOperation(input, {
        name = "ListLexBots",
        input_schema = schemas.ListLexBotsInput,
        output_schema = schemas.ListLexBotsOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/lex-bots",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListNotifications",
        input_schema = schemas.ListNotificationsInput,
        output_schema = schemas.ListNotificationsOutput,
        http_method = "GET",
        http_path = "/notifications/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumbers",
        input_schema = schemas.ListPhoneNumbersInput,
        output_schema = schemas.ListPhoneNumbersOutput,
        http_method = "GET",
        http_path = "/phone-numbers-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPhoneNumbersV2(input, options)
    return self:invokeOperation(input, {
        name = "ListPhoneNumbersV2",
        input_schema = schemas.ListPhoneNumbersV2Input,
        output_schema = schemas.ListPhoneNumbersV2Output,
        http_method = "POST",
        http_path = "/phone-number/list",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPredefinedAttributes(input, options)
    return self:invokeOperation(input, {
        name = "ListPredefinedAttributes",
        input_schema = schemas.ListPredefinedAttributesInput,
        output_schema = schemas.ListPredefinedAttributesOutput,
        http_method = "GET",
        http_path = "/predefined-attributes/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listPrompts(input, options)
    return self:invokeOperation(input, {
        name = "ListPrompts",
        input_schema = schemas.ListPromptsInput,
        output_schema = schemas.ListPromptsOutput,
        http_method = "GET",
        http_path = "/prompts-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueEmailAddresses(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueEmailAddresses",
        input_schema = schemas.ListQueueEmailAddressesInput,
        output_schema = schemas.ListQueueEmailAddressesOutput,
        http_method = "GET",
        http_path = "/queues/{InstanceId}/{QueueId}/email-addresses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueueQuickConnects(input, options)
    return self:invokeOperation(input, {
        name = "ListQueueQuickConnects",
        input_schema = schemas.ListQueueQuickConnectsInput,
        output_schema = schemas.ListQueueQuickConnectsOutput,
        http_method = "GET",
        http_path = "/queues/{InstanceId}/{QueueId}/quick-connects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListQueues",
        input_schema = schemas.ListQueuesInput,
        output_schema = schemas.ListQueuesOutput,
        http_method = "GET",
        http_path = "/queues-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listQuickConnects(input, options)
    return self:invokeOperation(input, {
        name = "ListQuickConnects",
        input_schema = schemas.ListQuickConnectsInput,
        output_schema = schemas.ListQuickConnectsOutput,
        http_method = "GET",
        http_path = "/quick-connects/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRealtimeContactAnalysisSegmentsV2(input, options)
    return self:invokeOperation(input, {
        name = "ListRealtimeContactAnalysisSegmentsV2",
        input_schema = schemas.ListRealtimeContactAnalysisSegmentsV2Input,
        output_schema = schemas.ListRealtimeContactAnalysisSegmentsV2Output,
        http_method = "POST",
        http_path = "/contact/list-real-time-analysis-segments-v2/{InstanceId}/{ContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoutingProfileManualAssignmentQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingProfileManualAssignmentQueues",
        input_schema = schemas.ListRoutingProfileManualAssignmentQueuesInput,
        output_schema = schemas.ListRoutingProfileManualAssignmentQueuesOutput,
        http_method = "GET",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/manual-assignment-queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoutingProfileQueues(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingProfileQueues",
        input_schema = schemas.ListRoutingProfileQueuesInput,
        output_schema = schemas.ListRoutingProfileQueuesOutput,
        http_method = "GET",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRoutingProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListRoutingProfiles",
        input_schema = schemas.ListRoutingProfilesInput,
        output_schema = schemas.ListRoutingProfilesOutput,
        http_method = "GET",
        http_path = "/routing-profiles-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRules(input, options)
    return self:invokeOperation(input, {
        name = "ListRules",
        input_schema = schemas.ListRulesInput,
        output_schema = schemas.ListRulesOutput,
        http_method = "GET",
        http_path = "/rules/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityKeys(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityKeys",
        input_schema = schemas.ListSecurityKeysInput,
        output_schema = schemas.ListSecurityKeysOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/security-keys",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityProfileApplications(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfileApplications",
        input_schema = schemas.ListSecurityProfileApplicationsInput,
        output_schema = schemas.ListSecurityProfileApplicationsOutput,
        http_method = "GET",
        http_path = "/security-profiles-applications/{InstanceId}/{SecurityProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityProfileFlowModules(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfileFlowModules",
        input_schema = schemas.ListSecurityProfileFlowModulesInput,
        output_schema = schemas.ListSecurityProfileFlowModulesOutput,
        http_method = "GET",
        http_path = "/security-profiles-flow-modules/{InstanceId}/{SecurityProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityProfilePermissions(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfilePermissions",
        input_schema = schemas.ListSecurityProfilePermissionsInput,
        output_schema = schemas.ListSecurityProfilePermissionsOutput,
        http_method = "GET",
        http_path = "/security-profiles-permissions/{InstanceId}/{SecurityProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "ListSecurityProfiles",
        input_schema = schemas.ListSecurityProfilesInput,
        output_schema = schemas.ListSecurityProfilesOutput,
        http_method = "GET",
        http_path = "/security-profiles-summary/{InstanceId}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTaskTemplates(input, options)
    return self:invokeOperation(input, {
        name = "ListTaskTemplates",
        input_schema = schemas.ListTaskTemplatesInput,
        output_schema = schemas.ListTaskTemplatesOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/task/template",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestCaseExecutionRecords(input, options)
    return self:invokeOperation(input, {
        name = "ListTestCaseExecutionRecords",
        input_schema = schemas.ListTestCaseExecutionRecordsInput,
        output_schema = schemas.ListTestCaseExecutionRecordsOutput,
        http_method = "GET",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}/{TestCaseExecutionId}/records",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestCaseExecutions(input, options)
    return self:invokeOperation(input, {
        name = "ListTestCaseExecutions",
        input_schema = schemas.ListTestCaseExecutionsInput,
        output_schema = schemas.ListTestCaseExecutionsOutput,
        http_method = "GET",
        http_path = "/test-case-executions/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTestCases(input, options)
    return self:invokeOperation(input, {
        name = "ListTestCases",
        input_schema = schemas.ListTestCasesInput,
        output_schema = schemas.ListTestCasesOutput,
        http_method = "GET",
        http_path = "/test-cases-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficDistributionGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficDistributionGroups",
        input_schema = schemas.ListTrafficDistributionGroupsInput,
        output_schema = schemas.ListTrafficDistributionGroupsOutput,
        http_method = "GET",
        http_path = "/traffic-distribution-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listTrafficDistributionGroupUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListTrafficDistributionGroupUsers",
        input_schema = schemas.ListTrafficDistributionGroupUsersInput,
        output_schema = schemas.ListTrafficDistributionGroupUsersOutput,
        http_method = "GET",
        http_path = "/traffic-distribution-group/{TrafficDistributionGroupId}/user",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUseCases(input, options)
    return self:invokeOperation(input, {
        name = "ListUseCases",
        input_schema = schemas.ListUseCasesInput,
        output_schema = schemas.ListUseCasesOutput,
        http_method = "GET",
        http_path = "/instance/{InstanceId}/integration-associations/{IntegrationAssociationId}/use-cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserHierarchyGroups(input, options)
    return self:invokeOperation(input, {
        name = "ListUserHierarchyGroups",
        input_schema = schemas.ListUserHierarchyGroupsInput,
        output_schema = schemas.ListUserHierarchyGroupsOutput,
        http_method = "GET",
        http_path = "/user-hierarchy-groups-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserNotifications(input, options)
    return self:invokeOperation(input, {
        name = "ListUserNotifications",
        input_schema = schemas.ListUserNotificationsInput,
        output_schema = schemas.ListUserNotificationsOutput,
        http_method = "GET",
        http_path = "/users/{InstanceId}/{UserId}/notifications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUserProficiencies(input, options)
    return self:invokeOperation(input, {
        name = "ListUserProficiencies",
        input_schema = schemas.ListUserProficienciesInput,
        output_schema = schemas.ListUserProficienciesOutput,
        http_method = "GET",
        http_path = "/users/{InstanceId}/{UserId}/proficiencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listUsers(input, options)
    return self:invokeOperation(input, {
        name = "ListUsers",
        input_schema = schemas.ListUsersInput,
        output_schema = schemas.ListUsersOutput,
        http_method = "GET",
        http_path = "/users-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listViews(input, options)
    return self:invokeOperation(input, {
        name = "ListViews",
        input_schema = schemas.ListViewsInput,
        output_schema = schemas.ListViewsOutput,
        http_method = "GET",
        http_path = "/views/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listViewVersions(input, options)
    return self:invokeOperation(input, {
        name = "ListViewVersions",
        input_schema = schemas.ListViewVersionsInput,
        output_schema = schemas.ListViewVersionsOutput,
        http_method = "GET",
        http_path = "/views/{InstanceId}/{ViewId}/versions",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkspaceMedia(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaceMedia",
        input_schema = schemas.ListWorkspaceMediaInput,
        output_schema = schemas.ListWorkspaceMediaOutput,
        http_method = "GET",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/media",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkspacePages(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspacePages",
        input_schema = schemas.ListWorkspacePagesInput,
        output_schema = schemas.ListWorkspacePagesOutput,
        http_method = "GET",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/pages",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "ListWorkspaces",
        input_schema = schemas.ListWorkspacesInput,
        output_schema = schemas.ListWorkspacesOutput,
        http_method = "GET",
        http_path = "/workspaces/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:monitorContact(input, options)
    return self:invokeOperation(input, {
        name = "MonitorContact",
        input_schema = schemas.MonitorContactInput,
        output_schema = schemas.MonitorContactOutput,
        http_method = "POST",
        http_path = "/contact/monitor",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pauseContact(input, options)
    return self:invokeOperation(input, {
        name = "PauseContact",
        input_schema = schemas.PauseContactInput,
        output_schema = schemas.PauseContactOutput,
        http_method = "POST",
        http_path = "/contact/pause",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putUserStatus(input, options)
    return self:invokeOperation(input, {
        name = "PutUserStatus",
        input_schema = schemas.PutUserStatusInput,
        output_schema = schemas.PutUserStatusOutput,
        http_method = "PUT",
        http_path = "/users/{InstanceId}/{UserId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:releasePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "ReleasePhoneNumber",
        input_schema = schemas.ReleasePhoneNumberInput,
        output_schema = schemas.ReleasePhoneNumberOutput,
        http_method = "DELETE",
        http_path = "/phone-number/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:replicateInstance(input, options)
    return self:invokeOperation(input, {
        name = "ReplicateInstance",
        input_schema = schemas.ReplicateInstanceInput,
        output_schema = schemas.ReplicateInstanceOutput,
        http_method = "POST",
        http_path = "/instance/{InstanceId}/replicate",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeContact(input, options)
    return self:invokeOperation(input, {
        name = "ResumeContact",
        input_schema = schemas.ResumeContactInput,
        output_schema = schemas.ResumeContactOutput,
        http_method = "POST",
        http_path = "/contact/resume",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeContactRecording(input, options)
    return self:invokeOperation(input, {
        name = "ResumeContactRecording",
        input_schema = schemas.ResumeContactRecordingInput,
        output_schema = schemas.ResumeContactRecordingOutput,
        http_method = "POST",
        http_path = "/contact/resume-recording",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAgentStatuses(input, options)
    return self:invokeOperation(input, {
        name = "SearchAgentStatuses",
        input_schema = schemas.SearchAgentStatusesInput,
        output_schema = schemas.SearchAgentStatusesOutput,
        http_method = "POST",
        http_path = "/search-agent-statuses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchAvailablePhoneNumbers(input, options)
    return self:invokeOperation(input, {
        name = "SearchAvailablePhoneNumbers",
        input_schema = schemas.SearchAvailablePhoneNumbersInput,
        output_schema = schemas.SearchAvailablePhoneNumbersOutput,
        http_method = "POST",
        http_path = "/phone-number/search-available",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchContactEvaluations(input, options)
    return self:invokeOperation(input, {
        name = "SearchContactEvaluations",
        input_schema = schemas.SearchContactEvaluationsInput,
        output_schema = schemas.SearchContactEvaluationsOutput,
        http_method = "POST",
        http_path = "/search-contact-evaluations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchContactFlowModules(input, options)
    return self:invokeOperation(input, {
        name = "SearchContactFlowModules",
        input_schema = schemas.SearchContactFlowModulesInput,
        output_schema = schemas.SearchContactFlowModulesOutput,
        http_method = "POST",
        http_path = "/search-contact-flow-modules",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchContactFlows(input, options)
    return self:invokeOperation(input, {
        name = "SearchContactFlows",
        input_schema = schemas.SearchContactFlowsInput,
        output_schema = schemas.SearchContactFlowsOutput,
        http_method = "POST",
        http_path = "/search-contact-flows",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchContacts(input, options)
    return self:invokeOperation(input, {
        name = "SearchContacts",
        input_schema = schemas.SearchContactsInput,
        output_schema = schemas.SearchContactsOutput,
        http_method = "POST",
        http_path = "/search-contacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchDataTables(input, options)
    return self:invokeOperation(input, {
        name = "SearchDataTables",
        input_schema = schemas.SearchDataTablesInput,
        output_schema = schemas.SearchDataTablesOutput,
        http_method = "POST",
        http_path = "/search-data-tables",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchEmailAddresses(input, options)
    return self:invokeOperation(input, {
        name = "SearchEmailAddresses",
        input_schema = schemas.SearchEmailAddressesInput,
        output_schema = schemas.SearchEmailAddressesOutput,
        http_method = "POST",
        http_path = "/search-email-addresses",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchEvaluationForms(input, options)
    return self:invokeOperation(input, {
        name = "SearchEvaluationForms",
        input_schema = schemas.SearchEvaluationFormsInput,
        output_schema = schemas.SearchEvaluationFormsOutput,
        http_method = "POST",
        http_path = "/search-evaluation-forms",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchHoursOfOperationOverrides(input, options)
    return self:invokeOperation(input, {
        name = "SearchHoursOfOperationOverrides",
        input_schema = schemas.SearchHoursOfOperationOverridesInput,
        output_schema = schemas.SearchHoursOfOperationOverridesOutput,
        http_method = "POST",
        http_path = "/search-hours-of-operation-overrides",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchHoursOfOperations(input, options)
    return self:invokeOperation(input, {
        name = "SearchHoursOfOperations",
        input_schema = schemas.SearchHoursOfOperationsInput,
        output_schema = schemas.SearchHoursOfOperationsOutput,
        http_method = "POST",
        http_path = "/search-hours-of-operations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchNotifications(input, options)
    return self:invokeOperation(input, {
        name = "SearchNotifications",
        input_schema = schemas.SearchNotificationsInput,
        output_schema = schemas.SearchNotificationsOutput,
        http_method = "POST",
        http_path = "/search-notifications",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchPredefinedAttributes(input, options)
    return self:invokeOperation(input, {
        name = "SearchPredefinedAttributes",
        input_schema = schemas.SearchPredefinedAttributesInput,
        output_schema = schemas.SearchPredefinedAttributesOutput,
        http_method = "POST",
        http_path = "/search-predefined-attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchPrompts(input, options)
    return self:invokeOperation(input, {
        name = "SearchPrompts",
        input_schema = schemas.SearchPromptsInput,
        output_schema = schemas.SearchPromptsOutput,
        http_method = "POST",
        http_path = "/search-prompts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchQueues(input, options)
    return self:invokeOperation(input, {
        name = "SearchQueues",
        input_schema = schemas.SearchQueuesInput,
        output_schema = schemas.SearchQueuesOutput,
        http_method = "POST",
        http_path = "/search-queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchQuickConnects(input, options)
    return self:invokeOperation(input, {
        name = "SearchQuickConnects",
        input_schema = schemas.SearchQuickConnectsInput,
        output_schema = schemas.SearchQuickConnectsOutput,
        http_method = "POST",
        http_path = "/search-quick-connects",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchResourceTags(input, options)
    return self:invokeOperation(input, {
        name = "SearchResourceTags",
        input_schema = schemas.SearchResourceTagsInput,
        output_schema = schemas.SearchResourceTagsOutput,
        http_method = "POST",
        http_path = "/search-resource-tags",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchRoutingProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchRoutingProfiles",
        input_schema = schemas.SearchRoutingProfilesInput,
        output_schema = schemas.SearchRoutingProfilesOutput,
        http_method = "POST",
        http_path = "/search-routing-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "SearchSecurityProfiles",
        input_schema = schemas.SearchSecurityProfilesInput,
        output_schema = schemas.SearchSecurityProfilesOutput,
        http_method = "POST",
        http_path = "/search-security-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchTestCases(input, options)
    return self:invokeOperation(input, {
        name = "SearchTestCases",
        input_schema = schemas.SearchTestCasesInput,
        output_schema = schemas.SearchTestCasesOutput,
        http_method = "POST",
        http_path = "/search-test-cases",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchUserHierarchyGroups(input, options)
    return self:invokeOperation(input, {
        name = "SearchUserHierarchyGroups",
        input_schema = schemas.SearchUserHierarchyGroupsInput,
        output_schema = schemas.SearchUserHierarchyGroupsOutput,
        http_method = "POST",
        http_path = "/search-user-hierarchy-groups",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchUsers(input, options)
    return self:invokeOperation(input, {
        name = "SearchUsers",
        input_schema = schemas.SearchUsersInput,
        output_schema = schemas.SearchUsersOutput,
        http_method = "POST",
        http_path = "/search-users",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchViews(input, options)
    return self:invokeOperation(input, {
        name = "SearchViews",
        input_schema = schemas.SearchViewsInput,
        output_schema = schemas.SearchViewsOutput,
        http_method = "POST",
        http_path = "/search-views",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchVocabularies(input, options)
    return self:invokeOperation(input, {
        name = "SearchVocabularies",
        input_schema = schemas.SearchVocabulariesInput,
        output_schema = schemas.SearchVocabulariesOutput,
        http_method = "POST",
        http_path = "/vocabulary-summary/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchWorkspaceAssociations(input, options)
    return self:invokeOperation(input, {
        name = "SearchWorkspaceAssociations",
        input_schema = schemas.SearchWorkspaceAssociationsInput,
        output_schema = schemas.SearchWorkspaceAssociationsOutput,
        http_method = "POST",
        http_path = "/search-workspace-associations",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:searchWorkspaces(input, options)
    return self:invokeOperation(input, {
        name = "SearchWorkspaces",
        input_schema = schemas.SearchWorkspacesInput,
        output_schema = schemas.SearchWorkspacesOutput,
        http_method = "POST",
        http_path = "/search-workspaces",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendChatIntegrationEvent(input, options)
    return self:invokeOperation(input, {
        name = "SendChatIntegrationEvent",
        input_schema = schemas.SendChatIntegrationEventInput,
        output_schema = schemas.SendChatIntegrationEventOutput,
        http_method = "POST",
        http_path = "/chat-integration-event",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:sendOutboundEmail(input, options)
    return self:invokeOperation(input, {
        name = "SendOutboundEmail",
        input_schema = schemas.SendOutboundEmailInput,
        output_schema = schemas.SendOutboundEmailOutput,
        http_method = "PUT",
        http_path = "/instance/{InstanceId}/outbound-email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startAttachedFileUpload(input, options)
    return self:invokeOperation(input, {
        name = "StartAttachedFileUpload",
        input_schema = schemas.StartAttachedFileUploadInput,
        output_schema = schemas.StartAttachedFileUploadOutput,
        http_method = "PUT",
        http_path = "/attached-files/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startChatContact(input, options)
    return self:invokeOperation(input, {
        name = "StartChatContact",
        input_schema = schemas.StartChatContactInput,
        output_schema = schemas.StartChatContactOutput,
        http_method = "PUT",
        http_path = "/contact/chat",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startContactEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "StartContactEvaluation",
        input_schema = schemas.StartContactEvaluationInput,
        output_schema = schemas.StartContactEvaluationOutput,
        http_method = "PUT",
        http_path = "/contact-evaluations/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startContactMediaProcessing(input, options)
    return self:invokeOperation(input, {
        name = "StartContactMediaProcessing",
        input_schema = schemas.StartContactMediaProcessingInput,
        output_schema = schemas.StartContactMediaProcessingOutput,
        http_method = "POST",
        http_path = "/contact/start-contact-media-processing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startContactRecording(input, options)
    return self:invokeOperation(input, {
        name = "StartContactRecording",
        input_schema = schemas.StartContactRecordingInput,
        output_schema = schemas.StartContactRecordingOutput,
        http_method = "POST",
        http_path = "/contact/start-recording",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startContactStreaming(input, options)
    return self:invokeOperation(input, {
        name = "StartContactStreaming",
        input_schema = schemas.StartContactStreamingInput,
        output_schema = schemas.StartContactStreamingOutput,
        http_method = "POST",
        http_path = "/contact/start-streaming",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "StartEmailContact",
        input_schema = schemas.StartEmailContactInput,
        output_schema = schemas.StartEmailContactOutput,
        http_method = "PUT",
        http_path = "/contact/email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOutboundChatContact(input, options)
    return self:invokeOperation(input, {
        name = "StartOutboundChatContact",
        input_schema = schemas.StartOutboundChatContactInput,
        output_schema = schemas.StartOutboundChatContactOutput,
        http_method = "PUT",
        http_path = "/contact/outbound-chat",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOutboundEmailContact(input, options)
    return self:invokeOperation(input, {
        name = "StartOutboundEmailContact",
        input_schema = schemas.StartOutboundEmailContactInput,
        output_schema = schemas.StartOutboundEmailContactOutput,
        http_method = "PUT",
        http_path = "/contact/outbound-email",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startOutboundVoiceContact(input, options)
    return self:invokeOperation(input, {
        name = "StartOutboundVoiceContact",
        input_schema = schemas.StartOutboundVoiceContactInput,
        output_schema = schemas.StartOutboundVoiceContactOutput,
        http_method = "PUT",
        http_path = "/contact/outbound-voice",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startScreenSharing(input, options)
    return self:invokeOperation(input, {
        name = "StartScreenSharing",
        input_schema = schemas.StartScreenSharingInput,
        output_schema = schemas.StartScreenSharingOutput,
        http_method = "PUT",
        http_path = "/contact/screen-sharing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTaskContact(input, options)
    return self:invokeOperation(input, {
        name = "StartTaskContact",
        input_schema = schemas.StartTaskContactInput,
        output_schema = schemas.StartTaskContactOutput,
        http_method = "PUT",
        http_path = "/contact/task",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startTestCaseExecution(input, options)
    return self:invokeOperation(input, {
        name = "StartTestCaseExecution",
        input_schema = schemas.StartTestCaseExecutionInput,
        output_schema = schemas.StartTestCaseExecutionOutput,
        http_method = "PUT",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}/start-execution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:startWebRTCContact(input, options)
    return self:invokeOperation(input, {
        name = "StartWebRTCContact",
        input_schema = schemas.StartWebRTCContactInput,
        output_schema = schemas.StartWebRTCContactOutput,
        http_method = "PUT",
        http_path = "/contact/webrtc",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopContact(input, options)
    return self:invokeOperation(input, {
        name = "StopContact",
        input_schema = schemas.StopContactInput,
        output_schema = schemas.StopContactOutput,
        http_method = "POST",
        http_path = "/contact/stop",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopContactMediaProcessing(input, options)
    return self:invokeOperation(input, {
        name = "StopContactMediaProcessing",
        input_schema = schemas.StopContactMediaProcessingInput,
        output_schema = schemas.StopContactMediaProcessingOutput,
        http_method = "POST",
        http_path = "/contact/stop-contact-media-processing",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopContactRecording(input, options)
    return self:invokeOperation(input, {
        name = "StopContactRecording",
        input_schema = schemas.StopContactRecordingInput,
        output_schema = schemas.StopContactRecordingOutput,
        http_method = "POST",
        http_path = "/contact/stop-recording",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopContactStreaming(input, options)
    return self:invokeOperation(input, {
        name = "StopContactStreaming",
        input_schema = schemas.StopContactStreamingInput,
        output_schema = schemas.StopContactStreamingOutput,
        http_method = "POST",
        http_path = "/contact/stop-streaming",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:stopTestCaseExecution(input, options)
    return self:invokeOperation(input, {
        name = "StopTestCaseExecution",
        input_schema = schemas.StopTestCaseExecutionInput,
        output_schema = schemas.StopTestCaseExecutionOutput,
        http_method = "POST",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}/{TestCaseExecutionId}/stop-execution",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:submitContactEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "SubmitContactEvaluation",
        input_schema = schemas.SubmitContactEvaluationInput,
        output_schema = schemas.SubmitContactEvaluationOutput,
        http_method = "POST",
        http_path = "/contact-evaluations/{InstanceId}/{EvaluationId}/submit",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:suspendContactRecording(input, options)
    return self:invokeOperation(input, {
        name = "SuspendContactRecording",
        input_schema = schemas.SuspendContactRecordingInput,
        output_schema = schemas.SuspendContactRecordingOutput,
        http_method = "POST",
        http_path = "/contact/suspend-recording",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:tagContact(input, options)
    return self:invokeOperation(input, {
        name = "TagContact",
        input_schema = schemas.TagContactInput,
        output_schema = schemas.TagContactOutput,
        http_method = "POST",
        http_path = "/contact/tags",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:transferContact(input, options)
    return self:invokeOperation(input, {
        name = "TransferContact",
        input_schema = schemas.TransferContactInput,
        output_schema = schemas.TransferContactOutput,
        http_method = "POST",
        http_path = "/contact/transfer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:untagContact(input, options)
    return self:invokeOperation(input, {
        name = "UntagContact",
        input_schema = schemas.UntagContactInput,
        output_schema = schemas.UntagContactOutput,
        http_method = "DELETE",
        http_path = "/contact/tags/{InstanceId}/{ContactId}",
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
        http_path = "/tags/{resourceArn}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAgentStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAgentStatus",
        input_schema = schemas.UpdateAgentStatusInput,
        output_schema = schemas.UpdateAgentStatusOutput,
        http_method = "POST",
        http_path = "/agent-status/{InstanceId}/{AgentStatusId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAttachedFilesConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAttachedFilesConfiguration",
        input_schema = schemas.UpdateAttachedFilesConfigurationInput,
        output_schema = schemas.UpdateAttachedFilesConfigurationOutput,
        http_method = "POST",
        http_path = "/attached-files-configurations/{InstanceId}/{AttachmentScope}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateAuthenticationProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateAuthenticationProfile",
        input_schema = schemas.UpdateAuthenticationProfileInput,
        output_schema = schemas.UpdateAuthenticationProfileOutput,
        http_method = "POST",
        http_path = "/authentication-profiles/{InstanceId}/{AuthenticationProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContact(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContact",
        input_schema = schemas.UpdateContactInput,
        output_schema = schemas.UpdateContactOutput,
        http_method = "POST",
        http_path = "/contacts/{InstanceId}/{ContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactAttributes(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactAttributes",
        input_schema = schemas.UpdateContactAttributesInput,
        output_schema = schemas.UpdateContactAttributesOutput,
        http_method = "POST",
        http_path = "/contact/attributes",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactEvaluation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactEvaluation",
        input_schema = schemas.UpdateContactEvaluationInput,
        output_schema = schemas.UpdateContactEvaluationOutput,
        http_method = "POST",
        http_path = "/contact-evaluations/{InstanceId}/{EvaluationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactFlowContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactFlowContent",
        input_schema = schemas.UpdateContactFlowContentInput,
        output_schema = schemas.UpdateContactFlowContentOutput,
        http_method = "POST",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}/content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactFlowMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactFlowMetadata",
        input_schema = schemas.UpdateContactFlowMetadataInput,
        output_schema = schemas.UpdateContactFlowMetadataOutput,
        http_method = "POST",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactFlowModuleAlias(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactFlowModuleAlias",
        input_schema = schemas.UpdateContactFlowModuleAliasInput,
        output_schema = schemas.UpdateContactFlowModuleAliasOutput,
        http_method = "POST",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/alias/{AliasId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactFlowModuleContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactFlowModuleContent",
        input_schema = schemas.UpdateContactFlowModuleContentInput,
        output_schema = schemas.UpdateContactFlowModuleContentOutput,
        http_method = "POST",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/content",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactFlowModuleMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactFlowModuleMetadata",
        input_schema = schemas.UpdateContactFlowModuleMetadataInput,
        output_schema = schemas.UpdateContactFlowModuleMetadataOutput,
        http_method = "POST",
        http_path = "/contact-flow-modules/{InstanceId}/{ContactFlowModuleId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactFlowName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactFlowName",
        input_schema = schemas.UpdateContactFlowNameInput,
        output_schema = schemas.UpdateContactFlowNameOutput,
        http_method = "POST",
        http_path = "/contact-flows/{InstanceId}/{ContactFlowId}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactRoutingData(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactRoutingData",
        input_schema = schemas.UpdateContactRoutingDataInput,
        output_schema = schemas.UpdateContactRoutingDataOutput,
        http_method = "POST",
        http_path = "/contacts/{InstanceId}/{ContactId}/routing-data",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateContactSchedule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateContactSchedule",
        input_schema = schemas.UpdateContactScheduleInput,
        output_schema = schemas.UpdateContactScheduleOutput,
        http_method = "POST",
        http_path = "/contact/schedule",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataTableAttribute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataTableAttribute",
        input_schema = schemas.UpdateDataTableAttributeInput,
        output_schema = schemas.UpdateDataTableAttributeOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/attributes/{AttributeName}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataTableMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataTableMetadata",
        input_schema = schemas.UpdateDataTableMetadataInput,
        output_schema = schemas.UpdateDataTableMetadataOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateDataTablePrimaryValues(input, options)
    return self:invokeOperation(input, {
        name = "UpdateDataTablePrimaryValues",
        input_schema = schemas.UpdateDataTablePrimaryValuesInput,
        output_schema = schemas.UpdateDataTablePrimaryValuesOutput,
        http_method = "POST",
        http_path = "/data-tables/{InstanceId}/{DataTableId}/values/update-primary",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEmailAddressMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEmailAddressMetadata",
        input_schema = schemas.UpdateEmailAddressMetadataInput,
        output_schema = schemas.UpdateEmailAddressMetadataOutput,
        http_method = "POST",
        http_path = "/email-addresses/{InstanceId}/{EmailAddressId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateEvaluationForm(input, options)
    return self:invokeOperation(input, {
        name = "UpdateEvaluationForm",
        input_schema = schemas.UpdateEvaluationFormInput,
        output_schema = schemas.UpdateEvaluationFormOutput,
        http_method = "PUT",
        http_path = "/evaluation-forms/{InstanceId}/{EvaluationFormId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHoursOfOperation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHoursOfOperation",
        input_schema = schemas.UpdateHoursOfOperationInput,
        output_schema = schemas.UpdateHoursOfOperationOutput,
        http_method = "POST",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateHoursOfOperationOverride(input, options)
    return self:invokeOperation(input, {
        name = "UpdateHoursOfOperationOverride",
        input_schema = schemas.UpdateHoursOfOperationOverrideInput,
        output_schema = schemas.UpdateHoursOfOperationOverrideOutput,
        http_method = "POST",
        http_path = "/hours-of-operations/{InstanceId}/{HoursOfOperationId}/overrides/{HoursOfOperationOverrideId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstanceAttribute(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstanceAttribute",
        input_schema = schemas.UpdateInstanceAttributeInput,
        output_schema = schemas.UpdateInstanceAttributeOutput,
        http_method = "POST",
        http_path = "/instance/{InstanceId}/attribute/{AttributeType}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateInstanceStorageConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateInstanceStorageConfig",
        input_schema = schemas.UpdateInstanceStorageConfigInput,
        output_schema = schemas.UpdateInstanceStorageConfigOutput,
        http_method = "POST",
        http_path = "/instance/{InstanceId}/storage-config/{AssociationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateNotificationContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateNotificationContent",
        input_schema = schemas.UpdateNotificationContentInput,
        output_schema = schemas.UpdateNotificationContentOutput,
        http_method = "POST",
        http_path = "/notifications/{InstanceId}/{NotificationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateParticipantAuthentication(input, options)
    return self:invokeOperation(input, {
        name = "UpdateParticipantAuthentication",
        input_schema = schemas.UpdateParticipantAuthenticationInput,
        output_schema = schemas.UpdateParticipantAuthenticationOutput,
        http_method = "POST",
        http_path = "/contact/update-participant-authentication",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateParticipantRoleConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateParticipantRoleConfig",
        input_schema = schemas.UpdateParticipantRoleConfigInput,
        output_schema = schemas.UpdateParticipantRoleConfigOutput,
        http_method = "PUT",
        http_path = "/contact/participant-role-config/{InstanceId}/{ContactId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePhoneNumber(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumber",
        input_schema = schemas.UpdatePhoneNumberInput,
        output_schema = schemas.UpdatePhoneNumberOutput,
        http_method = "PUT",
        http_path = "/phone-number/{PhoneNumberId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePhoneNumberMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePhoneNumberMetadata",
        input_schema = schemas.UpdatePhoneNumberMetadataInput,
        output_schema = schemas.UpdatePhoneNumberMetadataOutput,
        http_method = "PUT",
        http_path = "/phone-number/{PhoneNumberId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePredefinedAttribute(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePredefinedAttribute",
        input_schema = schemas.UpdatePredefinedAttributeInput,
        output_schema = schemas.UpdatePredefinedAttributeOutput,
        http_method = "POST",
        http_path = "/predefined-attributes/{InstanceId}/{Name}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePrompt(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePrompt",
        input_schema = schemas.UpdatePromptInput,
        output_schema = schemas.UpdatePromptOutput,
        http_method = "POST",
        http_path = "/prompts/{InstanceId}/{PromptId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueHoursOfOperation(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueHoursOfOperation",
        input_schema = schemas.UpdateQueueHoursOfOperationInput,
        output_schema = schemas.UpdateQueueHoursOfOperationOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/hours-of-operation",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueMaxContacts(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueMaxContacts",
        input_schema = schemas.UpdateQueueMaxContactsInput,
        output_schema = schemas.UpdateQueueMaxContactsOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/max-contacts",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueName",
        input_schema = schemas.UpdateQueueNameInput,
        output_schema = schemas.UpdateQueueNameOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueOutboundCallerConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueOutboundCallerConfig",
        input_schema = schemas.UpdateQueueOutboundCallerConfigInput,
        output_schema = schemas.UpdateQueueOutboundCallerConfigOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/outbound-caller-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueOutboundEmailConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueOutboundEmailConfig",
        input_schema = schemas.UpdateQueueOutboundEmailConfigInput,
        output_schema = schemas.UpdateQueueOutboundEmailConfigOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/outbound-email-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQueueStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQueueStatus",
        input_schema = schemas.UpdateQueueStatusInput,
        output_schema = schemas.UpdateQueueStatusOutput,
        http_method = "POST",
        http_path = "/queues/{InstanceId}/{QueueId}/status",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuickConnectConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuickConnectConfig",
        input_schema = schemas.UpdateQuickConnectConfigInput,
        output_schema = schemas.UpdateQuickConnectConfigOutput,
        http_method = "POST",
        http_path = "/quick-connects/{InstanceId}/{QuickConnectId}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateQuickConnectName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateQuickConnectName",
        input_schema = schemas.UpdateQuickConnectNameInput,
        output_schema = schemas.UpdateQuickConnectNameOutput,
        http_method = "POST",
        http_path = "/quick-connects/{InstanceId}/{QuickConnectId}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoutingProfileAgentAvailabilityTimer(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingProfileAgentAvailabilityTimer",
        input_schema = schemas.UpdateRoutingProfileAgentAvailabilityTimerInput,
        output_schema = schemas.UpdateRoutingProfileAgentAvailabilityTimerOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/agent-availability-timer",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoutingProfileConcurrency(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingProfileConcurrency",
        input_schema = schemas.UpdateRoutingProfileConcurrencyInput,
        output_schema = schemas.UpdateRoutingProfileConcurrencyOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/concurrency",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoutingProfileDefaultOutboundQueue(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingProfileDefaultOutboundQueue",
        input_schema = schemas.UpdateRoutingProfileDefaultOutboundQueueInput,
        output_schema = schemas.UpdateRoutingProfileDefaultOutboundQueueOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/default-outbound-queue",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoutingProfileName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingProfileName",
        input_schema = schemas.UpdateRoutingProfileNameInput,
        output_schema = schemas.UpdateRoutingProfileNameOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRoutingProfileQueues(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRoutingProfileQueues",
        input_schema = schemas.UpdateRoutingProfileQueuesInput,
        output_schema = schemas.UpdateRoutingProfileQueuesOutput,
        http_method = "POST",
        http_path = "/routing-profiles/{InstanceId}/{RoutingProfileId}/queues",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateRule(input, options)
    return self:invokeOperation(input, {
        name = "UpdateRule",
        input_schema = schemas.UpdateRuleInput,
        output_schema = schemas.UpdateRuleOutput,
        http_method = "PUT",
        http_path = "/rules/{InstanceId}/{RuleId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateSecurityProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateSecurityProfile",
        input_schema = schemas.UpdateSecurityProfileInput,
        output_schema = schemas.UpdateSecurityProfileOutput,
        http_method = "POST",
        http_path = "/security-profiles/{InstanceId}/{SecurityProfileId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTaskTemplate(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTaskTemplate",
        input_schema = schemas.UpdateTaskTemplateInput,
        output_schema = schemas.UpdateTaskTemplateOutput,
        http_method = "POST",
        http_path = "/instance/{InstanceId}/task/template/{TaskTemplateId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTestCase(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTestCase",
        input_schema = schemas.UpdateTestCaseInput,
        output_schema = schemas.UpdateTestCaseOutput,
        http_method = "POST",
        http_path = "/test-cases/{InstanceId}/{TestCaseId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateTrafficDistribution(input, options)
    return self:invokeOperation(input, {
        name = "UpdateTrafficDistribution",
        input_schema = schemas.UpdateTrafficDistributionInput,
        output_schema = schemas.UpdateTrafficDistributionOutput,
        http_method = "PUT",
        http_path = "/traffic-distribution/{Id}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserConfig",
        input_schema = schemas.UpdateUserConfigInput,
        output_schema = schemas.UpdateUserConfigOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserHierarchy(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserHierarchy",
        input_schema = schemas.UpdateUserHierarchyInput,
        output_schema = schemas.UpdateUserHierarchyOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/hierarchy",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserHierarchyGroupName(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserHierarchyGroupName",
        input_schema = schemas.UpdateUserHierarchyGroupNameInput,
        output_schema = schemas.UpdateUserHierarchyGroupNameOutput,
        http_method = "POST",
        http_path = "/user-hierarchy-groups/{InstanceId}/{HierarchyGroupId}/name",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserHierarchyStructure(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserHierarchyStructure",
        input_schema = schemas.UpdateUserHierarchyStructureInput,
        output_schema = schemas.UpdateUserHierarchyStructureOutput,
        http_method = "POST",
        http_path = "/user-hierarchy-structure/{InstanceId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserIdentityInfo(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserIdentityInfo",
        input_schema = schemas.UpdateUserIdentityInfoInput,
        output_schema = schemas.UpdateUserIdentityInfoOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/identity-info",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserNotificationStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserNotificationStatus",
        input_schema = schemas.UpdateUserNotificationStatusInput,
        output_schema = schemas.UpdateUserNotificationStatusOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/notifications/{NotificationId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserPhoneConfig(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserPhoneConfig",
        input_schema = schemas.UpdateUserPhoneConfigInput,
        output_schema = schemas.UpdateUserPhoneConfigOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/phone-config",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserProficiencies(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserProficiencies",
        input_schema = schemas.UpdateUserProficienciesInput,
        output_schema = schemas.UpdateUserProficienciesOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/proficiencies",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserRoutingProfile(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserRoutingProfile",
        input_schema = schemas.UpdateUserRoutingProfileInput,
        output_schema = schemas.UpdateUserRoutingProfileOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/routing-profile",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateUserSecurityProfiles(input, options)
    return self:invokeOperation(input, {
        name = "UpdateUserSecurityProfiles",
        input_schema = schemas.UpdateUserSecurityProfilesInput,
        output_schema = schemas.UpdateUserSecurityProfilesOutput,
        http_method = "POST",
        http_path = "/users/{InstanceId}/{UserId}/security-profiles",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateViewContent(input, options)
    return self:invokeOperation(input, {
        name = "UpdateViewContent",
        input_schema = schemas.UpdateViewContentInput,
        output_schema = schemas.UpdateViewContentOutput,
        http_method = "POST",
        http_path = "/views/{InstanceId}/{ViewId}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateViewMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateViewMetadata",
        input_schema = schemas.UpdateViewMetadataInput,
        output_schema = schemas.UpdateViewMetadataOutput,
        http_method = "POST",
        http_path = "/views/{InstanceId}/{ViewId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceMetadata(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceMetadata",
        input_schema = schemas.UpdateWorkspaceMetadataInput,
        output_schema = schemas.UpdateWorkspaceMetadataOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/metadata",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspacePage(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspacePage",
        input_schema = schemas.UpdateWorkspacePageInput,
        output_schema = schemas.UpdateWorkspacePageOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/pages/{Page}",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceTheme(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceTheme",
        input_schema = schemas.UpdateWorkspaceThemeInput,
        output_schema = schemas.UpdateWorkspaceThemeOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/theme",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updateWorkspaceVisibility(input, options)
    return self:invokeOperation(input, {
        name = "UpdateWorkspaceVisibility",
        input_schema = schemas.UpdateWorkspaceVisibilityInput,
        output_schema = schemas.UpdateWorkspaceVisibilityOutput,
        http_method = "POST",
        http_path = "/workspaces/{InstanceId}/{WorkspaceId}/visibility",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
