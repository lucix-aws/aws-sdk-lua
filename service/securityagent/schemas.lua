local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.securityagent"

local M = {}

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

M.Authentication = schema.new({
    id = id.from(_N, "Authentication"),
    type = "structure",
    members = {
        providerType = schema.new({
            id = id.from(_N, "Authentication", "providerType"),
            type = "string",
            name = "providerType",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "Authentication", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.Actor = schema.new({
    id = id.from(_N, "Actor"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "Actor", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
        }),
        uris = schema.new({
            id = id.from(_N, "Actor", "uris"),
            type = "list",
            name = "uris",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        authentication = schema.new({
            id = id.from(_N, "Actor", "authentication"),
            type = "structure",
            name = "authentication",
            target_id = id.from(_N, "Authentication"),
            target = M.Authentication,
        }),
        description = schema.new({
            id = id.from(_N, "Actor", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.AddArtifactInput = schema.new({
    id = id.from(_N, "AddArtifactInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "AddArtifactInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactContent = schema.new({
            id = id.from(_N, "AddArtifactInput", "artifactContent"),
            type = "blob",
            name = "artifactContent",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactType = schema.new({
            id = id.from(_N, "AddArtifactInput", "artifactType"),
            type = "string",
            name = "artifactType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "AddArtifactInput", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AddArtifactOutput = schema.new({
    id = id.from(_N, "AddArtifactOutput"),
    type = "structure",
    members = {
        artifactId = schema.new({
            id = id.from(_N, "AddArtifactOutput", "artifactId"),
            type = "string",
            name = "artifactId",
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
        serviceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "serviceCode"),
            type = "string",
            name = "serviceCode",
            target_id = prelude.String.id,
        }),
        quotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "quotaCode"),
            type = "string",
            name = "quotaCode",
            target_id = prelude.String.id,
        }),
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        path = schema.new({
            id = id.from(_N, "ValidationExceptionField", "path"),
            type = "string",
            name = "path",
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
        fieldList = schema.new({
            id = id.from(_N, "ValidationException", "fieldList"),
            type = "list",
            name = "fieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.VpcConfig = schema.new({
    id = id.from(_N, "VpcConfig"),
    type = "structure",
    members = {
        vpcArn = schema.new({
            id = id.from(_N, "VpcConfig", "vpcArn"),
            type = "string",
            name = "vpcArn",
            target_id = prelude.String.id,
        }),
        securityGroupArns = schema.new({
            id = id.from(_N, "VpcConfig", "securityGroupArns"),
            type = "list",
            name = "securityGroupArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        subnetArns = schema.new({
            id = id.from(_N, "VpcConfig", "subnetArns"),
            type = "list",
            name = "subnetArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.AWSResources = schema.new({
    id = id.from(_N, "AWSResources"),
    type = "structure",
    members = {
        vpcs = schema.new({
            id = id.from(_N, "AWSResources", "vpcs"),
            type = "list",
            name = "vpcs",
            target_id = prelude.Document.id,
            list_member = M.VpcConfig,
        }),
        logGroups = schema.new({
            id = id.from(_N, "AWSResources", "logGroups"),
            type = "list",
            name = "logGroups",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        s3Buckets = schema.new({
            id = id.from(_N, "AWSResources", "s3Buckets"),
            type = "list",
            name = "s3Buckets",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        secretArns = schema.new({
            id = id.from(_N, "AWSResources", "secretArns"),
            type = "list",
            name = "secretArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        lambdaFunctionArns = schema.new({
            id = id.from(_N, "AWSResources", "lambdaFunctionArns"),
            type = "list",
            name = "lambdaFunctionArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        iamRoles = schema.new({
            id = id.from(_N, "AWSResources", "iamRoles"),
            type = "list",
            name = "iamRoles",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CodeReviewSettings = schema.new({
    id = id.from(_N, "CodeReviewSettings"),
    type = "structure",
    members = {
        controlsScanning = schema.new({
            id = id.from(_N, "CodeReviewSettings", "controlsScanning"),
            type = "boolean",
            name = "controlsScanning",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        generalPurposeScanning = schema.new({
            id = id.from(_N, "CodeReviewSettings", "generalPurposeScanning"),
            type = "boolean",
            name = "generalPurposeScanning",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AgentSpace = schema.new({
    id = id.from(_N, "AgentSpace"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "AgentSpace", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AgentSpace", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AgentSpace", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        awsResources = schema.new({
            id = id.from(_N, "AgentSpace", "awsResources"),
            type = "structure",
            name = "awsResources",
            target_id = id.from(_N, "AWSResources"),
            target = M.AWSResources,
        }),
        targetDomainIds = schema.new({
            id = id.from(_N, "AgentSpace", "targetDomainIds"),
            type = "list",
            name = "targetDomainIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        codeReviewSettings = schema.new({
            id = id.from(_N, "AgentSpace", "codeReviewSettings"),
            type = "structure",
            name = "codeReviewSettings",
            target_id = id.from(_N, "CodeReviewSettings"),
            target = M.CodeReviewSettings,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "AgentSpace", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "AgentSpace", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AgentSpace", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchGetAgentSpacesInput = schema.new({
    id = id.from(_N, "BatchGetAgentSpacesInput"),
    type = "structure",
    members = {
        agentSpaceIds = schema.new({
            id = id.from(_N, "BatchGetAgentSpacesInput", "agentSpaceIds"),
            type = "list",
            name = "agentSpaceIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetAgentSpacesOutput = schema.new({
    id = id.from(_N, "BatchGetAgentSpacesOutput"),
    type = "structure",
    members = {
        agentSpaces = schema.new({
            id = id.from(_N, "BatchGetAgentSpacesOutput", "agentSpaces"),
            type = "list",
            name = "agentSpaces",
            target_id = prelude.Document.id,
            list_member = M.AgentSpace,
        }),
        notFound = schema.new({
            id = id.from(_N, "BatchGetAgentSpacesOutput", "notFound"),
            type = "list",
            name = "notFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.CreateAgentSpaceInput = schema.new({
    id = id.from(_N, "CreateAgentSpaceInput"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        awsResources = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "awsResources"),
            type = "structure",
            name = "awsResources",
            target_id = id.from(_N, "AWSResources"),
            target = M.AWSResources,
        }),
        targetDomainIds = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "targetDomainIds"),
            type = "list",
            name = "targetDomainIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        codeReviewSettings = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "codeReviewSettings"),
            type = "structure",
            name = "codeReviewSettings",
            target_id = id.from(_N, "CodeReviewSettings"),
            target = M.CodeReviewSettings,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateAgentSpaceInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateAgentSpaceOutput = schema.new({
    id = id.from(_N, "CreateAgentSpaceOutput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        awsResources = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "awsResources"),
            type = "structure",
            name = "awsResources",
            target_id = id.from(_N, "AWSResources"),
            target = M.AWSResources,
        }),
        targetDomainIds = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "targetDomainIds"),
            type = "list",
            name = "targetDomainIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        codeReviewSettings = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "codeReviewSettings"),
            type = "structure",
            name = "codeReviewSettings",
            target_id = id.from(_N, "CodeReviewSettings"),
            target = M.CodeReviewSettings,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreateAgentSpaceOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DeleteAgentSpaceInput = schema.new({
    id = id.from(_N, "DeleteAgentSpaceInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "DeleteAgentSpaceInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteAgentSpaceOutput = schema.new({
    id = id.from(_N, "DeleteAgentSpaceOutput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "DeleteAgentSpaceOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAgentSpacesInput = schema.new({
    id = id.from(_N, "ListAgentSpacesInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListAgentSpacesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAgentSpacesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.AgentSpaceSummary = schema.new({
    id = id.from(_N, "AgentSpaceSummary"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "AgentSpaceSummary", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AgentSpaceSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "AgentSpaceSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "AgentSpaceSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListAgentSpacesOutput = schema.new({
    id = id.from(_N, "ListAgentSpacesOutput"),
    type = "structure",
    members = {
        agentSpaceSummaries = schema.new({
            id = id.from(_N, "ListAgentSpacesOutput", "agentSpaceSummaries"),
            type = "list",
            name = "agentSpaceSummaries",
            target_id = prelude.Document.id,
            list_member = M.AgentSpaceSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAgentSpacesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateAgentSpaceInput = schema.new({
    id = id.from(_N, "UpdateAgentSpaceInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "UpdateAgentSpaceInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAgentSpaceInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAgentSpaceInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        awsResources = schema.new({
            id = id.from(_N, "UpdateAgentSpaceInput", "awsResources"),
            type = "structure",
            name = "awsResources",
            target_id = id.from(_N, "AWSResources"),
            target = M.AWSResources,
        }),
        targetDomainIds = schema.new({
            id = id.from(_N, "UpdateAgentSpaceInput", "targetDomainIds"),
            type = "list",
            name = "targetDomainIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        codeReviewSettings = schema.new({
            id = id.from(_N, "UpdateAgentSpaceInput", "codeReviewSettings"),
            type = "structure",
            name = "codeReviewSettings",
            target_id = id.from(_N, "CodeReviewSettings"),
            target = M.CodeReviewSettings,
        }),
    },
})

M.UpdateAgentSpaceOutput = schema.new({
    id = id.from(_N, "UpdateAgentSpaceOutput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        awsResources = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "awsResources"),
            type = "structure",
            name = "awsResources",
            target_id = id.from(_N, "AWSResources"),
            target = M.AWSResources,
        }),
        targetDomainIds = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "targetDomainIds"),
            type = "list",
            name = "targetDomainIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        codeReviewSettings = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "codeReviewSettings"),
            type = "structure",
            name = "codeReviewSettings",
            target_id = id.from(_N, "CodeReviewSettings"),
            target = M.CodeReviewSettings,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdateAgentSpaceOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.CreateApplicationInput = schema.new({
    id = id.from(_N, "CreateApplicationRequest"),
    type = "structure",
    members = {
        idcInstanceArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "idcInstanceArn"),
            type = "string",
            name = "idcInstanceArn",
            target_id = prelude.String.id,
        }),
        roleArn = schema.new({
            id = id.from(_N, "CreateApplicationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        defaultKmsKeyId = schema.new({
            id = id.from(_N, "CreateApplicationInput", "defaultKmsKeyId"),
            type = "string",
            name = "defaultKmsKeyId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateApplicationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateApplicationOutput = schema.new({
    id = id.from(_N, "CreateApplicationResponse"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateApplicationOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationInput = schema.new({
    id = id.from(_N, "DeleteApplicationRequest"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteApplicationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteApplicationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetApplicationInput = schema.new({
    id = id.from(_N, "GetApplicationRequest"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetApplicationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IdCConfiguration = schema.new({
    id = id.from(_N, "IdCConfiguration"),
    type = "structure",
    members = {
        idcApplicationArn = schema.new({
            id = id.from(_N, "IdCConfiguration", "idcApplicationArn"),
            type = "string",
            name = "idcApplicationArn",
            target_id = prelude.String.id,
        }),
        idcInstanceArn = schema.new({
            id = id.from(_N, "IdCConfiguration", "idcInstanceArn"),
            type = "string",
            name = "idcInstanceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.GetApplicationOutput = schema.new({
    id = id.from(_N, "GetApplicationResponse"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "GetApplicationOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domain = schema.new({
            id = id.from(_N, "GetApplicationOutput", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationName = schema.new({
            id = id.from(_N, "GetApplicationOutput", "applicationName"),
            type = "string",
            name = "applicationName",
            target_id = prelude.String.id,
        }),
        idcConfiguration = schema.new({
            id = id.from(_N, "GetApplicationOutput", "idcConfiguration"),
            type = "structure",
            name = "idcConfiguration",
            target_id = id.from(_N, "IdCConfiguration"),
            target = M.IdCConfiguration,
        }),
        roleArn = schema.new({
            id = id.from(_N, "GetApplicationOutput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        defaultKmsKeyId = schema.new({
            id = id.from(_N, "GetApplicationOutput", "defaultKmsKeyId"),
            type = "string",
            name = "defaultKmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsInput = schema.new({
    id = id.from(_N, "ListApplicationsRequest"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListApplicationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ApplicationSummary = schema.new({
    id = id.from(_N, "ApplicationSummary"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ApplicationSummary", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationName = schema.new({
            id = id.from(_N, "ApplicationSummary", "applicationName"),
            type = "string",
            name = "applicationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domain = schema.new({
            id = id.from(_N, "ApplicationSummary", "domain"),
            type = "string",
            name = "domain",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        defaultKmsKeyId = schema.new({
            id = id.from(_N, "ApplicationSummary", "defaultKmsKeyId"),
            type = "string",
            name = "defaultKmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.ListApplicationsOutput = schema.new({
    id = id.from(_N, "ListApplicationsResponse"),
    type = "structure",
    members = {
        applicationSummaries = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "applicationSummaries"),
            type = "list",
            name = "applicationSummaries",
            target_id = prelude.Document.id,
            list_member = M.ApplicationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListApplicationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationInput = schema.new({
    id = id.from(_N, "UpdateApplicationRequest"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        roleArn = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "roleArn"),
            type = "string",
            name = "roleArn",
            target_id = prelude.String.id,
        }),
        defaultKmsKeyId = schema.new({
            id = id.from(_N, "UpdateApplicationInput", "defaultKmsKeyId"),
            type = "string",
            name = "defaultKmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateApplicationOutput = schema.new({
    id = id.from(_N, "UpdateApplicationResponse"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "UpdateApplicationOutput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Artifact = schema.new({
    id = id.from(_N, "Artifact"),
    type = "structure",
    members = {
        contents = schema.new({
            id = id.from(_N, "Artifact", "contents"),
            type = "string",
            name = "contents",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "Artifact", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ArtifactMetadataItem = schema.new({
    id = id.from(_N, "ArtifactMetadataItem"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "ArtifactMetadataItem", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactId = schema.new({
            id = id.from(_N, "ArtifactMetadataItem", "artifactId"),
            type = "string",
            name = "artifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "ArtifactMetadataItem", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "ArtifactMetadataItem", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ArtifactSummary = schema.new({
    id = id.from(_N, "ArtifactSummary"),
    type = "structure",
    members = {
        artifactId = schema.new({
            id = id.from(_N, "ArtifactSummary", "artifactId"),
            type = "string",
            name = "artifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "ArtifactSummary", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactType = schema.new({
            id = id.from(_N, "ArtifactSummary", "artifactType"),
            type = "string",
            name = "artifactType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DocumentInfo = schema.new({
    id = id.from(_N, "DocumentInfo"),
    type = "structure",
    members = {
        s3Location = schema.new({
            id = id.from(_N, "DocumentInfo", "s3Location"),
            type = "string",
            name = "s3Location",
            target_id = prelude.String.id,
        }),
        artifactId = schema.new({
            id = id.from(_N, "DocumentInfo", "artifactId"),
            type = "string",
            name = "artifactId",
            target_id = prelude.String.id,
        }),
    },
})

M.Endpoint = schema.new({
    id = id.from(_N, "Endpoint"),
    type = "structure",
    members = {
        uri = schema.new({
            id = id.from(_N, "Endpoint", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
        }),
    },
})

M.IntegratedRepository = schema.new({
    id = id.from(_N, "IntegratedRepository"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "IntegratedRepository", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerResourceId = schema.new({
            id = id.from(_N, "IntegratedRepository", "providerResourceId"),
            type = "string",
            name = "providerResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SourceCodeRepository = schema.new({
    id = id.from(_N, "SourceCodeRepository"),
    type = "structure",
    members = {
        s3Location = schema.new({
            id = id.from(_N, "SourceCodeRepository", "s3Location"),
            type = "string",
            name = "s3Location",
            target_id = prelude.String.id,
        }),
    },
})

M.Assets = schema.new({
    id = id.from(_N, "Assets"),
    type = "structure",
    members = {
        endpoints = schema.new({
            id = id.from(_N, "Assets", "endpoints"),
            type = "list",
            name = "endpoints",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
        }),
        actors = schema.new({
            id = id.from(_N, "Assets", "actors"),
            type = "list",
            name = "actors",
            target_id = prelude.Document.id,
            list_member = M.Actor,
        }),
        documents = schema.new({
            id = id.from(_N, "Assets", "documents"),
            type = "list",
            name = "documents",
            target_id = prelude.Document.id,
            list_member = M.DocumentInfo,
        }),
        sourceCode = schema.new({
            id = id.from(_N, "Assets", "sourceCode"),
            type = "list",
            name = "sourceCode",
            target_id = prelude.Document.id,
            list_member = M.SourceCodeRepository,
        }),
        integratedRepositories = schema.new({
            id = id.from(_N, "Assets", "integratedRepositories"),
            type = "list",
            name = "integratedRepositories",
            target_id = prelude.Document.id,
            list_member = M.IntegratedRepository,
        }),
    },
})

M.BatchDeletePentestsInput = schema.new({
    id = id.from(_N, "BatchDeletePentestsInput"),
    type = "structure",
    members = {
        pentestIds = schema.new({
            id = id.from(_N, "BatchDeletePentestsInput", "pentestIds"),
            type = "list",
            name = "pentestIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "BatchDeletePentestsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudWatchLog = schema.new({
    id = id.from(_N, "CloudWatchLog"),
    type = "structure",
    members = {
        logGroup = schema.new({
            id = id.from(_N, "CloudWatchLog", "logGroup"),
            type = "string",
            name = "logGroup",
            target_id = prelude.String.id,
        }),
        logStream = schema.new({
            id = id.from(_N, "CloudWatchLog", "logStream"),
            type = "string",
            name = "logStream",
            target_id = prelude.String.id,
        }),
    },
})

M.CustomHeader = schema.new({
    id = id.from(_N, "CustomHeader"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "CustomHeader", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        value = schema.new({
            id = id.from(_N, "CustomHeader", "value"),
            type = "string",
            name = "value",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkTrafficRule = schema.new({
    id = id.from(_N, "NetworkTrafficRule"),
    type = "structure",
    members = {
        effect = schema.new({
            id = id.from(_N, "NetworkTrafficRule", "effect"),
            type = "string",
            name = "effect",
            target_id = prelude.String.id,
        }),
        pattern = schema.new({
            id = id.from(_N, "NetworkTrafficRule", "pattern"),
            type = "string",
            name = "pattern",
            target_id = prelude.String.id,
        }),
        networkTrafficRuleType = schema.new({
            id = id.from(_N, "NetworkTrafficRule", "networkTrafficRuleType"),
            type = "string",
            name = "networkTrafficRuleType",
            target_id = prelude.String.id,
        }),
    },
})

M.NetworkTrafficConfig = schema.new({
    id = id.from(_N, "NetworkTrafficConfig"),
    type = "structure",
    members = {
        rules = schema.new({
            id = id.from(_N, "NetworkTrafficConfig", "rules"),
            type = "list",
            name = "rules",
            target_id = prelude.Document.id,
            list_member = M.NetworkTrafficRule,
        }),
        customHeaders = schema.new({
            id = id.from(_N, "NetworkTrafficConfig", "customHeaders"),
            type = "list",
            name = "customHeaders",
            target_id = prelude.Document.id,
            list_member = M.CustomHeader,
        }),
    },
})

M.Pentest = schema.new({
    id = id.from(_N, "Pentest"),
    type = "structure",
    members = {
        pentestId = schema.new({
            id = id.from(_N, "Pentest", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "Pentest", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "Pentest", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assets = schema.new({
            id = id.from(_N, "Pentest", "assets"),
            type = "structure",
            name = "assets",
            target_id = id.from(_N, "Assets"),
            target = M.Assets,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        excludeRiskTypes = schema.new({
            id = id.from(_N, "Pentest", "excludeRiskTypes"),
            type = "list",
            name = "excludeRiskTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "Pentest", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "Pentest", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "Pentest", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        networkTrafficConfig = schema.new({
            id = id.from(_N, "Pentest", "networkTrafficConfig"),
            type = "structure",
            name = "networkTrafficConfig",
            target_id = id.from(_N, "NetworkTrafficConfig"),
            target = M.NetworkTrafficConfig,
        }),
        codeRemediationStrategy = schema.new({
            id = id.from(_N, "Pentest", "codeRemediationStrategy"),
            type = "string",
            name = "codeRemediationStrategy",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Pentest", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Pentest", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DeletePentestFailure = schema.new({
    id = id.from(_N, "DeletePentestFailure"),
    type = "structure",
    members = {
        pentestId = schema.new({
            id = id.from(_N, "DeletePentestFailure", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "DeletePentestFailure", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.BatchDeletePentestsOutput = schema.new({
    id = id.from(_N, "BatchDeletePentestsOutput"),
    type = "structure",
    members = {
        deleted = schema.new({
            id = id.from(_N, "BatchDeletePentestsOutput", "deleted"),
            type = "list",
            name = "deleted",
            target_id = prelude.Document.id,
            list_member = M.Pentest,
        }),
        failed = schema.new({
            id = id.from(_N, "BatchDeletePentestsOutput", "failed"),
            type = "list",
            name = "failed",
            target_id = prelude.Document.id,
            list_member = M.DeletePentestFailure,
        }),
    },
})

M.BatchGetArtifactMetadataInput = schema.new({
    id = id.from(_N, "BatchGetArtifactMetadataInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "BatchGetArtifactMetadataInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactIds = schema.new({
            id = id.from(_N, "BatchGetArtifactMetadataInput", "artifactIds"),
            type = "list",
            name = "artifactIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetArtifactMetadataOutput = schema.new({
    id = id.from(_N, "BatchGetArtifactMetadataOutput"),
    type = "structure",
    members = {
        artifactMetadataList = schema.new({
            id = id.from(_N, "BatchGetArtifactMetadataOutput", "artifactMetadataList"),
            type = "list",
            name = "artifactMetadataList",
            target_id = prelude.Document.id,
            list_member = M.ArtifactMetadataItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetFindingsInput = schema.new({
    id = id.from(_N, "BatchGetFindingsInput"),
    type = "structure",
    members = {
        findingIds = schema.new({
            id = id.from(_N, "BatchGetFindingsInput", "findingIds"),
            type = "list",
            name = "findingIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "BatchGetFindingsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CodeRemediationTaskDetails = schema.new({
    id = id.from(_N, "CodeRemediationTaskDetails"),
    type = "structure",
    members = {
        repoName = schema.new({
            id = id.from(_N, "CodeRemediationTaskDetails", "repoName"),
            type = "string",
            name = "repoName",
            target_id = prelude.String.id,
        }),
        codeDiffLink = schema.new({
            id = id.from(_N, "CodeRemediationTaskDetails", "codeDiffLink"),
            type = "string",
            name = "codeDiffLink",
            target_id = prelude.String.id,
        }),
        pullRequestLink = schema.new({
            id = id.from(_N, "CodeRemediationTaskDetails", "pullRequestLink"),
            type = "string",
            name = "pullRequestLink",
            target_id = prelude.String.id,
        }),
    },
})

M.CodeRemediationTask = schema.new({
    id = id.from(_N, "CodeRemediationTask"),
    type = "structure",
    members = {
        status = schema.new({
            id = id.from(_N, "CodeRemediationTask", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        statusReason = schema.new({
            id = id.from(_N, "CodeRemediationTask", "statusReason"),
            type = "string",
            name = "statusReason",
            target_id = prelude.String.id,
        }),
        taskDetails = schema.new({
            id = id.from(_N, "CodeRemediationTask", "taskDetails"),
            type = "list",
            name = "taskDetails",
            target_id = prelude.Document.id,
            list_member = M.CodeRemediationTaskDetails,
        }),
    },
})

M.Finding = schema.new({
    id = id.from(_N, "Finding"),
    type = "structure",
    members = {
        findingId = schema.new({
            id = id.from(_N, "Finding", "findingId"),
            type = "string",
            name = "findingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "Finding", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "Finding", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "Finding", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        taskId = schema.new({
            id = id.from(_N, "Finding", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "Finding", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Finding", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Finding", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        riskType = schema.new({
            id = id.from(_N, "Finding", "riskType"),
            type = "string",
            name = "riskType",
            target_id = prelude.String.id,
        }),
        riskLevel = schema.new({
            id = id.from(_N, "Finding", "riskLevel"),
            type = "string",
            name = "riskLevel",
            target_id = prelude.String.id,
        }),
        riskScore = schema.new({
            id = id.from(_N, "Finding", "riskScore"),
            type = "string",
            name = "riskScore",
            target_id = prelude.String.id,
        }),
        reasoning = schema.new({
            id = id.from(_N, "Finding", "reasoning"),
            type = "string",
            name = "reasoning",
            target_id = prelude.String.id,
        }),
        confidence = schema.new({
            id = id.from(_N, "Finding", "confidence"),
            type = "string",
            name = "confidence",
            target_id = prelude.String.id,
        }),
        attackScript = schema.new({
            id = id.from(_N, "Finding", "attackScript"),
            type = "string",
            name = "attackScript",
            target_id = prelude.String.id,
        }),
        codeRemediationTask = schema.new({
            id = id.from(_N, "Finding", "codeRemediationTask"),
            type = "structure",
            name = "codeRemediationTask",
            target_id = id.from(_N, "CodeRemediationTask"),
            target = M.CodeRemediationTask,
        }),
        lastUpdatedBy = schema.new({
            id = id.from(_N, "Finding", "lastUpdatedBy"),
            type = "string",
            name = "lastUpdatedBy",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Finding", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Finding", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchGetFindingsOutput = schema.new({
    id = id.from(_N, "BatchGetFindingsOutput"),
    type = "structure",
    members = {
        findings = schema.new({
            id = id.from(_N, "BatchGetFindingsOutput", "findings"),
            type = "list",
            name = "findings",
            target_id = prelude.Document.id,
            list_member = M.Finding,
        }),
        notFound = schema.new({
            id = id.from(_N, "BatchGetFindingsOutput", "notFound"),
            type = "list",
            name = "notFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetPentestJobsInput = schema.new({
    id = id.from(_N, "BatchGetPentestJobsInput"),
    type = "structure",
    members = {
        pentestJobIds = schema.new({
            id = id.from(_N, "BatchGetPentestJobsInput", "pentestJobIds"),
            type = "list",
            name = "pentestJobIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "BatchGetPentestJobsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ErrorInformation = schema.new({
    id = id.from(_N, "ErrorInformation"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "ErrorInformation", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
        }),
        message = schema.new({
            id = id.from(_N, "ErrorInformation", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ExecutionContext = schema.new({
    id = id.from(_N, "ExecutionContext"),
    type = "structure",
    members = {
        contextType = schema.new({
            id = id.from(_N, "ExecutionContext", "contextType"),
            type = "string",
            name = "contextType",
            target_id = prelude.String.id,
        }),
        context = schema.new({
            id = id.from(_N, "ExecutionContext", "context"),
            type = "string",
            name = "context",
            target_id = prelude.String.id,
        }),
        timestamp = schema.new({
            id = id.from(_N, "ExecutionContext", "timestamp"),
            type = "timestamp",
            name = "timestamp",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.Step = schema.new({
    id = id.from(_N, "Step"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Step", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "Step", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Step", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Step", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.PentestJob = schema.new({
    id = id.from(_N, "PentestJob"),
    type = "structure",
    members = {
        pentestJobId = schema.new({
            id = id.from(_N, "PentestJob", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        pentestId = schema.new({
            id = id.from(_N, "PentestJob", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "PentestJob", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        overview = schema.new({
            id = id.from(_N, "PentestJob", "overview"),
            type = "string",
            name = "overview",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "PentestJob", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        endpoints = schema.new({
            id = id.from(_N, "PentestJob", "endpoints"),
            type = "list",
            name = "endpoints",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
        }),
        actors = schema.new({
            id = id.from(_N, "PentestJob", "actors"),
            type = "list",
            name = "actors",
            target_id = prelude.Document.id,
            list_member = M.Actor,
        }),
        documents = schema.new({
            id = id.from(_N, "PentestJob", "documents"),
            type = "list",
            name = "documents",
            target_id = prelude.Document.id,
            list_member = M.DocumentInfo,
        }),
        sourceCode = schema.new({
            id = id.from(_N, "PentestJob", "sourceCode"),
            type = "list",
            name = "sourceCode",
            target_id = prelude.Document.id,
            list_member = M.SourceCodeRepository,
        }),
        excludePaths = schema.new({
            id = id.from(_N, "PentestJob", "excludePaths"),
            type = "list",
            name = "excludePaths",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
        }),
        allowedDomains = schema.new({
            id = id.from(_N, "PentestJob", "allowedDomains"),
            type = "list",
            name = "allowedDomains",
            target_id = prelude.Document.id,
            list_member = M.Endpoint,
        }),
        excludeRiskTypes = schema.new({
            id = id.from(_N, "PentestJob", "excludeRiskTypes"),
            type = "list",
            name = "excludeRiskTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        steps = schema.new({
            id = id.from(_N, "PentestJob", "steps"),
            type = "list",
            name = "steps",
            target_id = prelude.Document.id,
            list_member = M.Step,
        }),
        executionContext = schema.new({
            id = id.from(_N, "PentestJob", "executionContext"),
            type = "list",
            name = "executionContext",
            target_id = prelude.Document.id,
            list_member = M.ExecutionContext,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "PentestJob", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "PentestJob", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "PentestJob", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        networkTrafficConfig = schema.new({
            id = id.from(_N, "PentestJob", "networkTrafficConfig"),
            type = "structure",
            name = "networkTrafficConfig",
            target_id = id.from(_N, "NetworkTrafficConfig"),
            target = M.NetworkTrafficConfig,
        }),
        errorInformation = schema.new({
            id = id.from(_N, "PentestJob", "errorInformation"),
            type = "structure",
            name = "errorInformation",
            target_id = id.from(_N, "ErrorInformation"),
            target = M.ErrorInformation,
        }),
        integratedRepositories = schema.new({
            id = id.from(_N, "PentestJob", "integratedRepositories"),
            type = "list",
            name = "integratedRepositories",
            target_id = prelude.Document.id,
            list_member = M.IntegratedRepository,
        }),
        codeRemediationStrategy = schema.new({
            id = id.from(_N, "PentestJob", "codeRemediationStrategy"),
            type = "string",
            name = "codeRemediationStrategy",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "PentestJob", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "PentestJob", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchGetPentestJobsOutput = schema.new({
    id = id.from(_N, "BatchGetPentestJobsOutput"),
    type = "structure",
    members = {
        pentestJobs = schema.new({
            id = id.from(_N, "BatchGetPentestJobsOutput", "pentestJobs"),
            type = "list",
            name = "pentestJobs",
            target_id = prelude.Document.id,
            list_member = M.PentestJob,
        }),
        notFound = schema.new({
            id = id.from(_N, "BatchGetPentestJobsOutput", "notFound"),
            type = "list",
            name = "notFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetPentestJobTasksInput = schema.new({
    id = id.from(_N, "BatchGetPentestJobTasksInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "BatchGetPentestJobTasksInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        taskIds = schema.new({
            id = id.from(_N, "BatchGetPentestJobTasksInput", "taskIds"),
            type = "list",
            name = "taskIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Category = schema.new({
    id = id.from(_N, "Category"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "Category", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        isPrimary = schema.new({
            id = id.from(_N, "Category", "isPrimary"),
            type = "boolean",
            name = "isPrimary",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.LogLocation = schema.new({
    id = id.from(_N, "LogLocation"),
    type = "structure",
    members = {
        logType = schema.new({
            id = id.from(_N, "LogLocation", "logType"),
            type = "string",
            name = "logType",
            target_id = prelude.String.id,
        }),
        cloudWatchLog = schema.new({
            id = id.from(_N, "LogLocation", "cloudWatchLog"),
            type = "structure",
            name = "cloudWatchLog",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
    },
})

M.Task = schema.new({
    id = id.from(_N, "Task"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "Task", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "Task", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "Task", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "Task", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "Task", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "Task", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        categories = schema.new({
            id = id.from(_N, "Task", "categories"),
            type = "list",
            name = "categories",
            target_id = prelude.Document.id,
            list_member = M.Category,
        }),
        riskType = schema.new({
            id = id.from(_N, "Task", "riskType"),
            type = "string",
            name = "riskType",
            target_id = prelude.String.id,
        }),
        targetEndpoint = schema.new({
            id = id.from(_N, "Task", "targetEndpoint"),
            type = "structure",
            name = "targetEndpoint",
            target_id = id.from(_N, "Endpoint"),
            target = M.Endpoint,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "Task", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
        }),
        logsLocation = schema.new({
            id = id.from(_N, "Task", "logsLocation"),
            type = "structure",
            name = "logsLocation",
            target_id = id.from(_N, "LogLocation"),
            target = M.LogLocation,
        }),
        createdAt = schema.new({
            id = id.from(_N, "Task", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "Task", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchGetPentestJobTasksOutput = schema.new({
    id = id.from(_N, "BatchGetPentestJobTasksOutput"),
    type = "structure",
    members = {
        tasks = schema.new({
            id = id.from(_N, "BatchGetPentestJobTasksOutput", "tasks"),
            type = "list",
            name = "tasks",
            target_id = prelude.Document.id,
            list_member = M.Task,
        }),
        notFound = schema.new({
            id = id.from(_N, "BatchGetPentestJobTasksOutput", "notFound"),
            type = "list",
            name = "notFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetPentestsInput = schema.new({
    id = id.from(_N, "BatchGetPentestsInput"),
    type = "structure",
    members = {
        pentestIds = schema.new({
            id = id.from(_N, "BatchGetPentestsInput", "pentestIds"),
            type = "list",
            name = "pentestIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "BatchGetPentestsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.BatchGetPentestsOutput = schema.new({
    id = id.from(_N, "BatchGetPentestsOutput"),
    type = "structure",
    members = {
        pentests = schema.new({
            id = id.from(_N, "BatchGetPentestsOutput", "pentests"),
            type = "list",
            name = "pentests",
            target_id = prelude.Document.id,
            list_member = M.Pentest,
        }),
        notFound = schema.new({
            id = id.from(_N, "BatchGetPentestsOutput", "notFound"),
            type = "list",
            name = "notFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BatchGetTargetDomainsInput = schema.new({
    id = id.from(_N, "BatchGetTargetDomainsInput"),
    type = "structure",
    members = {
        targetDomainIds = schema.new({
            id = id.from(_N, "BatchGetTargetDomainsInput", "targetDomainIds"),
            type = "list",
            name = "targetDomainIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DnsVerification = schema.new({
    id = id.from(_N, "DnsVerification"),
    type = "structure",
    members = {
        token = schema.new({
            id = id.from(_N, "DnsVerification", "token"),
            type = "string",
            name = "token",
            target_id = prelude.String.id,
        }),
        dnsRecordName = schema.new({
            id = id.from(_N, "DnsVerification", "dnsRecordName"),
            type = "string",
            name = "dnsRecordName",
            target_id = prelude.String.id,
        }),
        dnsRecordType = schema.new({
            id = id.from(_N, "DnsVerification", "dnsRecordType"),
            type = "string",
            name = "dnsRecordType",
            target_id = prelude.String.id,
        }),
    },
})

M.HttpVerification = schema.new({
    id = id.from(_N, "HttpVerification"),
    type = "structure",
    members = {
        token = schema.new({
            id = id.from(_N, "HttpVerification", "token"),
            type = "string",
            name = "token",
            target_id = prelude.String.id,
        }),
        routePath = schema.new({
            id = id.from(_N, "HttpVerification", "routePath"),
            type = "string",
            name = "routePath",
            target_id = prelude.String.id,
        }),
    },
})

M.VerificationDetails = schema.new({
    id = id.from(_N, "VerificationDetails"),
    type = "structure",
    members = {
        method = schema.new({
            id = id.from(_N, "VerificationDetails", "method"),
            type = "string",
            name = "method",
            target_id = prelude.String.id,
        }),
        dnsTxt = schema.new({
            id = id.from(_N, "VerificationDetails", "dnsTxt"),
            type = "structure",
            name = "dnsTxt",
            target_id = id.from(_N, "DnsVerification"),
            target = M.DnsVerification,
        }),
        httpRoute = schema.new({
            id = id.from(_N, "VerificationDetails", "httpRoute"),
            type = "structure",
            name = "httpRoute",
            target_id = id.from(_N, "HttpVerification"),
            target = M.HttpVerification,
        }),
    },
})

M.TargetDomain = schema.new({
    id = id.from(_N, "TargetDomain"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "TargetDomain", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "TargetDomain", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationStatus = schema.new({
            id = id.from(_N, "TargetDomain", "verificationStatus"),
            type = "string",
            name = "verificationStatus",
            target_id = prelude.String.id,
        }),
        verificationDetails = schema.new({
            id = id.from(_N, "TargetDomain", "verificationDetails"),
            type = "structure",
            name = "verificationDetails",
            target_id = id.from(_N, "VerificationDetails"),
            target = M.VerificationDetails,
        }),
        createdAt = schema.new({
            id = id.from(_N, "TargetDomain", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        verifiedAt = schema.new({
            id = id.from(_N, "TargetDomain", "verifiedAt"),
            type = "timestamp",
            name = "verifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.BatchGetTargetDomainsOutput = schema.new({
    id = id.from(_N, "BatchGetTargetDomainsOutput"),
    type = "structure",
    members = {
        targetDomains = schema.new({
            id = id.from(_N, "BatchGetTargetDomainsOutput", "targetDomains"),
            type = "list",
            name = "targetDomains",
            target_id = prelude.Document.id,
            list_member = M.TargetDomain,
        }),
        notFound = schema.new({
            id = id.from(_N, "BatchGetTargetDomainsOutput", "notFound"),
            type = "list",
            name = "notFound",
            target_id = prelude.Document.id,
            list_member = prelude.String,
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

M.GitHubIntegrationInput = schema.new({
    id = id.from(_N, "GitHubIntegrationInput"),
    type = "structure",
    members = {
        code = schema.new({
            id = id.from(_N, "GitHubIntegrationInput", "code"),
            type = "string",
            name = "code",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "GitHubIntegrationInput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        organizationName = schema.new({
            id = id.from(_N, "GitHubIntegrationInput", "organizationName"),
            type = "string",
            name = "organizationName",
            target_id = prelude.String.id,
        }),
    },
})

M.ProviderInput = schema.new({
    id = id.from(_N, "ProviderInput"),
    type = "union",
    members = {
        github = schema.new({
            id = id.from(_N, "ProviderInput", "github"),
            type = "structure",
            name = "github",
            target_id = id.from(_N, "GitHubIntegrationInput"),
            target = M.GitHubIntegrationInput,
        }),
    },
})

M.CreateIntegrationInput = schema.new({
    id = id.from(_N, "CreateIntegrationInput"),
    type = "structure",
    members = {
        provider = schema.new({
            id = id.from(_N, "CreateIntegrationInput", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        input = schema.new({
            id = id.from(_N, "CreateIntegrationInput", "input"),
            type = "union",
            name = "input",
            target_id = id.from(_N, "ProviderInput"),
            target = M.ProviderInput,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        integrationDisplayName = schema.new({
            id = id.from(_N, "CreateIntegrationInput", "integrationDisplayName"),
            type = "string",
            name = "integrationDisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "CreateIntegrationInput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateIntegrationInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateIntegrationOutput = schema.new({
    id = id.from(_N, "CreateIntegrationOutput"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "CreateIntegrationOutput", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UserConfig = schema.new({
    id = id.from(_N, "UserConfig"),
    type = "structure",
    members = {
        role = schema.new({
            id = id.from(_N, "UserConfig", "role"),
            type = "string",
            name = "role",
            target_id = prelude.String.id,
        }),
    },
})

M.MembershipConfig = schema.new({
    id = id.from(_N, "MembershipConfig"),
    type = "union",
    members = {
        user = schema.new({
            id = id.from(_N, "MembershipConfig", "user"),
            type = "structure",
            name = "user",
            target_id = id.from(_N, "UserConfig"),
            target = M.UserConfig,
        }),
    },
})

M.CreateMembershipInput = schema.new({
    id = id.from(_N, "CreateMembershipRequest"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "CreateMembershipInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "CreateMembershipInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        membershipId = schema.new({
            id = id.from(_N, "CreateMembershipInput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memberType = schema.new({
            id = id.from(_N, "CreateMembershipInput", "memberType"),
            type = "string",
            name = "memberType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        config = schema.new({
            id = id.from(_N, "CreateMembershipInput", "config"),
            type = "union",
            name = "config",
            target_id = id.from(_N, "MembershipConfig"),
            target = M.MembershipConfig,
        }),
    },
})

M.CreateMembershipOutput = schema.new({
    id = id.from(_N, "CreateMembershipResponse"),
    type = "structure",
})

M.CreatePentestInput = schema.new({
    id = id.from(_N, "CreatePentestInput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "CreatePentestInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "CreatePentestInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        assets = schema.new({
            id = id.from(_N, "CreatePentestInput", "assets"),
            type = "structure",
            name = "assets",
            target_id = id.from(_N, "Assets"),
            target = M.Assets,
        }),
        excludeRiskTypes = schema.new({
            id = id.from(_N, "CreatePentestInput", "excludeRiskTypes"),
            type = "list",
            name = "excludeRiskTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "CreatePentestInput", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "CreatePentestInput", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "CreatePentestInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        networkTrafficConfig = schema.new({
            id = id.from(_N, "CreatePentestInput", "networkTrafficConfig"),
            type = "structure",
            name = "networkTrafficConfig",
            target_id = id.from(_N, "NetworkTrafficConfig"),
            target = M.NetworkTrafficConfig,
        }),
        codeRemediationStrategy = schema.new({
            id = id.from(_N, "CreatePentestInput", "codeRemediationStrategy"),
            type = "string",
            name = "codeRemediationStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.CreatePentestOutput = schema.new({
    id = id.from(_N, "CreatePentestOutput"),
    type = "structure",
    members = {
        pentestId = schema.new({
            id = id.from(_N, "CreatePentestOutput", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "CreatePentestOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreatePentestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "CreatePentestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        assets = schema.new({
            id = id.from(_N, "CreatePentestOutput", "assets"),
            type = "structure",
            name = "assets",
            target_id = id.from(_N, "Assets"),
            target = M.Assets,
        }),
        excludeRiskTypes = schema.new({
            id = id.from(_N, "CreatePentestOutput", "excludeRiskTypes"),
            type = "list",
            name = "excludeRiskTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "CreatePentestOutput", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "CreatePentestOutput", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "CreatePentestOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTargetDomainInput = schema.new({
    id = id.from(_N, "CreateTargetDomainInput"),
    type = "structure",
    members = {
        targetDomainName = schema.new({
            id = id.from(_N, "CreateTargetDomainInput", "targetDomainName"),
            type = "string",
            name = "targetDomainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationMethod = schema.new({
            id = id.from(_N, "CreateTargetDomainInput", "verificationMethod"),
            type = "string",
            name = "verificationMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "CreateTargetDomainInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateTargetDomainOutput = schema.new({
    id = id.from(_N, "CreateTargetDomainOutput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "CreateTargetDomainOutput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "CreateTargetDomainOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationStatus = schema.new({
            id = id.from(_N, "CreateTargetDomainOutput", "verificationStatus"),
            type = "string",
            name = "verificationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationDetails = schema.new({
            id = id.from(_N, "CreateTargetDomainOutput", "verificationDetails"),
            type = "structure",
            name = "verificationDetails",
            target_id = id.from(_N, "VerificationDetails"),
            target = M.VerificationDetails,
        }),
        createdAt = schema.new({
            id = id.from(_N, "CreateTargetDomainOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        verifiedAt = schema.new({
            id = id.from(_N, "CreateTargetDomainOutput", "verifiedAt"),
            type = "timestamp",
            name = "verifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.DeleteArtifactInput = schema.new({
    id = id.from(_N, "DeleteArtifactInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "DeleteArtifactInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactId = schema.new({
            id = id.from(_N, "DeleteArtifactInput", "artifactId"),
            type = "string",
            name = "artifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteArtifactOutput = schema.new({
    id = id.from(_N, "DeleteArtifactOutput"),
    type = "structure",
})

M.DeleteIntegrationInput = schema.new({
    id = id.from(_N, "DeleteIntegrationInput"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "DeleteIntegrationInput", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIntegrationOutput = schema.new({
    id = id.from(_N, "DeleteIntegrationOutput"),
    type = "structure",
})

M.DeleteMembershipInput = schema.new({
    id = id.from(_N, "DeleteMembershipRequest"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "DeleteMembershipInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "DeleteMembershipInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        membershipId = schema.new({
            id = id.from(_N, "DeleteMembershipInput", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memberType = schema.new({
            id = id.from(_N, "DeleteMembershipInput", "memberType"),
            type = "string",
            name = "memberType",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteMembershipOutput = schema.new({
    id = id.from(_N, "DeleteMembershipResponse"),
    type = "structure",
})

M.DeleteTargetDomainInput = schema.new({
    id = id.from(_N, "DeleteTargetDomainInput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "DeleteTargetDomainInput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteTargetDomainOutput = schema.new({
    id = id.from(_N, "DeleteTargetDomainOutput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "DeleteTargetDomainOutput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
        }),
    },
})

M.DiscoveredEndpoint = schema.new({
    id = id.from(_N, "DiscoveredEndpoint"),
    type = "structure",
    members = {
        uri = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "uri"),
            type = "string",
            name = "uri",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        taskId = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        evidence = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "evidence"),
            type = "string",
            name = "evidence",
            target_id = prelude.String.id,
        }),
        operation = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "operation"),
            type = "string",
            name = "operation",
            target_id = prelude.String.id,
        }),
        description = schema.new({
            id = id.from(_N, "DiscoveredEndpoint", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
    },
})

M.FindingSummary = schema.new({
    id = id.from(_N, "FindingSummary"),
    type = "structure",
    members = {
        findingId = schema.new({
            id = id.from(_N, "FindingSummary", "findingId"),
            type = "string",
            name = "findingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "FindingSummary", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "FindingSummary", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "FindingSummary", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "FindingSummary", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "FindingSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        riskType = schema.new({
            id = id.from(_N, "FindingSummary", "riskType"),
            type = "string",
            name = "riskType",
            target_id = prelude.String.id,
        }),
        riskLevel = schema.new({
            id = id.from(_N, "FindingSummary", "riskLevel"),
            type = "string",
            name = "riskLevel",
            target_id = prelude.String.id,
        }),
        confidence = schema.new({
            id = id.from(_N, "FindingSummary", "confidence"),
            type = "string",
            name = "confidence",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "FindingSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "FindingSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetArtifactInput = schema.new({
    id = id.from(_N, "GetArtifactInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "GetArtifactInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactId = schema.new({
            id = id.from(_N, "GetArtifactInput", "artifactId"),
            type = "string",
            name = "artifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetArtifactOutput = schema.new({
    id = id.from(_N, "GetArtifactOutput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "GetArtifactOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifactId = schema.new({
            id = id.from(_N, "GetArtifactOutput", "artifactId"),
            type = "string",
            name = "artifactId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        artifact = schema.new({
            id = id.from(_N, "GetArtifactOutput", "artifact"),
            type = "structure",
            name = "artifact",
            target_id = id.from(_N, "Artifact"),
            target = M.Artifact,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        fileName = schema.new({
            id = id.from(_N, "GetArtifactOutput", "fileName"),
            type = "string",
            name = "fileName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "GetArtifactOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetIntegrationInput = schema.new({
    id = id.from(_N, "GetIntegrationInput"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "GetIntegrationInput", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetIntegrationOutput = schema.new({
    id = id.from(_N, "GetIntegrationOutput"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        installationId = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "installationId"),
            type = "string",
            name = "installationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        provider = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerType = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "providerType"),
            type = "string",
            name = "providerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
        }),
        kmsKeyId = schema.new({
            id = id.from(_N, "GetIntegrationOutput", "kmsKeyId"),
            type = "string",
            name = "kmsKeyId",
            target_id = prelude.String.id,
        }),
    },
})

M.GitHubRepositoryMetadata = schema.new({
    id = id.from(_N, "GitHubRepositoryMetadata"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GitHubRepositoryMetadata", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerResourceId = schema.new({
            id = id.from(_N, "GitHubRepositoryMetadata", "providerResourceId"),
            type = "string",
            name = "providerResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        owner = schema.new({
            id = id.from(_N, "GitHubRepositoryMetadata", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        accessType = schema.new({
            id = id.from(_N, "GitHubRepositoryMetadata", "accessType"),
            type = "string",
            name = "accessType",
            target_id = prelude.String.id,
        }),
    },
})

M.GitHubRepositoryResource = schema.new({
    id = id.from(_N, "GitHubRepositoryResource"),
    type = "structure",
    members = {
        name = schema.new({
            id = id.from(_N, "GitHubRepositoryResource", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        owner = schema.new({
            id = id.from(_N, "GitHubRepositoryResource", "owner"),
            type = "string",
            name = "owner",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GitHubResourceCapabilities = schema.new({
    id = id.from(_N, "GitHubResourceCapabilities"),
    type = "structure",
    members = {
        leaveComments = schema.new({
            id = id.from(_N, "GitHubResourceCapabilities", "leaveComments"),
            type = "boolean",
            name = "leaveComments",
            target_id = prelude.Boolean.id,
        }),
        remediateCode = schema.new({
            id = id.from(_N, "GitHubResourceCapabilities", "remediateCode"),
            type = "boolean",
            name = "remediateCode",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.InitiateProviderRegistrationInput = schema.new({
    id = id.from(_N, "InitiateProviderRegistrationInput"),
    type = "structure",
    members = {
        provider = schema.new({
            id = id.from(_N, "InitiateProviderRegistrationInput", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InitiateProviderRegistrationOutput = schema.new({
    id = id.from(_N, "InitiateProviderRegistrationOutput"),
    type = "structure",
    members = {
        redirectTo = schema.new({
            id = id.from(_N, "InitiateProviderRegistrationOutput", "redirectTo"),
            type = "string",
            name = "redirectTo",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        csrfState = schema.new({
            id = id.from(_N, "InitiateProviderRegistrationOutput", "csrfState"),
            type = "string",
            name = "csrfState",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IntegratedResource = schema.new({
    id = id.from(_N, "IntegratedResource"),
    type = "union",
    members = {
        githubRepository = schema.new({
            id = id.from(_N, "IntegratedResource", "githubRepository"),
            type = "structure",
            name = "githubRepository",
            target_id = id.from(_N, "GitHubRepositoryResource"),
            target = M.GitHubRepositoryResource,
        }),
    },
})

M.ProviderResourceCapabilities = schema.new({
    id = id.from(_N, "ProviderResourceCapabilities"),
    type = "union",
    members = {
        github = schema.new({
            id = id.from(_N, "ProviderResourceCapabilities", "github"),
            type = "structure",
            name = "github",
            target_id = id.from(_N, "GitHubResourceCapabilities"),
            target = M.GitHubResourceCapabilities,
        }),
    },
})

M.IntegratedResourceInputItem = schema.new({
    id = id.from(_N, "IntegratedResourceInputItem"),
    type = "structure",
    members = {
        resource = schema.new({
            id = id.from(_N, "IntegratedResourceInputItem", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "IntegratedResource"),
            target = M.IntegratedResource,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilities = schema.new({
            id = id.from(_N, "IntegratedResourceInputItem", "capabilities"),
            type = "union",
            name = "capabilities",
            target_id = id.from(_N, "ProviderResourceCapabilities"),
            target = M.ProviderResourceCapabilities,
        }),
    },
})

M.IntegratedResourceMetadata = schema.new({
    id = id.from(_N, "IntegratedResourceMetadata"),
    type = "union",
    members = {
        githubRepository = schema.new({
            id = id.from(_N, "IntegratedResourceMetadata", "githubRepository"),
            type = "structure",
            name = "githubRepository",
            target_id = id.from(_N, "GitHubRepositoryMetadata"),
            target = M.GitHubRepositoryMetadata,
        }),
    },
})

M.IntegratedResourceSummary = schema.new({
    id = id.from(_N, "IntegratedResourceSummary"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "IntegratedResourceSummary", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        resource = schema.new({
            id = id.from(_N, "IntegratedResourceSummary", "resource"),
            type = "union",
            name = "resource",
            target_id = id.from(_N, "IntegratedResourceMetadata"),
            target = M.IntegratedResourceMetadata,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        capabilities = schema.new({
            id = id.from(_N, "IntegratedResourceSummary", "capabilities"),
            type = "union",
            name = "capabilities",
            target_id = id.from(_N, "ProviderResourceCapabilities"),
            target = M.ProviderResourceCapabilities,
        }),
    },
})

M.IntegrationFilter = schema.new({
    id = id.from(_N, "IntegrationFilter"),
    type = "union",
    members = {
        provider = schema.new({
            id = id.from(_N, "IntegrationFilter", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
        }),
        providerType = schema.new({
            id = id.from(_N, "IntegrationFilter", "providerType"),
            type = "string",
            name = "providerType",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIntegrationsInput = schema.new({
    id = id.from(_N, "ListIntegrationsInput"),
    type = "structure",
    members = {
        filter = schema.new({
            id = id.from(_N, "ListIntegrationsInput", "filter"),
            type = "union",
            name = "filter",
            target_id = id.from(_N, "IntegrationFilter"),
            target = M.IntegrationFilter,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIntegrationsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIntegrationsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.IntegrationSummary = schema.new({
    id = id.from(_N, "IntegrationSummary"),
    type = "structure",
    members = {
        integrationId = schema.new({
            id = id.from(_N, "IntegrationSummary", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        installationId = schema.new({
            id = id.from(_N, "IntegrationSummary", "installationId"),
            type = "string",
            name = "installationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        provider = schema.new({
            id = id.from(_N, "IntegrationSummary", "provider"),
            type = "string",
            name = "provider",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        providerType = schema.new({
            id = id.from(_N, "IntegrationSummary", "providerType"),
            type = "string",
            name = "providerType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        displayName = schema.new({
            id = id.from(_N, "IntegrationSummary", "displayName"),
            type = "string",
            name = "displayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListIntegrationsOutput = schema.new({
    id = id.from(_N, "ListIntegrationsOutput"),
    type = "structure",
    members = {
        integrationSummaries = schema.new({
            id = id.from(_N, "ListIntegrationsOutput", "integrationSummaries"),
            type = "list",
            name = "integrationSummaries",
            target_id = prelude.Document.id,
            list_member = M.IntegrationSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIntegrationsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListArtifactsInput = schema.new({
    id = id.from(_N, "ListArtifactsInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "ListArtifactsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListArtifactsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListArtifactsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListArtifactsOutput = schema.new({
    id = id.from(_N, "ListArtifactsOutput"),
    type = "structure",
    members = {
        artifactSummaries = schema.new({
            id = id.from(_N, "ListArtifactsOutput", "artifactSummaries"),
            type = "list",
            name = "artifactSummaries",
            target_id = prelude.Document.id,
            list_member = M.ArtifactSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListArtifactsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDiscoveredEndpointsInput = schema.new({
    id = id.from(_N, "ListDiscoveredEndpointsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsInput", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        prefix = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsInput", "prefix"),
            type = "string",
            name = "prefix",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListDiscoveredEndpointsOutput = schema.new({
    id = id.from(_N, "ListDiscoveredEndpointsOutput"),
    type = "structure",
    members = {
        discoveredEndpoints = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsOutput", "discoveredEndpoints"),
            type = "list",
            name = "discoveredEndpoints",
            target_id = prelude.Document.id,
            list_member = M.DiscoveredEndpoint,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListDiscoveredEndpointsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFindingsInput = schema.new({
    id = id.from(_N, "ListFindingsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListFindingsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "ListFindingsInput", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "ListFindingsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFindingsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        riskType = schema.new({
            id = id.from(_N, "ListFindingsInput", "riskType"),
            type = "string",
            name = "riskType",
            target_id = prelude.String.id,
        }),
        riskLevel = schema.new({
            id = id.from(_N, "ListFindingsInput", "riskLevel"),
            type = "string",
            name = "riskLevel",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "ListFindingsInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        confidence = schema.new({
            id = id.from(_N, "ListFindingsInput", "confidence"),
            type = "string",
            name = "confidence",
            target_id = prelude.String.id,
        }),
        name = schema.new({
            id = id.from(_N, "ListFindingsInput", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
        }),
    },
})

M.ListFindingsOutput = schema.new({
    id = id.from(_N, "ListFindingsOutput"),
    type = "structure",
    members = {
        findingsSummaries = schema.new({
            id = id.from(_N, "ListFindingsOutput", "findingsSummaries"),
            type = "list",
            name = "findingsSummaries",
            target_id = prelude.Document.id,
            list_member = M.FindingSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListFindingsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListIntegratedResourcesInput = schema.new({
    id = id.from(_N, "ListIntegratedResourcesInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "ListIntegratedResourcesInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        integrationId = schema.new({
            id = id.from(_N, "ListIntegratedResourcesInput", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
        }),
        resourceType = schema.new({
            id = id.from(_N, "ListIntegratedResourcesInput", "resourceType"),
            type = "string",
            name = "resourceType",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIntegratedResourcesInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListIntegratedResourcesInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListIntegratedResourcesOutput = schema.new({
    id = id.from(_N, "ListIntegratedResourcesOutput"),
    type = "structure",
    members = {
        integratedResourceSummaries = schema.new({
            id = id.from(_N, "ListIntegratedResourcesOutput", "integratedResourceSummaries"),
            type = "list",
            name = "integratedResourceSummaries",
            target_id = prelude.Document.id,
            list_member = M.IntegratedResourceSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListIntegratedResourcesOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListMembershipsInput = schema.new({
    id = id.from(_N, "ListMembershipsRequest"),
    type = "structure",
    members = {
        applicationId = schema.new({
            id = id.from(_N, "ListMembershipsInput", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "ListMembershipsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memberType = schema.new({
            id = id.from(_N, "ListMembershipsInput", "memberType"),
            type = "string",
            name = "memberType",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListMembershipsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMembershipsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UserMetadata = schema.new({
    id = id.from(_N, "UserMetadata"),
    type = "structure",
    members = {
        username = schema.new({
            id = id.from(_N, "UserMetadata", "username"),
            type = "string",
            name = "username",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        email = schema.new({
            id = id.from(_N, "UserMetadata", "email"),
            type = "string",
            name = "email",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.MemberMetadata = schema.new({
    id = id.from(_N, "MemberMetadata"),
    type = "union",
    members = {
        user = schema.new({
            id = id.from(_N, "MemberMetadata", "user"),
            type = "structure",
            name = "user",
            target_id = id.from(_N, "UserMetadata"),
            target = M.UserMetadata,
        }),
    },
})

M.MembershipSummary = schema.new({
    id = id.from(_N, "MembershipSummary"),
    type = "structure",
    members = {
        membershipId = schema.new({
            id = id.from(_N, "MembershipSummary", "membershipId"),
            type = "string",
            name = "membershipId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        applicationId = schema.new({
            id = id.from(_N, "MembershipSummary", "applicationId"),
            type = "string",
            name = "applicationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "MembershipSummary", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        memberType = schema.new({
            id = id.from(_N, "MembershipSummary", "memberType"),
            type = "string",
            name = "memberType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        config = schema.new({
            id = id.from(_N, "MembershipSummary", "config"),
            type = "union",
            name = "config",
            target_id = id.from(_N, "MembershipConfig"),
            target = M.MembershipConfig,
        }),
        metadata = schema.new({
            id = id.from(_N, "MembershipSummary", "metadata"),
            type = "union",
            name = "metadata",
            target_id = id.from(_N, "MemberMetadata"),
            target = M.MemberMetadata,
        }),
        createdAt = schema.new({
            id = id.from(_N, "MembershipSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "MembershipSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        createdBy = schema.new({
            id = id.from(_N, "MembershipSummary", "createdBy"),
            type = "string",
            name = "createdBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        updatedBy = schema.new({
            id = id.from(_N, "MembershipSummary", "updatedBy"),
            type = "string",
            name = "updatedBy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListMembershipsOutput = schema.new({
    id = id.from(_N, "ListMembershipsResponse"),
    type = "structure",
    members = {
        membershipSummaries = schema.new({
            id = id.from(_N, "ListMembershipsOutput", "membershipSummaries"),
            type = "list",
            name = "membershipSummaries",
            target_id = prelude.Document.id,
            list_member = M.MembershipSummary,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListMembershipsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPentestJobsForPentestInput = schema.new({
    id = id.from(_N, "ListPentestJobsForPentestInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListPentestJobsForPentestInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        pentestId = schema.new({
            id = id.from(_N, "ListPentestJobsForPentestInput", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "ListPentestJobsForPentestInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPentestJobsForPentestInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.PentestJobSummary = schema.new({
    id = id.from(_N, "PentestJobSummary"),
    type = "structure",
    members = {
        pentestJobId = schema.new({
            id = id.from(_N, "PentestJobSummary", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "PentestJobSummary", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "PentestJobSummary", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "PentestJobSummary", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "PentestJobSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "PentestJobSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListPentestJobsForPentestOutput = schema.new({
    id = id.from(_N, "ListPentestJobsForPentestOutput"),
    type = "structure",
    members = {
        pentestJobSummaries = schema.new({
            id = id.from(_N, "ListPentestJobsForPentestOutput", "pentestJobSummaries"),
            type = "list",
            name = "pentestJobSummaries",
            target_id = prelude.Document.id,
            list_member = M.PentestJobSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPentestJobsForPentestOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPentestJobTasksInput = schema.new({
    id = id.from(_N, "ListPentestJobTasksInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "ListPentestJobTasksInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListPentestJobTasksInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "ListPentestJobTasksInput", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        stepName = schema.new({
            id = id.from(_N, "ListPentestJobTasksInput", "stepName"),
            type = "string",
            name = "stepName",
            target_id = prelude.String.id,
        }),
        categoryName = schema.new({
            id = id.from(_N, "ListPentestJobTasksInput", "categoryName"),
            type = "string",
            name = "categoryName",
            target_id = prelude.String.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPentestJobTasksInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TaskSummary = schema.new({
    id = id.from(_N, "TaskSummary"),
    type = "structure",
    members = {
        taskId = schema.new({
            id = id.from(_N, "TaskSummary", "taskId"),
            type = "string",
            name = "taskId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "TaskSummary", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "TaskSummary", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "TaskSummary", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "TaskSummary", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        riskType = schema.new({
            id = id.from(_N, "TaskSummary", "riskType"),
            type = "string",
            name = "riskType",
            target_id = prelude.String.id,
        }),
        executionStatus = schema.new({
            id = id.from(_N, "TaskSummary", "executionStatus"),
            type = "string",
            name = "executionStatus",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "TaskSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "TaskSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListPentestJobTasksOutput = schema.new({
    id = id.from(_N, "ListPentestJobTasksOutput"),
    type = "structure",
    members = {
        taskSummaries = schema.new({
            id = id.from(_N, "ListPentestJobTasksOutput", "taskSummaries"),
            type = "list",
            name = "taskSummaries",
            target_id = prelude.Document.id,
            list_member = M.TaskSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPentestJobTasksOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListPentestsInput = schema.new({
    id = id.from(_N, "ListPentestsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListPentestsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPentestsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "ListPentestsInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PentestSummary = schema.new({
    id = id.from(_N, "PentestSummary"),
    type = "structure",
    members = {
        pentestId = schema.new({
            id = id.from(_N, "PentestSummary", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "PentestSummary", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "PentestSummary", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        createdAt = schema.new({
            id = id.from(_N, "PentestSummary", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "PentestSummary", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ListPentestsOutput = schema.new({
    id = id.from(_N, "ListPentestsOutput"),
    type = "structure",
    members = {
        pentestSummaries = schema.new({
            id = id.from(_N, "ListPentestsOutput", "pentestSummaries"),
            type = "list",
            name = "pentestSummaries",
            target_id = prelude.Document.id,
            list_member = M.PentestSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListPentestsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
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
    id = id.from(_N, "ListTagsForResourceOutput"),
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

M.ListTargetDomainsInput = schema.new({
    id = id.from(_N, "ListTargetDomainsInput"),
    type = "structure",
    members = {
        nextToken = schema.new({
            id = id.from(_N, "ListTargetDomainsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListTargetDomainsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.TargetDomainSummary = schema.new({
    id = id.from(_N, "TargetDomainSummary"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "TargetDomainSummary", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "TargetDomainSummary", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationStatus = schema.new({
            id = id.from(_N, "TargetDomainSummary", "verificationStatus"),
            type = "string",
            name = "verificationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTargetDomainsOutput = schema.new({
    id = id.from(_N, "ListTargetDomainsOutput"),
    type = "structure",
    members = {
        targetDomainSummaries = schema.new({
            id = id.from(_N, "ListTargetDomainsOutput", "targetDomainSummaries"),
            type = "list",
            name = "targetDomainSummaries",
            target_id = prelude.Document.id,
            list_member = M.TargetDomainSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListTargetDomainsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.StartCodeRemediationInput = schema.new({
    id = id.from(_N, "StartCodeRemediationInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "StartCodeRemediationInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "StartCodeRemediationInput", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        findingIds = schema.new({
            id = id.from(_N, "StartCodeRemediationInput", "findingIds"),
            type = "list",
            name = "findingIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartCodeRemediationOutput = schema.new({
    id = id.from(_N, "StartCodeRemediationOutput"),
    type = "structure",
})

M.StartPentestJobInput = schema.new({
    id = id.from(_N, "StartPentestJobInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "StartPentestJobInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "StartPentestJobInput", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StartPentestJobOutput = schema.new({
    id = id.from(_N, "StartPentestJobOutput"),
    type = "structure",
    members = {
        title = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        pentestId = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "StartPentestJobOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.StopPentestJobInput = schema.new({
    id = id.from(_N, "StopPentestJobInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "StopPentestJobInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        pentestJobId = schema.new({
            id = id.from(_N, "StopPentestJobInput", "pentestJobId"),
            type = "string",
            name = "pentestJobId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.StopPentestJobOutput = schema.new({
    id = id.from(_N, "StopPentestJobOutput"),
    type = "structure",
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.UpdateTargetDomainInput = schema.new({
    id = id.from(_N, "UpdateTargetDomainInput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "UpdateTargetDomainInput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationMethod = schema.new({
            id = id.from(_N, "UpdateTargetDomainInput", "verificationMethod"),
            type = "string",
            name = "verificationMethod",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTargetDomainOutput = schema.new({
    id = id.from(_N, "UpdateTargetDomainOutput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "UpdateTargetDomainOutput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        domainName = schema.new({
            id = id.from(_N, "UpdateTargetDomainOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationStatus = schema.new({
            id = id.from(_N, "UpdateTargetDomainOutput", "verificationStatus"),
            type = "string",
            name = "verificationStatus",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        verificationDetails = schema.new({
            id = id.from(_N, "UpdateTargetDomainOutput", "verificationDetails"),
            type = "structure",
            name = "verificationDetails",
            target_id = id.from(_N, "VerificationDetails"),
            target = M.VerificationDetails,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdateTargetDomainOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        verifiedAt = schema.new({
            id = id.from(_N, "UpdateTargetDomainOutput", "verifiedAt"),
            type = "timestamp",
            name = "verifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateFindingInput = schema.new({
    id = id.from(_N, "UpdateFindingInput"),
    type = "structure",
    members = {
        findingId = schema.new({
            id = id.from(_N, "UpdateFindingInput", "findingId"),
            type = "string",
            name = "findingId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "UpdateFindingInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        riskLevel = schema.new({
            id = id.from(_N, "UpdateFindingInput", "riskLevel"),
            type = "string",
            name = "riskLevel",
            target_id = prelude.String.id,
        }),
        status = schema.new({
            id = id.from(_N, "UpdateFindingInput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateFindingOutput = schema.new({
    id = id.from(_N, "UpdateFindingOutput"),
    type = "structure",
})

M.UpdateIntegratedResourcesInput = schema.new({
    id = id.from(_N, "UpdateIntegratedResourcesInput"),
    type = "structure",
    members = {
        agentSpaceId = schema.new({
            id = id.from(_N, "UpdateIntegratedResourcesInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        integrationId = schema.new({
            id = id.from(_N, "UpdateIntegratedResourcesInput", "integrationId"),
            type = "string",
            name = "integrationId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        items = schema.new({
            id = id.from(_N, "UpdateIntegratedResourcesInput", "items"),
            type = "list",
            name = "items",
            target_id = prelude.Document.id,
            list_member = M.IntegratedResourceInputItem,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateIntegratedResourcesOutput = schema.new({
    id = id.from(_N, "UpdateIntegratedResourcesOutput"),
    type = "structure",
})

M.UpdatePentestInput = schema.new({
    id = id.from(_N, "UpdatePentestInput"),
    type = "structure",
    members = {
        pentestId = schema.new({
            id = id.from(_N, "UpdatePentestInput", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "UpdatePentestInput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        title = schema.new({
            id = id.from(_N, "UpdatePentestInput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        assets = schema.new({
            id = id.from(_N, "UpdatePentestInput", "assets"),
            type = "structure",
            name = "assets",
            target_id = id.from(_N, "Assets"),
            target = M.Assets,
        }),
        excludeRiskTypes = schema.new({
            id = id.from(_N, "UpdatePentestInput", "excludeRiskTypes"),
            type = "list",
            name = "excludeRiskTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "UpdatePentestInput", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "UpdatePentestInput", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
        vpcConfig = schema.new({
            id = id.from(_N, "UpdatePentestInput", "vpcConfig"),
            type = "structure",
            name = "vpcConfig",
            target_id = id.from(_N, "VpcConfig"),
            target = M.VpcConfig,
        }),
        networkTrafficConfig = schema.new({
            id = id.from(_N, "UpdatePentestInput", "networkTrafficConfig"),
            type = "structure",
            name = "networkTrafficConfig",
            target_id = id.from(_N, "NetworkTrafficConfig"),
            target = M.NetworkTrafficConfig,
        }),
        codeRemediationStrategy = schema.new({
            id = id.from(_N, "UpdatePentestInput", "codeRemediationStrategy"),
            type = "string",
            name = "codeRemediationStrategy",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdatePentestOutput = schema.new({
    id = id.from(_N, "UpdatePentestOutput"),
    type = "structure",
    members = {
        pentestId = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "pentestId"),
            type = "string",
            name = "pentestId",
            target_id = prelude.String.id,
        }),
        title = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "title"),
            type = "string",
            name = "title",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        assets = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "assets"),
            type = "structure",
            name = "assets",
            target_id = id.from(_N, "Assets"),
            target = M.Assets,
        }),
        excludeRiskTypes = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "excludeRiskTypes"),
            type = "list",
            name = "excludeRiskTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        serviceRole = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "serviceRole"),
            type = "string",
            name = "serviceRole",
            target_id = prelude.String.id,
        }),
        logConfig = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "logConfig"),
            type = "structure",
            name = "logConfig",
            target_id = id.from(_N, "CloudWatchLog"),
            target = M.CloudWatchLog,
        }),
        agentSpaceId = schema.new({
            id = id.from(_N, "UpdatePentestOutput", "agentSpaceId"),
            type = "string",
            name = "agentSpaceId",
            target_id = prelude.String.id,
        }),
    },
})

M.VerifyTargetDomainInput = schema.new({
    id = id.from(_N, "VerifyTargetDomainInput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "VerifyTargetDomainInput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VerifyTargetDomainOutput = schema.new({
    id = id.from(_N, "VerifyTargetDomainOutput"),
    type = "structure",
    members = {
        targetDomainId = schema.new({
            id = id.from(_N, "VerifyTargetDomainOutput", "targetDomainId"),
            type = "string",
            name = "targetDomainId",
            target_id = prelude.String.id,
        }),
        domainName = schema.new({
            id = id.from(_N, "VerifyTargetDomainOutput", "domainName"),
            type = "string",
            name = "domainName",
            target_id = prelude.String.id,
        }),
        createdAt = schema.new({
            id = id.from(_N, "VerifyTargetDomainOutput", "createdAt"),
            type = "timestamp",
            name = "createdAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        updatedAt = schema.new({
            id = id.from(_N, "VerifyTargetDomainOutput", "updatedAt"),
            type = "timestamp",
            name = "updatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        verifiedAt = schema.new({
            id = id.from(_N, "VerifyTargetDomainOutput", "verifiedAt"),
            type = "timestamp",
            name = "verifiedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        status = schema.new({
            id = id.from(_N, "VerifyTargetDomainOutput", "status"),
            type = "string",
            name = "status",
            target_id = prelude.String.id,
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
