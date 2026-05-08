

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.globalaccelerator"

local M = {}

M.CustomRoutingEndpointConfigurations = schema.new({ type = "list", list_member = M.CustomRoutingEndpointConfiguration })

M.CustomRoutingEndpointDescriptions = schema.new({ type = "list", list_member = M.CustomRoutingEndpointDescription })

M.EndpointConfigurations = schema.new({ type = "list", list_member = M.EndpointConfiguration })

M.EndpointDescriptions = schema.new({ type = "list", list_member = M.EndpointDescription })

M.DestinationAddresses = schema.new({ type = "list", list_member = prelude.String })

M.DestinationPorts = schema.new({ type = "list", list_member = prelude.Integer })

M.IpAddresses = schema.new({ type = "list", list_member = prelude.String })

M.Tags = schema.new({ type = "list", list_member = M.Tag })

M.Principals = schema.new({ type = "list", list_member = prelude.String })

M.Resources = schema.new({ type = "list", list_member = M.Resource })

M.CustomRoutingDestinationConfigurations = schema.new({ type = "list", list_member = M.CustomRoutingDestinationConfiguration })

M.PortRanges = schema.new({ type = "list", list_member = M.PortRange })

M.PortOverrides = schema.new({ type = "list", list_member = M.PortOverride })

M.Accelerators = schema.new({ type = "list", list_member = M.Accelerator })

M.ByoipCidrs = schema.new({ type = "list", list_member = M.ByoipCidr })

M.Attachments = schema.new({ type = "list", list_member = M.Attachment })

M.AwsAccountIds = schema.new({ type = "list", list_member = prelude.String })

M.CrossAccountResources = schema.new({ type = "list", list_member = M.CrossAccountResource })

M.CustomRoutingAccelerators = schema.new({ type = "list", list_member = M.CustomRoutingAccelerator })

M.CustomRoutingEndpointGroups = schema.new({ type = "list", list_member = M.CustomRoutingEndpointGroup })

M.CustomRoutingListeners = schema.new({ type = "list", list_member = M.CustomRoutingListener })

M.PortMappings = schema.new({ type = "list", list_member = M.PortMapping })

M.DestinationPortMappings = schema.new({ type = "list", list_member = M.DestinationPortMapping })

M.EndpointGroups = schema.new({ type = "list", list_member = M.EndpointGroup })

M.Listeners = schema.new({ type = "list", list_member = M.Listener })

M.EndpointIds = schema.new({ type = "list", list_member = prelude.String })

M.EndpointIdentifiers = schema.new({ type = "list", list_member = M.EndpointIdentifier })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.ByoipCidrEvents = schema.new({ type = "list", list_member = M.ByoipCidrEvent })

M.IpSets = schema.new({ type = "list", list_member = M.IpSet })

M.AcceleratorEvents = schema.new({ type = "list", list_member = M.AcceleratorEvent })

M.CustomRoutingDestinationDescriptions = schema.new({ type = "list", list_member = M.CustomRoutingDestinationDescription })

M.CustomRoutingProtocols = schema.new({ type = "list", list_member = prelude.String })

M.SocketAddresses = schema.new({ type = "list", list_member = M.SocketAddress })

M.Protocols = schema.new({ type = "list", list_member = prelude.String })

