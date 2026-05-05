local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.bedrockagentcorecontrol"

local M = {}

M.ResourceOauth2ReturnUrlListType = schema.new({ type = "list", list_member = prelude.String })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.TagsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AgentRuntimeEndpoints = schema.new({ type = "list", list_member = M.AgentRuntimeEndpoint })

M.AgentRuntimes = schema.new({ type = "list", list_member = M.AgentRuntime })

M.EnvironmentVariablesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.FilesystemConfigurations = schema.new({ type = "list", list_member = M.FilesystemConfiguration })

M.ApiKeyCredentialProviders = schema.new({ type = "list", list_member = M.ApiKeyCredentialProviderItem })

M.BrowserProfileSummaries = schema.new({ type = "list", list_member = M.BrowserProfileSummary })

M.BrowserSummaries = schema.new({ type = "list", list_member = M.BrowserSummary })

M.BrowserEnterprisePolicies = schema.new({ type = "list", list_member = M.BrowserEnterprisePolicy })

M.Certificates = schema.new({ type = "list", list_member = M.Certificate })

M.CodeInterpreterSummaries = schema.new({ type = "list", list_member = M.CodeInterpreterSummary })

M.ConfigurationBundleSummaryList = schema.new({ type = "list", list_member = M.ConfigurationBundleSummary })

M.ComponentConfigurationMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ComponentConfiguration })

M.ConfigurationBundleVersionList = schema.new({ type = "list", list_member = prelude.String })

M.ConfigurationBundleVersionSummaryList = schema.new({ type = "list", list_member = M.ConfigurationBundleVersionSummary })

M.EvaluatorSummaryList = schema.new({ type = "list", list_member = M.EvaluatorSummary })

M.GatewayInterceptorConfigurations = schema.new({ type = "list", list_member = M.GatewayInterceptorConfiguration })

M.StatusReasons = schema.new({ type = "list", list_member = prelude.String })

M.GatewaySummaries = schema.new({ type = "list", list_member = M.GatewaySummary })

M.Conditions = schema.new({ type = "list", list_member = M.Condition })

M.Actions = schema.new({ type = "list", list_member = M.Action })

M.GatewayRules = schema.new({ type = "list", list_member = M.GatewayRuleDetail })

M.CredentialProviderConfigurations = schema.new({ type = "list", list_member = M.CredentialProviderConfiguration })

M.PrivateEndpointManagedResources = schema.new({ type = "list", list_member = M.ManagedResourceDetails })

M.TargetSummaries = schema.new({ type = "list", list_member = M.TargetSummary })

M.TargetIdList = schema.new({ type = "list", list_member = prelude.String })

M.GatewayTargetList = schema.new({ type = "list", list_member = M.GatewayTarget })

M.HarnessSystemPrompt = schema.new({ type = "list", list_member = M.HarnessSystemContentBlock })

M.HarnessTools = schema.new({ type = "list", list_member = M.HarnessTool })

M.HarnessSkills = schema.new({ type = "list", list_member = M.HarnessSkill })

M.HarnessAllowedTools = schema.new({ type = "list", list_member = prelude.String })

M.HarnessSummaries = schema.new({ type = "list", list_member = M.HarnessSummary })

M.MemorySummaryList = schema.new({ type = "list", list_member = M.MemorySummary })

M.MemoryStrategyInputList = schema.new({ type = "list", list_member = M.MemoryStrategyInput })

M.IndexedKeysList = schema.new({ type = "list", list_member = M.IndexedKey })

M.Oauth2CredentialProviders = schema.new({ type = "list", list_member = M.Oauth2CredentialProviderItem })

M.OnlineEvaluationConfigSummaryList = schema.new({ type = "list", list_member = M.OnlineEvaluationConfigSummary })

M.EvaluatorList = schema.new({ type = "list", list_member = M.EvaluatorReference })

M.PolicyEngines = schema.new({ type = "list", list_member = M.PolicyEngine })

M.PolicyStatusReasons = schema.new({ type = "list", list_member = prelude.String })

M.PolicyGenerations = schema.new({ type = "list", list_member = M.PolicyGeneration })

M.PolicyGenerationAssets = schema.new({ type = "list", list_member = M.PolicyGenerationAsset })

M.Policies = schema.new({ type = "list", list_member = M.Policy })

M.RegistryRecordSummaryList = schema.new({ type = "list", list_member = M.RegistryRecordSummary })

M.RegistrySummaryList = schema.new({ type = "list", list_member = M.RegistrySummary })

M.WorkloadIdentityList = schema.new({ type = "list", list_member = M.WorkloadIdentityType })

M.PrivateEndpointOverrides = schema.new({ type = "list", list_member = M.PrivateEndpointOverride })

M.RequestHeaderAllowlist = schema.new({ type = "list", list_member = prelude.String })

M.AllowedRequestHeaders = schema.new({ type = "list", list_member = prelude.String })

M.AllowedQueryParameters = schema.new({ type = "list", list_member = prelude.String })

M.AllowedResponseHeaders = schema.new({ type = "list", list_member = prelude.String })

M.StreamDeliveryResourcesList = schema.new({ type = "list", list_member = M.StreamDeliveryResource })

M.MemoryStrategyList = schema.new({ type = "list", list_member = M.MemoryStrategy })

M.ModifyMemoryStrategiesList = schema.new({ type = "list", list_member = M.ModifyMemoryStrategyInput })

M.DeleteMemoryStrategiesList = schema.new({ type = "list", list_member = M.DeleteMemoryStrategyInput })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.EntryPoints = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroups = schema.new({ type = "list", list_member = prelude.String })

M.Subnets = schema.new({ type = "list", list_member = prelude.String })

M.AllowedAudienceList = schema.new({ type = "list", list_member = prelude.String })

M.AllowedClientsList = schema.new({ type = "list", list_member = prelude.String })

M.AllowedScopesType = schema.new({ type = "list", list_member = prelude.String })

M.CustomClaimValidationsType = schema.new({ type = "list", list_member = M.CustomClaimValidationType })

M.McpSupportedVersions = schema.new({ type = "list", list_member = prelude.String })

M.GatewayInterceptionPoints = schema.new({ type = "list", list_member = prelude.String })

M.SubnetIds = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.HarnessAgentCoreMemoryRetrievalConfigs = schema.new({ type = "map", map_key = prelude.String, map_value = M.HarnessAgentCoreMemoryRetrievalConfig })

M.LogGroupNamesList = schema.new({ type = "list", list_member = prelude.String })

M.ServiceNamesList = schema.new({ type = "list", list_member = prelude.String })

M.Findings = schema.new({ type = "list", list_member = M.Finding })

M.RegistryRecordCredentialProviderConfigurationList = schema.new({ type = "list", list_member = M.RegistryRecordCredentialProviderConfiguration })

M.ResponseListType = schema.new({ type = "list", list_member = prelude.String })

M.TokenEndpointAuthMethodsType = schema.new({ type = "list", list_member = prelude.String })

M.ScopesListType = schema.new({ type = "list", list_member = prelude.String })

M.NumericalScaleDefinitions = schema.new({ type = "list", list_member = M.NumericalScaleDefinition })

M.CategoricalScaleDefinitions = schema.new({ type = "list", list_member = M.CategoricalScaleDefinition })

M.MatchPrincipalEntries = schema.new({ type = "list", list_member = M.MatchPrincipalEntry })

M.MatchPathPatterns = schema.new({ type = "list", list_member = prelude.String })

M.NamespacesList = schema.new({ type = "list", list_member = prelude.String })

M.TrafficSplitEntries = schema.new({ type = "list", list_member = M.TrafficSplitEntry })

M.TargetTrafficSplitEntries = schema.new({ type = "list", list_member = M.TargetTrafficSplitEntry })

M.ToolDefinitions = schema.new({ type = "list", list_member = M.ToolDefinition })

M.ApiGatewayToolOverrides = schema.new({ type = "list", list_member = M.ApiGatewayToolOverride })

M.ApiGatewayToolFilters = schema.new({ type = "list", list_member = M.ApiGatewayToolFilter })

M.OAuthScopes = schema.new({ type = "list", list_member = prelude.String })

M.OAuthCustomParameters = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.HttpHeadersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.MetadataSchemaList = schema.new({ type = "list", list_member = M.MetadataSchemaEntry })

M.ContentConfigurationList = schema.new({ type = "list", list_member = M.ContentConfiguration })

M.NonEmptyStringList = schema.new({ type = "list", list_member = prelude.String })

M.TriggerConditionInputList = schema.new({ type = "list", list_member = M.TriggerConditionInput })

M.TriggerConditionsList = schema.new({ type = "list", list_member = M.TriggerCondition })

M.MatchValueStringList = schema.new({ type = "list", list_member = prelude.String })

M.TrafficSplitMetadataMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.RestApiMethods = schema.new({ type = "list", list_member = prelude.String })

M.ScopeList = schema.new({ type = "list", list_member = prelude.String })

M.CustomParameterMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SchemaProperties = schema.new({ type = "map", map_key = prelude.String, map_value = M.SchemaDefinition })

M.RequiredProperties = schema.new({ type = "list", list_member = prelude.String })

M.AllowedStringValuesList = schema.new({ type = "list", list_member = prelude.String })

M.AllowedStringListValuesList = schema.new({ type = "list", list_member = prelude.String })

