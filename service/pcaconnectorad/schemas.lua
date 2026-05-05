local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.pcaconnectorad"

local M = {}

M.AccessRights = schema.new({
    id = id.from(_N, "AccessRights"),
    type = "structure",
    members = {
        Enroll = schema.new({
            id = id.from(_N, "AccessRights", "Enroll"),
            type = "string",
            name = "Enroll",
            target_id = prelude.String.id,
        }),
        AutoEnroll = schema.new({
            id = id.from(_N, "AccessRights", "AutoEnroll"),
            type = "string",
            name = "AutoEnroll",
            target_id = prelude.String.id,
        }),
    },
})

M.AccessControlEntry = schema.new({
    id = id.from(_N, "AccessControlEntry"),
    type = "structure",
    members = {
        GroupDisplayName = schema.new({
            id = id.from(_N, "AccessControlEntry", "GroupDisplayName"),
            type = "string",
            name = "GroupDisplayName",
            target_id = prelude.String.id,
        }),
        GroupSecurityIdentifier = schema.new({
            id = id.from(_N, "AccessControlEntry", "GroupSecurityIdentifier"),
            type = "string",
            name = "GroupSecurityIdentifier",
            target_id = prelude.String.id,
        }),
        AccessRights = schema.new({
            id = id.from(_N, "AccessControlEntry", "AccessRights"),
            type = "structure",
            name = "AccessRights",
            target_id = id.from(_N, "AccessRights"),
            target = M.AccessRights,
        }),
        TemplateArn = schema.new({
            id = id.from(_N, "AccessControlEntry", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "AccessControlEntry", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "AccessControlEntry", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.AccessControlEntrySummary = schema.new({
    id = id.from(_N, "AccessControlEntrySummary"),
    type = "structure",
    members = {
        GroupDisplayName = schema.new({
            id = id.from(_N, "AccessControlEntrySummary", "GroupDisplayName"),
            type = "string",
            name = "GroupDisplayName",
            target_id = prelude.String.id,
        }),
        GroupSecurityIdentifier = schema.new({
            id = id.from(_N, "AccessControlEntrySummary", "GroupSecurityIdentifier"),
            type = "string",
            name = "GroupSecurityIdentifier",
            target_id = prelude.String.id,
        }),
        AccessRights = schema.new({
            id = id.from(_N, "AccessControlEntrySummary", "AccessRights"),
            type = "structure",
            name = "AccessRights",
            target_id = id.from(_N, "AccessRights"),
            target = M.AccessRights,
        }),
        TemplateArn = schema.new({
            id = id.from(_N, "AccessControlEntrySummary", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "AccessControlEntrySummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "AccessControlEntrySummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
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
        Message = schema.new({
            id = id.from(_N, "AccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ApplicationPolicy = schema.new({
    id = id.from(_N, "ApplicationPolicy"),
    type = "union",
    members = {
        PolicyType = schema.new({
            id = id.from(_N, "ApplicationPolicy", "PolicyType"),
            type = "string",
            name = "PolicyType",
            target_id = prelude.String.id,
        }),
        PolicyObjectIdentifier = schema.new({
            id = id.from(_N, "ApplicationPolicy", "PolicyObjectIdentifier"),
            type = "string",
            name = "PolicyObjectIdentifier",
            target_id = prelude.String.id,
        }),
    },
})

M.ApplicationPolicies = schema.new({
    id = id.from(_N, "ApplicationPolicies"),
    type = "structure",
    members = {
        Critical = schema.new({
            id = id.from(_N, "ApplicationPolicies", "Critical"),
            type = "boolean",
            name = "Critical",
            target_id = prelude.Boolean.id,
        }),
        Policies = schema.new({
            id = id.from(_N, "ApplicationPolicies", "Policies"),
            type = "list",
            name = "Policies",
            target_id = prelude.Document.id,
            list_member = M.ApplicationPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ValidityPeriod = schema.new({
    id = id.from(_N, "ValidityPeriod"),
    type = "structure",
    members = {
        PeriodType = schema.new({
            id = id.from(_N, "ValidityPeriod", "PeriodType"),
            type = "string",
            name = "PeriodType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "ValidityPeriod", "Period"),
            type = "long",
            name = "Period",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CertificateValidity = schema.new({
    id = id.from(_N, "CertificateValidity"),
    type = "structure",
    members = {
        ValidityPeriod = schema.new({
            id = id.from(_N, "CertificateValidity", "ValidityPeriod"),
            type = "structure",
            name = "ValidityPeriod",
            target_id = id.from(_N, "ValidityPeriod"),
            target = M.ValidityPeriod,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RenewalPeriod = schema.new({
            id = id.from(_N, "CertificateValidity", "RenewalPeriod"),
            type = "structure",
            name = "RenewalPeriod",
            target_id = id.from(_N, "ValidityPeriod"),
            target = M.ValidityPeriod,
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
        Message = schema.new({
            id = id.from(_N, "ConflictException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ConflictException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ConflictException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.VpcInformation = schema.new({
    id = id.from(_N, "VpcInformation"),
    type = "structure",
    members = {
        IpAddressType = schema.new({
            id = id.from(_N, "VpcInformation", "IpAddressType"),
            type = "string",
            name = "IpAddressType",
            target_id = prelude.String.id,
        }),
        SecurityGroupIds = schema.new({
            id = id.from(_N, "VpcInformation", "SecurityGroupIds"),
            type = "list",
            name = "SecurityGroupIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Connector = schema.new({
    id = id.from(_N, "Connector"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Connector", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CertificateAuthorityArn = schema.new({
            id = id.from(_N, "Connector", "CertificateAuthorityArn"),
            type = "string",
            name = "CertificateAuthorityArn",
            target_id = prelude.String.id,
        }),
        CertificateEnrollmentPolicyServerEndpoint = schema.new({
            id = id.from(_N, "Connector", "CertificateEnrollmentPolicyServerEndpoint"),
            type = "string",
            name = "CertificateEnrollmentPolicyServerEndpoint",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "Connector", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        VpcInformation = schema.new({
            id = id.from(_N, "Connector", "VpcInformation"),
            type = "structure",
            name = "VpcInformation",
            target_id = id.from(_N, "VpcInformation"),
            target = M.VpcInformation,
        }),
        Status = schema.new({
            id = id.from(_N, "Connector", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "Connector", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Connector", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "Connector", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ConnectorSummary = schema.new({
    id = id.from(_N, "ConnectorSummary"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "ConnectorSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        CertificateAuthorityArn = schema.new({
            id = id.from(_N, "ConnectorSummary", "CertificateAuthorityArn"),
            type = "string",
            name = "CertificateAuthorityArn",
            target_id = prelude.String.id,
        }),
        CertificateEnrollmentPolicyServerEndpoint = schema.new({
            id = id.from(_N, "ConnectorSummary", "CertificateEnrollmentPolicyServerEndpoint"),
            type = "string",
            name = "CertificateEnrollmentPolicyServerEndpoint",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "ConnectorSummary", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        VpcInformation = schema.new({
            id = id.from(_N, "ConnectorSummary", "VpcInformation"),
            type = "structure",
            name = "VpcInformation",
            target_id = id.from(_N, "VpcInformation"),
            target = M.VpcInformation,
        }),
        Status = schema.new({
            id = id.from(_N, "ConnectorSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "ConnectorSummary", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ConnectorSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "ConnectorSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateConnectorInput = schema.new({
    id = id.from(_N, "CreateConnectorRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateConnectorInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CertificateAuthorityArn = schema.new({
            id = id.from(_N, "CreateConnectorInput", "CertificateAuthorityArn"),
            type = "string",
            name = "CertificateAuthorityArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VpcInformation = schema.new({
            id = id.from(_N, "CreateConnectorInput", "VpcInformation"),
            type = "structure",
            name = "VpcInformation",
            target_id = id.from(_N, "VpcInformation"),
            target = M.VpcInformation,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateConnectorInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateConnectorInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateConnectorOutput = schema.new({
    id = id.from(_N, "CreateConnectorResponse"),
    type = "structure",
    members = {
        ConnectorArn = schema.new({
            id = id.from(_N, "CreateConnectorOutput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "InternalServerException", "Message"),
            type = "string",
            name = "Message",
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
        Message = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
            type = "string",
            name = "ResourceType",
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
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceType = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaExceededException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
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
        Message = schema.new({
            id = id.from(_N, "ThrottlingException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "ThrottlingException", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ThrottlingException", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
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
        Message = schema.new({
            id = id.from(_N, "ValidationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "ValidationException", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteConnectorInput = schema.new({
    id = id.from(_N, "DeleteConnectorRequest"),
    type = "structure",
    members = {
        ConnectorArn = schema.new({
            id = id.from(_N, "DeleteConnectorInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteConnectorOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.GetConnectorInput = schema.new({
    id = id.from(_N, "GetConnectorRequest"),
    type = "structure",
    members = {
        ConnectorArn = schema.new({
            id = id.from(_N, "GetConnectorInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetConnectorOutput = schema.new({
    id = id.from(_N, "GetConnectorResponse"),
    type = "structure",
    members = {
        Connector = schema.new({
            id = id.from(_N, "GetConnectorOutput", "Connector"),
            type = "structure",
            name = "Connector",
            target_id = id.from(_N, "Connector"),
            target = M.Connector,
        }),
    },
})

M.ListConnectorsInput = schema.new({
    id = id.from(_N, "ListConnectorsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListConnectorsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListConnectorsOutput = schema.new({
    id = id.from(_N, "ListConnectorsResponse"),
    type = "structure",
    members = {
        Connectors = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "Connectors"),
            type = "list",
            name = "Connectors",
            target_id = prelude.Document.id,
            list_member = M.ConnectorSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListConnectorsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateDirectoryRegistrationInput = schema.new({
    id = id.from(_N, "CreateDirectoryRegistrationRequest"),
    type = "structure",
    members = {
        DirectoryId = schema.new({
            id = id.from(_N, "CreateDirectoryRegistrationInput", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateDirectoryRegistrationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateDirectoryRegistrationInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateDirectoryRegistrationOutput = schema.new({
    id = id.from(_N, "CreateDirectoryRegistrationResponse"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "CreateDirectoryRegistrationOutput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateServicePrincipalNameInput = schema.new({
    id = id.from(_N, "CreateServicePrincipalNameRequest"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "CreateServicePrincipalNameInput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "CreateServicePrincipalNameInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateServicePrincipalNameInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateServicePrincipalNameOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.EnrollmentFlagsV2 = schema.new({
    id = id.from(_N, "EnrollmentFlagsV2"),
    type = "structure",
    members = {
        IncludeSymmetricAlgorithms = schema.new({
            id = id.from(_N, "EnrollmentFlagsV2", "IncludeSymmetricAlgorithms"),
            type = "boolean",
            name = "IncludeSymmetricAlgorithms",
            target_id = prelude.Boolean.id,
        }),
        UserInteractionRequired = schema.new({
            id = id.from(_N, "EnrollmentFlagsV2", "UserInteractionRequired"),
            type = "boolean",
            name = "UserInteractionRequired",
            target_id = prelude.Boolean.id,
        }),
        RemoveInvalidCertificateFromPersonalStore = schema.new({
            id = id.from(_N, "EnrollmentFlagsV2", "RemoveInvalidCertificateFromPersonalStore"),
            type = "boolean",
            name = "RemoveInvalidCertificateFromPersonalStore",
            target_id = prelude.Boolean.id,
        }),
        NoSecurityExtension = schema.new({
            id = id.from(_N, "EnrollmentFlagsV2", "NoSecurityExtension"),
            type = "boolean",
            name = "NoSecurityExtension",
            target_id = prelude.Boolean.id,
        }),
        EnableKeyReuseOnNtTokenKeysetStorageFull = schema.new({
            id = id.from(_N, "EnrollmentFlagsV2", "EnableKeyReuseOnNtTokenKeysetStorageFull"),
            type = "boolean",
            name = "EnableKeyReuseOnNtTokenKeysetStorageFull",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KeyUsageFlags = schema.new({
    id = id.from(_N, "KeyUsageFlags"),
    type = "structure",
    members = {
        DigitalSignature = schema.new({
            id = id.from(_N, "KeyUsageFlags", "DigitalSignature"),
            type = "boolean",
            name = "DigitalSignature",
            target_id = prelude.Boolean.id,
        }),
        NonRepudiation = schema.new({
            id = id.from(_N, "KeyUsageFlags", "NonRepudiation"),
            type = "boolean",
            name = "NonRepudiation",
            target_id = prelude.Boolean.id,
        }),
        KeyEncipherment = schema.new({
            id = id.from(_N, "KeyUsageFlags", "KeyEncipherment"),
            type = "boolean",
            name = "KeyEncipherment",
            target_id = prelude.Boolean.id,
        }),
        DataEncipherment = schema.new({
            id = id.from(_N, "KeyUsageFlags", "DataEncipherment"),
            type = "boolean",
            name = "DataEncipherment",
            target_id = prelude.Boolean.id,
        }),
        KeyAgreement = schema.new({
            id = id.from(_N, "KeyUsageFlags", "KeyAgreement"),
            type = "boolean",
            name = "KeyAgreement",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KeyUsage = schema.new({
    id = id.from(_N, "KeyUsage"),
    type = "structure",
    members = {
        Critical = schema.new({
            id = id.from(_N, "KeyUsage", "Critical"),
            type = "boolean",
            name = "Critical",
            target_id = prelude.Boolean.id,
        }),
        UsageFlags = schema.new({
            id = id.from(_N, "KeyUsage", "UsageFlags"),
            type = "structure",
            name = "UsageFlags",
            target_id = id.from(_N, "KeyUsageFlags"),
            target = M.KeyUsageFlags,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExtensionsV2 = schema.new({
    id = id.from(_N, "ExtensionsV2"),
    type = "structure",
    members = {
        KeyUsage = schema.new({
            id = id.from(_N, "ExtensionsV2", "KeyUsage"),
            type = "structure",
            name = "KeyUsage",
            target_id = id.from(_N, "KeyUsage"),
            target = M.KeyUsage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationPolicies = schema.new({
            id = id.from(_N, "ExtensionsV2", "ApplicationPolicies"),
            type = "structure",
            name = "ApplicationPolicies",
            target_id = id.from(_N, "ApplicationPolicies"),
            target = M.ApplicationPolicies,
        }),
    },
})

M.GeneralFlagsV2 = schema.new({
    id = id.from(_N, "GeneralFlagsV2"),
    type = "structure",
    members = {
        AutoEnrollment = schema.new({
            id = id.from(_N, "GeneralFlagsV2", "AutoEnrollment"),
            type = "boolean",
            name = "AutoEnrollment",
            target_id = prelude.Boolean.id,
        }),
        MachineType = schema.new({
            id = id.from(_N, "GeneralFlagsV2", "MachineType"),
            type = "boolean",
            name = "MachineType",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PrivateKeyAttributesV2 = schema.new({
    id = id.from(_N, "PrivateKeyAttributesV2"),
    type = "structure",
    members = {
        MinimalKeyLength = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV2", "MinimalKeyLength"),
            type = "integer",
            name = "MinimalKeyLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySpec = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV2", "KeySpec"),
            type = "string",
            name = "KeySpec",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CryptoProviders = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV2", "CryptoProviders"),
            type = "list",
            name = "CryptoProviders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.PrivateKeyFlagsV2 = schema.new({
    id = id.from(_N, "PrivateKeyFlagsV2"),
    type = "structure",
    members = {
        ExportableKey = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV2", "ExportableKey"),
            type = "boolean",
            name = "ExportableKey",
            target_id = prelude.Boolean.id,
        }),
        StrongKeyProtectionRequired = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV2", "StrongKeyProtectionRequired"),
            type = "boolean",
            name = "StrongKeyProtectionRequired",
            target_id = prelude.Boolean.id,
        }),
        ClientVersion = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV2", "ClientVersion"),
            type = "string",
            name = "ClientVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SubjectNameFlagsV2 = schema.new({
    id = id.from(_N, "SubjectNameFlagsV2"),
    type = "structure",
    members = {
        SanRequireDomainDns = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "SanRequireDomainDns"),
            type = "boolean",
            name = "SanRequireDomainDns",
            target_id = prelude.Boolean.id,
        }),
        SanRequireSpn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "SanRequireSpn"),
            type = "boolean",
            name = "SanRequireSpn",
            target_id = prelude.Boolean.id,
        }),
        SanRequireDirectoryGuid = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "SanRequireDirectoryGuid"),
            type = "boolean",
            name = "SanRequireDirectoryGuid",
            target_id = prelude.Boolean.id,
        }),
        SanRequireUpn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "SanRequireUpn"),
            type = "boolean",
            name = "SanRequireUpn",
            target_id = prelude.Boolean.id,
        }),
        SanRequireEmail = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "SanRequireEmail"),
            type = "boolean",
            name = "SanRequireEmail",
            target_id = prelude.Boolean.id,
        }),
        SanRequireDns = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "SanRequireDns"),
            type = "boolean",
            name = "SanRequireDns",
            target_id = prelude.Boolean.id,
        }),
        RequireDnsAsCn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "RequireDnsAsCn"),
            type = "boolean",
            name = "RequireDnsAsCn",
            target_id = prelude.Boolean.id,
        }),
        RequireEmail = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "RequireEmail"),
            type = "boolean",
            name = "RequireEmail",
            target_id = prelude.Boolean.id,
        }),
        RequireCommonName = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "RequireCommonName"),
            type = "boolean",
            name = "RequireCommonName",
            target_id = prelude.Boolean.id,
        }),
        RequireDirectoryPath = schema.new({
            id = id.from(_N, "SubjectNameFlagsV2", "RequireDirectoryPath"),
            type = "boolean",
            name = "RequireDirectoryPath",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.TemplateV2 = schema.new({
    id = id.from(_N, "TemplateV2"),
    type = "structure",
    members = {
        CertificateValidity = schema.new({
            id = id.from(_N, "TemplateV2", "CertificateValidity"),
            type = "structure",
            name = "CertificateValidity",
            target_id = id.from(_N, "CertificateValidity"),
            target = M.CertificateValidity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupersededTemplates = schema.new({
            id = id.from(_N, "TemplateV2", "SupersededTemplates"),
            type = "list",
            name = "SupersededTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PrivateKeyAttributes = schema.new({
            id = id.from(_N, "TemplateV2", "PrivateKeyAttributes"),
            type = "structure",
            name = "PrivateKeyAttributes",
            target_id = id.from(_N, "PrivateKeyAttributesV2"),
            target = M.PrivateKeyAttributesV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrivateKeyFlags = schema.new({
            id = id.from(_N, "TemplateV2", "PrivateKeyFlags"),
            type = "structure",
            name = "PrivateKeyFlags",
            target_id = id.from(_N, "PrivateKeyFlagsV2"),
            target = M.PrivateKeyFlagsV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnrollmentFlags = schema.new({
            id = id.from(_N, "TemplateV2", "EnrollmentFlags"),
            type = "structure",
            name = "EnrollmentFlags",
            target_id = id.from(_N, "EnrollmentFlagsV2"),
            target = M.EnrollmentFlagsV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubjectNameFlags = schema.new({
            id = id.from(_N, "TemplateV2", "SubjectNameFlags"),
            type = "structure",
            name = "SubjectNameFlags",
            target_id = id.from(_N, "SubjectNameFlagsV2"),
            target = M.SubjectNameFlagsV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GeneralFlags = schema.new({
            id = id.from(_N, "TemplateV2", "GeneralFlags"),
            type = "structure",
            name = "GeneralFlags",
            target_id = id.from(_N, "GeneralFlagsV2"),
            target = M.GeneralFlagsV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Extensions = schema.new({
            id = id.from(_N, "TemplateV2", "Extensions"),
            type = "structure",
            name = "Extensions",
            target_id = id.from(_N, "ExtensionsV2"),
            target = M.ExtensionsV2,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnrollmentFlagsV3 = schema.new({
    id = id.from(_N, "EnrollmentFlagsV3"),
    type = "structure",
    members = {
        IncludeSymmetricAlgorithms = schema.new({
            id = id.from(_N, "EnrollmentFlagsV3", "IncludeSymmetricAlgorithms"),
            type = "boolean",
            name = "IncludeSymmetricAlgorithms",
            target_id = prelude.Boolean.id,
        }),
        UserInteractionRequired = schema.new({
            id = id.from(_N, "EnrollmentFlagsV3", "UserInteractionRequired"),
            type = "boolean",
            name = "UserInteractionRequired",
            target_id = prelude.Boolean.id,
        }),
        RemoveInvalidCertificateFromPersonalStore = schema.new({
            id = id.from(_N, "EnrollmentFlagsV3", "RemoveInvalidCertificateFromPersonalStore"),
            type = "boolean",
            name = "RemoveInvalidCertificateFromPersonalStore",
            target_id = prelude.Boolean.id,
        }),
        NoSecurityExtension = schema.new({
            id = id.from(_N, "EnrollmentFlagsV3", "NoSecurityExtension"),
            type = "boolean",
            name = "NoSecurityExtension",
            target_id = prelude.Boolean.id,
        }),
        EnableKeyReuseOnNtTokenKeysetStorageFull = schema.new({
            id = id.from(_N, "EnrollmentFlagsV3", "EnableKeyReuseOnNtTokenKeysetStorageFull"),
            type = "boolean",
            name = "EnableKeyReuseOnNtTokenKeysetStorageFull",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ExtensionsV3 = schema.new({
    id = id.from(_N, "ExtensionsV3"),
    type = "structure",
    members = {
        KeyUsage = schema.new({
            id = id.from(_N, "ExtensionsV3", "KeyUsage"),
            type = "structure",
            name = "KeyUsage",
            target_id = id.from(_N, "KeyUsage"),
            target = M.KeyUsage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationPolicies = schema.new({
            id = id.from(_N, "ExtensionsV3", "ApplicationPolicies"),
            type = "structure",
            name = "ApplicationPolicies",
            target_id = id.from(_N, "ApplicationPolicies"),
            target = M.ApplicationPolicies,
        }),
    },
})

M.GeneralFlagsV3 = schema.new({
    id = id.from(_N, "GeneralFlagsV3"),
    type = "structure",
    members = {
        AutoEnrollment = schema.new({
            id = id.from(_N, "GeneralFlagsV3", "AutoEnrollment"),
            type = "boolean",
            name = "AutoEnrollment",
            target_id = prelude.Boolean.id,
        }),
        MachineType = schema.new({
            id = id.from(_N, "GeneralFlagsV3", "MachineType"),
            type = "boolean",
            name = "MachineType",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KeyUsagePropertyFlags = schema.new({
    id = id.from(_N, "KeyUsagePropertyFlags"),
    type = "structure",
    members = {
        Decrypt = schema.new({
            id = id.from(_N, "KeyUsagePropertyFlags", "Decrypt"),
            type = "boolean",
            name = "Decrypt",
            target_id = prelude.Boolean.id,
        }),
        KeyAgreement = schema.new({
            id = id.from(_N, "KeyUsagePropertyFlags", "KeyAgreement"),
            type = "boolean",
            name = "KeyAgreement",
            target_id = prelude.Boolean.id,
        }),
        Sign = schema.new({
            id = id.from(_N, "KeyUsagePropertyFlags", "Sign"),
            type = "boolean",
            name = "Sign",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.KeyUsageProperty = schema.new({
    id = id.from(_N, "KeyUsageProperty"),
    type = "union",
    members = {
        PropertyType = schema.new({
            id = id.from(_N, "KeyUsageProperty", "PropertyType"),
            type = "string",
            name = "PropertyType",
            target_id = prelude.String.id,
        }),
        PropertyFlags = schema.new({
            id = id.from(_N, "KeyUsageProperty", "PropertyFlags"),
            type = "structure",
            name = "PropertyFlags",
            target_id = id.from(_N, "KeyUsagePropertyFlags"),
            target = M.KeyUsagePropertyFlags,
        }),
    },
})

M.PrivateKeyAttributesV3 = schema.new({
    id = id.from(_N, "PrivateKeyAttributesV3"),
    type = "structure",
    members = {
        MinimalKeyLength = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV3", "MinimalKeyLength"),
            type = "integer",
            name = "MinimalKeyLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySpec = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV3", "KeySpec"),
            type = "string",
            name = "KeySpec",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CryptoProviders = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV3", "CryptoProviders"),
            type = "list",
            name = "CryptoProviders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        KeyUsageProperty = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV3", "KeyUsageProperty"),
            type = "union",
            name = "KeyUsageProperty",
            target_id = id.from(_N, "KeyUsageProperty"),
            target = M.KeyUsageProperty,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Algorithm = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV3", "Algorithm"),
            type = "string",
            name = "Algorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PrivateKeyFlagsV3 = schema.new({
    id = id.from(_N, "PrivateKeyFlagsV3"),
    type = "structure",
    members = {
        ExportableKey = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV3", "ExportableKey"),
            type = "boolean",
            name = "ExportableKey",
            target_id = prelude.Boolean.id,
        }),
        StrongKeyProtectionRequired = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV3", "StrongKeyProtectionRequired"),
            type = "boolean",
            name = "StrongKeyProtectionRequired",
            target_id = prelude.Boolean.id,
        }),
        RequireAlternateSignatureAlgorithm = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV3", "RequireAlternateSignatureAlgorithm"),
            type = "boolean",
            name = "RequireAlternateSignatureAlgorithm",
            target_id = prelude.Boolean.id,
        }),
        ClientVersion = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV3", "ClientVersion"),
            type = "string",
            name = "ClientVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SubjectNameFlagsV3 = schema.new({
    id = id.from(_N, "SubjectNameFlagsV3"),
    type = "structure",
    members = {
        SanRequireDomainDns = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "SanRequireDomainDns"),
            type = "boolean",
            name = "SanRequireDomainDns",
            target_id = prelude.Boolean.id,
        }),
        SanRequireSpn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "SanRequireSpn"),
            type = "boolean",
            name = "SanRequireSpn",
            target_id = prelude.Boolean.id,
        }),
        SanRequireDirectoryGuid = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "SanRequireDirectoryGuid"),
            type = "boolean",
            name = "SanRequireDirectoryGuid",
            target_id = prelude.Boolean.id,
        }),
        SanRequireUpn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "SanRequireUpn"),
            type = "boolean",
            name = "SanRequireUpn",
            target_id = prelude.Boolean.id,
        }),
        SanRequireEmail = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "SanRequireEmail"),
            type = "boolean",
            name = "SanRequireEmail",
            target_id = prelude.Boolean.id,
        }),
        SanRequireDns = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "SanRequireDns"),
            type = "boolean",
            name = "SanRequireDns",
            target_id = prelude.Boolean.id,
        }),
        RequireDnsAsCn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "RequireDnsAsCn"),
            type = "boolean",
            name = "RequireDnsAsCn",
            target_id = prelude.Boolean.id,
        }),
        RequireEmail = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "RequireEmail"),
            type = "boolean",
            name = "RequireEmail",
            target_id = prelude.Boolean.id,
        }),
        RequireCommonName = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "RequireCommonName"),
            type = "boolean",
            name = "RequireCommonName",
            target_id = prelude.Boolean.id,
        }),
        RequireDirectoryPath = schema.new({
            id = id.from(_N, "SubjectNameFlagsV3", "RequireDirectoryPath"),
            type = "boolean",
            name = "RequireDirectoryPath",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.TemplateV3 = schema.new({
    id = id.from(_N, "TemplateV3"),
    type = "structure",
    members = {
        CertificateValidity = schema.new({
            id = id.from(_N, "TemplateV3", "CertificateValidity"),
            type = "structure",
            name = "CertificateValidity",
            target_id = id.from(_N, "CertificateValidity"),
            target = M.CertificateValidity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupersededTemplates = schema.new({
            id = id.from(_N, "TemplateV3", "SupersededTemplates"),
            type = "list",
            name = "SupersededTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PrivateKeyAttributes = schema.new({
            id = id.from(_N, "TemplateV3", "PrivateKeyAttributes"),
            type = "structure",
            name = "PrivateKeyAttributes",
            target_id = id.from(_N, "PrivateKeyAttributesV3"),
            target = M.PrivateKeyAttributesV3,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrivateKeyFlags = schema.new({
            id = id.from(_N, "TemplateV3", "PrivateKeyFlags"),
            type = "structure",
            name = "PrivateKeyFlags",
            target_id = id.from(_N, "PrivateKeyFlagsV3"),
            target = M.PrivateKeyFlagsV3,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnrollmentFlags = schema.new({
            id = id.from(_N, "TemplateV3", "EnrollmentFlags"),
            type = "structure",
            name = "EnrollmentFlags",
            target_id = id.from(_N, "EnrollmentFlagsV3"),
            target = M.EnrollmentFlagsV3,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubjectNameFlags = schema.new({
            id = id.from(_N, "TemplateV3", "SubjectNameFlags"),
            type = "structure",
            name = "SubjectNameFlags",
            target_id = id.from(_N, "SubjectNameFlagsV3"),
            target = M.SubjectNameFlagsV3,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GeneralFlags = schema.new({
            id = id.from(_N, "TemplateV3", "GeneralFlags"),
            type = "structure",
            name = "GeneralFlags",
            target_id = id.from(_N, "GeneralFlagsV3"),
            target = M.GeneralFlagsV3,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HashAlgorithm = schema.new({
            id = id.from(_N, "TemplateV3", "HashAlgorithm"),
            type = "string",
            name = "HashAlgorithm",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Extensions = schema.new({
            id = id.from(_N, "TemplateV3", "Extensions"),
            type = "structure",
            name = "Extensions",
            target_id = id.from(_N, "ExtensionsV3"),
            target = M.ExtensionsV3,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.EnrollmentFlagsV4 = schema.new({
    id = id.from(_N, "EnrollmentFlagsV4"),
    type = "structure",
    members = {
        IncludeSymmetricAlgorithms = schema.new({
            id = id.from(_N, "EnrollmentFlagsV4", "IncludeSymmetricAlgorithms"),
            type = "boolean",
            name = "IncludeSymmetricAlgorithms",
            target_id = prelude.Boolean.id,
        }),
        UserInteractionRequired = schema.new({
            id = id.from(_N, "EnrollmentFlagsV4", "UserInteractionRequired"),
            type = "boolean",
            name = "UserInteractionRequired",
            target_id = prelude.Boolean.id,
        }),
        RemoveInvalidCertificateFromPersonalStore = schema.new({
            id = id.from(_N, "EnrollmentFlagsV4", "RemoveInvalidCertificateFromPersonalStore"),
            type = "boolean",
            name = "RemoveInvalidCertificateFromPersonalStore",
            target_id = prelude.Boolean.id,
        }),
        NoSecurityExtension = schema.new({
            id = id.from(_N, "EnrollmentFlagsV4", "NoSecurityExtension"),
            type = "boolean",
            name = "NoSecurityExtension",
            target_id = prelude.Boolean.id,
        }),
        EnableKeyReuseOnNtTokenKeysetStorageFull = schema.new({
            id = id.from(_N, "EnrollmentFlagsV4", "EnableKeyReuseOnNtTokenKeysetStorageFull"),
            type = "boolean",
            name = "EnableKeyReuseOnNtTokenKeysetStorageFull",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.ExtensionsV4 = schema.new({
    id = id.from(_N, "ExtensionsV4"),
    type = "structure",
    members = {
        KeyUsage = schema.new({
            id = id.from(_N, "ExtensionsV4", "KeyUsage"),
            type = "structure",
            name = "KeyUsage",
            target_id = id.from(_N, "KeyUsage"),
            target = M.KeyUsage,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ApplicationPolicies = schema.new({
            id = id.from(_N, "ExtensionsV4", "ApplicationPolicies"),
            type = "structure",
            name = "ApplicationPolicies",
            target_id = id.from(_N, "ApplicationPolicies"),
            target = M.ApplicationPolicies,
        }),
    },
})

M.GeneralFlagsV4 = schema.new({
    id = id.from(_N, "GeneralFlagsV4"),
    type = "structure",
    members = {
        AutoEnrollment = schema.new({
            id = id.from(_N, "GeneralFlagsV4", "AutoEnrollment"),
            type = "boolean",
            name = "AutoEnrollment",
            target_id = prelude.Boolean.id,
        }),
        MachineType = schema.new({
            id = id.from(_N, "GeneralFlagsV4", "MachineType"),
            type = "boolean",
            name = "MachineType",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.PrivateKeyAttributesV4 = schema.new({
    id = id.from(_N, "PrivateKeyAttributesV4"),
    type = "structure",
    members = {
        MinimalKeyLength = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV4", "MinimalKeyLength"),
            type = "integer",
            name = "MinimalKeyLength",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySpec = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV4", "KeySpec"),
            type = "string",
            name = "KeySpec",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CryptoProviders = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV4", "CryptoProviders"),
            type = "list",
            name = "CryptoProviders",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        KeyUsageProperty = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV4", "KeyUsageProperty"),
            type = "union",
            name = "KeyUsageProperty",
            target_id = id.from(_N, "KeyUsageProperty"),
            target = M.KeyUsageProperty,
        }),
        Algorithm = schema.new({
            id = id.from(_N, "PrivateKeyAttributesV4", "Algorithm"),
            type = "string",
            name = "Algorithm",
            target_id = prelude.String.id,
        }),
    },
})

M.PrivateKeyFlagsV4 = schema.new({
    id = id.from(_N, "PrivateKeyFlagsV4"),
    type = "structure",
    members = {
        ExportableKey = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV4", "ExportableKey"),
            type = "boolean",
            name = "ExportableKey",
            target_id = prelude.Boolean.id,
        }),
        StrongKeyProtectionRequired = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV4", "StrongKeyProtectionRequired"),
            type = "boolean",
            name = "StrongKeyProtectionRequired",
            target_id = prelude.Boolean.id,
        }),
        RequireAlternateSignatureAlgorithm = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV4", "RequireAlternateSignatureAlgorithm"),
            type = "boolean",
            name = "RequireAlternateSignatureAlgorithm",
            target_id = prelude.Boolean.id,
        }),
        RequireSameKeyRenewal = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV4", "RequireSameKeyRenewal"),
            type = "boolean",
            name = "RequireSameKeyRenewal",
            target_id = prelude.Boolean.id,
        }),
        UseLegacyProvider = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV4", "UseLegacyProvider"),
            type = "boolean",
            name = "UseLegacyProvider",
            target_id = prelude.Boolean.id,
        }),
        ClientVersion = schema.new({
            id = id.from(_N, "PrivateKeyFlagsV4", "ClientVersion"),
            type = "string",
            name = "ClientVersion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SubjectNameFlagsV4 = schema.new({
    id = id.from(_N, "SubjectNameFlagsV4"),
    type = "structure",
    members = {
        SanRequireDomainDns = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "SanRequireDomainDns"),
            type = "boolean",
            name = "SanRequireDomainDns",
            target_id = prelude.Boolean.id,
        }),
        SanRequireSpn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "SanRequireSpn"),
            type = "boolean",
            name = "SanRequireSpn",
            target_id = prelude.Boolean.id,
        }),
        SanRequireDirectoryGuid = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "SanRequireDirectoryGuid"),
            type = "boolean",
            name = "SanRequireDirectoryGuid",
            target_id = prelude.Boolean.id,
        }),
        SanRequireUpn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "SanRequireUpn"),
            type = "boolean",
            name = "SanRequireUpn",
            target_id = prelude.Boolean.id,
        }),
        SanRequireEmail = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "SanRequireEmail"),
            type = "boolean",
            name = "SanRequireEmail",
            target_id = prelude.Boolean.id,
        }),
        SanRequireDns = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "SanRequireDns"),
            type = "boolean",
            name = "SanRequireDns",
            target_id = prelude.Boolean.id,
        }),
        RequireDnsAsCn = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "RequireDnsAsCn"),
            type = "boolean",
            name = "RequireDnsAsCn",
            target_id = prelude.Boolean.id,
        }),
        RequireEmail = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "RequireEmail"),
            type = "boolean",
            name = "RequireEmail",
            target_id = prelude.Boolean.id,
        }),
        RequireCommonName = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "RequireCommonName"),
            type = "boolean",
            name = "RequireCommonName",
            target_id = prelude.Boolean.id,
        }),
        RequireDirectoryPath = schema.new({
            id = id.from(_N, "SubjectNameFlagsV4", "RequireDirectoryPath"),
            type = "boolean",
            name = "RequireDirectoryPath",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.TemplateV4 = schema.new({
    id = id.from(_N, "TemplateV4"),
    type = "structure",
    members = {
        CertificateValidity = schema.new({
            id = id.from(_N, "TemplateV4", "CertificateValidity"),
            type = "structure",
            name = "CertificateValidity",
            target_id = id.from(_N, "CertificateValidity"),
            target = M.CertificateValidity,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SupersededTemplates = schema.new({
            id = id.from(_N, "TemplateV4", "SupersededTemplates"),
            type = "list",
            name = "SupersededTemplates",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PrivateKeyAttributes = schema.new({
            id = id.from(_N, "TemplateV4", "PrivateKeyAttributes"),
            type = "structure",
            name = "PrivateKeyAttributes",
            target_id = id.from(_N, "PrivateKeyAttributesV4"),
            target = M.PrivateKeyAttributesV4,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PrivateKeyFlags = schema.new({
            id = id.from(_N, "TemplateV4", "PrivateKeyFlags"),
            type = "structure",
            name = "PrivateKeyFlags",
            target_id = id.from(_N, "PrivateKeyFlagsV4"),
            target = M.PrivateKeyFlagsV4,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EnrollmentFlags = schema.new({
            id = id.from(_N, "TemplateV4", "EnrollmentFlags"),
            type = "structure",
            name = "EnrollmentFlags",
            target_id = id.from(_N, "EnrollmentFlagsV4"),
            target = M.EnrollmentFlagsV4,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubjectNameFlags = schema.new({
            id = id.from(_N, "TemplateV4", "SubjectNameFlags"),
            type = "structure",
            name = "SubjectNameFlags",
            target_id = id.from(_N, "SubjectNameFlagsV4"),
            target = M.SubjectNameFlagsV4,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GeneralFlags = schema.new({
            id = id.from(_N, "TemplateV4", "GeneralFlags"),
            type = "structure",
            name = "GeneralFlags",
            target_id = id.from(_N, "GeneralFlagsV4"),
            target = M.GeneralFlagsV4,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HashAlgorithm = schema.new({
            id = id.from(_N, "TemplateV4", "HashAlgorithm"),
            type = "string",
            name = "HashAlgorithm",
            target_id = prelude.String.id,
        }),
        Extensions = schema.new({
            id = id.from(_N, "TemplateV4", "Extensions"),
            type = "structure",
            name = "Extensions",
            target_id = id.from(_N, "ExtensionsV4"),
            target = M.ExtensionsV4,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TemplateDefinition = schema.new({
    id = id.from(_N, "TemplateDefinition"),
    type = "union",
    members = {
        TemplateV2 = schema.new({
            id = id.from(_N, "TemplateDefinition", "TemplateV2"),
            type = "structure",
            name = "TemplateV2",
            target_id = id.from(_N, "TemplateV2"),
            target = M.TemplateV2,
        }),
        TemplateV3 = schema.new({
            id = id.from(_N, "TemplateDefinition", "TemplateV3"),
            type = "structure",
            name = "TemplateV3",
            target_id = id.from(_N, "TemplateV3"),
            target = M.TemplateV3,
        }),
        TemplateV4 = schema.new({
            id = id.from(_N, "TemplateDefinition", "TemplateV4"),
            type = "structure",
            name = "TemplateV4",
            target_id = id.from(_N, "TemplateV4"),
            target = M.TemplateV4,
        }),
    },
})

M.CreateTemplateInput = schema.new({
    id = id.from(_N, "CreateTemplateRequest"),
    type = "structure",
    members = {
        ConnectorArn = schema.new({
            id = id.from(_N, "CreateTemplateInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateTemplateInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "CreateTemplateInput", "Definition"),
            type = "union",
            name = "Definition",
            target_id = id.from(_N, "TemplateDefinition"),
            target = M.TemplateDefinition,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateTemplateInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateTemplateInput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.CreateTemplateOutput = schema.new({
    id = id.from(_N, "CreateTemplateResponse"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "CreateTemplateOutput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTemplateGroupAccessControlEntryInput = schema.new({
    id = id.from(_N, "CreateTemplateGroupAccessControlEntryRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "CreateTemplateGroupAccessControlEntryInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupSecurityIdentifier = schema.new({
            id = id.from(_N, "CreateTemplateGroupAccessControlEntryInput", "GroupSecurityIdentifier"),
            type = "string",
            name = "GroupSecurityIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GroupDisplayName = schema.new({
            id = id.from(_N, "CreateTemplateGroupAccessControlEntryInput", "GroupDisplayName"),
            type = "string",
            name = "GroupDisplayName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AccessRights = schema.new({
            id = id.from(_N, "CreateTemplateGroupAccessControlEntryInput", "AccessRights"),
            type = "structure",
            name = "AccessRights",
            target_id = id.from(_N, "AccessRights"),
            target = M.AccessRights,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateTemplateGroupAccessControlEntryInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateTemplateGroupAccessControlEntryOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteDirectoryRegistrationInput = schema.new({
    id = id.from(_N, "DeleteDirectoryRegistrationRequest"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "DeleteDirectoryRegistrationInput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteDirectoryRegistrationOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteServicePrincipalNameInput = schema.new({
    id = id.from(_N, "DeleteServicePrincipalNameRequest"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "DeleteServicePrincipalNameInput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "DeleteServicePrincipalNameInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteServicePrincipalNameOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteTemplateInput = schema.new({
    id = id.from(_N, "DeleteTemplateRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "DeleteTemplateInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTemplateOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DeleteTemplateGroupAccessControlEntryInput = schema.new({
    id = id.from(_N, "DeleteTemplateGroupAccessControlEntryRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "DeleteTemplateGroupAccessControlEntryInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupSecurityIdentifier = schema.new({
            id = id.from(_N, "DeleteTemplateGroupAccessControlEntryInput", "GroupSecurityIdentifier"),
            type = "string",
            name = "GroupSecurityIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTemplateGroupAccessControlEntryOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.DirectoryRegistration = schema.new({
    id = id.from(_N, "DirectoryRegistration"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DirectoryRegistration", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "DirectoryRegistration", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DirectoryRegistration", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "DirectoryRegistration", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DirectoryRegistration", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "DirectoryRegistration", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.DirectoryRegistrationSummary = schema.new({
    id = id.from(_N, "DirectoryRegistrationSummary"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "DirectoryRegistrationSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        DirectoryId = schema.new({
            id = id.from(_N, "DirectoryRegistrationSummary", "DirectoryId"),
            type = "string",
            name = "DirectoryId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "DirectoryRegistrationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "DirectoryRegistrationSummary", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "DirectoryRegistrationSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "DirectoryRegistrationSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetDirectoryRegistrationInput = schema.new({
    id = id.from(_N, "GetDirectoryRegistrationRequest"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "GetDirectoryRegistrationInput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetDirectoryRegistrationOutput = schema.new({
    id = id.from(_N, "GetDirectoryRegistrationResponse"),
    type = "structure",
    members = {
        DirectoryRegistration = schema.new({
            id = id.from(_N, "GetDirectoryRegistrationOutput", "DirectoryRegistration"),
            type = "structure",
            name = "DirectoryRegistration",
            target_id = id.from(_N, "DirectoryRegistration"),
            target = M.DirectoryRegistration,
        }),
    },
})

M.ListDirectoryRegistrationsInput = schema.new({
    id = id.from(_N, "ListDirectoryRegistrationsRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListDirectoryRegistrationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDirectoryRegistrationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
    },
})

M.ListDirectoryRegistrationsOutput = schema.new({
    id = id.from(_N, "ListDirectoryRegistrationsResponse"),
    type = "structure",
    members = {
        DirectoryRegistrations = schema.new({
            id = id.from(_N, "ListDirectoryRegistrationsOutput", "DirectoryRegistrations"),
            type = "list",
            name = "DirectoryRegistrations",
            target_id = prelude.Document.id,
            list_member = M.DirectoryRegistrationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListDirectoryRegistrationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServicePrincipalNameInput = schema.new({
    id = id.from(_N, "GetServicePrincipalNameRequest"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "GetServicePrincipalNameInput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "GetServicePrincipalNameInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ServicePrincipalName = schema.new({
    id = id.from(_N, "ServicePrincipalName"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "ServicePrincipalName", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "ServicePrincipalName", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServicePrincipalName", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "ServicePrincipalName", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ServicePrincipalName", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "ServicePrincipalName", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetServicePrincipalNameOutput = schema.new({
    id = id.from(_N, "GetServicePrincipalNameResponse"),
    type = "structure",
    members = {
        ServicePrincipalName = schema.new({
            id = id.from(_N, "GetServicePrincipalNameOutput", "ServicePrincipalName"),
            type = "structure",
            name = "ServicePrincipalName",
            target_id = id.from(_N, "ServicePrincipalName"),
            target = M.ServicePrincipalName,
        }),
    },
})

M.GetTemplateInput = schema.new({
    id = id.from(_N, "GetTemplateRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "GetTemplateInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.TemplateRevision = schema.new({
    id = id.from(_N, "TemplateRevision"),
    type = "structure",
    members = {
        MajorRevision = schema.new({
            id = id.from(_N, "TemplateRevision", "MajorRevision"),
            type = "integer",
            name = "MajorRevision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MinorRevision = schema.new({
            id = id.from(_N, "TemplateRevision", "MinorRevision"),
            type = "integer",
            name = "MinorRevision",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Template = schema.new({
    id = id.from(_N, "Template"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "Template", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "Template", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "Template", "Definition"),
            type = "union",
            name = "Definition",
            target_id = id.from(_N, "TemplateDefinition"),
            target = M.TemplateDefinition,
        }),
        Name = schema.new({
            id = id.from(_N, "Template", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ObjectIdentifier = schema.new({
            id = id.from(_N, "Template", "ObjectIdentifier"),
            type = "string",
            name = "ObjectIdentifier",
            target_id = prelude.String.id,
        }),
        PolicySchema = schema.new({
            id = id.from(_N, "Template", "PolicySchema"),
            type = "integer",
            name = "PolicySchema",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "Template", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Revision = schema.new({
            id = id.from(_N, "Template", "Revision"),
            type = "structure",
            name = "Revision",
            target_id = id.from(_N, "TemplateRevision"),
            target = M.TemplateRevision,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "Template", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "Template", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.GetTemplateOutput = schema.new({
    id = id.from(_N, "GetTemplateResponse"),
    type = "structure",
    members = {
        Template = schema.new({
            id = id.from(_N, "GetTemplateOutput", "Template"),
            type = "structure",
            name = "Template",
            target_id = id.from(_N, "Template"),
            target = M.Template,
        }),
    },
})

M.GetTemplateGroupAccessControlEntryInput = schema.new({
    id = id.from(_N, "GetTemplateGroupAccessControlEntryRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "GetTemplateGroupAccessControlEntryInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupSecurityIdentifier = schema.new({
            id = id.from(_N, "GetTemplateGroupAccessControlEntryInput", "GroupSecurityIdentifier"),
            type = "string",
            name = "GroupSecurityIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTemplateGroupAccessControlEntryOutput = schema.new({
    id = id.from(_N, "GetTemplateGroupAccessControlEntryResponse"),
    type = "structure",
    members = {
        AccessControlEntry = schema.new({
            id = id.from(_N, "GetTemplateGroupAccessControlEntryOutput", "AccessControlEntry"),
            type = "structure",
            name = "AccessControlEntry",
            target_id = id.from(_N, "AccessControlEntry"),
            target = M.AccessControlEntry,
        }),
    },
})

M.ListServicePrincipalNamesInput = schema.new({
    id = id.from(_N, "ListServicePrincipalNamesRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListServicePrincipalNamesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServicePrincipalNamesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "ListServicePrincipalNamesInput", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ServicePrincipalNameSummary = schema.new({
    id = id.from(_N, "ServicePrincipalNameSummary"),
    type = "structure",
    members = {
        DirectoryRegistrationArn = schema.new({
            id = id.from(_N, "ServicePrincipalNameSummary", "DirectoryRegistrationArn"),
            type = "string",
            name = "DirectoryRegistrationArn",
            target_id = prelude.String.id,
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "ServicePrincipalNameSummary", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ServicePrincipalNameSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "ServicePrincipalNameSummary", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "ServicePrincipalNameSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "ServicePrincipalNameSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListServicePrincipalNamesOutput = schema.new({
    id = id.from(_N, "ListServicePrincipalNamesResponse"),
    type = "structure",
    members = {
        ServicePrincipalNames = schema.new({
            id = id.from(_N, "ListServicePrincipalNamesOutput", "ServicePrincipalNames"),
            type = "list",
            name = "ServicePrincipalNames",
            target_id = prelude.Document.id,
            list_member = M.ServicePrincipalNameSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServicePrincipalNamesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
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
        Tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
            type = "map",
            name = "Tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.ListTemplateGroupAccessControlEntriesInput = schema.new({
    id = id.from(_N, "ListTemplateGroupAccessControlEntriesRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListTemplateGroupAccessControlEntriesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTemplateGroupAccessControlEntriesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        TemplateArn = schema.new({
            id = id.from(_N, "ListTemplateGroupAccessControlEntriesInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ListTemplateGroupAccessControlEntriesOutput = schema.new({
    id = id.from(_N, "ListTemplateGroupAccessControlEntriesResponse"),
    type = "structure",
    members = {
        AccessControlEntries = schema.new({
            id = id.from(_N, "ListTemplateGroupAccessControlEntriesOutput", "AccessControlEntries"),
            type = "list",
            name = "AccessControlEntries",
            target_id = prelude.Document.id,
            list_member = M.AccessControlEntrySummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTemplateGroupAccessControlEntriesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListTemplatesInput = schema.new({
    id = id.from(_N, "ListTemplatesRequest"),
    type = "structure",
    members = {
        MaxResults = schema.new({
            id = id.from(_N, "ListTemplatesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "MaxResults" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTemplatesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "NextToken" },
            },
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "ListTemplatesInput", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "ConnectorArn" },
            },
        }),
    },
})

M.TemplateSummary = schema.new({
    id = id.from(_N, "TemplateSummary"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "TemplateSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        ConnectorArn = schema.new({
            id = id.from(_N, "TemplateSummary", "ConnectorArn"),
            type = "string",
            name = "ConnectorArn",
            target_id = prelude.String.id,
        }),
        Definition = schema.new({
            id = id.from(_N, "TemplateSummary", "Definition"),
            type = "union",
            name = "Definition",
            target_id = id.from(_N, "TemplateDefinition"),
            target = M.TemplateDefinition,
        }),
        Name = schema.new({
            id = id.from(_N, "TemplateSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ObjectIdentifier = schema.new({
            id = id.from(_N, "TemplateSummary", "ObjectIdentifier"),
            type = "string",
            name = "ObjectIdentifier",
            target_id = prelude.String.id,
        }),
        PolicySchema = schema.new({
            id = id.from(_N, "TemplateSummary", "PolicySchema"),
            type = "integer",
            name = "PolicySchema",
            target_id = prelude.Integer.id,
        }),
        Status = schema.new({
            id = id.from(_N, "TemplateSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Revision = schema.new({
            id = id.from(_N, "TemplateSummary", "Revision"),
            type = "structure",
            name = "Revision",
            target_id = id.from(_N, "TemplateRevision"),
            target = M.TemplateRevision,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "TemplateSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "TemplateSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.ListTemplatesOutput = schema.new({
    id = id.from(_N, "ListTemplatesResponse"),
    type = "structure",
    members = {
        Templates = schema.new({
            id = id.from(_N, "ListTemplatesOutput", "Templates"),
            type = "list",
            name = "Templates",
            target_id = prelude.Document.id,
            list_member = M.TemplateSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListTemplatesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "TagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "TagResourceInput", "Tags"),
            type = "map",
            name = "Tags",
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
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdateTemplateGroupAccessControlEntryInput = schema.new({
    id = id.from(_N, "UpdateTemplateGroupAccessControlEntryRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "UpdateTemplateGroupAccessControlEntryInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupSecurityIdentifier = schema.new({
            id = id.from(_N, "UpdateTemplateGroupAccessControlEntryInput", "GroupSecurityIdentifier"),
            type = "string",
            name = "GroupSecurityIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        GroupDisplayName = schema.new({
            id = id.from(_N, "UpdateTemplateGroupAccessControlEntryInput", "GroupDisplayName"),
            type = "string",
            name = "GroupDisplayName",
            target_id = prelude.String.id,
        }),
        AccessRights = schema.new({
            id = id.from(_N, "UpdateTemplateGroupAccessControlEntryInput", "AccessRights"),
            type = "structure",
            name = "AccessRights",
            target_id = id.from(_N, "AccessRights"),
            target = M.AccessRights,
        }),
    },
})

M.UpdateTemplateGroupAccessControlEntryOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UpdateTemplateInput = schema.new({
    id = id.from(_N, "UpdateTemplateRequest"),
    type = "structure",
    members = {
        TemplateArn = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "TemplateArn"),
            type = "string",
            name = "TemplateArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Definition = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "Definition"),
            type = "union",
            name = "Definition",
            target_id = id.from(_N, "TemplateDefinition"),
            target = M.TemplateDefinition,
        }),
        ReenrollAllCertificateHolders = schema.new({
            id = id.from(_N, "UpdateTemplateInput", "ReenrollAllCertificateHolders"),
            type = "boolean",
            name = "ReenrollAllCertificateHolders",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateTemplateOutput = schema.new({
    id = id.from(_N, "Unit"),
    type = "structure",
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TagKeys = schema.new({
            id = id.from(_N, "UntagResourceInput", "TagKeys"),
            type = "list",
            name = "TagKeys",
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
    id = id.from(_N, "Unit"),
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
