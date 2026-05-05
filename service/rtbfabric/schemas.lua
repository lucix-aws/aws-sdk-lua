local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.rtbfabric"

local M = {}

M.ResponderErrorMaskingForHttpCode = schema.new({
    id = id.from(_N, "ResponderErrorMaskingForHttpCode"),
    type = "structure",
    members = {
        httpCode = schema.new({
            id = id.from(_N, "ResponderErrorMaskingForHttpCode", "httpCode"),
            type = "string",
            name = "httpCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        action = schema.new({
            id = id.from(_N, "ResponderErrorMaskingForHttpCode", "action"),
            type = "string",
            name = "action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        loggingTypes = schema.new({
            id = id.from(_N, "ResponderErrorMaskingForHttpCode", "loggingTypes"),
            type = "list",
            name = "loggingTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        responseLoggingPercentage = schema.new({
            id = id.from(_N, "ResponderErrorMaskingForHttpCode", "responseLoggingPercentage"),
            type = "float",
            name = "responseLoggingPercentage",
            target_id = prelude.Float.id,
        }),
    },
})

M.LinkAttributes = schema.new({
    id = id.from(_N, "LinkAttributes"),
    type = "structure",
    members = {
        responderErrorMasking = schema.new({
            id = id.from(_N, "LinkAttributes", "responderErrorMasking"),
            type = "list",
            name = "responderErrorMasking",
            target_id = prelude.Document.id,
            list_member = M.ResponderErrorMaskingForHttpCode,
        }),
        customerProvidedId = schema.new({
            id = id.from(_N, "LinkAttributes", "customerProvidedId"),
            type = "string",
            name = "customerProvidedId",
            target_id = prelude.String.id,
        }),
    },
})

