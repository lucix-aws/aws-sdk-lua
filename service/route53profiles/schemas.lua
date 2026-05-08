

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.route53profiles"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ProfileAssociations = schema.new({ type = "list", list_member = M.ProfileAssociation })

M.ProfileResourceAssociations = schema.new({ type = "list", list_member = M.ProfileResourceAssociation })

M.ProfileSummaryList = schema.new({ type = "list", list_member = M.ProfileSummary })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

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

M.AssociateProfileInput = schema.new({
   id = id.from(_N, "AssociateProfileRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "AssociateProfileInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceId = schema.new({
         id = id.from(_N, "AssociateProfileInput", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "AssociateProfileInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "AssociateProfileInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ProfileAssociation = schema.new({
   id = id.from(_N, "ProfileAssociation"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "ProfileAssociation", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ProfileAssociation", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      OwnerId = schema.new({
         id = id.from(_N, "ProfileAssociation", "OwnerId"),
         type = "string",
         name = "OwnerId",
         target_id = prelude.String.id,
      }),
      ProfileId = schema.new({
         id = id.from(_N, "ProfileAssociation", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
      }),
      ResourceId = schema.new({
         id = id.from(_N, "ProfileAssociation", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ProfileAssociation", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "ProfileAssociation", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "ProfileAssociation", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      ModificationTime = schema.new({
         id = id.from(_N, "ProfileAssociation", "ModificationTime"),
         type = "timestamp",
         name = "ModificationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AssociateProfileOutput = schema.new({
   id = id.from(_N, "AssociateProfileResponse"),
   type = "structure",
   members = {
      ProfileAssociation = schema.new({
         id = id.from(_N, "AssociateProfileOutput", "ProfileAssociation"),
         type = "structure",
         name = "ProfileAssociation",
         target_id = id.from(_N, "ProfileAssociation"),
         target = M.ProfileAssociation,
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

M.InvalidParameterException = schema.new({
   id = id.from(_N, "InvalidParameterException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidParameterException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FieldName = schema.new({
         id = id.from(_N, "InvalidParameterException", "FieldName"),
         type = "string",
         name = "FieldName",
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
      ResourceType = schema.new({
         id = id.from(_N, "LimitExceededException", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceExistsException = schema.new({
   id = id.from(_N, "ResourceExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ResourceExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ResourceExistsException", "ResourceType"),
         type = "string",
         name = "ResourceType",
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
      Message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "ResourceType"),
         type = "string",
         name = "ResourceType",
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
      Message = schema.new({
         id = id.from(_N, "ThrottlingException", "Message"),
         type = "string",
         name = "Message",
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
      }),
   },
})

M.AssociateResourceToProfileInput = schema.new({
   id = id.from(_N, "AssociateResourceToProfileRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "AssociateResourceToProfileInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "AssociateResourceToProfileInput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "AssociateResourceToProfileInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceProperties = schema.new({
         id = id.from(_N, "AssociateResourceToProfileInput", "ResourceProperties"),
         type = "string",
         name = "ResourceProperties",
         target_id = prelude.String.id,
      }),
   },
})

M.ProfileResourceAssociation = schema.new({
   id = id.from(_N, "ProfileResourceAssociation"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      OwnerId = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "OwnerId"),
         type = "string",
         name = "OwnerId",
         target_id = prelude.String.id,
      }),
      ProfileId = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      ResourceProperties = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "ResourceProperties"),
         type = "string",
         name = "ResourceProperties",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      ModificationTime = schema.new({
         id = id.from(_N, "ProfileResourceAssociation", "ModificationTime"),
         type = "timestamp",
         name = "ModificationTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AssociateResourceToProfileOutput = schema.new({
   id = id.from(_N, "AssociateResourceToProfileResponse"),
   type = "structure",
   members = {
      ProfileResourceAssociation = schema.new({
         id = id.from(_N, "AssociateResourceToProfileOutput", "ProfileResourceAssociation"),
         type = "structure",
         name = "ProfileResourceAssociation",
         target_id = id.from(_N, "ProfileResourceAssociation"),
         target = M.ProfileResourceAssociation,
      }),
   },
})

M.InternalServiceErrorException = schema.new({
   id = id.from(_N, "InternalServiceErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
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

M.CreateProfileInput = schema.new({
   id = id.from(_N, "CreateProfileRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateProfileInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateProfileInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateProfileInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.Profile = schema.new({
   id = id.from(_N, "Profile"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Profile", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "Profile", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "Profile", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      OwnerId = schema.new({
         id = id.from(_N, "Profile", "OwnerId"),
         type = "string",
         name = "OwnerId",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "Profile", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "Profile", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
      ShareStatus = schema.new({
         id = id.from(_N, "Profile", "ShareStatus"),
         type = "string",
         name = "ShareStatus",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "Profile", "CreationTime"),
         type = "timestamp",
         name = "CreationTime",
         target_id = prelude.Timestamp.id,
      }),
      ModificationTime = schema.new({
         id = id.from(_N, "Profile", "ModificationTime"),
         type = "timestamp",
         name = "ModificationTime",
         target_id = prelude.Timestamp.id,
      }),
      ClientToken = schema.new({
         id = id.from(_N, "Profile", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateProfileOutput = schema.new({
   id = id.from(_N, "CreateProfileResponse"),
   type = "structure",
   members = {
      Profile = schema.new({
         id = id.from(_N, "CreateProfileOutput", "Profile"),
         type = "structure",
         name = "Profile",
         target_id = id.from(_N, "Profile"),
         target = M.Profile,
      }),
   },
})

M.DeleteProfileInput = schema.new({
   id = id.from(_N, "DeleteProfileRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "DeleteProfileInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteProfileOutput = schema.new({
   id = id.from(_N, "DeleteProfileResponse"),
   type = "structure",
   members = {
      Profile = schema.new({
         id = id.from(_N, "DeleteProfileOutput", "Profile"),
         type = "structure",
         name = "Profile",
         target_id = id.from(_N, "Profile"),
         target = M.Profile,
      }),
   },
})

M.DisassociateProfileInput = schema.new({
   id = id.from(_N, "DisassociateProfileRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "DisassociateProfileInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceId = schema.new({
         id = id.from(_N, "DisassociateProfileInput", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateProfileOutput = schema.new({
   id = id.from(_N, "DisassociateProfileResponse"),
   type = "structure",
   members = {
      ProfileAssociation = schema.new({
         id = id.from(_N, "DisassociateProfileOutput", "ProfileAssociation"),
         type = "structure",
         name = "ProfileAssociation",
         target_id = id.from(_N, "ProfileAssociation"),
         target = M.ProfileAssociation,
      }),
   },
})

M.DisassociateResourceFromProfileInput = schema.new({
   id = id.from(_N, "DisassociateResourceFromProfileRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "DisassociateResourceFromProfileInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceArn = schema.new({
         id = id.from(_N, "DisassociateResourceFromProfileInput", "ResourceArn"),
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

M.DisassociateResourceFromProfileOutput = schema.new({
   id = id.from(_N, "DisassociateResourceFromProfileResponse"),
   type = "structure",
   members = {
      ProfileResourceAssociation = schema.new({
         id = id.from(_N, "DisassociateResourceFromProfileOutput", "ProfileResourceAssociation"),
         type = "structure",
         name = "ProfileResourceAssociation",
         target_id = id.from(_N, "ProfileResourceAssociation"),
         target = M.ProfileResourceAssociation,
      }),
   },
})

M.GetProfileInput = schema.new({
   id = id.from(_N, "GetProfileRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "GetProfileInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetProfileOutput = schema.new({
   id = id.from(_N, "GetProfileResponse"),
   type = "structure",
   members = {
      Profile = schema.new({
         id = id.from(_N, "GetProfileOutput", "Profile"),
         type = "structure",
         name = "Profile",
         target_id = id.from(_N, "Profile"),
         target = M.Profile,
      }),
   },
})

M.GetProfileAssociationInput = schema.new({
   id = id.from(_N, "GetProfileAssociationRequest"),
   type = "structure",
   members = {
      ProfileAssociationId = schema.new({
         id = id.from(_N, "GetProfileAssociationInput", "ProfileAssociationId"),
         type = "string",
         name = "ProfileAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetProfileAssociationOutput = schema.new({
   id = id.from(_N, "GetProfileAssociationResponse"),
   type = "structure",
   members = {
      ProfileAssociation = schema.new({
         id = id.from(_N, "GetProfileAssociationOutput", "ProfileAssociation"),
         type = "structure",
         name = "ProfileAssociation",
         target_id = id.from(_N, "ProfileAssociation"),
         target = M.ProfileAssociation,
      }),
   },
})

M.GetProfileResourceAssociationInput = schema.new({
   id = id.from(_N, "GetProfileResourceAssociationRequest"),
   type = "structure",
   members = {
      ProfileResourceAssociationId = schema.new({
         id = id.from(_N, "GetProfileResourceAssociationInput", "ProfileResourceAssociationId"),
         type = "string",
         name = "ProfileResourceAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetProfileResourceAssociationOutput = schema.new({
   id = id.from(_N, "GetProfileResourceAssociationResponse"),
   type = "structure",
   members = {
      ProfileResourceAssociation = schema.new({
         id = id.from(_N, "GetProfileResourceAssociationOutput", "ProfileResourceAssociation"),
         type = "structure",
         name = "ProfileResourceAssociation",
         target_id = id.from(_N, "ProfileResourceAssociation"),
         target = M.ProfileResourceAssociation,
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

M.ListProfileAssociationsInput = schema.new({
   id = id.from(_N, "ListProfileAssociationsRequest"),
   type = "structure",
   members = {
      ResourceId = schema.new({
         id = id.from(_N, "ListProfileAssociationsInput", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceId" },
         },
      }),
      ProfileId = schema.new({
         id = id.from(_N, "ListProfileAssociationsInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "profileId" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListProfileAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProfileAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListProfileAssociationsOutput = schema.new({
   id = id.from(_N, "ListProfileAssociationsResponse"),
   type = "structure",
   members = {
      ProfileAssociations = schema.new({
         id = id.from(_N, "ListProfileAssociationsOutput", "ProfileAssociations"),
         type = "list",
         name = "ProfileAssociations",
         target_id = prelude.Document.id,
         list_member = M.ProfileAssociation,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProfileAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProfileResourceAssociationsInput = schema.new({
   id = id.from(_N, "ListProfileResourceAssociationsRequest"),
   type = "structure",
   members = {
      ProfileId = schema.new({
         id = id.from(_N, "ListProfileResourceAssociationsInput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ListProfileResourceAssociationsInput", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListProfileResourceAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProfileResourceAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListProfileResourceAssociationsOutput = schema.new({
   id = id.from(_N, "ListProfileResourceAssociationsResponse"),
   type = "structure",
   members = {
      ProfileResourceAssociations = schema.new({
         id = id.from(_N, "ListProfileResourceAssociationsOutput", "ProfileResourceAssociations"),
         type = "list",
         name = "ProfileResourceAssociations",
         target_id = prelude.Document.id,
         list_member = M.ProfileResourceAssociation,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProfileResourceAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProfilesInput = schema.new({
   id = id.from(_N, "ListProfilesRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListProfilesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProfilesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ProfileSummary = schema.new({
   id = id.from(_N, "ProfileSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "ProfileSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "ProfileSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ProfileSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ShareStatus = schema.new({
         id = id.from(_N, "ProfileSummary", "ShareStatus"),
         type = "string",
         name = "ShareStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProfilesOutput = schema.new({
   id = id.from(_N, "ListProfilesResponse"),
   type = "structure",
   members = {
      ProfileSummaries = schema.new({
         id = id.from(_N, "ListProfilesOutput", "ProfileSummaries"),
         type = "list",
         name = "ProfileSummaries",
         target_id = prelude.Document.id,
         list_member = M.ProfileSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProfilesOutput", "NextToken"),
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
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateProfileResourceAssociationInput = schema.new({
   id = id.from(_N, "UpdateProfileResourceAssociationRequest"),
   type = "structure",
   members = {
      ProfileResourceAssociationId = schema.new({
         id = id.from(_N, "UpdateProfileResourceAssociationInput", "ProfileResourceAssociationId"),
         type = "string",
         name = "ProfileResourceAssociationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateProfileResourceAssociationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ResourceProperties = schema.new({
         id = id.from(_N, "UpdateProfileResourceAssociationInput", "ResourceProperties"),
         type = "string",
         name = "ResourceProperties",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateProfileResourceAssociationOutput = schema.new({
   id = id.from(_N, "UpdateProfileResourceAssociationResponse"),
   type = "structure",
   members = {
      ProfileResourceAssociation = schema.new({
         id = id.from(_N, "UpdateProfileResourceAssociationOutput", "ProfileResourceAssociation"),
         type = "structure",
         name = "ProfileResourceAssociation",
         target_id = id.from(_N, "ProfileResourceAssociation"),
         target = M.ProfileResourceAssociation,
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
   id = id.from("com.amazonaws.route53profiles", "Route53Profiles"),
   version = "2018-05-10",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "AssociateProfile"),
   input = M.AssociateProfileInput,
   output = M.AssociateProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profileassociation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateResourceToProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "AssociateResourceToProfile"),
   input = M.AssociateResourceToProfileInput,
   output = M.AssociateResourceToProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profileresourceassociation" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "CreateProfile"),
   input = M.CreateProfileInput,
   output = M.CreateProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/profile" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "DeleteProfile"),
   input = M.DeleteProfileInput,
   output = M.DeleteProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/profile/{ProfileId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "DisassociateProfile"),
   input = M.DisassociateProfileInput,
   output = M.DisassociateProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/profileassociation/Profileid/{ProfileId}/resourceid/{ResourceId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateResourceFromProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "DisassociateResourceFromProfile"),
   input = M.DisassociateResourceFromProfileInput,
   output = M.DisassociateResourceFromProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/profileresourceassociation/profileid/{ProfileId}/resourcearn/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProfile = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "GetProfile"),
   input = M.GetProfileInput,
   output = M.GetProfileOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profile/{ProfileId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProfileAssociation = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "GetProfileAssociation"),
   input = M.GetProfileAssociationInput,
   output = M.GetProfileAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profileassociation/{ProfileAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProfileResourceAssociation = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "GetProfileResourceAssociation"),
   input = M.GetProfileResourceAssociationInput,
   output = M.GetProfileResourceAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profileresourceassociation/{ProfileResourceAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProfileAssociations = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "ListProfileAssociations"),
   input = M.ListProfileAssociationsInput,
   output = M.ListProfileAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profileassociations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProfileResourceAssociations = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "ListProfileResourceAssociations"),
   input = M.ListProfileResourceAssociationsInput,
   output = M.ListProfileResourceAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profileresourceassociations/profileid/{ProfileId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProfiles = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "ListProfiles"),
   input = M.ListProfilesInput,
   output = M.ListProfilesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/profiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateProfileResourceAssociation = schema.operation({
   id = id.from("com.amazonaws.route53profiles", "UpdateProfileResourceAssociation"),
   input = M.UpdateProfileResourceAssociationInput,
   output = M.UpdateProfileResourceAssociationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/profileresourceassociation/{ProfileResourceAssociationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