M.AcceleratorEvent = schema.new({
   id = id.from(_N, "AcceleratorEvent"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "AcceleratorEvent", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "AcceleratorEvent", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.IpSet = schema.new({
   id = id.from(_N, "IpSet"),
   type = "structure",
   members = {
      IpFamily = schema.new({
         id = id.from(_N, "IpSet", "IpFamily"),
         type = "string",
         name = "IpFamily",
         target_id = prelude.String.id,
      }),
      IpAddresses = schema.new({
         id = id.from(_N, "IpSet", "IpAddresses"),
         type = "list",
         name = "IpAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      IpAddressFamily = schema.new({
         id = id.from(_N, "IpSet", "IpAddressFamily"),
         type = "string",
         name = "IpAddressFamily",
         target_id = prelude.String.id,
      }),
   },
})

M.Accelerator = schema.new({
   id = id.from(_N, "Accelerator"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "Accelerator", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "Accelerator", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "Accelerator", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "Accelerator", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      IpSets = schema.new({
         id = id.from(_N, "Accelerator", "IpSets"),
         type = "list",
         name = "IpSets",
         target_id = prelude.Document.id,
         list_member = M.IpSet,
      }),
      DnsName = schema.new({
         id = id.from(_N, "Accelerator", "DnsName"),
         type = "string",
         name = "DnsName",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "Accelerator", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Accelerator", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "Accelerator", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
      DualStackDnsName = schema.new({
         id = id.from(_N, "Accelerator", "DualStackDnsName"),
         type = "string",
         name = "DualStackDnsName",
         target_id = prelude.String.id,
      }),
      Events = schema.new({
         id = id.from(_N, "Accelerator", "Events"),
         type = "list",
         name = "Events",
         target_id = prelude.Document.id,
         list_member = M.AcceleratorEvent,
      }),
   },
})

M.AcceleratorAttributes = schema.new({
   id = id.from(_N, "AcceleratorAttributes"),
   type = "structure",
   members = {
      FlowLogsEnabled = schema.new({
         id = id.from(_N, "AcceleratorAttributes", "FlowLogsEnabled"),
         type = "boolean",
         name = "FlowLogsEnabled",
         target_id = prelude.Boolean.id,
      }),
      FlowLogsS3Bucket = schema.new({
         id = id.from(_N, "AcceleratorAttributes", "FlowLogsS3Bucket"),
         type = "string",
         name = "FlowLogsS3Bucket",
         target_id = prelude.String.id,
      }),
      FlowLogsS3Prefix = schema.new({
         id = id.from(_N, "AcceleratorAttributes", "FlowLogsS3Prefix"),
         type = "string",
         name = "FlowLogsS3Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.AcceleratorNotDisabledException = schema.new({
   id = id.from(_N, "AcceleratorNotDisabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AcceleratorNotDisabledException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AcceleratorNotFoundException = schema.new({
   id = id.from(_N, "AcceleratorNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AcceleratorNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      }),
   },
})

M.CustomRoutingEndpointConfiguration = schema.new({
   id = id.from(_N, "CustomRoutingEndpointConfiguration"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "CustomRoutingEndpointConfiguration", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      AttachmentArn = schema.new({
         id = id.from(_N, "CustomRoutingEndpointConfiguration", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AddCustomRoutingEndpointsInput = schema.new({
   id = id.from(_N, "AddCustomRoutingEndpointsRequest"),
   type = "structure",
   members = {
      EndpointConfigurations = schema.new({
         id = id.from(_N, "AddCustomRoutingEndpointsInput", "EndpointConfigurations"),
         type = "list",
         name = "EndpointConfigurations",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingEndpointConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "AddCustomRoutingEndpointsInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CustomRoutingEndpointDescription = schema.new({
   id = id.from(_N, "CustomRoutingEndpointDescription"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "CustomRoutingEndpointDescription", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
   },
})

M.AddCustomRoutingEndpointsOutput = schema.new({
   id = id.from(_N, "AddCustomRoutingEndpointsResponse"),
   type = "structure",
   members = {
      EndpointDescriptions = schema.new({
         id = id.from(_N, "AddCustomRoutingEndpointsOutput", "EndpointDescriptions"),
         type = "list",
         name = "EndpointDescriptions",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingEndpointDescription,
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "AddCustomRoutingEndpointsOutput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
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
      }),
   },
})

M.EndpointAlreadyExistsException = schema.new({
   id = id.from(_N, "EndpointAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "EndpointAlreadyExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointGroupNotFoundException = schema.new({
   id = id.from(_N, "EndpointGroupNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "EndpointGroupNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InternalServiceErrorException = schema.new({
   id = id.from(_N, "InternalServiceErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InternalServiceErrorException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidArgumentException = schema.new({
   id = id.from(_N, "InvalidArgumentException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidArgumentException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "LimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointConfiguration = schema.new({
   id = id.from(_N, "EndpointConfiguration"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "EndpointConfiguration", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      Weight = schema.new({
         id = id.from(_N, "EndpointConfiguration", "Weight"),
         type = "integer",
         name = "Weight",
         target_id = prelude.Integer.id,
      }),
      ClientIPPreservationEnabled = schema.new({
         id = id.from(_N, "EndpointConfiguration", "ClientIPPreservationEnabled"),
         type = "boolean",
         name = "ClientIPPreservationEnabled",
         target_id = prelude.Boolean.id,
      }),
      AttachmentArn = schema.new({
         id = id.from(_N, "EndpointConfiguration", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AddEndpointsInput = schema.new({
   id = id.from(_N, "AddEndpointsRequest"),
   type = "structure",
   members = {
      EndpointConfigurations = schema.new({
         id = id.from(_N, "AddEndpointsInput", "EndpointConfigurations"),
         type = "list",
         name = "EndpointConfigurations",
         target_id = prelude.Document.id,
         list_member = M.EndpointConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "AddEndpointsInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EndpointDescription = schema.new({
   id = id.from(_N, "EndpointDescription"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "EndpointDescription", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      Weight = schema.new({
         id = id.from(_N, "EndpointDescription", "Weight"),
         type = "integer",
         name = "Weight",
         target_id = prelude.Integer.id,
      }),
      HealthState = schema.new({
         id = id.from(_N, "EndpointDescription", "HealthState"),
         type = "string",
         name = "HealthState",
         target_id = prelude.String.id,
      }),
      HealthReason = schema.new({
         id = id.from(_N, "EndpointDescription", "HealthReason"),
         type = "string",
         name = "HealthReason",
         target_id = prelude.String.id,
      }),
      ClientIPPreservationEnabled = schema.new({
         id = id.from(_N, "EndpointDescription", "ClientIPPreservationEnabled"),
         type = "boolean",
         name = "ClientIPPreservationEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AddEndpointsOutput = schema.new({
   id = id.from(_N, "AddEndpointsResponse"),
   type = "structure",
   members = {
      EndpointDescriptions = schema.new({
         id = id.from(_N, "AddEndpointsOutput", "EndpointDescriptions"),
         type = "list",
         name = "EndpointDescriptions",
         target_id = prelude.Document.id,
         list_member = M.EndpointDescription,
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "AddEndpointsOutput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.TransactionInProgressException = schema.new({
   id = id.from(_N, "TransactionInProgressException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "TransactionInProgressException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AdvertiseByoipCidrInput = schema.new({
   id = id.from(_N, "AdvertiseByoipCidrRequest"),
   type = "structure",
   members = {
      Cidr = schema.new({
         id = id.from(_N, "AdvertiseByoipCidrInput", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ByoipCidrEvent = schema.new({
   id = id.from(_N, "ByoipCidrEvent"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "ByoipCidrEvent", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "ByoipCidrEvent", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ByoipCidr = schema.new({
   id = id.from(_N, "ByoipCidr"),
   type = "structure",
   members = {
      Cidr = schema.new({
         id = id.from(_N, "ByoipCidr", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ByoipCidr", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Events = schema.new({
         id = id.from(_N, "ByoipCidr", "Events"),
         type = "list",
         name = "Events",
         target_id = prelude.Document.id,
         list_member = M.ByoipCidrEvent,
      }),
   },
})

M.AdvertiseByoipCidrOutput = schema.new({
   id = id.from(_N, "AdvertiseByoipCidrResponse"),
   type = "structure",
   members = {
      ByoipCidr = schema.new({
         id = id.from(_N, "AdvertiseByoipCidrOutput", "ByoipCidr"),
         type = "structure",
         name = "ByoipCidr",
         target_id = id.from(_N, "ByoipCidr"),
         target = M.ByoipCidr,
      }),
   },
})

M.ByoipCidrNotFoundException = schema.new({
   id = id.from(_N, "ByoipCidrNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ByoipCidrNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.IncorrectCidrStateException = schema.new({
   id = id.from(_N, "IncorrectCidrStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "IncorrectCidrStateException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AllowCustomRoutingTrafficInput = schema.new({
   id = id.from(_N, "AllowCustomRoutingTrafficRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "AllowCustomRoutingTrafficInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointId = schema.new({
         id = id.from(_N, "AllowCustomRoutingTrafficInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationAddresses = schema.new({
         id = id.from(_N, "AllowCustomRoutingTrafficInput", "DestinationAddresses"),
         type = "list",
         name = "DestinationAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DestinationPorts = schema.new({
         id = id.from(_N, "AllowCustomRoutingTrafficInput", "DestinationPorts"),
         type = "list",
         name = "DestinationPorts",
         target_id = prelude.Document.id,
         list_member = prelude.Integer,
      }),
      AllowAllTrafficToEndpoint = schema.new({
         id = id.from(_N, "AllowCustomRoutingTrafficInput", "AllowAllTrafficToEndpoint"),
         type = "boolean",
         name = "AllowAllTrafficToEndpoint",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AllowCustomRoutingTrafficOutput = prelude.Unit

M.AssociatedEndpointGroupFoundException = schema.new({
   id = id.from(_N, "AssociatedEndpointGroupFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AssociatedEndpointGroupFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociatedListenerFoundException = schema.new({
   id = id.from(_N, "AssociatedListenerFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AssociatedListenerFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.Resource = schema.new({
   id = id.from(_N, "Resource"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "Resource", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "" },
         },
      }),
      Cidr = schema.new({
         id = id.from(_N, "Resource", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
      }),
      Region = schema.new({
         id = id.from(_N, "Resource", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
   },
})

M.Attachment = schema.new({
   id = id.from(_N, "Attachment"),
   type = "structure",
   members = {
      AttachmentArn = schema.new({
         id = id.from(_N, "Attachment", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "Attachment", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Principals = schema.new({
         id = id.from(_N, "Attachment", "Principals"),
         type = "list",
         name = "Principals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Resources = schema.new({
         id = id.from(_N, "Attachment", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = M.Resource,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "Attachment", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Attachment", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AttachmentNotFoundException = schema.new({
   id = id.from(_N, "AttachmentNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "AttachmentNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.CidrAuthorizationContext = schema.new({
   id = id.from(_N, "CidrAuthorizationContext"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "CidrAuthorizationContext", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Signature = schema.new({
         id = id.from(_N, "CidrAuthorizationContext", "Signature"),
         type = "string",
         name = "Signature",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Tag", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateAcceleratorInput = schema.new({
   id = id.from(_N, "CreateAcceleratorRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateAcceleratorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "CreateAcceleratorInput", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      IpAddresses = schema.new({
         id = id.from(_N, "CreateAcceleratorInput", "IpAddresses"),
         type = "list",
         name = "IpAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Enabled = schema.new({
         id = id.from(_N, "CreateAcceleratorInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateAcceleratorInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAcceleratorInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateAcceleratorOutput = schema.new({
   id = id.from(_N, "CreateAcceleratorResponse"),
   type = "structure",
   members = {
      Accelerator = schema.new({
         id = id.from(_N, "CreateAcceleratorOutput", "Accelerator"),
         type = "structure",
         name = "Accelerator",
         target_id = id.from(_N, "Accelerator"),
         target = M.Accelerator,
      }),
   },
})

M.CreateCrossAccountAttachmentInput = schema.new({
   id = id.from(_N, "CreateCrossAccountAttachmentRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateCrossAccountAttachmentInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Principals = schema.new({
         id = id.from(_N, "CreateCrossAccountAttachmentInput", "Principals"),
         type = "list",
         name = "Principals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Resources = schema.new({
         id = id.from(_N, "CreateCrossAccountAttachmentInput", "Resources"),
         type = "list",
         name = "Resources",
         target_id = prelude.Document.id,
         list_member = M.Resource,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateCrossAccountAttachmentInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateCrossAccountAttachmentInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CreateCrossAccountAttachmentOutput = schema.new({
   id = id.from(_N, "CreateCrossAccountAttachmentResponse"),
   type = "structure",
   members = {
      CrossAccountAttachment = schema.new({
         id = id.from(_N, "CreateCrossAccountAttachmentOutput", "CrossAccountAttachment"),
         type = "structure",
         name = "CrossAccountAttachment",
         target_id = id.from(_N, "Attachment"),
         target = M.Attachment,
      }),
   },
})

M.CreateCustomRoutingAcceleratorInput = schema.new({
   id = id.from(_N, "CreateCustomRoutingAcceleratorRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorInput", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      IpAddresses = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorInput", "IpAddresses"),
         type = "list",
         name = "IpAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Enabled = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.CustomRoutingAccelerator = schema.new({
   id = id.from(_N, "CustomRoutingAccelerator"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      IpSets = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "IpSets"),
         type = "list",
         name = "IpSets",
         target_id = prelude.Document.id,
         list_member = M.IpSet,
      }),
      DnsName = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "DnsName"),
         type = "string",
         name = "DnsName",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "CustomRoutingAccelerator", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateCustomRoutingAcceleratorOutput = schema.new({
   id = id.from(_N, "CreateCustomRoutingAcceleratorResponse"),
   type = "structure",
   members = {
      Accelerator = schema.new({
         id = id.from(_N, "CreateCustomRoutingAcceleratorOutput", "Accelerator"),
         type = "structure",
         name = "Accelerator",
         target_id = id.from(_N, "CustomRoutingAccelerator"),
         target = M.CustomRoutingAccelerator,
      }),
   },
})

M.CustomRoutingDestinationConfiguration = schema.new({
   id = id.from(_N, "CustomRoutingDestinationConfiguration"),
   type = "structure",
   members = {
      FromPort = schema.new({
         id = id.from(_N, "CustomRoutingDestinationConfiguration", "FromPort"),
         type = "integer",
         name = "FromPort",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ToPort = schema.new({
         id = id.from(_N, "CustomRoutingDestinationConfiguration", "ToPort"),
         type = "integer",
         name = "ToPort",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Protocols = schema.new({
         id = id.from(_N, "CustomRoutingDestinationConfiguration", "Protocols"),
         type = "list",
         name = "Protocols",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateCustomRoutingEndpointGroupInput = schema.new({
   id = id.from(_N, "CreateCustomRoutingEndpointGroupRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "CreateCustomRoutingEndpointGroupInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupRegion = schema.new({
         id = id.from(_N, "CreateCustomRoutingEndpointGroupInput", "EndpointGroupRegion"),
         type = "string",
         name = "EndpointGroupRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationConfigurations = schema.new({
         id = id.from(_N, "CreateCustomRoutingEndpointGroupInput", "DestinationConfigurations"),
         type = "list",
         name = "DestinationConfigurations",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingDestinationConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateCustomRoutingEndpointGroupInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CustomRoutingDestinationDescription = schema.new({
   id = id.from(_N, "CustomRoutingDestinationDescription"),
   type = "structure",
   members = {
      FromPort = schema.new({
         id = id.from(_N, "CustomRoutingDestinationDescription", "FromPort"),
         type = "integer",
         name = "FromPort",
         target_id = prelude.Integer.id,
      }),
      ToPort = schema.new({
         id = id.from(_N, "CustomRoutingDestinationDescription", "ToPort"),
         type = "integer",
         name = "ToPort",
         target_id = prelude.Integer.id,
      }),
      Protocols = schema.new({
         id = id.from(_N, "CustomRoutingDestinationDescription", "Protocols"),
         type = "list",
         name = "Protocols",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CustomRoutingEndpointGroup = schema.new({
   id = id.from(_N, "CustomRoutingEndpointGroup"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "CustomRoutingEndpointGroup", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
      }),
      EndpointGroupRegion = schema.new({
         id = id.from(_N, "CustomRoutingEndpointGroup", "EndpointGroupRegion"),
         type = "string",
         name = "EndpointGroupRegion",
         target_id = prelude.String.id,
      }),
      DestinationDescriptions = schema.new({
         id = id.from(_N, "CustomRoutingEndpointGroup", "DestinationDescriptions"),
         type = "list",
         name = "DestinationDescriptions",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingDestinationDescription,
      }),
      EndpointDescriptions = schema.new({
         id = id.from(_N, "CustomRoutingEndpointGroup", "EndpointDescriptions"),
         type = "list",
         name = "EndpointDescriptions",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingEndpointDescription,
      }),
   },
})

M.CreateCustomRoutingEndpointGroupOutput = schema.new({
   id = id.from(_N, "CreateCustomRoutingEndpointGroupResponse"),
   type = "structure",
   members = {
      EndpointGroup = schema.new({
         id = id.from(_N, "CreateCustomRoutingEndpointGroupOutput", "EndpointGroup"),
         type = "structure",
         name = "EndpointGroup",
         target_id = id.from(_N, "CustomRoutingEndpointGroup"),
         target = M.CustomRoutingEndpointGroup,
      }),
   },
})

M.EndpointGroupAlreadyExistsException = schema.new({
   id = id.from(_N, "EndpointGroupAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "EndpointGroupAlreadyExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidPortRangeException = schema.new({
   id = id.from(_N, "InvalidPortRangeException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidPortRangeException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListenerNotFoundException = schema.new({
   id = id.from(_N, "ListenerNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ListenerNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.PortRange = schema.new({
   id = id.from(_N, "PortRange"),
   type = "structure",
   members = {
      FromPort = schema.new({
         id = id.from(_N, "PortRange", "FromPort"),
         type = "integer",
         name = "FromPort",
         target_id = prelude.Integer.id,
      }),
      ToPort = schema.new({
         id = id.from(_N, "PortRange", "ToPort"),
         type = "integer",
         name = "ToPort",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateCustomRoutingListenerInput = schema.new({
   id = id.from(_N, "CreateCustomRoutingListenerRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "CreateCustomRoutingListenerInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PortRanges = schema.new({
         id = id.from(_N, "CreateCustomRoutingListenerInput", "PortRanges"),
         type = "list",
         name = "PortRanges",
         target_id = prelude.Document.id,
         list_member = M.PortRange,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateCustomRoutingListenerInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CustomRoutingListener = schema.new({
   id = id.from(_N, "CustomRoutingListener"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "CustomRoutingListener", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
      }),
      PortRanges = schema.new({
         id = id.from(_N, "CustomRoutingListener", "PortRanges"),
         type = "list",
         name = "PortRanges",
         target_id = prelude.Document.id,
         list_member = M.PortRange,
      }),
   },
})

M.CreateCustomRoutingListenerOutput = schema.new({
   id = id.from(_N, "CreateCustomRoutingListenerResponse"),
   type = "structure",
   members = {
      Listener = schema.new({
         id = id.from(_N, "CreateCustomRoutingListenerOutput", "Listener"),
         type = "structure",
         name = "Listener",
         target_id = id.from(_N, "CustomRoutingListener"),
         target = M.CustomRoutingListener,
      }),
   },
})

M.PortOverride = schema.new({
   id = id.from(_N, "PortOverride"),
   type = "structure",
   members = {
      ListenerPort = schema.new({
         id = id.from(_N, "PortOverride", "ListenerPort"),
         type = "integer",
         name = "ListenerPort",
         target_id = prelude.Integer.id,
      }),
      EndpointPort = schema.new({
         id = id.from(_N, "PortOverride", "EndpointPort"),
         type = "integer",
         name = "EndpointPort",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateEndpointGroupInput = schema.new({
   id = id.from(_N, "CreateEndpointGroupRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupRegion = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "EndpointGroupRegion"),
         type = "string",
         name = "EndpointGroupRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointConfigurations = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "EndpointConfigurations"),
         type = "list",
         name = "EndpointConfigurations",
         target_id = prelude.Document.id,
         list_member = M.EndpointConfiguration,
      }),
      TrafficDialPercentage = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "TrafficDialPercentage"),
         type = "float",
         name = "TrafficDialPercentage",
         target_id = prelude.Float.id,
      }),
      HealthCheckPort = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "HealthCheckPort"),
         type = "integer",
         name = "HealthCheckPort",
         target_id = prelude.Integer.id,
      }),
      HealthCheckProtocol = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "HealthCheckProtocol"),
         type = "string",
         name = "HealthCheckProtocol",
         target_id = prelude.String.id,
      }),
      HealthCheckPath = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "HealthCheckPath"),
         type = "string",
         name = "HealthCheckPath",
         target_id = prelude.String.id,
      }),
      HealthCheckIntervalSeconds = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "HealthCheckIntervalSeconds"),
         type = "integer",
         name = "HealthCheckIntervalSeconds",
         target_id = prelude.Integer.id,
      }),
      ThresholdCount = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "ThresholdCount"),
         type = "integer",
         name = "ThresholdCount",
         target_id = prelude.Integer.id,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      PortOverrides = schema.new({
         id = id.from(_N, "CreateEndpointGroupInput", "PortOverrides"),
         type = "list",
         name = "PortOverrides",
         target_id = prelude.Document.id,
         list_member = M.PortOverride,
      }),
   },
})

M.EndpointGroup = schema.new({
   id = id.from(_N, "EndpointGroup"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "EndpointGroup", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
      }),
      EndpointGroupRegion = schema.new({
         id = id.from(_N, "EndpointGroup", "EndpointGroupRegion"),
         type = "string",
         name = "EndpointGroupRegion",
         target_id = prelude.String.id,
      }),
      EndpointDescriptions = schema.new({
         id = id.from(_N, "EndpointGroup", "EndpointDescriptions"),
         type = "list",
         name = "EndpointDescriptions",
         target_id = prelude.Document.id,
         list_member = M.EndpointDescription,
      }),
      TrafficDialPercentage = schema.new({
         id = id.from(_N, "EndpointGroup", "TrafficDialPercentage"),
         type = "float",
         name = "TrafficDialPercentage",
         target_id = prelude.Float.id,
      }),
      HealthCheckPort = schema.new({
         id = id.from(_N, "EndpointGroup", "HealthCheckPort"),
         type = "integer",
         name = "HealthCheckPort",
         target_id = prelude.Integer.id,
      }),
      HealthCheckProtocol = schema.new({
         id = id.from(_N, "EndpointGroup", "HealthCheckProtocol"),
         type = "string",
         name = "HealthCheckProtocol",
         target_id = prelude.String.id,
      }),
      HealthCheckPath = schema.new({
         id = id.from(_N, "EndpointGroup", "HealthCheckPath"),
         type = "string",
         name = "HealthCheckPath",
         target_id = prelude.String.id,
      }),
      HealthCheckIntervalSeconds = schema.new({
         id = id.from(_N, "EndpointGroup", "HealthCheckIntervalSeconds"),
         type = "integer",
         name = "HealthCheckIntervalSeconds",
         target_id = prelude.Integer.id,
      }),
      ThresholdCount = schema.new({
         id = id.from(_N, "EndpointGroup", "ThresholdCount"),
         type = "integer",
         name = "ThresholdCount",
         target_id = prelude.Integer.id,
      }),
      PortOverrides = schema.new({
         id = id.from(_N, "EndpointGroup", "PortOverrides"),
         type = "list",
         name = "PortOverrides",
         target_id = prelude.Document.id,
         list_member = M.PortOverride,
      }),
   },
})

M.CreateEndpointGroupOutput = schema.new({
   id = id.from(_N, "CreateEndpointGroupResponse"),
   type = "structure",
   members = {
      EndpointGroup = schema.new({
         id = id.from(_N, "CreateEndpointGroupOutput", "EndpointGroup"),
         type = "structure",
         name = "EndpointGroup",
         target_id = id.from(_N, "EndpointGroup"),
         target = M.EndpointGroup,
      }),
   },
})

M.CreateListenerInput = schema.new({
   id = id.from(_N, "CreateListenerRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "CreateListenerInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PortRanges = schema.new({
         id = id.from(_N, "CreateListenerInput", "PortRanges"),
         type = "list",
         name = "PortRanges",
         target_id = prelude.Document.id,
         list_member = M.PortRange,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Protocol = schema.new({
         id = id.from(_N, "CreateListenerInput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientAffinity = schema.new({
         id = id.from(_N, "CreateListenerInput", "ClientAffinity"),
         type = "string",
         name = "ClientAffinity",
         target_id = prelude.String.id,
      }),
      IdempotencyToken = schema.new({
         id = id.from(_N, "CreateListenerInput", "IdempotencyToken"),
         type = "string",
         name = "IdempotencyToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.Listener = schema.new({
   id = id.from(_N, "Listener"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "Listener", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
      }),
      PortRanges = schema.new({
         id = id.from(_N, "Listener", "PortRanges"),
         type = "list",
         name = "PortRanges",
         target_id = prelude.Document.id,
         list_member = M.PortRange,
      }),
      Protocol = schema.new({
         id = id.from(_N, "Listener", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      ClientAffinity = schema.new({
         id = id.from(_N, "Listener", "ClientAffinity"),
         type = "string",
         name = "ClientAffinity",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateListenerOutput = schema.new({
   id = id.from(_N, "CreateListenerResponse"),
   type = "structure",
   members = {
      Listener = schema.new({
         id = id.from(_N, "CreateListenerOutput", "Listener"),
         type = "structure",
         name = "Listener",
         target_id = id.from(_N, "Listener"),
         target = M.Listener,
      }),
   },
})

M.CrossAccountResource = schema.new({
   id = id.from(_N, "CrossAccountResource"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "CrossAccountResource", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      Cidr = schema.new({
         id = id.from(_N, "CrossAccountResource", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
      }),
      AttachmentArn = schema.new({
         id = id.from(_N, "CrossAccountResource", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomRoutingAcceleratorAttributes = schema.new({
   id = id.from(_N, "CustomRoutingAcceleratorAttributes"),
   type = "structure",
   members = {
      FlowLogsEnabled = schema.new({
         id = id.from(_N, "CustomRoutingAcceleratorAttributes", "FlowLogsEnabled"),
         type = "boolean",
         name = "FlowLogsEnabled",
         target_id = prelude.Boolean.id,
      }),
      FlowLogsS3Bucket = schema.new({
         id = id.from(_N, "CustomRoutingAcceleratorAttributes", "FlowLogsS3Bucket"),
         type = "string",
         name = "FlowLogsS3Bucket",
         target_id = prelude.String.id,
      }),
      FlowLogsS3Prefix = schema.new({
         id = id.from(_N, "CustomRoutingAcceleratorAttributes", "FlowLogsS3Prefix"),
         type = "string",
         name = "FlowLogsS3Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAcceleratorInput = schema.new({
   id = id.from(_N, "DeleteAcceleratorRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DeleteAcceleratorInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAcceleratorOutput = prelude.Unit

M.DeleteCrossAccountAttachmentInput = schema.new({
   id = id.from(_N, "DeleteCrossAccountAttachmentRequest"),
   type = "structure",
   members = {
      AttachmentArn = schema.new({
         id = id.from(_N, "DeleteCrossAccountAttachmentInput", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCrossAccountAttachmentOutput = prelude.Unit

M.DeleteCustomRoutingAcceleratorInput = schema.new({
   id = id.from(_N, "DeleteCustomRoutingAcceleratorRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DeleteCustomRoutingAcceleratorInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCustomRoutingAcceleratorOutput = prelude.Unit

M.DeleteCustomRoutingEndpointGroupInput = schema.new({
   id = id.from(_N, "DeleteCustomRoutingEndpointGroupRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "DeleteCustomRoutingEndpointGroupInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCustomRoutingEndpointGroupOutput = prelude.Unit

M.DeleteCustomRoutingListenerInput = schema.new({
   id = id.from(_N, "DeleteCustomRoutingListenerRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "DeleteCustomRoutingListenerInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCustomRoutingListenerOutput = prelude.Unit

M.DeleteEndpointGroupInput = schema.new({
   id = id.from(_N, "DeleteEndpointGroupRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "DeleteEndpointGroupInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEndpointGroupOutput = prelude.Unit

M.DeleteListenerInput = schema.new({
   id = id.from(_N, "DeleteListenerRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "DeleteListenerInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteListenerOutput = prelude.Unit

M.DenyCustomRoutingTrafficInput = schema.new({
   id = id.from(_N, "DenyCustomRoutingTrafficRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "DenyCustomRoutingTrafficInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointId = schema.new({
         id = id.from(_N, "DenyCustomRoutingTrafficInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationAddresses = schema.new({
         id = id.from(_N, "DenyCustomRoutingTrafficInput", "DestinationAddresses"),
         type = "list",
         name = "DestinationAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DestinationPorts = schema.new({
         id = id.from(_N, "DenyCustomRoutingTrafficInput", "DestinationPorts"),
         type = "list",
         name = "DestinationPorts",
         target_id = prelude.Document.id,
         list_member = prelude.Integer,
      }),
      DenyAllTrafficToEndpoint = schema.new({
         id = id.from(_N, "DenyCustomRoutingTrafficInput", "DenyAllTrafficToEndpoint"),
         type = "boolean",
         name = "DenyAllTrafficToEndpoint",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.DenyCustomRoutingTrafficOutput = prelude.Unit

M.DeprovisionByoipCidrInput = schema.new({
   id = id.from(_N, "DeprovisionByoipCidrRequest"),
   type = "structure",
   members = {
      Cidr = schema.new({
         id = id.from(_N, "DeprovisionByoipCidrInput", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeprovisionByoipCidrOutput = schema.new({
   id = id.from(_N, "DeprovisionByoipCidrResponse"),
   type = "structure",
   members = {
      ByoipCidr = schema.new({
         id = id.from(_N, "DeprovisionByoipCidrOutput", "ByoipCidr"),
         type = "structure",
         name = "ByoipCidr",
         target_id = id.from(_N, "ByoipCidr"),
         target = M.ByoipCidr,
      }),
   },
})

M.DescribeAcceleratorInput = schema.new({
   id = id.from(_N, "DescribeAcceleratorRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DescribeAcceleratorInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeAcceleratorOutput = schema.new({
   id = id.from(_N, "DescribeAcceleratorResponse"),
   type = "structure",
   members = {
      Accelerator = schema.new({
         id = id.from(_N, "DescribeAcceleratorOutput", "Accelerator"),
         type = "structure",
         name = "Accelerator",
         target_id = id.from(_N, "Accelerator"),
         target = M.Accelerator,
      }),
   },
})

M.DescribeAcceleratorAttributesInput = schema.new({
   id = id.from(_N, "DescribeAcceleratorAttributesRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DescribeAcceleratorAttributesInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeAcceleratorAttributesOutput = schema.new({
   id = id.from(_N, "DescribeAcceleratorAttributesResponse"),
   type = "structure",
   members = {
      AcceleratorAttributes = schema.new({
         id = id.from(_N, "DescribeAcceleratorAttributesOutput", "AcceleratorAttributes"),
         type = "structure",
         name = "AcceleratorAttributes",
         target_id = id.from(_N, "AcceleratorAttributes"),
         target = M.AcceleratorAttributes,
      }),
   },
})

M.DescribeCrossAccountAttachmentInput = schema.new({
   id = id.from(_N, "DescribeCrossAccountAttachmentRequest"),
   type = "structure",
   members = {
      AttachmentArn = schema.new({
         id = id.from(_N, "DescribeCrossAccountAttachmentInput", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeCrossAccountAttachmentOutput = schema.new({
   id = id.from(_N, "DescribeCrossAccountAttachmentResponse"),
   type = "structure",
   members = {
      CrossAccountAttachment = schema.new({
         id = id.from(_N, "DescribeCrossAccountAttachmentOutput", "CrossAccountAttachment"),
         type = "structure",
         name = "CrossAccountAttachment",
         target_id = id.from(_N, "Attachment"),
         target = M.Attachment,
      }),
   },
})

M.DescribeCustomRoutingAcceleratorInput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingAcceleratorRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DescribeCustomRoutingAcceleratorInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeCustomRoutingAcceleratorOutput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingAcceleratorResponse"),
   type = "structure",
   members = {
      Accelerator = schema.new({
         id = id.from(_N, "DescribeCustomRoutingAcceleratorOutput", "Accelerator"),
         type = "structure",
         name = "Accelerator",
         target_id = id.from(_N, "CustomRoutingAccelerator"),
         target = M.CustomRoutingAccelerator,
      }),
   },
})

M.DescribeCustomRoutingAcceleratorAttributesInput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingAcceleratorAttributesRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DescribeCustomRoutingAcceleratorAttributesInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeCustomRoutingAcceleratorAttributesOutput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingAcceleratorAttributesResponse"),
   type = "structure",
   members = {
      AcceleratorAttributes = schema.new({
         id = id.from(_N, "DescribeCustomRoutingAcceleratorAttributesOutput", "AcceleratorAttributes"),
         type = "structure",
         name = "AcceleratorAttributes",
         target_id = id.from(_N, "CustomRoutingAcceleratorAttributes"),
         target = M.CustomRoutingAcceleratorAttributes,
      }),
   },
})

M.DescribeCustomRoutingEndpointGroupInput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingEndpointGroupRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "DescribeCustomRoutingEndpointGroupInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeCustomRoutingEndpointGroupOutput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingEndpointGroupResponse"),
   type = "structure",
   members = {
      EndpointGroup = schema.new({
         id = id.from(_N, "DescribeCustomRoutingEndpointGroupOutput", "EndpointGroup"),
         type = "structure",
         name = "EndpointGroup",
         target_id = id.from(_N, "CustomRoutingEndpointGroup"),
         target = M.CustomRoutingEndpointGroup,
      }),
   },
})

M.DescribeCustomRoutingListenerInput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingListenerRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "DescribeCustomRoutingListenerInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeCustomRoutingListenerOutput = schema.new({
   id = id.from(_N, "DescribeCustomRoutingListenerResponse"),
   type = "structure",
   members = {
      Listener = schema.new({
         id = id.from(_N, "DescribeCustomRoutingListenerOutput", "Listener"),
         type = "structure",
         name = "Listener",
         target_id = id.from(_N, "CustomRoutingListener"),
         target = M.CustomRoutingListener,
      }),
   },
})

M.DescribeEndpointGroupInput = schema.new({
   id = id.from(_N, "DescribeEndpointGroupRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "DescribeEndpointGroupInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeEndpointGroupOutput = schema.new({
   id = id.from(_N, "DescribeEndpointGroupResponse"),
   type = "structure",
   members = {
      EndpointGroup = schema.new({
         id = id.from(_N, "DescribeEndpointGroupOutput", "EndpointGroup"),
         type = "structure",
         name = "EndpointGroup",
         target_id = id.from(_N, "EndpointGroup"),
         target = M.EndpointGroup,
      }),
   },
})

M.DescribeListenerInput = schema.new({
   id = id.from(_N, "DescribeListenerRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "DescribeListenerInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeListenerOutput = schema.new({
   id = id.from(_N, "DescribeListenerResponse"),
   type = "structure",
   members = {
      Listener = schema.new({
         id = id.from(_N, "DescribeListenerOutput", "Listener"),
         type = "structure",
         name = "Listener",
         target_id = id.from(_N, "Listener"),
         target = M.Listener,
      }),
   },
})

M.SocketAddress = schema.new({
   id = id.from(_N, "SocketAddress"),
   type = "structure",
   members = {
      IpAddress = schema.new({
         id = id.from(_N, "SocketAddress", "IpAddress"),
         type = "string",
         name = "IpAddress",
         target_id = prelude.String.id,
      }),
      Port = schema.new({
         id = id.from(_N, "SocketAddress", "Port"),
         type = "integer",
         name = "Port",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DestinationPortMapping = schema.new({
   id = id.from(_N, "DestinationPortMapping"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "DestinationPortMapping", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
      }),
      AcceleratorSocketAddresses = schema.new({
         id = id.from(_N, "DestinationPortMapping", "AcceleratorSocketAddresses"),
         type = "list",
         name = "AcceleratorSocketAddresses",
         target_id = prelude.Document.id,
         list_member = M.SocketAddress,
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "DestinationPortMapping", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
      }),
      EndpointId = schema.new({
         id = id.from(_N, "DestinationPortMapping", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      EndpointGroupRegion = schema.new({
         id = id.from(_N, "DestinationPortMapping", "EndpointGroupRegion"),
         type = "string",
         name = "EndpointGroupRegion",
         target_id = prelude.String.id,
      }),
      DestinationSocketAddress = schema.new({
         id = id.from(_N, "DestinationPortMapping", "DestinationSocketAddress"),
         type = "structure",
         name = "DestinationSocketAddress",
         target_id = id.from(_N, "SocketAddress"),
         target = M.SocketAddress,
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "DestinationPortMapping", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      DestinationTrafficState = schema.new({
         id = id.from(_N, "DestinationPortMapping", "DestinationTrafficState"),
         type = "string",
         name = "DestinationTrafficState",
         target_id = prelude.String.id,
      }),
   },
})

M.EndpointIdentifier = schema.new({
   id = id.from(_N, "EndpointIdentifier"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "EndpointIdentifier", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientIPPreservationEnabled = schema.new({
         id = id.from(_N, "EndpointIdentifier", "ClientIPPreservationEnabled"),
         type = "boolean",
         name = "ClientIPPreservationEnabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.EndpointNotFoundException = schema.new({
   id = id.from(_N, "EndpointNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "EndpointNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidNextTokenException = schema.new({
   id = id.from(_N, "InvalidNextTokenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidNextTokenException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAcceleratorsInput = schema.new({
   id = id.from(_N, "ListAcceleratorsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListAcceleratorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAcceleratorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAcceleratorsOutput = schema.new({
   id = id.from(_N, "ListAcceleratorsResponse"),
   type = "structure",
   members = {
      Accelerators = schema.new({
         id = id.from(_N, "ListAcceleratorsOutput", "Accelerators"),
         type = "list",
         name = "Accelerators",
         target_id = prelude.Document.id,
         list_member = M.Accelerator,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAcceleratorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListByoipCidrsInput = schema.new({
   id = id.from(_N, "ListByoipCidrsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListByoipCidrsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListByoipCidrsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListByoipCidrsOutput = schema.new({
   id = id.from(_N, "ListByoipCidrsResponse"),
   type = "structure",
   members = {
      ByoipCidrs = schema.new({
         id = id.from(_N, "ListByoipCidrsOutput", "ByoipCidrs"),
         type = "list",
         name = "ByoipCidrs",
         target_id = prelude.Document.id,
         list_member = M.ByoipCidr,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListByoipCidrsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCrossAccountAttachmentsInput = schema.new({
   id = id.from(_N, "ListCrossAccountAttachmentsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListCrossAccountAttachmentsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCrossAccountAttachmentsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCrossAccountAttachmentsOutput = schema.new({
   id = id.from(_N, "ListCrossAccountAttachmentsResponse"),
   type = "structure",
   members = {
      CrossAccountAttachments = schema.new({
         id = id.from(_N, "ListCrossAccountAttachmentsOutput", "CrossAccountAttachments"),
         type = "list",
         name = "CrossAccountAttachments",
         target_id = prelude.Document.id,
         list_member = M.Attachment,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCrossAccountAttachmentsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCrossAccountResourceAccountsInput = schema.new({
   id = id.from(_N, "ListCrossAccountResourceAccountsRequest"),
   type = "structure",
})

M.ListCrossAccountResourceAccountsOutput = schema.new({
   id = id.from(_N, "ListCrossAccountResourceAccountsResponse"),
   type = "structure",
   members = {
      ResourceOwnerAwsAccountIds = schema.new({
         id = id.from(_N, "ListCrossAccountResourceAccountsOutput", "ResourceOwnerAwsAccountIds"),
         type = "list",
         name = "ResourceOwnerAwsAccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListCrossAccountResourcesInput = schema.new({
   id = id.from(_N, "ListCrossAccountResourcesRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "ListCrossAccountResourcesInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
      }),
      ResourceOwnerAwsAccountId = schema.new({
         id = id.from(_N, "ListCrossAccountResourcesInput", "ResourceOwnerAwsAccountId"),
         type = "string",
         name = "ResourceOwnerAwsAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCrossAccountResourcesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCrossAccountResourcesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCrossAccountResourcesOutput = schema.new({
   id = id.from(_N, "ListCrossAccountResourcesResponse"),
   type = "structure",
   members = {
      CrossAccountResources = schema.new({
         id = id.from(_N, "ListCrossAccountResourcesOutput", "CrossAccountResources"),
         type = "list",
         name = "CrossAccountResources",
         target_id = prelude.Document.id,
         list_member = M.CrossAccountResource,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCrossAccountResourcesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingAcceleratorsInput = schema.new({
   id = id.from(_N, "ListCustomRoutingAcceleratorsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomRoutingAcceleratorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingAcceleratorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingAcceleratorsOutput = schema.new({
   id = id.from(_N, "ListCustomRoutingAcceleratorsResponse"),
   type = "structure",
   members = {
      Accelerators = schema.new({
         id = id.from(_N, "ListCustomRoutingAcceleratorsOutput", "Accelerators"),
         type = "list",
         name = "Accelerators",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingAccelerator,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingAcceleratorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingEndpointGroupsInput = schema.new({
   id = id.from(_N, "ListCustomRoutingEndpointGroupsRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "ListCustomRoutingEndpointGroupsInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomRoutingEndpointGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingEndpointGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingEndpointGroupsOutput = schema.new({
   id = id.from(_N, "ListCustomRoutingEndpointGroupsResponse"),
   type = "structure",
   members = {
      EndpointGroups = schema.new({
         id = id.from(_N, "ListCustomRoutingEndpointGroupsOutput", "EndpointGroups"),
         type = "list",
         name = "EndpointGroups",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingEndpointGroup,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingEndpointGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingListenersInput = schema.new({
   id = id.from(_N, "ListCustomRoutingListenersRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "ListCustomRoutingListenersInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomRoutingListenersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingListenersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingListenersOutput = schema.new({
   id = id.from(_N, "ListCustomRoutingListenersResponse"),
   type = "structure",
   members = {
      Listeners = schema.new({
         id = id.from(_N, "ListCustomRoutingListenersOutput", "Listeners"),
         type = "list",
         name = "Listeners",
         target_id = prelude.Document.id,
         list_member = M.CustomRoutingListener,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingListenersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingPortMappingsInput = schema.new({
   id = id.from(_N, "ListCustomRoutingPortMappingsRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PortMapping = schema.new({
   id = id.from(_N, "PortMapping"),
   type = "structure",
   members = {
      AcceleratorPort = schema.new({
         id = id.from(_N, "PortMapping", "AcceleratorPort"),
         type = "integer",
         name = "AcceleratorPort",
         target_id = prelude.Integer.id,
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "PortMapping", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
      }),
      EndpointId = schema.new({
         id = id.from(_N, "PortMapping", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
      }),
      DestinationSocketAddress = schema.new({
         id = id.from(_N, "PortMapping", "DestinationSocketAddress"),
         type = "structure",
         name = "DestinationSocketAddress",
         target_id = id.from(_N, "SocketAddress"),
         target = M.SocketAddress,
      }),
      Protocols = schema.new({
         id = id.from(_N, "PortMapping", "Protocols"),
         type = "list",
         name = "Protocols",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DestinationTrafficState = schema.new({
         id = id.from(_N, "PortMapping", "DestinationTrafficState"),
         type = "string",
         name = "DestinationTrafficState",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingPortMappingsOutput = schema.new({
   id = id.from(_N, "ListCustomRoutingPortMappingsResponse"),
   type = "structure",
   members = {
      PortMappings = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsOutput", "PortMappings"),
         type = "list",
         name = "PortMappings",
         target_id = prelude.Document.id,
         list_member = M.PortMapping,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingPortMappingsByDestinationInput = schema.new({
   id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationRequest"),
   type = "structure",
   members = {
      EndpointId = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationInput", "EndpointId"),
         type = "string",
         name = "EndpointId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationAddress = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationInput", "DestinationAddress"),
         type = "string",
         name = "DestinationAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomRoutingPortMappingsByDestinationOutput = schema.new({
   id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationResponse"),
   type = "structure",
   members = {
      DestinationPortMappings = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationOutput", "DestinationPortMappings"),
         type = "list",
         name = "DestinationPortMappings",
         target_id = prelude.Document.id,
         list_member = M.DestinationPortMapping,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomRoutingPortMappingsByDestinationOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEndpointGroupsInput = schema.new({
   id = id.from(_N, "ListEndpointGroupsRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "ListEndpointGroupsInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEndpointGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEndpointGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEndpointGroupsOutput = schema.new({
   id = id.from(_N, "ListEndpointGroupsResponse"),
   type = "structure",
   members = {
      EndpointGroups = schema.new({
         id = id.from(_N, "ListEndpointGroupsOutput", "EndpointGroups"),
         type = "list",
         name = "EndpointGroups",
         target_id = prelude.Document.id,
         list_member = M.EndpointGroup,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEndpointGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListListenersInput = schema.new({
   id = id.from(_N, "ListListenersRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "ListListenersInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListListenersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListListenersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListListenersOutput = schema.new({
   id = id.from(_N, "ListListenersResponse"),
   type = "structure",
   members = {
      Listeners = schema.new({
         id = id.from(_N, "ListListenersOutput", "Listeners"),
         type = "list",
         name = "Listeners",
         target_id = prelude.Document.id,
         list_member = M.Listener,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListListenersOutput", "NextToken"),
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
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ProvisionByoipCidrInput = schema.new({
   id = id.from(_N, "ProvisionByoipCidrRequest"),
   type = "structure",
   members = {
      Cidr = schema.new({
         id = id.from(_N, "ProvisionByoipCidrInput", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CidrAuthorizationContext = schema.new({
         id = id.from(_N, "ProvisionByoipCidrInput", "CidrAuthorizationContext"),
         type = "structure",
         name = "CidrAuthorizationContext",
         target_id = id.from(_N, "CidrAuthorizationContext"),
         target = M.CidrAuthorizationContext,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ProvisionByoipCidrOutput = schema.new({
   id = id.from(_N, "ProvisionByoipCidrResponse"),
   type = "structure",
   members = {
      ByoipCidr = schema.new({
         id = id.from(_N, "ProvisionByoipCidrOutput", "ByoipCidr"),
         type = "structure",
         name = "ByoipCidr",
         target_id = id.from(_N, "ByoipCidr"),
         target = M.ByoipCidr,
      }),
   },
})

M.RemoveCustomRoutingEndpointsInput = schema.new({
   id = id.from(_N, "RemoveCustomRoutingEndpointsRequest"),
   type = "structure",
   members = {
      EndpointIds = schema.new({
         id = id.from(_N, "RemoveCustomRoutingEndpointsInput", "EndpointIds"),
         type = "list",
         name = "EndpointIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "RemoveCustomRoutingEndpointsInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RemoveCustomRoutingEndpointsOutput = prelude.Unit

M.RemoveEndpointsInput = schema.new({
   id = id.from(_N, "RemoveEndpointsRequest"),
   type = "structure",
   members = {
      EndpointIdentifiers = schema.new({
         id = id.from(_N, "RemoveEndpointsInput", "EndpointIdentifiers"),
         type = "list",
         name = "EndpointIdentifiers",
         target_id = prelude.Document.id,
         list_member = M.EndpointIdentifier,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointGroupArn = schema.new({
         id = id.from(_N, "RemoveEndpointsInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RemoveEndpointsOutput = prelude.Unit

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
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "TagResourceInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
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
      ResourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
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
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateAcceleratorInput = schema.new({
   id = id.from(_N, "UpdateAcceleratorRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "UpdateAcceleratorInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateAcceleratorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "UpdateAcceleratorInput", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      IpAddresses = schema.new({
         id = id.from(_N, "UpdateAcceleratorInput", "IpAddresses"),
         type = "list",
         name = "IpAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Enabled = schema.new({
         id = id.from(_N, "UpdateAcceleratorInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateAcceleratorOutput = schema.new({
   id = id.from(_N, "UpdateAcceleratorResponse"),
   type = "structure",
   members = {
      Accelerator = schema.new({
         id = id.from(_N, "UpdateAcceleratorOutput", "Accelerator"),
         type = "structure",
         name = "Accelerator",
         target_id = id.from(_N, "Accelerator"),
         target = M.Accelerator,
      }),
   },
})

M.UpdateAcceleratorAttributesInput = schema.new({
   id = id.from(_N, "UpdateAcceleratorAttributesRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "UpdateAcceleratorAttributesInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FlowLogsEnabled = schema.new({
         id = id.from(_N, "UpdateAcceleratorAttributesInput", "FlowLogsEnabled"),
         type = "boolean",
         name = "FlowLogsEnabled",
         target_id = prelude.Boolean.id,
      }),
      FlowLogsS3Bucket = schema.new({
         id = id.from(_N, "UpdateAcceleratorAttributesInput", "FlowLogsS3Bucket"),
         type = "string",
         name = "FlowLogsS3Bucket",
         target_id = prelude.String.id,
      }),
      FlowLogsS3Prefix = schema.new({
         id = id.from(_N, "UpdateAcceleratorAttributesInput", "FlowLogsS3Prefix"),
         type = "string",
         name = "FlowLogsS3Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateAcceleratorAttributesOutput = schema.new({
   id = id.from(_N, "UpdateAcceleratorAttributesResponse"),
   type = "structure",
   members = {
      AcceleratorAttributes = schema.new({
         id = id.from(_N, "UpdateAcceleratorAttributesOutput", "AcceleratorAttributes"),
         type = "structure",
         name = "AcceleratorAttributes",
         target_id = id.from(_N, "AcceleratorAttributes"),
         target = M.AcceleratorAttributes,
      }),
   },
})

M.UpdateCrossAccountAttachmentInput = schema.new({
   id = id.from(_N, "UpdateCrossAccountAttachmentRequest"),
   type = "structure",
   members = {
      AttachmentArn = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentInput", "AttachmentArn"),
         type = "string",
         name = "AttachmentArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      AddPrincipals = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentInput", "AddPrincipals"),
         type = "list",
         name = "AddPrincipals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      RemovePrincipals = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentInput", "RemovePrincipals"),
         type = "list",
         name = "RemovePrincipals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AddResources = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentInput", "AddResources"),
         type = "list",
         name = "AddResources",
         target_id = prelude.Document.id,
         list_member = M.Resource,
      }),
      RemoveResources = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentInput", "RemoveResources"),
         type = "list",
         name = "RemoveResources",
         target_id = prelude.Document.id,
         list_member = M.Resource,
      }),
   },
})

M.UpdateCrossAccountAttachmentOutput = schema.new({
   id = id.from(_N, "UpdateCrossAccountAttachmentResponse"),
   type = "structure",
   members = {
      CrossAccountAttachment = schema.new({
         id = id.from(_N, "UpdateCrossAccountAttachmentOutput", "CrossAccountAttachment"),
         type = "structure",
         name = "CrossAccountAttachment",
         target_id = id.from(_N, "Attachment"),
         target = M.Attachment,
      }),
   },
})

M.UpdateCustomRoutingAcceleratorInput = schema.new({
   id = id.from(_N, "UpdateCustomRoutingAcceleratorRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      IpAddressType = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorInput", "IpAddressType"),
         type = "string",
         name = "IpAddressType",
         target_id = prelude.String.id,
      }),
      IpAddresses = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorInput", "IpAddresses"),
         type = "list",
         name = "IpAddresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Enabled = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorInput", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateCustomRoutingAcceleratorOutput = schema.new({
   id = id.from(_N, "UpdateCustomRoutingAcceleratorResponse"),
   type = "structure",
   members = {
      Accelerator = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorOutput", "Accelerator"),
         type = "structure",
         name = "Accelerator",
         target_id = id.from(_N, "CustomRoutingAccelerator"),
         target = M.CustomRoutingAccelerator,
      }),
   },
})

M.UpdateCustomRoutingAcceleratorAttributesInput = schema.new({
   id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesRequest"),
   type = "structure",
   members = {
      AcceleratorArn = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesInput", "AcceleratorArn"),
         type = "string",
         name = "AcceleratorArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FlowLogsEnabled = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesInput", "FlowLogsEnabled"),
         type = "boolean",
         name = "FlowLogsEnabled",
         target_id = prelude.Boolean.id,
      }),
      FlowLogsS3Bucket = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesInput", "FlowLogsS3Bucket"),
         type = "string",
         name = "FlowLogsS3Bucket",
         target_id = prelude.String.id,
      }),
      FlowLogsS3Prefix = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesInput", "FlowLogsS3Prefix"),
         type = "string",
         name = "FlowLogsS3Prefix",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateCustomRoutingAcceleratorAttributesOutput = schema.new({
   id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesResponse"),
   type = "structure",
   members = {
      AcceleratorAttributes = schema.new({
         id = id.from(_N, "UpdateCustomRoutingAcceleratorAttributesOutput", "AcceleratorAttributes"),
         type = "structure",
         name = "AcceleratorAttributes",
         target_id = id.from(_N, "CustomRoutingAcceleratorAttributes"),
         target = M.CustomRoutingAcceleratorAttributes,
      }),
   },
})

M.UpdateCustomRoutingListenerInput = schema.new({
   id = id.from(_N, "UpdateCustomRoutingListenerRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "UpdateCustomRoutingListenerInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PortRanges = schema.new({
         id = id.from(_N, "UpdateCustomRoutingListenerInput", "PortRanges"),
         type = "list",
         name = "PortRanges",
         target_id = prelude.Document.id,
         list_member = M.PortRange,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCustomRoutingListenerOutput = schema.new({
   id = id.from(_N, "UpdateCustomRoutingListenerResponse"),
   type = "structure",
   members = {
      Listener = schema.new({
         id = id.from(_N, "UpdateCustomRoutingListenerOutput", "Listener"),
         type = "structure",
         name = "Listener",
         target_id = id.from(_N, "CustomRoutingListener"),
         target = M.CustomRoutingListener,
      }),
   },
})

M.UpdateEndpointGroupInput = schema.new({
   id = id.from(_N, "UpdateEndpointGroupRequest"),
   type = "structure",
   members = {
      EndpointGroupArn = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "EndpointGroupArn"),
         type = "string",
         name = "EndpointGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndpointConfigurations = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "EndpointConfigurations"),
         type = "list",
         name = "EndpointConfigurations",
         target_id = prelude.Document.id,
         list_member = M.EndpointConfiguration,
      }),
      TrafficDialPercentage = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "TrafficDialPercentage"),
         type = "float",
         name = "TrafficDialPercentage",
         target_id = prelude.Float.id,
      }),
      HealthCheckPort = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "HealthCheckPort"),
         type = "integer",
         name = "HealthCheckPort",
         target_id = prelude.Integer.id,
      }),
      HealthCheckProtocol = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "HealthCheckProtocol"),
         type = "string",
         name = "HealthCheckProtocol",
         target_id = prelude.String.id,
      }),
      HealthCheckPath = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "HealthCheckPath"),
         type = "string",
         name = "HealthCheckPath",
         target_id = prelude.String.id,
      }),
      HealthCheckIntervalSeconds = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "HealthCheckIntervalSeconds"),
         type = "integer",
         name = "HealthCheckIntervalSeconds",
         target_id = prelude.Integer.id,
      }),
      ThresholdCount = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "ThresholdCount"),
         type = "integer",
         name = "ThresholdCount",
         target_id = prelude.Integer.id,
      }),
      PortOverrides = schema.new({
         id = id.from(_N, "UpdateEndpointGroupInput", "PortOverrides"),
         type = "list",
         name = "PortOverrides",
         target_id = prelude.Document.id,
         list_member = M.PortOverride,
      }),
   },
})

M.UpdateEndpointGroupOutput = schema.new({
   id = id.from(_N, "UpdateEndpointGroupResponse"),
   type = "structure",
   members = {
      EndpointGroup = schema.new({
         id = id.from(_N, "UpdateEndpointGroupOutput", "EndpointGroup"),
         type = "structure",
         name = "EndpointGroup",
         target_id = id.from(_N, "EndpointGroup"),
         target = M.EndpointGroup,
      }),
   },
})

M.UpdateListenerInput = schema.new({
   id = id.from(_N, "UpdateListenerRequest"),
   type = "structure",
   members = {
      ListenerArn = schema.new({
         id = id.from(_N, "UpdateListenerInput", "ListenerArn"),
         type = "string",
         name = "ListenerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PortRanges = schema.new({
         id = id.from(_N, "UpdateListenerInput", "PortRanges"),
         type = "list",
         name = "PortRanges",
         target_id = prelude.Document.id,
         list_member = M.PortRange,
      }),
      Protocol = schema.new({
         id = id.from(_N, "UpdateListenerInput", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      ClientAffinity = schema.new({
         id = id.from(_N, "UpdateListenerInput", "ClientAffinity"),
         type = "string",
         name = "ClientAffinity",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateListenerOutput = schema.new({
   id = id.from(_N, "UpdateListenerResponse"),
   type = "structure",
   members = {
      Listener = schema.new({
         id = id.from(_N, "UpdateListenerOutput", "Listener"),
         type = "structure",
         name = "Listener",
         target_id = id.from(_N, "Listener"),
         target = M.Listener,
      }),
   },
})

M.WithdrawByoipCidrInput = schema.new({
   id = id.from(_N, "WithdrawByoipCidrRequest"),
   type = "structure",
   members = {
      Cidr = schema.new({
         id = id.from(_N, "WithdrawByoipCidrInput", "Cidr"),
         type = "string",
         name = "Cidr",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.WithdrawByoipCidrOutput = schema.new({
   id = id.from(_N, "WithdrawByoipCidrResponse"),
   type = "structure",
   members = {
      ByoipCidr = schema.new({
         id = id.from(_N, "WithdrawByoipCidrOutput", "ByoipCidr"),
         type = "structure",
         name = "ByoipCidr",
         target_id = id.from(_N, "ByoipCidr"),
         target = M.ByoipCidr,
      }),
   },
})


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

M.Service = schema.service({
   id = id.from("com.amazonaws.globalaccelerator", "GlobalAccelerator_V20180706"),
   version = "2018-08-08",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddCustomRoutingEndpoints = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "AddCustomRoutingEndpoints"),
   input = M.AddCustomRoutingEndpointsInput,
   output = M.AddCustomRoutingEndpointsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AddEndpoints = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "AddEndpoints"),
   input = M.AddEndpointsInput,
   output = M.AddEndpointsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AdvertiseByoipCidr = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "AdvertiseByoipCidr"),
   input = M.AdvertiseByoipCidrInput,
   output = M.AdvertiseByoipCidrOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AllowCustomRoutingTraffic = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "AllowCustomRoutingTraffic"),
   input = M.AllowCustomRoutingTrafficInput,
   output = M.AllowCustomRoutingTrafficOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateAccelerator"),
   input = M.CreateAcceleratorInput,
   output = M.CreateAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCrossAccountAttachment = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateCrossAccountAttachment"),
   input = M.CreateCrossAccountAttachmentInput,
   output = M.CreateCrossAccountAttachmentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCustomRoutingAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateCustomRoutingAccelerator"),
   input = M.CreateCustomRoutingAcceleratorInput,
   output = M.CreateCustomRoutingAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCustomRoutingEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateCustomRoutingEndpointGroup"),
   input = M.CreateCustomRoutingEndpointGroupInput,
   output = M.CreateCustomRoutingEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCustomRoutingListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateCustomRoutingListener"),
   input = M.CreateCustomRoutingListenerInput,
   output = M.CreateCustomRoutingListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateEndpointGroup"),
   input = M.CreateEndpointGroupInput,
   output = M.CreateEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "CreateListener"),
   input = M.CreateListenerInput,
   output = M.CreateListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteAccelerator"),
   input = M.DeleteAcceleratorInput,
   output = M.DeleteAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCrossAccountAttachment = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteCrossAccountAttachment"),
   input = M.DeleteCrossAccountAttachmentInput,
   output = M.DeleteCrossAccountAttachmentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomRoutingAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteCustomRoutingAccelerator"),
   input = M.DeleteCustomRoutingAcceleratorInput,
   output = M.DeleteCustomRoutingAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomRoutingEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteCustomRoutingEndpointGroup"),
   input = M.DeleteCustomRoutingEndpointGroupInput,
   output = M.DeleteCustomRoutingEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomRoutingListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteCustomRoutingListener"),
   input = M.DeleteCustomRoutingListenerInput,
   output = M.DeleteCustomRoutingListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteEndpointGroup"),
   input = M.DeleteEndpointGroupInput,
   output = M.DeleteEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeleteListener"),
   input = M.DeleteListenerInput,
   output = M.DeleteListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DenyCustomRoutingTraffic = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DenyCustomRoutingTraffic"),
   input = M.DenyCustomRoutingTrafficInput,
   output = M.DenyCustomRoutingTrafficOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeprovisionByoipCidr = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DeprovisionByoipCidr"),
   input = M.DeprovisionByoipCidrInput,
   output = M.DeprovisionByoipCidrOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeAccelerator"),
   input = M.DescribeAcceleratorInput,
   output = M.DescribeAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAcceleratorAttributes = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeAcceleratorAttributes"),
   input = M.DescribeAcceleratorAttributesInput,
   output = M.DescribeAcceleratorAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCrossAccountAttachment = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeCrossAccountAttachment"),
   input = M.DescribeCrossAccountAttachmentInput,
   output = M.DescribeCrossAccountAttachmentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomRoutingAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeCustomRoutingAccelerator"),
   input = M.DescribeCustomRoutingAcceleratorInput,
   output = M.DescribeCustomRoutingAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomRoutingAcceleratorAttributes = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeCustomRoutingAcceleratorAttributes"),
   input = M.DescribeCustomRoutingAcceleratorAttributesInput,
   output = M.DescribeCustomRoutingAcceleratorAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomRoutingEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeCustomRoutingEndpointGroup"),
   input = M.DescribeCustomRoutingEndpointGroupInput,
   output = M.DescribeCustomRoutingEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomRoutingListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeCustomRoutingListener"),
   input = M.DescribeCustomRoutingListenerInput,
   output = M.DescribeCustomRoutingListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeEndpointGroup"),
   input = M.DescribeEndpointGroupInput,
   output = M.DescribeEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "DescribeListener"),
   input = M.DescribeListenerInput,
   output = M.DescribeListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccelerators = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListAccelerators"),
   input = M.ListAcceleratorsInput,
   output = M.ListAcceleratorsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListByoipCidrs = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListByoipCidrs"),
   input = M.ListByoipCidrsInput,
   output = M.ListByoipCidrsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCrossAccountAttachments = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCrossAccountAttachments"),
   input = M.ListCrossAccountAttachmentsInput,
   output = M.ListCrossAccountAttachmentsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCrossAccountResourceAccounts = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCrossAccountResourceAccounts"),
   input = M.ListCrossAccountResourceAccountsInput,
   output = M.ListCrossAccountResourceAccountsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCrossAccountResources = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCrossAccountResources"),
   input = M.ListCrossAccountResourcesInput,
   output = M.ListCrossAccountResourcesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomRoutingAccelerators = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCustomRoutingAccelerators"),
   input = M.ListCustomRoutingAcceleratorsInput,
   output = M.ListCustomRoutingAcceleratorsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomRoutingEndpointGroups = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCustomRoutingEndpointGroups"),
   input = M.ListCustomRoutingEndpointGroupsInput,
   output = M.ListCustomRoutingEndpointGroupsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomRoutingListeners = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCustomRoutingListeners"),
   input = M.ListCustomRoutingListenersInput,
   output = M.ListCustomRoutingListenersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomRoutingPortMappings = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCustomRoutingPortMappings"),
   input = M.ListCustomRoutingPortMappingsInput,
   output = M.ListCustomRoutingPortMappingsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomRoutingPortMappingsByDestination = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListCustomRoutingPortMappingsByDestination"),
   input = M.ListCustomRoutingPortMappingsByDestinationInput,
   output = M.ListCustomRoutingPortMappingsByDestinationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEndpointGroups = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListEndpointGroups"),
   input = M.ListEndpointGroupsInput,
   output = M.ListEndpointGroupsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListListeners = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListListeners"),
   input = M.ListListenersInput,
   output = M.ListListenersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ProvisionByoipCidr = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "ProvisionByoipCidr"),
   input = M.ProvisionByoipCidrInput,
   output = M.ProvisionByoipCidrOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveCustomRoutingEndpoints = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "RemoveCustomRoutingEndpoints"),
   input = M.RemoveCustomRoutingEndpointsInput,
   output = M.RemoveCustomRoutingEndpointsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RemoveEndpoints = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "RemoveEndpoints"),
   input = M.RemoveEndpointsInput,
   output = M.RemoveEndpointsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateAccelerator"),
   input = M.UpdateAcceleratorInput,
   output = M.UpdateAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAcceleratorAttributes = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateAcceleratorAttributes"),
   input = M.UpdateAcceleratorAttributesInput,
   output = M.UpdateAcceleratorAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCrossAccountAttachment = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateCrossAccountAttachment"),
   input = M.UpdateCrossAccountAttachmentInput,
   output = M.UpdateCrossAccountAttachmentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCustomRoutingAccelerator = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateCustomRoutingAccelerator"),
   input = M.UpdateCustomRoutingAcceleratorInput,
   output = M.UpdateCustomRoutingAcceleratorOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCustomRoutingAcceleratorAttributes = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateCustomRoutingAcceleratorAttributes"),
   input = M.UpdateCustomRoutingAcceleratorAttributesInput,
   output = M.UpdateCustomRoutingAcceleratorAttributesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCustomRoutingListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateCustomRoutingListener"),
   input = M.UpdateCustomRoutingListenerInput,
   output = M.UpdateCustomRoutingListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEndpointGroup = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateEndpointGroup"),
   input = M.UpdateEndpointGroupInput,
   output = M.UpdateEndpointGroupOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateListener = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "UpdateListener"),
   input = M.UpdateListenerInput,
   output = M.UpdateListenerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.WithdrawByoipCidr = schema.operation({
   id = id.from("com.amazonaws.globalaccelerator", "WithdrawByoipCidr"),
   input = M.WithdrawByoipCidrInput,
   output = M.WithdrawByoipCidrOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