M.LinkApplicationLogSampling = schema.new({
    id = id.from(_N, "LinkApplicationLogSampling"),
    type = "structure",
    members = {
        errorLog = schema.new({
            id = id.from(_N, "LinkApplicationLogSampling", "errorLog"),
            type = "double",
            name = "errorLog",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterLog = schema.new({
            id = id.from(_N, "LinkApplicationLogSampling", "filterLog"),
            type = "double",
            name = "filterLog",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LinkApplicationLogConfiguration = schema.new({
    id = id.from(_N, "LinkApplicationLogConfiguration"),
    type = "structure",
    members = {
        sampling = schema.new({
            id = id.from(_N, "LinkApplicationLogConfiguration", "sampling"),
            type = "structure",
            name = "sampling",
            target_id = id.from(_N, "LinkApplicationLogSampling"),
            target = M.LinkApplicationLogSampling,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LinkLogSettings = schema.new({
    id = id.from(_N, "LinkLogSettings"),
    type = "structure",
    members = {
        applicationLogs = schema.new({
            id = id.from(_N, "LinkLogSettings", "applicationLogs"),
            type = "structure",
            name = "applicationLogs",
            target_id = id.from(_N, "LinkApplicationLogConfiguration"),
            target = M.LinkApplicationLogConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AcceptLinkInput = schema.new({
    id = id.from(_N, "AcceptLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "AcceptLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "AcceptLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "AcceptLinkInput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "AcceptLinkInput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "AcceptLinkInput", "timeoutInMillis"),
            type = "long",
            name = "timeoutInMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.NoBidModuleParameters = schema.new({
    id = id.from(_N, "NoBidModuleParameters"),
    type = "structure",
    members = {
        reason = schema.new({
            id = id.from(_N, "NoBidModuleParameters", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
        reasonCode = schema.new({
            id = id.from(_N, "NoBidModuleParameters", "reasonCode"),
            type = "integer",
            name = "reasonCode",
            target_id = prelude.Integer.id,
        }),
        passThroughPercentage = schema.new({
            id = id.from(_N, "NoBidModuleParameters", "passThroughPercentage"),
            type = "float",
            name = "passThroughPercentage",
            target_id = prelude.Float.id,
        }),
    },
})

M.HeaderTagAction = schema.new({
    id = id.from(_N, "HeaderTagAction"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "HeaderTagAction", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        value = schema.new({
            id = id.from(_N, "HeaderTagAction", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NoBidAction = schema.new({
    id = id.from(_N, "NoBidAction"),
    type = "structure",
    members = {
        noBidReasonCode = schema.new({
            id = id.from(_N, "NoBidAction", "noBidReasonCode"),
            type = "integer",
            name = "noBidReasonCode",
            target_id = prelude.Integer.id,
        }),
    },
})

M.Action = schema.new({
    id = id.from(_N, "Action"),
    type = "union",
    members = {
        noBid = schema.new({
            id = id.from(_N, "Action", "noBid"),
            type = "structure",
            name = "noBid",
            target_id = id.from(_N, "NoBidAction"),
            target = M.NoBidAction,
        }),
        headerTag = schema.new({
            id = id.from(_N, "Action", "headerTag"),
            type = "structure",
            name = "headerTag",
            target_id = id.from(_N, "HeaderTagAction"),
            target = M.HeaderTagAction,
        }),
    },
})

M.FilterCriterion = schema.new({
    id = id.from(_N, "FilterCriterion"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "FilterCriterion", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        values = schema.new({
            id = id.from(_N, "FilterCriterion", "values"),
            type = "list",
            name = "values",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Filter = schema.new({
    id = id.from(_N, "Filter"),
    type = "structure",
    members = {
        criteria = schema.new({
            id = id.from(_N, "Filter", "criteria"),
            type = "list",
            name = "criteria",
            target_id = prelude.Document.id,
            list_member = M.FilterCriterion,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.OpenRtbAttributeModuleParameters = schema.new({
    id = id.from(_N, "OpenRtbAttributeModuleParameters"),
    type = "structure",
    members = {
        filterType = schema.new({
            id = id.from(_N, "OpenRtbAttributeModuleParameters", "filterType"),
            type = "string",
            name = "filterType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        filterConfiguration = schema.new({
            id = id.from(_N, "OpenRtbAttributeModuleParameters", "filterConfiguration"),
            type = "list",
            name = "filterConfiguration",
            target_id = prelude.Document.id,
            list_member = M.Filter,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        action = schema.new({
            id = id.from(_N, "OpenRtbAttributeModuleParameters", "action"),
            type = "union",
            name = "action",
            target_id = id.from(_N, "Action"),
            target = M.Action,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        holdbackPercentage = schema.new({
            id = id.from(_N, "OpenRtbAttributeModuleParameters", "holdbackPercentage"),
            type = "float",
            name = "holdbackPercentage",
            target_id = prelude.Float.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RateLimiterModuleParameters = schema.new({
    id = id.from(_N, "RateLimiterModuleParameters"),
    type = "structure",
    members = {
        tps = schema.new({
            id = id.from(_N, "RateLimiterModuleParameters", "tps"),
            type = "float",
            name = "tps",
            target_id = prelude.Float.id,
        }),
    },
})

M.ModuleParameters = schema.new({
    id = id.from(_N, "ModuleParameters"),
    type = "union",
    members = {
        noBid = schema.new({
            id = id.from(_N, "ModuleParameters", "noBid"),
            type = "structure",
            name = "noBid",
            target_id = id.from(_N, "NoBidModuleParameters"),
            target = M.NoBidModuleParameters,
        }),
        openRtbAttribute = schema.new({
            id = id.from(_N, "ModuleParameters", "openRtbAttribute"),
            type = "structure",
            name = "openRtbAttribute",
            target_id = id.from(_N, "OpenRtbAttributeModuleParameters"),
            target = M.OpenRtbAttributeModuleParameters,
        }),
        rateLimiter = schema.new({
            id = id.from(_N, "ModuleParameters", "rateLimiter"),
            type = "structure",
            name = "rateLimiter",
            target_id = id.from(_N, "RateLimiterModuleParameters"),
            target = M.RateLimiterModuleParameters,
        }),
    },
})

M.ModuleConfiguration = schema.new({
    id = id.from(_N, "ModuleConfiguration"),
    type = "structure",
    members = {
        version = schema.new({
            id = id.from(_N, "ModuleConfiguration", "version"),
            type = "string",
            name = "version",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ModuleConfiguration", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        dependsOn = schema.new({
            id = id.from(_N, "ModuleConfiguration", "dependsOn"),
            type = "list",
            name = "dependsOn",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        moduleParameters = schema.new({
            id = id.from(_N, "ModuleConfiguration", "moduleParameters"),
            type = "union",
            name = "moduleParameters",
            target_id = id.from(_N, "ModuleParameters"),
            target = M.ModuleParameters,
        }),
    },
})

M.AcceptLinkOutput = schema.new({
    id = id.from(_N, "AcceptLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        peerGatewayId = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "peerGatewayId"),
            type = "string",
            name = "peerGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        direction = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "direction"),
            type = "string",
            name = "direction",
            target_id = prelude.String.id,
        }),
        flowModules = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
        linkId = schema.new({
            id = id.from(_N, "AcceptLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
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
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
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
    },
})

M.HealthCheckConfig = schema.new({
    id = id.from(_N, "HealthCheckConfig"),
    type = "structure",
    members = {
        port = schema.new({
            id = id.from(_N, "HealthCheckConfig", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        path = schema.new({
            id = id.from(_N, "HealthCheckConfig", "path"),
            type = "string",
            name = "path",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "HealthCheckConfig", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
        }),
        timeoutMs = schema.new({
            id = id.from(_N, "HealthCheckConfig", "timeoutMs"),
            type = "integer",
            name = "timeoutMs",
            target_id = prelude.Integer.id,
        }),
        intervalSeconds = schema.new({
            id = id.from(_N, "HealthCheckConfig", "intervalSeconds"),
            type = "integer",
            name = "intervalSeconds",
            target_id = prelude.Integer.id,
        }),
        statusCodeMatcher = schema.new({
            id = id.from(_N, "HealthCheckConfig", "statusCodeMatcher"),
            type = "string",
            name = "statusCodeMatcher",
            target_id = prelude.String.id,
        }),
        healthyThresholdCount = schema.new({
            id = id.from(_N, "HealthCheckConfig", "healthyThresholdCount"),
            type = "integer",
            name = "healthyThresholdCount",
            target_id = prelude.Integer.id,
        }),
        unhealthyThresholdCount = schema.new({
            id = id.from(_N, "HealthCheckConfig", "unhealthyThresholdCount"),
            type = "integer",
            name = "unhealthyThresholdCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AutoScalingGroupsConfiguration = schema.new({
    id = id.from(_N, "AutoScalingGroupsConfiguration"),
    type = "structure",
    members = {
        autoScalingGroupNames = schema.new({
            id = id.from(_N, "AutoScalingGroupsConfiguration", "autoScalingGroupNames"),
            type = "list",
            name = "autoScalingGroupNames",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "AutoScalingGroupsConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        healthCheckConfig = schema.new({
            id = id.from(_N, "AutoScalingGroupsConfiguration", "healthCheckConfig"),
            type = "structure",
            name = "healthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
        }),
    },
})

M.CreateInboundExternalLinkInput = schema.new({
    id = id.from(_N, "CreateInboundExternalLinkRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkInput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkInput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateInboundExternalLinkOutput = schema.new({
    id = id.from(_N, "CreateInboundExternalLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "CreateInboundExternalLinkOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateLinkInput = schema.new({
    id = id.from(_N, "CreateLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        peerGatewayId = schema.new({
            id = id.from(_N, "CreateLinkInput", "peerGatewayId"),
            type = "string",
            name = "peerGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "CreateLinkInput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        httpResponderAllowed = schema.new({
            id = id.from(_N, "CreateLinkInput", "httpResponderAllowed"),
            type = "boolean",
            name = "httpResponderAllowed",
            target_id = prelude.Boolean.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateLinkInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        logSettings = schema.new({
            id = id.from(_N, "CreateLinkInput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "CreateLinkInput", "timeoutInMillis"),
            type = "long",
            name = "timeoutInMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateLinkOutput = schema.new({
    id = id.from(_N, "CreateLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        peerGatewayId = schema.new({
            id = id.from(_N, "CreateLinkOutput", "peerGatewayId"),
            type = "string",
            name = "peerGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateLinkOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateLinkOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        direction = schema.new({
            id = id.from(_N, "CreateLinkOutput", "direction"),
            type = "string",
            name = "direction",
            target_id = prelude.String.id,
        }),
        flowModules = schema.new({
            id = id.from(_N, "CreateLinkOutput", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "CreateLinkOutput", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "CreateLinkOutput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "CreateLinkOutput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "CreateLinkOutput", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
        linkId = schema.new({
            id = id.from(_N, "CreateLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        customerProvidedId = schema.new({
            id = id.from(_N, "CreateLinkOutput", "customerProvidedId"),
            type = "string",
            name = "customerProvidedId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateOutboundExternalLinkInput = schema.new({
    id = id.from(_N, "CreateOutboundExternalLinkRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        attributes = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkInput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        publicEndpoint = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkInput", "publicEndpoint"),
            type = "string",
            name = "publicEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        logSettings = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkInput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateOutboundExternalLinkOutput = schema.new({
    id = id.from(_N, "CreateOutboundExternalLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateOutboundExternalLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRequesterGatewayInput = schema.new({
    id = id.from(_N, "CreateRequesterGatewayRequest"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "CreateRequesterGatewayInput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "CreateRequesterGatewayInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "CreateRequesterGatewayInput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateRequesterGatewayInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateRequesterGatewayInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateRequesterGatewayInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateRequesterGatewayOutput = schema.new({
    id = id.from(_N, "CreateRequesterGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateRequesterGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "CreateRequesterGatewayOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateRequesterGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListenerConfig = schema.new({
    id = id.from(_N, "ListenerConfig"),
    type = "structure",
    members = {
        protocols = schema.new({
            id = id.from(_N, "ListenerConfig", "protocols"),
            type = "list",
            name = "protocols",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EksEndpointsConfiguration = schema.new({
    id = id.from(_N, "EksEndpointsConfiguration"),
    type = "structure",
    members = {
        endpointsResourceName = schema.new({
            id = id.from(_N, "EksEndpointsConfiguration", "endpointsResourceName"),
            type = "string",
            name = "endpointsResourceName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        endpointsResourceNamespace = schema.new({
            id = id.from(_N, "EksEndpointsConfiguration", "endpointsResourceNamespace"),
            type = "string",
            name = "endpointsResourceNamespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterApiServerEndpointUri = schema.new({
            id = id.from(_N, "EksEndpointsConfiguration", "clusterApiServerEndpointUri"),
            type = "string",
            name = "clusterApiServerEndpointUri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterApiServerCaCertificateChain = schema.new({
            id = id.from(_N, "EksEndpointsConfiguration", "clusterApiServerCaCertificateChain"),
            type = "string",
            name = "clusterApiServerCaCertificateChain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clusterName = schema.new({
            id = id.from(_N, "EksEndpointsConfiguration", "clusterName"),
            type = "string",
            name = "clusterName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "EksEndpointsConfiguration", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ManagedEndpointConfiguration = schema.new({
    id = id.from(_N, "ManagedEndpointConfiguration"),
    type = "union",
    members = {
        autoScalingGroups = schema.new({
            id = id.from(_N, "ManagedEndpointConfiguration", "autoScalingGroups"),
            type = "structure",
            name = "autoScalingGroups",
            target_id = id.from(_N, "AutoScalingGroupsConfiguration"),
            target = M.AutoScalingGroupsConfiguration,
        }),
        eksEndpoints = schema.new({
            id = id.from(_N, "ManagedEndpointConfiguration", "eksEndpoints"),
            type = "structure",
            name = "eksEndpoints",
            target_id = id.from(_N, "EksEndpointsConfiguration"),
            target = M.EksEndpointsConfiguration,
        }),
    },
})

M.TrustStoreConfiguration = schema.new({
    id = id.from(_N, "TrustStoreConfiguration"),
    type = "structure",
    members = {
        certificateAuthorityCertificates = schema.new({
            id = id.from(_N, "TrustStoreConfiguration", "certificateAuthorityCertificates"),
            type = "list",
            name = "certificateAuthorityCertificates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateResponderGatewayInput = schema.new({
    id = id.from(_N, "CreateResponderGatewayRequest"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        port = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        listenerConfig = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "listenerConfig"),
            type = "structure",
            name = "listenerConfig",
            target_id = id.from(_N, "ListenerConfig"),
            target = M.ListenerConfig,
        }),
        trustStoreConfiguration = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "trustStoreConfiguration"),
            type = "structure",
            name = "trustStoreConfiguration",
            target_id = id.from(_N, "TrustStoreConfiguration"),
            target = M.TrustStoreConfiguration,
        }),
        managedEndpointConfiguration = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "managedEndpointConfiguration"),
            type = "union",
            name = "managedEndpointConfiguration",
            target_id = id.from(_N, "ManagedEndpointConfiguration"),
            target = M.ManagedEndpointConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        gatewayType = schema.new({
            id = id.from(_N, "CreateResponderGatewayInput", "gatewayType"),
            type = "string",
            name = "gatewayType",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateResponderGatewayOutput = schema.new({
    id = id.from(_N, "CreateResponderGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "CreateResponderGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "CreateResponderGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        listenerConfig = schema.new({
            id = id.from(_N, "CreateResponderGatewayOutput", "listenerConfig"),
            type = "structure",
            name = "listenerConfig",
            target_id = id.from(_N, "ListenerConfig"),
            target = M.ListenerConfig,
        }),
        externalInboundEndpoint = schema.new({
            id = id.from(_N, "CreateResponderGatewayOutput", "externalInboundEndpoint"),
            type = "string",
            name = "externalInboundEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteInboundExternalLinkInput = schema.new({
    id = id.from(_N, "DeleteInboundExternalLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteInboundExternalLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "DeleteInboundExternalLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteInboundExternalLinkOutput = schema.new({
    id = id.from(_N, "DeleteInboundExternalLinkResponse"),
    type = "structure",
    members = {
        linkId = schema.new({
            id = id.from(_N, "DeleteInboundExternalLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteInboundExternalLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLinkInput = schema.new({
    id = id.from(_N, "DeleteLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "DeleteLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteLinkOutput = schema.new({
    id = id.from(_N, "DeleteLinkResponse"),
    type = "structure",
    members = {
        linkId = schema.new({
            id = id.from(_N, "DeleteLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteOutboundExternalLinkInput = schema.new({
    id = id.from(_N, "DeleteOutboundExternalLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteOutboundExternalLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "DeleteOutboundExternalLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteOutboundExternalLinkOutput = schema.new({
    id = id.from(_N, "DeleteOutboundExternalLinkResponse"),
    type = "structure",
    members = {
        linkId = schema.new({
            id = id.from(_N, "DeleteOutboundExternalLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteOutboundExternalLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRequesterGatewayInput = schema.new({
    id = id.from(_N, "DeleteRequesterGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteRequesterGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteRequesterGatewayOutput = schema.new({
    id = id.from(_N, "DeleteRequesterGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteRequesterGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteRequesterGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteResponderGatewayInput = schema.new({
    id = id.from(_N, "DeleteResponderGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteResponderGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteResponderGatewayOutput = schema.new({
    id = id.from(_N, "DeleteResponderGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "DeleteResponderGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "DeleteResponderGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetLinkInput = schema.new({
    id = id.from(_N, "GetLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "GetLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetLinkOutput = schema.new({
    id = id.from(_N, "GetLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        peerGatewayId = schema.new({
            id = id.from(_N, "GetLinkOutput", "peerGatewayId"),
            type = "string",
            name = "peerGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetLinkOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetLinkOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        direction = schema.new({
            id = id.from(_N, "GetLinkOutput", "direction"),
            type = "string",
            name = "direction",
            target_id = prelude.String.id,
        }),
        flowModules = schema.new({
            id = id.from(_N, "GetLinkOutput", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "GetLinkOutput", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "GetLinkOutput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "GetLinkOutput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "GetLinkOutput", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
        linkId = schema.new({
            id = id.from(_N, "GetLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetLinkOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        httpResponderAllowed = schema.new({
            id = id.from(_N, "GetLinkOutput", "httpResponderAllowed"),
            type = "boolean",
            name = "httpResponderAllowed",
            target_id = prelude.Boolean.id,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "GetLinkOutput", "timeoutInMillis"),
            type = "long",
            name = "timeoutInMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListLinksInput = schema.new({
    id = id.from(_N, "ListLinksRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "ListLinksInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLinksInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListLinksInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
    },
})

M.ListLinksResponseStructure = schema.new({
    id = id.from(_N, "ListLinksResponseStructure"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        peerGatewayId = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "peerGatewayId"),
            type = "string",
            name = "peerGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        direction = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "direction"),
            type = "string",
            name = "direction",
            target_id = prelude.String.id,
        }),
        flowModules = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
        linkId = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        publicEndpoint = schema.new({
            id = id.from(_N, "ListLinksResponseStructure", "publicEndpoint"),
            type = "string",
            name = "publicEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.ListLinksOutput = schema.new({
    id = id.from(_N, "ListLinksResponse"),
    type = "structure",
    members = {
        links = schema.new({
            id = id.from(_N, "ListLinksOutput", "links"),
            type = "list",
            name = "links",
            target_id = prelude.Document.id,
            list_member = M.ListLinksResponseStructure,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListLinksOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RejectLinkInput = schema.new({
    id = id.from(_N, "RejectLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "RejectLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "RejectLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.RejectLinkOutput = schema.new({
    id = id.from(_N, "RejectLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "RejectLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        peerGatewayId = schema.new({
            id = id.from(_N, "RejectLinkOutput", "peerGatewayId"),
            type = "string",
            name = "peerGatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "RejectLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "RejectLinkOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "RejectLinkOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        direction = schema.new({
            id = id.from(_N, "RejectLinkOutput", "direction"),
            type = "string",
            name = "direction",
            target_id = prelude.String.id,
        }),
        flowModules = schema.new({
            id = id.from(_N, "RejectLinkOutput", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "RejectLinkOutput", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "RejectLinkOutput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        logSettings = schema.new({
            id = id.from(_N, "RejectLinkOutput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "RejectLinkOutput", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
        linkId = schema.new({
            id = id.from(_N, "RejectLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateLinkInput = schema.new({
    id = id.from(_N, "UpdateLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "UpdateLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "UpdateLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        logSettings = schema.new({
            id = id.from(_N, "UpdateLinkInput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        timeoutInMillis = schema.new({
            id = id.from(_N, "UpdateLinkInput", "timeoutInMillis"),
            type = "long",
            name = "timeoutInMillis",
            target_id = prelude.Long.id,
        }),
    },
})

M.UpdateLinkOutput = schema.new({
    id = id.from(_N, "UpdateLinkResponse"),
    type = "structure",
    members = {
        linkId = schema.new({
            id = id.from(_N, "UpdateLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateLinkModuleFlowInput = schema.new({
    id = id.from(_N, "UpdateLinkModuleFlowRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        modules = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowInput", "modules"),
            type = "list",
            name = "modules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateLinkModuleFlowOutput = schema.new({
    id = id.from(_N, "UpdateLinkModuleFlowResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateLinkModuleFlowOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetInboundExternalLinkInput = schema.new({
    id = id.from(_N, "GetInboundExternalLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetInboundExternalLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "GetInboundExternalLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetInboundExternalLinkOutput = schema.new({
    id = id.from(_N, "GetInboundExternalLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        flowModules = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        logSettings = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "GetInboundExternalLinkOutput", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetOutboundExternalLinkInput = schema.new({
    id = id.from(_N, "GetOutboundExternalLinkRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkInput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetOutboundExternalLinkOutput = schema.new({
    id = id.from(_N, "GetOutboundExternalLinkResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        linkId = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "linkId"),
            type = "string",
            name = "linkId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        publicEndpoint = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "publicEndpoint"),
            type = "string",
            name = "publicEndpoint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        flowModules = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "flowModules"),
            type = "list",
            name = "flowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        pendingFlowModules = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "pendingFlowModules"),
            type = "list",
            name = "pendingFlowModules",
            target_id = prelude.Document.id,
            list_member = M.ModuleConfiguration,
        }),
        attributes = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "attributes"),
            type = "structure",
            name = "attributes",
            target_id = id.from(_N, "LinkAttributes"),
            target = M.LinkAttributes,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        tags = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        logSettings = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "logSettings"),
            type = "structure",
            name = "logSettings",
            target_id = id.from(_N, "LinkLogSettings"),
            target = M.LinkLogSettings,
        }),
        connectivityType = schema.new({
            id = id.from(_N, "GetOutboundExternalLinkOutput", "connectivityType"),
            type = "string",
            name = "connectivityType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRequesterGatewayInput = schema.new({
    id = id.from(_N, "GetRequesterGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetRequesterGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetRequesterGatewayOutput = schema.new({
    id = id.from(_N, "GetRequesterGatewayResponse"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        vpcId = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        activeLinksCount = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "activeLinksCount"),
            type = "integer",
            name = "activeLinksCount",
            target_id = prelude.Integer.id,
        }),
        totalLinksCount = schema.new({
            id = id.from(_N, "GetRequesterGatewayOutput", "totalLinksCount"),
            type = "integer",
            name = "totalLinksCount",
            target_id = prelude.Integer.id,
        }),
    },
})

M.GetResponderGatewayInput = schema.new({
    id = id.from(_N, "GetResponderGatewayRequest"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "GetResponderGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetResponderGatewayOutput = schema.new({
    id = id.from(_N, "GetResponderGatewayResponse"),
    type = "structure",
    members = {
        vpcId = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "vpcId"),
            type = "string",
            name = "vpcId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        subnetIds = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "subnetIds"),
            type = "list",
            name = "subnetIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        securityGroupIds = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "securityGroupIds"),
            type = "list",
            name = "securityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        port = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        listenerConfig = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "listenerConfig"),
            type = "structure",
            name = "listenerConfig",
            target_id = id.from(_N, "ListenerConfig"),
            target = M.ListenerConfig,
        }),
        trustStoreConfiguration = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "trustStoreConfiguration"),
            type = "structure",
            name = "trustStoreConfiguration",
            target_id = id.from(_N, "TrustStoreConfiguration"),
            target = M.TrustStoreConfiguration,
        }),
        managedEndpointConfiguration = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "managedEndpointConfiguration"),
            type = "union",
            name = "managedEndpointConfiguration",
            target_id = id.from(_N, "ManagedEndpointConfiguration"),
            target = M.ManagedEndpointConfiguration,
        }),
        gatewayId = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        activeLinksCount = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "activeLinksCount"),
            type = "integer",
            name = "activeLinksCount",
            target_id = prelude.Integer.id,
        }),
        totalLinksCount = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "totalLinksCount"),
            type = "integer",
            name = "totalLinksCount",
            target_id = prelude.Integer.id,
        }),
        inboundLinksCount = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "inboundLinksCount"),
            type = "integer",
            name = "inboundLinksCount",
            target_id = prelude.Integer.id,
        }),
        gatewayType = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "gatewayType"),
            type = "string",
            name = "gatewayType",
            target_id = prelude.String.id,
        }),
        externalInboundEndpoint = schema.new({
            id = id.from(_N, "GetResponderGatewayOutput", "externalInboundEndpoint"),
            type = "string",
            name = "externalInboundEndpoint",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRequesterGatewaysInput = schema.new({
    id = id.from(_N, "ListRequesterGatewaysRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListRequesterGatewaysInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRequesterGatewaysInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListRequesterGatewaysOutput = schema.new({
    id = id.from(_N, "ListRequesterGatewaysResponse"),
    type = "structure",
    members = {
        gatewayIds = schema.new({
            id = id.from(_N, "ListRequesterGatewaysOutput", "gatewayIds"),
            type = "list",
            name = "gatewayIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListRequesterGatewaysOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResponderGatewaysInput = schema.new({
    id = id.from(_N, "ListResponderGatewaysRequest"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListResponderGatewaysInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 10 },
                [traits.HTTP_QUERY] = { name = "maxResults" },
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListResponderGatewaysInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nextToken" },
            },
        }),
    },
})

M.ListResponderGatewaysOutput = schema.new({
    id = id.from(_N, "ListResponderGatewaysResponse"),
    type = "structure",
    members = {
        gatewayIds = schema.new({
            id = id.from(_N, "ListResponderGatewaysOutput", "gatewayIds"),
            type = "list",
            name = "gatewayIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListResponderGatewaysOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
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

M.UpdateRequesterGatewayInput = schema.new({
    id = id.from(_N, "UpdateRequesterGatewayRequest"),
    type = "structure",
    members = {
        clientToken = schema.new({
            id = id.from(_N, "UpdateRequesterGatewayInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "UpdateRequesterGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateRequesterGatewayInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRequesterGatewayOutput = schema.new({
    id = id.from(_N, "UpdateRequesterGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "UpdateRequesterGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateRequesterGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateResponderGatewayInput = schema.new({
    id = id.from(_N, "UpdateResponderGatewayRequest"),
    type = "structure",
    members = {
        domainName = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        port = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "port"),
            type = "integer",
            name = "port",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        protocol = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "protocol"),
            type = "string",
            name = "protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        listenerConfig = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "listenerConfig"),
            type = "structure",
            name = "listenerConfig",
            target_id = id.from(_N, "ListenerConfig"),
            target = M.ListenerConfig,
        }),
        trustStoreConfiguration = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "trustStoreConfiguration"),
            type = "structure",
            name = "trustStoreConfiguration",
            target_id = id.from(_N, "TrustStoreConfiguration"),
            target = M.TrustStoreConfiguration,
        }),
        managedEndpointConfiguration = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "managedEndpointConfiguration"),
            type = "union",
            name = "managedEndpointConfiguration",
            target_id = id.from(_N, "ManagedEndpointConfiguration"),
            target = M.ManagedEndpointConfiguration,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        gatewayId = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateResponderGatewayInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateResponderGatewayOutput = schema.new({
    id = id.from(_N, "UpdateResponderGatewayResponse"),
    type = "structure",
    members = {
        gatewayId = schema.new({
            id = id.from(_N, "UpdateResponderGatewayOutput", "gatewayId"),
            type = "string",
            name = "gatewayId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        status = schema.new({
            id = id.from(_N, "UpdateResponderGatewayOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
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
