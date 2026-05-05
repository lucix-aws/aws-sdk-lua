local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.interconnect"

local M = {}

M.AttachPoint = schema.new({
    id = id.from(_N, "AttachPoint"),
    type = "union",
    members = {
        directConnectGateway = schema.new({
            id = id.from(_N, "AttachPoint", "directConnectGateway"),
            type = "string",
            name = "directConnectGateway",
            target_id = prelude.String.id,
        }),
        arn = schema.new({
            id = id.from(_N, "AttachPoint", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
        }),
    },
})

M.AcceptConnectionProposalInput = schema.new({
    id = id.from(_N, "AcceptConnectionProposalInput"),
    type = "structure",
    members = {
        attachPoint = schema.new({
            id = id.from(_N, "AcceptConnectionProposalInput", "attachPoint"),
            type = "union",
            name = "attachPoint",
            target_id = id.from(_N, "AttachPoint"),
            target = M.AttachPoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        activationKey = schema.new({
            id = id.from(_N, "AcceptConnectionProposalInput", "activationKey"),
            type = "string",
            name = "activationKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "AcceptConnectionProposalInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        tags = schema.new({
            id = id.from(_N, "AcceptConnectionProposalInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "AcceptConnectionProposalInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.Provider = schema.new({
    id = id.from(_N, "Provider"),
    type = "union",
    members = {
        cloudServiceProvider = schema.new({
            id = id.from(_N, "Provider", "cloudServiceProvider"),
            type = "string",
            name = "cloudServiceProvider",
            target_id = prelude.String.id,
        }),
        lastMileProvider = schema.new({
            id = id.from(_N, "Provider", "lastMileProvider"),
            type = "string",
            name = "lastMileProvider",
            target_id = prelude.String.id,
        }),
    },
})

M.Connection = schema.new({
    id = id.from(_N, "Connection"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "Connection", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "Connection", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "Connection", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bandwidth = schema.new({
            id = id.from(_N, "Connection", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachPoint = schema.new({
            id = id.from(_N, "Connection", "attachPoint"),
            type = "union",
            name = "attachPoint",
            target_id = id.from(_N, "AttachPoint"),
            target = M.AttachPoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "Connection", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        provider = schema.new({
            id = id.from(_N, "Connection", "provider"),
            type = "union",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "Connection", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "Connection", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "Connection", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sharedId = schema.new({
            id = id.from(_N, "Connection", "sharedId"),
            type = "string",
            name = "sharedId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        billingTier = schema.new({
            id = id.from(_N, "Connection", "billingTier"),
            type = "integer",
            name = "billingTier",
            target_id = prelude.Integer.id,
        }),
        ownerAccount = schema.new({
            id = id.from(_N, "Connection", "ownerAccount"),
            type = "string",
            name = "ownerAccount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        activationKey = schema.new({
            id = id.from(_N, "Connection", "activationKey"),
            type = "string",
            name = "activationKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        tags = schema.new({
            id = id.from(_N, "Connection", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
    },
})

M.AcceptConnectionProposalOutput = schema.new({
    id = id.from(_N, "AcceptConnectionProposalOutput"),
    type = "structure",
    members = {
        connection = schema.new({
            id = id.from(_N, "AcceptConnectionProposalOutput", "connection"),
            type = "structure",
            name = "connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
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

M.InterconnectClientException = schema.new({
    id = id.from(_N, "InterconnectClientException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InterconnectClientException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InterconnectServerException = schema.new({
    id = id.from(_N, "InterconnectServerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InterconnectServerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InterconnectValidationException = schema.new({
    id = id.from(_N, "InterconnectValidationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InterconnectValidationException", "message"),
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

M.AttachPointDescriptor = schema.new({
    id = id.from(_N, "AttachPointDescriptor"),
    type = "structure",
    members = {
        type = schema.new({
            id = id.from(_N, "AttachPointDescriptor", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        identifier = schema.new({
            id = id.from(_N, "AttachPointDescriptor", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        name = schema.new({
            id = id.from(_N, "AttachPointDescriptor", "name"),
            type = "string",
            name = "name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Bandwidths = schema.new({
    id = id.from(_N, "Bandwidths"),
    type = "structure",
    members = {
        available = schema.new({
            id = id.from(_N, "Bandwidths", "available"),
            type = "list",
            name = "available",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        supported = schema.new({
            id = id.from(_N, "Bandwidths", "supported"),
            type = "list",
            name = "supported",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.RemoteAccountIdentifier = schema.new({
    id = id.from(_N, "RemoteAccountIdentifier"),
    type = "union",
    members = {
        identifier = schema.new({
            id = id.from(_N, "RemoteAccountIdentifier", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateConnectionInput = schema.new({
    id = id.from(_N, "CreateConnectionInput"),
    type = "structure",
    members = {
        description = schema.new({
            id = id.from(_N, "CreateConnectionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "CreateConnectionInput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachPoint = schema.new({
            id = id.from(_N, "CreateConnectionInput", "attachPoint"),
            type = "union",
            name = "attachPoint",
            target_id = id.from(_N, "AttachPoint"),
            target = M.AttachPoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "CreateConnectionInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        remoteAccount = schema.new({
            id = id.from(_N, "CreateConnectionInput", "remoteAccount"),
            type = "union",
            name = "remoteAccount",
            target_id = id.from(_N, "RemoteAccountIdentifier"),
            target = M.RemoteAccountIdentifier,
        }),
        tags = schema.new({
            id = id.from(_N, "CreateConnectionInput", "tags"),
            type = "map",
            name = "tags",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        clientToken = schema.new({
            id = id.from(_N, "CreateConnectionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.CreateConnectionOutput = schema.new({
    id = id.from(_N, "CreateConnectionOutput"),
    type = "structure",
    members = {
        connection = schema.new({
            id = id.from(_N, "CreateConnectionOutput", "connection"),
            type = "structure",
            name = "connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.DeleteConnectionInput = schema.new({
    id = id.from(_N, "DeleteConnectionInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        clientToken = schema.new({
            id = id.from(_N, "DeleteConnectionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.DeleteConnectionOutput = schema.new({
    id = id.from(_N, "DeleteConnectionOutput"),
    type = "structure",
    members = {
        connection = schema.new({
            id = id.from(_N, "DeleteConnectionOutput", "connection"),
            type = "structure",
            name = "connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConnectionInput = schema.new({
    id = id.from(_N, "GetConnectionInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "GetConnectionInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetConnectionOutput = schema.new({
    id = id.from(_N, "GetConnectionOutput"),
    type = "structure",
    members = {
        connection = schema.new({
            id = id.from(_N, "GetConnectionOutput", "connection"),
            type = "structure",
            name = "connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.ListConnectionsInput = schema.new({
    id = id.from(_N, "ListConnectionsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListConnectionsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectionsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        state = schema.new({
            id = id.from(_N, "ListConnectionsInput", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
        }),
        environmentId = schema.new({
            id = id.from(_N, "ListConnectionsInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
        }),
        provider = schema.new({
            id = id.from(_N, "ListConnectionsInput", "provider"),
            type = "union",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
        }),
        attachPoint = schema.new({
            id = id.from(_N, "ListConnectionsInput", "attachPoint"),
            type = "union",
            name = "attachPoint",
            target_id = id.from(_N, "AttachPoint"),
            target = M.AttachPoint,
        }),
    },
})

M.ConnectionSummary = schema.new({
    id = id.from(_N, "ConnectionSummary"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "ConnectionSummary", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        arn = schema.new({
            id = id.from(_N, "ConnectionSummary", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "ConnectionSummary", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bandwidth = schema.new({
            id = id.from(_N, "ConnectionSummary", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        attachPoint = schema.new({
            id = id.from(_N, "ConnectionSummary", "attachPoint"),
            type = "union",
            name = "attachPoint",
            target_id = id.from(_N, "AttachPoint"),
            target = M.AttachPoint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "ConnectionSummary", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        provider = schema.new({
            id = id.from(_N, "ConnectionSummary", "provider"),
            type = "union",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "ConnectionSummary", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "ConnectionSummary", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "ConnectionSummary", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        sharedId = schema.new({
            id = id.from(_N, "ConnectionSummary", "sharedId"),
            type = "string",
            name = "sharedId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        billingTier = schema.new({
            id = id.from(_N, "ConnectionSummary", "billingTier"),
            type = "integer",
            name = "billingTier",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListConnectionsOutput = schema.new({
    id = id.from(_N, "ListConnectionsOutput"),
    type = "structure",
    members = {
        connections = schema.new({
            id = id.from(_N, "ListConnectionsOutput", "connections"),
            type = "list",
            name = "connections",
            target_id = prelude.Document.id,
            list_member = M.ConnectionSummary,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListConnectionsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateConnectionInput = schema.new({
    id = id.from(_N, "UpdateConnectionInput"),
    type = "structure",
    members = {
        identifier = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "identifier"),
            type = "string",
            name = "identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        description = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "description"),
            type = "string",
            name = "description",
            target_id = prelude.String.id,
        }),
        bandwidth = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
        }),
        clientToken = schema.new({
            id = id.from(_N, "UpdateConnectionInput", "clientToken"),
            type = "string",
            name = "clientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.IDEMPOTENCY_TOKEN] = {},
            },
        }),
    },
})

M.UpdateConnectionOutput = schema.new({
    id = id.from(_N, "UpdateConnectionOutput"),
    type = "structure",
    members = {
        connection = schema.new({
            id = id.from(_N, "UpdateConnectionOutput", "connection"),
            type = "structure",
            name = "connection",
            target_id = id.from(_N, "Connection"),
            target = M.Connection,
        }),
    },
})

M.DescribeConnectionProposalInput = schema.new({
    id = id.from(_N, "DescribeConnectionProposalInput"),
    type = "structure",
    members = {
        activationKey = schema.new({
            id = id.from(_N, "DescribeConnectionProposalInput", "activationKey"),
            type = "string",
            name = "activationKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DescribeConnectionProposalOutput = schema.new({
    id = id.from(_N, "DescribeConnectionProposalOutput"),
    type = "structure",
    members = {
        bandwidth = schema.new({
            id = id.from(_N, "DescribeConnectionProposalOutput", "bandwidth"),
            type = "string",
            name = "bandwidth",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "DescribeConnectionProposalOutput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        provider = schema.new({
            id = id.from(_N, "DescribeConnectionProposalOutput", "provider"),
            type = "union",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "DescribeConnectionProposalOutput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Environment = schema.new({
    id = id.from(_N, "Environment"),
    type = "structure",
    members = {
        provider = schema.new({
            id = id.from(_N, "Environment", "provider"),
            type = "union",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        location = schema.new({
            id = id.from(_N, "Environment", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        environmentId = schema.new({
            id = id.from(_N, "Environment", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        state = schema.new({
            id = id.from(_N, "Environment", "state"),
            type = "string",
            name = "state",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        bandwidths = schema.new({
            id = id.from(_N, "Environment", "bandwidths"),
            type = "structure",
            name = "bandwidths",
            target_id = id.from(_N, "Bandwidths"),
            target = M.Bandwidths,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        type = schema.new({
            id = id.from(_N, "Environment", "type"),
            type = "string",
            name = "type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        activationPageUrl = schema.new({
            id = id.from(_N, "Environment", "activationPageUrl"),
            type = "string",
            name = "activationPageUrl",
            target_id = prelude.String.id,
        }),
        remoteIdentifierType = schema.new({
            id = id.from(_N, "Environment", "remoteIdentifierType"),
            type = "string",
            name = "remoteIdentifierType",
            target_id = prelude.String.id,
        }),
    },
})

M.GetEnvironmentInput = schema.new({
    id = id.from(_N, "GetEnvironmentInput"),
    type = "structure",
    members = {
        id = schema.new({
            id = id.from(_N, "GetEnvironmentInput", "id"),
            type = "string",
            name = "id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetEnvironmentOutput = schema.new({
    id = id.from(_N, "GetEnvironmentOutput"),
    type = "structure",
    members = {
        environment = schema.new({
            id = id.from(_N, "GetEnvironmentOutput", "environment"),
            type = "structure",
            name = "environment",
            target_id = id.from(_N, "Environment"),
            target = M.Environment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListEnvironmentsInput = schema.new({
    id = id.from(_N, "ListEnvironmentsInput"),
    type = "structure",
    members = {
        maxResults = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
        provider = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "provider"),
            type = "union",
            name = "provider",
            target_id = id.from(_N, "Provider"),
            target = M.Provider,
        }),
        location = schema.new({
            id = id.from(_N, "ListEnvironmentsInput", "location"),
            type = "string",
            name = "location",
            target_id = prelude.String.id,
        }),
    },
})

M.ListEnvironmentsOutput = schema.new({
    id = id.from(_N, "ListEnvironmentsOutput"),
    type = "structure",
    members = {
        environments = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "environments"),
            type = "list",
            name = "environments",
            target_id = prelude.Document.id,
            list_member = M.Environment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListEnvironmentsOutput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAttachPointsInput = schema.new({
    id = id.from(_N, "ListAttachPointsInput"),
    type = "structure",
    members = {
        environmentId = schema.new({
            id = id.from(_N, "ListAttachPointsInput", "environmentId"),
            type = "string",
            name = "environmentId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        maxResults = schema.new({
            id = id.from(_N, "ListAttachPointsInput", "maxResults"),
            type = "integer",
            name = "maxResults",
            target_id = prelude.Integer.id,
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAttachPointsInput", "nextToken"),
            type = "string",
            name = "nextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAttachPointsOutput = schema.new({
    id = id.from(_N, "ListAttachPointsOutput"),
    type = "structure",
    members = {
        attachPoints = schema.new({
            id = id.from(_N, "ListAttachPointsOutput", "attachPoints"),
            type = "list",
            name = "attachPoints",
            target_id = prelude.Document.id,
            list_member = M.AttachPointDescriptor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        nextToken = schema.new({
            id = id.from(_N, "ListAttachPointsOutput", "nextToken"),
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
        arn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "TagResourceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
    type = "structure",
    members = {
        arn = schema.new({
            id = id.from(_N, "UntagResourceInput", "arn"),
            type = "string",
            name = "arn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
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
            },
        }),
    },
})

M.UntagResourceOutput = schema.new({
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

return M
