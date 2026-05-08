

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.cloud9"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.PermissionsList = schema.new({ type = "list", list_member = prelude.String })

M.EnvironmentMembersList = schema.new({ type = "list", list_member = M.EnvironmentMember })

M.BoundedEnvironmentIdList = schema.new({ type = "list", list_member = prelude.String })

M.EnvironmentList = schema.new({ type = "list", list_member = M.Environment })

M.EnvironmentIdList = schema.new({ type = "list", list_member = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.BadRequestException = schema.new({
   id = id.from(_N, "BadRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "BadRequestException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "BadRequestException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "BadRequestException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
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
      }),
      className = schema.new({
         id = id.from(_N, "ConflictException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "ConflictException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
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

M.CreateEnvironmentEC2Input = schema.new({
   id = id.from(_N, "CreateEnvironmentEC2Request"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      clientRequestToken = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "clientRequestToken"),
         type = "string",
         name = "clientRequestToken",
         target_id = prelude.String.id,
      }),
      instanceType = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "instanceType"),
         type = "string",
         name = "instanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      subnetId = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "subnetId"),
         type = "string",
         name = "subnetId",
         target_id = prelude.String.id,
      }),
      imageId = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "imageId"),
         type = "string",
         name = "imageId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      automaticStopTimeMinutes = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "automaticStopTimeMinutes"),
         type = "integer",
         name = "automaticStopTimeMinutes",
         target_id = prelude.Integer.id,
      }),
      ownerArn = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "ownerArn"),
         type = "string",
         name = "ownerArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      connectionType = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "connectionType"),
         type = "string",
         name = "connectionType",
         target_id = prelude.String.id,
      }),
      dryRun = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Input", "dryRun"),
         type = "boolean",
         name = "dryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateEnvironmentEC2Output = schema.new({
   id = id.from(_N, "CreateEnvironmentEC2Result"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "CreateEnvironmentEC2Output", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
      }),
   },
})