M.AgentCardDefinition = schema.new({
    id = id.from(_N, "AgentCardDefinition"),
    type = "structure",
    members = {
        schemaVersion = schema.new({
            id = id.from(_N, "AgentCardDefinition", "schemaVersion"),
            type = "string",
            name = "schemaVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "AgentCardDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.A2aDescriptor = schema.new({
    id = id.from(_N, "A2aDescriptor"),
    type = "structure",
    members = {
        agentCard = schema.new({
            id = id.from(_N, "A2aDescriptor", "agentCard"),
            type = "structure",
            name = "agentCard",
            target_id = id.from(_N, "AgentCardDefinition"),
            target = M.AgentCardDefinition,
        }),
    },
})

M.AccessDeniedException = schema.new({
    id = id.from(_N, "AccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "AccessDeniedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.StaticOverride = schema.new({
    id = id.from(_N, "StaticOverride"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "StaticOverride", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleVersion = schema.new({
            id = id.from(_N, "StaticOverride", "bundleVersion"),
            type = "string",
            name = "bundleVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationBundleReference = schema.new({
    id = id.from(_N, "ConfigurationBundleReference"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "ConfigurationBundleReference", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleVersion = schema.new({
            id = id.from(_N, "ConfigurationBundleReference", "bundleVersion"),
            type = "string",
            name = "bundleVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrafficSplitEntry = schema.new({
    id = id.from(_N, "TrafficSplitEntry"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "TrafficSplitEntry", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        weight = schema.new({
            id = id.from(_N, "TrafficSplitEntry", "weight"),
            type = "integer",
            name = "weight",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        configurationBundle = schema.new({
            id = id.from(_N, "TrafficSplitEntry", "configurationBundle"),
            type = "structure",
            name = "configurationBundle",
            target_id = id.from(_N, "ConfigurationBundleReference"),
            target = M.ConfigurationBundleReference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "TrafficSplitEntry", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "TrafficSplitEntry", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.WeightedOverride = schema.new({
    id = id.from(_N, "WeightedOverride"),
    type = "structure",
    members = {
        trafficSplit = schema.new({
            id = id.from(_N, "WeightedOverride", "trafficSplit"),
            type = "list",
            name = "trafficSplit",
            target_id = prelude.Document.id,
            list_member = M.TrafficSplitEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConfigurationBundleAction = schema.new({
    id = id.from(_N, "ConfigurationBundleAction"),
    type = "union",
    members = {
        staticOverride = schema.new({
            id = id.from(_N, "ConfigurationBundleAction", "staticOverride"),
            type = "structure",
            name = "staticOverride",
            target_id = id.from(_N, "StaticOverride"),
            target = M.StaticOverride,
        }),
        weightedOverride = schema.new({
            id = id.from(_N, "ConfigurationBundleAction", "weightedOverride"),
            type = "structure",
            name = "weightedOverride",
            target_id = id.from(_N, "WeightedOverride"),
            target = M.WeightedOverride,
        }),
    },
})

M.StaticRoute = schema.new({
    id = id.from(_N, "StaticRoute"),
    type = "structure",
    members = {
        targetName = schema.new({
            id = id.from(_N, "StaticRoute", "targetName"),
            type = "string",
            name = "targetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TargetTrafficSplitEntry = schema.new({
    id = id.from(_N, "TargetTrafficSplitEntry"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "TargetTrafficSplitEntry", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        weight = schema.new({
            id = id.from(_N, "TargetTrafficSplitEntry", "weight"),
            type = "integer",
            name = "weight",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetName = schema.new({
            id = id.from(_N, "TargetTrafficSplitEntry", "targetName"),
            type = "string",
            name = "targetName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "TargetTrafficSplitEntry", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        metadata = schema.new({
            id = id.from(_N, "TargetTrafficSplitEntry", "metadata"),
            type = "map",
            name = "metadata",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.WeightedRoute = schema.new({
    id = id.from(_N, "WeightedRoute"),
    type = "structure",
    members = {
        trafficSplit = schema.new({
            id = id.from(_N, "WeightedRoute", "trafficSplit"),
            type = "list",
            name = "trafficSplit",
            target_id = prelude.Document.id,
            list_member = M.TargetTrafficSplitEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RouteToTargetAction = schema.new({
    id = id.from(_N, "RouteToTargetAction"),
    type = "union",
    members = {
        staticRoute = schema.new({
            id = id.from(_N, "RouteToTargetAction", "staticRoute"),
            type = "structure",
            name = "staticRoute",
            target_id = id.from(_N, "StaticRoute"),
            target = M.StaticRoute,
        }),
        weightedRoute = schema.new({
            id = id.from(_N, "RouteToTargetAction", "weightedRoute"),
            type = "structure",
            name = "weightedRoute",
            target_id = id.from(_N, "WeightedRoute"),
            target = M.WeightedRoute,
        }),
    },
})

M.Action = schema.new({
    id = id.from(_N, "Action"),
    type = "union",
    members = {
        configurationBundle = schema.new({
            id = id.from(_N, "Action", "configurationBundle"),
            type = "union",
            name = "configurationBundle",
            target_id = id.from(_N, "ConfigurationBundleAction"),
            target = M.ConfigurationBundleAction,
        }),
        routeToTarget = schema.new({
            id = id.from(_N, "Action", "routeToTarget"),
            type = "union",
            name = "routeToTarget",
            target_id = id.from(_N, "RouteToTargetAction"),
            target = M.RouteToTargetAction,
        }),
    },
})

M.ConflictException = schema.new({
    id = id.from(_N, "ConflictException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateAgentRuntimeEndpointInput = schema.new({
    id = id.from(_N, "CreateAgentRuntimeEndpointRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointInput", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAgentRuntimeEndpointOutput = schema.new({
    id = id.from(_N, "CreateAgentRuntimeEndpointResponse"),
    type = "structure",
    members = {
        targetVersion = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "targetVersion"),
            type = "string",
            name = "targetVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeEndpointArn = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "agentRuntimeEndpointArn"),
            type = "string",
            name = "agentRuntimeEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
        }),
        endpointName = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "endpointName"),
            type = "string",
            name = "endpointName",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateAgentRuntimeEndpointOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InternalServerException = schema.new({
    id = id.from(_N, "InternalServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InternalServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceNotFoundException = schema.new({
    id = id.from(_N, "ResourceNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuotaExceededException = schema.new({
    id = id.from(_N, "ServiceQuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidationException = schema.new({
    id = id.from(_N, "ValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ValidationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        reason = schema.new({
            id = id.from(_N, "ValidationException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.DeleteAgentRuntimeEndpointInput = schema.new({
    id = id.from(_N, "DeleteAgentRuntimeEndpointRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeEndpointInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        endpointName = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeEndpointInput", "endpointName"),
            type = "string",
            name = "endpointName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeEndpointInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAgentRuntimeEndpointOutput = schema.new({
    id = id.from(_N, "DeleteAgentRuntimeEndpointResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeEndpointOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeEndpointOutput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
        }),
        endpointName = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeEndpointOutput", "endpointName"),
            type = "string",
            name = "endpointName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAgentRuntimeEndpointInput = schema.new({
    id = id.from(_N, "GetAgentRuntimeEndpointRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        endpointName = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointInput", "endpointName"),
            type = "string",
            name = "endpointName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAgentRuntimeEndpointOutput = schema.new({
    id = id.from(_N, "GetAgentRuntimeEndpointResponse"),
    type = "structure",
    members = {
        liveVersion = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "liveVersion"),
            type = "string",
            name = "liveVersion",
            target_id = prelude.String.id,
        }),
        targetVersion = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "targetVersion"),
            type = "string",
            name = "targetVersion",
            target_id = prelude.String.id,
        }),
        agentRuntimeEndpointArn = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "agentRuntimeEndpointArn"),
            type = "string",
            name = "agentRuntimeEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "GetAgentRuntimeEndpointOutput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAgentRuntimeEndpointsInput = schema.new({
    id = id.from(_N, "ListAgentRuntimeEndpointsRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "ListAgentRuntimeEndpointsInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAgentRuntimeEndpointsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentRuntimeEndpointsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.AgentRuntimeEndpoint = schema.new({
    id = id.from(_N, "AgentRuntimeEndpoint"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        liveVersion = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "liveVersion"),
            type = "string",
            name = "liveVersion",
            target_id = prelude.String.id,
        }),
        targetVersion = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "targetVersion"),
            type = "string",
            name = "targetVersion",
            target_id = prelude.String.id,
        }),
        agentRuntimeEndpointArn = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "agentRuntimeEndpointArn"),
            type = "string",
            name = "agentRuntimeEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "AgentRuntimeEndpoint", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAgentRuntimeEndpointsOutput = schema.new({
    id = id.from(_N, "ListAgentRuntimeEndpointsResponse"),
    type = "structure",
    members = {
        runtimeEndpoints = schema.new({
            id = id.from(_N, "ListAgentRuntimeEndpointsOutput", "runtimeEndpoints"),
            type = "list",
            name = "runtimeEndpoints",
            target_id = prelude.Document.id,
            list_member = M.AgentRuntimeEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentRuntimeEndpointsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAgentRuntimeEndpointInput = schema.new({
    id = id.from(_N, "UpdateAgentRuntimeEndpointRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        endpointName = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointInput", "endpointName"),
            type = "string",
            name = "endpointName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointInput", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateAgentRuntimeEndpointOutput = schema.new({
    id = id.from(_N, "UpdateAgentRuntimeEndpointResponse"),
    type = "structure",
    members = {
        liveVersion = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "liveVersion"),
            type = "string",
            name = "liveVersion",
            target_id = prelude.String.id,
        }),
        targetVersion = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "targetVersion"),
            type = "string",
            name = "targetVersion",
            target_id = prelude.String.id,
        }),
        agentRuntimeEndpointArn = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "agentRuntimeEndpointArn"),
            type = "string",
            name = "agentRuntimeEndpointArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeArn = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeEndpointOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Location = schema.new({
    id = id.from(_N, "S3Location"),
    type = "structure",
    members = {
        bucket = schema.new({
            id = id.from(_N, "S3Location", "bucket"),
            type = "string",
            name = "bucket",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "S3Location", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "S3Location", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
        }),
    },
})

M.Code = schema.new({
    id = id.from(_N, "Code"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "Code", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.CodeConfiguration = schema.new({
    id = id.from(_N, "CodeConfiguration"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "CodeConfiguration", "code"),
            type = "union",
            name = "code",
            target_id = id.from(_N, "Code"),
            target = M.Code,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        runtime = schema.new({
            id = id.from(_N, "CodeConfiguration", "runtime"),
            type = "string",
            name = "runtime",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        entryPoint = schema.new({
            id = id.from(_N, "CodeConfiguration", "entryPoint"),
            type = "list",
            name = "entryPoint",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ContainerConfiguration = schema.new({
    id = id.from(_N, "ContainerConfiguration"),
    type = "structure",
    members = {
        containerUri = schema.new({
            id = id.from(_N, "ContainerConfiguration", "containerUri"),
            type = "string",
            name = "containerUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AgentRuntimeArtifact = schema.new({
    id = id.from(_N, "AgentRuntimeArtifact"),
    type = "union",
    members = {
        containerConfiguration = schema.new({
            id = id.from(_N, "AgentRuntimeArtifact", "containerConfiguration"),
            type = "structure",
            name = "containerConfiguration",
            target_id = id.from(_N, "ContainerConfiguration"),
            target = M.ContainerConfiguration,
        }),
        codeConfiguration = schema.new({
            id = id.from(_N, "AgentRuntimeArtifact", "codeConfiguration"),
            type = "structure",
            name = "codeConfiguration",
            target_id = id.from(_N, "CodeConfiguration"),
            target = M.CodeConfiguration,
        }),
    },
})

M.ClaimMatchValueType = schema.new({
    id = id.from(_N, "ClaimMatchValueType"),
    type = "union",
    members = {
        matchValueString = schema.new({
            id = id.from(_N, "ClaimMatchValueType", "matchValueString"),
            type = "string",
            name = "matchValueString",
            target_id = prelude.String.id,
        }),
        matchValueStringList = schema.new({
            id = id.from(_N, "ClaimMatchValueType", "matchValueStringList"),
            type = "list",
            name = "matchValueStringList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AuthorizingClaimMatchValueType = schema.new({
    id = id.from(_N, "AuthorizingClaimMatchValueType"),
    type = "structure",
    members = {
        claimMatchValue = schema.new({
            id = id.from(_N, "AuthorizingClaimMatchValueType", "claimMatchValue"),
            type = "union",
            name = "claimMatchValue",
            target_id = id.from(_N, "ClaimMatchValueType"),
            target = M.ClaimMatchValueType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        claimMatchOperator = schema.new({
            id = id.from(_N, "AuthorizingClaimMatchValueType", "claimMatchOperator"),
            type = "string",
            name = "claimMatchOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomClaimValidationType = schema.new({
    id = id.from(_N, "CustomClaimValidationType"),
    type = "structure",
    members = {
        inboundTokenClaimName = schema.new({
            id = id.from(_N, "CustomClaimValidationType", "inboundTokenClaimName"),
            type = "string",
            name = "inboundTokenClaimName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inboundTokenClaimValueType = schema.new({
            id = id.from(_N, "CustomClaimValidationType", "inboundTokenClaimValueType"),
            type = "string",
            name = "inboundTokenClaimValueType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizingClaimMatchValue = schema.new({
            id = id.from(_N, "CustomClaimValidationType", "authorizingClaimMatchValue"),
            type = "structure",
            name = "authorizingClaimMatchValue",
            target_id = id.from(_N, "AuthorizingClaimMatchValueType"),
            target = M.AuthorizingClaimMatchValueType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManagedVpcResource = schema.new({
    id = id.from(_N, "ManagedVpcResource"),
    type = "structure",
    members = {
        vpcIdentifier = schema.new({
            id = id.from(_N, "ManagedVpcResource", "vpcIdentifier"),
            type = "string",
            name = "vpcIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "ManagedVpcResource", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endpointIpAddressType = schema.new({
            id = id.from(_N, "ManagedVpcResource", "endpointIpAddressType"),
            type = "string",
            name = "endpointIpAddressType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "ManagedVpcResource", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "ManagedVpcResource", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        routingDomain = schema.new({
            id = id.from(_N, "ManagedVpcResource", "routingDomain"),
            type = "string",
            name = "routingDomain",
            target_id = prelude.String.id,
        }),
    },
})

M.SelfManagedLatticeResource = schema.new({
    id = id.from(_N, "SelfManagedLatticeResource"),
    type = "union",
    members = {
        resourceConfigurationIdentifier = schema.new({
            id = id.from(_N, "SelfManagedLatticeResource", "resourceConfigurationIdentifier"),
            type = "string",
            name = "resourceConfigurationIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.PrivateEndpoint = schema.new({
    id = id.from(_N, "PrivateEndpoint"),
    type = "union",
    members = {
        selfManagedLatticeResource = schema.new({
            id = id.from(_N, "PrivateEndpoint", "selfManagedLatticeResource"),
            type = "union",
            name = "selfManagedLatticeResource",
            target_id = id.from(_N, "SelfManagedLatticeResource"),
            target = M.SelfManagedLatticeResource,
        }),
        managedVpcResource = schema.new({
            id = id.from(_N, "PrivateEndpoint", "managedVpcResource"),
            type = "structure",
            name = "managedVpcResource",
            target_id = id.from(_N, "ManagedVpcResource"),
            target = M.ManagedVpcResource,
        }),
    },
})

M.PrivateEndpointOverride = schema.new({
    id = id.from(_N, "PrivateEndpointOverride"),
    type = "structure",
    members = {
        domain = schema.new({
            id = id.from(_N, "PrivateEndpointOverride", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "PrivateEndpointOverride", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomJWTAuthorizerConfiguration = schema.new({
    id = id.from(_N, "CustomJWTAuthorizerConfiguration"),
    type = "structure",
    members = {
        discoveryUrl = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "discoveryUrl"),
            type = "string",
            name = "discoveryUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedAudience = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "allowedAudience"),
            type = "list",
            name = "allowedAudience",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allowedClients = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "allowedClients"),
            type = "list",
            name = "allowedClients",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allowedScopes = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "allowedScopes"),
            type = "list",
            name = "allowedScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        customClaims = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "customClaims"),
            type = "list",
            name = "customClaims",
            target_id = prelude.Document.id,
            list_member = M.CustomClaimValidationType,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointOverrides = schema.new({
            id = id.from(_N, "CustomJWTAuthorizerConfiguration", "privateEndpointOverrides"),
            type = "list",
            name = "privateEndpointOverrides",
            target_id = prelude.Document.id,
            list_member = M.PrivateEndpointOverride,
        }),
    },
})

M.AuthorizerConfiguration = schema.new({
    id = id.from(_N, "AuthorizerConfiguration"),
    type = "union",
    members = {
        customJWTAuthorizer = schema.new({
            id = id.from(_N, "AuthorizerConfiguration", "customJWTAuthorizer"),
            type = "structure",
            name = "customJWTAuthorizer",
            target_id = id.from(_N, "CustomJWTAuthorizerConfiguration"),
            target = M.CustomJWTAuthorizerConfiguration,
        }),
    },
})

M.SessionStorageConfiguration = schema.new({
    id = id.from(_N, "SessionStorageConfiguration"),
    type = "structure",
    members = {
        mountPath = schema.new({
            id = id.from(_N, "SessionStorageConfiguration", "mountPath"),
            type = "string",
            name = "mountPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FilesystemConfiguration = schema.new({
    id = id.from(_N, "FilesystemConfiguration"),
    type = "union",
    members = {
        sessionStorage = schema.new({
            id = id.from(_N, "FilesystemConfiguration", "sessionStorage"),
            type = "structure",
            name = "sessionStorage",
            target_id = id.from(_N, "SessionStorageConfiguration"),
            target = M.SessionStorageConfiguration,
        }),
    },
})

M.LifecycleConfiguration = schema.new({
    id = id.from(_N, "LifecycleConfiguration"),
    type = "structure",
    members = {
        idleRuntimeSessionTimeout = schema.new({
            id = id.from(_N, "LifecycleConfiguration", "idleRuntimeSessionTimeout"),
            type = "integer",
            name = "idleRuntimeSessionTimeout",
            target_id = prelude.Integer.id,
        }),
        maxLifetime = schema.new({
            id = id.from(_N, "LifecycleConfiguration", "maxLifetime"),
            type = "integer",
            name = "maxLifetime",
            target_id = prelude.Integer.id,
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        securityGroups = schema.new({
            id = id.from(_N, "VpcConfig", "securityGroups"),
            type = "list",
            name = "securityGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnets = schema.new({
            id = id.from(_N, "VpcConfig", "subnets"),
            type = "list",
            name = "subnets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NetworkConfiguration = schema.new({
    id = id.from(_N, "NetworkConfiguration"),
    type = "structure",
    members = {
        networkMode = schema.new({
            id = id.from(_N, "NetworkConfiguration", "networkMode"),
            type = "string",
            name = "networkMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkModeConfig = schema.new({
            id = id.from(_N, "NetworkConfiguration", "networkModeConfig"),
            type = "structure",
            name = "networkModeConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.ProtocolConfiguration = schema.new({
    id = id.from(_N, "ProtocolConfiguration"),
    type = "structure",
    members = {
        serverProtocol = schema.new({
            id = id.from(_N, "ProtocolConfiguration", "serverProtocol"),
            type = "string",
            name = "serverProtocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RequestHeaderConfiguration = schema.new({
    id = id.from(_N, "RequestHeaderConfiguration"),
    type = "union",
    members = {
        requestHeaderAllowlist = schema.new({
            id = id.from(_N, "RequestHeaderConfiguration", "requestHeaderAllowlist"),
            type = "list",
            name = "requestHeaderAllowlist",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateAgentRuntimeInput = schema.new({
    id = id.from(_N, "CreateAgentRuntimeRequest"),
    type = "structure",
    members = {
        agentRuntimeName = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "agentRuntimeName"),
            type = "string",
            name = "agentRuntimeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeArtifact = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "agentRuntimeArtifact"),
            type = "union",
            name = "agentRuntimeArtifact",
            target_id = id.from(_N, "AgentRuntimeArtifact"),
            target = M.AgentRuntimeArtifact,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        requestHeaderConfiguration = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "requestHeaderConfiguration"),
            type = "union",
            name = "requestHeaderConfiguration",
            target_id = id.from(_N, "RequestHeaderConfiguration"),
            target = M.RequestHeaderConfiguration,
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "protocolConfiguration"),
            type = "structure",
            name = "protocolConfiguration",
            target_id = id.from(_N, "ProtocolConfiguration"),
            target = M.ProtocolConfiguration,
        }),
        lifecycleConfiguration = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "lifecycleConfiguration"),
            type = "structure",
            name = "lifecycleConfiguration",
            target_id = id.from(_N, "LifecycleConfiguration"),
            target = M.LifecycleConfiguration,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filesystemConfigurations = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "filesystemConfigurations"),
            type = "list",
            name = "filesystemConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FilesystemConfiguration,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAgentRuntimeInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.WorkloadIdentityDetails = schema.new({
    id = id.from(_N, "WorkloadIdentityDetails"),
    type = "structure",
    members = {
        workloadIdentityArn = schema.new({
            id = id.from(_N, "WorkloadIdentityDetails", "workloadIdentityArn"),
            type = "string",
            name = "workloadIdentityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateAgentRuntimeOutput = schema.new({
    id = id.from(_N, "CreateAgentRuntimeResponse"),
    type = "structure",
    members = {
        agentRuntimeArn = schema.new({
            id = id.from(_N, "CreateAgentRuntimeOutput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workloadIdentityDetails = schema.new({
            id = id.from(_N, "CreateAgentRuntimeOutput", "workloadIdentityDetails"),
            type = "structure",
            name = "workloadIdentityDetails",
            target_id = id.from(_N, "WorkloadIdentityDetails"),
            target = M.WorkloadIdentityDetails,
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "CreateAgentRuntimeOutput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "CreateAgentRuntimeOutput", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateAgentRuntimeOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateAgentRuntimeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAgentRuntimeInput = schema.new({
    id = id.from(_N, "DeleteAgentRuntimeRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteAgentRuntimeOutput = schema.new({
    id = id.from(_N, "DeleteAgentRuntimeResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "DeleteAgentRuntimeOutput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAgentRuntimeInput = schema.new({
    id = id.from(_N, "GetAgentRuntimeRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "GetAgentRuntimeInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "GetAgentRuntimeInput", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "version" },
            },
        }),
    },
})

M.RuntimeMetadataConfiguration = schema.new({
    id = id.from(_N, "RuntimeMetadataConfiguration"),
    type = "structure",
    members = {
        requireMMDSV2 = schema.new({
            id = id.from(_N, "RuntimeMetadataConfiguration", "requireMMDSV2"),
            type = "boolean",
            name = "requireMMDSV2",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetAgentRuntimeOutput = schema.new({
    id = id.from(_N, "GetAgentRuntimeResponse"),
    type = "structure",
    members = {
        agentRuntimeArn = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeName = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "agentRuntimeName"),
            type = "string",
            name = "agentRuntimeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lifecycleConfiguration = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "lifecycleConfiguration"),
            type = "structure",
            name = "lifecycleConfiguration",
            target_id = id.from(_N, "LifecycleConfiguration"),
            target = M.LifecycleConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        workloadIdentityDetails = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "workloadIdentityDetails"),
            type = "structure",
            name = "workloadIdentityDetails",
            target_id = id.from(_N, "WorkloadIdentityDetails"),
            target = M.WorkloadIdentityDetails,
        }),
        agentRuntimeArtifact = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "agentRuntimeArtifact"),
            type = "union",
            name = "agentRuntimeArtifact",
            target_id = id.from(_N, "AgentRuntimeArtifact"),
            target = M.AgentRuntimeArtifact,
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "protocolConfiguration"),
            type = "structure",
            name = "protocolConfiguration",
            target_id = id.from(_N, "ProtocolConfiguration"),
            target = M.ProtocolConfiguration,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        requestHeaderConfiguration = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "requestHeaderConfiguration"),
            type = "union",
            name = "requestHeaderConfiguration",
            target_id = id.from(_N, "RequestHeaderConfiguration"),
            target = M.RequestHeaderConfiguration,
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "RuntimeMetadataConfiguration"),
            target = M.RuntimeMetadataConfiguration,
        }),
        filesystemConfigurations = schema.new({
            id = id.from(_N, "GetAgentRuntimeOutput", "filesystemConfigurations"),
            type = "list",
            name = "filesystemConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FilesystemConfiguration,
        }),
    },
})

M.ListAgentRuntimesInput = schema.new({
    id = id.from(_N, "ListAgentRuntimesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListAgentRuntimesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentRuntimesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.AgentRuntime = schema.new({
    id = id.from(_N, "AgentRuntime"),
    type = "structure",
    members = {
        agentRuntimeArn = schema.new({
            id = id.from(_N, "AgentRuntime", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "AgentRuntime", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "AgentRuntime", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeName = schema.new({
            id = id.from(_N, "AgentRuntime", "agentRuntimeName"),
            type = "string",
            name = "agentRuntimeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AgentRuntime", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "AgentRuntime", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AgentRuntime", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListAgentRuntimesOutput = schema.new({
    id = id.from(_N, "ListAgentRuntimesResponse"),
    type = "structure",
    members = {
        agentRuntimes = schema.new({
            id = id.from(_N, "ListAgentRuntimesOutput", "agentRuntimes"),
            type = "list",
            name = "agentRuntimes",
            target_id = prelude.Document.id,
            list_member = M.AgentRuntime,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentRuntimesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAgentRuntimeVersionsInput = schema.new({
    id = id.from(_N, "ListAgentRuntimeVersionsRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "ListAgentRuntimeVersionsInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAgentRuntimeVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentRuntimeVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListAgentRuntimeVersionsOutput = schema.new({
    id = id.from(_N, "ListAgentRuntimeVersionsResponse"),
    type = "structure",
    members = {
        agentRuntimes = schema.new({
            id = id.from(_N, "ListAgentRuntimeVersionsOutput", "agentRuntimes"),
            type = "list",
            name = "agentRuntimes",
            target_id = prelude.Document.id,
            list_member = M.AgentRuntime,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentRuntimeVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAgentRuntimeInput = schema.new({
    id = id.from(_N, "UpdateAgentRuntimeRequest"),
    type = "structure",
    members = {
        agentRuntimeId = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        agentRuntimeArtifact = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "agentRuntimeArtifact"),
            type = "union",
            name = "agentRuntimeArtifact",
            target_id = id.from(_N, "AgentRuntimeArtifact"),
            target = M.AgentRuntimeArtifact,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        requestHeaderConfiguration = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "requestHeaderConfiguration"),
            type = "union",
            name = "requestHeaderConfiguration",
            target_id = id.from(_N, "RequestHeaderConfiguration"),
            target = M.RequestHeaderConfiguration,
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "protocolConfiguration"),
            type = "structure",
            name = "protocolConfiguration",
            target_id = id.from(_N, "ProtocolConfiguration"),
            target = M.ProtocolConfiguration,
        }),
        lifecycleConfiguration = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "lifecycleConfiguration"),
            type = "structure",
            name = "lifecycleConfiguration",
            target_id = id.from(_N, "LifecycleConfiguration"),
            target = M.LifecycleConfiguration,
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "RuntimeMetadataConfiguration"),
            target = M.RuntimeMetadataConfiguration,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        filesystemConfigurations = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "filesystemConfigurations"),
            type = "list",
            name = "filesystemConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FilesystemConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateAgentRuntimeOutput = schema.new({
    id = id.from(_N, "UpdateAgentRuntimeResponse"),
    type = "structure",
    members = {
        agentRuntimeArn = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workloadIdentityDetails = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "workloadIdentityDetails"),
            type = "structure",
            name = "workloadIdentityDetails",
            target_id = id.from(_N, "WorkloadIdentityDetails"),
            target = M.WorkloadIdentityDetails,
        }),
        agentRuntimeVersion = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "agentRuntimeVersion"),
            type = "string",
            name = "agentRuntimeVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateAgentRuntimeOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SkillDefinition = schema.new({
    id = id.from(_N, "SkillDefinition"),
    type = "structure",
    members = {
        schemaVersion = schema.new({
            id = id.from(_N, "SkillDefinition", "schemaVersion"),
            type = "string",
            name = "schemaVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "SkillDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.SkillMdDefinition = schema.new({
    id = id.from(_N, "SkillMdDefinition"),
    type = "structure",
    members = {
        inlineContent = schema.new({
            id = id.from(_N, "SkillMdDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.AgentSkillsDescriptor = schema.new({
    id = id.from(_N, "AgentSkillsDescriptor"),
    type = "structure",
    members = {
        skillMd = schema.new({
            id = id.from(_N, "AgentSkillsDescriptor", "skillMd"),
            type = "structure",
            name = "skillMd",
            target_id = id.from(_N, "SkillMdDefinition"),
            target = M.SkillMdDefinition,
        }),
        skillDefinition = schema.new({
            id = id.from(_N, "AgentSkillsDescriptor", "skillDefinition"),
            type = "structure",
            name = "skillDefinition",
            target_id = id.from(_N, "SkillDefinition"),
            target = M.SkillDefinition,
        }),
    },
})

M.CreateApiKeyCredentialProviderInput = schema.new({
    id = id.from(_N, "CreateApiKeyCredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateApiKeyCredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiKey = schema.new({
            id = id.from(_N, "CreateApiKeyCredentialProviderInput", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApiKeyCredentialProviderInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.Secret = schema.new({
    id = id.from(_N, "Secret"),
    type = "structure",
    members = {
        secretArn = schema.new({
            id = id.from(_N, "Secret", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateApiKeyCredentialProviderOutput = schema.new({
    id = id.from(_N, "CreateApiKeyCredentialProviderResponse"),
    type = "structure",
    members = {
        apiKeySecretArn = schema.new({
            id = id.from(_N, "CreateApiKeyCredentialProviderOutput", "apiKeySecretArn"),
            type = "structure",
            name = "apiKeySecretArn",
            target_id = id.from(_N, "Secret"),
            target = M.Secret,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateApiKeyCredentialProviderOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "CreateApiKeyCredentialProviderOutput", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DecryptionFailure = schema.new({
    id = id.from(_N, "DecryptionFailure"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DecryptionFailure", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EncryptionFailure = schema.new({
    id = id.from(_N, "EncryptionFailure"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "EncryptionFailure", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceLimitExceededException = schema.new({
    id = id.from(_N, "ResourceLimitExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ResourceLimitExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UnauthorizedException = schema.new({
    id = id.from(_N, "UnauthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "UnauthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteApiKeyCredentialProviderInput = schema.new({
    id = id.from(_N, "DeleteApiKeyCredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteApiKeyCredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApiKeyCredentialProviderOutput = schema.new({
    id = id.from(_N, "DeleteApiKeyCredentialProviderResponse"),
    type = "structure",
})

M.GetApiKeyCredentialProviderInput = schema.new({
    id = id.from(_N, "GetApiKeyCredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetApiKeyCredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetApiKeyCredentialProviderOutput = schema.new({
    id = id.from(_N, "GetApiKeyCredentialProviderResponse"),
    type = "structure",
    members = {
        apiKeySecretArn = schema.new({
            id = id.from(_N, "GetApiKeyCredentialProviderOutput", "apiKeySecretArn"),
            type = "structure",
            name = "apiKeySecretArn",
            target_id = id.from(_N, "Secret"),
            target = M.Secret,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetApiKeyCredentialProviderOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "GetApiKeyCredentialProviderOutput", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "GetApiKeyCredentialProviderOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetApiKeyCredentialProviderOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListApiKeyCredentialProvidersInput = schema.new({
    id = id.from(_N, "ListApiKeyCredentialProvidersRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListApiKeyCredentialProvidersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApiKeyCredentialProvidersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
    },
})

M.ApiKeyCredentialProviderItem = schema.new({
    id = id.from(_N, "ApiKeyCredentialProviderItem"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ApiKeyCredentialProviderItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "ApiKeyCredentialProviderItem", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "ApiKeyCredentialProviderItem", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "ApiKeyCredentialProviderItem", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListApiKeyCredentialProvidersOutput = schema.new({
    id = id.from(_N, "ListApiKeyCredentialProvidersResponse"),
    type = "structure",
    members = {
        credentialProviders = schema.new({
            id = id.from(_N, "ListApiKeyCredentialProvidersOutput", "credentialProviders"),
            type = "list",
            name = "credentialProviders",
            target_id = prelude.Document.id,
            list_member = M.ApiKeyCredentialProviderItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApiKeyCredentialProvidersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApiKeyCredentialProviderInput = schema.new({
    id = id.from(_N, "UpdateApiKeyCredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiKey = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderInput", "apiKey"),
            type = "string",
            name = "apiKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateApiKeyCredentialProviderOutput = schema.new({
    id = id.from(_N, "UpdateApiKeyCredentialProviderResponse"),
    type = "structure",
    members = {
        apiKeySecretArn = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderOutput", "apiKeySecretArn"),
            type = "structure",
            name = "apiKeySecretArn",
            target_id = id.from(_N, "Secret"),
            target = M.Secret,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderOutput", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "UpdateApiKeyCredentialProviderOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateBrowserProfileInput = schema.new({
    id = id.from(_N, "CreateBrowserProfileRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateBrowserProfileInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateBrowserProfileInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateBrowserProfileInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBrowserProfileInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateBrowserProfileOutput = schema.new({
    id = id.from(_N, "CreateBrowserProfileResponse"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "CreateBrowserProfileOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "CreateBrowserProfileOutput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateBrowserProfileOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateBrowserProfileOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBrowserProfileInput = schema.new({
    id = id.from(_N, "DeleteBrowserProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "DeleteBrowserProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteBrowserProfileInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteBrowserProfileOutput = schema.new({
    id = id.from(_N, "DeleteBrowserProfileResponse"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "DeleteBrowserProfileOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "DeleteBrowserProfileOutput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteBrowserProfileOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "DeleteBrowserProfileOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSavedAt = schema.new({
            id = id.from(_N, "DeleteBrowserProfileOutput", "lastSavedAt"),
            type = "timestamp",
            name = "lastSavedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetBrowserProfileInput = schema.new({
    id = id.from(_N, "GetBrowserProfileRequest"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "GetBrowserProfileInput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetBrowserProfileOutput = schema.new({
    id = id.from(_N, "GetBrowserProfileResponse"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSavedAt = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "lastSavedAt"),
            type = "timestamp",
            name = "lastSavedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastSavedBrowserSessionId = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "lastSavedBrowserSessionId"),
            type = "string",
            name = "lastSavedBrowserSessionId",
            target_id = prelude.String.id,
        }),
        lastSavedBrowserId = schema.new({
            id = id.from(_N, "GetBrowserProfileOutput", "lastSavedBrowserId"),
            type = "string",
            name = "lastSavedBrowserId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBrowserProfilesInput = schema.new({
    id = id.from(_N, "ListBrowserProfilesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListBrowserProfilesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowserProfilesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListBrowserProfilesInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserProfileSummary = schema.new({
    id = id.from(_N, "BrowserProfileSummary"),
    type = "structure",
    members = {
        profileId = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "profileId"),
            type = "string",
            name = "profileId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        profileArn = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "profileArn"),
            type = "string",
            name = "profileArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSavedAt = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "lastSavedAt"),
            type = "timestamp",
            name = "lastSavedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        lastSavedBrowserSessionId = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "lastSavedBrowserSessionId"),
            type = "string",
            name = "lastSavedBrowserSessionId",
            target_id = prelude.String.id,
        }),
        lastSavedBrowserId = schema.new({
            id = id.from(_N, "BrowserProfileSummary", "lastSavedBrowserId"),
            type = "string",
            name = "lastSavedBrowserId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBrowserProfilesOutput = schema.new({
    id = id.from(_N, "ListBrowserProfilesResponse"),
    type = "structure",
    members = {
        profileSummaries = schema.new({
            id = id.from(_N, "ListBrowserProfilesOutput", "profileSummaries"),
            type = "list",
            name = "profileSummaries",
            target_id = prelude.Document.id,
            list_member = M.BrowserProfileSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowserProfilesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserSigningConfigInput = schema.new({
    id = id.from(_N, "BrowserSigningConfigInput"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "BrowserSigningConfigInput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.SecretsManagerLocation = schema.new({
    id = id.from(_N, "SecretsManagerLocation"),
    type = "structure",
    members = {
        secretArn = schema.new({
            id = id.from(_N, "SecretsManagerLocation", "secretArn"),
            type = "string",
            name = "secretArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CertificateLocation = schema.new({
    id = id.from(_N, "CertificateLocation"),
    type = "union",
    members = {
        secretsManager = schema.new({
            id = id.from(_N, "CertificateLocation", "secretsManager"),
            type = "structure",
            name = "secretsManager",
            target_id = id.from(_N, "SecretsManagerLocation"),
            target = M.SecretsManagerLocation,
        }),
    },
})

M.Certificate = schema.new({
    id = id.from(_N, "Certificate"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "Certificate", "location"),
            type = "union",
            name = "location",
            target_id = id.from(_N, "CertificateLocation"),
            target = M.CertificateLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceLocation = schema.new({
    id = id.from(_N, "ResourceLocation"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "ResourceLocation", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.BrowserEnterprisePolicy = schema.new({
    id = id.from(_N, "BrowserEnterprisePolicy"),
    type = "structure",
    members = {
        location = schema.new({
            id = id.from(_N, "BrowserEnterprisePolicy", "location"),
            type = "union",
            name = "location",
            target_id = id.from(_N, "ResourceLocation"),
            target = M.ResourceLocation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "BrowserEnterprisePolicy", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
    },
})

M.BrowserNetworkConfiguration = schema.new({
    id = id.from(_N, "BrowserNetworkConfiguration"),
    type = "structure",
    members = {
        networkMode = schema.new({
            id = id.from(_N, "BrowserNetworkConfiguration", "networkMode"),
            type = "string",
            name = "networkMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "PUBLIC" },
            },
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "BrowserNetworkConfiguration", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.RecordingConfig = schema.new({
    id = id.from(_N, "RecordingConfig"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "RecordingConfig", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        s3Location = schema.new({
            id = id.from(_N, "RecordingConfig", "s3Location"),
            type = "structure",
            name = "s3Location",
            target_id = id.from(_N, "S3Location"),
            target = M.S3Location,
        }),
    },
})

M.CreateBrowserInput = schema.new({
    id = id.from(_N, "CreateBrowserRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateBrowserInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateBrowserInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "CreateBrowserInput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "CreateBrowserInput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "BrowserNetworkConfiguration"),
            target = M.BrowserNetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recording = schema.new({
            id = id.from(_N, "CreateBrowserInput", "recording"),
            type = "structure",
            name = "recording",
            target_id = id.from(_N, "RecordingConfig"),
            target = M.RecordingConfig,
        }),
        browserSigning = schema.new({
            id = id.from(_N, "CreateBrowserInput", "browserSigning"),
            type = "structure",
            name = "browserSigning",
            target_id = id.from(_N, "BrowserSigningConfigInput"),
            target = M.BrowserSigningConfigInput,
        }),
        enterprisePolicies = schema.new({
            id = id.from(_N, "CreateBrowserInput", "enterprisePolicies"),
            type = "list",
            name = "enterprisePolicies",
            target_id = prelude.Document.id,
            list_member = M.BrowserEnterprisePolicy,
        }),
        certificates = schema.new({
            id = id.from(_N, "CreateBrowserInput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateBrowserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateBrowserInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateBrowserOutput = schema.new({
    id = id.from(_N, "CreateBrowserResponse"),
    type = "structure",
    members = {
        browserId = schema.new({
            id = id.from(_N, "CreateBrowserOutput", "browserId"),
            type = "string",
            name = "browserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        browserArn = schema.new({
            id = id.from(_N, "CreateBrowserOutput", "browserArn"),
            type = "string",
            name = "browserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateBrowserOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateBrowserOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteBrowserInput = schema.new({
    id = id.from(_N, "DeleteBrowserRequest"),
    type = "structure",
    members = {
        browserId = schema.new({
            id = id.from(_N, "DeleteBrowserInput", "browserId"),
            type = "string",
            name = "browserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteBrowserInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteBrowserOutput = schema.new({
    id = id.from(_N, "DeleteBrowserResponse"),
    type = "structure",
    members = {
        browserId = schema.new({
            id = id.from(_N, "DeleteBrowserOutput", "browserId"),
            type = "string",
            name = "browserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteBrowserOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "DeleteBrowserOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBrowserInput = schema.new({
    id = id.from(_N, "GetBrowserRequest"),
    type = "structure",
    members = {
        browserId = schema.new({
            id = id.from(_N, "GetBrowserInput", "browserId"),
            type = "string",
            name = "browserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.BrowserSigningConfigOutput = schema.new({
    id = id.from(_N, "BrowserSigningConfigOutput"),
    type = "structure",
    members = {
        enabled = schema.new({
            id = id.from(_N, "BrowserSigningConfigOutput", "enabled"),
            type = "boolean",
            name = "enabled",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetBrowserOutput = schema.new({
    id = id.from(_N, "GetBrowserResponse"),
    type = "structure",
    members = {
        browserId = schema.new({
            id = id.from(_N, "GetBrowserOutput", "browserId"),
            type = "string",
            name = "browserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        browserArn = schema.new({
            id = id.from(_N, "GetBrowserOutput", "browserArn"),
            type = "string",
            name = "browserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetBrowserOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetBrowserOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "GetBrowserOutput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "GetBrowserOutput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "BrowserNetworkConfiguration"),
            target = M.BrowserNetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recording = schema.new({
            id = id.from(_N, "GetBrowserOutput", "recording"),
            type = "structure",
            name = "recording",
            target_id = id.from(_N, "RecordingConfig"),
            target = M.RecordingConfig,
        }),
        browserSigning = schema.new({
            id = id.from(_N, "GetBrowserOutput", "browserSigning"),
            type = "structure",
            name = "browserSigning",
            target_id = id.from(_N, "BrowserSigningConfigOutput"),
            target = M.BrowserSigningConfigOutput,
        }),
        enterprisePolicies = schema.new({
            id = id.from(_N, "GetBrowserOutput", "enterprisePolicies"),
            type = "list",
            name = "enterprisePolicies",
            target_id = prelude.Document.id,
            list_member = M.BrowserEnterprisePolicy,
        }),
        certificates = schema.new({
            id = id.from(_N, "GetBrowserOutput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        status = schema.new({
            id = id.from(_N, "GetBrowserOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetBrowserOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetBrowserOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetBrowserOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListBrowsersInput = schema.new({
    id = id.from(_N, "ListBrowsersRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListBrowsersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowsersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListBrowsersInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
    },
})

M.BrowserSummary = schema.new({
    id = id.from(_N, "BrowserSummary"),
    type = "structure",
    members = {
        browserId = schema.new({
            id = id.from(_N, "BrowserSummary", "browserId"),
            type = "string",
            name = "browserId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        browserArn = schema.new({
            id = id.from(_N, "BrowserSummary", "browserArn"),
            type = "string",
            name = "browserArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "BrowserSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "BrowserSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "BrowserSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "BrowserSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "BrowserSummary", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListBrowsersOutput = schema.new({
    id = id.from(_N, "ListBrowsersResponse"),
    type = "structure",
    members = {
        browserSummaries = schema.new({
            id = id.from(_N, "ListBrowsersOutput", "browserSummaries"),
            type = "list",
            name = "browserSummaries",
            target_id = prelude.Document.id,
            list_member = M.BrowserSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListBrowsersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CodeInterpreterNetworkConfiguration = schema.new({
    id = id.from(_N, "CodeInterpreterNetworkConfiguration"),
    type = "structure",
    members = {
        networkMode = schema.new({
            id = id.from(_N, "CodeInterpreterNetworkConfiguration", "networkMode"),
            type = "string",
            name = "networkMode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = "SANDBOX" },
            },
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "CodeInterpreterNetworkConfiguration", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
    },
})

M.CreateCodeInterpreterInput = schema.new({
    id = id.from(_N, "CreateCodeInterpreterRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "CodeInterpreterNetworkConfiguration"),
            target = M.CodeInterpreterNetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificates = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateCodeInterpreterInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateCodeInterpreterOutput = schema.new({
    id = id.from(_N, "CreateCodeInterpreterResponse"),
    type = "structure",
    members = {
        codeInterpreterId = schema.new({
            id = id.from(_N, "CreateCodeInterpreterOutput", "codeInterpreterId"),
            type = "string",
            name = "codeInterpreterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        codeInterpreterArn = schema.new({
            id = id.from(_N, "CreateCodeInterpreterOutput", "codeInterpreterArn"),
            type = "string",
            name = "codeInterpreterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateCodeInterpreterOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateCodeInterpreterOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteCodeInterpreterInput = schema.new({
    id = id.from(_N, "DeleteCodeInterpreterRequest"),
    type = "structure",
    members = {
        codeInterpreterId = schema.new({
            id = id.from(_N, "DeleteCodeInterpreterInput", "codeInterpreterId"),
            type = "string",
            name = "codeInterpreterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteCodeInterpreterInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteCodeInterpreterOutput = schema.new({
    id = id.from(_N, "DeleteCodeInterpreterResponse"),
    type = "structure",
    members = {
        codeInterpreterId = schema.new({
            id = id.from(_N, "DeleteCodeInterpreterOutput", "codeInterpreterId"),
            type = "string",
            name = "codeInterpreterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteCodeInterpreterOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "DeleteCodeInterpreterOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetCodeInterpreterInput = schema.new({
    id = id.from(_N, "GetCodeInterpreterRequest"),
    type = "structure",
    members = {
        codeInterpreterId = schema.new({
            id = id.from(_N, "GetCodeInterpreterInput", "codeInterpreterId"),
            type = "string",
            name = "codeInterpreterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetCodeInterpreterOutput = schema.new({
    id = id.from(_N, "GetCodeInterpreterResponse"),
    type = "structure",
    members = {
        codeInterpreterId = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "codeInterpreterId"),
            type = "string",
            name = "codeInterpreterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        codeInterpreterArn = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "codeInterpreterArn"),
            type = "string",
            name = "codeInterpreterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "CodeInterpreterNetworkConfiguration"),
            target = M.CodeInterpreterNetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        certificates = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "certificates"),
            type = "list",
            name = "certificates",
            target_id = prelude.Document.id,
            list_member = M.Certificate,
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "GetCodeInterpreterOutput", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListCodeInterpretersInput = schema.new({
    id = id.from(_N, "ListCodeInterpretersRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListCodeInterpretersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCodeInterpretersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        type = schema.new({
            id = id.from(_N, "ListCodeInterpretersInput", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
    },
})

M.CodeInterpreterSummary = schema.new({
    id = id.from(_N, "CodeInterpreterSummary"),
    type = "structure",
    members = {
        codeInterpreterId = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "codeInterpreterId"),
            type = "string",
            name = "codeInterpreterId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        codeInterpreterArn = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "codeInterpreterArn"),
            type = "string",
            name = "codeInterpreterArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedAt = schema.new({
            id = id.from(_N, "CodeInterpreterSummary", "lastUpdatedAt"),
            type = "timestamp",
            name = "lastUpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListCodeInterpretersOutput = schema.new({
    id = id.from(_N, "ListCodeInterpretersResponse"),
    type = "structure",
    members = {
        codeInterpreterSummaries = schema.new({
            id = id.from(_N, "ListCodeInterpretersOutput", "codeInterpreterSummaries"),
            type = "list",
            name = "codeInterpreterSummaries",
            target_id = prelude.Document.id,
            list_member = M.CodeInterpreterSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListCodeInterpretersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ComponentConfiguration = schema.new({
    id = id.from(_N, "ComponentConfiguration"),
    type = "structure",
    members = {
        configuration = schema.new({
            id = id.from(_N, "ComponentConfiguration", "configuration"),
            type = "document",
            name = "configuration",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VersionCreatedBySource = schema.new({
    id = id.from(_N, "VersionCreatedBySource"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "VersionCreatedBySource", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "VersionCreatedBySource", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConfigurationBundleInput = schema.new({
    id = id.from(_N, "CreateConfigurationBundleRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        bundleName = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "bundleName"),
            type = "string",
            name = "bundleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        components = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "components"),
            type = "map",
            name = "components",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComponentConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "createdBy"),
            type = "structure",
            name = "createdBy",
            target_id = id.from(_N, "VersionCreatedBySource"),
            target = M.VersionCreatedBySource,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConfigurationBundleInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateConfigurationBundleOutput = schema.new({
    id = id.from(_N, "CreateConfigurationBundleResponse"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "CreateConfigurationBundleOutput", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "CreateConfigurationBundleOutput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "CreateConfigurationBundleOutput", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateConfigurationBundleOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteConfigurationBundleInput = schema.new({
    id = id.from(_N, "DeleteConfigurationBundleRequest"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "DeleteConfigurationBundleInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConfigurationBundleOutput = schema.new({
    id = id.from(_N, "DeleteConfigurationBundleResponse"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "DeleteConfigurationBundleOutput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteConfigurationBundleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConfigurationBundleInput = schema.new({
    id = id.from(_N, "GetConfigurationBundleRequest"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "GetConfigurationBundleInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        branchName = schema.new({
            id = id.from(_N, "GetConfigurationBundleInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "branchName" },
            },
        }),
    },
})

M.VersionLineageMetadata = schema.new({
    id = id.from(_N, "VersionLineageMetadata"),
    type = "structure",
    members = {
        parentVersionIds = schema.new({
            id = id.from(_N, "VersionLineageMetadata", "parentVersionIds"),
            type = "list",
            name = "parentVersionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        branchName = schema.new({
            id = id.from(_N, "VersionLineageMetadata", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "VersionLineageMetadata", "createdBy"),
            type = "structure",
            name = "createdBy",
            target_id = id.from(_N, "VersionCreatedBySource"),
            target = M.VersionCreatedBySource,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "VersionLineageMetadata", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetConfigurationBundleOutput = schema.new({
    id = id.from(_N, "GetConfigurationBundleResponse"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleName = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "bundleName"),
            type = "string",
            name = "bundleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        versionId = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        components = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "components"),
            type = "map",
            name = "components",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComponentConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lineageMetadata = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "lineageMetadata"),
            type = "structure",
            name = "lineageMetadata",
            target_id = id.from(_N, "VersionLineageMetadata"),
            target = M.VersionLineageMetadata,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetConfigurationBundleOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConfigurationBundleVersionInput = schema.new({
    id = id.from(_N, "GetConfigurationBundleVersionRequest"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionInput", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConfigurationBundleVersionOutput = schema.new({
    id = id.from(_N, "GetConfigurationBundleVersionResponse"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleName = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "bundleName"),
            type = "string",
            name = "bundleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        versionId = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        components = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "components"),
            type = "map",
            name = "components",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComponentConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lineageMetadata = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "lineageMetadata"),
            type = "structure",
            name = "lineageMetadata",
            target_id = id.from(_N, "VersionLineageMetadata"),
            target = M.VersionLineageMetadata,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionCreatedAt = schema.new({
            id = id.from(_N, "GetConfigurationBundleVersionOutput", "versionCreatedAt"),
            type = "timestamp",
            name = "versionCreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListConfigurationBundlesInput = schema.new({
    id = id.from(_N, "ListConfigurationBundlesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListConfigurationBundlesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConfigurationBundlesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ConfigurationBundleSummary = schema.new({
    id = id.from(_N, "ConfigurationBundleSummary"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "ConfigurationBundleSummary", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "ConfigurationBundleSummary", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleName = schema.new({
            id = id.from(_N, "ConfigurationBundleSummary", "bundleName"),
            type = "string",
            name = "bundleName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ConfigurationBundleSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ListConfigurationBundlesOutput = schema.new({
    id = id.from(_N, "ListConfigurationBundlesResponse"),
    type = "structure",
    members = {
        bundles = schema.new({
            id = id.from(_N, "ListConfigurationBundlesOutput", "bundles"),
            type = "list",
            name = "bundles",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationBundleSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConfigurationBundlesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.VersionFilter = schema.new({
    id = id.from(_N, "VersionFilter"),
    type = "structure",
    members = {
        branchName = schema.new({
            id = id.from(_N, "VersionFilter", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
        createdByName = schema.new({
            id = id.from(_N, "VersionFilter", "createdByName"),
            type = "string",
            name = "createdByName",
            target_id = prelude.String.id,
        }),
        latestPerBranch = schema.new({
            id = id.from(_N, "VersionFilter", "latestPerBranch"),
            type = "boolean",
            name = "latestPerBranch",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ListConfigurationBundleVersionsInput = schema.new({
    id = id.from(_N, "ListConfigurationBundleVersionsRequest"),
    type = "structure",
    members = {
        bundleId = schema.new({
            id = id.from(_N, "ListConfigurationBundleVersionsInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConfigurationBundleVersionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListConfigurationBundleVersionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        filter = schema.new({
            id = id.from(_N, "ListConfigurationBundleVersionsInput", "filter"),
            type = "structure",
            name = "filter",
            target_id = id.from(_N, "VersionFilter"),
            target = M.VersionFilter,
        }),
    },
})

M.ConfigurationBundleVersionSummary = schema.new({
    id = id.from(_N, "ConfigurationBundleVersionSummary"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "ConfigurationBundleVersionSummary", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "ConfigurationBundleVersionSummary", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "ConfigurationBundleVersionSummary", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lineageMetadata = schema.new({
            id = id.from(_N, "ConfigurationBundleVersionSummary", "lineageMetadata"),
            type = "structure",
            name = "lineageMetadata",
            target_id = id.from(_N, "VersionLineageMetadata"),
            target = M.VersionLineageMetadata,
        }),
        versionCreatedAt = schema.new({
            id = id.from(_N, "ConfigurationBundleVersionSummary", "versionCreatedAt"),
            type = "timestamp",
            name = "versionCreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListConfigurationBundleVersionsOutput = schema.new({
    id = id.from(_N, "ListConfigurationBundleVersionsResponse"),
    type = "structure",
    members = {
        versions = schema.new({
            id = id.from(_N, "ListConfigurationBundleVersionsOutput", "versions"),
            type = "list",
            name = "versions",
            target_id = prelude.Document.id,
            list_member = M.ConfigurationBundleVersionSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConfigurationBundleVersionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConfigurationBundleInput = schema.new({
    id = id.from(_N, "UpdateConfigurationBundleRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        bundleName = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "bundleName"),
            type = "string",
            name = "bundleName",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        components = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "components"),
            type = "map",
            name = "components",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.ComponentConfiguration,
        }),
        parentVersionIds = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "parentVersionIds"),
            type = "list",
            name = "parentVersionIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        branchName = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "branchName"),
            type = "string",
            name = "branchName",
            target_id = prelude.String.id,
        }),
        commitMessage = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "commitMessage"),
            type = "string",
            name = "commitMessage",
            target_id = prelude.String.id,
        }),
        createdBy = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleInput", "createdBy"),
            type = "structure",
            name = "createdBy",
            target_id = id.from(_N, "VersionCreatedBySource"),
            target = M.VersionCreatedBySource,
        }),
    },
})

M.UpdateConfigurationBundleOutput = schema.new({
    id = id.from(_N, "UpdateConfigurationBundleResponse"),
    type = "structure",
    members = {
        bundleArn = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleOutput", "bundleArn"),
            type = "string",
            name = "bundleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bundleId = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleOutput", "bundleId"),
            type = "string",
            name = "bundleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        versionId = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleOutput", "versionId"),
            type = "string",
            name = "versionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateConfigurationBundleOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyInput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "DeleteResourcePolicyInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteResourcePolicyOutput = schema.new({
    id = id.from(_N, "DeleteResourcePolicyResponse"),
    type = "structure",
})

M.LambdaEvaluatorConfig = schema.new({
    id = id.from(_N, "LambdaEvaluatorConfig"),
    type = "structure",
    members = {
        lambdaArn = schema.new({
            id = id.from(_N, "LambdaEvaluatorConfig", "lambdaArn"),
            type = "string",
            name = "lambdaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lambdaTimeoutInSeconds = schema.new({
            id = id.from(_N, "LambdaEvaluatorConfig", "lambdaTimeoutInSeconds"),
            type = "integer",
            name = "lambdaTimeoutInSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.CodeBasedEvaluatorConfig = schema.new({
    id = id.from(_N, "CodeBasedEvaluatorConfig"),
    type = "union",
    members = {
        lambdaConfig = schema.new({
            id = id.from(_N, "CodeBasedEvaluatorConfig", "lambdaConfig"),
            type = "structure",
            name = "lambdaConfig",
            target_id = id.from(_N, "LambdaEvaluatorConfig"),
            target = M.LambdaEvaluatorConfig,
        }),
    },
})

M.InferenceConfiguration = schema.new({
    id = id.from(_N, "InferenceConfiguration"),
    type = "structure",
    members = {
        maxTokens = schema.new({
            id = id.from(_N, "InferenceConfiguration", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "InferenceConfiguration", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "InferenceConfiguration", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
        stopSequences = schema.new({
            id = id.from(_N, "InferenceConfiguration", "stopSequences"),
            type = "list",
            name = "stopSequences",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BedrockEvaluatorModelConfig = schema.new({
    id = id.from(_N, "BedrockEvaluatorModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "BedrockEvaluatorModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inferenceConfig = schema.new({
            id = id.from(_N, "BedrockEvaluatorModelConfig", "inferenceConfig"),
            type = "structure",
            name = "inferenceConfig",
            target_id = id.from(_N, "InferenceConfiguration"),
            target = M.InferenceConfiguration,
        }),
        additionalModelRequestFields = schema.new({
            id = id.from(_N, "BedrockEvaluatorModelConfig", "additionalModelRequestFields"),
            type = "document",
            name = "additionalModelRequestFields",
            target_id = prelude.Document.id,
        }),
    },
})

M.EvaluatorModelConfig = schema.new({
    id = id.from(_N, "EvaluatorModelConfig"),
    type = "union",
    members = {
        bedrockEvaluatorModelConfig = schema.new({
            id = id.from(_N, "EvaluatorModelConfig", "bedrockEvaluatorModelConfig"),
            type = "structure",
            name = "bedrockEvaluatorModelConfig",
            target_id = id.from(_N, "BedrockEvaluatorModelConfig"),
            target = M.BedrockEvaluatorModelConfig,
        }),
    },
})

M.CategoricalScaleDefinition = schema.new({
    id = id.from(_N, "CategoricalScaleDefinition"),
    type = "structure",
    members = {
        definition = schema.new({
            id = id.from(_N, "CategoricalScaleDefinition", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        label = schema.new({
            id = id.from(_N, "CategoricalScaleDefinition", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NumericalScaleDefinition = schema.new({
    id = id.from(_N, "NumericalScaleDefinition"),
    type = "structure",
    members = {
        definition = schema.new({
            id = id.from(_N, "NumericalScaleDefinition", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "NumericalScaleDefinition", "value"),
            type = "double",
            name = "value",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        label = schema.new({
            id = id.from(_N, "NumericalScaleDefinition", "label"),
            type = "string",
            name = "label",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RatingScale = schema.new({
    id = id.from(_N, "RatingScale"),
    type = "union",
    members = {
        numerical = schema.new({
            id = id.from(_N, "RatingScale", "numerical"),
            type = "list",
            name = "numerical",
            target_id = prelude.Document.id,
            list_member = M.NumericalScaleDefinition,
        }),
        categorical = schema.new({
            id = id.from(_N, "RatingScale", "categorical"),
            type = "list",
            name = "categorical",
            target_id = prelude.Document.id,
            list_member = M.CategoricalScaleDefinition,
        }),
    },
})

M.LlmAsAJudgeEvaluatorConfig = schema.new({
    id = id.from(_N, "LlmAsAJudgeEvaluatorConfig"),
    type = "structure",
    members = {
        instructions = schema.new({
            id = id.from(_N, "LlmAsAJudgeEvaluatorConfig", "instructions"),
            type = "string",
            name = "instructions",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ratingScale = schema.new({
            id = id.from(_N, "LlmAsAJudgeEvaluatorConfig", "ratingScale"),
            type = "union",
            name = "ratingScale",
            target_id = id.from(_N, "RatingScale"),
            target = M.RatingScale,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelConfig = schema.new({
            id = id.from(_N, "LlmAsAJudgeEvaluatorConfig", "modelConfig"),
            type = "union",
            name = "modelConfig",
            target_id = id.from(_N, "EvaluatorModelConfig"),
            target = M.EvaluatorModelConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EvaluatorConfig = schema.new({
    id = id.from(_N, "EvaluatorConfig"),
    type = "union",
    members = {
        llmAsAJudge = schema.new({
            id = id.from(_N, "EvaluatorConfig", "llmAsAJudge"),
            type = "structure",
            name = "llmAsAJudge",
            target_id = id.from(_N, "LlmAsAJudgeEvaluatorConfig"),
            target = M.LlmAsAJudgeEvaluatorConfig,
        }),
        codeBased = schema.new({
            id = id.from(_N, "EvaluatorConfig", "codeBased"),
            type = "union",
            name = "codeBased",
            target_id = id.from(_N, "CodeBasedEvaluatorConfig"),
            target = M.CodeBasedEvaluatorConfig,
        }),
    },
})

M.CreateEvaluatorInput = schema.new({
    id = id.from(_N, "CreateEvaluatorRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        evaluatorName = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "evaluatorName"),
            type = "string",
            name = "evaluatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        evaluatorConfig = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "evaluatorConfig"),
            type = "union",
            name = "evaluatorConfig",
            target_id = id.from(_N, "EvaluatorConfig"),
            target = M.EvaluatorConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        level = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "level"),
            type = "string",
            name = "level",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateEvaluatorInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateEvaluatorOutput = schema.new({
    id = id.from(_N, "CreateEvaluatorResponse"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "CreateEvaluatorOutput", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "CreateEvaluatorOutput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateEvaluatorOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateEvaluatorOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteEvaluatorInput = schema.new({
    id = id.from(_N, "DeleteEvaluatorRequest"),
    type = "structure",
    members = {
        evaluatorId = schema.new({
            id = id.from(_N, "DeleteEvaluatorInput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteEvaluatorOutput = schema.new({
    id = id.from(_N, "DeleteEvaluatorResponse"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "DeleteEvaluatorOutput", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "DeleteEvaluatorOutput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteEvaluatorOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEvaluatorInput = schema.new({
    id = id.from(_N, "GetEvaluatorRequest"),
    type = "structure",
    members = {
        evaluatorId = schema.new({
            id = id.from(_N, "GetEvaluatorInput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        includedData = schema.new({
            id = id.from(_N, "GetEvaluatorInput", "includedData"),
            type = "string",
            name = "includedData",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "includedData" },
            },
        }),
    },
})

M.GetEvaluatorOutput = schema.new({
    id = id.from(_N, "GetEvaluatorResponse"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorName = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "evaluatorName"),
            type = "string",
            name = "evaluatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        evaluatorConfig = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "evaluatorConfig"),
            type = "union",
            name = "evaluatorConfig",
            target_id = id.from(_N, "EvaluatorConfig"),
            target = M.EvaluatorConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        level = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "level"),
            type = "string",
            name = "level",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lockedForModification = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "lockedForModification"),
            type = "boolean",
            name = "lockedForModification",
            target_id = prelude.Boolean.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "GetEvaluatorOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEvaluatorsInput = schema.new({
    id = id.from(_N, "ListEvaluatorsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListEvaluatorsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListEvaluatorsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.EvaluatorSummary = schema.new({
    id = id.from(_N, "EvaluatorSummary"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "EvaluatorSummary", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "EvaluatorSummary", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorName = schema.new({
            id = id.from(_N, "EvaluatorSummary", "evaluatorName"),
            type = "string",
            name = "evaluatorName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "EvaluatorSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        evaluatorType = schema.new({
            id = id.from(_N, "EvaluatorSummary", "evaluatorType"),
            type = "string",
            name = "evaluatorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        level = schema.new({
            id = id.from(_N, "EvaluatorSummary", "level"),
            type = "string",
            name = "level",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "EvaluatorSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "EvaluatorSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "EvaluatorSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lockedForModification = schema.new({
            id = id.from(_N, "EvaluatorSummary", "lockedForModification"),
            type = "boolean",
            name = "lockedForModification",
            target_id = prelude.Boolean.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "EvaluatorSummary", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEvaluatorsOutput = schema.new({
    id = id.from(_N, "ListEvaluatorsResponse"),
    type = "structure",
    members = {
        evaluators = schema.new({
            id = id.from(_N, "ListEvaluatorsOutput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.EvaluatorSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEvaluatorsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateEvaluatorInput = schema.new({
    id = id.from(_N, "UpdateEvaluatorRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateEvaluatorInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "UpdateEvaluatorInput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateEvaluatorInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        evaluatorConfig = schema.new({
            id = id.from(_N, "UpdateEvaluatorInput", "evaluatorConfig"),
            type = "union",
            name = "evaluatorConfig",
            target_id = id.from(_N, "EvaluatorConfig"),
            target = M.EvaluatorConfig,
        }),
        level = schema.new({
            id = id.from(_N, "UpdateEvaluatorInput", "level"),
            type = "string",
            name = "level",
            target_id = prelude.String.id,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "UpdateEvaluatorInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateEvaluatorOutput = schema.new({
    id = id.from(_N, "UpdateEvaluatorResponse"),
    type = "structure",
    members = {
        evaluatorArn = schema.new({
            id = id.from(_N, "UpdateEvaluatorOutput", "evaluatorArn"),
            type = "string",
            name = "evaluatorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluatorId = schema.new({
            id = id.from(_N, "UpdateEvaluatorOutput", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateEvaluatorOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateEvaluatorOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InterceptorInputConfiguration = schema.new({
    id = id.from(_N, "InterceptorInputConfiguration"),
    type = "structure",
    members = {
        passRequestHeaders = schema.new({
            id = id.from(_N, "InterceptorInputConfiguration", "passRequestHeaders"),
            type = "boolean",
            name = "passRequestHeaders",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LambdaInterceptorConfiguration = schema.new({
    id = id.from(_N, "LambdaInterceptorConfiguration"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "LambdaInterceptorConfiguration", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InterceptorConfiguration = schema.new({
    id = id.from(_N, "InterceptorConfiguration"),
    type = "union",
    members = {
        lambda = schema.new({
            id = id.from(_N, "InterceptorConfiguration", "lambda"),
            type = "structure",
            name = "lambda",
            target_id = id.from(_N, "LambdaInterceptorConfiguration"),
            target = M.LambdaInterceptorConfiguration,
        }),
    },
})

M.GatewayInterceptorConfiguration = schema.new({
    id = id.from(_N, "GatewayInterceptorConfiguration"),
    type = "structure",
    members = {
        interceptor = schema.new({
            id = id.from(_N, "GatewayInterceptorConfiguration", "interceptor"),
            type = "union",
            name = "interceptor",
            target_id = id.from(_N, "InterceptorConfiguration"),
            target = M.InterceptorConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        interceptionPoints = schema.new({
            id = id.from(_N, "GatewayInterceptorConfiguration", "interceptionPoints"),
            type = "list",
            name = "interceptionPoints",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputConfiguration = schema.new({
            id = id.from(_N, "GatewayInterceptorConfiguration", "inputConfiguration"),
            type = "structure",
            name = "inputConfiguration",
            target_id = id.from(_N, "InterceptorInputConfiguration"),
            target = M.InterceptorInputConfiguration,
        }),
    },
})

M.GatewayPolicyEngineConfiguration = schema.new({
    id = id.from(_N, "GatewayPolicyEngineConfiguration"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "GatewayPolicyEngineConfiguration", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mode = schema.new({
            id = id.from(_N, "GatewayPolicyEngineConfiguration", "mode"),
            type = "string",
            name = "mode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MCPGatewayConfiguration = schema.new({
    id = id.from(_N, "MCPGatewayConfiguration"),
    type = "structure",
    members = {
        supportedVersions = schema.new({
            id = id.from(_N, "MCPGatewayConfiguration", "supportedVersions"),
            type = "list",
            name = "supportedVersions",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        instructions = schema.new({
            id = id.from(_N, "MCPGatewayConfiguration", "instructions"),
            type = "string",
            name = "instructions",
            target_id = prelude.String.id,
        }),
        searchType = schema.new({
            id = id.from(_N, "MCPGatewayConfiguration", "searchType"),
            type = "string",
            name = "searchType",
            target_id = prelude.String.id,
        }),
    },
})

M.GatewayProtocolConfiguration = schema.new({
    id = id.from(_N, "GatewayProtocolConfiguration"),
    type = "union",
    members = {
        mcp = schema.new({
            id = id.from(_N, "GatewayProtocolConfiguration", "mcp"),
            type = "structure",
            name = "mcp",
            target_id = id.from(_N, "MCPGatewayConfiguration"),
            target = M.MCPGatewayConfiguration,
        }),
    },
})

M.CreateGatewayInput = schema.new({
    id = id.from(_N, "CreateGatewayRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateGatewayInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGatewayInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateGatewayInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateGatewayInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocolType = schema.new({
            id = id.from(_N, "CreateGatewayInput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MCP" },
            },
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayInput", "protocolConfiguration"),
            type = "union",
            name = "protocolConfiguration",
            target_id = id.from(_N, "GatewayProtocolConfiguration"),
            target = M.GatewayProtocolConfiguration,
        }),
        authorizerType = schema.new({
            id = id.from(_N, "CreateGatewayInput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayInput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CreateGatewayInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        interceptorConfigurations = schema.new({
            id = id.from(_N, "CreateGatewayInput", "interceptorConfigurations"),
            type = "list",
            name = "interceptorConfigurations",
            target_id = prelude.Document.id,
            list_member = M.GatewayInterceptorConfiguration,
        }),
        policyEngineConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayInput", "policyEngineConfiguration"),
            type = "structure",
            name = "policyEngineConfiguration",
            target_id = id.from(_N, "GatewayPolicyEngineConfiguration"),
            target = M.GatewayPolicyEngineConfiguration,
        }),
        exceptionLevel = schema.new({
            id = id.from(_N, "CreateGatewayInput", "exceptionLevel"),
            type = "string",
            name = "exceptionLevel",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateGatewayInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateGatewayOutput = schema.new({
    id = id.from(_N, "CreateGatewayResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayUrl = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "gatewayUrl"),
            type = "string",
            name = "gatewayUrl",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        protocolType = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MCP" },
            },
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "protocolConfiguration"),
            type = "union",
            name = "protocolConfiguration",
            target_id = id.from(_N, "GatewayProtocolConfiguration"),
            target = M.GatewayProtocolConfiguration,
        }),
        authorizerType = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        interceptorConfigurations = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "interceptorConfigurations"),
            type = "list",
            name = "interceptorConfigurations",
            target_id = prelude.Document.id,
            list_member = M.GatewayInterceptorConfiguration,
        }),
        policyEngineConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "policyEngineConfiguration"),
            type = "structure",
            name = "policyEngineConfiguration",
            target_id = id.from(_N, "GatewayPolicyEngineConfiguration"),
            target = M.GatewayPolicyEngineConfiguration,
        }),
        workloadIdentityDetails = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "workloadIdentityDetails"),
            type = "structure",
            name = "workloadIdentityDetails",
            target_id = id.from(_N, "WorkloadIdentityDetails"),
            target = M.WorkloadIdentityDetails,
        }),
        exceptionLevel = schema.new({
            id = id.from(_N, "CreateGatewayOutput", "exceptionLevel"),
            type = "string",
            name = "exceptionLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGatewayInput = schema.new({
    id = id.from(_N, "DeleteGatewayRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "DeleteGatewayInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGatewayOutput = schema.new({
    id = id.from(_N, "DeleteGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "DeleteGatewayOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetGatewayInput = schema.new({
    id = id.from(_N, "GetGatewayRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "GetGatewayInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGatewayOutput = schema.new({
    id = id.from(_N, "GetGatewayResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "GetGatewayOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "GetGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayUrl = schema.new({
            id = id.from(_N, "GetGatewayOutput", "gatewayUrl"),
            type = "string",
            name = "gatewayUrl",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetGatewayOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetGatewayOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GetGatewayOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "GetGatewayOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetGatewayOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetGatewayOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        protocolType = schema.new({
            id = id.from(_N, "GetGatewayOutput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MCP" },
            },
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "GetGatewayOutput", "protocolConfiguration"),
            type = "union",
            name = "protocolConfiguration",
            target_id = id.from(_N, "GatewayProtocolConfiguration"),
            target = M.GatewayProtocolConfiguration,
        }),
        authorizerType = schema.new({
            id = id.from(_N, "GetGatewayOutput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "GetGatewayOutput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "GetGatewayOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        interceptorConfigurations = schema.new({
            id = id.from(_N, "GetGatewayOutput", "interceptorConfigurations"),
            type = "list",
            name = "interceptorConfigurations",
            target_id = prelude.Document.id,
            list_member = M.GatewayInterceptorConfiguration,
        }),
        policyEngineConfiguration = schema.new({
            id = id.from(_N, "GetGatewayOutput", "policyEngineConfiguration"),
            type = "structure",
            name = "policyEngineConfiguration",
            target_id = id.from(_N, "GatewayPolicyEngineConfiguration"),
            target = M.GatewayPolicyEngineConfiguration,
        }),
        workloadIdentityDetails = schema.new({
            id = id.from(_N, "GetGatewayOutput", "workloadIdentityDetails"),
            type = "structure",
            name = "workloadIdentityDetails",
            target_id = id.from(_N, "WorkloadIdentityDetails"),
            target = M.WorkloadIdentityDetails,
        }),
        exceptionLevel = schema.new({
            id = id.from(_N, "GetGatewayOutput", "exceptionLevel"),
            type = "string",
            name = "exceptionLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListGatewaysInput = schema.new({
    id = id.from(_N, "ListGatewaysRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListGatewaysInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewaysInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GatewaySummary = schema.new({
    id = id.from(_N, "GatewaySummary"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GatewaySummary", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GatewaySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GatewaySummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GatewaySummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GatewaySummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GatewaySummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerType = schema.new({
            id = id.from(_N, "GatewaySummary", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocolType = schema.new({
            id = id.from(_N, "GatewaySummary", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MCP" },
            },
        }),
    },
})

M.ListGatewaysOutput = schema.new({
    id = id.from(_N, "ListGatewaysResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListGatewaysOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.GatewaySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewaysOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayInput = schema.new({
    id = id.from(_N, "UpdateGatewayRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocolType = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MCP" },
            },
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "protocolConfiguration"),
            type = "union",
            name = "protocolConfiguration",
            target_id = id.from(_N, "GatewayProtocolConfiguration"),
            target = M.GatewayProtocolConfiguration,
        }),
        authorizerType = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        interceptorConfigurations = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "interceptorConfigurations"),
            type = "list",
            name = "interceptorConfigurations",
            target_id = prelude.Document.id,
            list_member = M.GatewayInterceptorConfiguration,
        }),
        policyEngineConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "policyEngineConfiguration"),
            type = "structure",
            name = "policyEngineConfiguration",
            target_id = id.from(_N, "GatewayPolicyEngineConfiguration"),
            target = M.GatewayPolicyEngineConfiguration,
        }),
        exceptionLevel = schema.new({
            id = id.from(_N, "UpdateGatewayInput", "exceptionLevel"),
            type = "string",
            name = "exceptionLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayOutput = schema.new({
    id = id.from(_N, "UpdateGatewayResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayUrl = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "gatewayUrl"),
            type = "string",
            name = "gatewayUrl",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        protocolType = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "MCP" },
            },
        }),
        protocolConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "protocolConfiguration"),
            type = "union",
            name = "protocolConfiguration",
            target_id = id.from(_N, "GatewayProtocolConfiguration"),
            target = M.GatewayProtocolConfiguration,
        }),
        authorizerType = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
        interceptorConfigurations = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "interceptorConfigurations"),
            type = "list",
            name = "interceptorConfigurations",
            target_id = prelude.Document.id,
            list_member = M.GatewayInterceptorConfiguration,
        }),
        policyEngineConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "policyEngineConfiguration"),
            type = "structure",
            name = "policyEngineConfiguration",
            target_id = id.from(_N, "GatewayPolicyEngineConfiguration"),
            target = M.GatewayPolicyEngineConfiguration,
        }),
        workloadIdentityDetails = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "workloadIdentityDetails"),
            type = "structure",
            name = "workloadIdentityDetails",
            target_id = id.from(_N, "WorkloadIdentityDetails"),
            target = M.WorkloadIdentityDetails,
        }),
        exceptionLevel = schema.new({
            id = id.from(_N, "UpdateGatewayOutput", "exceptionLevel"),
            type = "string",
            name = "exceptionLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.MatchPaths = schema.new({
    id = id.from(_N, "MatchPaths"),
    type = "structure",
    members = {
        anyOf = schema.new({
            id = id.from(_N, "MatchPaths", "anyOf"),
            type = "list",
            name = "anyOf",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IamPrincipal = schema.new({
    id = id.from(_N, "IamPrincipal"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "IamPrincipal", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "IamPrincipal", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
        }),
    },
})

M.MatchPrincipalEntry = schema.new({
    id = id.from(_N, "MatchPrincipalEntry"),
    type = "union",
    members = {
        iamPrincipal = schema.new({
            id = id.from(_N, "MatchPrincipalEntry", "iamPrincipal"),
            type = "structure",
            name = "iamPrincipal",
            target_id = id.from(_N, "IamPrincipal"),
            target = M.IamPrincipal,
        }),
    },
})

M.MatchPrincipals = schema.new({
    id = id.from(_N, "MatchPrincipals"),
    type = "structure",
    members = {
        anyOf = schema.new({
            id = id.from(_N, "MatchPrincipals", "anyOf"),
            type = "list",
            name = "anyOf",
            target_id = prelude.Document.id,
            list_member = M.MatchPrincipalEntry,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Condition = schema.new({
    id = id.from(_N, "Condition"),
    type = "union",
    members = {
        matchPrincipals = schema.new({
            id = id.from(_N, "Condition", "matchPrincipals"),
            type = "structure",
            name = "matchPrincipals",
            target_id = id.from(_N, "MatchPrincipals"),
            target = M.MatchPrincipals,
        }),
        matchPaths = schema.new({
            id = id.from(_N, "Condition", "matchPaths"),
            type = "structure",
            name = "matchPaths",
            target_id = id.from(_N, "MatchPaths"),
            target = M.MatchPaths,
        }),
    },
})

M.CreateGatewayRuleInput = schema.new({
    id = id.from(_N, "CreateGatewayRuleRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "CreateGatewayRuleInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateGatewayRuleInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "CreateGatewayRuleInput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditions = schema.new({
            id = id.from(_N, "CreateGatewayRuleInput", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.Condition,
        }),
        actions = schema.new({
            id = id.from(_N, "CreateGatewayRuleInput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGatewayRuleInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.SystemManagedBlock = schema.new({
    id = id.from(_N, "SystemManagedBlock"),
    type = "structure",
    members = {
        managedBy = schema.new({
            id = id.from(_N, "SystemManagedBlock", "managedBy"),
            type = "string",
            name = "managedBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateGatewayRuleOutput = schema.new({
    id = id.from(_N, "CreateGatewayRuleResponse"),
    type = "structure",
    members = {
        ruleId = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditions = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.Condition,
        }),
        actions = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        system = schema.new({
            id = id.from(_N, "CreateGatewayRuleOutput", "system"),
            type = "structure",
            name = "system",
            target_id = id.from(_N, "SystemManagedBlock"),
            target = M.SystemManagedBlock,
        }),
    },
})

M.DeleteGatewayRuleInput = schema.new({
    id = id.from(_N, "DeleteGatewayRuleRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "DeleteGatewayRuleInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleId = schema.new({
            id = id.from(_N, "DeleteGatewayRuleInput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGatewayRuleOutput = schema.new({
    id = id.from(_N, "DeleteGatewayRuleResponse"),
    type = "structure",
    members = {
        ruleId = schema.new({
            id = id.from(_N, "DeleteGatewayRuleOutput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteGatewayRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGatewayRuleInput = schema.new({
    id = id.from(_N, "GetGatewayRuleRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "GetGatewayRuleInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleId = schema.new({
            id = id.from(_N, "GetGatewayRuleInput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetGatewayRuleOutput = schema.new({
    id = id.from(_N, "GetGatewayRuleResponse"),
    type = "structure",
    members = {
        ruleId = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditions = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.Condition,
        }),
        actions = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        system = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "system"),
            type = "structure",
            name = "system",
            target_id = id.from(_N, "SystemManagedBlock"),
            target = M.SystemManagedBlock,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetGatewayRuleOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListGatewayRulesInput = schema.new({
    id = id.from(_N, "ListGatewayRulesRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "ListGatewayRulesInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListGatewayRulesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewayRulesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.GatewayRuleDetail = schema.new({
    id = id.from(_N, "GatewayRuleDetail"),
    type = "structure",
    members = {
        ruleId = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditions = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.Condition,
        }),
        actions = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        system = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "system"),
            type = "structure",
            name = "system",
            target_id = id.from(_N, "SystemManagedBlock"),
            target = M.SystemManagedBlock,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GatewayRuleDetail", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListGatewayRulesOutput = schema.new({
    id = id.from(_N, "ListGatewayRulesResponse"),
    type = "structure",
    members = {
        gatewayRules = schema.new({
            id = id.from(_N, "ListGatewayRulesOutput", "gatewayRules"),
            type = "list",
            name = "gatewayRules",
            target_id = prelude.Document.id,
            list_member = M.GatewayRuleDetail,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewayRulesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayRuleInput = schema.new({
    id = id.from(_N, "UpdateGatewayRuleRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "UpdateGatewayRuleInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ruleId = schema.new({
            id = id.from(_N, "UpdateGatewayRuleInput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "UpdateGatewayRuleInput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
        }),
        conditions = schema.new({
            id = id.from(_N, "UpdateGatewayRuleInput", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.Condition,
        }),
        actions = schema.new({
            id = id.from(_N, "UpdateGatewayRuleInput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGatewayRuleInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayRuleOutput = schema.new({
    id = id.from(_N, "UpdateGatewayRuleResponse"),
    type = "structure",
    members = {
        ruleId = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "ruleId"),
            type = "string",
            name = "ruleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayArn = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        priority = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "priority"),
            type = "integer",
            name = "priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        conditions = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "conditions"),
            type = "list",
            name = "conditions",
            target_id = prelude.Document.id,
            list_member = M.Condition,
        }),
        actions = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "actions"),
            type = "list",
            name = "actions",
            target_id = prelude.Document.id,
            list_member = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        system = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "system"),
            type = "structure",
            name = "system",
            target_id = id.from(_N, "SystemManagedBlock"),
            target = M.SystemManagedBlock,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateGatewayRuleOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GatewayApiKeyCredentialProvider = schema.new({
    id = id.from(_N, "GatewayApiKeyCredentialProvider"),
    type = "structure",
    members = {
        providerArn = schema.new({
            id = id.from(_N, "GatewayApiKeyCredentialProvider", "providerArn"),
            type = "string",
            name = "providerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialParameterName = schema.new({
            id = id.from(_N, "GatewayApiKeyCredentialProvider", "credentialParameterName"),
            type = "string",
            name = "credentialParameterName",
            target_id = prelude.String.id,
        }),
        credentialPrefix = schema.new({
            id = id.from(_N, "GatewayApiKeyCredentialProvider", "credentialPrefix"),
            type = "string",
            name = "credentialPrefix",
            target_id = prelude.String.id,
        }),
        credentialLocation = schema.new({
            id = id.from(_N, "GatewayApiKeyCredentialProvider", "credentialLocation"),
            type = "string",
            name = "credentialLocation",
            target_id = prelude.String.id,
        }),
    },
})

M.IamCredentialProvider = schema.new({
    id = id.from(_N, "IamCredentialProvider"),
    type = "structure",
    members = {
        service = schema.new({
            id = id.from(_N, "IamCredentialProvider", "service"),
            type = "string",
            name = "service",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        region = schema.new({
            id = id.from(_N, "IamCredentialProvider", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
    },
})

M.OAuthCredentialProvider = schema.new({
    id = id.from(_N, "OAuthCredentialProvider"),
    type = "structure",
    members = {
        providerArn = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "providerArn"),
            type = "string",
            name = "providerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        scopes = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "scopes"),
            type = "list",
            name = "scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customParameters = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "customParameters"),
            type = "map",
            name = "customParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        grantType = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "grantType"),
            type = "string",
            name = "grantType",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "CLIENT_CREDENTIALS" },
            },
        }),
        defaultReturnUrl = schema.new({
            id = id.from(_N, "OAuthCredentialProvider", "defaultReturnUrl"),
            type = "string",
            name = "defaultReturnUrl",
            target_id = prelude.String.id,
        }),
    },
})

M.CredentialProvider = schema.new({
    id = id.from(_N, "CredentialProvider"),
    type = "union",
    members = {
        oauthCredentialProvider = schema.new({
            id = id.from(_N, "CredentialProvider", "oauthCredentialProvider"),
            type = "structure",
            name = "oauthCredentialProvider",
            target_id = id.from(_N, "OAuthCredentialProvider"),
            target = M.OAuthCredentialProvider,
        }),
        apiKeyCredentialProvider = schema.new({
            id = id.from(_N, "CredentialProvider", "apiKeyCredentialProvider"),
            type = "structure",
            name = "apiKeyCredentialProvider",
            target_id = id.from(_N, "GatewayApiKeyCredentialProvider"),
            target = M.GatewayApiKeyCredentialProvider,
        }),
        iamCredentialProvider = schema.new({
            id = id.from(_N, "CredentialProvider", "iamCredentialProvider"),
            type = "structure",
            name = "iamCredentialProvider",
            target_id = id.from(_N, "IamCredentialProvider"),
            target = M.IamCredentialProvider,
        }),
    },
})

M.CredentialProviderConfiguration = schema.new({
    id = id.from(_N, "CredentialProviderConfiguration"),
    type = "structure",
    members = {
        credentialProviderType = schema.new({
            id = id.from(_N, "CredentialProviderConfiguration", "credentialProviderType"),
            type = "string",
            name = "credentialProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProvider = schema.new({
            id = id.from(_N, "CredentialProviderConfiguration", "credentialProvider"),
            type = "union",
            name = "credentialProvider",
            target_id = id.from(_N, "CredentialProvider"),
            target = M.CredentialProvider,
        }),
    },
})

M.MetadataConfiguration = schema.new({
    id = id.from(_N, "MetadataConfiguration"),
    type = "structure",
    members = {
        allowedRequestHeaders = schema.new({
            id = id.from(_N, "MetadataConfiguration", "allowedRequestHeaders"),
            type = "list",
            name = "allowedRequestHeaders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allowedQueryParameters = schema.new({
            id = id.from(_N, "MetadataConfiguration", "allowedQueryParameters"),
            type = "list",
            name = "allowedQueryParameters",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        allowedResponseHeaders = schema.new({
            id = id.from(_N, "MetadataConfiguration", "allowedResponseHeaders"),
            type = "list",
            name = "allowedResponseHeaders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RuntimeTargetConfiguration = schema.new({
    id = id.from(_N, "RuntimeTargetConfiguration"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "RuntimeTargetConfiguration", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        qualifier = schema.new({
            id = id.from(_N, "RuntimeTargetConfiguration", "qualifier"),
            type = "string",
            name = "qualifier",
            target_id = prelude.String.id,
        }),
    },
})

M.HttpTargetConfiguration = schema.new({
    id = id.from(_N, "HttpTargetConfiguration"),
    type = "union",
    members = {
        agentcoreRuntime = schema.new({
            id = id.from(_N, "HttpTargetConfiguration", "agentcoreRuntime"),
            type = "structure",
            name = "agentcoreRuntime",
            target_id = id.from(_N, "RuntimeTargetConfiguration"),
            target = M.RuntimeTargetConfiguration,
        }),
    },
})

M.ApiGatewayToolFilter = schema.new({
    id = id.from(_N, "ApiGatewayToolFilter"),
    type = "structure",
    members = {
        filterPath = schema.new({
            id = id.from(_N, "ApiGatewayToolFilter", "filterPath"),
            type = "string",
            name = "filterPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        methods = schema.new({
            id = id.from(_N, "ApiGatewayToolFilter", "methods"),
            type = "list",
            name = "methods",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApiGatewayToolOverride = schema.new({
    id = id.from(_N, "ApiGatewayToolOverride"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ApiGatewayToolOverride", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ApiGatewayToolOverride", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        path = schema.new({
            id = id.from(_N, "ApiGatewayToolOverride", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        method = schema.new({
            id = id.from(_N, "ApiGatewayToolOverride", "method"),
            type = "string",
            name = "method",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApiGatewayToolConfiguration = schema.new({
    id = id.from(_N, "ApiGatewayToolConfiguration"),
    type = "structure",
    members = {
        toolOverrides = schema.new({
            id = id.from(_N, "ApiGatewayToolConfiguration", "toolOverrides"),
            type = "list",
            name = "toolOverrides",
            target_id = prelude.Document.id,
            list_member = M.ApiGatewayToolOverride,
        }),
        toolFilters = schema.new({
            id = id.from(_N, "ApiGatewayToolConfiguration", "toolFilters"),
            type = "list",
            name = "toolFilters",
            target_id = prelude.Document.id,
            list_member = M.ApiGatewayToolFilter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApiGatewayTargetConfiguration = schema.new({
    id = id.from(_N, "ApiGatewayTargetConfiguration"),
    type = "structure",
    members = {
        restApiId = schema.new({
            id = id.from(_N, "ApiGatewayTargetConfiguration", "restApiId"),
            type = "string",
            name = "restApiId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        stage = schema.new({
            id = id.from(_N, "ApiGatewayTargetConfiguration", "stage"),
            type = "string",
            name = "stage",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiGatewayToolConfiguration = schema.new({
            id = id.from(_N, "ApiGatewayTargetConfiguration", "apiGatewayToolConfiguration"),
            type = "structure",
            name = "apiGatewayToolConfiguration",
            target_id = id.from(_N, "ApiGatewayToolConfiguration"),
            target = M.ApiGatewayToolConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.S3Configuration = schema.new({
    id = id.from(_N, "S3Configuration"),
    type = "structure",
    members = {
        uri = schema.new({
            id = id.from(_N, "S3Configuration", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
        bucketOwnerAccountId = schema.new({
            id = id.from(_N, "S3Configuration", "bucketOwnerAccountId"),
            type = "string",
            name = "bucketOwnerAccountId",
            target_id = prelude.String.id,
        }),
    },
})

M.McpToolSchemaConfiguration = schema.new({
    id = id.from(_N, "McpToolSchemaConfiguration"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "McpToolSchemaConfiguration", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        inlinePayload = schema.new({
            id = id.from(_N, "McpToolSchemaConfiguration", "inlinePayload"),
            type = "string",
            name = "inlinePayload",
            target_id = prelude.String.id,
        }),
    },
})

M.McpServerTargetConfiguration = schema.new({
    id = id.from(_N, "McpServerTargetConfiguration"),
    type = "structure",
    members = {
        endpoint = schema.new({
            id = id.from(_N, "McpServerTargetConfiguration", "endpoint"),
            type = "string",
            name = "endpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        mcpToolSchema = schema.new({
            id = id.from(_N, "McpServerTargetConfiguration", "mcpToolSchema"),
            type = "union",
            name = "mcpToolSchema",
            target_id = id.from(_N, "McpToolSchemaConfiguration"),
            target = M.McpToolSchemaConfiguration,
        }),
        listingMode = schema.new({
            id = id.from(_N, "McpServerTargetConfiguration", "listingMode"),
            type = "string",
            name = "listingMode",
            target_id = prelude.String.id,
        }),
        resourcePriority = schema.new({
            id = id.from(_N, "McpServerTargetConfiguration", "resourcePriority"),
            type = "integer",
            name = "resourcePriority",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ApiSchemaConfiguration = schema.new({
    id = id.from(_N, "ApiSchemaConfiguration"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "ApiSchemaConfiguration", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        inlinePayload = schema.new({
            id = id.from(_N, "ApiSchemaConfiguration", "inlinePayload"),
            type = "string",
            name = "inlinePayload",
            target_id = prelude.String.id,
        }),
    },
})

M.OAuth2AuthorizationData = schema.new({
    id = id.from(_N, "OAuth2AuthorizationData"),
    type = "structure",
    members = {
        authorizationUrl = schema.new({
            id = id.from(_N, "OAuth2AuthorizationData", "authorizationUrl"),
            type = "string",
            name = "authorizationUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        userId = schema.new({
            id = id.from(_N, "OAuth2AuthorizationData", "userId"),
            type = "string",
            name = "userId",
            target_id = prelude.String.id,
        }),
    },
})

M.AuthorizationData = schema.new({
    id = id.from(_N, "AuthorizationData"),
    type = "union",
    members = {
        oauth2 = schema.new({
            id = id.from(_N, "AuthorizationData", "oauth2"),
            type = "structure",
            name = "oauth2",
            target_id = id.from(_N, "OAuth2AuthorizationData"),
            target = M.OAuth2AuthorizationData,
        }),
    },
})

M.ManagedResourceDetails = schema.new({
    id = id.from(_N, "ManagedResourceDetails"),
    type = "structure",
    members = {
        domain = schema.new({
            id = id.from(_N, "ManagedResourceDetails", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
        }),
        resourceGatewayArn = schema.new({
            id = id.from(_N, "ManagedResourceDetails", "resourceGatewayArn"),
            type = "string",
            name = "resourceGatewayArn",
            target_id = prelude.String.id,
        }),
        resourceAssociationArn = schema.new({
            id = id.from(_N, "ManagedResourceDetails", "resourceAssociationArn"),
            type = "string",
            name = "resourceAssociationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGatewayTargetInput = schema.new({
    id = id.from(_N, "DeleteGatewayTargetRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "DeleteGatewayTargetInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "DeleteGatewayTargetInput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteGatewayTargetOutput = schema.new({
    id = id.from(_N, "DeleteGatewayTargetResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "DeleteGatewayTargetOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "DeleteGatewayTargetOutput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteGatewayTargetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "DeleteGatewayTargetOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.GetGatewayTargetInput = schema.new({
    id = id.from(_N, "GetGatewayTargetRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "GetGatewayTargetInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "GetGatewayTargetInput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListGatewayTargetsInput = schema.new({
    id = id.from(_N, "ListGatewayTargetsRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "ListGatewayTargetsInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListGatewayTargetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewayTargetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.TargetSummary = schema.new({
    id = id.from(_N, "TargetSummary"),
    type = "structure",
    members = {
        targetId = schema.new({
            id = id.from(_N, "TargetSummary", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "TargetSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "TargetSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "TargetSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "TargetSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "TargetSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resourcePriority = schema.new({
            id = id.from(_N, "TargetSummary", "resourcePriority"),
            type = "integer",
            name = "resourcePriority",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListGatewayTargetsOutput = schema.new({
    id = id.from(_N, "ListGatewayTargetsResponse"),
    type = "structure",
    members = {
        items = schema.new({
            id = id.from(_N, "ListGatewayTargetsOutput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.TargetSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListGatewayTargetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SynchronizeGatewayTargetsInput = schema.new({
    id = id.from(_N, "SynchronizeGatewayTargetsRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "SynchronizeGatewayTargetsInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetIdList = schema.new({
            id = id.from(_N, "SynchronizeGatewayTargetsInput", "targetIdList"),
            type = "list",
            name = "targetIdList",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetResourcePolicyInput = schema.new({
    id = id.from(_N, "GetResourcePolicyRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "GetResourcePolicyInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResourcePolicyOutput = schema.new({
    id = id.from(_N, "GetResourcePolicyResponse"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "GetResourcePolicyOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTokenVaultInput = schema.new({
    id = id.from(_N, "GetTokenVaultRequest"),
    type = "structure",
    members = {
        tokenVaultId = schema.new({
            id = id.from(_N, "GetTokenVaultInput", "tokenVaultId"),
            type = "string",
            name = "tokenVaultId",
            target_id = prelude.String.id,
        }),
    },
})

M.KmsConfiguration = schema.new({
    id = id.from(_N, "KmsConfiguration"),
    type = "structure",
    members = {
        keyType = schema.new({
            id = id.from(_N, "KmsConfiguration", "keyType"),
            type = "string",
            name = "keyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyArn = schema.new({
            id = id.from(_N, "KmsConfiguration", "kmsKeyArn"),
            type = "string",
            name = "kmsKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetTokenVaultOutput = schema.new({
    id = id.from(_N, "GetTokenVaultResponse"),
    type = "structure",
    members = {
        tokenVaultId = schema.new({
            id = id.from(_N, "GetTokenVaultOutput", "tokenVaultId"),
            type = "string",
            name = "tokenVaultId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsConfiguration = schema.new({
            id = id.from(_N, "GetTokenVaultOutput", "kmsConfiguration"),
            type = "structure",
            name = "kmsConfiguration",
            target_id = id.from(_N, "KmsConfiguration"),
            target = M.KmsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "GetTokenVaultOutput", "lastModifiedDate"),
            type = "timestamp",
            name = "lastModifiedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessAgentCoreRuntimeEnvironmentRequest = schema.new({
    id = id.from(_N, "HarnessAgentCoreRuntimeEnvironmentRequest"),
    type = "structure",
    members = {
        lifecycleConfiguration = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironmentRequest", "lifecycleConfiguration"),
            type = "structure",
            name = "lifecycleConfiguration",
            target_id = id.from(_N, "LifecycleConfiguration"),
            target = M.LifecycleConfiguration,
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironmentRequest", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
        }),
        filesystemConfigurations = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironmentRequest", "filesystemConfigurations"),
            type = "list",
            name = "filesystemConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FilesystemConfiguration,
        }),
    },
})

M.HarnessEnvironmentProviderRequest = schema.new({
    id = id.from(_N, "HarnessEnvironmentProviderRequest"),
    type = "union",
    members = {
        agentCoreRuntimeEnvironment = schema.new({
            id = id.from(_N, "HarnessEnvironmentProviderRequest", "agentCoreRuntimeEnvironment"),
            type = "structure",
            name = "agentCoreRuntimeEnvironment",
            target_id = id.from(_N, "HarnessAgentCoreRuntimeEnvironmentRequest"),
            target = M.HarnessAgentCoreRuntimeEnvironmentRequest,
        }),
    },
})

M.HarnessEnvironmentArtifact = schema.new({
    id = id.from(_N, "HarnessEnvironmentArtifact"),
    type = "union",
    members = {
        containerConfiguration = schema.new({
            id = id.from(_N, "HarnessEnvironmentArtifact", "containerConfiguration"),
            type = "structure",
            name = "containerConfiguration",
            target_id = id.from(_N, "ContainerConfiguration"),
            target = M.ContainerConfiguration,
        }),
    },
})

M.HarnessAgentCoreMemoryRetrievalConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreMemoryRetrievalConfig"),
    type = "structure",
    members = {
        topK = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryRetrievalConfig", "topK"),
            type = "integer",
            name = "topK",
            target_id = prelude.Integer.id,
        }),
        relevanceScore = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryRetrievalConfig", "relevanceScore"),
            type = "float",
            name = "relevanceScore",
            target_id = prelude.Float.id,
        }),
        strategyId = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryRetrievalConfig", "strategyId"),
            type = "string",
            name = "strategyId",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessAgentCoreMemoryConfiguration = schema.new({
    id = id.from(_N, "HarnessAgentCoreMemoryConfiguration"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryConfiguration", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actorId = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryConfiguration", "actorId"),
            type = "string",
            name = "actorId",
            target_id = prelude.String.id,
        }),
        messagesCount = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryConfiguration", "messagesCount"),
            type = "integer",
            name = "messagesCount",
            target_id = prelude.Integer.id,
        }),
        retrievalConfig = schema.new({
            id = id.from(_N, "HarnessAgentCoreMemoryConfiguration", "retrievalConfig"),
            type = "map",
            name = "retrievalConfig",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.HarnessAgentCoreMemoryRetrievalConfig,
        }),
    },
})

M.HarnessMemoryConfiguration = schema.new({
    id = id.from(_N, "HarnessMemoryConfiguration"),
    type = "union",
    members = {
        agentCoreMemoryConfiguration = schema.new({
            id = id.from(_N, "HarnessMemoryConfiguration", "agentCoreMemoryConfiguration"),
            type = "structure",
            name = "agentCoreMemoryConfiguration",
            target_id = id.from(_N, "HarnessAgentCoreMemoryConfiguration"),
            target = M.HarnessAgentCoreMemoryConfiguration,
        }),
    },
})

M.HarnessBedrockModelConfig = schema.new({
    id = id.from(_N, "HarnessBedrockModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxTokens = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "HarnessBedrockModelConfig", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
    },
})

M.HarnessGeminiModelConfig = schema.new({
    id = id.from(_N, "HarnessGeminiModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiKeyArn = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "apiKeyArn"),
            type = "string",
            name = "apiKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxTokens = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
        topK = schema.new({
            id = id.from(_N, "HarnessGeminiModelConfig", "topK"),
            type = "integer",
            name = "topK",
            target_id = prelude.Integer.id,
        }),
    },
})

M.HarnessOpenAiModelConfig = schema.new({
    id = id.from(_N, "HarnessOpenAiModelConfig"),
    type = "structure",
    members = {
        modelId = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        apiKeyArn = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "apiKeyArn"),
            type = "string",
            name = "apiKeyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxTokens = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        temperature = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "temperature"),
            type = "float",
            name = "temperature",
            target_id = prelude.Float.id,
        }),
        topP = schema.new({
            id = id.from(_N, "HarnessOpenAiModelConfig", "topP"),
            type = "float",
            name = "topP",
            target_id = prelude.Float.id,
        }),
    },
})

M.HarnessModelConfiguration = schema.new({
    id = id.from(_N, "HarnessModelConfiguration"),
    type = "union",
    members = {
        bedrockModelConfig = schema.new({
            id = id.from(_N, "HarnessModelConfiguration", "bedrockModelConfig"),
            type = "structure",
            name = "bedrockModelConfig",
            target_id = id.from(_N, "HarnessBedrockModelConfig"),
            target = M.HarnessBedrockModelConfig,
        }),
        openAiModelConfig = schema.new({
            id = id.from(_N, "HarnessModelConfiguration", "openAiModelConfig"),
            type = "structure",
            name = "openAiModelConfig",
            target_id = id.from(_N, "HarnessOpenAiModelConfig"),
            target = M.HarnessOpenAiModelConfig,
        }),
        geminiModelConfig = schema.new({
            id = id.from(_N, "HarnessModelConfiguration", "geminiModelConfig"),
            type = "structure",
            name = "geminiModelConfig",
            target_id = id.from(_N, "HarnessGeminiModelConfig"),
            target = M.HarnessGeminiModelConfig,
        }),
    },
})

M.HarnessSkill = schema.new({
    id = id.from(_N, "HarnessSkill"),
    type = "union",
    members = {
        path = schema.new({
            id = id.from(_N, "HarnessSkill", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessSystemContentBlock = schema.new({
    id = id.from(_N, "HarnessSystemContentBlock"),
    type = "union",
    members = {
        text = schema.new({
            id = id.from(_N, "HarnessSystemContentBlock", "text"),
            type = "string",
            name = "text",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessAgentCoreBrowserConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreBrowserConfig"),
    type = "structure",
    members = {
        browserArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreBrowserConfig", "browserArn"),
            type = "string",
            name = "browserArn",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessAgentCoreCodeInterpreterConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreCodeInterpreterConfig"),
    type = "structure",
    members = {
        codeInterpreterArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreCodeInterpreterConfig", "codeInterpreterArn"),
            type = "string",
            name = "codeInterpreterArn",
            target_id = prelude.String.id,
        }),
    },
})

M.Unit = prelude.Unit

M.HarnessGatewayOutboundAuth = schema.new({
    id = id.from(_N, "HarnessGatewayOutboundAuth"),
    type = "union",
    members = {
        awsIam = schema.new({
            id = id.from(_N, "HarnessGatewayOutboundAuth", "awsIam"),
            type = "structure",
            name = "awsIam",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
        none = schema.new({
            id = id.from(_N, "HarnessGatewayOutboundAuth", "none"),
            type = "structure",
            name = "none",
            target_id = id.from(_N, "Unit"),
            target = M.Unit,
        }),
        oauth = schema.new({
            id = id.from(_N, "HarnessGatewayOutboundAuth", "oauth"),
            type = "structure",
            name = "oauth",
            target_id = id.from(_N, "OAuthCredentialProvider"),
            target = M.OAuthCredentialProvider,
        }),
    },
})

M.HarnessAgentCoreGatewayConfig = schema.new({
    id = id.from(_N, "HarnessAgentCoreGatewayConfig"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreGatewayConfig", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outboundAuth = schema.new({
            id = id.from(_N, "HarnessAgentCoreGatewayConfig", "outboundAuth"),
            type = "union",
            name = "outboundAuth",
            target_id = id.from(_N, "HarnessGatewayOutboundAuth"),
            target = M.HarnessGatewayOutboundAuth,
        }),
    },
})

M.HarnessInlineFunctionConfig = schema.new({
    id = id.from(_N, "HarnessInlineFunctionConfig"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "HarnessInlineFunctionConfig", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputSchema = schema.new({
            id = id.from(_N, "HarnessInlineFunctionConfig", "inputSchema"),
            type = "document",
            name = "inputSchema",
            target_id = prelude.Document.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HarnessRemoteMcpConfig = schema.new({
    id = id.from(_N, "HarnessRemoteMcpConfig"),
    type = "structure",
    members = {
        url = schema.new({
            id = id.from(_N, "HarnessRemoteMcpConfig", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        headers = schema.new({
            id = id.from(_N, "HarnessRemoteMcpConfig", "headers"),
            type = "map",
            name = "headers",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.HarnessToolConfiguration = schema.new({
    id = id.from(_N, "HarnessToolConfiguration"),
    type = "union",
    members = {
        remoteMcp = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "remoteMcp"),
            type = "structure",
            name = "remoteMcp",
            target_id = id.from(_N, "HarnessRemoteMcpConfig"),
            target = M.HarnessRemoteMcpConfig,
        }),
        agentCoreBrowser = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "agentCoreBrowser"),
            type = "structure",
            name = "agentCoreBrowser",
            target_id = id.from(_N, "HarnessAgentCoreBrowserConfig"),
            target = M.HarnessAgentCoreBrowserConfig,
        }),
        agentCoreGateway = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "agentCoreGateway"),
            type = "structure",
            name = "agentCoreGateway",
            target_id = id.from(_N, "HarnessAgentCoreGatewayConfig"),
            target = M.HarnessAgentCoreGatewayConfig,
        }),
        inlineFunction = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "inlineFunction"),
            type = "structure",
            name = "inlineFunction",
            target_id = id.from(_N, "HarnessInlineFunctionConfig"),
            target = M.HarnessInlineFunctionConfig,
        }),
        agentCoreCodeInterpreter = schema.new({
            id = id.from(_N, "HarnessToolConfiguration", "agentCoreCodeInterpreter"),
            type = "structure",
            name = "agentCoreCodeInterpreter",
            target_id = id.from(_N, "HarnessAgentCoreCodeInterpreterConfig"),
            target = M.HarnessAgentCoreCodeInterpreterConfig,
        }),
    },
})

M.HarnessTool = schema.new({
    id = id.from(_N, "HarnessTool"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "HarnessTool", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "HarnessTool", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        config = schema.new({
            id = id.from(_N, "HarnessTool", "config"),
            type = "union",
            name = "config",
            target_id = id.from(_N, "HarnessToolConfiguration"),
            target = M.HarnessToolConfiguration,
        }),
    },
})

M.HarnessSlidingWindowConfiguration = schema.new({
    id = id.from(_N, "HarnessSlidingWindowConfiguration"),
    type = "structure",
    members = {
        messagesCount = schema.new({
            id = id.from(_N, "HarnessSlidingWindowConfiguration", "messagesCount"),
            type = "integer",
            name = "messagesCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.HarnessSummarizationConfiguration = schema.new({
    id = id.from(_N, "HarnessSummarizationConfiguration"),
    type = "structure",
    members = {
        summaryRatio = schema.new({
            id = id.from(_N, "HarnessSummarizationConfiguration", "summaryRatio"),
            type = "float",
            name = "summaryRatio",
            target_id = prelude.Float.id,
        }),
        preserveRecentMessages = schema.new({
            id = id.from(_N, "HarnessSummarizationConfiguration", "preserveRecentMessages"),
            type = "integer",
            name = "preserveRecentMessages",
            target_id = prelude.Integer.id,
        }),
        summarizationSystemPrompt = schema.new({
            id = id.from(_N, "HarnessSummarizationConfiguration", "summarizationSystemPrompt"),
            type = "string",
            name = "summarizationSystemPrompt",
            target_id = prelude.String.id,
        }),
    },
})

M.HarnessTruncationStrategyConfiguration = schema.new({
    id = id.from(_N, "HarnessTruncationStrategyConfiguration"),
    type = "union",
    members = {
        slidingWindow = schema.new({
            id = id.from(_N, "HarnessTruncationStrategyConfiguration", "slidingWindow"),
            type = "structure",
            name = "slidingWindow",
            target_id = id.from(_N, "HarnessSlidingWindowConfiguration"),
            target = M.HarnessSlidingWindowConfiguration,
        }),
        summarization = schema.new({
            id = id.from(_N, "HarnessTruncationStrategyConfiguration", "summarization"),
            type = "structure",
            name = "summarization",
            target_id = id.from(_N, "HarnessSummarizationConfiguration"),
            target = M.HarnessSummarizationConfiguration,
        }),
    },
})

M.HarnessTruncationConfiguration = schema.new({
    id = id.from(_N, "HarnessTruncationConfiguration"),
    type = "structure",
    members = {
        strategy = schema.new({
            id = id.from(_N, "HarnessTruncationConfiguration", "strategy"),
            type = "string",
            name = "strategy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        config = schema.new({
            id = id.from(_N, "HarnessTruncationConfiguration", "config"),
            type = "union",
            name = "config",
            target_id = id.from(_N, "HarnessTruncationStrategyConfiguration"),
            target = M.HarnessTruncationStrategyConfiguration,
        }),
    },
})

M.CreateHarnessInput = schema.new({
    id = id.from(_N, "CreateHarnessRequest"),
    type = "structure",
    members = {
        harnessName = schema.new({
            id = id.from(_N, "CreateHarnessInput", "harnessName"),
            type = "string",
            name = "harnessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateHarnessInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "CreateHarnessInput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environment = schema.new({
            id = id.from(_N, "CreateHarnessInput", "environment"),
            type = "union",
            name = "environment",
            target_id = id.from(_N, "HarnessEnvironmentProviderRequest"),
            target = M.HarnessEnvironmentProviderRequest,
        }),
        environmentArtifact = schema.new({
            id = id.from(_N, "CreateHarnessInput", "environmentArtifact"),
            type = "union",
            name = "environmentArtifact",
            target_id = id.from(_N, "HarnessEnvironmentArtifact"),
            target = M.HarnessEnvironmentArtifact,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "CreateHarnessInput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "CreateHarnessInput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        model = schema.new({
            id = id.from(_N, "CreateHarnessInput", "model"),
            type = "union",
            name = "model",
            target_id = id.from(_N, "HarnessModelConfiguration"),
            target = M.HarnessModelConfiguration,
        }),
        systemPrompt = schema.new({
            id = id.from(_N, "CreateHarnessInput", "systemPrompt"),
            type = "list",
            name = "systemPrompt",
            target_id = prelude.Document.id,
            list_member = M.HarnessSystemContentBlock,
        }),
        tools = schema.new({
            id = id.from(_N, "CreateHarnessInput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.HarnessTool,
        }),
        skills = schema.new({
            id = id.from(_N, "CreateHarnessInput", "skills"),
            type = "list",
            name = "skills",
            target_id = prelude.Document.id,
            list_member = M.HarnessSkill,
        }),
        allowedTools = schema.new({
            id = id.from(_N, "CreateHarnessInput", "allowedTools"),
            type = "list",
            name = "allowedTools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memory = schema.new({
            id = id.from(_N, "CreateHarnessInput", "memory"),
            type = "union",
            name = "memory",
            target_id = id.from(_N, "HarnessMemoryConfiguration"),
            target = M.HarnessMemoryConfiguration,
        }),
        truncation = schema.new({
            id = id.from(_N, "CreateHarnessInput", "truncation"),
            type = "structure",
            name = "truncation",
            target_id = id.from(_N, "HarnessTruncationConfiguration"),
            target = M.HarnessTruncationConfiguration,
        }),
        maxIterations = schema.new({
            id = id.from(_N, "CreateHarnessInput", "maxIterations"),
            type = "integer",
            name = "maxIterations",
            target_id = prelude.Integer.id,
        }),
        maxTokens = schema.new({
            id = id.from(_N, "CreateHarnessInput", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "CreateHarnessInput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateHarnessInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.HarnessAgentCoreRuntimeEnvironment = schema.new({
    id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment"),
    type = "structure",
    members = {
        agentRuntimeArn = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment", "agentRuntimeArn"),
            type = "string",
            name = "agentRuntimeArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeName = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment", "agentRuntimeName"),
            type = "string",
            name = "agentRuntimeName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentRuntimeId = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment", "agentRuntimeId"),
            type = "string",
            name = "agentRuntimeId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lifecycleConfiguration = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment", "lifecycleConfiguration"),
            type = "structure",
            name = "lifecycleConfiguration",
            target_id = id.from(_N, "LifecycleConfiguration"),
            target = M.LifecycleConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        networkConfiguration = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment", "networkConfiguration"),
            type = "structure",
            name = "networkConfiguration",
            target_id = id.from(_N, "NetworkConfiguration"),
            target = M.NetworkConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filesystemConfigurations = schema.new({
            id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment", "filesystemConfigurations"),
            type = "list",
            name = "filesystemConfigurations",
            target_id = prelude.Document.id,
            list_member = M.FilesystemConfiguration,
        }),
    },
})

M.HarnessEnvironmentProvider = schema.new({
    id = id.from(_N, "HarnessEnvironmentProvider"),
    type = "union",
    members = {
        agentCoreRuntimeEnvironment = schema.new({
            id = id.from(_N, "HarnessEnvironmentProvider", "agentCoreRuntimeEnvironment"),
            type = "structure",
            name = "agentCoreRuntimeEnvironment",
            target_id = id.from(_N, "HarnessAgentCoreRuntimeEnvironment"),
            target = M.HarnessAgentCoreRuntimeEnvironment,
        }),
    },
})

M.Harness = schema.new({
    id = id.from(_N, "Harness"),
    type = "structure",
    members = {
        harnessId = schema.new({
            id = id.from(_N, "Harness", "harnessId"),
            type = "string",
            name = "harnessId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        harnessName = schema.new({
            id = id.from(_N, "Harness", "harnessName"),
            type = "string",
            name = "harnessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "Harness", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "Harness", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "Harness", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "Harness", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Harness", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        model = schema.new({
            id = id.from(_N, "Harness", "model"),
            type = "union",
            name = "model",
            target_id = id.from(_N, "HarnessModelConfiguration"),
            target = M.HarnessModelConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        systemPrompt = schema.new({
            id = id.from(_N, "Harness", "systemPrompt"),
            type = "list",
            name = "systemPrompt",
            target_id = prelude.Document.id,
            list_member = M.HarnessSystemContentBlock,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tools = schema.new({
            id = id.from(_N, "Harness", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.HarnessTool,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        skills = schema.new({
            id = id.from(_N, "Harness", "skills"),
            type = "list",
            name = "skills",
            target_id = prelude.Document.id,
            list_member = M.HarnessSkill,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedTools = schema.new({
            id = id.from(_N, "Harness", "allowedTools"),
            type = "list",
            name = "allowedTools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        truncation = schema.new({
            id = id.from(_N, "Harness", "truncation"),
            type = "structure",
            name = "truncation",
            target_id = id.from(_N, "HarnessTruncationConfiguration"),
            target = M.HarnessTruncationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environment = schema.new({
            id = id.from(_N, "Harness", "environment"),
            type = "union",
            name = "environment",
            target_id = id.from(_N, "HarnessEnvironmentProvider"),
            target = M.HarnessEnvironmentProvider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentArtifact = schema.new({
            id = id.from(_N, "Harness", "environmentArtifact"),
            type = "union",
            name = "environmentArtifact",
            target_id = id.from(_N, "HarnessEnvironmentArtifact"),
            target = M.HarnessEnvironmentArtifact,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "Harness", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "Harness", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        memory = schema.new({
            id = id.from(_N, "Harness", "memory"),
            type = "union",
            name = "memory",
            target_id = id.from(_N, "HarnessMemoryConfiguration"),
            target = M.HarnessMemoryConfiguration,
        }),
        maxIterations = schema.new({
            id = id.from(_N, "Harness", "maxIterations"),
            type = "integer",
            name = "maxIterations",
            target_id = prelude.Integer.id,
        }),
        maxTokens = schema.new({
            id = id.from(_N, "Harness", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "Harness", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "Harness", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHarnessOutput = schema.new({
    id = id.from(_N, "CreateHarnessResponse"),
    type = "structure",
    members = {
        harness = schema.new({
            id = id.from(_N, "CreateHarnessOutput", "harness"),
            type = "structure",
            name = "harness",
            target_id = id.from(_N, "Harness"),
            target = M.Harness,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteHarnessInput = schema.new({
    id = id.from(_N, "DeleteHarnessRequest"),
    type = "structure",
    members = {
        harnessId = schema.new({
            id = id.from(_N, "DeleteHarnessInput", "harnessId"),
            type = "string",
            name = "harnessId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteHarnessInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteHarnessOutput = schema.new({
    id = id.from(_N, "DeleteHarnessResponse"),
    type = "structure",
    members = {
        harness = schema.new({
            id = id.from(_N, "DeleteHarnessOutput", "harness"),
            type = "structure",
            name = "harness",
            target_id = id.from(_N, "Harness"),
            target = M.Harness,
        }),
    },
})

M.GetHarnessInput = schema.new({
    id = id.from(_N, "GetHarnessRequest"),
    type = "structure",
    members = {
        harnessId = schema.new({
            id = id.from(_N, "GetHarnessInput", "harnessId"),
            type = "string",
            name = "harnessId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetHarnessOutput = schema.new({
    id = id.from(_N, "GetHarnessResponse"),
    type = "structure",
    members = {
        harness = schema.new({
            id = id.from(_N, "GetHarnessOutput", "harness"),
            type = "structure",
            name = "harness",
            target_id = id.from(_N, "Harness"),
            target = M.Harness,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHarnessesInput = schema.new({
    id = id.from(_N, "ListHarnessesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListHarnessesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListHarnessesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.HarnessSummary = schema.new({
    id = id.from(_N, "HarnessSummary"),
    type = "structure",
    members = {
        harnessId = schema.new({
            id = id.from(_N, "HarnessSummary", "harnessId"),
            type = "string",
            name = "harnessId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        harnessName = schema.new({
            id = id.from(_N, "HarnessSummary", "harnessName"),
            type = "string",
            name = "harnessName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "HarnessSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "HarnessSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "HarnessSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "HarnessSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHarnessesOutput = schema.new({
    id = id.from(_N, "ListHarnessesResponse"),
    type = "structure",
    members = {
        harnesses = schema.new({
            id = id.from(_N, "ListHarnessesOutput", "harnesses"),
            type = "list",
            name = "harnesses",
            target_id = prelude.Document.id,
            list_member = M.HarnessSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListHarnessesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatedAuthorizerConfiguration = schema.new({
    id = id.from(_N, "UpdatedAuthorizerConfiguration"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedAuthorizerConfiguration", "optionalValue"),
            type = "union",
            name = "optionalValue",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
    },
})

M.UpdatedHarnessEnvironmentArtifact = schema.new({
    id = id.from(_N, "UpdatedHarnessEnvironmentArtifact"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedHarnessEnvironmentArtifact", "optionalValue"),
            type = "union",
            name = "optionalValue",
            target_id = id.from(_N, "HarnessEnvironmentArtifact"),
            target = M.HarnessEnvironmentArtifact,
        }),
    },
})

M.UpdatedHarnessMemoryConfiguration = schema.new({
    id = id.from(_N, "UpdatedHarnessMemoryConfiguration"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedHarnessMemoryConfiguration", "optionalValue"),
            type = "union",
            name = "optionalValue",
            target_id = id.from(_N, "HarnessMemoryConfiguration"),
            target = M.HarnessMemoryConfiguration,
        }),
    },
})

M.UpdateHarnessInput = schema.new({
    id = id.from(_N, "UpdateHarnessRequest"),
    type = "structure",
    members = {
        harnessId = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "harnessId"),
            type = "string",
            name = "harnessId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        executionRoleArn = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "executionRoleArn"),
            type = "string",
            name = "executionRoleArn",
            target_id = prelude.String.id,
        }),
        environment = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "environment"),
            type = "union",
            name = "environment",
            target_id = id.from(_N, "HarnessEnvironmentProviderRequest"),
            target = M.HarnessEnvironmentProviderRequest,
        }),
        environmentArtifact = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "environmentArtifact"),
            type = "structure",
            name = "environmentArtifact",
            target_id = id.from(_N, "UpdatedHarnessEnvironmentArtifact"),
            target = M.UpdatedHarnessEnvironmentArtifact,
        }),
        environmentVariables = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "environmentVariables"),
            type = "map",
            name = "environmentVariables",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "authorizerConfiguration"),
            type = "structure",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "UpdatedAuthorizerConfiguration"),
            target = M.UpdatedAuthorizerConfiguration,
        }),
        model = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "model"),
            type = "union",
            name = "model",
            target_id = id.from(_N, "HarnessModelConfiguration"),
            target = M.HarnessModelConfiguration,
        }),
        systemPrompt = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "systemPrompt"),
            type = "list",
            name = "systemPrompt",
            target_id = prelude.Document.id,
            list_member = M.HarnessSystemContentBlock,
        }),
        tools = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "tools"),
            type = "list",
            name = "tools",
            target_id = prelude.Document.id,
            list_member = M.HarnessTool,
        }),
        skills = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "skills"),
            type = "list",
            name = "skills",
            target_id = prelude.Document.id,
            list_member = M.HarnessSkill,
        }),
        allowedTools = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "allowedTools"),
            type = "list",
            name = "allowedTools",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memory = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "memory"),
            type = "structure",
            name = "memory",
            target_id = id.from(_N, "UpdatedHarnessMemoryConfiguration"),
            target = M.UpdatedHarnessMemoryConfiguration,
        }),
        truncation = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "truncation"),
            type = "structure",
            name = "truncation",
            target_id = id.from(_N, "HarnessTruncationConfiguration"),
            target = M.HarnessTruncationConfiguration,
        }),
        maxIterations = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "maxIterations"),
            type = "integer",
            name = "maxIterations",
            target_id = prelude.Integer.id,
        }),
        maxTokens = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "maxTokens"),
            type = "integer",
            name = "maxTokens",
            target_id = prelude.Integer.id,
        }),
        timeoutSeconds = schema.new({
            id = id.from(_N, "UpdateHarnessInput", "timeoutSeconds"),
            type = "integer",
            name = "timeoutSeconds",
            target_id = prelude.Integer.id,
        }),
    },
})

M.UpdateHarnessOutput = schema.new({
    id = id.from(_N, "UpdateHarnessResponse"),
    type = "structure",
    members = {
        harness = schema.new({
            id = id.from(_N, "UpdateHarnessOutput", "harness"),
            type = "structure",
            name = "harness",
            target_id = id.from(_N, "Harness"),
            target = M.Harness,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.IndexedKey = schema.new({
    id = id.from(_N, "IndexedKey"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "IndexedKey", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "IndexedKey", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EpisodicOverrideConsolidationConfigurationInput = schema.new({
    id = id.from(_N, "EpisodicOverrideConsolidationConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "EpisodicOverrideConsolidationConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "EpisodicOverrideConsolidationConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EpisodicOverrideExtractionConfigurationInput = schema.new({
    id = id.from(_N, "EpisodicOverrideExtractionConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "EpisodicOverrideExtractionConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "EpisodicOverrideExtractionConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NumberValidation = schema.new({
    id = id.from(_N, "NumberValidation"),
    type = "structure",
    members = {
        minValue = schema.new({
            id = id.from(_N, "NumberValidation", "minValue"),
            type = "double",
            name = "minValue",
            target_id = prelude.Double.id,
        }),
        maxValue = schema.new({
            id = id.from(_N, "NumberValidation", "maxValue"),
            type = "double",
            name = "maxValue",
            target_id = prelude.Double.id,
        }),
    },
})

M.StringListValidation = schema.new({
    id = id.from(_N, "StringListValidation"),
    type = "structure",
    members = {
        allowedValues = schema.new({
            id = id.from(_N, "StringListValidation", "allowedValues"),
            type = "list",
            name = "allowedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        maxItems = schema.new({
            id = id.from(_N, "StringListValidation", "maxItems"),
            type = "integer",
            name = "maxItems",
            target_id = prelude.Integer.id,
        }),
    },
})

M.StringValidation = schema.new({
    id = id.from(_N, "StringValidation"),
    type = "structure",
    members = {
        allowedValues = schema.new({
            id = id.from(_N, "StringValidation", "allowedValues"),
            type = "list",
            name = "allowedValues",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Validation = schema.new({
    id = id.from(_N, "Validation"),
    type = "union",
    members = {
        stringValidation = schema.new({
            id = id.from(_N, "Validation", "stringValidation"),
            type = "structure",
            name = "stringValidation",
            target_id = id.from(_N, "StringValidation"),
            target = M.StringValidation,
        }),
        stringListValidation = schema.new({
            id = id.from(_N, "Validation", "stringListValidation"),
            type = "structure",
            name = "stringListValidation",
            target_id = id.from(_N, "StringListValidation"),
            target = M.StringListValidation,
        }),
        numberValidation = schema.new({
            id = id.from(_N, "Validation", "numberValidation"),
            type = "structure",
            name = "numberValidation",
            target_id = id.from(_N, "NumberValidation"),
            target = M.NumberValidation,
        }),
    },
})

M.LlmExtractionConfig = schema.new({
    id = id.from(_N, "LlmExtractionConfig"),
    type = "structure",
    members = {
        llmExtractionInstruction = schema.new({
            id = id.from(_N, "LlmExtractionConfig", "llmExtractionInstruction"),
            type = "string",
            name = "llmExtractionInstruction",
            target_id = prelude.String.id,
        }),
        definition = schema.new({
            id = id.from(_N, "LlmExtractionConfig", "definition"),
            type = "string",
            name = "definition",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        validation = schema.new({
            id = id.from(_N, "LlmExtractionConfig", "validation"),
            type = "union",
            name = "validation",
            target_id = id.from(_N, "Validation"),
            target = M.Validation,
        }),
    },
})

M.ExtractionConfig = schema.new({
    id = id.from(_N, "ExtractionConfig"),
    type = "union",
    members = {
        llmExtractionConfig = schema.new({
            id = id.from(_N, "ExtractionConfig", "llmExtractionConfig"),
            type = "structure",
            name = "llmExtractionConfig",
            target_id = id.from(_N, "LlmExtractionConfig"),
            target = M.LlmExtractionConfig,
        }),
    },
})

M.MetadataSchemaEntry = schema.new({
    id = id.from(_N, "MetadataSchemaEntry"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "MetadataSchemaEntry", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "MetadataSchemaEntry", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        extractionConfig = schema.new({
            id = id.from(_N, "MetadataSchemaEntry", "extractionConfig"),
            type = "union",
            name = "extractionConfig",
            target_id = id.from(_N, "ExtractionConfig"),
            target = M.ExtractionConfig,
        }),
    },
})

M.MemoryRecordSchema = schema.new({
    id = id.from(_N, "MemoryRecordSchema"),
    type = "structure",
    members = {
        metadataSchema = schema.new({
            id = id.from(_N, "MemoryRecordSchema", "metadataSchema"),
            type = "list",
            name = "metadataSchema",
            target_id = prelude.Document.id,
            list_member = M.MetadataSchemaEntry,
        }),
    },
})

M.EpisodicOverrideReflectionConfigurationInput = schema.new({
    id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.EpisodicOverrideConfigurationInput = schema.new({
    id = id.from(_N, "EpisodicOverrideConfigurationInput"),
    type = "structure",
    members = {
        extraction = schema.new({
            id = id.from(_N, "EpisodicOverrideConfigurationInput", "extraction"),
            type = "structure",
            name = "extraction",
            target_id = id.from(_N, "EpisodicOverrideExtractionConfigurationInput"),
            target = M.EpisodicOverrideExtractionConfigurationInput,
        }),
        consolidation = schema.new({
            id = id.from(_N, "EpisodicOverrideConfigurationInput", "consolidation"),
            type = "structure",
            name = "consolidation",
            target_id = id.from(_N, "EpisodicOverrideConsolidationConfigurationInput"),
            target = M.EpisodicOverrideConsolidationConfigurationInput,
        }),
        reflection = schema.new({
            id = id.from(_N, "EpisodicOverrideConfigurationInput", "reflection"),
            type = "structure",
            name = "reflection",
            target_id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput"),
            target = M.EpisodicOverrideReflectionConfigurationInput,
        }),
    },
})

M.InvocationConfigurationInput = schema.new({
    id = id.from(_N, "InvocationConfigurationInput"),
    type = "structure",
    members = {
        topicArn = schema.new({
            id = id.from(_N, "InvocationConfigurationInput", "topicArn"),
            type = "string",
            name = "topicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payloadDeliveryBucketName = schema.new({
            id = id.from(_N, "InvocationConfigurationInput", "payloadDeliveryBucketName"),
            type = "string",
            name = "payloadDeliveryBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MessageBasedTriggerInput = schema.new({
    id = id.from(_N, "MessageBasedTriggerInput"),
    type = "structure",
    members = {
        messageCount = schema.new({
            id = id.from(_N, "MessageBasedTriggerInput", "messageCount"),
            type = "integer",
            name = "messageCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 6 },
            },
        }),
    },
})

M.TimeBasedTriggerInput = schema.new({
    id = id.from(_N, "TimeBasedTriggerInput"),
    type = "structure",
    members = {
        idleSessionTimeout = schema.new({
            id = id.from(_N, "TimeBasedTriggerInput", "idleSessionTimeout"),
            type = "integer",
            name = "idleSessionTimeout",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 20 },
            },
        }),
    },
})

M.TokenBasedTriggerInput = schema.new({
    id = id.from(_N, "TokenBasedTriggerInput"),
    type = "structure",
    members = {
        tokenCount = schema.new({
            id = id.from(_N, "TokenBasedTriggerInput", "tokenCount"),
            type = "integer",
            name = "tokenCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 5000 },
            },
        }),
    },
})

M.TriggerConditionInput = schema.new({
    id = id.from(_N, "TriggerConditionInput"),
    type = "union",
    members = {
        messageBasedTrigger = schema.new({
            id = id.from(_N, "TriggerConditionInput", "messageBasedTrigger"),
            type = "structure",
            name = "messageBasedTrigger",
            target_id = id.from(_N, "MessageBasedTriggerInput"),
            target = M.MessageBasedTriggerInput,
        }),
        tokenBasedTrigger = schema.new({
            id = id.from(_N, "TriggerConditionInput", "tokenBasedTrigger"),
            type = "structure",
            name = "tokenBasedTrigger",
            target_id = id.from(_N, "TokenBasedTriggerInput"),
            target = M.TokenBasedTriggerInput,
        }),
        timeBasedTrigger = schema.new({
            id = id.from(_N, "TriggerConditionInput", "timeBasedTrigger"),
            type = "structure",
            name = "timeBasedTrigger",
            target_id = id.from(_N, "TimeBasedTriggerInput"),
            target = M.TimeBasedTriggerInput,
        }),
    },
})

M.SelfManagedConfigurationInput = schema.new({
    id = id.from(_N, "SelfManagedConfigurationInput"),
    type = "structure",
    members = {
        triggerConditions = schema.new({
            id = id.from(_N, "SelfManagedConfigurationInput", "triggerConditions"),
            type = "list",
            name = "triggerConditions",
            target_id = prelude.Document.id,
            list_member = M.TriggerConditionInput,
        }),
        invocationConfiguration = schema.new({
            id = id.from(_N, "SelfManagedConfigurationInput", "invocationConfiguration"),
            type = "structure",
            name = "invocationConfiguration",
            target_id = id.from(_N, "InvocationConfigurationInput"),
            target = M.InvocationConfigurationInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        historicalContextWindowSize = schema.new({
            id = id.from(_N, "SelfManagedConfigurationInput", "historicalContextWindowSize"),
            type = "integer",
            name = "historicalContextWindowSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 4 },
            },
        }),
    },
})

M.SemanticOverrideConsolidationConfigurationInput = schema.new({
    id = id.from(_N, "SemanticOverrideConsolidationConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "SemanticOverrideConsolidationConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "SemanticOverrideConsolidationConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SemanticOverrideExtractionConfigurationInput = schema.new({
    id = id.from(_N, "SemanticOverrideExtractionConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "SemanticOverrideExtractionConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "SemanticOverrideExtractionConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SemanticOverrideConfigurationInput = schema.new({
    id = id.from(_N, "SemanticOverrideConfigurationInput"),
    type = "structure",
    members = {
        extraction = schema.new({
            id = id.from(_N, "SemanticOverrideConfigurationInput", "extraction"),
            type = "structure",
            name = "extraction",
            target_id = id.from(_N, "SemanticOverrideExtractionConfigurationInput"),
            target = M.SemanticOverrideExtractionConfigurationInput,
        }),
        consolidation = schema.new({
            id = id.from(_N, "SemanticOverrideConfigurationInput", "consolidation"),
            type = "structure",
            name = "consolidation",
            target_id = id.from(_N, "SemanticOverrideConsolidationConfigurationInput"),
            target = M.SemanticOverrideConsolidationConfigurationInput,
        }),
    },
})

M.SummaryOverrideConsolidationConfigurationInput = schema.new({
    id = id.from(_N, "SummaryOverrideConsolidationConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "SummaryOverrideConsolidationConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "SummaryOverrideConsolidationConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SummaryOverrideConfigurationInput = schema.new({
    id = id.from(_N, "SummaryOverrideConfigurationInput"),
    type = "structure",
    members = {
        consolidation = schema.new({
            id = id.from(_N, "SummaryOverrideConfigurationInput", "consolidation"),
            type = "structure",
            name = "consolidation",
            target_id = id.from(_N, "SummaryOverrideConsolidationConfigurationInput"),
            target = M.SummaryOverrideConsolidationConfigurationInput,
        }),
    },
})

M.UserPreferenceOverrideConsolidationConfigurationInput = schema.new({
    id = id.from(_N, "UserPreferenceOverrideConsolidationConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "UserPreferenceOverrideConsolidationConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "UserPreferenceOverrideConsolidationConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserPreferenceOverrideExtractionConfigurationInput = schema.new({
    id = id.from(_N, "UserPreferenceOverrideExtractionConfigurationInput"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "UserPreferenceOverrideExtractionConfigurationInput", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "UserPreferenceOverrideExtractionConfigurationInput", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserPreferenceOverrideConfigurationInput = schema.new({
    id = id.from(_N, "UserPreferenceOverrideConfigurationInput"),
    type = "structure",
    members = {
        extraction = schema.new({
            id = id.from(_N, "UserPreferenceOverrideConfigurationInput", "extraction"),
            type = "structure",
            name = "extraction",
            target_id = id.from(_N, "UserPreferenceOverrideExtractionConfigurationInput"),
            target = M.UserPreferenceOverrideExtractionConfigurationInput,
        }),
        consolidation = schema.new({
            id = id.from(_N, "UserPreferenceOverrideConfigurationInput", "consolidation"),
            type = "structure",
            name = "consolidation",
            target_id = id.from(_N, "UserPreferenceOverrideConsolidationConfigurationInput"),
            target = M.UserPreferenceOverrideConsolidationConfigurationInput,
        }),
    },
})

M.CustomConfigurationInput = schema.new({
    id = id.from(_N, "CustomConfigurationInput"),
    type = "union",
    members = {
        semanticOverride = schema.new({
            id = id.from(_N, "CustomConfigurationInput", "semanticOverride"),
            type = "structure",
            name = "semanticOverride",
            target_id = id.from(_N, "SemanticOverrideConfigurationInput"),
            target = M.SemanticOverrideConfigurationInput,
        }),
        summaryOverride = schema.new({
            id = id.from(_N, "CustomConfigurationInput", "summaryOverride"),
            type = "structure",
            name = "summaryOverride",
            target_id = id.from(_N, "SummaryOverrideConfigurationInput"),
            target = M.SummaryOverrideConfigurationInput,
        }),
        userPreferenceOverride = schema.new({
            id = id.from(_N, "CustomConfigurationInput", "userPreferenceOverride"),
            type = "structure",
            name = "userPreferenceOverride",
            target_id = id.from(_N, "UserPreferenceOverrideConfigurationInput"),
            target = M.UserPreferenceOverrideConfigurationInput,
        }),
        episodicOverride = schema.new({
            id = id.from(_N, "CustomConfigurationInput", "episodicOverride"),
            type = "structure",
            name = "episodicOverride",
            target_id = id.from(_N, "EpisodicOverrideConfigurationInput"),
            target = M.EpisodicOverrideConfigurationInput,
        }),
        selfManagedConfiguration = schema.new({
            id = id.from(_N, "CustomConfigurationInput", "selfManagedConfiguration"),
            type = "structure",
            name = "selfManagedConfiguration",
            target_id = id.from(_N, "SelfManagedConfigurationInput"),
            target = M.SelfManagedConfigurationInput,
        }),
    },
})

M.CustomMemoryStrategyInput = schema.new({
    id = id.from(_N, "CustomMemoryStrategyInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CustomMemoryStrategyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CustomMemoryStrategyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "CustomMemoryStrategyInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "CustomMemoryStrategyInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        configuration = schema.new({
            id = id.from(_N, "CustomMemoryStrategyInput", "configuration"),
            type = "union",
            name = "configuration",
            target_id = id.from(_N, "CustomConfigurationInput"),
            target = M.CustomConfigurationInput,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "CustomMemoryStrategyInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.EpisodicReflectionConfigurationInput = schema.new({
    id = id.from(_N, "EpisodicReflectionConfigurationInput"),
    type = "structure",
    members = {
        namespaces = schema.new({
            id = id.from(_N, "EpisodicReflectionConfigurationInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "EpisodicReflectionConfigurationInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "EpisodicReflectionConfigurationInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.EpisodicMemoryStrategyInput = schema.new({
    id = id.from(_N, "EpisodicMemoryStrategyInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "EpisodicMemoryStrategyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "EpisodicMemoryStrategyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "EpisodicMemoryStrategyInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "EpisodicMemoryStrategyInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        reflectionConfiguration = schema.new({
            id = id.from(_N, "EpisodicMemoryStrategyInput", "reflectionConfiguration"),
            type = "structure",
            name = "reflectionConfiguration",
            target_id = id.from(_N, "EpisodicReflectionConfigurationInput"),
            target = M.EpisodicReflectionConfigurationInput,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "EpisodicMemoryStrategyInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.SemanticMemoryStrategyInput = schema.new({
    id = id.from(_N, "SemanticMemoryStrategyInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SemanticMemoryStrategyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "SemanticMemoryStrategyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "SemanticMemoryStrategyInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "SemanticMemoryStrategyInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "SemanticMemoryStrategyInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.SummaryMemoryStrategyInput = schema.new({
    id = id.from(_N, "SummaryMemoryStrategyInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "SummaryMemoryStrategyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "SummaryMemoryStrategyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "SummaryMemoryStrategyInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "SummaryMemoryStrategyInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "SummaryMemoryStrategyInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.UserPreferenceMemoryStrategyInput = schema.new({
    id = id.from(_N, "UserPreferenceMemoryStrategyInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UserPreferenceMemoryStrategyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UserPreferenceMemoryStrategyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "UserPreferenceMemoryStrategyInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "UserPreferenceMemoryStrategyInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "UserPreferenceMemoryStrategyInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.MemoryStrategyInput = schema.new({
    id = id.from(_N, "MemoryStrategyInput"),
    type = "union",
    members = {
        semanticMemoryStrategy = schema.new({
            id = id.from(_N, "MemoryStrategyInput", "semanticMemoryStrategy"),
            type = "structure",
            name = "semanticMemoryStrategy",
            target_id = id.from(_N, "SemanticMemoryStrategyInput"),
            target = M.SemanticMemoryStrategyInput,
        }),
        summaryMemoryStrategy = schema.new({
            id = id.from(_N, "MemoryStrategyInput", "summaryMemoryStrategy"),
            type = "structure",
            name = "summaryMemoryStrategy",
            target_id = id.from(_N, "SummaryMemoryStrategyInput"),
            target = M.SummaryMemoryStrategyInput,
        }),
        userPreferenceMemoryStrategy = schema.new({
            id = id.from(_N, "MemoryStrategyInput", "userPreferenceMemoryStrategy"),
            type = "structure",
            name = "userPreferenceMemoryStrategy",
            target_id = id.from(_N, "UserPreferenceMemoryStrategyInput"),
            target = M.UserPreferenceMemoryStrategyInput,
        }),
        customMemoryStrategy = schema.new({
            id = id.from(_N, "MemoryStrategyInput", "customMemoryStrategy"),
            type = "structure",
            name = "customMemoryStrategy",
            target_id = id.from(_N, "CustomMemoryStrategyInput"),
            target = M.CustomMemoryStrategyInput,
        }),
        episodicMemoryStrategy = schema.new({
            id = id.from(_N, "MemoryStrategyInput", "episodicMemoryStrategy"),
            type = "structure",
            name = "episodicMemoryStrategy",
            target_id = id.from(_N, "EpisodicMemoryStrategyInput"),
            target = M.EpisodicMemoryStrategyInput,
        }),
    },
})

M.ContentConfiguration = schema.new({
    id = id.from(_N, "ContentConfiguration"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "ContentConfiguration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        level = schema.new({
            id = id.from(_N, "ContentConfiguration", "level"),
            type = "string",
            name = "level",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "METADATA_ONLY" },
            },
        }),
    },
})

M.KinesisResource = schema.new({
    id = id.from(_N, "KinesisResource"),
    type = "structure",
    members = {
        dataStreamArn = schema.new({
            id = id.from(_N, "KinesisResource", "dataStreamArn"),
            type = "string",
            name = "dataStreamArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        contentConfigurations = schema.new({
            id = id.from(_N, "KinesisResource", "contentConfigurations"),
            type = "list",
            name = "contentConfigurations",
            target_id = prelude.Document.id,
            list_member = M.ContentConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StreamDeliveryResource = schema.new({
    id = id.from(_N, "StreamDeliveryResource"),
    type = "union",
    members = {
        kinesis = schema.new({
            id = id.from(_N, "StreamDeliveryResource", "kinesis"),
            type = "structure",
            name = "kinesis",
            target_id = id.from(_N, "KinesisResource"),
            target = M.KinesisResource,
        }),
    },
})

M.StreamDeliveryResources = schema.new({
    id = id.from(_N, "StreamDeliveryResources"),
    type = "structure",
    members = {
        resources = schema.new({
            id = id.from(_N, "StreamDeliveryResources", "resources"),
            type = "list",
            name = "resources",
            target_id = prelude.Document.id,
            list_member = M.StreamDeliveryResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateMemoryInput = schema.new({
    id = id.from(_N, "CreateMemoryInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateMemoryInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateMemoryInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateMemoryInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "CreateMemoryInput", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
        memoryExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateMemoryInput", "memoryExecutionRoleArn"),
            type = "string",
            name = "memoryExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        eventExpiryDuration = schema.new({
            id = id.from(_N, "CreateMemoryInput", "eventExpiryDuration"),
            type = "integer",
            name = "eventExpiryDuration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memoryStrategies = schema.new({
            id = id.from(_N, "CreateMemoryInput", "memoryStrategies"),
            type = "list",
            name = "memoryStrategies",
            target_id = prelude.Document.id,
            list_member = M.MemoryStrategyInput,
        }),
        indexedKeys = schema.new({
            id = id.from(_N, "CreateMemoryInput", "indexedKeys"),
            type = "list",
            name = "indexedKeys",
            target_id = prelude.Document.id,
            list_member = M.IndexedKey,
        }),
        streamDeliveryResources = schema.new({
            id = id.from(_N, "CreateMemoryInput", "streamDeliveryResources"),
            type = "structure",
            name = "streamDeliveryResources",
            target_id = id.from(_N, "StreamDeliveryResources"),
            target = M.StreamDeliveryResources,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateMemoryInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.EpisodicConsolidationOverride = schema.new({
    id = id.from(_N, "EpisodicConsolidationOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "EpisodicConsolidationOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "EpisodicConsolidationOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SemanticConsolidationOverride = schema.new({
    id = id.from(_N, "SemanticConsolidationOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "SemanticConsolidationOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "SemanticConsolidationOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SummaryConsolidationOverride = schema.new({
    id = id.from(_N, "SummaryConsolidationOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "SummaryConsolidationOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "SummaryConsolidationOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserPreferenceConsolidationOverride = schema.new({
    id = id.from(_N, "UserPreferenceConsolidationOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "UserPreferenceConsolidationOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "UserPreferenceConsolidationOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomConsolidationConfiguration = schema.new({
    id = id.from(_N, "CustomConsolidationConfiguration"),
    type = "union",
    members = {
        semanticConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfiguration", "semanticConsolidationOverride"),
            type = "structure",
            name = "semanticConsolidationOverride",
            target_id = id.from(_N, "SemanticConsolidationOverride"),
            target = M.SemanticConsolidationOverride,
        }),
        summaryConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfiguration", "summaryConsolidationOverride"),
            type = "structure",
            name = "summaryConsolidationOverride",
            target_id = id.from(_N, "SummaryConsolidationOverride"),
            target = M.SummaryConsolidationOverride,
        }),
        userPreferenceConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfiguration", "userPreferenceConsolidationOverride"),
            type = "structure",
            name = "userPreferenceConsolidationOverride",
            target_id = id.from(_N, "UserPreferenceConsolidationOverride"),
            target = M.UserPreferenceConsolidationOverride,
        }),
        episodicConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfiguration", "episodicConsolidationOverride"),
            type = "structure",
            name = "episodicConsolidationOverride",
            target_id = id.from(_N, "EpisodicConsolidationOverride"),
            target = M.EpisodicConsolidationOverride,
        }),
    },
})

M.ConsolidationConfiguration = schema.new({
    id = id.from(_N, "ConsolidationConfiguration"),
    type = "union",
    members = {
        customConsolidationConfiguration = schema.new({
            id = id.from(_N, "ConsolidationConfiguration", "customConsolidationConfiguration"),
            type = "union",
            name = "customConsolidationConfiguration",
            target_id = id.from(_N, "CustomConsolidationConfiguration"),
            target = M.CustomConsolidationConfiguration,
        }),
    },
})

M.EpisodicExtractionOverride = schema.new({
    id = id.from(_N, "EpisodicExtractionOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "EpisodicExtractionOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "EpisodicExtractionOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SemanticExtractionOverride = schema.new({
    id = id.from(_N, "SemanticExtractionOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "SemanticExtractionOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "SemanticExtractionOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserPreferenceExtractionOverride = schema.new({
    id = id.from(_N, "UserPreferenceExtractionOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "UserPreferenceExtractionOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "UserPreferenceExtractionOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomExtractionConfiguration = schema.new({
    id = id.from(_N, "CustomExtractionConfiguration"),
    type = "union",
    members = {
        semanticExtractionOverride = schema.new({
            id = id.from(_N, "CustomExtractionConfiguration", "semanticExtractionOverride"),
            type = "structure",
            name = "semanticExtractionOverride",
            target_id = id.from(_N, "SemanticExtractionOverride"),
            target = M.SemanticExtractionOverride,
        }),
        userPreferenceExtractionOverride = schema.new({
            id = id.from(_N, "CustomExtractionConfiguration", "userPreferenceExtractionOverride"),
            type = "structure",
            name = "userPreferenceExtractionOverride",
            target_id = id.from(_N, "UserPreferenceExtractionOverride"),
            target = M.UserPreferenceExtractionOverride,
        }),
        episodicExtractionOverride = schema.new({
            id = id.from(_N, "CustomExtractionConfiguration", "episodicExtractionOverride"),
            type = "structure",
            name = "episodicExtractionOverride",
            target_id = id.from(_N, "EpisodicExtractionOverride"),
            target = M.EpisodicExtractionOverride,
        }),
    },
})

M.ExtractionConfiguration = schema.new({
    id = id.from(_N, "ExtractionConfiguration"),
    type = "union",
    members = {
        customExtractionConfiguration = schema.new({
            id = id.from(_N, "ExtractionConfiguration", "customExtractionConfiguration"),
            type = "union",
            name = "customExtractionConfiguration",
            target_id = id.from(_N, "CustomExtractionConfiguration"),
            target = M.CustomExtractionConfiguration,
        }),
    },
})

M.EpisodicReflectionOverride = schema.new({
    id = id.from(_N, "EpisodicReflectionOverride"),
    type = "structure",
    members = {
        appendToPrompt = schema.new({
            id = id.from(_N, "EpisodicReflectionOverride", "appendToPrompt"),
            type = "string",
            name = "appendToPrompt",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        modelId = schema.new({
            id = id.from(_N, "EpisodicReflectionOverride", "modelId"),
            type = "string",
            name = "modelId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "EpisodicReflectionOverride", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "EpisodicReflectionOverride", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "EpisodicReflectionOverride", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.CustomReflectionConfiguration = schema.new({
    id = id.from(_N, "CustomReflectionConfiguration"),
    type = "union",
    members = {
        episodicReflectionOverride = schema.new({
            id = id.from(_N, "CustomReflectionConfiguration", "episodicReflectionOverride"),
            type = "structure",
            name = "episodicReflectionOverride",
            target_id = id.from(_N, "EpisodicReflectionOverride"),
            target = M.EpisodicReflectionOverride,
        }),
    },
})

M.EpisodicReflectionConfiguration = schema.new({
    id = id.from(_N, "EpisodicReflectionConfiguration"),
    type = "structure",
    members = {
        namespaces = schema.new({
            id = id.from(_N, "EpisodicReflectionConfiguration", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "EpisodicReflectionConfiguration", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "EpisodicReflectionConfiguration", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.ReflectionConfiguration = schema.new({
    id = id.from(_N, "ReflectionConfiguration"),
    type = "union",
    members = {
        customReflectionConfiguration = schema.new({
            id = id.from(_N, "ReflectionConfiguration", "customReflectionConfiguration"),
            type = "union",
            name = "customReflectionConfiguration",
            target_id = id.from(_N, "CustomReflectionConfiguration"),
            target = M.CustomReflectionConfiguration,
        }),
        episodicReflectionConfiguration = schema.new({
            id = id.from(_N, "ReflectionConfiguration", "episodicReflectionConfiguration"),
            type = "structure",
            name = "episodicReflectionConfiguration",
            target_id = id.from(_N, "EpisodicReflectionConfiguration"),
            target = M.EpisodicReflectionConfiguration,
        }),
    },
})

M.InvocationConfiguration = schema.new({
    id = id.from(_N, "InvocationConfiguration"),
    type = "structure",
    members = {
        topicArn = schema.new({
            id = id.from(_N, "InvocationConfiguration", "topicArn"),
            type = "string",
            name = "topicArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        payloadDeliveryBucketName = schema.new({
            id = id.from(_N, "InvocationConfiguration", "payloadDeliveryBucketName"),
            type = "string",
            name = "payloadDeliveryBucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MessageBasedTrigger = schema.new({
    id = id.from(_N, "MessageBasedTrigger"),
    type = "structure",
    members = {
        messageCount = schema.new({
            id = id.from(_N, "MessageBasedTrigger", "messageCount"),
            type = "integer",
            name = "messageCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TimeBasedTrigger = schema.new({
    id = id.from(_N, "TimeBasedTrigger"),
    type = "structure",
    members = {
        idleSessionTimeout = schema.new({
            id = id.from(_N, "TimeBasedTrigger", "idleSessionTimeout"),
            type = "integer",
            name = "idleSessionTimeout",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TokenBasedTrigger = schema.new({
    id = id.from(_N, "TokenBasedTrigger"),
    type = "structure",
    members = {
        tokenCount = schema.new({
            id = id.from(_N, "TokenBasedTrigger", "tokenCount"),
            type = "integer",
            name = "tokenCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TriggerCondition = schema.new({
    id = id.from(_N, "TriggerCondition"),
    type = "union",
    members = {
        messageBasedTrigger = schema.new({
            id = id.from(_N, "TriggerCondition", "messageBasedTrigger"),
            type = "structure",
            name = "messageBasedTrigger",
            target_id = id.from(_N, "MessageBasedTrigger"),
            target = M.MessageBasedTrigger,
        }),
        tokenBasedTrigger = schema.new({
            id = id.from(_N, "TriggerCondition", "tokenBasedTrigger"),
            type = "structure",
            name = "tokenBasedTrigger",
            target_id = id.from(_N, "TokenBasedTrigger"),
            target = M.TokenBasedTrigger,
        }),
        timeBasedTrigger = schema.new({
            id = id.from(_N, "TriggerCondition", "timeBasedTrigger"),
            type = "structure",
            name = "timeBasedTrigger",
            target_id = id.from(_N, "TimeBasedTrigger"),
            target = M.TimeBasedTrigger,
        }),
    },
})

M.SelfManagedConfiguration = schema.new({
    id = id.from(_N, "SelfManagedConfiguration"),
    type = "structure",
    members = {
        triggerConditions = schema.new({
            id = id.from(_N, "SelfManagedConfiguration", "triggerConditions"),
            type = "list",
            name = "triggerConditions",
            target_id = prelude.Document.id,
            list_member = M.TriggerCondition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        invocationConfiguration = schema.new({
            id = id.from(_N, "SelfManagedConfiguration", "invocationConfiguration"),
            type = "structure",
            name = "invocationConfiguration",
            target_id = id.from(_N, "InvocationConfiguration"),
            target = M.InvocationConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        historicalContextWindowSize = schema.new({
            id = id.from(_N, "SelfManagedConfiguration", "historicalContextWindowSize"),
            type = "integer",
            name = "historicalContextWindowSize",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StrategyConfiguration = schema.new({
    id = id.from(_N, "StrategyConfiguration"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "StrategyConfiguration", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        extraction = schema.new({
            id = id.from(_N, "StrategyConfiguration", "extraction"),
            type = "union",
            name = "extraction",
            target_id = id.from(_N, "ExtractionConfiguration"),
            target = M.ExtractionConfiguration,
        }),
        consolidation = schema.new({
            id = id.from(_N, "StrategyConfiguration", "consolidation"),
            type = "union",
            name = "consolidation",
            target_id = id.from(_N, "ConsolidationConfiguration"),
            target = M.ConsolidationConfiguration,
        }),
        reflection = schema.new({
            id = id.from(_N, "StrategyConfiguration", "reflection"),
            type = "union",
            name = "reflection",
            target_id = id.from(_N, "ReflectionConfiguration"),
            target = M.ReflectionConfiguration,
        }),
        selfManagedConfiguration = schema.new({
            id = id.from(_N, "StrategyConfiguration", "selfManagedConfiguration"),
            type = "structure",
            name = "selfManagedConfiguration",
            target_id = id.from(_N, "SelfManagedConfiguration"),
            target = M.SelfManagedConfiguration,
        }),
    },
})

M.MemoryStrategy = schema.new({
    id = id.from(_N, "MemoryStrategy"),
    type = "structure",
    members = {
        strategyId = schema.new({
            id = id.from(_N, "MemoryStrategy", "strategyId"),
            type = "string",
            name = "strategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "MemoryStrategy", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "MemoryStrategy", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        configuration = schema.new({
            id = id.from(_N, "MemoryStrategy", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "StrategyConfiguration"),
            target = M.StrategyConfiguration,
        }),
        type = schema.new({
            id = id.from(_N, "MemoryStrategy", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaces = schema.new({
            id = id.from(_N, "MemoryStrategy", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "MemoryStrategy", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "MemoryStrategy", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "MemoryStrategy", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        status = schema.new({
            id = id.from(_N, "MemoryStrategy", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "MemoryStrategy", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.Memory = schema.new({
    id = id.from(_N, "Memory"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "Memory", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        id = schema.new({
            id = id.from(_N, "Memory", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "Memory", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "Memory", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "Memory", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
        memoryExecutionRoleArn = schema.new({
            id = id.from(_N, "Memory", "memoryExecutionRoleArn"),
            type = "string",
            name = "memoryExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        eventExpiryDuration = schema.new({
            id = id.from(_N, "Memory", "eventExpiryDuration"),
            type = "integer",
            name = "eventExpiryDuration",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "Memory", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "Memory", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Memory", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Memory", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        strategies = schema.new({
            id = id.from(_N, "Memory", "strategies"),
            type = "list",
            name = "strategies",
            target_id = prelude.Document.id,
            list_member = M.MemoryStrategy,
        }),
        indexedKeys = schema.new({
            id = id.from(_N, "Memory", "indexedKeys"),
            type = "list",
            name = "indexedKeys",
            target_id = prelude.Document.id,
            list_member = M.IndexedKey,
        }),
        streamDeliveryResources = schema.new({
            id = id.from(_N, "Memory", "streamDeliveryResources"),
            type = "structure",
            name = "streamDeliveryResources",
            target_id = id.from(_N, "StreamDeliveryResources"),
            target = M.StreamDeliveryResources,
        }),
    },
})

M.CreateMemoryOutput = schema.new({
    id = id.from(_N, "CreateMemoryOutput"),
    type = "structure",
    members = {
        memory = schema.new({
            id = id.from(_N, "CreateMemoryOutput", "memory"),
            type = "structure",
            name = "memory",
            target_id = id.from(_N, "Memory"),
            target = M.Memory,
        }),
    },
})

M.ServiceException = schema.new({
    id = id.from(_N, "ServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ServiceException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ThrottledException = schema.new({
    id = id.from(_N, "ThrottledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottledException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMemoryInput = schema.new({
    id = id.from(_N, "DeleteMemoryInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "DeleteMemoryInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "clientToken" },
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        memoryId = schema.new({
            id = id.from(_N, "DeleteMemoryInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteMemoryOutput = schema.new({
    id = id.from(_N, "DeleteMemoryOutput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "DeleteMemoryOutput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteMemoryOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetMemoryInput = schema.new({
    id = id.from(_N, "GetMemoryInput"),
    type = "structure",
    members = {
        memoryId = schema.new({
            id = id.from(_N, "GetMemoryInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        view = schema.new({
            id = id.from(_N, "GetMemoryInput", "view"),
            type = "string",
            name = "view",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "full" },
                [traits.HTTP_QUERY] = { name = "view" },
            },
        }),
    },
})

M.GetMemoryOutput = schema.new({
    id = id.from(_N, "GetMemoryOutput"),
    type = "structure",
    members = {
        memory = schema.new({
            id = id.from(_N, "GetMemoryOutput", "memory"),
            type = "structure",
            name = "memory",
            target_id = id.from(_N, "Memory"),
            target = M.Memory,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListMemoriesInput = schema.new({
    id = id.from(_N, "ListMemoriesInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListMemoriesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 100 },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMemoriesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.MemorySummary = schema.new({
    id = id.from(_N, "MemorySummary"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "MemorySummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
        id = schema.new({
            id = id.from(_N, "MemorySummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "MemorySummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "MemorySummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "MemorySummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListMemoriesOutput = schema.new({
    id = id.from(_N, "ListMemoriesOutput"),
    type = "structure",
    members = {
        memories = schema.new({
            id = id.from(_N, "ListMemoriesOutput", "memories"),
            type = "list",
            name = "memories",
            target_id = prelude.Document.id,
            list_member = M.MemorySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMemoriesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMemoryStrategyInput = schema.new({
    id = id.from(_N, "DeleteMemoryStrategyInput"),
    type = "structure",
    members = {
        memoryStrategyId = schema.new({
            id = id.from(_N, "DeleteMemoryStrategyInput", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomConsolidationConfigurationInput = schema.new({
    id = id.from(_N, "CustomConsolidationConfigurationInput"),
    type = "union",
    members = {
        semanticConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfigurationInput", "semanticConsolidationOverride"),
            type = "structure",
            name = "semanticConsolidationOverride",
            target_id = id.from(_N, "SemanticOverrideConsolidationConfigurationInput"),
            target = M.SemanticOverrideConsolidationConfigurationInput,
        }),
        summaryConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfigurationInput", "summaryConsolidationOverride"),
            type = "structure",
            name = "summaryConsolidationOverride",
            target_id = id.from(_N, "SummaryOverrideConsolidationConfigurationInput"),
            target = M.SummaryOverrideConsolidationConfigurationInput,
        }),
        userPreferenceConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfigurationInput", "userPreferenceConsolidationOverride"),
            type = "structure",
            name = "userPreferenceConsolidationOverride",
            target_id = id.from(_N, "UserPreferenceOverrideConsolidationConfigurationInput"),
            target = M.UserPreferenceOverrideConsolidationConfigurationInput,
        }),
        episodicConsolidationOverride = schema.new({
            id = id.from(_N, "CustomConsolidationConfigurationInput", "episodicConsolidationOverride"),
            type = "structure",
            name = "episodicConsolidationOverride",
            target_id = id.from(_N, "EpisodicOverrideConsolidationConfigurationInput"),
            target = M.EpisodicOverrideConsolidationConfigurationInput,
        }),
    },
})

M.ModifyConsolidationConfiguration = schema.new({
    id = id.from(_N, "ModifyConsolidationConfiguration"),
    type = "union",
    members = {
        customConsolidationConfiguration = schema.new({
            id = id.from(_N, "ModifyConsolidationConfiguration", "customConsolidationConfiguration"),
            type = "union",
            name = "customConsolidationConfiguration",
            target_id = id.from(_N, "CustomConsolidationConfigurationInput"),
            target = M.CustomConsolidationConfigurationInput,
        }),
    },
})

M.CustomExtractionConfigurationInput = schema.new({
    id = id.from(_N, "CustomExtractionConfigurationInput"),
    type = "union",
    members = {
        semanticExtractionOverride = schema.new({
            id = id.from(_N, "CustomExtractionConfigurationInput", "semanticExtractionOverride"),
            type = "structure",
            name = "semanticExtractionOverride",
            target_id = id.from(_N, "SemanticOverrideExtractionConfigurationInput"),
            target = M.SemanticOverrideExtractionConfigurationInput,
        }),
        userPreferenceExtractionOverride = schema.new({
            id = id.from(_N, "CustomExtractionConfigurationInput", "userPreferenceExtractionOverride"),
            type = "structure",
            name = "userPreferenceExtractionOverride",
            target_id = id.from(_N, "UserPreferenceOverrideExtractionConfigurationInput"),
            target = M.UserPreferenceOverrideExtractionConfigurationInput,
        }),
        episodicExtractionOverride = schema.new({
            id = id.from(_N, "CustomExtractionConfigurationInput", "episodicExtractionOverride"),
            type = "structure",
            name = "episodicExtractionOverride",
            target_id = id.from(_N, "EpisodicOverrideExtractionConfigurationInput"),
            target = M.EpisodicOverrideExtractionConfigurationInput,
        }),
    },
})

M.ModifyExtractionConfiguration = schema.new({
    id = id.from(_N, "ModifyExtractionConfiguration"),
    type = "union",
    members = {
        customExtractionConfiguration = schema.new({
            id = id.from(_N, "ModifyExtractionConfiguration", "customExtractionConfiguration"),
            type = "union",
            name = "customExtractionConfiguration",
            target_id = id.from(_N, "CustomExtractionConfigurationInput"),
            target = M.CustomExtractionConfigurationInput,
        }),
    },
})

M.CustomReflectionConfigurationInput = schema.new({
    id = id.from(_N, "CustomReflectionConfigurationInput"),
    type = "union",
    members = {
        episodicReflectionOverride = schema.new({
            id = id.from(_N, "CustomReflectionConfigurationInput", "episodicReflectionOverride"),
            type = "structure",
            name = "episodicReflectionOverride",
            target_id = id.from(_N, "EpisodicOverrideReflectionConfigurationInput"),
            target = M.EpisodicOverrideReflectionConfigurationInput,
        }),
    },
})

M.ModifyReflectionConfiguration = schema.new({
    id = id.from(_N, "ModifyReflectionConfiguration"),
    type = "union",
    members = {
        episodicReflectionConfiguration = schema.new({
            id = id.from(_N, "ModifyReflectionConfiguration", "episodicReflectionConfiguration"),
            type = "structure",
            name = "episodicReflectionConfiguration",
            target_id = id.from(_N, "EpisodicReflectionConfigurationInput"),
            target = M.EpisodicReflectionConfigurationInput,
        }),
        customReflectionConfiguration = schema.new({
            id = id.from(_N, "ModifyReflectionConfiguration", "customReflectionConfiguration"),
            type = "union",
            name = "customReflectionConfiguration",
            target_id = id.from(_N, "CustomReflectionConfigurationInput"),
            target = M.CustomReflectionConfigurationInput,
        }),
    },
})

M.ModifyInvocationConfigurationInput = schema.new({
    id = id.from(_N, "ModifyInvocationConfigurationInput"),
    type = "structure",
    members = {
        topicArn = schema.new({
            id = id.from(_N, "ModifyInvocationConfigurationInput", "topicArn"),
            type = "string",
            name = "topicArn",
            target_id = prelude.String.id,
        }),
        payloadDeliveryBucketName = schema.new({
            id = id.from(_N, "ModifyInvocationConfigurationInput", "payloadDeliveryBucketName"),
            type = "string",
            name = "payloadDeliveryBucketName",
            target_id = prelude.String.id,
        }),
    },
})

M.ModifySelfManagedConfiguration = schema.new({
    id = id.from(_N, "ModifySelfManagedConfiguration"),
    type = "structure",
    members = {
        triggerConditions = schema.new({
            id = id.from(_N, "ModifySelfManagedConfiguration", "triggerConditions"),
            type = "list",
            name = "triggerConditions",
            target_id = prelude.Document.id,
            list_member = M.TriggerConditionInput,
        }),
        invocationConfiguration = schema.new({
            id = id.from(_N, "ModifySelfManagedConfiguration", "invocationConfiguration"),
            type = "structure",
            name = "invocationConfiguration",
            target_id = id.from(_N, "ModifyInvocationConfigurationInput"),
            target = M.ModifyInvocationConfigurationInput,
        }),
        historicalContextWindowSize = schema.new({
            id = id.from(_N, "ModifySelfManagedConfiguration", "historicalContextWindowSize"),
            type = "integer",
            name = "historicalContextWindowSize",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ModifyStrategyConfiguration = schema.new({
    id = id.from(_N, "ModifyStrategyConfiguration"),
    type = "structure",
    members = {
        extraction = schema.new({
            id = id.from(_N, "ModifyStrategyConfiguration", "extraction"),
            type = "union",
            name = "extraction",
            target_id = id.from(_N, "ModifyExtractionConfiguration"),
            target = M.ModifyExtractionConfiguration,
        }),
        consolidation = schema.new({
            id = id.from(_N, "ModifyStrategyConfiguration", "consolidation"),
            type = "union",
            name = "consolidation",
            target_id = id.from(_N, "ModifyConsolidationConfiguration"),
            target = M.ModifyConsolidationConfiguration,
        }),
        reflection = schema.new({
            id = id.from(_N, "ModifyStrategyConfiguration", "reflection"),
            type = "union",
            name = "reflection",
            target_id = id.from(_N, "ModifyReflectionConfiguration"),
            target = M.ModifyReflectionConfiguration,
        }),
        selfManagedConfiguration = schema.new({
            id = id.from(_N, "ModifyStrategyConfiguration", "selfManagedConfiguration"),
            type = "structure",
            name = "selfManagedConfiguration",
            target_id = id.from(_N, "ModifySelfManagedConfiguration"),
            target = M.ModifySelfManagedConfiguration,
        }),
    },
})

M.ModifyMemoryStrategyInput = schema.new({
    id = id.from(_N, "ModifyMemoryStrategyInput"),
    type = "structure",
    members = {
        memoryStrategyId = schema.new({
            id = id.from(_N, "ModifyMemoryStrategyInput", "memoryStrategyId"),
            type = "string",
            name = "memoryStrategyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ModifyMemoryStrategyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        namespaces = schema.new({
            id = id.from(_N, "ModifyMemoryStrategyInput", "namespaces"),
            type = "list",
            name = "namespaces",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        namespaceTemplates = schema.new({
            id = id.from(_N, "ModifyMemoryStrategyInput", "namespaceTemplates"),
            type = "list",
            name = "namespaceTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        configuration = schema.new({
            id = id.from(_N, "ModifyMemoryStrategyInput", "configuration"),
            type = "structure",
            name = "configuration",
            target_id = id.from(_N, "ModifyStrategyConfiguration"),
            target = M.ModifyStrategyConfiguration,
        }),
        memoryRecordSchema = schema.new({
            id = id.from(_N, "ModifyMemoryStrategyInput", "memoryRecordSchema"),
            type = "structure",
            name = "memoryRecordSchema",
            target_id = id.from(_N, "MemoryRecordSchema"),
            target = M.MemoryRecordSchema,
        }),
    },
})

M.ModifyMemoryStrategies = schema.new({
    id = id.from(_N, "ModifyMemoryStrategies"),
    type = "structure",
    members = {
        addMemoryStrategies = schema.new({
            id = id.from(_N, "ModifyMemoryStrategies", "addMemoryStrategies"),
            type = "list",
            name = "addMemoryStrategies",
            target_id = prelude.Document.id,
            list_member = M.MemoryStrategyInput,
        }),
        modifyMemoryStrategies = schema.new({
            id = id.from(_N, "ModifyMemoryStrategies", "modifyMemoryStrategies"),
            type = "list",
            name = "modifyMemoryStrategies",
            target_id = prelude.Document.id,
            list_member = M.ModifyMemoryStrategyInput,
        }),
        deleteMemoryStrategies = schema.new({
            id = id.from(_N, "ModifyMemoryStrategies", "deleteMemoryStrategies"),
            type = "list",
            name = "deleteMemoryStrategies",
            target_id = prelude.Document.id,
            list_member = M.DeleteMemoryStrategyInput,
        }),
    },
})

M.UpdateMemoryInput = schema.new({
    id = id.from(_N, "UpdateMemoryInput"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        memoryId = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "memoryId"),
            type = "string",
            name = "memoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        eventExpiryDuration = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "eventExpiryDuration"),
            type = "integer",
            name = "eventExpiryDuration",
            target_id = prelude.Integer.id,
        }),
        memoryExecutionRoleArn = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "memoryExecutionRoleArn"),
            type = "string",
            name = "memoryExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        memoryStrategies = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "memoryStrategies"),
            type = "structure",
            name = "memoryStrategies",
            target_id = id.from(_N, "ModifyMemoryStrategies"),
            target = M.ModifyMemoryStrategies,
        }),
        addIndexedKeys = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "addIndexedKeys"),
            type = "list",
            name = "addIndexedKeys",
            target_id = prelude.Document.id,
            list_member = M.IndexedKey,
        }),
        streamDeliveryResources = schema.new({
            id = id.from(_N, "UpdateMemoryInput", "streamDeliveryResources"),
            type = "structure",
            name = "streamDeliveryResources",
            target_id = id.from(_N, "StreamDeliveryResources"),
            target = M.StreamDeliveryResources,
        }),
    },
})

M.UpdateMemoryOutput = schema.new({
    id = id.from(_N, "UpdateMemoryOutput"),
    type = "structure",
    members = {
        memory = schema.new({
            id = id.from(_N, "UpdateMemoryOutput", "memory"),
            type = "structure",
            name = "memory",
            target_id = id.from(_N, "Memory"),
            target = M.Memory,
        }),
    },
})

M.AtlassianOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "AtlassianOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "AtlassianOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "AtlassianOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Oauth2AuthorizationServerMetadata = schema.new({
    id = id.from(_N, "Oauth2AuthorizationServerMetadata"),
    type = "structure",
    members = {
        issuer = schema.new({
            id = id.from(_N, "Oauth2AuthorizationServerMetadata", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizationEndpoint = schema.new({
            id = id.from(_N, "Oauth2AuthorizationServerMetadata", "authorizationEndpoint"),
            type = "string",
            name = "authorizationEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tokenEndpoint = schema.new({
            id = id.from(_N, "Oauth2AuthorizationServerMetadata", "tokenEndpoint"),
            type = "string",
            name = "tokenEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        responseTypes = schema.new({
            id = id.from(_N, "Oauth2AuthorizationServerMetadata", "responseTypes"),
            type = "list",
            name = "responseTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tokenEndpointAuthMethods = schema.new({
            id = id.from(_N, "Oauth2AuthorizationServerMetadata", "tokenEndpointAuthMethods"),
            type = "list",
            name = "tokenEndpointAuthMethods",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.Oauth2Discovery = schema.new({
    id = id.from(_N, "Oauth2Discovery"),
    type = "union",
    members = {
        discoveryUrl = schema.new({
            id = id.from(_N, "Oauth2Discovery", "discoveryUrl"),
            type = "string",
            name = "discoveryUrl",
            target_id = prelude.String.id,
        }),
        authorizationServerMetadata = schema.new({
            id = id.from(_N, "Oauth2Discovery", "authorizationServerMetadata"),
            type = "structure",
            name = "authorizationServerMetadata",
            target_id = id.from(_N, "Oauth2AuthorizationServerMetadata"),
            target = M.Oauth2AuthorizationServerMetadata,
        }),
    },
})

M.TokenExchangeGrantTypeConfigType = schema.new({
    id = id.from(_N, "TokenExchangeGrantTypeConfigType"),
    type = "structure",
    members = {
        actorTokenContent = schema.new({
            id = id.from(_N, "TokenExchangeGrantTypeConfigType", "actorTokenContent"),
            type = "string",
            name = "actorTokenContent",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        actorTokenScopes = schema.new({
            id = id.from(_N, "TokenExchangeGrantTypeConfigType", "actorTokenScopes"),
            type = "list",
            name = "actorTokenScopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.OnBehalfOfTokenExchangeConfigType = schema.new({
    id = id.from(_N, "OnBehalfOfTokenExchangeConfigType"),
    type = "structure",
    members = {
        grantType = schema.new({
            id = id.from(_N, "OnBehalfOfTokenExchangeConfigType", "grantType"),
            type = "string",
            name = "grantType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tokenExchangeGrantTypeConfig = schema.new({
            id = id.from(_N, "OnBehalfOfTokenExchangeConfigType", "tokenExchangeGrantTypeConfig"),
            type = "structure",
            name = "tokenExchangeGrantTypeConfig",
            target_id = id.from(_N, "TokenExchangeGrantTypeConfigType"),
            target = M.TokenExchangeGrantTypeConfigType,
        }),
    },
})

M.CustomOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "CustomOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "" },
            },
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointOverrides = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "privateEndpointOverrides"),
            type = "list",
            name = "privateEndpointOverrides",
            target_id = prelude.Document.id,
            list_member = M.PrivateEndpointOverride,
        }),
        onBehalfOfTokenExchangeConfig = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "onBehalfOfTokenExchangeConfig"),
            type = "structure",
            name = "onBehalfOfTokenExchangeConfig",
            target_id = id.from(_N, "OnBehalfOfTokenExchangeConfigType"),
            target = M.OnBehalfOfTokenExchangeConfigType,
        }),
        clientAuthenticationMethod = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigInput", "clientAuthenticationMethod"),
            type = "string",
            name = "clientAuthenticationMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.GithubOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "GithubOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "GithubOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "GithubOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GoogleOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "GoogleOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "GoogleOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "GoogleOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncludedOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "IncludedOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        issuer = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigInput", "issuer"),
            type = "string",
            name = "issuer",
            target_id = prelude.String.id,
        }),
        authorizationEndpoint = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigInput", "authorizationEndpoint"),
            type = "string",
            name = "authorizationEndpoint",
            target_id = prelude.String.id,
        }),
        tokenEndpoint = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigInput", "tokenEndpoint"),
            type = "string",
            name = "tokenEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.LinkedinOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "LinkedinOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "LinkedinOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "LinkedinOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MicrosoftOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "MicrosoftOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "MicrosoftOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "MicrosoftOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tenantId = schema.new({
            id = id.from(_N, "MicrosoftOauth2ProviderConfigInput", "tenantId"),
            type = "string",
            name = "tenantId",
            target_id = prelude.String.id,
        }),
    },
})

M.SalesforceOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "SalesforceOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "SalesforceOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "SalesforceOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SlackOauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "SlackOauth2ProviderConfigInput"),
    type = "structure",
    members = {
        clientId = schema.new({
            id = id.from(_N, "SlackOauth2ProviderConfigInput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientSecret = schema.new({
            id = id.from(_N, "SlackOauth2ProviderConfigInput", "clientSecret"),
            type = "string",
            name = "clientSecret",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Oauth2ProviderConfigInput = schema.new({
    id = id.from(_N, "Oauth2ProviderConfigInput"),
    type = "union",
    members = {
        customOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "customOauth2ProviderConfig"),
            type = "structure",
            name = "customOauth2ProviderConfig",
            target_id = id.from(_N, "CustomOauth2ProviderConfigInput"),
            target = M.CustomOauth2ProviderConfigInput,
        }),
        googleOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "googleOauth2ProviderConfig"),
            type = "structure",
            name = "googleOauth2ProviderConfig",
            target_id = id.from(_N, "GoogleOauth2ProviderConfigInput"),
            target = M.GoogleOauth2ProviderConfigInput,
        }),
        githubOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "githubOauth2ProviderConfig"),
            type = "structure",
            name = "githubOauth2ProviderConfig",
            target_id = id.from(_N, "GithubOauth2ProviderConfigInput"),
            target = M.GithubOauth2ProviderConfigInput,
        }),
        slackOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "slackOauth2ProviderConfig"),
            type = "structure",
            name = "slackOauth2ProviderConfig",
            target_id = id.from(_N, "SlackOauth2ProviderConfigInput"),
            target = M.SlackOauth2ProviderConfigInput,
        }),
        salesforceOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "salesforceOauth2ProviderConfig"),
            type = "structure",
            name = "salesforceOauth2ProviderConfig",
            target_id = id.from(_N, "SalesforceOauth2ProviderConfigInput"),
            target = M.SalesforceOauth2ProviderConfigInput,
        }),
        microsoftOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "microsoftOauth2ProviderConfig"),
            type = "structure",
            name = "microsoftOauth2ProviderConfig",
            target_id = id.from(_N, "MicrosoftOauth2ProviderConfigInput"),
            target = M.MicrosoftOauth2ProviderConfigInput,
        }),
        atlassianOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "atlassianOauth2ProviderConfig"),
            type = "structure",
            name = "atlassianOauth2ProviderConfig",
            target_id = id.from(_N, "AtlassianOauth2ProviderConfigInput"),
            target = M.AtlassianOauth2ProviderConfigInput,
        }),
        linkedinOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "linkedinOauth2ProviderConfig"),
            type = "structure",
            name = "linkedinOauth2ProviderConfig",
            target_id = id.from(_N, "LinkedinOauth2ProviderConfigInput"),
            target = M.LinkedinOauth2ProviderConfigInput,
        }),
        includedOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigInput", "includedOauth2ProviderConfig"),
            type = "structure",
            name = "includedOauth2ProviderConfig",
            target_id = id.from(_N, "IncludedOauth2ProviderConfigInput"),
            target = M.IncludedOauth2ProviderConfigInput,
        }),
    },
})

M.CreateOauth2CredentialProviderInput = schema.new({
    id = id.from(_N, "CreateOauth2CredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderVendor = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderInput", "credentialProviderVendor"),
            type = "string",
            name = "credentialProviderVendor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        oauth2ProviderConfigInput = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderInput", "oauth2ProviderConfigInput"),
            type = "union",
            name = "oauth2ProviderConfigInput",
            target_id = id.from(_N, "Oauth2ProviderConfigInput"),
            target = M.Oauth2ProviderConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AtlassianOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "AtlassianOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "AtlassianOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "AtlassianOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "CustomOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigOutput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointOverrides = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigOutput", "privateEndpointOverrides"),
            type = "list",
            name = "privateEndpointOverrides",
            target_id = prelude.Document.id,
            list_member = M.PrivateEndpointOverride,
        }),
        onBehalfOfTokenExchangeConfig = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigOutput", "onBehalfOfTokenExchangeConfig"),
            type = "structure",
            name = "onBehalfOfTokenExchangeConfig",
            target_id = id.from(_N, "OnBehalfOfTokenExchangeConfigType"),
            target = M.OnBehalfOfTokenExchangeConfigType,
        }),
        clientAuthenticationMethod = schema.new({
            id = id.from(_N, "CustomOauth2ProviderConfigOutput", "clientAuthenticationMethod"),
            type = "string",
            name = "clientAuthenticationMethod",
            target_id = prelude.String.id,
        }),
    },
})

M.GithubOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "GithubOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "GithubOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "GithubOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.GoogleOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "GoogleOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "GoogleOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "GoogleOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.IncludedOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "IncludedOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "IncludedOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.LinkedinOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "LinkedinOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "LinkedinOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "LinkedinOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.MicrosoftOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "MicrosoftOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "MicrosoftOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "MicrosoftOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.SalesforceOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "SalesforceOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "SalesforceOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "SalesforceOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.SlackOauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "SlackOauth2ProviderConfigOutput"),
    type = "structure",
    members = {
        oauthDiscovery = schema.new({
            id = id.from(_N, "SlackOauth2ProviderConfigOutput", "oauthDiscovery"),
            type = "union",
            name = "oauthDiscovery",
            target_id = id.from(_N, "Oauth2Discovery"),
            target = M.Oauth2Discovery,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientId = schema.new({
            id = id.from(_N, "SlackOauth2ProviderConfigOutput", "clientId"),
            type = "string",
            name = "clientId",
            target_id = prelude.String.id,
        }),
    },
})

M.Oauth2ProviderConfigOutput = schema.new({
    id = id.from(_N, "Oauth2ProviderConfigOutput"),
    type = "union",
    members = {
        customOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "customOauth2ProviderConfig"),
            type = "structure",
            name = "customOauth2ProviderConfig",
            target_id = id.from(_N, "CustomOauth2ProviderConfigOutput"),
            target = M.CustomOauth2ProviderConfigOutput,
        }),
        googleOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "googleOauth2ProviderConfig"),
            type = "structure",
            name = "googleOauth2ProviderConfig",
            target_id = id.from(_N, "GoogleOauth2ProviderConfigOutput"),
            target = M.GoogleOauth2ProviderConfigOutput,
        }),
        githubOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "githubOauth2ProviderConfig"),
            type = "structure",
            name = "githubOauth2ProviderConfig",
            target_id = id.from(_N, "GithubOauth2ProviderConfigOutput"),
            target = M.GithubOauth2ProviderConfigOutput,
        }),
        slackOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "slackOauth2ProviderConfig"),
            type = "structure",
            name = "slackOauth2ProviderConfig",
            target_id = id.from(_N, "SlackOauth2ProviderConfigOutput"),
            target = M.SlackOauth2ProviderConfigOutput,
        }),
        salesforceOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "salesforceOauth2ProviderConfig"),
            type = "structure",
            name = "salesforceOauth2ProviderConfig",
            target_id = id.from(_N, "SalesforceOauth2ProviderConfigOutput"),
            target = M.SalesforceOauth2ProviderConfigOutput,
        }),
        microsoftOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "microsoftOauth2ProviderConfig"),
            type = "structure",
            name = "microsoftOauth2ProviderConfig",
            target_id = id.from(_N, "MicrosoftOauth2ProviderConfigOutput"),
            target = M.MicrosoftOauth2ProviderConfigOutput,
        }),
        atlassianOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "atlassianOauth2ProviderConfig"),
            type = "structure",
            name = "atlassianOauth2ProviderConfig",
            target_id = id.from(_N, "AtlassianOauth2ProviderConfigOutput"),
            target = M.AtlassianOauth2ProviderConfigOutput,
        }),
        linkedinOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "linkedinOauth2ProviderConfig"),
            type = "structure",
            name = "linkedinOauth2ProviderConfig",
            target_id = id.from(_N, "LinkedinOauth2ProviderConfigOutput"),
            target = M.LinkedinOauth2ProviderConfigOutput,
        }),
        includedOauth2ProviderConfig = schema.new({
            id = id.from(_N, "Oauth2ProviderConfigOutput", "includedOauth2ProviderConfig"),
            type = "structure",
            name = "includedOauth2ProviderConfig",
            target_id = id.from(_N, "IncludedOauth2ProviderConfigOutput"),
            target = M.IncludedOauth2ProviderConfigOutput,
        }),
    },
})

M.CreateOauth2CredentialProviderOutput = schema.new({
    id = id.from(_N, "CreateOauth2CredentialProviderResponse"),
    type = "structure",
    members = {
        clientSecretArn = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderOutput", "clientSecretArn"),
            type = "structure",
            name = "clientSecretArn",
            target_id = id.from(_N, "Secret"),
            target = M.Secret,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderOutput", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        callbackUrl = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderOutput", "callbackUrl"),
            type = "string",
            name = "callbackUrl",
            target_id = prelude.String.id,
        }),
        oauth2ProviderConfigOutput = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderOutput", "oauth2ProviderConfigOutput"),
            type = "union",
            name = "oauth2ProviderConfigOutput",
            target_id = id.from(_N, "Oauth2ProviderConfigOutput"),
            target = M.Oauth2ProviderConfigOutput,
        }),
        status = schema.new({
            id = id.from(_N, "CreateOauth2CredentialProviderOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOauth2CredentialProviderInput = schema.new({
    id = id.from(_N, "DeleteOauth2CredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteOauth2CredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOauth2CredentialProviderOutput = schema.new({
    id = id.from(_N, "DeleteOauth2CredentialProviderResponse"),
    type = "structure",
})

M.GetOauth2CredentialProviderInput = schema.new({
    id = id.from(_N, "GetOauth2CredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOauth2CredentialProviderOutput = schema.new({
    id = id.from(_N, "GetOauth2CredentialProviderResponse"),
    type = "structure",
    members = {
        clientSecretArn = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "clientSecretArn"),
            type = "structure",
            name = "clientSecretArn",
            target_id = id.from(_N, "Secret"),
            target = M.Secret,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderVendor = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "credentialProviderVendor"),
            type = "string",
            name = "credentialProviderVendor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        callbackUrl = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "callbackUrl"),
            type = "string",
            name = "callbackUrl",
            target_id = prelude.String.id,
        }),
        oauth2ProviderConfigOutput = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "oauth2ProviderConfigOutput"),
            type = "union",
            name = "oauth2ProviderConfigOutput",
            target_id = id.from(_N, "Oauth2ProviderConfigOutput"),
            target = M.Oauth2ProviderConfigOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetOauth2CredentialProviderOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOauth2CredentialProvidersInput = schema.new({
    id = id.from(_N, "ListOauth2CredentialProvidersRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListOauth2CredentialProvidersInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListOauth2CredentialProvidersInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
    },
})

M.Oauth2CredentialProviderItem = schema.new({
    id = id.from(_N, "Oauth2CredentialProviderItem"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Oauth2CredentialProviderItem", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderVendor = schema.new({
            id = id.from(_N, "Oauth2CredentialProviderItem", "credentialProviderVendor"),
            type = "string",
            name = "credentialProviderVendor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "Oauth2CredentialProviderItem", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "Oauth2CredentialProviderItem", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "Oauth2CredentialProviderItem", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListOauth2CredentialProvidersOutput = schema.new({
    id = id.from(_N, "ListOauth2CredentialProvidersResponse"),
    type = "structure",
    members = {
        credentialProviders = schema.new({
            id = id.from(_N, "ListOauth2CredentialProvidersOutput", "credentialProviders"),
            type = "list",
            name = "credentialProviders",
            target_id = prelude.Document.id,
            list_member = M.Oauth2CredentialProviderItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListOauth2CredentialProvidersOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOauth2CredentialProviderInput = schema.new({
    id = id.from(_N, "UpdateOauth2CredentialProviderRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderVendor = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderInput", "credentialProviderVendor"),
            type = "string",
            name = "credentialProviderVendor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        oauth2ProviderConfigInput = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderInput", "oauth2ProviderConfigInput"),
            type = "union",
            name = "oauth2ProviderConfigInput",
            target_id = id.from(_N, "Oauth2ProviderConfigInput"),
            target = M.Oauth2ProviderConfigInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateOauth2CredentialProviderOutput = schema.new({
    id = id.from(_N, "UpdateOauth2CredentialProviderResponse"),
    type = "structure",
    members = {
        clientSecretArn = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "clientSecretArn"),
            type = "structure",
            name = "clientSecretArn",
            target_id = id.from(_N, "Secret"),
            target = M.Secret,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderVendor = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "credentialProviderVendor"),
            type = "string",
            name = "credentialProviderVendor",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderArn = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "credentialProviderArn"),
            type = "string",
            name = "credentialProviderArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        callbackUrl = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "callbackUrl"),
            type = "string",
            name = "callbackUrl",
            target_id = prelude.String.id,
        }),
        oauth2ProviderConfigOutput = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "oauth2ProviderConfigOutput"),
            type = "union",
            name = "oauth2ProviderConfigOutput",
            target_id = id.from(_N, "Oauth2ProviderConfigOutput"),
            target = M.Oauth2ProviderConfigOutput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdTime = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateOauth2CredentialProviderOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.CloudWatchLogsInputConfig = schema.new({
    id = id.from(_N, "CloudWatchLogsInputConfig"),
    type = "structure",
    members = {
        logGroupNames = schema.new({
            id = id.from(_N, "CloudWatchLogsInputConfig", "logGroupNames"),
            type = "list",
            name = "logGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        serviceNames = schema.new({
            id = id.from(_N, "CloudWatchLogsInputConfig", "serviceNames"),
            type = "list",
            name = "serviceNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DataSourceConfig = schema.new({
    id = id.from(_N, "DataSourceConfig"),
    type = "union",
    members = {
        cloudWatchLogs = schema.new({
            id = id.from(_N, "DataSourceConfig", "cloudWatchLogs"),
            type = "structure",
            name = "cloudWatchLogs",
            target_id = id.from(_N, "CloudWatchLogsInputConfig"),
            target = M.CloudWatchLogsInputConfig,
        }),
    },
})

M.EvaluatorReference = schema.new({
    id = id.from(_N, "EvaluatorReference"),
    type = "union",
    members = {
        evaluatorId = schema.new({
            id = id.from(_N, "EvaluatorReference", "evaluatorId"),
            type = "string",
            name = "evaluatorId",
            target_id = prelude.String.id,
        }),
    },
})

M.FilterValue = schema.new({
    id = id.from(_N, "FilterValue"),
    type = "union",
    members = {
        stringValue = schema.new({
            id = id.from(_N, "FilterValue", "stringValue"),
            type = "string",
            name = "stringValue",
            target_id = prelude.String.id,
        }),
        doubleValue = schema.new({
            id = id.from(_N, "FilterValue", "doubleValue"),
            type = "double",
            name = "doubleValue",
            target_id = prelude.Double.id,
        }),
        booleanValue = schema.new({
            id = id.from(_N, "FilterValue", "booleanValue"),
            type = "boolean",
            name = "booleanValue",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        key = schema.new({
            id = id.from(_N, "Filter", "key"),
            type = "string",
            name = "key",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        operator = schema.new({
            id = id.from(_N, "Filter", "operator"),
            type = "string",
            name = "operator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "Filter", "value"),
            type = "union",
            name = "value",
            target_id = id.from(_N, "FilterValue"),
            target = M.FilterValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SamplingConfig = schema.new({
    id = id.from(_N, "SamplingConfig"),
    type = "structure",
    members = {
        samplingPercentage = schema.new({
            id = id.from(_N, "SamplingConfig", "samplingPercentage"),
            type = "double",
            name = "samplingPercentage",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SessionConfig = schema.new({
    id = id.from(_N, "SessionConfig"),
    type = "structure",
    members = {
        sessionTimeoutMinutes = schema.new({
            id = id.from(_N, "SessionConfig", "sessionTimeoutMinutes"),
            type = "integer",
            name = "sessionTimeoutMinutes",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Rule = schema.new({
    id = id.from(_N, "Rule"),
    type = "structure",
    members = {
        samplingConfig = schema.new({
            id = id.from(_N, "Rule", "samplingConfig"),
            type = "structure",
            name = "samplingConfig",
            target_id = id.from(_N, "SamplingConfig"),
            target = M.SamplingConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filters = schema.new({
            id = id.from(_N, "Rule", "filters"),
            type = "list",
            name = "filters",
            target_id = prelude.Document.id,
            list_member = M.Filter,
        }),
        sessionConfig = schema.new({
            id = id.from(_N, "Rule", "sessionConfig"),
            type = "structure",
            name = "sessionConfig",
            target_id = id.from(_N, "SessionConfig"),
            target = M.SessionConfig,
        }),
    },
})

M.CreateOnlineEvaluationConfigInput = schema.new({
    id = id.from(_N, "CreateOnlineEvaluationConfigRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        onlineEvaluationConfigName = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "onlineEvaluationConfigName"),
            type = "string",
            name = "onlineEvaluationConfigName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        rule = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "rule"),
            type = "structure",
            name = "rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceConfig = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "dataSourceConfig"),
            type = "union",
            name = "dataSourceConfig",
            target_id = id.from(_N, "DataSourceConfig"),
            target = M.DataSourceConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluators = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.EvaluatorReference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluationExecutionRoleArn = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "evaluationExecutionRoleArn"),
            type = "string",
            name = "evaluationExecutionRoleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        enableOnCreate = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "enableOnCreate"),
            type = "boolean",
            name = "enableOnCreate",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CloudWatchOutputConfig = schema.new({
    id = id.from(_N, "CloudWatchOutputConfig"),
    type = "structure",
    members = {
        logGroupName = schema.new({
            id = id.from(_N, "CloudWatchOutputConfig", "logGroupName"),
            type = "string",
            name = "logGroupName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OutputConfig = schema.new({
    id = id.from(_N, "OutputConfig"),
    type = "structure",
    members = {
        cloudWatchConfig = schema.new({
            id = id.from(_N, "OutputConfig", "cloudWatchConfig"),
            type = "structure",
            name = "cloudWatchConfig",
            target_id = id.from(_N, "CloudWatchOutputConfig"),
            target = M.CloudWatchOutputConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateOnlineEvaluationConfigOutput = schema.new({
    id = id.from(_N, "CreateOnlineEvaluationConfigResponse"),
    type = "structure",
    members = {
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputConfig = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "outputConfig"),
            type = "structure",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
        }),
        status = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "CreateOnlineEvaluationConfigOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteOnlineEvaluationConfigInput = schema.new({
    id = id.from(_N, "DeleteOnlineEvaluationConfigRequest"),
    type = "structure",
    members = {
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "DeleteOnlineEvaluationConfigInput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteOnlineEvaluationConfigOutput = schema.new({
    id = id.from(_N, "DeleteOnlineEvaluationConfigResponse"),
    type = "structure",
    members = {
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "DeleteOnlineEvaluationConfigOutput", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "DeleteOnlineEvaluationConfigOutput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteOnlineEvaluationConfigOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetOnlineEvaluationConfigInput = schema.new({
    id = id.from(_N, "GetOnlineEvaluationConfigRequest"),
    type = "structure",
    members = {
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigInput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOnlineEvaluationConfigOutput = schema.new({
    id = id.from(_N, "GetOnlineEvaluationConfigResponse"),
    type = "structure",
    members = {
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigName = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "onlineEvaluationConfigName"),
            type = "string",
            name = "onlineEvaluationConfigName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        rule = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "rule"),
            type = "structure",
            name = "rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dataSourceConfig = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "dataSourceConfig"),
            type = "union",
            name = "dataSourceConfig",
            target_id = id.from(_N, "DataSourceConfig"),
            target = M.DataSourceConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evaluators = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.EvaluatorReference,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputConfig = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "outputConfig"),
            type = "structure",
            name = "outputConfig",
            target_id = id.from(_N, "OutputConfig"),
            target = M.OutputConfig,
        }),
        evaluationExecutionRoleArn = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "evaluationExecutionRoleArn"),
            type = "string",
            name = "evaluationExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "GetOnlineEvaluationConfigOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOnlineEvaluationConfigsInput = schema.new({
    id = id.from(_N, "ListOnlineEvaluationConfigsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListOnlineEvaluationConfigsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListOnlineEvaluationConfigsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.OnlineEvaluationConfigSummary = schema.new({
    id = id.from(_N, "OnlineEvaluationConfigSummary"),
    type = "structure",
    members = {
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigName = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "onlineEvaluationConfigName"),
            type = "string",
            name = "onlineEvaluationConfigName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "OnlineEvaluationConfigSummary", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.ListOnlineEvaluationConfigsOutput = schema.new({
    id = id.from(_N, "ListOnlineEvaluationConfigsResponse"),
    type = "structure",
    members = {
        onlineEvaluationConfigs = schema.new({
            id = id.from(_N, "ListOnlineEvaluationConfigsOutput", "onlineEvaluationConfigs"),
            type = "list",
            name = "onlineEvaluationConfigs",
            target_id = prelude.Document.id,
            list_member = M.OnlineEvaluationConfigSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListOnlineEvaluationConfigsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOnlineEvaluationConfigInput = schema.new({
    id = id.from(_N, "UpdateOnlineEvaluationConfigRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        rule = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "rule"),
            type = "structure",
            name = "rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
        }),
        dataSourceConfig = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "dataSourceConfig"),
            type = "union",
            name = "dataSourceConfig",
            target_id = id.from(_N, "DataSourceConfig"),
            target = M.DataSourceConfig,
        }),
        evaluators = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "evaluators"),
            type = "list",
            name = "evaluators",
            target_id = prelude.Document.id,
            list_member = M.EvaluatorReference,
        }),
        evaluationExecutionRoleArn = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "evaluationExecutionRoleArn"),
            type = "string",
            name = "evaluationExecutionRoleArn",
            target_id = prelude.String.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigInput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateOnlineEvaluationConfigOutput = schema.new({
    id = id.from(_N, "UpdateOnlineEvaluationConfigResponse"),
    type = "structure",
    members = {
        onlineEvaluationConfigArn = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigOutput", "onlineEvaluationConfigArn"),
            type = "string",
            name = "onlineEvaluationConfigArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        onlineEvaluationConfigId = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigOutput", "onlineEvaluationConfigId"),
            type = "string",
            name = "onlineEvaluationConfigId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        executionStatus = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigOutput", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        failureReason = schema.new({
            id = id.from(_N, "UpdateOnlineEvaluationConfigOutput", "failureReason"),
            type = "string",
            name = "failureReason",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePolicyEngineInput = schema.new({
    id = id.from(_N, "CreatePolicyEngineRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreatePolicyEngineInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePolicyEngineInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePolicyEngineInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "CreatePolicyEngineInput", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreatePolicyEngineInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreatePolicyEngineOutput = schema.new({
    id = id.from(_N, "CreatePolicyEngineResponse"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineArn = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "policyEngineArn"),
            type = "string",
            name = "policyEngineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "CreatePolicyEngineOutput", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.DeletePolicyEngineInput = schema.new({
    id = id.from(_N, "DeletePolicyEngineRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "DeletePolicyEngineInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePolicyEngineOutput = schema.new({
    id = id.from(_N, "DeletePolicyEngineResponse"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineArn = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "policyEngineArn"),
            type = "string",
            name = "policyEngineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "DeletePolicyEngineOutput", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPolicyEngineInput = schema.new({
    id = id.from(_N, "GetPolicyEngineRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "GetPolicyEngineInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPolicyEngineOutput = schema.new({
    id = id.from(_N, "GetPolicyEngineResponse"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineArn = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "policyEngineArn"),
            type = "string",
            name = "policyEngineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "GetPolicyEngineOutput", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyEnginesInput = schema.new({
    id = id.from(_N, "ListPolicyEnginesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyEnginesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyEnginesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.PolicyEngine = schema.new({
    id = id.from(_N, "PolicyEngine"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "PolicyEngine", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PolicyEngine", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "PolicyEngine", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "PolicyEngine", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "PolicyEngine", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineArn = schema.new({
            id = id.from(_N, "PolicyEngine", "policyEngineArn"),
            type = "string",
            name = "policyEngineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "PolicyEngine", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "PolicyEngine", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "PolicyEngine", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyEnginesOutput = schema.new({
    id = id.from(_N, "ListPolicyEnginesResponse"),
    type = "structure",
    members = {
        policyEngines = schema.new({
            id = id.from(_N, "ListPolicyEnginesOutput", "policyEngines"),
            type = "list",
            name = "policyEngines",
            target_id = prelude.Document.id,
            list_member = M.PolicyEngine,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyEnginesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatedDescription = schema.new({
    id = id.from(_N, "UpdatedDescription"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedDescription", "optionalValue"),
            type = "string",
            name = "optionalValue",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePolicyEngineInput = schema.new({
    id = id.from(_N, "UpdatePolicyEngineRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "UpdatePolicyEngineInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePolicyEngineInput", "description"),
            type = "structure",
            name = "description",
            target_id = id.from(_N, "UpdatedDescription"),
            target = M.UpdatedDescription,
        }),
    },
})

M.UpdatePolicyEngineOutput = schema.new({
    id = id.from(_N, "UpdatePolicyEngineResponse"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineArn = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "policyEngineArn"),
            type = "string",
            name = "policyEngineArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        encryptionKeyArn = schema.new({
            id = id.from(_N, "UpdatePolicyEngineOutput", "encryptionKeyArn"),
            type = "string",
            name = "encryptionKeyArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPolicyGenerationInput = schema.new({
    id = id.from(_N, "GetPolicyGenerationRequest"),
    type = "structure",
    members = {
        policyGenerationId = schema.new({
            id = id.from(_N, "GetPolicyGenerationInput", "policyGenerationId"),
            type = "string",
            name = "policyGenerationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "GetPolicyGenerationInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.Resource = schema.new({
    id = id.from(_N, "Resource"),
    type = "union",
    members = {
        arn = schema.new({
            id = id.from(_N, "Resource", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetPolicyGenerationOutput = schema.new({
    id = id.from(_N, "GetPolicyGenerationResponse"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationId = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "policyGenerationId"),
            type = "string",
            name = "policyGenerationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationArn = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "policyGenerationArn"),
            type = "string",
            name = "policyGenerationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findings = schema.new({
            id = id.from(_N, "GetPolicyGenerationOutput", "findings"),
            type = "string",
            name = "findings",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyGenerationAssetsInput = schema.new({
    id = id.from(_N, "ListPolicyGenerationAssetsRequest"),
    type = "structure",
    members = {
        policyGenerationId = schema.new({
            id = id.from(_N, "ListPolicyGenerationAssetsInput", "policyGenerationId"),
            type = "string",
            name = "policyGenerationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "ListPolicyGenerationAssetsInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyGenerationAssetsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyGenerationAssetsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.CedarPolicy = schema.new({
    id = id.from(_N, "CedarPolicy"),
    type = "structure",
    members = {
        statement = schema.new({
            id = id.from(_N, "CedarPolicy", "statement"),
            type = "string",
            name = "statement",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PolicyGenerationDetails = schema.new({
    id = id.from(_N, "PolicyGenerationDetails"),
    type = "structure",
    members = {
        policyGenerationId = schema.new({
            id = id.from(_N, "PolicyGenerationDetails", "policyGenerationId"),
            type = "string",
            name = "policyGenerationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationAssetId = schema.new({
            id = id.from(_N, "PolicyGenerationDetails", "policyGenerationAssetId"),
            type = "string",
            name = "policyGenerationAssetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PolicyDefinition = schema.new({
    id = id.from(_N, "PolicyDefinition"),
    type = "union",
    members = {
        cedar = schema.new({
            id = id.from(_N, "PolicyDefinition", "cedar"),
            type = "structure",
            name = "cedar",
            target_id = id.from(_N, "CedarPolicy"),
            target = M.CedarPolicy,
        }),
        policyGeneration = schema.new({
            id = id.from(_N, "PolicyDefinition", "policyGeneration"),
            type = "structure",
            name = "policyGeneration",
            target_id = id.from(_N, "PolicyGenerationDetails"),
            target = M.PolicyGenerationDetails,
        }),
    },
})

M.Finding = schema.new({
    id = id.from(_N, "Finding"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "Finding", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Finding", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.PolicyGenerationAsset = schema.new({
    id = id.from(_N, "PolicyGenerationAsset"),
    type = "structure",
    members = {
        policyGenerationAssetId = schema.new({
            id = id.from(_N, "PolicyGenerationAsset", "policyGenerationAssetId"),
            type = "string",
            name = "policyGenerationAssetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "PolicyGenerationAsset", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
        }),
        rawTextFragment = schema.new({
            id = id.from(_N, "PolicyGenerationAsset", "rawTextFragment"),
            type = "string",
            name = "rawTextFragment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findings = schema.new({
            id = id.from(_N, "PolicyGenerationAsset", "findings"),
            type = "list",
            name = "findings",
            target_id = prelude.Document.id,
            list_member = M.Finding,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPolicyGenerationAssetsOutput = schema.new({
    id = id.from(_N, "ListPolicyGenerationAssetsResponse"),
    type = "structure",
    members = {
        policyGenerationAssets = schema.new({
            id = id.from(_N, "ListPolicyGenerationAssetsOutput", "policyGenerationAssets"),
            type = "list",
            name = "policyGenerationAssets",
            target_id = prelude.Document.id,
            list_member = M.PolicyGenerationAsset,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyGenerationAssetsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyGenerationsInput = schema.new({
    id = id.from(_N, "ListPolicyGenerationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyGenerationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPolicyGenerationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "ListPolicyGenerationsInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.PolicyGeneration = schema.new({
    id = id.from(_N, "PolicyGeneration"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "PolicyGeneration", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationId = schema.new({
            id = id.from(_N, "PolicyGeneration", "policyGenerationId"),
            type = "string",
            name = "policyGenerationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "PolicyGeneration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationArn = schema.new({
            id = id.from(_N, "PolicyGeneration", "policyGenerationArn"),
            type = "string",
            name = "policyGenerationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "PolicyGeneration", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "PolicyGeneration", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "PolicyGeneration", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "PolicyGeneration", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "PolicyGeneration", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findings = schema.new({
            id = id.from(_N, "PolicyGeneration", "findings"),
            type = "string",
            name = "findings",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPolicyGenerationsOutput = schema.new({
    id = id.from(_N, "ListPolicyGenerationsResponse"),
    type = "structure",
    members = {
        policyGenerations = schema.new({
            id = id.from(_N, "ListPolicyGenerationsOutput", "policyGenerations"),
            type = "list",
            name = "policyGenerations",
            target_id = prelude.Document.id,
            list_member = M.PolicyGeneration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPolicyGenerationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.Content = schema.new({
    id = id.from(_N, "Content"),
    type = "union",
    members = {
        rawText = schema.new({
            id = id.from(_N, "Content", "rawText"),
            type = "string",
            name = "rawText",
            target_id = prelude.String.id,
        }),
    },
})

M.StartPolicyGenerationInput = schema.new({
    id = id.from(_N, "StartPolicyGenerationRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        content = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "content"),
            type = "union",
            name = "content",
            target_id = id.from(_N, "Content"),
            target = M.Content,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "StartPolicyGenerationInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.StartPolicyGenerationOutput = schema.new({
    id = id.from(_N, "StartPolicyGenerationResponse"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationId = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "policyGenerationId"),
            type = "string",
            name = "policyGenerationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyGenerationArn = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "policyGenerationArn"),
            type = "string",
            name = "policyGenerationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "Resource"),
            target = M.Resource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findings = schema.new({
            id = id.from(_N, "StartPolicyGenerationOutput", "findings"),
            type = "string",
            name = "findings",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePolicyInput = schema.new({
    id = id.from(_N, "CreatePolicyRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreatePolicyInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "CreatePolicyInput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePolicyInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        validationMode = schema.new({
            id = id.from(_N, "CreatePolicyInput", "validationMode"),
            type = "string",
            name = "validationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "FAIL_ON_ANY_FINDINGS" },
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "CreatePolicyInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreatePolicyInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreatePolicyOutput = schema.new({
    id = id.from(_N, "CreatePolicyResponse"),
    type = "structure",
    members = {
        policyId = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "CreatePolicyOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePolicyInput = schema.new({
    id = id.from(_N, "DeletePolicyRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "DeletePolicyInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "DeletePolicyInput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeletePolicyOutput = schema.new({
    id = id.from(_N, "DeletePolicyResponse"),
    type = "structure",
    members = {
        policyId = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "DeletePolicyOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPolicyInput = schema.new({
    id = id.from(_N, "GetPolicyRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "GetPolicyInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "GetPolicyInput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetPolicyOutput = schema.new({
    id = id.from(_N, "GetPolicyResponse"),
    type = "structure",
    members = {
        policyId = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetPolicyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "GetPolicyOutput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetPolicyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetPolicyOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetPolicyOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "GetPolicyOutput", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetPolicyOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GetPolicyOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPoliciesInput = schema.new({
    id = id.from(_N, "ListPoliciesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListPoliciesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPoliciesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "ListPoliciesInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetResourceScope = schema.new({
            id = id.from(_N, "ListPoliciesInput", "targetResourceScope"),
            type = "string",
            name = "targetResourceScope",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "targetResourceScope" },
            },
        }),
    },
})

M.Policy = schema.new({
    id = id.from(_N, "Policy"),
    type = "structure",
    members = {
        policyId = schema.new({
            id = id.from(_N, "Policy", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "Policy", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "Policy", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "Policy", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "Policy", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Policy", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Policy", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "Policy", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "Policy", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "Policy", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListPoliciesOutput = schema.new({
    id = id.from(_N, "ListPoliciesResponse"),
    type = "structure",
    members = {
        policies = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "policies"),
            type = "list",
            name = "policies",
            target_id = prelude.Document.id,
            list_member = M.Policy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPoliciesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePolicyInput = schema.new({
    id = id.from(_N, "UpdatePolicyRequest"),
    type = "structure",
    members = {
        policyEngineId = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policyId = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "description"),
            type = "structure",
            name = "description",
            target_id = id.from(_N, "UpdatedDescription"),
            target = M.UpdatedDescription,
        }),
        definition = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
        }),
        validationMode = schema.new({
            id = id.from(_N, "UpdatePolicyInput", "validationMode"),
            type = "string",
            name = "validationMode",
            target_id = prelude.String.id,
            traits = {
                [traits.DEFAULT] = { value = "FAIL_ON_ANY_FINDINGS" },
            },
        }),
    },
})

M.UpdatePolicyOutput = schema.new({
    id = id.from(_N, "UpdatePolicyResponse"),
    type = "structure",
    members = {
        policyId = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "policyId"),
            type = "string",
            name = "policyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyEngineId = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "policyEngineId"),
            type = "string",
            name = "policyEngineId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        definition = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "definition"),
            type = "union",
            name = "definition",
            target_id = id.from(_N, "PolicyDefinition"),
            target = M.PolicyDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        policyArn = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "policyArn"),
            type = "string",
            name = "policyArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "UpdatePolicyOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePolicyInput = schema.new({
    id = id.from(_N, "PutResourcePolicyRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        policy = schema.new({
            id = id.from(_N, "PutResourcePolicyInput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutResourcePolicyOutput = schema.new({
    id = id.from(_N, "PutResourcePolicyResponse"),
    type = "structure",
    members = {
        policy = schema.new({
            id = id.from(_N, "PutResourcePolicyOutput", "policy"),
            type = "string",
            name = "policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CustomDescriptor = schema.new({
    id = id.from(_N, "CustomDescriptor"),
    type = "structure",
    members = {
        inlineContent = schema.new({
            id = id.from(_N, "CustomDescriptor", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.ServerDefinition = schema.new({
    id = id.from(_N, "ServerDefinition"),
    type = "structure",
    members = {
        schemaVersion = schema.new({
            id = id.from(_N, "ServerDefinition", "schemaVersion"),
            type = "string",
            name = "schemaVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "ServerDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.ToolsDefinition = schema.new({
    id = id.from(_N, "ToolsDefinition"),
    type = "structure",
    members = {
        protocolVersion = schema.new({
            id = id.from(_N, "ToolsDefinition", "protocolVersion"),
            type = "string",
            name = "protocolVersion",
            target_id = prelude.String.id,
        }),
        inlineContent = schema.new({
            id = id.from(_N, "ToolsDefinition", "inlineContent"),
            type = "string",
            name = "inlineContent",
            target_id = prelude.String.id,
        }),
    },
})

M.McpDescriptor = schema.new({
    id = id.from(_N, "McpDescriptor"),
    type = "structure",
    members = {
        server = schema.new({
            id = id.from(_N, "McpDescriptor", "server"),
            type = "structure",
            name = "server",
            target_id = id.from(_N, "ServerDefinition"),
            target = M.ServerDefinition,
        }),
        tools = schema.new({
            id = id.from(_N, "McpDescriptor", "tools"),
            type = "structure",
            name = "tools",
            target_id = id.from(_N, "ToolsDefinition"),
            target = M.ToolsDefinition,
        }),
    },
})

M.Descriptors = schema.new({
    id = id.from(_N, "Descriptors"),
    type = "structure",
    members = {
        mcp = schema.new({
            id = id.from(_N, "Descriptors", "mcp"),
            type = "structure",
            name = "mcp",
            target_id = id.from(_N, "McpDescriptor"),
            target = M.McpDescriptor,
        }),
        a2a = schema.new({
            id = id.from(_N, "Descriptors", "a2a"),
            type = "structure",
            name = "a2a",
            target_id = id.from(_N, "A2aDescriptor"),
            target = M.A2aDescriptor,
        }),
        custom = schema.new({
            id = id.from(_N, "Descriptors", "custom"),
            type = "structure",
            name = "custom",
            target_id = id.from(_N, "CustomDescriptor"),
            target = M.CustomDescriptor,
        }),
        agentSkills = schema.new({
            id = id.from(_N, "Descriptors", "agentSkills"),
            type = "structure",
            name = "agentSkills",
            target_id = id.from(_N, "AgentSkillsDescriptor"),
            target = M.AgentSkillsDescriptor,
        }),
    },
})

M.RegistryRecordIamCredentialProvider = schema.new({
    id = id.from(_N, "RegistryRecordIamCredentialProvider"),
    type = "structure",
    members = {
        roleArn = schema.new({
            id = id.from(_N, "RegistryRecordIamCredentialProvider", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        service = schema.new({
            id = id.from(_N, "RegistryRecordIamCredentialProvider", "service"),
            type = "string",
            name = "service",
            target_id = prelude.String.id,
        }),
        region = schema.new({
            id = id.from(_N, "RegistryRecordIamCredentialProvider", "region"),
            type = "string",
            name = "region",
            target_id = prelude.String.id,
        }),
    },
})

M.RegistryRecordOAuthCredentialProvider = schema.new({
    id = id.from(_N, "RegistryRecordOAuthCredentialProvider"),
    type = "structure",
    members = {
        providerArn = schema.new({
            id = id.from(_N, "RegistryRecordOAuthCredentialProvider", "providerArn"),
            type = "string",
            name = "providerArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        grantType = schema.new({
            id = id.from(_N, "RegistryRecordOAuthCredentialProvider", "grantType"),
            type = "string",
            name = "grantType",
            target_id = prelude.String.id,
        }),
        scopes = schema.new({
            id = id.from(_N, "RegistryRecordOAuthCredentialProvider", "scopes"),
            type = "list",
            name = "scopes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        customParameters = schema.new({
            id = id.from(_N, "RegistryRecordOAuthCredentialProvider", "customParameters"),
            type = "map",
            name = "customParameters",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.RegistryRecordCredentialProviderUnion = schema.new({
    id = id.from(_N, "RegistryRecordCredentialProviderUnion"),
    type = "union",
    members = {
        oauthCredentialProvider = schema.new({
            id = id.from(_N, "RegistryRecordCredentialProviderUnion", "oauthCredentialProvider"),
            type = "structure",
            name = "oauthCredentialProvider",
            target_id = id.from(_N, "RegistryRecordOAuthCredentialProvider"),
            target = M.RegistryRecordOAuthCredentialProvider,
        }),
        iamCredentialProvider = schema.new({
            id = id.from(_N, "RegistryRecordCredentialProviderUnion", "iamCredentialProvider"),
            type = "structure",
            name = "iamCredentialProvider",
            target_id = id.from(_N, "RegistryRecordIamCredentialProvider"),
            target = M.RegistryRecordIamCredentialProvider,
        }),
    },
})

M.RegistryRecordCredentialProviderConfiguration = schema.new({
    id = id.from(_N, "RegistryRecordCredentialProviderConfiguration"),
    type = "structure",
    members = {
        credentialProviderType = schema.new({
            id = id.from(_N, "RegistryRecordCredentialProviderConfiguration", "credentialProviderType"),
            type = "string",
            name = "credentialProviderType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProvider = schema.new({
            id = id.from(_N, "RegistryRecordCredentialProviderConfiguration", "credentialProvider"),
            type = "union",
            name = "credentialProvider",
            target_id = id.from(_N, "RegistryRecordCredentialProviderUnion"),
            target = M.RegistryRecordCredentialProviderUnion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FromUrlSynchronizationConfiguration = schema.new({
    id = id.from(_N, "FromUrlSynchronizationConfiguration"),
    type = "structure",
    members = {
        url = schema.new({
            id = id.from(_N, "FromUrlSynchronizationConfiguration", "url"),
            type = "string",
            name = "url",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "FromUrlSynchronizationConfiguration", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.RegistryRecordCredentialProviderConfiguration,
        }),
    },
})

M.SynchronizationConfiguration = schema.new({
    id = id.from(_N, "SynchronizationConfiguration"),
    type = "structure",
    members = {
        fromUrl = schema.new({
            id = id.from(_N, "SynchronizationConfiguration", "fromUrl"),
            type = "structure",
            name = "fromUrl",
            target_id = id.from(_N, "FromUrlSynchronizationConfiguration"),
            target = M.FromUrlSynchronizationConfiguration,
        }),
    },
})

M.CreateRegistryRecordInput = schema.new({
    id = id.from(_N, "CreateRegistryRecordRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        descriptorType = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        descriptors = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "descriptors"),
            type = "structure",
            name = "descriptors",
            target_id = id.from(_N, "Descriptors"),
            target = M.Descriptors,
        }),
        recordVersion = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "recordVersion"),
            type = "string",
            name = "recordVersion",
            target_id = prelude.String.id,
        }),
        synchronizationType = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "synchronizationType"),
            type = "string",
            name = "synchronizationType",
            target_id = prelude.String.id,
        }),
        synchronizationConfiguration = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "synchronizationConfiguration"),
            type = "structure",
            name = "synchronizationConfiguration",
            target_id = id.from(_N, "SynchronizationConfiguration"),
            target = M.SynchronizationConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateRegistryRecordInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateRegistryRecordOutput = schema.new({
    id = id.from(_N, "CreateRegistryRecordResponse"),
    type = "structure",
    members = {
        recordArn = schema.new({
            id = id.from(_N, "CreateRegistryRecordOutput", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateRegistryRecordOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistryRecordInput = schema.new({
    id = id.from(_N, "DeleteRegistryRecordRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "DeleteRegistryRecordInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "DeleteRegistryRecordInput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRegistryRecordOutput = schema.new({
    id = id.from(_N, "DeleteRegistryRecordResponse"),
    type = "structure",
})

M.GetRegistryRecordInput = schema.new({
    id = id.from(_N, "GetRegistryRecordRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "GetRegistryRecordInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "GetRegistryRecordInput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRegistryRecordOutput = schema.new({
    id = id.from(_N, "GetRegistryRecordResponse"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordArn = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        descriptorType = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        descriptors = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "descriptors"),
            type = "structure",
            name = "descriptors",
            target_id = id.from(_N, "Descriptors"),
            target = M.Descriptors,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordVersion = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "recordVersion"),
            type = "string",
            name = "recordVersion",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        synchronizationType = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "synchronizationType"),
            type = "string",
            name = "synchronizationType",
            target_id = prelude.String.id,
        }),
        synchronizationConfiguration = schema.new({
            id = id.from(_N, "GetRegistryRecordOutput", "synchronizationConfiguration"),
            type = "structure",
            name = "synchronizationConfiguration",
            target_id = id.from(_N, "SynchronizationConfiguration"),
            target = M.SynchronizationConfiguration,
        }),
    },
})

M.ListRegistryRecordsInput = schema.new({
    id = id.from(_N, "ListRegistryRecordsRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "ListRegistryRecordsInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListRegistryRecordsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRegistryRecordsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        name = schema.new({
            id = id.from(_N, "ListRegistryRecordsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListRegistryRecordsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
        descriptorType = schema.new({
            id = id.from(_N, "ListRegistryRecordsInput", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "descriptorType" },
            },
        }),
    },
})

M.RegistryRecordSummary = schema.new({
    id = id.from(_N, "RegistryRecordSummary"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordArn = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        descriptorType = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordVersion = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "recordVersion"),
            type = "string",
            name = "recordVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "RegistryRecordSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRegistryRecordsOutput = schema.new({
    id = id.from(_N, "ListRegistryRecordsResponse"),
    type = "structure",
    members = {
        registryRecords = schema.new({
            id = id.from(_N, "ListRegistryRecordsOutput", "registryRecords"),
            type = "list",
            name = "registryRecords",
            target_id = prelude.Document.id,
            list_member = M.RegistryRecordSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRegistryRecordsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SubmitRegistryRecordForApprovalInput = schema.new({
    id = id.from(_N, "SubmitRegistryRecordForApprovalRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalInput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.SubmitRegistryRecordForApprovalOutput = schema.new({
    id = id.from(_N, "SubmitRegistryRecordForApprovalResponse"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordArn = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalOutput", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalOutput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "SubmitRegistryRecordForApprovalOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdatedA2aDescriptor = schema.new({
    id = id.from(_N, "UpdatedA2aDescriptor"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedA2aDescriptor", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "A2aDescriptor"),
            target = M.A2aDescriptor,
        }),
    },
})

M.UpdatedSkillDefinition = schema.new({
    id = id.from(_N, "UpdatedSkillDefinition"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedSkillDefinition", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "SkillDefinition"),
            target = M.SkillDefinition,
        }),
    },
})

M.UpdatedSkillMdDefinition = schema.new({
    id = id.from(_N, "UpdatedSkillMdDefinition"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedSkillMdDefinition", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "SkillMdDefinition"),
            target = M.SkillMdDefinition,
        }),
    },
})

M.UpdatedAgentSkillsDescriptorFields = schema.new({
    id = id.from(_N, "UpdatedAgentSkillsDescriptorFields"),
    type = "structure",
    members = {
        skillMd = schema.new({
            id = id.from(_N, "UpdatedAgentSkillsDescriptorFields", "skillMd"),
            type = "structure",
            name = "skillMd",
            target_id = id.from(_N, "UpdatedSkillMdDefinition"),
            target = M.UpdatedSkillMdDefinition,
        }),
        skillDefinition = schema.new({
            id = id.from(_N, "UpdatedAgentSkillsDescriptorFields", "skillDefinition"),
            type = "structure",
            name = "skillDefinition",
            target_id = id.from(_N, "UpdatedSkillDefinition"),
            target = M.UpdatedSkillDefinition,
        }),
    },
})

M.UpdatedAgentSkillsDescriptor = schema.new({
    id = id.from(_N, "UpdatedAgentSkillsDescriptor"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedAgentSkillsDescriptor", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "UpdatedAgentSkillsDescriptorFields"),
            target = M.UpdatedAgentSkillsDescriptorFields,
        }),
    },
})

M.UpdatedCustomDescriptor = schema.new({
    id = id.from(_N, "UpdatedCustomDescriptor"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedCustomDescriptor", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "CustomDescriptor"),
            target = M.CustomDescriptor,
        }),
    },
})

M.UpdatedServerDefinition = schema.new({
    id = id.from(_N, "UpdatedServerDefinition"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedServerDefinition", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "ServerDefinition"),
            target = M.ServerDefinition,
        }),
    },
})

M.UpdatedToolsDefinition = schema.new({
    id = id.from(_N, "UpdatedToolsDefinition"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedToolsDefinition", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "ToolsDefinition"),
            target = M.ToolsDefinition,
        }),
    },
})

M.UpdatedMcpDescriptorFields = schema.new({
    id = id.from(_N, "UpdatedMcpDescriptorFields"),
    type = "structure",
    members = {
        server = schema.new({
            id = id.from(_N, "UpdatedMcpDescriptorFields", "server"),
            type = "structure",
            name = "server",
            target_id = id.from(_N, "UpdatedServerDefinition"),
            target = M.UpdatedServerDefinition,
        }),
        tools = schema.new({
            id = id.from(_N, "UpdatedMcpDescriptorFields", "tools"),
            type = "structure",
            name = "tools",
            target_id = id.from(_N, "UpdatedToolsDefinition"),
            target = M.UpdatedToolsDefinition,
        }),
    },
})

M.UpdatedMcpDescriptor = schema.new({
    id = id.from(_N, "UpdatedMcpDescriptor"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedMcpDescriptor", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "UpdatedMcpDescriptorFields"),
            target = M.UpdatedMcpDescriptorFields,
        }),
    },
})

M.UpdatedDescriptorsUnion = schema.new({
    id = id.from(_N, "UpdatedDescriptorsUnion"),
    type = "structure",
    members = {
        mcp = schema.new({
            id = id.from(_N, "UpdatedDescriptorsUnion", "mcp"),
            type = "structure",
            name = "mcp",
            target_id = id.from(_N, "UpdatedMcpDescriptor"),
            target = M.UpdatedMcpDescriptor,
        }),
        a2a = schema.new({
            id = id.from(_N, "UpdatedDescriptorsUnion", "a2a"),
            type = "structure",
            name = "a2a",
            target_id = id.from(_N, "UpdatedA2aDescriptor"),
            target = M.UpdatedA2aDescriptor,
        }),
        custom = schema.new({
            id = id.from(_N, "UpdatedDescriptorsUnion", "custom"),
            type = "structure",
            name = "custom",
            target_id = id.from(_N, "UpdatedCustomDescriptor"),
            target = M.UpdatedCustomDescriptor,
        }),
        agentSkills = schema.new({
            id = id.from(_N, "UpdatedDescriptorsUnion", "agentSkills"),
            type = "structure",
            name = "agentSkills",
            target_id = id.from(_N, "UpdatedAgentSkillsDescriptor"),
            target = M.UpdatedAgentSkillsDescriptor,
        }),
    },
})

M.UpdatedDescriptors = schema.new({
    id = id.from(_N, "UpdatedDescriptors"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedDescriptors", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "UpdatedDescriptorsUnion"),
            target = M.UpdatedDescriptorsUnion,
        }),
    },
})

M.UpdatedSynchronizationConfiguration = schema.new({
    id = id.from(_N, "UpdatedSynchronizationConfiguration"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedSynchronizationConfiguration", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "SynchronizationConfiguration"),
            target = M.SynchronizationConfiguration,
        }),
    },
})

M.UpdatedSynchronizationType = schema.new({
    id = id.from(_N, "UpdatedSynchronizationType"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedSynchronizationType", "optionalValue"),
            type = "string",
            name = "optionalValue",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRegistryRecordInput = schema.new({
    id = id.from(_N, "UpdateRegistryRecordRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "description"),
            type = "structure",
            name = "description",
            target_id = id.from(_N, "UpdatedDescription"),
            target = M.UpdatedDescription,
        }),
        descriptorType = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
        }),
        descriptors = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "descriptors"),
            type = "structure",
            name = "descriptors",
            target_id = id.from(_N, "UpdatedDescriptors"),
            target = M.UpdatedDescriptors,
        }),
        recordVersion = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "recordVersion"),
            type = "string",
            name = "recordVersion",
            target_id = prelude.String.id,
        }),
        synchronizationType = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "synchronizationType"),
            type = "structure",
            name = "synchronizationType",
            target_id = id.from(_N, "UpdatedSynchronizationType"),
            target = M.UpdatedSynchronizationType,
        }),
        synchronizationConfiguration = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "synchronizationConfiguration"),
            type = "structure",
            name = "synchronizationConfiguration",
            target_id = id.from(_N, "UpdatedSynchronizationConfiguration"),
            target = M.UpdatedSynchronizationConfiguration,
        }),
        triggerSynchronization = schema.new({
            id = id.from(_N, "UpdateRegistryRecordInput", "triggerSynchronization"),
            type = "boolean",
            name = "triggerSynchronization",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateRegistryRecordOutput = schema.new({
    id = id.from(_N, "UpdateRegistryRecordResponse"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordArn = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        descriptorType = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "descriptorType"),
            type = "string",
            name = "descriptorType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        descriptors = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "descriptors"),
            type = "structure",
            name = "descriptors",
            target_id = id.from(_N, "Descriptors"),
            target = M.Descriptors,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordVersion = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "recordVersion"),
            type = "string",
            name = "recordVersion",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        synchronizationType = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "synchronizationType"),
            type = "string",
            name = "synchronizationType",
            target_id = prelude.String.id,
        }),
        synchronizationConfiguration = schema.new({
            id = id.from(_N, "UpdateRegistryRecordOutput", "synchronizationConfiguration"),
            type = "structure",
            name = "synchronizationConfiguration",
            target_id = id.from(_N, "SynchronizationConfiguration"),
            target = M.SynchronizationConfiguration,
        }),
    },
})

M.UpdateRegistryRecordStatusInput = schema.new({
    id = id.from(_N, "UpdateRegistryRecordStatusRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusInput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusInput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRegistryRecordStatusOutput = schema.new({
    id = id.from(_N, "UpdateRegistryRecordStatusResponse"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordArn = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusOutput", "recordArn"),
            type = "string",
            name = "recordArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        recordId = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusOutput", "recordId"),
            type = "string",
            name = "recordId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateRegistryRecordStatusOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApprovalConfiguration = schema.new({
    id = id.from(_N, "ApprovalConfiguration"),
    type = "structure",
    members = {
        autoApproval = schema.new({
            id = id.from(_N, "ApprovalConfiguration", "autoApproval"),
            type = "boolean",
            name = "autoApproval",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateRegistryInput = schema.new({
    id = id.from(_N, "CreateRegistryRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateRegistryInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateRegistryInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        authorizerType = schema.new({
            id = id.from(_N, "CreateRegistryInput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "CreateRegistryInput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateRegistryInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        approvalConfiguration = schema.new({
            id = id.from(_N, "CreateRegistryInput", "approvalConfiguration"),
            type = "structure",
            name = "approvalConfiguration",
            target_id = id.from(_N, "ApprovalConfiguration"),
            target = M.ApprovalConfiguration,
        }),
    },
})

M.CreateRegistryOutput = schema.new({
    id = id.from(_N, "CreateRegistryResponse"),
    type = "structure",
    members = {
        registryArn = schema.new({
            id = id.from(_N, "CreateRegistryOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegistryInput = schema.new({
    id = id.from(_N, "DeleteRegistryRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "DeleteRegistryInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRegistryOutput = schema.new({
    id = id.from(_N, "DeleteRegistryResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "DeleteRegistryOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRegistryInput = schema.new({
    id = id.from(_N, "GetRegistryRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "GetRegistryInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRegistryOutput = schema.new({
    id = id.from(_N, "GetRegistryResponse"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetRegistryOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetRegistryOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        registryId = schema.new({
            id = id.from(_N, "GetRegistryOutput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        registryArn = schema.new({
            id = id.from(_N, "GetRegistryOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerType = schema.new({
            id = id.from(_N, "GetRegistryOutput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "GetRegistryOutput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        approvalConfiguration = schema.new({
            id = id.from(_N, "GetRegistryOutput", "approvalConfiguration"),
            type = "structure",
            name = "approvalConfiguration",
            target_id = id.from(_N, "ApprovalConfiguration"),
            target = M.ApprovalConfiguration,
        }),
        status = schema.new({
            id = id.from(_N, "GetRegistryOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "GetRegistryOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetRegistryOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetRegistryOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRegistriesInput = schema.new({
    id = id.from(_N, "ListRegistriesRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListRegistriesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRegistriesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListRegistriesInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "status" },
            },
        }),
    },
})

M.RegistrySummary = schema.new({
    id = id.from(_N, "RegistrySummary"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "RegistrySummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "RegistrySummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        registryId = schema.new({
            id = id.from(_N, "RegistrySummary", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        registryArn = schema.new({
            id = id.from(_N, "RegistrySummary", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerType = schema.new({
            id = id.from(_N, "RegistrySummary", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "RegistrySummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "RegistrySummary", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "RegistrySummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "RegistrySummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRegistriesOutput = schema.new({
    id = id.from(_N, "ListRegistriesResponse"),
    type = "structure",
    members = {
        registries = schema.new({
            id = id.from(_N, "ListRegistriesOutput", "registries"),
            type = "list",
            name = "registries",
            target_id = prelude.Document.id,
            list_member = M.RegistrySummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRegistriesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatedApprovalConfiguration = schema.new({
    id = id.from(_N, "UpdatedApprovalConfiguration"),
    type = "structure",
    members = {
        optionalValue = schema.new({
            id = id.from(_N, "UpdatedApprovalConfiguration", "optionalValue"),
            type = "structure",
            name = "optionalValue",
            target_id = id.from(_N, "ApprovalConfiguration"),
            target = M.ApprovalConfiguration,
        }),
    },
})

M.UpdateRegistryInput = schema.new({
    id = id.from(_N, "UpdateRegistryRequest"),
    type = "structure",
    members = {
        registryId = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "description"),
            type = "structure",
            name = "description",
            target_id = id.from(_N, "UpdatedDescription"),
            target = M.UpdatedDescription,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "authorizerConfiguration"),
            type = "structure",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "UpdatedAuthorizerConfiguration"),
            target = M.UpdatedAuthorizerConfiguration,
        }),
        approvalConfiguration = schema.new({
            id = id.from(_N, "UpdateRegistryInput", "approvalConfiguration"),
            type = "structure",
            name = "approvalConfiguration",
            target_id = id.from(_N, "UpdatedApprovalConfiguration"),
            target = M.UpdatedApprovalConfiguration,
        }),
    },
})

M.UpdateRegistryOutput = schema.new({
    id = id.from(_N, "UpdateRegistryResponse"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        registryId = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "registryId"),
            type = "string",
            name = "registryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        registryArn = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "registryArn"),
            type = "string",
            name = "registryArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        authorizerType = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "authorizerType"),
            type = "string",
            name = "authorizerType",
            target_id = prelude.String.id,
        }),
        authorizerConfiguration = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "authorizerConfiguration"),
            type = "union",
            name = "authorizerConfiguration",
            target_id = id.from(_N, "AuthorizerConfiguration"),
            target = M.AuthorizerConfiguration,
        }),
        approvalConfiguration = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "approvalConfiguration"),
            type = "structure",
            name = "approvalConfiguration",
            target_id = id.from(_N, "ApprovalConfiguration"),
            target = M.ApprovalConfiguration,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateRegistryOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConcurrentModificationException = schema.new({
    id = id.from(_N, "ConcurrentModificationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConcurrentModificationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetTokenVaultCMKInput = schema.new({
    id = id.from(_N, "SetTokenVaultCMKRequest"),
    type = "structure",
    members = {
        tokenVaultId = schema.new({
            id = id.from(_N, "SetTokenVaultCMKInput", "tokenVaultId"),
            type = "string",
            name = "tokenVaultId",
            target_id = prelude.String.id,
        }),
        kmsConfiguration = schema.new({
            id = id.from(_N, "SetTokenVaultCMKInput", "kmsConfiguration"),
            type = "structure",
            name = "kmsConfiguration",
            target_id = id.from(_N, "KmsConfiguration"),
            target = M.KmsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SetTokenVaultCMKOutput = schema.new({
    id = id.from(_N, "SetTokenVaultCMKResponse"),
    type = "structure",
    members = {
        tokenVaultId = schema.new({
            id = id.from(_N, "SetTokenVaultCMKOutput", "tokenVaultId"),
            type = "string",
            name = "tokenVaultId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsConfiguration = schema.new({
            id = id.from(_N, "SetTokenVaultCMKOutput", "kmsConfiguration"),
            type = "structure",
            name = "kmsConfiguration",
            target_id = id.from(_N, "KmsConfiguration"),
            target = M.KmsConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastModifiedDate = schema.new({
            id = id.from(_N, "SetTokenVaultCMKOutput", "lastModifiedDate"),
            type = "timestamp",
            name = "lastModifiedDate",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TagResourceOutput = schema.new({
    id = id.from(_N, "TagResourceResponse"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        tagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "tagKeys"),
            type = "list",
            name = "tagKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "tagKeys" },
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.CreateWorkloadIdentityInput = schema.new({
    id = id.from(_N, "CreateWorkloadIdentityRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWorkloadIdentityInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedResourceOauth2ReturnUrls = schema.new({
            id = id.from(_N, "CreateWorkloadIdentityInput", "allowedResourceOauth2ReturnUrls"),
            type = "list",
            name = "allowedResourceOauth2ReturnUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateWorkloadIdentityInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateWorkloadIdentityOutput = schema.new({
    id = id.from(_N, "CreateWorkloadIdentityResponse"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateWorkloadIdentityOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workloadIdentityArn = schema.new({
            id = id.from(_N, "CreateWorkloadIdentityOutput", "workloadIdentityArn"),
            type = "string",
            name = "workloadIdentityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedResourceOauth2ReturnUrls = schema.new({
            id = id.from(_N, "CreateWorkloadIdentityOutput", "allowedResourceOauth2ReturnUrls"),
            type = "list",
            name = "allowedResourceOauth2ReturnUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.DeleteWorkloadIdentityInput = schema.new({
    id = id.from(_N, "DeleteWorkloadIdentityRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "DeleteWorkloadIdentityInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWorkloadIdentityOutput = schema.new({
    id = id.from(_N, "DeleteWorkloadIdentityResponse"),
    type = "structure",
})

M.GetWorkloadIdentityInput = schema.new({
    id = id.from(_N, "GetWorkloadIdentityRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetWorkloadIdentityInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWorkloadIdentityOutput = schema.new({
    id = id.from(_N, "GetWorkloadIdentityResponse"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GetWorkloadIdentityOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workloadIdentityArn = schema.new({
            id = id.from(_N, "GetWorkloadIdentityOutput", "workloadIdentityArn"),
            type = "string",
            name = "workloadIdentityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedResourceOauth2ReturnUrls = schema.new({
            id = id.from(_N, "GetWorkloadIdentityOutput", "allowedResourceOauth2ReturnUrls"),
            type = "list",
            name = "allowedResourceOauth2ReturnUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createdTime = schema.new({
            id = id.from(_N, "GetWorkloadIdentityOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "GetWorkloadIdentityOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListWorkloadIdentitiesInput = schema.new({
    id = id.from(_N, "ListWorkloadIdentitiesRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListWorkloadIdentitiesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListWorkloadIdentitiesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
            },
        }),
    },
})

M.WorkloadIdentityType = schema.new({
    id = id.from(_N, "WorkloadIdentityType"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "WorkloadIdentityType", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workloadIdentityArn = schema.new({
            id = id.from(_N, "WorkloadIdentityType", "workloadIdentityArn"),
            type = "string",
            name = "workloadIdentityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListWorkloadIdentitiesOutput = schema.new({
    id = id.from(_N, "ListWorkloadIdentitiesResponse"),
    type = "structure",
    members = {
        workloadIdentities = schema.new({
            id = id.from(_N, "ListWorkloadIdentitiesOutput", "workloadIdentities"),
            type = "list",
            name = "workloadIdentities",
            target_id = prelude.Document.id,
            list_member = M.WorkloadIdentityType,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListWorkloadIdentitiesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateWorkloadIdentityInput = schema.new({
    id = id.from(_N, "UpdateWorkloadIdentityRequest"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedResourceOauth2ReturnUrls = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityInput", "allowedResourceOauth2ReturnUrls"),
            type = "list",
            name = "allowedResourceOauth2ReturnUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.UpdateWorkloadIdentityOutput = schema.new({
    id = id.from(_N, "UpdateWorkloadIdentityResponse"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        workloadIdentityArn = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityOutput", "workloadIdentityArn"),
            type = "string",
            name = "workloadIdentityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        allowedResourceOauth2ReturnUrls = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityOutput", "allowedResourceOauth2ReturnUrls"),
            type = "list",
            name = "allowedResourceOauth2ReturnUrls",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        createdTime = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityOutput", "createdTime"),
            type = "timestamp",
            name = "createdTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastUpdatedTime = schema.new({
            id = id.from(_N, "UpdateWorkloadIdentityOutput", "lastUpdatedTime"),
            type = "timestamp",
            name = "lastUpdatedTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SchemaDefinition = schema.new({
    id = id.from(_N, "SchemaDefinition"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "SchemaDefinition", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        properties = schema.new({
            id = id.from(_N, "SchemaDefinition", "properties"),
            type = "map",
            name = "properties",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = M.SchemaDefinition,
        }),
        required = schema.new({
            id = id.from(_N, "SchemaDefinition", "required"),
            type = "list",
            name = "required",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        items = schema.new({
            id = id.from(_N, "SchemaDefinition", "items"),
            type = "structure",
            name = "items",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
        }),
        description = schema.new({
            id = id.from(_N, "SchemaDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.ToolDefinition = schema.new({
    id = id.from(_N, "ToolDefinition"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "ToolDefinition", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ToolDefinition", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        inputSchema = schema.new({
            id = id.from(_N, "ToolDefinition", "inputSchema"),
            type = "structure",
            name = "inputSchema",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        outputSchema = schema.new({
            id = id.from(_N, "ToolDefinition", "outputSchema"),
            type = "structure",
            name = "outputSchema",
            target_id = id.from(_N, "SchemaDefinition"),
            target = M.SchemaDefinition,
        }),
    },
})

M.ToolSchema = schema.new({
    id = id.from(_N, "ToolSchema"),
    type = "union",
    members = {
        s3 = schema.new({
            id = id.from(_N, "ToolSchema", "s3"),
            type = "structure",
            name = "s3",
            target_id = id.from(_N, "S3Configuration"),
            target = M.S3Configuration,
        }),
        inlinePayload = schema.new({
            id = id.from(_N, "ToolSchema", "inlinePayload"),
            type = "list",
            name = "inlinePayload",
            target_id = prelude.Document.id,
            list_member = M.ToolDefinition,
        }),
    },
})

M.McpLambdaTargetConfiguration = schema.new({
    id = id.from(_N, "McpLambdaTargetConfiguration"),
    type = "structure",
    members = {
        lambdaArn = schema.new({
            id = id.from(_N, "McpLambdaTargetConfiguration", "lambdaArn"),
            type = "string",
            name = "lambdaArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        toolSchema = schema.new({
            id = id.from(_N, "McpLambdaTargetConfiguration", "toolSchema"),
            type = "union",
            name = "toolSchema",
            target_id = id.from(_N, "ToolSchema"),
            target = M.ToolSchema,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.McpTargetConfiguration = schema.new({
    id = id.from(_N, "McpTargetConfiguration"),
    type = "union",
    members = {
        openApiSchema = schema.new({
            id = id.from(_N, "McpTargetConfiguration", "openApiSchema"),
            type = "union",
            name = "openApiSchema",
            target_id = id.from(_N, "ApiSchemaConfiguration"),
            target = M.ApiSchemaConfiguration,
        }),
        smithyModel = schema.new({
            id = id.from(_N, "McpTargetConfiguration", "smithyModel"),
            type = "union",
            name = "smithyModel",
            target_id = id.from(_N, "ApiSchemaConfiguration"),
            target = M.ApiSchemaConfiguration,
        }),
        lambda = schema.new({
            id = id.from(_N, "McpTargetConfiguration", "lambda"),
            type = "structure",
            name = "lambda",
            target_id = id.from(_N, "McpLambdaTargetConfiguration"),
            target = M.McpLambdaTargetConfiguration,
        }),
        mcpServer = schema.new({
            id = id.from(_N, "McpTargetConfiguration", "mcpServer"),
            type = "structure",
            name = "mcpServer",
            target_id = id.from(_N, "McpServerTargetConfiguration"),
            target = M.McpServerTargetConfiguration,
        }),
        apiGateway = schema.new({
            id = id.from(_N, "McpTargetConfiguration", "apiGateway"),
            type = "structure",
            name = "apiGateway",
            target_id = id.from(_N, "ApiGatewayTargetConfiguration"),
            target = M.ApiGatewayTargetConfiguration,
        }),
    },
})

M.TargetConfiguration = schema.new({
    id = id.from(_N, "TargetConfiguration"),
    type = "union",
    members = {
        mcp = schema.new({
            id = id.from(_N, "TargetConfiguration", "mcp"),
            type = "union",
            name = "mcp",
            target_id = id.from(_N, "McpTargetConfiguration"),
            target = M.McpTargetConfiguration,
        }),
        http = schema.new({
            id = id.from(_N, "TargetConfiguration", "http"),
            type = "union",
            name = "http",
            target_id = id.from(_N, "HttpTargetConfiguration"),
            target = M.HttpTargetConfiguration,
        }),
    },
})

M.CreateGatewayTargetInput = schema.new({
    id = id.from(_N, "CreateGatewayTargetRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        targetConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "targetConfiguration"),
            type = "union",
            name = "targetConfiguration",
            target_id = id.from(_N, "TargetConfiguration"),
            target = M.TargetConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.CredentialProviderConfiguration,
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "CreateGatewayTargetInput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
    },
})

M.CreateGatewayTargetOutput = schema.new({
    id = id.from(_N, "CreateGatewayTargetResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "targetConfiguration"),
            type = "union",
            name = "targetConfiguration",
            target_id = id.from(_N, "TargetConfiguration"),
            target = M.TargetConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.CredentialProviderConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSynchronizedAt = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "lastSynchronizedAt"),
            type = "timestamp",
            name = "lastSynchronizedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointManagedResources = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "privateEndpointManagedResources"),
            type = "list",
            name = "privateEndpointManagedResources",
            target_id = prelude.Document.id,
            list_member = M.ManagedResourceDetails,
        }),
        authorizationData = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "authorizationData"),
            type = "union",
            name = "authorizationData",
            target_id = id.from(_N, "AuthorizationData"),
            target = M.AuthorizationData,
        }),
        protocolType = schema.new({
            id = id.from(_N, "CreateGatewayTargetOutput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
        }),
    },
})

M.GatewayTarget = schema.new({
    id = id.from(_N, "GatewayTarget"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "GatewayTarget", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "GatewayTarget", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GatewayTarget", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GatewayTarget", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GatewayTarget", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GatewayTarget", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "GatewayTarget", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GatewayTarget", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetConfiguration = schema.new({
            id = id.from(_N, "GatewayTarget", "targetConfiguration"),
            type = "union",
            name = "targetConfiguration",
            target_id = id.from(_N, "TargetConfiguration"),
            target = M.TargetConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "GatewayTarget", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.CredentialProviderConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSynchronizedAt = schema.new({
            id = id.from(_N, "GatewayTarget", "lastSynchronizedAt"),
            type = "timestamp",
            name = "lastSynchronizedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "GatewayTarget", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "GatewayTarget", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointManagedResources = schema.new({
            id = id.from(_N, "GatewayTarget", "privateEndpointManagedResources"),
            type = "list",
            name = "privateEndpointManagedResources",
            target_id = prelude.Document.id,
            list_member = M.ManagedResourceDetails,
        }),
        authorizationData = schema.new({
            id = id.from(_N, "GatewayTarget", "authorizationData"),
            type = "union",
            name = "authorizationData",
            target_id = id.from(_N, "AuthorizationData"),
            target = M.AuthorizationData,
        }),
        protocolType = schema.new({
            id = id.from(_N, "GatewayTarget", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGatewayTargetOutput = schema.new({
    id = id.from(_N, "GetGatewayTargetResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetConfiguration = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "targetConfiguration"),
            type = "union",
            name = "targetConfiguration",
            target_id = id.from(_N, "TargetConfiguration"),
            target = M.TargetConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.CredentialProviderConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSynchronizedAt = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "lastSynchronizedAt"),
            type = "timestamp",
            name = "lastSynchronizedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointManagedResources = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "privateEndpointManagedResources"),
            type = "list",
            name = "privateEndpointManagedResources",
            target_id = prelude.Document.id,
            list_member = M.ManagedResourceDetails,
        }),
        authorizationData = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "authorizationData"),
            type = "union",
            name = "authorizationData",
            target_id = id.from(_N, "AuthorizationData"),
            target = M.AuthorizationData,
        }),
        protocolType = schema.new({
            id = id.from(_N, "GetGatewayTargetOutput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateGatewayTargetInput = schema.new({
    id = id.from(_N, "UpdateGatewayTargetRequest"),
    type = "structure",
    members = {
        gatewayIdentifier = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "gatewayIdentifier"),
            type = "string",
            name = "gatewayIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "targetConfiguration"),
            type = "union",
            name = "targetConfiguration",
            target_id = id.from(_N, "TargetConfiguration"),
            target = M.TargetConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.CredentialProviderConfiguration,
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "UpdateGatewayTargetInput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
    },
})

M.UpdateGatewayTargetOutput = schema.new({
    id = id.from(_N, "UpdateGatewayTargetResponse"),
    type = "structure",
    members = {
        gatewayArn = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "gatewayArn"),
            type = "string",
            name = "gatewayArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        targetId = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "targetId"),
            type = "string",
            name = "targetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
            direct_traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReasons = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "statusReasons"),
            type = "list",
            name = "statusReasons",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        name = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        targetConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "targetConfiguration"),
            type = "union",
            name = "targetConfiguration",
            target_id = id.from(_N, "TargetConfiguration"),
            target = M.TargetConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        credentialProviderConfigurations = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "credentialProviderConfigurations"),
            type = "list",
            name = "credentialProviderConfigurations",
            target_id = prelude.Document.id,
            list_member = M.CredentialProviderConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        lastSynchronizedAt = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "lastSynchronizedAt"),
            type = "timestamp",
            name = "lastSynchronizedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        metadataConfiguration = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "metadataConfiguration"),
            type = "structure",
            name = "metadataConfiguration",
            target_id = id.from(_N, "MetadataConfiguration"),
            target = M.MetadataConfiguration,
        }),
        privateEndpoint = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "privateEndpoint"),
            type = "union",
            name = "privateEndpoint",
            target_id = id.from(_N, "PrivateEndpoint"),
            target = M.PrivateEndpoint,
        }),
        privateEndpointManagedResources = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "privateEndpointManagedResources"),
            type = "list",
            name = "privateEndpointManagedResources",
            target_id = prelude.Document.id,
            list_member = M.ManagedResourceDetails,
        }),
        authorizationData = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "authorizationData"),
            type = "union",
            name = "authorizationData",
            target_id = id.from(_N, "AuthorizationData"),
            target = M.AuthorizationData,
        }),
        protocolType = schema.new({
            id = id.from(_N, "UpdateGatewayTargetOutput", "protocolType"),
            type = "string",
            name = "protocolType",
            target_id = prelude.String.id,
        }),
    },
})

M.SynchronizeGatewayTargetsOutput = schema.new({
    id = id.from(_N, "SynchronizeGatewayTargetsResponse"),
    type = "structure",
    members = {
        targets = schema.new({
            id = id.from(_N, "SynchronizeGatewayTargetsOutput", "targets"),
            type = "list",
            name = "targets",
            target_id = prelude.Document.id,
            list_member = M.GatewayTarget,
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
