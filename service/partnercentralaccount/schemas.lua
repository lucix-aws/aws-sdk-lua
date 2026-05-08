

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.partnercentralaccount"

local M = {}

M.ValidationErrorList = schema.new({ type = "list", list_member = M.ValidationError })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ParticipantIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.ConnectionInvitationSummaryList = schema.new({ type = "list", list_member = M.ConnectionInvitationSummary })

M.ConnectionSummaryList = schema.new({ type = "list", list_member = M.ConnectionSummary })

M.ConnectionTypeDetailMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ConnectionTypeDetail })

M.PartnerSummaryList = schema.new({ type = "list", list_member = M.PartnerSummary })

M.PartnerDomainList = schema.new({ type = "list", list_member = M.PartnerDomain })

M.ErrorDetailList = schema.new({ type = "list", list_member = M.ErrorDetail })

M.IndustrySegmentList = schema.new({ type = "list", list_member = prelude.String })

M.LocalizedContentList = schema.new({ type = "list", list_member = M.LocalizedContent })

M.ConnectionTypeSummaryMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ConnectionTypeSummary })

M.AcceptConnectionInvitationInput = schema.new({
   id = id.from(_N, "AcceptConnectionInvitationRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "AcceptConnectionInvitationInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "AcceptConnectionInvitationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "AcceptConnectionInvitationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.AccountSummary = schema.new({
   id = id.from(_N, "AccountSummary"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "AccountSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PartnerProfileSummary = schema.new({
   id = id.from(_N, "PartnerProfileSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "PartnerProfileSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "PartnerProfileSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SellerProfileSummary = schema.new({
   id = id.from(_N, "SellerProfileSummary"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "SellerProfileSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "SellerProfileSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Participant = schema.new({
   id = id.from(_N, "Participant"),
   type = "union",
   members = {
      PartnerProfile = schema.new({
         id = id.from(_N, "Participant", "PartnerProfile"),
         type = "structure",
         name = "PartnerProfile",
         target_id = id.from(_N, "PartnerProfileSummary"),
         target = M.PartnerProfileSummary,
      }),
      SellerProfile = schema.new({
         id = id.from(_N, "Participant", "SellerProfile"),
         type = "structure",
         name = "SellerProfile",
         target_id = id.from(_N, "SellerProfileSummary"),
         target = M.SellerProfileSummary,
      }),
      Account = schema.new({
         id = id.from(_N, "Participant", "Account"),
         type = "structure",
         name = "Account",
         target_id = id.from(_N, "AccountSummary"),
         target = M.AccountSummary,
      }),
   },
})

M.ConnectionTypeDetail = schema.new({
   id = id.from(_N, "ConnectionTypeDetail"),
   type = "structure",
   members = {
      CreatedAt = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterEmail = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "InviterEmail"),
         type = "string",
         name = "InviterEmail",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterName = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "InviterName"),
         type = "string",
         name = "InviterName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CanceledAt = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "CanceledAt"),
         type = "timestamp",
         name = "CanceledAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      CanceledBy = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "CanceledBy"),
         type = "string",
         name = "CanceledBy",
         target_id = prelude.String.id,
      }),
      OtherParticipant = schema.new({
         id = id.from(_N, "ConnectionTypeDetail", "OtherParticipant"),
         type = "union",
         name = "OtherParticipant",
         target_id = id.from(_N, "Participant"),
         target = M.Participant,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Connection = schema.new({
   id = id.from(_N, "Connection"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "Connection", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "Connection", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "Connection", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OtherParticipantAccountId = schema.new({
         id = id.from(_N, "Connection", "OtherParticipantAccountId"),
         type = "string",
         name = "OtherParticipantAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "Connection", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionTypes = schema.new({
         id = id.from(_N, "Connection", "ConnectionTypes"),
         type = "map",
         name = "ConnectionTypes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ConnectionTypeDetail,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AcceptConnectionInvitationOutput = schema.new({
   id = id.from(_N, "AcceptConnectionInvitationResponse"),
   type = "structure",
   members = {
      Connection = schema.new({
         id = id.from(_N, "AcceptConnectionInvitationOutput", "Connection"),
         type = "structure",
         name = "Connection",
         target_id = id.from(_N, "Connection"),
         target = M.Connection,
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
      Message = schema.new({
         id = id.from(_N, "AccessDeniedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Reason = schema.new({
         id = id.from(_N, "AccessDeniedException", "Reason"),
         type = "string",
         name = "Reason",
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
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Reason = schema.new({
         id = id.from(_N, "ConflictException", "Reason"),
         type = "string",
         name = "Reason",
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
      Reason = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "Reason"),
         type = "string",
         name = "Reason",
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
      Reason = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "Reason"),
         type = "string",
         name = "Reason",
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

M.BusinessValidationError = schema.new({
   id = id.from(_N, "BusinessValidationError"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "BusinessValidationError", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Code = schema.new({
         id = id.from(_N, "BusinessValidationError", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FieldValidationError = schema.new({
   id = id.from(_N, "FieldValidationError"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "FieldValidationError", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "FieldValidationError", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Code = schema.new({
         id = id.from(_N, "FieldValidationError", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ValidationError = schema.new({
   id = id.from(_N, "ValidationError"),
   type = "union",
   members = {
      FieldValidationError = schema.new({
         id = id.from(_N, "ValidationError", "FieldValidationError"),
         type = "structure",
         name = "FieldValidationError",
         target_id = id.from(_N, "FieldValidationError"),
         target = M.FieldValidationError,
      }),
      BusinessValidationError = schema.new({
         id = id.from(_N, "ValidationError", "BusinessValidationError"),
         type = "structure",
         name = "BusinessValidationError",
         target_id = id.from(_N, "BusinessValidationError"),
         target = M.BusinessValidationError,
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
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ErrorDetails = schema.new({
         id = id.from(_N, "ValidationException", "ErrorDetails"),
         type = "list",
         name = "ErrorDetails",
         target_id = prelude.Document.id,
         list_member = M.ValidationError,
      }),
   },
})

M.AllianceLeadContact = schema.new({
   id = id.from(_N, "AllianceLeadContact"),
   type = "structure",
   members = {
      FirstName = schema.new({
         id = id.from(_N, "AllianceLeadContact", "FirstName"),
         type = "string",
         name = "FirstName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LastName = schema.new({
         id = id.from(_N, "AllianceLeadContact", "LastName"),
         type = "string",
         name = "LastName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Email = schema.new({
         id = id.from(_N, "AllianceLeadContact", "Email"),
         type = "string",
         name = "Email",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BusinessTitle = schema.new({
         id = id.from(_N, "AllianceLeadContact", "BusinessTitle"),
         type = "string",
         name = "BusinessTitle",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateAwsTrainingCertificationEmailDomainInput = schema.new({
   id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Email = schema.new({
         id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainInput", "Email"),
         type = "string",
         name = "Email",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EmailVerificationCode = schema.new({
         id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainInput", "EmailVerificationCode"),
         type = "string",
         name = "EmailVerificationCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateAwsTrainingCertificationEmailDomainOutput = schema.new({
   id = id.from(_N, "AssociateAwsTrainingCertificationEmailDomainResponse"),
   type = "structure",
})

M.BusinessVerificationDetails = schema.new({
   id = id.from(_N, "BusinessVerificationDetails"),
   type = "structure",
   members = {
      LegalName = schema.new({
         id = id.from(_N, "BusinessVerificationDetails", "LegalName"),
         type = "string",
         name = "LegalName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RegistrationId = schema.new({
         id = id.from(_N, "BusinessVerificationDetails", "RegistrationId"),
         type = "string",
         name = "RegistrationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CountryCode = schema.new({
         id = id.from(_N, "BusinessVerificationDetails", "CountryCode"),
         type = "string",
         name = "CountryCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      JurisdictionOfIncorporation = schema.new({
         id = id.from(_N, "BusinessVerificationDetails", "JurisdictionOfIncorporation"),
         type = "string",
         name = "JurisdictionOfIncorporation",
         target_id = prelude.String.id,
      }),
   },
})

M.BusinessVerificationResponse = schema.new({
   id = id.from(_N, "BusinessVerificationResponse"),
   type = "structure",
   members = {
      BusinessVerificationDetails = schema.new({
         id = id.from(_N, "BusinessVerificationResponse", "BusinessVerificationDetails"),
         type = "structure",
         name = "BusinessVerificationDetails",
         target_id = id.from(_N, "BusinessVerificationDetails"),
         target = M.BusinessVerificationDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletionUrl = schema.new({
         id = id.from(_N, "BusinessVerificationResponse", "CompletionUrl"),
         type = "string",
         name = "CompletionUrl",
         target_id = prelude.String.id,
      }),
      CompletionUrlExpiresAt = schema.new({
         id = id.from(_N, "BusinessVerificationResponse", "CompletionUrlExpiresAt"),
         type = "timestamp",
         name = "CompletionUrlExpiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.CancelConnectionInput = schema.new({
   id = id.from(_N, "CancelConnectionRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CancelConnectionInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "CancelConnectionInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "CancelConnectionInput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Reason = schema.new({
         id = id.from(_N, "CancelConnectionInput", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CancelConnectionInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CancelConnectionOutput = schema.new({
   id = id.from(_N, "CancelConnectionResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CancelConnectionOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "CancelConnectionOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CancelConnectionOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OtherParticipantAccountId = schema.new({
         id = id.from(_N, "CancelConnectionOutput", "OtherParticipantAccountId"),
         type = "string",
         name = "OtherParticipantAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "CancelConnectionOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionTypes = schema.new({
         id = id.from(_N, "CancelConnectionOutput", "ConnectionTypes"),
         type = "map",
         name = "ConnectionTypes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ConnectionTypeDetail,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelConnectionInvitationInput = schema.new({
   id = id.from(_N, "CancelConnectionInvitationRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CancelConnectionInvitationInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "CancelConnectionInvitationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CancelConnectionInvitationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CancelConnectionInvitationOutput = schema.new({
   id = id.from(_N, "CancelConnectionInvitationResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      OtherParticipantIdentifier = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "OtherParticipantIdentifier"),
         type = "string",
         name = "OtherParticipantIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantType = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "ParticipantType"),
         type = "string",
         name = "ParticipantType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvitationMessage = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "InvitationMessage"),
         type = "string",
         name = "InvitationMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterEmail = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "InviterEmail"),
         type = "string",
         name = "InviterEmail",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterName = schema.new({
         id = id.from(_N, "CancelConnectionInvitationOutput", "InviterName"),
         type = "string",
         name = "InviterName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelProfileUpdateTaskInput = schema.new({
   id = id.from(_N, "CancelProfileUpdateTaskRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      TaskId = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskInput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ErrorDetail = schema.new({
   id = id.from(_N, "ErrorDetail"),
   type = "structure",
   members = {
      Locale = schema.new({
         id = id.from(_N, "ErrorDetail", "Locale"),
         type = "string",
         name = "Locale",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "ErrorDetail", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Reason = schema.new({
         id = id.from(_N, "ErrorDetail", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LocalizedContent = schema.new({
   id = id.from(_N, "LocalizedContent"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "LocalizedContent", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "LocalizedContent", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WebsiteUrl = schema.new({
         id = id.from(_N, "LocalizedContent", "WebsiteUrl"),
         type = "string",
         name = "WebsiteUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogoUrl = schema.new({
         id = id.from(_N, "LocalizedContent", "LogoUrl"),
         type = "string",
         name = "LogoUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Locale = schema.new({
         id = id.from(_N, "LocalizedContent", "Locale"),
         type = "string",
         name = "Locale",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.TaskDetails = schema.new({
   id = id.from(_N, "TaskDetails"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "TaskDetails", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "TaskDetails", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WebsiteUrl = schema.new({
         id = id.from(_N, "TaskDetails", "WebsiteUrl"),
         type = "string",
         name = "WebsiteUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogoUrl = schema.new({
         id = id.from(_N, "TaskDetails", "LogoUrl"),
         type = "string",
         name = "LogoUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PrimarySolutionType = schema.new({
         id = id.from(_N, "TaskDetails", "PrimarySolutionType"),
         type = "string",
         name = "PrimarySolutionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IndustrySegments = schema.new({
         id = id.from(_N, "TaskDetails", "IndustrySegments"),
         type = "list",
         name = "IndustrySegments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TranslationSourceLocale = schema.new({
         id = id.from(_N, "TaskDetails", "TranslationSourceLocale"),
         type = "string",
         name = "TranslationSourceLocale",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LocalizedContents = schema.new({
         id = id.from(_N, "TaskDetails", "LocalizedContents"),
         type = "list",
         name = "LocalizedContents",
         target_id = prelude.Document.id,
         list_member = M.LocalizedContent,
      }),
   },
})

M.CancelProfileUpdateTaskOutput = schema.new({
   id = id.from(_N, "CancelProfileUpdateTaskResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskId = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskDetails = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "TaskDetails"),
         type = "structure",
         name = "TaskDetails",
         target_id = id.from(_N, "TaskDetails"),
         target = M.TaskDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ErrorDetailList = schema.new({
         id = id.from(_N, "CancelProfileUpdateTaskOutput", "ErrorDetailList"),
         type = "list",
         name = "ErrorDetailList",
         target_id = prelude.Document.id,
         list_member = M.ErrorDetail,
      }),
   },
})

M.CreateConnectionInvitationInput = schema.new({
   id = id.from(_N, "CreateConnectionInvitationRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Email = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "Email"),
         type = "string",
         name = "Email",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReceiverIdentifier = schema.new({
         id = id.from(_N, "CreateConnectionInvitationInput", "ReceiverIdentifier"),
         type = "string",
         name = "ReceiverIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateConnectionInvitationOutput = schema.new({
   id = id.from(_N, "CreateConnectionInvitationResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      OtherParticipantIdentifier = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "OtherParticipantIdentifier"),
         type = "string",
         name = "OtherParticipantIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantType = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "ParticipantType"),
         type = "string",
         name = "ParticipantType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvitationMessage = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "InvitationMessage"),
         type = "string",
         name = "InvitationMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterEmail = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "InviterEmail"),
         type = "string",
         name = "InviterEmail",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterName = schema.new({
         id = id.from(_N, "CreateConnectionInvitationOutput", "InviterName"),
         type = "string",
         name = "InviterName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectionInvitationInput = schema.new({
   id = id.from(_N, "GetConnectionInvitationRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetConnectionInvitationInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "GetConnectionInvitationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectionInvitationOutput = schema.new({
   id = id.from(_N, "GetConnectionInvitationResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      OtherParticipantIdentifier = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "OtherParticipantIdentifier"),
         type = "string",
         name = "OtherParticipantIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantType = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "ParticipantType"),
         type = "string",
         name = "ParticipantType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvitationMessage = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "InvitationMessage"),
         type = "string",
         name = "InvitationMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterEmail = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "InviterEmail"),
         type = "string",
         name = "InviterEmail",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterName = schema.new({
         id = id.from(_N, "GetConnectionInvitationOutput", "InviterName"),
         type = "string",
         name = "InviterName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListConnectionInvitationsInput = schema.new({
   id = id.from(_N, "ListConnectionInvitationsRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 20 },
         },
      }),
      OtherParticipantIdentifiers = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "OtherParticipantIdentifiers"),
         type = "list",
         name = "OtherParticipantIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ParticipantType = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "ParticipantType"),
         type = "string",
         name = "ParticipantType",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ListConnectionInvitationsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.ConnectionInvitationSummary = schema.new({
   id = id.from(_N, "ConnectionInvitationSummary"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      OtherParticipantIdentifier = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "OtherParticipantIdentifier"),
         type = "string",
         name = "OtherParticipantIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantType = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "ParticipantType"),
         type = "string",
         name = "ParticipantType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ConnectionInvitationSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListConnectionInvitationsOutput = schema.new({
   id = id.from(_N, "ListConnectionInvitationsResponse"),
   type = "structure",
   members = {
      ConnectionInvitationSummaries = schema.new({
         id = id.from(_N, "ListConnectionInvitationsOutput", "ConnectionInvitationSummaries"),
         type = "list",
         name = "ConnectionInvitationSummaries",
         target_id = prelude.Document.id,
         list_member = M.ConnectionInvitationSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConnectionInvitationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.RejectConnectionInvitationInput = schema.new({
   id = id.from(_N, "RejectConnectionInvitationRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "RejectConnectionInvitationInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "RejectConnectionInvitationInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "RejectConnectionInvitationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Reason = schema.new({
         id = id.from(_N, "RejectConnectionInvitationInput", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
      }),
   },
})

M.RejectConnectionInvitationOutput = schema.new({
   id = id.from(_N, "RejectConnectionInvitationResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionId = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "ConnectionId"),
         type = "string",
         name = "ConnectionId",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpiresAt = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "ExpiresAt"),
         type = "timestamp",
         name = "ExpiresAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      OtherParticipantIdentifier = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "OtherParticipantIdentifier"),
         type = "string",
         name = "OtherParticipantIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ParticipantType = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "ParticipantType"),
         type = "string",
         name = "ParticipantType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InvitationMessage = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "InvitationMessage"),
         type = "string",
         name = "InvitationMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterEmail = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "InviterEmail"),
         type = "string",
         name = "InviterEmail",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InviterName = schema.new({
         id = id.from(_N, "RejectConnectionInvitationOutput", "InviterName"),
         type = "string",
         name = "InviterName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectionPreferencesInput = schema.new({
   id = id.from(_N, "GetConnectionPreferencesRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetConnectionPreferencesInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectionPreferencesOutput = schema.new({
   id = id.from(_N, "GetConnectionPreferencesResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetConnectionPreferencesOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetConnectionPreferencesOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessType = schema.new({
         id = id.from(_N, "GetConnectionPreferencesOutput", "AccessType"),
         type = "string",
         name = "AccessType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExcludedParticipantIds = schema.new({
         id = id.from(_N, "GetConnectionPreferencesOutput", "ExcludedParticipantIds"),
         type = "list",
         name = "ExcludedParticipantIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetConnectionPreferencesOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Revision = schema.new({
         id = id.from(_N, "GetConnectionPreferencesOutput", "Revision"),
         type = "long",
         name = "Revision",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateConnectionPreferencesInput = schema.new({
   id = id.from(_N, "UpdateConnectionPreferencesRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Revision = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesInput", "Revision"),
         type = "long",
         name = "Revision",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessType = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesInput", "AccessType"),
         type = "string",
         name = "AccessType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExcludedParticipantIdentifiers = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesInput", "ExcludedParticipantIdentifiers"),
         type = "list",
         name = "ExcludedParticipantIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateConnectionPreferencesOutput = schema.new({
   id = id.from(_N, "UpdateConnectionPreferencesResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccessType = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesOutput", "AccessType"),
         type = "string",
         name = "AccessType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExcludedParticipantIds = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesOutput", "ExcludedParticipantIds"),
         type = "list",
         name = "ExcludedParticipantIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Revision = schema.new({
         id = id.from(_N, "UpdateConnectionPreferencesOutput", "Revision"),
         type = "long",
         name = "Revision",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectionInput = schema.new({
   id = id.from(_N, "GetConnectionRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetConnectionInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "GetConnectionInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectionOutput = schema.new({
   id = id.from(_N, "GetConnectionResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetConnectionOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetConnectionOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetConnectionOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OtherParticipantAccountId = schema.new({
         id = id.from(_N, "GetConnectionOutput", "OtherParticipantAccountId"),
         type = "string",
         name = "OtherParticipantAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "GetConnectionOutput", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionTypes = schema.new({
         id = id.from(_N, "GetConnectionOutput", "ConnectionTypes"),
         type = "map",
         name = "ConnectionTypes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ConnectionTypeDetail,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListConnectionsInput = schema.new({
   id = id.from(_N, "ListConnectionsRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "ListConnectionsInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConnectionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      ConnectionType = schema.new({
         id = id.from(_N, "ListConnectionsInput", "ConnectionType"),
         type = "string",
         name = "ConnectionType",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListConnectionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 20 },
         },
      }),
      OtherParticipantIdentifiers = schema.new({
         id = id.from(_N, "ListConnectionsInput", "OtherParticipantIdentifiers"),
         type = "list",
         name = "OtherParticipantIdentifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ConnectionTypeSummary = schema.new({
   id = id.from(_N, "ConnectionTypeSummary"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ConnectionTypeSummary", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OtherParticipant = schema.new({
         id = id.from(_N, "ConnectionTypeSummary", "OtherParticipant"),
         type = "union",
         name = "OtherParticipant",
         target_id = id.from(_N, "Participant"),
         target = M.Participant,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConnectionSummary = schema.new({
   id = id.from(_N, "ConnectionSummary"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "ConnectionSummary", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "ConnectionSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "ConnectionSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OtherParticipantAccountId = schema.new({
         id = id.from(_N, "ConnectionSummary", "OtherParticipantAccountId"),
         type = "string",
         name = "OtherParticipantAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UpdatedAt = schema.new({
         id = id.from(_N, "ConnectionSummary", "UpdatedAt"),
         type = "timestamp",
         name = "UpdatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionTypes = schema.new({
         id = id.from(_N, "ConnectionSummary", "ConnectionTypes"),
         type = "map",
         name = "ConnectionTypes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ConnectionTypeSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListConnectionsOutput = schema.new({
   id = id.from(_N, "ListConnectionsResponse"),
   type = "structure",
   members = {
      ConnectionSummaries = schema.new({
         id = id.from(_N, "ListConnectionsOutput", "ConnectionSummaries"),
         type = "list",
         name = "ConnectionSummaries",
         target_id = prelude.Document.id,
         list_member = M.ConnectionSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListConnectionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
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

M.CreatePartnerInput = schema.new({
   id = id.from(_N, "CreatePartnerRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CreatePartnerInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreatePartnerInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      LegalName = schema.new({
         id = id.from(_N, "CreatePartnerInput", "LegalName"),
         type = "string",
         name = "LegalName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PrimarySolutionType = schema.new({
         id = id.from(_N, "CreatePartnerInput", "PrimarySolutionType"),
         type = "string",
         name = "PrimarySolutionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AllianceLeadContact = schema.new({
         id = id.from(_N, "CreatePartnerInput", "AllianceLeadContact"),
         type = "structure",
         name = "AllianceLeadContact",
         target_id = id.from(_N, "AllianceLeadContact"),
         target = M.AllianceLeadContact,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EmailVerificationCode = schema.new({
         id = id.from(_N, "CreatePartnerInput", "EmailVerificationCode"),
         type = "string",
         name = "EmailVerificationCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreatePartnerInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.PartnerDomain = schema.new({
   id = id.from(_N, "PartnerDomain"),
   type = "structure",
   members = {
      DomainName = schema.new({
         id = id.from(_N, "PartnerDomain", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RegisteredAt = schema.new({
         id = id.from(_N, "PartnerDomain", "RegisteredAt"),
         type = "timestamp",
         name = "RegisteredAt",
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

M.PartnerProfile = schema.new({
   id = id.from(_N, "PartnerProfile"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "PartnerProfile", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "PartnerProfile", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WebsiteUrl = schema.new({
         id = id.from(_N, "PartnerProfile", "WebsiteUrl"),
         type = "string",
         name = "WebsiteUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LogoUrl = schema.new({
         id = id.from(_N, "PartnerProfile", "LogoUrl"),
         type = "string",
         name = "LogoUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PrimarySolutionType = schema.new({
         id = id.from(_N, "PartnerProfile", "PrimarySolutionType"),
         type = "string",
         name = "PrimarySolutionType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IndustrySegments = schema.new({
         id = id.from(_N, "PartnerProfile", "IndustrySegments"),
         type = "list",
         name = "IndustrySegments",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TranslationSourceLocale = schema.new({
         id = id.from(_N, "PartnerProfile", "TranslationSourceLocale"),
         type = "string",
         name = "TranslationSourceLocale",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LocalizedContents = schema.new({
         id = id.from(_N, "PartnerProfile", "LocalizedContents"),
         type = "list",
         name = "LocalizedContents",
         target_id = prelude.Document.id,
         list_member = M.LocalizedContent,
      }),
      ProfileId = schema.new({
         id = id.from(_N, "PartnerProfile", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePartnerOutput = schema.new({
   id = id.from(_N, "CreatePartnerResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LegalName = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "LegalName"),
         type = "string",
         name = "LegalName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Profile = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "Profile"),
         type = "structure",
         name = "Profile",
         target_id = id.from(_N, "PartnerProfile"),
         target = M.PartnerProfile,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AwsTrainingCertificationEmailDomains = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "AwsTrainingCertificationEmailDomains"),
         type = "list",
         name = "AwsTrainingCertificationEmailDomains",
         target_id = prelude.Document.id,
         list_member = M.PartnerDomain,
      }),
      AllianceLeadContact = schema.new({
         id = id.from(_N, "CreatePartnerOutput", "AllianceLeadContact"),
         type = "structure",
         name = "AllianceLeadContact",
         target_id = id.from(_N, "AllianceLeadContact"),
         target = M.AllianceLeadContact,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateAwsTrainingCertificationEmailDomainInput = schema.new({
   id = id.from(_N, "DisassociateAwsTrainingCertificationEmailDomainRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "DisassociateAwsTrainingCertificationEmailDomainInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "DisassociateAwsTrainingCertificationEmailDomainInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "DisassociateAwsTrainingCertificationEmailDomainInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      DomainName = schema.new({
         id = id.from(_N, "DisassociateAwsTrainingCertificationEmailDomainInput", "DomainName"),
         type = "string",
         name = "DomainName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateAwsTrainingCertificationEmailDomainOutput = schema.new({
   id = id.from(_N, "DisassociateAwsTrainingCertificationEmailDomainResponse"),
   type = "structure",
})

M.GetAllianceLeadContactInput = schema.new({
   id = id.from(_N, "GetAllianceLeadContactRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetAllianceLeadContactInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "GetAllianceLeadContactInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetAllianceLeadContactOutput = schema.new({
   id = id.from(_N, "GetAllianceLeadContactResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetAllianceLeadContactOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetAllianceLeadContactOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetAllianceLeadContactOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AllianceLeadContact = schema.new({
         id = id.from(_N, "GetAllianceLeadContactOutput", "AllianceLeadContact"),
         type = "structure",
         name = "AllianceLeadContact",
         target_id = id.from(_N, "AllianceLeadContact"),
         target = M.AllianceLeadContact,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPartnerInput = schema.new({
   id = id.from(_N, "GetPartnerRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetPartnerInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "GetPartnerInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetPartnerOutput = schema.new({
   id = id.from(_N, "GetPartnerResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetPartnerOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetPartnerOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetPartnerOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LegalName = schema.new({
         id = id.from(_N, "GetPartnerOutput", "LegalName"),
         type = "string",
         name = "LegalName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "GetPartnerOutput", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Profile = schema.new({
         id = id.from(_N, "GetPartnerOutput", "Profile"),
         type = "structure",
         name = "Profile",
         target_id = id.from(_N, "PartnerProfile"),
         target = M.PartnerProfile,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AwsTrainingCertificationEmailDomains = schema.new({
         id = id.from(_N, "GetPartnerOutput", "AwsTrainingCertificationEmailDomains"),
         type = "list",
         name = "AwsTrainingCertificationEmailDomains",
         target_id = prelude.Document.id,
         list_member = M.PartnerDomain,
      }),
   },
})

M.GetProfileUpdateTaskInput = schema.new({
   id = id.from(_N, "GetProfileUpdateTaskRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetProfileUpdateTaskOutput = schema.new({
   id = id.from(_N, "GetProfileUpdateTaskResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskId = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskDetails = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "TaskDetails"),
         type = "structure",
         name = "TaskDetails",
         target_id = id.from(_N, "TaskDetails"),
         target = M.TaskDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ErrorDetailList = schema.new({
         id = id.from(_N, "GetProfileUpdateTaskOutput", "ErrorDetailList"),
         type = "list",
         name = "ErrorDetailList",
         target_id = prelude.Document.id,
         list_member = M.ErrorDetail,
      }),
   },
})

M.GetProfileVisibilityInput = schema.new({
   id = id.from(_N, "GetProfileVisibilityRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetProfileVisibilityInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "GetProfileVisibilityInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetProfileVisibilityOutput = schema.new({
   id = id.from(_N, "GetProfileVisibilityResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "GetProfileVisibilityOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "GetProfileVisibilityOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "GetProfileVisibilityOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Visibility = schema.new({
         id = id.from(_N, "GetProfileVisibilityOutput", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProfileId = schema.new({
         id = id.from(_N, "GetProfileVisibilityOutput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetVerificationInput = schema.new({
   id = id.from(_N, "GetVerificationRequest"),
   type = "structure",
   members = {
      VerificationType = schema.new({
         id = id.from(_N, "GetVerificationInput", "VerificationType"),
         type = "string",
         name = "VerificationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RegistrantVerificationResponse = schema.new({
   id = id.from(_N, "RegistrantVerificationResponse"),
   type = "structure",
   members = {
      CompletionUrl = schema.new({
         id = id.from(_N, "RegistrantVerificationResponse", "CompletionUrl"),
         type = "string",
         name = "CompletionUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletionUrlExpiresAt = schema.new({
         id = id.from(_N, "RegistrantVerificationResponse", "CompletionUrlExpiresAt"),
         type = "timestamp",
         name = "CompletionUrlExpiresAt",
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

M.VerificationResponseDetails = schema.new({
   id = id.from(_N, "VerificationResponseDetails"),
   type = "union",
   members = {
      BusinessVerificationResponse = schema.new({
         id = id.from(_N, "VerificationResponseDetails", "BusinessVerificationResponse"),
         type = "structure",
         name = "BusinessVerificationResponse",
         target_id = id.from(_N, "BusinessVerificationResponse"),
         target = M.BusinessVerificationResponse,
      }),
      RegistrantVerificationResponse = schema.new({
         id = id.from(_N, "VerificationResponseDetails", "RegistrantVerificationResponse"),
         type = "structure",
         name = "RegistrantVerificationResponse",
         target_id = id.from(_N, "RegistrantVerificationResponse"),
         target = M.RegistrantVerificationResponse,
      }),
   },
})

M.GetVerificationOutput = schema.new({
   id = id.from(_N, "GetVerificationResponse"),
   type = "structure",
   members = {
      VerificationType = schema.new({
         id = id.from(_N, "GetVerificationOutput", "VerificationType"),
         type = "string",
         name = "VerificationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VerificationStatus = schema.new({
         id = id.from(_N, "GetVerificationOutput", "VerificationStatus"),
         type = "string",
         name = "VerificationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VerificationStatusReason = schema.new({
         id = id.from(_N, "GetVerificationOutput", "VerificationStatusReason"),
         type = "string",
         name = "VerificationStatusReason",
         target_id = prelude.String.id,
      }),
      VerificationResponseDetails = schema.new({
         id = id.from(_N, "GetVerificationOutput", "VerificationResponseDetails"),
         type = "union",
         name = "VerificationResponseDetails",
         target_id = id.from(_N, "VerificationResponseDetails"),
         target = M.VerificationResponseDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "GetVerificationOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletedAt = schema.new({
         id = id.from(_N, "GetVerificationOutput", "CompletedAt"),
         type = "timestamp",
         name = "CompletedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListPartnersInput = schema.new({
   id = id.from(_N, "ListPartnersRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "ListPartnersInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPartnersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PartnerSummary = schema.new({
   id = id.from(_N, "PartnerSummary"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "PartnerSummary", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "PartnerSummary", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PartnerSummary", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LegalName = schema.new({
         id = id.from(_N, "PartnerSummary", "LegalName"),
         type = "string",
         name = "LegalName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedAt = schema.new({
         id = id.from(_N, "PartnerSummary", "CreatedAt"),
         type = "timestamp",
         name = "CreatedAt",
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

M.ListPartnersOutput = schema.new({
   id = id.from(_N, "ListPartnersResponse"),
   type = "structure",
   members = {
      PartnerSummaryList = schema.new({
         id = id.from(_N, "ListPartnersOutput", "PartnerSummaryList"),
         type = "list",
         name = "PartnerSummaryList",
         target_id = prelude.Document.id,
         list_member = M.PartnerSummary,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPartnersOutput", "NextToken"),
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
      ResourceArn = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "ResourceArn"),
         type = "string",
         name = "ResourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "ListTagsForResourceOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.PutAllianceLeadContactInput = schema.new({
   id = id.from(_N, "PutAllianceLeadContactRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "PutAllianceLeadContactInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "PutAllianceLeadContactInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AllianceLeadContact = schema.new({
         id = id.from(_N, "PutAllianceLeadContactInput", "AllianceLeadContact"),
         type = "structure",
         name = "AllianceLeadContact",
         target_id = id.from(_N, "AllianceLeadContact"),
         target = M.AllianceLeadContact,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EmailVerificationCode = schema.new({
         id = id.from(_N, "PutAllianceLeadContactInput", "EmailVerificationCode"),
         type = "string",
         name = "EmailVerificationCode",
         target_id = prelude.String.id,
      }),
   },
})

M.PutAllianceLeadContactOutput = schema.new({
   id = id.from(_N, "PutAllianceLeadContactResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "PutAllianceLeadContactOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "PutAllianceLeadContactOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PutAllianceLeadContactOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AllianceLeadContact = schema.new({
         id = id.from(_N, "PutAllianceLeadContactOutput", "AllianceLeadContact"),
         type = "structure",
         name = "AllianceLeadContact",
         target_id = id.from(_N, "AllianceLeadContact"),
         target = M.AllianceLeadContact,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutProfileVisibilityInput = schema.new({
   id = id.from(_N, "PutProfileVisibilityRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "PutProfileVisibilityInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "PutProfileVisibilityInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Visibility = schema.new({
         id = id.from(_N, "PutProfileVisibilityInput", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutProfileVisibilityOutput = schema.new({
   id = id.from(_N, "PutProfileVisibilityResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "PutProfileVisibilityOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "PutProfileVisibilityOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "PutProfileVisibilityOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Visibility = schema.new({
         id = id.from(_N, "PutProfileVisibilityOutput", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProfileId = schema.new({
         id = id.from(_N, "PutProfileVisibilityOutput", "ProfileId"),
         type = "string",
         name = "ProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartProfileUpdateTaskInput = schema.new({
   id = id.from(_N, "StartProfileUpdateTaskRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Identifier = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskInput", "Identifier"),
         type = "string",
         name = "Identifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      TaskDetails = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskInput", "TaskDetails"),
         type = "structure",
         name = "TaskDetails",
         target_id = id.from(_N, "TaskDetails"),
         target = M.TaskDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartProfileUpdateTaskOutput = schema.new({
   id = id.from(_N, "StartProfileUpdateTaskResponse"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Id = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskId = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TaskDetails = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "TaskDetails"),
         type = "structure",
         name = "TaskDetails",
         target_id = id.from(_N, "TaskDetails"),
         target = M.TaskDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EndedAt = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "EndedAt"),
         type = "timestamp",
         name = "EndedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ErrorDetailList = schema.new({
         id = id.from(_N, "StartProfileUpdateTaskOutput", "ErrorDetailList"),
         type = "list",
         name = "ErrorDetailList",
         target_id = prelude.Document.id,
         list_member = M.ErrorDetail,
      }),
   },
})

M.SendEmailVerificationCodeInput = schema.new({
   id = id.from(_N, "SendEmailVerificationCodeRequest"),
   type = "structure",
   members = {
      Catalog = schema.new({
         id = id.from(_N, "SendEmailVerificationCodeInput", "Catalog"),
         type = "string",
         name = "Catalog",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Email = schema.new({
         id = id.from(_N, "SendEmailVerificationCodeInput", "Email"),
         type = "string",
         name = "Email",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendEmailVerificationCodeOutput = schema.new({
   id = id.from(_N, "SendEmailVerificationCodeResponse"),
   type = "structure",
})

M.RegistrantVerificationDetails = schema.new({
   id = id.from(_N, "RegistrantVerificationDetails"),
   type = "structure",
})

M.VerificationDetails = schema.new({
   id = id.from(_N, "VerificationDetails"),
   type = "union",
   members = {
      BusinessVerificationDetails = schema.new({
         id = id.from(_N, "VerificationDetails", "BusinessVerificationDetails"),
         type = "structure",
         name = "BusinessVerificationDetails",
         target_id = id.from(_N, "BusinessVerificationDetails"),
         target = M.BusinessVerificationDetails,
      }),
      RegistrantVerificationDetails = schema.new({
         id = id.from(_N, "VerificationDetails", "RegistrantVerificationDetails"),
         type = "structure",
         name = "RegistrantVerificationDetails",
         target_id = id.from(_N, "RegistrantVerificationDetails"),
         target = M.RegistrantVerificationDetails,
      }),
   },
})

M.StartVerificationInput = schema.new({
   id = id.from(_N, "StartVerificationRequest"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "StartVerificationInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      VerificationDetails = schema.new({
         id = id.from(_N, "StartVerificationInput", "VerificationDetails"),
         type = "union",
         name = "VerificationDetails",
         target_id = id.from(_N, "VerificationDetails"),
         target = M.VerificationDetails,
      }),
   },
})

M.StartVerificationOutput = schema.new({
   id = id.from(_N, "StartVerificationResponse"),
   type = "structure",
   members = {
      VerificationType = schema.new({
         id = id.from(_N, "StartVerificationOutput", "VerificationType"),
         type = "string",
         name = "VerificationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VerificationStatus = schema.new({
         id = id.from(_N, "StartVerificationOutput", "VerificationStatus"),
         type = "string",
         name = "VerificationStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VerificationStatusReason = schema.new({
         id = id.from(_N, "StartVerificationOutput", "VerificationStatusReason"),
         type = "string",
         name = "VerificationStatusReason",
         target_id = prelude.String.id,
      }),
      VerificationResponseDetails = schema.new({
         id = id.from(_N, "StartVerificationOutput", "VerificationResponseDetails"),
         type = "union",
         name = "VerificationResponseDetails",
         target_id = id.from(_N, "VerificationResponseDetails"),
         target = M.VerificationResponseDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StartedAt = schema.new({
         id = id.from(_N, "StartVerificationOutput", "StartedAt"),
         type = "timestamp",
         name = "StartedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
         direct_traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CompletedAt = schema.new({
         id = id.from(_N, "StartVerificationOutput", "CompletedAt"),
         type = "timestamp",
         name = "CompletedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
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
   id = id.from("com.amazonaws.partnercentralaccount", "PartnerCentralAccount"),
   version = "2025-04-04",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AcceptConnectionInvitation = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "AcceptConnectionInvitation"),
   input = M.AcceptConnectionInvitationInput,
   output = M.AcceptConnectionInvitationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateAwsTrainingCertificationEmailDomain = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "AssociateAwsTrainingCertificationEmailDomain"),
   input = M.AssociateAwsTrainingCertificationEmailDomainInput,
   output = M.AssociateAwsTrainingCertificationEmailDomainOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelConnection = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "CancelConnection"),
   input = M.CancelConnectionInput,
   output = M.CancelConnectionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelConnectionInvitation = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "CancelConnectionInvitation"),
   input = M.CancelConnectionInvitationInput,
   output = M.CancelConnectionInvitationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelProfileUpdateTask = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "CancelProfileUpdateTask"),
   input = M.CancelProfileUpdateTaskInput,
   output = M.CancelProfileUpdateTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateConnectionInvitation = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "CreateConnectionInvitation"),
   input = M.CreateConnectionInvitationInput,
   output = M.CreateConnectionInvitationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePartner = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "CreatePartner"),
   input = M.CreatePartnerInput,
   output = M.CreatePartnerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateAwsTrainingCertificationEmailDomain = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "DisassociateAwsTrainingCertificationEmailDomain"),
   input = M.DisassociateAwsTrainingCertificationEmailDomainInput,
   output = M.DisassociateAwsTrainingCertificationEmailDomainOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetAllianceLeadContact = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetAllianceLeadContact"),
   input = M.GetAllianceLeadContactInput,
   output = M.GetAllianceLeadContactOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConnection = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetConnection"),
   input = M.GetConnectionInput,
   output = M.GetConnectionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConnectionInvitation = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetConnectionInvitation"),
   input = M.GetConnectionInvitationInput,
   output = M.GetConnectionInvitationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConnectionPreferences = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetConnectionPreferences"),
   input = M.GetConnectionPreferencesInput,
   output = M.GetConnectionPreferencesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPartner = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetPartner"),
   input = M.GetPartnerInput,
   output = M.GetPartnerOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProfileUpdateTask = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetProfileUpdateTask"),
   input = M.GetProfileUpdateTaskInput,
   output = M.GetProfileUpdateTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProfileVisibility = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetProfileVisibility"),
   input = M.GetProfileVisibilityInput,
   output = M.GetProfileVisibilityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVerification = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "GetVerification"),
   input = M.GetVerificationInput,
   output = M.GetVerificationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListConnectionInvitations = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "ListConnectionInvitations"),
   input = M.ListConnectionInvitationsInput,
   output = M.ListConnectionInvitationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListConnections = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "ListConnections"),
   input = M.ListConnectionsInput,
   output = M.ListConnectionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPartners = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "ListPartners"),
   input = M.ListPartnersInput,
   output = M.ListPartnersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutAllianceLeadContact = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "PutAllianceLeadContact"),
   input = M.PutAllianceLeadContactInput,
   output = M.PutAllianceLeadContactOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutProfileVisibility = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "PutProfileVisibility"),
   input = M.PutProfileVisibilityInput,
   output = M.PutProfileVisibilityOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RejectConnectionInvitation = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "RejectConnectionInvitation"),
   input = M.RejectConnectionInvitationInput,
   output = M.RejectConnectionInvitationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendEmailVerificationCode = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "SendEmailVerificationCode"),
   input = M.SendEmailVerificationCodeInput,
   output = M.SendEmailVerificationCodeOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartProfileUpdateTask = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "StartProfileUpdateTask"),
   input = M.StartProfileUpdateTaskInput,
   output = M.StartProfileUpdateTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartVerification = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "StartVerification"),
   input = M.StartVerificationInput,
   output = M.StartVerificationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateConnectionPreferences = schema.operation({
   id = id.from("com.amazonaws.partnercentralaccount", "UpdateConnectionPreferences"),
   input = M.UpdateConnectionPreferencesInput,
   output = M.UpdateConnectionPreferencesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