M.ForbiddenException = schema.new({
   id = id.from(_N, "ForbiddenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ForbiddenException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "ForbiddenException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "ForbiddenException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.InternalServerErrorException = schema.new({
   id = id.from(_N, "InternalServerErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InternalServerErrorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "InternalServerErrorException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "InternalServerErrorException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
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
      message = schema.new({
         id = id.from(_N, "LimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "LimitExceededException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "LimitExceededException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "NotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "NotFoundException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "NotFoundException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.TooManyRequestsException = schema.new({
   id = id.from(_N, "TooManyRequestsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "TooManyRequestsException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "TooManyRequestsException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CreateEnvironmentMembershipInput = schema.new({
   id = id.from(_N, "CreateEnvironmentMembershipRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "CreateEnvironmentMembershipInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      userArn = schema.new({
         id = id.from(_N, "CreateEnvironmentMembershipInput", "userArn"),
         type = "string",
         name = "userArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      permissions = schema.new({
         id = id.from(_N, "CreateEnvironmentMembershipInput", "permissions"),
         type = "string",
         name = "permissions",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnvironmentMember = schema.new({
   id = id.from(_N, "EnvironmentMember"),
   type = "structure",
   members = {
      permissions = schema.new({
         id = id.from(_N, "EnvironmentMember", "permissions"),
         type = "string",
         name = "permissions",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      userId = schema.new({
         id = id.from(_N, "EnvironmentMember", "userId"),
         type = "string",
         name = "userId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      userArn = schema.new({
         id = id.from(_N, "EnvironmentMember", "userArn"),
         type = "string",
         name = "userArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      environmentId = schema.new({
         id = id.from(_N, "EnvironmentMember", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastAccess = schema.new({
         id = id.from(_N, "EnvironmentMember", "lastAccess"),
         type = "timestamp",
         name = "lastAccess",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateEnvironmentMembershipOutput = schema.new({
   id = id.from(_N, "CreateEnvironmentMembershipResult"),
   type = "structure",
   members = {
      membership = schema.new({
         id = id.from(_N, "CreateEnvironmentMembershipOutput", "membership"),
         type = "structure",
         name = "membership",
         target_id = id.from(_N, "EnvironmentMember"),
         target = M.EnvironmentMember,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEnvironmentInput = schema.new({
   id = id.from(_N, "DeleteEnvironmentRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "DeleteEnvironmentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEnvironmentOutput = schema.new({
   id = id.from(_N, "DeleteEnvironmentResult"),
   type = "structure",
})

M.DeleteEnvironmentMembershipInput = schema.new({
   id = id.from(_N, "DeleteEnvironmentMembershipRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "DeleteEnvironmentMembershipInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      userArn = schema.new({
         id = id.from(_N, "DeleteEnvironmentMembershipInput", "userArn"),
         type = "string",
         name = "userArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEnvironmentMembershipOutput = schema.new({
   id = id.from(_N, "DeleteEnvironmentMembershipResult"),
   type = "structure",
})

M.DescribeEnvironmentMembershipsInput = schema.new({
   id = id.from(_N, "DescribeEnvironmentMembershipsRequest"),
   type = "structure",
   members = {
      userArn = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsInput", "userArn"),
         type = "string",
         name = "userArn",
         target_id = prelude.String.id,
      }),
      environmentId = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
      }),
      permissions = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsInput", "permissions"),
         type = "list",
         name = "permissions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeEnvironmentMembershipsOutput = schema.new({
   id = id.from(_N, "DescribeEnvironmentMembershipsResult"),
   type = "structure",
   members = {
      memberships = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsOutput", "memberships"),
         type = "list",
         name = "memberships",
         target_id = prelude.Document.id,
         list_member = M.EnvironmentMember,
      }),
      nextToken = schema.new({
         id = id.from(_N, "DescribeEnvironmentMembershipsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeEnvironmentsInput = schema.new({
   id = id.from(_N, "DescribeEnvironmentsRequest"),
   type = "structure",
   members = {
      environmentIds = schema.new({
         id = id.from(_N, "DescribeEnvironmentsInput", "environmentIds"),
         type = "list",
         name = "environmentIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnvironmentLifecycle = schema.new({
   id = id.from(_N, "EnvironmentLifecycle"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "EnvironmentLifecycle", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      reason = schema.new({
         id = id.from(_N, "EnvironmentLifecycle", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
      failureResource = schema.new({
         id = id.from(_N, "EnvironmentLifecycle", "failureResource"),
         type = "string",
         name = "failureResource",
         target_id = prelude.String.id,
      }),
   },
})

M.Environment = schema.new({
   id = id.from(_N, "Environment"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "Environment", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "Environment", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "Environment", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
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
      connectionType = schema.new({
         id = id.from(_N, "Environment", "connectionType"),
         type = "string",
         name = "connectionType",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "Environment", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ownerArn = schema.new({
         id = id.from(_N, "Environment", "ownerArn"),
         type = "string",
         name = "ownerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lifecycle = schema.new({
         id = id.from(_N, "Environment", "lifecycle"),
         type = "structure",
         name = "lifecycle",
         target_id = id.from(_N, "EnvironmentLifecycle"),
         target = M.EnvironmentLifecycle,
      }),
      managedCredentialsStatus = schema.new({
         id = id.from(_N, "Environment", "managedCredentialsStatus"),
         type = "string",
         name = "managedCredentialsStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeEnvironmentsOutput = schema.new({
   id = id.from(_N, "DescribeEnvironmentsResult"),
   type = "structure",
   members = {
      environments = schema.new({
         id = id.from(_N, "DescribeEnvironmentsOutput", "environments"),
         type = "list",
         name = "environments",
         target_id = prelude.Document.id,
         list_member = M.Environment,
      }),
   },
})

M.DescribeEnvironmentStatusInput = schema.new({
   id = id.from(_N, "DescribeEnvironmentStatusRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "DescribeEnvironmentStatusInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeEnvironmentStatusOutput = schema.new({
   id = id.from(_N, "DescribeEnvironmentStatusResult"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "DescribeEnvironmentStatusOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "DescribeEnvironmentStatusOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListEnvironmentsInput = schema.new({
   id = id.from(_N, "ListEnvironmentsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListEnvironmentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListEnvironmentsOutput = schema.new({
   id = id.from(_N, "ListEnvironmentsResult"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListEnvironmentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      environmentIds = schema.new({
         id = id.from(_N, "ListEnvironmentsOutput", "environmentIds"),
         type = "list",
         name = "environmentIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListTagsForResourceInput = schema.new({
   id = id.from(_N, "ListTagsForResourceRequest"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "ListTagsForResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
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

M.ConcurrentAccessException = schema.new({
   id = id.from(_N, "ConcurrentAccessException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ConcurrentAccessException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      className = schema.new({
         id = id.from(_N, "ConcurrentAccessException", "className"),
         type = "string",
         name = "className",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "ConcurrentAccessException", "code"),
         type = "integer",
         name = "code",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      ResourceARN = schema.new({
         id = id.from(_N, "TagResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
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
      ResourceARN = schema.new({
         id = id.from(_N, "UntagResourceInput", "ResourceARN"),
         type = "string",
         name = "ResourceARN",
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

M.UpdateEnvironmentInput = schema.new({
   id = id.from(_N, "UpdateEnvironmentRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      managedCredentialsAction = schema.new({
         id = id.from(_N, "UpdateEnvironmentInput", "managedCredentialsAction"),
         type = "string",
         name = "managedCredentialsAction",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateEnvironmentOutput = schema.new({
   id = id.from(_N, "UpdateEnvironmentResult"),
   type = "structure",
})

M.UpdateEnvironmentMembershipInput = schema.new({
   id = id.from(_N, "UpdateEnvironmentMembershipRequest"),
   type = "structure",
   members = {
      environmentId = schema.new({
         id = id.from(_N, "UpdateEnvironmentMembershipInput", "environmentId"),
         type = "string",
         name = "environmentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      userArn = schema.new({
         id = id.from(_N, "UpdateEnvironmentMembershipInput", "userArn"),
         type = "string",
         name = "userArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      permissions = schema.new({
         id = id.from(_N, "UpdateEnvironmentMembershipInput", "permissions"),
         type = "string",
         name = "permissions",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEnvironmentMembershipOutput = schema.new({
   id = id.from(_N, "UpdateEnvironmentMembershipResult"),
   type = "structure",
   members = {
      membership = schema.new({
         id = id.from(_N, "UpdateEnvironmentMembershipOutput", "membership"),
         type = "structure",
         name = "membership",
         target_id = id.from(_N, "EnvironmentMember"),
         target = M.EnvironmentMember,
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
   id = id.from("com.amazonaws.cloud9", "AWSCloud9WorkspaceManagementService"),
   version = "2017-09-23",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEnvironmentEC2 = schema.operation({
   id = id.from("com.amazonaws.cloud9", "CreateEnvironmentEC2"),
   input = M.CreateEnvironmentEC2Input,
   output = M.CreateEnvironmentEC2Output,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEnvironmentMembership = schema.operation({
   id = id.from("com.amazonaws.cloud9", "CreateEnvironmentMembership"),
   input = M.CreateEnvironmentMembershipInput,
   output = M.CreateEnvironmentMembershipOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEnvironment = schema.operation({
   id = id.from("com.amazonaws.cloud9", "DeleteEnvironment"),
   input = M.DeleteEnvironmentInput,
   output = M.DeleteEnvironmentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEnvironmentMembership = schema.operation({
   id = id.from("com.amazonaws.cloud9", "DeleteEnvironmentMembership"),
   input = M.DeleteEnvironmentMembershipInput,
   output = M.DeleteEnvironmentMembershipOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEnvironmentMemberships = schema.operation({
   id = id.from("com.amazonaws.cloud9", "DescribeEnvironmentMemberships"),
   input = M.DescribeEnvironmentMembershipsInput,
   output = M.DescribeEnvironmentMembershipsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEnvironments = schema.operation({
   id = id.from("com.amazonaws.cloud9", "DescribeEnvironments"),
   input = M.DescribeEnvironmentsInput,
   output = M.DescribeEnvironmentsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEnvironmentStatus = schema.operation({
   id = id.from("com.amazonaws.cloud9", "DescribeEnvironmentStatus"),
   input = M.DescribeEnvironmentStatusInput,
   output = M.DescribeEnvironmentStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEnvironments = schema.operation({
   id = id.from("com.amazonaws.cloud9", "ListEnvironments"),
   input = M.ListEnvironmentsInput,
   output = M.ListEnvironmentsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.cloud9", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.cloud9", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.cloud9", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEnvironment = schema.operation({
   id = id.from("com.amazonaws.cloud9", "UpdateEnvironment"),
   input = M.UpdateEnvironmentInput,
   output = M.UpdateEnvironmentOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEnvironmentMembership = schema.operation({
   id = id.from("com.amazonaws.cloud9", "UpdateEnvironmentMembership"),
   input = M.UpdateEnvironmentMembershipInput,
   output = M.UpdateEnvironmentMembershipOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
