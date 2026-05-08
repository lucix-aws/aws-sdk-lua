

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.servicecatalogappregistry"

local M = {}

M.Options = schema.new({ type = "list", list_member = prelude.String })

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ApplicationTagDefinition = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.GetAssociatedResourceFilter = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationSummaries = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.AttributeGroupIds = schema.new({ type = "list", list_member = prelude.String })

M.Resources = schema.new({ type = "list", list_member = M.ResourceInfo })

M.AttributeGroupSummaries = schema.new({ type = "list", list_member = M.AttributeGroupSummary })

M.AttributeGroupDetailsList = schema.new({ type = "list", list_member = M.AttributeGroupDetails })

M.TagKeys = schema.new({ type = "list", list_member = prelude.String })

M.ResourcesList = schema.new({ type = "list", list_member = M.ResourcesListItem })

M.Application = schema.new({
   id = id.from(_N, "Application"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "Application", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "Application", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "Application", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "Application", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "Application", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      lastUpdateTime = schema.new({
         id = id.from(_N, "Application", "lastUpdateTime"),
         type = "timestamp",
         name = "lastUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "Application", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      applicationTag = schema.new({
         id = id.from(_N, "Application", "applicationTag"),
         type = "map",
         name = "applicationTag",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ApplicationSummary = schema.new({
   id = id.from(_N, "ApplicationSummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "ApplicationSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "ApplicationSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "ApplicationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "ApplicationSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      lastUpdateTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "lastUpdateTime"),
         type = "timestamp",
         name = "lastUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ResourcesListItem = schema.new({
   id = id.from(_N, "ResourcesListItem"),
   type = "structure",
   members = {
      resourceArn = schema.new({
         id = id.from(_N, "ResourcesListItem", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "ResourcesListItem", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "ResourcesListItem", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourcesListItem", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.ApplicationTagResult = schema.new({
   id = id.from(_N, "ApplicationTagResult"),
   type = "structure",
   members = {
      applicationTagStatus = schema.new({
         id = id.from(_N, "ApplicationTagResult", "applicationTagStatus"),
         type = "string",
         name = "applicationTagStatus",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "ApplicationTagResult", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
      resources = schema.new({
         id = id.from(_N, "ApplicationTagResult", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = M.ResourcesListItem,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ApplicationTagResult", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.TagQueryConfiguration = schema.new({
   id = id.from(_N, "TagQueryConfiguration"),
   type = "structure",
   members = {
      tagKey = schema.new({
         id = id.from(_N, "TagQueryConfiguration", "tagKey"),
         type = "string",
         name = "tagKey",
         target_id = prelude.String.id,
      }),
   },
})

M.AppRegistryConfiguration = schema.new({
   id = id.from(_N, "AppRegistryConfiguration"),
   type = "structure",
   members = {
      tagQueryConfiguration = schema.new({
         id = id.from(_N, "AppRegistryConfiguration", "tagQueryConfiguration"),
         type = "structure",
         name = "tagQueryConfiguration",
         target_id = id.from(_N, "TagQueryConfiguration"),
         target = M.TagQueryConfiguration,
      }),
   },
})

M.AssociateAttributeGroupInput = schema.new({
   id = id.from(_N, "AssociateAttributeGroupRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "AssociateAttributeGroupInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      attributeGroup = schema.new({
         id = id.from(_N, "AssociateAttributeGroupInput", "attributeGroup"),
         type = "string",
         name = "attributeGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.AssociateAttributeGroupOutput = schema.new({
   id = id.from(_N, "AssociateAttributeGroupResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "AssociateAttributeGroupOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
      attributeGroupArn = schema.new({
         id = id.from(_N, "AssociateAttributeGroupOutput", "attributeGroupArn"),
         type = "string",
         name = "attributeGroupArn",
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
      message = schema.new({
         id = id.from(_N, "ConflictException", "message"),
         type = "string",
         name = "message",
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
      }),
   },
})

M.AssociateResourceInput = schema.new({
   id = id.from(_N, "AssociateResourceRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "AssociateResourceInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "AssociateResourceInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "AssociateResourceInput", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      options = schema.new({
         id = id.from(_N, "AssociateResourceInput", "options"),
         type = "list",
         name = "options",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AssociateResourceOutput = schema.new({
   id = id.from(_N, "AssociateResourceResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "AssociateResourceOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
      resourceArn = schema.new({
         id = id.from(_N, "AssociateResourceOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      options = schema.new({
         id = id.from(_N, "AssociateResourceOutput", "options"),
         type = "list",
         name = "options",
         target_id = prelude.Document.id,
         list_member = prelude.String,
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
   },
})

M.AttributeGroup = schema.new({
   id = id.from(_N, "AttributeGroup"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "AttributeGroup", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "AttributeGroup", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "AttributeGroup", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "AttributeGroup", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "AttributeGroup", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      lastUpdateTime = schema.new({
         id = id.from(_N, "AttributeGroup", "lastUpdateTime"),
         type = "timestamp",
         name = "lastUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "AttributeGroup", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.AttributeGroupDetails = schema.new({
   id = id.from(_N, "AttributeGroupDetails"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "AttributeGroupDetails", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "AttributeGroupDetails", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "AttributeGroupDetails", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      createdBy = schema.new({
         id = id.from(_N, "AttributeGroupDetails", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
      }),
   },
})

M.AttributeGroupSummary = schema.new({
   id = id.from(_N, "AttributeGroupSummary"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      lastUpdateTime = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "lastUpdateTime"),
         type = "timestamp",
         name = "lastUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      createdBy = schema.new({
         id = id.from(_N, "AttributeGroupSummary", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateApplicationInput", "description"),
         type = "string",
         name = "description",
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
      clientToken = schema.new({
         id = id.from(_N, "CreateApplicationInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "application"),
         type = "structure",
         name = "application",
         target_id = id.from(_N, "Application"),
         target = M.Application,
      }),
   },
})

M.CreateAttributeGroupInput = schema.new({
   id = id.from(_N, "CreateAttributeGroupRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateAttributeGroupInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateAttributeGroupInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "CreateAttributeGroupInput", "attributes"),
         type = "string",
         name = "attributes",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateAttributeGroupInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateAttributeGroupInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateAttributeGroupOutput = schema.new({
   id = id.from(_N, "CreateAttributeGroupResponse"),
   type = "structure",
   members = {
      attributeGroup = schema.new({
         id = id.from(_N, "CreateAttributeGroupOutput", "attributeGroup"),
         type = "structure",
         name = "attributeGroup",
         target_id = id.from(_N, "AttributeGroup"),
         target = M.AttributeGroup,
      }),
   },
})

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = schema.new({
   id = id.from(_N, "DeleteApplicationResponse"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "DeleteApplicationOutput", "application"),
         type = "structure",
         name = "application",
         target_id = id.from(_N, "ApplicationSummary"),
         target = M.ApplicationSummary,
      }),
   },
})

M.DeleteAttributeGroupInput = schema.new({
   id = id.from(_N, "DeleteAttributeGroupRequest"),
   type = "structure",
   members = {
      attributeGroup = schema.new({
         id = id.from(_N, "DeleteAttributeGroupInput", "attributeGroup"),
         type = "string",
         name = "attributeGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteAttributeGroupOutput = schema.new({
   id = id.from(_N, "DeleteAttributeGroupResponse"),
   type = "structure",
   members = {
      attributeGroup = schema.new({
         id = id.from(_N, "DeleteAttributeGroupOutput", "attributeGroup"),
         type = "structure",
         name = "attributeGroup",
         target_id = id.from(_N, "AttributeGroupSummary"),
         target = M.AttributeGroupSummary,
      }),
   },
})

M.DisassociateAttributeGroupInput = schema.new({
   id = id.from(_N, "DisassociateAttributeGroupRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "DisassociateAttributeGroupInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      attributeGroup = schema.new({
         id = id.from(_N, "DisassociateAttributeGroupInput", "attributeGroup"),
         type = "string",
         name = "attributeGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateAttributeGroupOutput = schema.new({
   id = id.from(_N, "DisassociateAttributeGroupResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "DisassociateAttributeGroupOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
      attributeGroupArn = schema.new({
         id = id.from(_N, "DisassociateAttributeGroupOutput", "attributeGroupArn"),
         type = "string",
         name = "attributeGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociateResourceInput = schema.new({
   id = id.from(_N, "DisassociateResourceRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "DisassociateResourceInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "DisassociateResourceInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "DisassociateResourceInput", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateResourceOutput = schema.new({
   id = id.from(_N, "DisassociateResourceResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "DisassociateResourceOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
      resourceArn = schema.new({
         id = id.from(_N, "DisassociateResourceOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
   },
})

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "GetApplicationInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ResourceGroup = schema.new({
   id = id.from(_N, "ResourceGroup"),
   type = "structure",
   members = {
      state = schema.new({
         id = id.from(_N, "ResourceGroup", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "ResourceGroup", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "ResourceGroup", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.Integrations = schema.new({
   id = id.from(_N, "Integrations"),
   type = "structure",
   members = {
      resourceGroup = schema.new({
         id = id.from(_N, "Integrations", "resourceGroup"),
         type = "structure",
         name = "resourceGroup",
         target_id = id.from(_N, "ResourceGroup"),
         target = M.ResourceGroup,
      }),
      applicationTagResourceGroup = schema.new({
         id = id.from(_N, "Integrations", "applicationTagResourceGroup"),
         type = "structure",
         name = "applicationTagResourceGroup",
         target_id = id.from(_N, "ResourceGroup"),
         target = M.ResourceGroup,
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationResponse"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetApplicationOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "GetApplicationOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "GetApplicationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "GetApplicationOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      lastUpdateTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "lastUpdateTime"),
         type = "timestamp",
         name = "lastUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      associatedResourceCount = schema.new({
         id = id.from(_N, "GetApplicationOutput", "associatedResourceCount"),
         type = "integer",
         name = "associatedResourceCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "GetApplicationOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      integrations = schema.new({
         id = id.from(_N, "GetApplicationOutput", "integrations"),
         type = "structure",
         name = "integrations",
         target_id = id.from(_N, "Integrations"),
         target = M.Integrations,
      }),
      applicationTag = schema.new({
         id = id.from(_N, "GetApplicationOutput", "applicationTag"),
         type = "map",
         name = "applicationTag",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetAssociatedResourceInput = schema.new({
   id = id.from(_N, "GetAssociatedResourceRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "GetAssociatedResourceInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "GetAssociatedResourceInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "GetAssociatedResourceInput", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetAssociatedResourceInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      resourceTagStatus = schema.new({
         id = id.from(_N, "GetAssociatedResourceInput", "resourceTagStatus"),
         type = "list",
         name = "resourceTagStatus",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceTagStatus" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetAssociatedResourceInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ResourceIntegrations = schema.new({
   id = id.from(_N, "ResourceIntegrations"),
   type = "structure",
   members = {
      resourceGroup = schema.new({
         id = id.from(_N, "ResourceIntegrations", "resourceGroup"),
         type = "structure",
         name = "resourceGroup",
         target_id = id.from(_N, "ResourceGroup"),
         target = M.ResourceGroup,
      }),
   },
})

M.Resource = schema.new({
   id = id.from(_N, "Resource"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "Resource", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "Resource", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      associationTime = schema.new({
         id = id.from(_N, "Resource", "associationTime"),
         type = "timestamp",
         name = "associationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      integrations = schema.new({
         id = id.from(_N, "Resource", "integrations"),
         type = "structure",
         name = "integrations",
         target_id = id.from(_N, "ResourceIntegrations"),
         target = M.ResourceIntegrations,
      }),
   },
})

M.GetAssociatedResourceOutput = schema.new({
   id = id.from(_N, "GetAssociatedResourceResponse"),
   type = "structure",
   members = {
      resource = schema.new({
         id = id.from(_N, "GetAssociatedResourceOutput", "resource"),
         type = "structure",
         name = "resource",
         target_id = id.from(_N, "Resource"),
         target = M.Resource,
      }),
      options = schema.new({
         id = id.from(_N, "GetAssociatedResourceOutput", "options"),
         type = "list",
         name = "options",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      applicationTagResult = schema.new({
         id = id.from(_N, "GetAssociatedResourceOutput", "applicationTagResult"),
         type = "structure",
         name = "applicationTagResult",
         target_id = id.from(_N, "ApplicationTagResult"),
         target = M.ApplicationTagResult,
      }),
   },
})

M.GetAttributeGroupInput = schema.new({
   id = id.from(_N, "GetAttributeGroupRequest"),
   type = "structure",
   members = {
      attributeGroup = schema.new({
         id = id.from(_N, "GetAttributeGroupInput", "attributeGroup"),
         type = "string",
         name = "attributeGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetAttributeGroupOutput = schema.new({
   id = id.from(_N, "GetAttributeGroupResponse"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "attributes"),
         type = "string",
         name = "attributes",
         target_id = prelude.String.id,
      }),
      creationTime = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "creationTime"),
         type = "timestamp",
         name = "creationTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      lastUpdateTime = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "lastUpdateTime"),
         type = "timestamp",
         name = "lastUpdateTime",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      tags = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      createdBy = schema.new({
         id = id.from(_N, "GetAttributeGroupOutput", "createdBy"),
         type = "string",
         name = "createdBy",
         target_id = prelude.String.id,
      }),
   },
})

M.GetConfigurationInput = prelude.Unit

M.GetConfigurationOutput = schema.new({
   id = id.from(_N, "GetConfigurationResponse"),
   type = "structure",
   members = {
      configuration = schema.new({
         id = id.from(_N, "GetConfigurationOutput", "configuration"),
         type = "structure",
         name = "configuration",
         target_id = id.from(_N, "AppRegistryConfiguration"),
         target = M.AppRegistryConfiguration,
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
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListApplicationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsResponse"),
   type = "structure",
   members = {
      applications = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "applications"),
         type = "list",
         name = "applications",
         target_id = prelude.Document.id,
         list_member = M.ApplicationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAssociatedAttributeGroupsInput = schema.new({
   id = id.from(_N, "ListAssociatedAttributeGroupsRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "ListAssociatedAttributeGroupsInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssociatedAttributeGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAssociatedAttributeGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListAssociatedAttributeGroupsOutput = schema.new({
   id = id.from(_N, "ListAssociatedAttributeGroupsResponse"),
   type = "structure",
   members = {
      attributeGroups = schema.new({
         id = id.from(_N, "ListAssociatedAttributeGroupsOutput", "attributeGroups"),
         type = "list",
         name = "attributeGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssociatedAttributeGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAssociatedResourcesInput = schema.new({
   id = id.from(_N, "ListAssociatedResourcesRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "ListAssociatedResourcesInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssociatedResourcesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAssociatedResourcesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ResourceDetails = schema.new({
   id = id.from(_N, "ResourceDetails"),
   type = "structure",
   members = {
      tagValue = schema.new({
         id = id.from(_N, "ResourceDetails", "tagValue"),
         type = "string",
         name = "tagValue",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceInfo = schema.new({
   id = id.from(_N, "ResourceInfo"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ResourceInfo", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "ResourceInfo", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourceInfo", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      resourceDetails = schema.new({
         id = id.from(_N, "ResourceInfo", "resourceDetails"),
         type = "structure",
         name = "resourceDetails",
         target_id = id.from(_N, "ResourceDetails"),
         target = M.ResourceDetails,
      }),
      options = schema.new({
         id = id.from(_N, "ResourceInfo", "options"),
         type = "list",
         name = "options",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListAssociatedResourcesOutput = schema.new({
   id = id.from(_N, "ListAssociatedResourcesResponse"),
   type = "structure",
   members = {
      resources = schema.new({
         id = id.from(_N, "ListAssociatedResourcesOutput", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = M.ResourceInfo,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAssociatedResourcesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAttributeGroupsInput = schema.new({
   id = id.from(_N, "ListAttributeGroupsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListAttributeGroupsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAttributeGroupsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListAttributeGroupsOutput = schema.new({
   id = id.from(_N, "ListAttributeGroupsResponse"),
   type = "structure",
   members = {
      attributeGroups = schema.new({
         id = id.from(_N, "ListAttributeGroupsOutput", "attributeGroups"),
         type = "list",
         name = "attributeGroups",
         target_id = prelude.Document.id,
         list_member = M.AttributeGroupSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAttributeGroupsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAttributeGroupsForApplicationInput = schema.new({
   id = id.from(_N, "ListAttributeGroupsForApplicationRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "ListAttributeGroupsForApplicationInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAttributeGroupsForApplicationInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAttributeGroupsForApplicationInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListAttributeGroupsForApplicationOutput = schema.new({
   id = id.from(_N, "ListAttributeGroupsForApplicationResponse"),
   type = "structure",
   members = {
      attributeGroupsDetails = schema.new({
         id = id.from(_N, "ListAttributeGroupsForApplicationOutput", "attributeGroupsDetails"),
         type = "list",
         name = "attributeGroupsDetails",
         target_id = prelude.Document.id,
         list_member = M.AttributeGroupDetails,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAttributeGroupsForApplicationOutput", "nextToken"),
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

M.PutConfigurationInput = schema.new({
   id = id.from(_N, "PutConfigurationRequest"),
   type = "structure",
   members = {
      configuration = schema.new({
         id = id.from(_N, "PutConfigurationInput", "configuration"),
         type = "structure",
         name = "configuration",
         target_id = id.from(_N, "AppRegistryConfiguration"),
         target = M.AppRegistryConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutConfigurationOutput = prelude.Unit

M.SyncResourceInput = schema.new({
   id = id.from(_N, "SyncResourceRequest"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "SyncResourceInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "SyncResourceInput", "resource"),
         type = "string",
         name = "resource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SyncResourceOutput = schema.new({
   id = id.from(_N, "SyncResourceResponse"),
   type = "structure",
   members = {
      applicationArn = schema.new({
         id = id.from(_N, "SyncResourceOutput", "applicationArn"),
         type = "string",
         name = "applicationArn",
         target_id = prelude.String.id,
      }),
      resourceArn = schema.new({
         id = id.from(_N, "SyncResourceOutput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
      }),
      actionTaken = schema.new({
         id = id.from(_N, "SyncResourceOutput", "actionTaken"),
         type = "string",
         name = "actionTaken",
         target_id = prelude.String.id,
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

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "application"),
         type = "string",
         name = "application",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResponse"),
   type = "structure",
   members = {
      application = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "application"),
         type = "structure",
         name = "application",
         target_id = id.from(_N, "Application"),
         target = M.Application,
      }),
   },
})

M.UpdateAttributeGroupInput = schema.new({
   id = id.from(_N, "UpdateAttributeGroupRequest"),
   type = "structure",
   members = {
      attributeGroup = schema.new({
         id = id.from(_N, "UpdateAttributeGroupInput", "attributeGroup"),
         type = "string",
         name = "attributeGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateAttributeGroupInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateAttributeGroupInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "UpdateAttributeGroupInput", "attributes"),
         type = "string",
         name = "attributes",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateAttributeGroupOutput = schema.new({
   id = id.from(_N, "UpdateAttributeGroupResponse"),
   type = "structure",
   members = {
      attributeGroup = schema.new({
         id = id.from(_N, "UpdateAttributeGroupOutput", "attributeGroup"),
         type = "structure",
         name = "attributeGroup",
         target_id = id.from(_N, "AttributeGroup"),
         target = M.AttributeGroup,
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
   id = id.from("com.amazonaws.servicecatalogappregistry", "AWS242AppRegistry"),
   version = "2020-06-24",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateAttributeGroup = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "AssociateAttributeGroup"),
   input = M.AssociateAttributeGroupInput,
   output = M.AssociateAttributeGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/applications/{application}/attribute-groups/{attributeGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "AssociateResource"),
   input = M.AssociateResourceInput,
   output = M.AssociateResourceOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/applications/{application}/resources/{resourceType}/{resource}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAttributeGroup = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "CreateAttributeGroup"),
   input = M.CreateAttributeGroupInput,
   output = M.CreateAttributeGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/attribute-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{application}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAttributeGroup = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "DeleteAttributeGroup"),
   input = M.DeleteAttributeGroupInput,
   output = M.DeleteAttributeGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/attribute-groups/{attributeGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateAttributeGroup = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "DisassociateAttributeGroup"),
   input = M.DisassociateAttributeGroupInput,
   output = M.DisassociateAttributeGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{application}/attribute-groups/{attributeGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "DisassociateResource"),
   input = M.DisassociateResourceInput,
   output = M.DisassociateResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{application}/resources/{resourceType}/{resource}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{application}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAssociatedResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "GetAssociatedResource"),
   input = M.GetAssociatedResourceInput,
   output = M.GetAssociatedResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{application}/resources/{resourceType}/{resource}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAttributeGroup = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "GetAttributeGroup"),
   input = M.GetAttributeGroupInput,
   output = M.GetAttributeGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/attribute-groups/{attributeGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConfiguration = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "GetConfiguration"),
   input = M.GetConfigurationInput,
   output = M.GetConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssociatedAttributeGroups = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "ListAssociatedAttributeGroups"),
   input = M.ListAssociatedAttributeGroupsInput,
   output = M.ListAssociatedAttributeGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{application}/attribute-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssociatedResources = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "ListAssociatedResources"),
   input = M.ListAssociatedResourcesInput,
   output = M.ListAssociatedResourcesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{application}/resources" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAttributeGroups = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "ListAttributeGroups"),
   input = M.ListAttributeGroupsInput,
   output = M.ListAttributeGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/attribute-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAttributeGroupsForApplication = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "ListAttributeGroupsForApplication"),
   input = M.ListAttributeGroupsForApplicationInput,
   output = M.ListAttributeGroupsForApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{application}/attribute-group-details" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutConfiguration = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "PutConfiguration"),
   input = M.PutConfigurationInput,
   output = M.PutConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SyncResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "SyncResource"),
   input = M.SyncResourceInput,
   output = M.SyncResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sync/{resourceType}/{resource}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/applications/{application}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAttributeGroup = schema.operation({
   id = id.from("com.amazonaws.servicecatalogappregistry", "UpdateAttributeGroup"),
   input = M.UpdateAttributeGroupInput,
   output = M.UpdateAttributeGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/attribute-groups/{attributeGroup}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
