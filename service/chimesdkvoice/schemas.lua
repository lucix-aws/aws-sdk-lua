

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.chimesdkvoice"

local M = {}

M.E164PhoneNumberList = schema.new({ type = "list", list_member = prelude.String })

M.PhoneNumberErrorList = schema.new({ type = "list", list_member = M.PhoneNumberError })

M.NonEmptyStringList = schema.new({ type = "list", list_member = prelude.String })

M.UpdatePhoneNumberRequestItemList = schema.new({ type = "list", list_member = M.UpdatePhoneNumberRequestItem })

M.ParticipantPhoneNumberList = schema.new({ type = "list", list_member = prelude.String })

M.CapabilityList = schema.new({ type = "list", list_member = prelude.String })

M.SipMediaApplicationEndpointList = schema.new({ type = "list", list_member = M.SipMediaApplicationEndpoint })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.SipHeadersMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SMACreateCallArgumentsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.SipRuleTargetApplicationList = schema.new({ type = "list", list_member = M.SipRuleTargetApplication })

M.VoiceConnectorItemList = schema.new({ type = "list", list_member = M.VoiceConnectorItem })

M.SensitiveStringList = schema.new({ type = "list", list_member = prelude.String })

M.VoiceConnectorAwsRegionList = schema.new({ type = "list", list_member = prelude.String })

M.PhoneNumberOrderList = schema.new({ type = "list", list_member = M.PhoneNumberOrder })

M.PhoneNumberList = schema.new({ type = "list", list_member = M.PhoneNumber })

M.ProxySessions = schema.new({ type = "list", list_member = M.ProxySession })

M.SipMediaApplicationList = schema.new({ type = "list", list_member = M.SipMediaApplication })

M.SipRuleList = schema.new({ type = "list", list_member = M.SipRule })

M.PhoneNumberCountriesList = schema.new({ type = "list", list_member = M.PhoneNumberCountry })

M.VoiceConnectorGroupList = schema.new({ type = "list", list_member = M.VoiceConnectorGroup })

M.VoiceConnectorList = schema.new({ type = "list", list_member = M.VoiceConnector })

M.VoiceProfileDomainSummaryList = schema.new({ type = "list", list_member = M.VoiceProfileDomainSummary })

M.VoiceProfileSummaryList = schema.new({ type = "list", list_member = M.VoiceProfileSummary })

M.SessionBorderControllerTypeList = schema.new({ type = "list", list_member = prelude.String })

M.ContactCenterSystemTypeList = schema.new({ type = "list", list_member = prelude.String })

M.CountryList = schema.new({ type = "list", list_member = prelude.String })

M.CredentialList = schema.new({ type = "list", list_member = M.Credential })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.SMAUpdateCallArgumentsMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.CandidateAddressList = schema.new({ type = "list", list_member = M.CandidateAddress })

M.OrderedPhoneNumberList = schema.new({ type = "list", list_member = M.OrderedPhoneNumber })

M.Participants = schema.new({ type = "list", list_member = M.Participant })

M.PhoneNumberAssociationList = schema.new({ type = "list", list_member = M.PhoneNumberAssociation })

M.AlexaSkillIdList = schema.new({ type = "list", list_member = prelude.String })

M.DNISEmergencyCallingConfigurationList = schema.new({ type = "list", list_member = M.DNISEmergencyCallingConfiguration })

M.OriginationRouteList = schema.new({ type = "list", list_member = M.OriginationRoute })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.StreamingNotificationTargetList = schema.new({ type = "list", list_member = M.StreamingNotificationTarget })

M.CallingRegionList = schema.new({ type = "list", list_member = prelude.String })

M.SpeakerSearchResultList = schema.new({ type = "list", list_member = M.SpeakerSearchResult })

M.PhoneNumberTypeList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "AccessDeniedException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "AccessDeniedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.Address = schema.new({
   id = id.from(_N, "Address"),
   type = "structure",
   members = {
      streetName = schema.new({
         id = id.from(_N, "Address", "streetName"),
         type = "string",
         name = "streetName",
         target_id = prelude.String.id,
      }),
      streetSuffix = schema.new({
         id = id.from(_N, "Address", "streetSuffix"),
         type = "string",
         name = "streetSuffix",
         target_id = prelude.String.id,
      }),
      postDirectional = schema.new({
         id = id.from(_N, "Address", "postDirectional"),
         type = "string",
         name = "postDirectional",
         target_id = prelude.String.id,
      }),
      preDirectional = schema.new({
         id = id.from(_N, "Address", "preDirectional"),
         type = "string",
         name = "preDirectional",
         target_id = prelude.String.id,
      }),
      streetNumber = schema.new({
         id = id.from(_N, "Address", "streetNumber"),
         type = "string",
         name = "streetNumber",
         target_id = prelude.String.id,
      }),
      city = schema.new({
         id = id.from(_N, "Address", "city"),
         type = "string",
         name = "city",
         target_id = prelude.String.id,
      }),
      state = schema.new({
         id = id.from(_N, "Address", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
      postalCode = schema.new({
         id = id.from(_N, "Address", "postalCode"),
         type = "string",
         name = "postalCode",
         target_id = prelude.String.id,
      }),
      postalCodePlus4 = schema.new({
         id = id.from(_N, "Address", "postalCodePlus4"),
         type = "string",
         name = "postalCodePlus4",
         target_id = prelude.String.id,
      }),
      country = schema.new({
         id = id.from(_N, "Address", "country"),
         type = "string",
         name = "country",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociatePhoneNumbersWithVoiceConnectorInput = schema.new({
   id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      E164PhoneNumbers = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorInput", "E164PhoneNumbers"),
         type = "list",
         name = "E164PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ForceAssociate = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorInput", "ForceAssociate"),
         type = "boolean",
         name = "ForceAssociate",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.PhoneNumberError = schema.new({
   id = id.from(_N, "PhoneNumberError"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "PhoneNumberError", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "PhoneNumberError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "PhoneNumberError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociatePhoneNumbersWithVoiceConnectorOutput = schema.new({
   id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorResponse"),
   type = "structure",
   members = {
      PhoneNumberErrors = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorOutput", "PhoneNumberErrors"),
         type = "list",
         name = "PhoneNumberErrors",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberError,
      }),
   },
})

M.BadRequestException = schema.new({
   id = id.from(_N, "BadRequestException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "BadRequestException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "BadRequestException", "Message"),
         type = "string",
         name = "Message",
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
      Code = schema.new({
         id = id.from(_N, "ForbiddenException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ForbiddenException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      Code = schema.new({
         id = id.from(_N, "NotFoundException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "NotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceFailureException = schema.new({
   id = id.from(_N, "ServiceFailureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "ServiceFailureException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ServiceFailureException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServiceUnavailableException = schema.new({
   id = id.from(_N, "ServiceUnavailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ServiceUnavailableException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ThrottledClientException = schema.new({
   id = id.from(_N, "ThrottledClientException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "ThrottledClientException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ThrottledClientException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnauthorizedClientException = schema.new({
   id = id.from(_N, "UnauthorizedClientException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "UnauthorizedClientException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "UnauthorizedClientException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociatePhoneNumbersWithVoiceConnectorGroupInput = schema.new({
   id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorGroupRequest"),
   type = "structure",
   members = {
      VoiceConnectorGroupId = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorGroupInput", "VoiceConnectorGroupId"),
         type = "string",
         name = "VoiceConnectorGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      E164PhoneNumbers = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorGroupInput", "E164PhoneNumbers"),
         type = "list",
         name = "E164PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ForceAssociate = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorGroupInput", "ForceAssociate"),
         type = "boolean",
         name = "ForceAssociate",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AssociatePhoneNumbersWithVoiceConnectorGroupOutput = schema.new({
   id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorGroupResponse"),
   type = "structure",
   members = {
      PhoneNumberErrors = schema.new({
         id = id.from(_N, "AssociatePhoneNumbersWithVoiceConnectorGroupOutput", "PhoneNumberErrors"),
         type = "list",
         name = "PhoneNumberErrors",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberError,
      }),
   },
})

M.BatchDeletePhoneNumberInput = schema.new({
   id = id.from(_N, "BatchDeletePhoneNumberRequest"),
   type = "structure",
   members = {
      PhoneNumberIds = schema.new({
         id = id.from(_N, "BatchDeletePhoneNumberInput", "PhoneNumberIds"),
         type = "list",
         name = "PhoneNumberIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDeletePhoneNumberOutput = schema.new({
   id = id.from(_N, "BatchDeletePhoneNumberResponse"),
   type = "structure",
   members = {
      PhoneNumberErrors = schema.new({
         id = id.from(_N, "BatchDeletePhoneNumberOutput", "PhoneNumberErrors"),
         type = "list",
         name = "PhoneNumberErrors",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberError,
      }),
   },
})

M.UpdatePhoneNumberRequestItem = schema.new({
   id = id.from(_N, "UpdatePhoneNumberRequestItem"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "UpdatePhoneNumberRequestItem", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ProductType = schema.new({
         id = id.from(_N, "UpdatePhoneNumberRequestItem", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
      }),
      CallingName = schema.new({
         id = id.from(_N, "UpdatePhoneNumberRequestItem", "CallingName"),
         type = "string",
         name = "CallingName",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePhoneNumberRequestItem", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchUpdatePhoneNumberInput = schema.new({
   id = id.from(_N, "BatchUpdatePhoneNumberRequest"),
   type = "structure",
   members = {
      UpdatePhoneNumberRequestItems = schema.new({
         id = id.from(_N, "BatchUpdatePhoneNumberInput", "UpdatePhoneNumberRequestItems"),
         type = "list",
         name = "UpdatePhoneNumberRequestItems",
         target_id = prelude.Document.id,
         list_member = M.UpdatePhoneNumberRequestItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchUpdatePhoneNumberOutput = schema.new({
   id = id.from(_N, "BatchUpdatePhoneNumberResponse"),
   type = "structure",
   members = {
      PhoneNumberErrors = schema.new({
         id = id.from(_N, "BatchUpdatePhoneNumberOutput", "PhoneNumberErrors"),
         type = "list",
         name = "PhoneNumberErrors",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberError,
      }),
   },
})

M.CallDetails = schema.new({
   id = id.from(_N, "CallDetails"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "CallDetails", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
      }),
      TransactionId = schema.new({
         id = id.from(_N, "CallDetails", "TransactionId"),
         type = "string",
         name = "TransactionId",
         target_id = prelude.String.id,
      }),
      IsCaller = schema.new({
         id = id.from(_N, "CallDetails", "IsCaller"),
         type = "boolean",
         name = "IsCaller",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CandidateAddress = schema.new({
   id = id.from(_N, "CandidateAddress"),
   type = "structure",
   members = {
      streetInfo = schema.new({
         id = id.from(_N, "CandidateAddress", "streetInfo"),
         type = "string",
         name = "streetInfo",
         target_id = prelude.String.id,
      }),
      streetNumber = schema.new({
         id = id.from(_N, "CandidateAddress", "streetNumber"),
         type = "string",
         name = "streetNumber",
         target_id = prelude.String.id,
      }),
      city = schema.new({
         id = id.from(_N, "CandidateAddress", "city"),
         type = "string",
         name = "city",
         target_id = prelude.String.id,
      }),
      state = schema.new({
         id = id.from(_N, "CandidateAddress", "state"),
         type = "string",
         name = "state",
         target_id = prelude.String.id,
      }),
      postalCode = schema.new({
         id = id.from(_N, "CandidateAddress", "postalCode"),
         type = "string",
         name = "postalCode",
         target_id = prelude.String.id,
      }),
      postalCodePlus4 = schema.new({
         id = id.from(_N, "CandidateAddress", "postalCodePlus4"),
         type = "string",
         name = "postalCodePlus4",
         target_id = prelude.String.id,
      }),
      country = schema.new({
         id = id.from(_N, "CandidateAddress", "country"),
         type = "string",
         name = "country",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePhoneNumberOrderInput = schema.new({
   id = id.from(_N, "CreatePhoneNumberOrderRequest"),
   type = "structure",
   members = {
      ProductType = schema.new({
         id = id.from(_N, "CreatePhoneNumberOrderInput", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      E164PhoneNumbers = schema.new({
         id = id.from(_N, "CreatePhoneNumberOrderInput", "E164PhoneNumbers"),
         type = "list",
         name = "E164PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreatePhoneNumberOrderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.OrderedPhoneNumber = schema.new({
   id = id.from(_N, "OrderedPhoneNumber"),
   type = "structure",
   members = {
      E164PhoneNumber = schema.new({
         id = id.from(_N, "OrderedPhoneNumber", "E164PhoneNumber"),
         type = "string",
         name = "E164PhoneNumber",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "OrderedPhoneNumber", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
   },
})

M.PhoneNumberOrder = schema.new({
   id = id.from(_N, "PhoneNumberOrder"),
   type = "structure",
   members = {
      PhoneNumberOrderId = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "PhoneNumberOrderId"),
         type = "string",
         name = "PhoneNumberOrderId",
         target_id = prelude.String.id,
      }),
      ProductType = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      OrderType = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "OrderType"),
         type = "string",
         name = "OrderType",
         target_id = prelude.String.id,
      }),
      OrderedPhoneNumbers = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "OrderedPhoneNumbers"),
         type = "list",
         name = "OrderedPhoneNumbers",
         target_id = prelude.Document.id,
         list_member = M.OrderedPhoneNumber,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      FocDate = schema.new({
         id = id.from(_N, "PhoneNumberOrder", "FocDate"),
         type = "timestamp",
         name = "FocDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.CreatePhoneNumberOrderOutput = schema.new({
   id = id.from(_N, "CreatePhoneNumberOrderResponse"),
   type = "structure",
   members = {
      PhoneNumberOrder = schema.new({
         id = id.from(_N, "CreatePhoneNumberOrderOutput", "PhoneNumberOrder"),
         type = "structure",
         name = "PhoneNumberOrder",
         target_id = id.from(_N, "PhoneNumberOrder"),
         target = M.PhoneNumberOrder,
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
      Code = schema.new({
         id = id.from(_N, "ResourceLimitExceededException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ResourceLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.GeoMatchParams = schema.new({
   id = id.from(_N, "GeoMatchParams"),
   type = "structure",
   members = {
      Country = schema.new({
         id = id.from(_N, "GeoMatchParams", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AreaCode = schema.new({
         id = id.from(_N, "GeoMatchParams", "AreaCode"),
         type = "string",
         name = "AreaCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateProxySessionInput = schema.new({
   id = id.from(_N, "CreateProxySessionRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ParticipantPhoneNumbers = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "ParticipantPhoneNumbers"),
         type = "list",
         name = "ParticipantPhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ExpiryMinutes = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "ExpiryMinutes"),
         type = "integer",
         name = "ExpiryMinutes",
         target_id = prelude.Integer.id,
      }),
      Capabilities = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "Capabilities"),
         type = "list",
         name = "Capabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NumberSelectionBehavior = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "NumberSelectionBehavior"),
         type = "string",
         name = "NumberSelectionBehavior",
         target_id = prelude.String.id,
      }),
      GeoMatchLevel = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "GeoMatchLevel"),
         type = "string",
         name = "GeoMatchLevel",
         target_id = prelude.String.id,
      }),
      GeoMatchParams = schema.new({
         id = id.from(_N, "CreateProxySessionInput", "GeoMatchParams"),
         type = "structure",
         name = "GeoMatchParams",
         target_id = id.from(_N, "GeoMatchParams"),
         target = M.GeoMatchParams,
      }),
   },
})

M.Participant = schema.new({
   id = id.from(_N, "Participant"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "Participant", "PhoneNumber"),
         type = "string",
         name = "PhoneNumber",
         target_id = prelude.String.id,
      }),
      ProxyPhoneNumber = schema.new({
         id = id.from(_N, "Participant", "ProxyPhoneNumber"),
         type = "string",
         name = "ProxyPhoneNumber",
         target_id = prelude.String.id,
      }),
   },
})

M.ProxySession = schema.new({
   id = id.from(_N, "ProxySession"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "ProxySession", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
      }),
      ProxySessionId = schema.new({
         id = id.from(_N, "ProxySession", "ProxySessionId"),
         type = "string",
         name = "ProxySessionId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "ProxySession", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "ProxySession", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ExpiryMinutes = schema.new({
         id = id.from(_N, "ProxySession", "ExpiryMinutes"),
         type = "integer",
         name = "ExpiryMinutes",
         target_id = prelude.Integer.id,
      }),
      Capabilities = schema.new({
         id = id.from(_N, "ProxySession", "Capabilities"),
         type = "list",
         name = "Capabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "ProxySession", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "ProxySession", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      EndedTimestamp = schema.new({
         id = id.from(_N, "ProxySession", "EndedTimestamp"),
         type = "timestamp",
         name = "EndedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      Participants = schema.new({
         id = id.from(_N, "ProxySession", "Participants"),
         type = "list",
         name = "Participants",
         target_id = prelude.Document.id,
         list_member = M.Participant,
      }),
      NumberSelectionBehavior = schema.new({
         id = id.from(_N, "ProxySession", "NumberSelectionBehavior"),
         type = "string",
         name = "NumberSelectionBehavior",
         target_id = prelude.String.id,
      }),
      GeoMatchLevel = schema.new({
         id = id.from(_N, "ProxySession", "GeoMatchLevel"),
         type = "string",
         name = "GeoMatchLevel",
         target_id = prelude.String.id,
      }),
      GeoMatchParams = schema.new({
         id = id.from(_N, "ProxySession", "GeoMatchParams"),
         type = "structure",
         name = "GeoMatchParams",
         target_id = id.from(_N, "GeoMatchParams"),
         target = M.GeoMatchParams,
      }),
   },
})

M.CreateProxySessionOutput = schema.new({
   id = id.from(_N, "CreateProxySessionResponse"),
   type = "structure",
   members = {
      ProxySession = schema.new({
         id = id.from(_N, "CreateProxySessionOutput", "ProxySession"),
         type = "structure",
         name = "ProxySession",
         target_id = id.from(_N, "ProxySession"),
         target = M.ProxySession,
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
      Code = schema.new({
         id = id.from(_N, "ConflictException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.SipMediaApplicationEndpoint = schema.new({
   id = id.from(_N, "SipMediaApplicationEndpoint"),
   type = "structure",
   members = {
      LambdaArn = schema.new({
         id = id.from(_N, "SipMediaApplicationEndpoint", "LambdaArn"),
         type = "string",
         name = "LambdaArn",
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

M.CreateSipMediaApplicationInput = schema.new({
   id = id.from(_N, "CreateSipMediaApplicationRequest"),
   type = "structure",
   members = {
      AwsRegion = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationInput", "AwsRegion"),
         type = "string",
         name = "AwsRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Endpoints = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationInput", "Endpoints"),
         type = "list",
         name = "Endpoints",
         target_id = prelude.Document.id,
         list_member = M.SipMediaApplicationEndpoint,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.SipMediaApplication = schema.new({
   id = id.from(_N, "SipMediaApplication"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "SipMediaApplication", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
      }),
      AwsRegion = schema.new({
         id = id.from(_N, "SipMediaApplication", "AwsRegion"),
         type = "string",
         name = "AwsRegion",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "SipMediaApplication", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Endpoints = schema.new({
         id = id.from(_N, "SipMediaApplication", "Endpoints"),
         type = "list",
         name = "Endpoints",
         target_id = prelude.Document.id,
         list_member = M.SipMediaApplicationEndpoint,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "SipMediaApplication", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "SipMediaApplication", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      SipMediaApplicationArn = schema.new({
         id = id.from(_N, "SipMediaApplication", "SipMediaApplicationArn"),
         type = "string",
         name = "SipMediaApplicationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSipMediaApplicationOutput = schema.new({
   id = id.from(_N, "CreateSipMediaApplicationResponse"),
   type = "structure",
   members = {
      SipMediaApplication = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationOutput", "SipMediaApplication"),
         type = "structure",
         name = "SipMediaApplication",
         target_id = id.from(_N, "SipMediaApplication"),
         target = M.SipMediaApplication,
      }),
   },
})

M.CreateSipMediaApplicationCallInput = schema.new({
   id = id.from(_N, "CreateSipMediaApplicationCallRequest"),
   type = "structure",
   members = {
      FromPhoneNumber = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationCallInput", "FromPhoneNumber"),
         type = "string",
         name = "FromPhoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ToPhoneNumber = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationCallInput", "ToPhoneNumber"),
         type = "string",
         name = "ToPhoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationCallInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SipHeaders = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationCallInput", "SipHeaders"),
         type = "map",
         name = "SipHeaders",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ArgumentsMap = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationCallInput", "ArgumentsMap"),
         type = "map",
         name = "ArgumentsMap",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.SipMediaApplicationCall = schema.new({
   id = id.from(_N, "SipMediaApplicationCall"),
   type = "structure",
   members = {
      TransactionId = schema.new({
         id = id.from(_N, "SipMediaApplicationCall", "TransactionId"),
         type = "string",
         name = "TransactionId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSipMediaApplicationCallOutput = schema.new({
   id = id.from(_N, "CreateSipMediaApplicationCallResponse"),
   type = "structure",
   members = {
      SipMediaApplicationCall = schema.new({
         id = id.from(_N, "CreateSipMediaApplicationCallOutput", "SipMediaApplicationCall"),
         type = "structure",
         name = "SipMediaApplicationCall",
         target_id = id.from(_N, "SipMediaApplicationCall"),
         target = M.SipMediaApplicationCall,
      }),
   },
})

M.SipRuleTargetApplication = schema.new({
   id = id.from(_N, "SipRuleTargetApplication"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "SipRuleTargetApplication", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "SipRuleTargetApplication", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
      AwsRegion = schema.new({
         id = id.from(_N, "SipRuleTargetApplication", "AwsRegion"),
         type = "string",
         name = "AwsRegion",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateSipRuleInput = schema.new({
   id = id.from(_N, "CreateSipRuleRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateSipRuleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TriggerType = schema.new({
         id = id.from(_N, "CreateSipRuleInput", "TriggerType"),
         type = "string",
         name = "TriggerType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TriggerValue = schema.new({
         id = id.from(_N, "CreateSipRuleInput", "TriggerValue"),
         type = "string",
         name = "TriggerValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Disabled = schema.new({
         id = id.from(_N, "CreateSipRuleInput", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
      TargetApplications = schema.new({
         id = id.from(_N, "CreateSipRuleInput", "TargetApplications"),
         type = "list",
         name = "TargetApplications",
         target_id = prelude.Document.id,
         list_member = M.SipRuleTargetApplication,
      }),
   },
})

M.SipRule = schema.new({
   id = id.from(_N, "SipRule"),
   type = "structure",
   members = {
      SipRuleId = schema.new({
         id = id.from(_N, "SipRule", "SipRuleId"),
         type = "string",
         name = "SipRuleId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "SipRule", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Disabled = schema.new({
         id = id.from(_N, "SipRule", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
      TriggerType = schema.new({
         id = id.from(_N, "SipRule", "TriggerType"),
         type = "string",
         name = "TriggerType",
         target_id = prelude.String.id,
      }),
      TriggerValue = schema.new({
         id = id.from(_N, "SipRule", "TriggerValue"),
         type = "string",
         name = "TriggerValue",
         target_id = prelude.String.id,
      }),
      TargetApplications = schema.new({
         id = id.from(_N, "SipRule", "TargetApplications"),
         type = "list",
         name = "TargetApplications",
         target_id = prelude.Document.id,
         list_member = M.SipRuleTargetApplication,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "SipRule", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "SipRule", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.CreateSipRuleOutput = schema.new({
   id = id.from(_N, "CreateSipRuleResponse"),
   type = "structure",
   members = {
      SipRule = schema.new({
         id = id.from(_N, "CreateSipRuleOutput", "SipRule"),
         type = "structure",
         name = "SipRule",
         target_id = id.from(_N, "SipRule"),
         target = M.SipRule,
      }),
   },
})

M.CreateVoiceConnectorInput = schema.new({
   id = id.from(_N, "CreateVoiceConnectorRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateVoiceConnectorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AwsRegion = schema.new({
         id = id.from(_N, "CreateVoiceConnectorInput", "AwsRegion"),
         type = "string",
         name = "AwsRegion",
         target_id = prelude.String.id,
      }),
      RequireEncryption = schema.new({
         id = id.from(_N, "CreateVoiceConnectorInput", "RequireEncryption"),
         type = "boolean",
         name = "RequireEncryption",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateVoiceConnectorInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      IntegrationType = schema.new({
         id = id.from(_N, "CreateVoiceConnectorInput", "IntegrationType"),
         type = "string",
         name = "IntegrationType",
         target_id = prelude.String.id,
      }),
      NetworkType = schema.new({
         id = id.from(_N, "CreateVoiceConnectorInput", "NetworkType"),
         type = "string",
         name = "NetworkType",
         target_id = prelude.String.id,
      }),
   },
})

M.VoiceConnector = schema.new({
   id = id.from(_N, "VoiceConnector"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "VoiceConnector", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
      }),
      AwsRegion = schema.new({
         id = id.from(_N, "VoiceConnector", "AwsRegion"),
         type = "string",
         name = "AwsRegion",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "VoiceConnector", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      OutboundHostName = schema.new({
         id = id.from(_N, "VoiceConnector", "OutboundHostName"),
         type = "string",
         name = "OutboundHostName",
         target_id = prelude.String.id,
      }),
      RequireEncryption = schema.new({
         id = id.from(_N, "VoiceConnector", "RequireEncryption"),
         type = "boolean",
         name = "RequireEncryption",
         target_id = prelude.Boolean.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceConnector", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceConnector", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      VoiceConnectorArn = schema.new({
         id = id.from(_N, "VoiceConnector", "VoiceConnectorArn"),
         type = "string",
         name = "VoiceConnectorArn",
         target_id = prelude.String.id,
      }),
      IntegrationType = schema.new({
         id = id.from(_N, "VoiceConnector", "IntegrationType"),
         type = "string",
         name = "IntegrationType",
         target_id = prelude.String.id,
      }),
      NetworkType = schema.new({
         id = id.from(_N, "VoiceConnector", "NetworkType"),
         type = "string",
         name = "NetworkType",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateVoiceConnectorOutput = schema.new({
   id = id.from(_N, "CreateVoiceConnectorResponse"),
   type = "structure",
   members = {
      VoiceConnector = schema.new({
         id = id.from(_N, "CreateVoiceConnectorOutput", "VoiceConnector"),
         type = "structure",
         name = "VoiceConnector",
         target_id = id.from(_N, "VoiceConnector"),
         target = M.VoiceConnector,
      }),
   },
})

M.VoiceConnectorItem = schema.new({
   id = id.from(_N, "VoiceConnectorItem"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "VoiceConnectorItem", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Priority = schema.new({
         id = id.from(_N, "VoiceConnectorItem", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateVoiceConnectorGroupInput = schema.new({
   id = id.from(_N, "CreateVoiceConnectorGroupRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateVoiceConnectorGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VoiceConnectorItems = schema.new({
         id = id.from(_N, "CreateVoiceConnectorGroupInput", "VoiceConnectorItems"),
         type = "list",
         name = "VoiceConnectorItems",
         target_id = prelude.Document.id,
         list_member = M.VoiceConnectorItem,
      }),
   },
})

M.VoiceConnectorGroup = schema.new({
   id = id.from(_N, "VoiceConnectorGroup"),
   type = "structure",
   members = {
      VoiceConnectorGroupId = schema.new({
         id = id.from(_N, "VoiceConnectorGroup", "VoiceConnectorGroupId"),
         type = "string",
         name = "VoiceConnectorGroupId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "VoiceConnectorGroup", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      VoiceConnectorItems = schema.new({
         id = id.from(_N, "VoiceConnectorGroup", "VoiceConnectorItems"),
         type = "list",
         name = "VoiceConnectorItems",
         target_id = prelude.Document.id,
         list_member = M.VoiceConnectorItem,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceConnectorGroup", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceConnectorGroup", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      VoiceConnectorGroupArn = schema.new({
         id = id.from(_N, "VoiceConnectorGroup", "VoiceConnectorGroupArn"),
         type = "string",
         name = "VoiceConnectorGroupArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateVoiceConnectorGroupOutput = schema.new({
   id = id.from(_N, "CreateVoiceConnectorGroupResponse"),
   type = "structure",
   members = {
      VoiceConnectorGroup = schema.new({
         id = id.from(_N, "CreateVoiceConnectorGroupOutput", "VoiceConnectorGroup"),
         type = "structure",
         name = "VoiceConnectorGroup",
         target_id = id.from(_N, "VoiceConnectorGroup"),
         target = M.VoiceConnectorGroup,
      }),
   },
})

M.CreateVoiceProfileInput = schema.new({
   id = id.from(_N, "CreateVoiceProfileRequest"),
   type = "structure",
   members = {
      SpeakerSearchTaskId = schema.new({
         id = id.from(_N, "CreateVoiceProfileInput", "SpeakerSearchTaskId"),
         type = "string",
         name = "SpeakerSearchTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VoiceProfile = schema.new({
   id = id.from(_N, "VoiceProfile"),
   type = "structure",
   members = {
      VoiceProfileId = schema.new({
         id = id.from(_N, "VoiceProfile", "VoiceProfileId"),
         type = "string",
         name = "VoiceProfileId",
         target_id = prelude.String.id,
      }),
      VoiceProfileArn = schema.new({
         id = id.from(_N, "VoiceProfile", "VoiceProfileArn"),
         type = "string",
         name = "VoiceProfileArn",
         target_id = prelude.String.id,
      }),
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "VoiceProfile", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfile", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfile", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ExpirationTimestamp = schema.new({
         id = id.from(_N, "VoiceProfile", "ExpirationTimestamp"),
         type = "timestamp",
         name = "ExpirationTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.CreateVoiceProfileOutput = schema.new({
   id = id.from(_N, "CreateVoiceProfileResponse"),
   type = "structure",
   members = {
      VoiceProfile = schema.new({
         id = id.from(_N, "CreateVoiceProfileOutput", "VoiceProfile"),
         type = "structure",
         name = "VoiceProfile",
         target_id = id.from(_N, "VoiceProfile"),
         target = M.VoiceProfile,
      }),
   },
})

M.GoneException = schema.new({
   id = id.from(_N, "GoneException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "GoneException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "GoneException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ServerSideEncryptionConfiguration = schema.new({
   id = id.from(_N, "ServerSideEncryptionConfiguration"),
   type = "structure",
   members = {
      KmsKeyArn = schema.new({
         id = id.from(_N, "ServerSideEncryptionConfiguration", "KmsKeyArn"),
         type = "string",
         name = "KmsKeyArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateVoiceProfileDomainInput = schema.new({
   id = id.from(_N, "CreateVoiceProfileDomainRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateVoiceProfileDomainInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateVoiceProfileDomainInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ServerSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "CreateVoiceProfileDomainInput", "ServerSideEncryptionConfiguration"),
         type = "structure",
         name = "ServerSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "CreateVoiceProfileDomainInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateVoiceProfileDomainInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.VoiceProfileDomain = schema.new({
   id = id.from(_N, "VoiceProfileDomain"),
   type = "structure",
   members = {
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
      }),
      VoiceProfileDomainArn = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "VoiceProfileDomainArn"),
         type = "string",
         name = "VoiceProfileDomainArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ServerSideEncryptionConfiguration = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "ServerSideEncryptionConfiguration"),
         type = "structure",
         name = "ServerSideEncryptionConfiguration",
         target_id = id.from(_N, "ServerSideEncryptionConfiguration"),
         target = M.ServerSideEncryptionConfiguration,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileDomain", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.CreateVoiceProfileDomainOutput = schema.new({
   id = id.from(_N, "CreateVoiceProfileDomainResponse"),
   type = "structure",
   members = {
      VoiceProfileDomain = schema.new({
         id = id.from(_N, "CreateVoiceProfileDomainOutput", "VoiceProfileDomain"),
         type = "structure",
         name = "VoiceProfileDomain",
         target_id = id.from(_N, "VoiceProfileDomain"),
         target = M.VoiceProfileDomain,
      }),
   },
})

M.DeletePhoneNumberInput = schema.new({
   id = id.from(_N, "DeletePhoneNumberRequest"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "DeletePhoneNumberInput", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeletePhoneNumberOutput = prelude.Unit

M.DeleteProxySessionInput = schema.new({
   id = id.from(_N, "DeleteProxySessionRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteProxySessionInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ProxySessionId = schema.new({
         id = id.from(_N, "DeleteProxySessionInput", "ProxySessionId"),
         type = "string",
         name = "ProxySessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteProxySessionOutput = prelude.Unit

M.DeleteSipMediaApplicationInput = schema.new({
   id = id.from(_N, "DeleteSipMediaApplicationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "DeleteSipMediaApplicationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteSipMediaApplicationOutput = prelude.Unit

M.DeleteSipRuleInput = schema.new({
   id = id.from(_N, "DeleteSipRuleRequest"),
   type = "structure",
   members = {
      SipRuleId = schema.new({
         id = id.from(_N, "DeleteSipRuleInput", "SipRuleId"),
         type = "string",
         name = "SipRuleId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteSipRuleOutput = prelude.Unit

M.DeleteVoiceConnectorInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorOutput = prelude.Unit

M.DeleteVoiceConnectorEmergencyCallingConfigurationInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorEmergencyCallingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorEmergencyCallingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorEmergencyCallingConfigurationOutput = prelude.Unit

M.DeleteVoiceConnectorExternalSystemsConfigurationInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorExternalSystemsConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorExternalSystemsConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorExternalSystemsConfigurationOutput = prelude.Unit

M.DeleteVoiceConnectorGroupInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorGroupRequest"),
   type = "structure",
   members = {
      VoiceConnectorGroupId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorGroupInput", "VoiceConnectorGroupId"),
         type = "string",
         name = "VoiceConnectorGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorGroupOutput = prelude.Unit

M.DeleteVoiceConnectorOriginationInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorOriginationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorOriginationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorOriginationOutput = prelude.Unit

M.DeleteVoiceConnectorProxyInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorProxyRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorProxyInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorProxyOutput = prelude.Unit

M.DeleteVoiceConnectorStreamingConfigurationInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorStreamingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorStreamingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorStreamingConfigurationOutput = prelude.Unit

M.DeleteVoiceConnectorTerminationInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorTerminationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorTerminationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorTerminationOutput = prelude.Unit

M.DeleteVoiceConnectorTerminationCredentialsInput = schema.new({
   id = id.from(_N, "DeleteVoiceConnectorTerminationCredentialsRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorTerminationCredentialsInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Usernames = schema.new({
         id = id.from(_N, "DeleteVoiceConnectorTerminationCredentialsInput", "Usernames"),
         type = "list",
         name = "Usernames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteVoiceConnectorTerminationCredentialsOutput = prelude.Unit

M.DeleteVoiceProfileInput = schema.new({
   id = id.from(_N, "DeleteVoiceProfileRequest"),
   type = "structure",
   members = {
      VoiceProfileId = schema.new({
         id = id.from(_N, "DeleteVoiceProfileInput", "VoiceProfileId"),
         type = "string",
         name = "VoiceProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceProfileOutput = prelude.Unit

M.DeleteVoiceProfileDomainInput = schema.new({
   id = id.from(_N, "DeleteVoiceProfileDomainRequest"),
   type = "structure",
   members = {
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "DeleteVoiceProfileDomainInput", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteVoiceProfileDomainOutput = prelude.Unit

M.DisassociatePhoneNumbersFromVoiceConnectorInput = schema.new({
   id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      E164PhoneNumbers = schema.new({
         id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorInput", "E164PhoneNumbers"),
         type = "list",
         name = "E164PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociatePhoneNumbersFromVoiceConnectorOutput = schema.new({
   id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorResponse"),
   type = "structure",
   members = {
      PhoneNumberErrors = schema.new({
         id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorOutput", "PhoneNumberErrors"),
         type = "list",
         name = "PhoneNumberErrors",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberError,
      }),
   },
})

M.DisassociatePhoneNumbersFromVoiceConnectorGroupInput = schema.new({
   id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorGroupRequest"),
   type = "structure",
   members = {
      VoiceConnectorGroupId = schema.new({
         id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorGroupInput", "VoiceConnectorGroupId"),
         type = "string",
         name = "VoiceConnectorGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      E164PhoneNumbers = schema.new({
         id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorGroupInput", "E164PhoneNumbers"),
         type = "list",
         name = "E164PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociatePhoneNumbersFromVoiceConnectorGroupOutput = schema.new({
   id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorGroupResponse"),
   type = "structure",
   members = {
      PhoneNumberErrors = schema.new({
         id = id.from(_N, "DisassociatePhoneNumbersFromVoiceConnectorGroupOutput", "PhoneNumberErrors"),
         type = "list",
         name = "PhoneNumberErrors",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberError,
      }),
   },
})

M.GetGlobalSettingsInput = prelude.Unit

M.VoiceConnectorSettings = schema.new({
   id = id.from(_N, "VoiceConnectorSettings"),
   type = "structure",
   members = {
      CdrBucket = schema.new({
         id = id.from(_N, "VoiceConnectorSettings", "CdrBucket"),
         type = "string",
         name = "CdrBucket",
         target_id = prelude.String.id,
      }),
   },
})

M.GetGlobalSettingsOutput = schema.new({
   id = id.from(_N, "GetGlobalSettingsResponse"),
   type = "structure",
   members = {
      VoiceConnector = schema.new({
         id = id.from(_N, "GetGlobalSettingsOutput", "VoiceConnector"),
         type = "structure",
         name = "VoiceConnector",
         target_id = id.from(_N, "VoiceConnectorSettings"),
         target = M.VoiceConnectorSettings,
      }),
   },
})

M.GetPhoneNumberInput = schema.new({
   id = id.from(_N, "GetPhoneNumberRequest"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "GetPhoneNumberInput", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.PhoneNumberAssociation = schema.new({
   id = id.from(_N, "PhoneNumberAssociation"),
   type = "structure",
   members = {
      Value = schema.new({
         id = id.from(_N, "PhoneNumberAssociation", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "PhoneNumberAssociation", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      AssociatedTimestamp = schema.new({
         id = id.from(_N, "PhoneNumberAssociation", "AssociatedTimestamp"),
         type = "timestamp",
         name = "AssociatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.PhoneNumberCapabilities = schema.new({
   id = id.from(_N, "PhoneNumberCapabilities"),
   type = "structure",
   members = {
      InboundCall = schema.new({
         id = id.from(_N, "PhoneNumberCapabilities", "InboundCall"),
         type = "boolean",
         name = "InboundCall",
         target_id = prelude.Boolean.id,
      }),
      OutboundCall = schema.new({
         id = id.from(_N, "PhoneNumberCapabilities", "OutboundCall"),
         type = "boolean",
         name = "OutboundCall",
         target_id = prelude.Boolean.id,
      }),
      InboundSMS = schema.new({
         id = id.from(_N, "PhoneNumberCapabilities", "InboundSMS"),
         type = "boolean",
         name = "InboundSMS",
         target_id = prelude.Boolean.id,
      }),
      OutboundSMS = schema.new({
         id = id.from(_N, "PhoneNumberCapabilities", "OutboundSMS"),
         type = "boolean",
         name = "OutboundSMS",
         target_id = prelude.Boolean.id,
      }),
      InboundMMS = schema.new({
         id = id.from(_N, "PhoneNumberCapabilities", "InboundMMS"),
         type = "boolean",
         name = "InboundMMS",
         target_id = prelude.Boolean.id,
      }),
      OutboundMMS = schema.new({
         id = id.from(_N, "PhoneNumberCapabilities", "OutboundMMS"),
         type = "boolean",
         name = "OutboundMMS",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.PhoneNumber = schema.new({
   id = id.from(_N, "PhoneNumber"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "PhoneNumber", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
      }),
      E164PhoneNumber = schema.new({
         id = id.from(_N, "PhoneNumber", "E164PhoneNumber"),
         type = "string",
         name = "E164PhoneNumber",
         target_id = prelude.String.id,
      }),
      Country = schema.new({
         id = id.from(_N, "PhoneNumber", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "PhoneNumber", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      ProductType = schema.new({
         id = id.from(_N, "PhoneNumber", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "PhoneNumber", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      Capabilities = schema.new({
         id = id.from(_N, "PhoneNumber", "Capabilities"),
         type = "structure",
         name = "Capabilities",
         target_id = id.from(_N, "PhoneNumberCapabilities"),
         target = M.PhoneNumberCapabilities,
      }),
      Associations = schema.new({
         id = id.from(_N, "PhoneNumber", "Associations"),
         type = "list",
         name = "Associations",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberAssociation,
      }),
      CallingName = schema.new({
         id = id.from(_N, "PhoneNumber", "CallingName"),
         type = "string",
         name = "CallingName",
         target_id = prelude.String.id,
      }),
      CallingNameStatus = schema.new({
         id = id.from(_N, "PhoneNumber", "CallingNameStatus"),
         type = "string",
         name = "CallingNameStatus",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "PhoneNumber", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "PhoneNumber", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      DeletionTimestamp = schema.new({
         id = id.from(_N, "PhoneNumber", "DeletionTimestamp"),
         type = "timestamp",
         name = "DeletionTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      OrderId = schema.new({
         id = id.from(_N, "PhoneNumber", "OrderId"),
         type = "string",
         name = "OrderId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "PhoneNumber", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.GetPhoneNumberOutput = schema.new({
   id = id.from(_N, "GetPhoneNumberResponse"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "GetPhoneNumberOutput", "PhoneNumber"),
         type = "structure",
         name = "PhoneNumber",
         target_id = id.from(_N, "PhoneNumber"),
         target = M.PhoneNumber,
      }),
   },
})

M.GetPhoneNumberOrderInput = schema.new({
   id = id.from(_N, "GetPhoneNumberOrderRequest"),
   type = "structure",
   members = {
      PhoneNumberOrderId = schema.new({
         id = id.from(_N, "GetPhoneNumberOrderInput", "PhoneNumberOrderId"),
         type = "string",
         name = "PhoneNumberOrderId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetPhoneNumberOrderOutput = schema.new({
   id = id.from(_N, "GetPhoneNumberOrderResponse"),
   type = "structure",
   members = {
      PhoneNumberOrder = schema.new({
         id = id.from(_N, "GetPhoneNumberOrderOutput", "PhoneNumberOrder"),
         type = "structure",
         name = "PhoneNumberOrder",
         target_id = id.from(_N, "PhoneNumberOrder"),
         target = M.PhoneNumberOrder,
      }),
   },
})

M.GetPhoneNumberSettingsInput = prelude.Unit

M.GetPhoneNumberSettingsOutput = schema.new({
   id = id.from(_N, "GetPhoneNumberSettingsResponse"),
   type = "structure",
   members = {
      CallingName = schema.new({
         id = id.from(_N, "GetPhoneNumberSettingsOutput", "CallingName"),
         type = "string",
         name = "CallingName",
         target_id = prelude.String.id,
      }),
      CallingNameUpdatedTimestamp = schema.new({
         id = id.from(_N, "GetPhoneNumberSettingsOutput", "CallingNameUpdatedTimestamp"),
         type = "timestamp",
         name = "CallingNameUpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.GetProxySessionInput = schema.new({
   id = id.from(_N, "GetProxySessionRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetProxySessionInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ProxySessionId = schema.new({
         id = id.from(_N, "GetProxySessionInput", "ProxySessionId"),
         type = "string",
         name = "ProxySessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetProxySessionOutput = schema.new({
   id = id.from(_N, "GetProxySessionResponse"),
   type = "structure",
   members = {
      ProxySession = schema.new({
         id = id.from(_N, "GetProxySessionOutput", "ProxySession"),
         type = "structure",
         name = "ProxySession",
         target_id = id.from(_N, "ProxySession"),
         target = M.ProxySession,
      }),
   },
})

M.GetSipMediaApplicationInput = schema.new({
   id = id.from(_N, "GetSipMediaApplicationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "GetSipMediaApplicationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetSipMediaApplicationOutput = schema.new({
   id = id.from(_N, "GetSipMediaApplicationResponse"),
   type = "structure",
   members = {
      SipMediaApplication = schema.new({
         id = id.from(_N, "GetSipMediaApplicationOutput", "SipMediaApplication"),
         type = "structure",
         name = "SipMediaApplication",
         target_id = id.from(_N, "SipMediaApplication"),
         target = M.SipMediaApplication,
      }),
   },
})

M.GetSipMediaApplicationAlexaSkillConfigurationInput = schema.new({
   id = id.from(_N, "GetSipMediaApplicationAlexaSkillConfigurationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "GetSipMediaApplicationAlexaSkillConfigurationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SipMediaApplicationAlexaSkillConfiguration = schema.new({
   id = id.from(_N, "SipMediaApplicationAlexaSkillConfiguration"),
   type = "structure",
   members = {
      AlexaSkillStatus = schema.new({
         id = id.from(_N, "SipMediaApplicationAlexaSkillConfiguration", "AlexaSkillStatus"),
         type = "string",
         name = "AlexaSkillStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AlexaSkillIds = schema.new({
         id = id.from(_N, "SipMediaApplicationAlexaSkillConfiguration", "AlexaSkillIds"),
         type = "list",
         name = "AlexaSkillIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSipMediaApplicationAlexaSkillConfigurationOutput = schema.new({
   id = id.from(_N, "GetSipMediaApplicationAlexaSkillConfigurationResponse"),
   type = "structure",
   members = {
      SipMediaApplicationAlexaSkillConfiguration = schema.new({
         id = id.from(_N, "GetSipMediaApplicationAlexaSkillConfigurationOutput", "SipMediaApplicationAlexaSkillConfiguration"),
         type = "structure",
         name = "SipMediaApplicationAlexaSkillConfiguration",
         target_id = id.from(_N, "SipMediaApplicationAlexaSkillConfiguration"),
         target = M.SipMediaApplicationAlexaSkillConfiguration,
      }),
   },
})

M.GetSipMediaApplicationLoggingConfigurationInput = schema.new({
   id = id.from(_N, "GetSipMediaApplicationLoggingConfigurationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "GetSipMediaApplicationLoggingConfigurationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SipMediaApplicationLoggingConfiguration = schema.new({
   id = id.from(_N, "SipMediaApplicationLoggingConfiguration"),
   type = "structure",
   members = {
      EnableSipMediaApplicationMessageLogs = schema.new({
         id = id.from(_N, "SipMediaApplicationLoggingConfiguration", "EnableSipMediaApplicationMessageLogs"),
         type = "boolean",
         name = "EnableSipMediaApplicationMessageLogs",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetSipMediaApplicationLoggingConfigurationOutput = schema.new({
   id = id.from(_N, "GetSipMediaApplicationLoggingConfigurationResponse"),
   type = "structure",
   members = {
      SipMediaApplicationLoggingConfiguration = schema.new({
         id = id.from(_N, "GetSipMediaApplicationLoggingConfigurationOutput", "SipMediaApplicationLoggingConfiguration"),
         type = "structure",
         name = "SipMediaApplicationLoggingConfiguration",
         target_id = id.from(_N, "SipMediaApplicationLoggingConfiguration"),
         target = M.SipMediaApplicationLoggingConfiguration,
      }),
   },
})

M.GetSipRuleInput = schema.new({
   id = id.from(_N, "GetSipRuleRequest"),
   type = "structure",
   members = {
      SipRuleId = schema.new({
         id = id.from(_N, "GetSipRuleInput", "SipRuleId"),
         type = "string",
         name = "SipRuleId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetSipRuleOutput = schema.new({
   id = id.from(_N, "GetSipRuleResponse"),
   type = "structure",
   members = {
      SipRule = schema.new({
         id = id.from(_N, "GetSipRuleOutput", "SipRule"),
         type = "structure",
         name = "SipRule",
         target_id = id.from(_N, "SipRule"),
         target = M.SipRule,
      }),
   },
})

M.GetSpeakerSearchTaskInput = schema.new({
   id = id.from(_N, "GetSpeakerSearchTaskRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetSpeakerSearchTaskInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SpeakerSearchTaskId = schema.new({
         id = id.from(_N, "GetSpeakerSearchTaskInput", "SpeakerSearchTaskId"),
         type = "string",
         name = "SpeakerSearchTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.SpeakerSearchResult = schema.new({
   id = id.from(_N, "SpeakerSearchResult"),
   type = "structure",
   members = {
      ConfidenceScore = schema.new({
         id = id.from(_N, "SpeakerSearchResult", "ConfidenceScore"),
         type = "float",
         name = "ConfidenceScore",
         target_id = prelude.Float.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      VoiceProfileId = schema.new({
         id = id.from(_N, "SpeakerSearchResult", "VoiceProfileId"),
         type = "string",
         name = "VoiceProfileId",
         target_id = prelude.String.id,
      }),
   },
})

M.SpeakerSearchDetails = schema.new({
   id = id.from(_N, "SpeakerSearchDetails"),
   type = "structure",
   members = {
      Results = schema.new({
         id = id.from(_N, "SpeakerSearchDetails", "Results"),
         type = "list",
         name = "Results",
         target_id = prelude.Document.id,
         list_member = M.SpeakerSearchResult,
      }),
      VoiceprintGenerationStatus = schema.new({
         id = id.from(_N, "SpeakerSearchDetails", "VoiceprintGenerationStatus"),
         type = "string",
         name = "VoiceprintGenerationStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.SpeakerSearchTask = schema.new({
   id = id.from(_N, "SpeakerSearchTask"),
   type = "structure",
   members = {
      SpeakerSearchTaskId = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "SpeakerSearchTaskId"),
         type = "string",
         name = "SpeakerSearchTaskId",
         target_id = prelude.String.id,
      }),
      SpeakerSearchTaskStatus = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "SpeakerSearchTaskStatus"),
         type = "string",
         name = "SpeakerSearchTaskStatus",
         target_id = prelude.String.id,
      }),
      CallDetails = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "CallDetails"),
         type = "structure",
         name = "CallDetails",
         target_id = id.from(_N, "CallDetails"),
         target = M.CallDetails,
      }),
      SpeakerSearchDetails = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "SpeakerSearchDetails"),
         type = "structure",
         name = "SpeakerSearchDetails",
         target_id = id.from(_N, "SpeakerSearchDetails"),
         target = M.SpeakerSearchDetails,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      StartedTimestamp = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "StartedTimestamp"),
         type = "timestamp",
         name = "StartedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "SpeakerSearchTask", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetSpeakerSearchTaskOutput = schema.new({
   id = id.from(_N, "GetSpeakerSearchTaskResponse"),
   type = "structure",
   members = {
      SpeakerSearchTask = schema.new({
         id = id.from(_N, "GetSpeakerSearchTaskOutput", "SpeakerSearchTask"),
         type = "structure",
         name = "SpeakerSearchTask",
         target_id = id.from(_N, "SpeakerSearchTask"),
         target = M.SpeakerSearchTask,
      }),
   },
})

M.GetVoiceConnectorInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetVoiceConnectorOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorResponse"),
   type = "structure",
   members = {
      VoiceConnector = schema.new({
         id = id.from(_N, "GetVoiceConnectorOutput", "VoiceConnector"),
         type = "structure",
         name = "VoiceConnector",
         target_id = id.from(_N, "VoiceConnector"),
         target = M.VoiceConnector,
      }),
   },
})

M.GetVoiceConnectorEmergencyCallingConfigurationInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorEmergencyCallingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorEmergencyCallingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DNISEmergencyCallingConfiguration = schema.new({
   id = id.from(_N, "DNISEmergencyCallingConfiguration"),
   type = "structure",
   members = {
      EmergencyPhoneNumber = schema.new({
         id = id.from(_N, "DNISEmergencyCallingConfiguration", "EmergencyPhoneNumber"),
         type = "string",
         name = "EmergencyPhoneNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TestPhoneNumber = schema.new({
         id = id.from(_N, "DNISEmergencyCallingConfiguration", "TestPhoneNumber"),
         type = "string",
         name = "TestPhoneNumber",
         target_id = prelude.String.id,
      }),
      CallingCountry = schema.new({
         id = id.from(_N, "DNISEmergencyCallingConfiguration", "CallingCountry"),
         type = "string",
         name = "CallingCountry",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EmergencyCallingConfiguration = schema.new({
   id = id.from(_N, "EmergencyCallingConfiguration"),
   type = "structure",
   members = {
      DNIS = schema.new({
         id = id.from(_N, "EmergencyCallingConfiguration", "DNIS"),
         type = "list",
         name = "DNIS",
         target_id = prelude.Document.id,
         list_member = M.DNISEmergencyCallingConfiguration,
      }),
   },
})

M.GetVoiceConnectorEmergencyCallingConfigurationOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorEmergencyCallingConfigurationResponse"),
   type = "structure",
   members = {
      EmergencyCallingConfiguration = schema.new({
         id = id.from(_N, "GetVoiceConnectorEmergencyCallingConfigurationOutput", "EmergencyCallingConfiguration"),
         type = "structure",
         name = "EmergencyCallingConfiguration",
         target_id = id.from(_N, "EmergencyCallingConfiguration"),
         target = M.EmergencyCallingConfiguration,
      }),
   },
})

M.GetVoiceConnectorExternalSystemsConfigurationInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorExternalSystemsConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorExternalSystemsConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ExternalSystemsConfiguration = schema.new({
   id = id.from(_N, "ExternalSystemsConfiguration"),
   type = "structure",
   members = {
      SessionBorderControllerTypes = schema.new({
         id = id.from(_N, "ExternalSystemsConfiguration", "SessionBorderControllerTypes"),
         type = "list",
         name = "SessionBorderControllerTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ContactCenterSystemTypes = schema.new({
         id = id.from(_N, "ExternalSystemsConfiguration", "ContactCenterSystemTypes"),
         type = "list",
         name = "ContactCenterSystemTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetVoiceConnectorExternalSystemsConfigurationOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorExternalSystemsConfigurationResponse"),
   type = "structure",
   members = {
      ExternalSystemsConfiguration = schema.new({
         id = id.from(_N, "GetVoiceConnectorExternalSystemsConfigurationOutput", "ExternalSystemsConfiguration"),
         type = "structure",
         name = "ExternalSystemsConfiguration",
         target_id = id.from(_N, "ExternalSystemsConfiguration"),
         target = M.ExternalSystemsConfiguration,
      }),
   },
})

M.GetVoiceConnectorGroupInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorGroupRequest"),
   type = "structure",
   members = {
      VoiceConnectorGroupId = schema.new({
         id = id.from(_N, "GetVoiceConnectorGroupInput", "VoiceConnectorGroupId"),
         type = "string",
         name = "VoiceConnectorGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetVoiceConnectorGroupOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorGroupResponse"),
   type = "structure",
   members = {
      VoiceConnectorGroup = schema.new({
         id = id.from(_N, "GetVoiceConnectorGroupOutput", "VoiceConnectorGroup"),
         type = "structure",
         name = "VoiceConnectorGroup",
         target_id = id.from(_N, "VoiceConnectorGroup"),
         target = M.VoiceConnectorGroup,
      }),
   },
})

M.GetVoiceConnectorLoggingConfigurationInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorLoggingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorLoggingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.LoggingConfiguration = schema.new({
   id = id.from(_N, "LoggingConfiguration"),
   type = "structure",
   members = {
      EnableSIPLogs = schema.new({
         id = id.from(_N, "LoggingConfiguration", "EnableSIPLogs"),
         type = "boolean",
         name = "EnableSIPLogs",
         target_id = prelude.Boolean.id,
      }),
      EnableMediaMetricLogs = schema.new({
         id = id.from(_N, "LoggingConfiguration", "EnableMediaMetricLogs"),
         type = "boolean",
         name = "EnableMediaMetricLogs",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetVoiceConnectorLoggingConfigurationOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorLoggingConfigurationResponse"),
   type = "structure",
   members = {
      LoggingConfiguration = schema.new({
         id = id.from(_N, "GetVoiceConnectorLoggingConfigurationOutput", "LoggingConfiguration"),
         type = "structure",
         name = "LoggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
   },
})

M.GetVoiceConnectorOriginationInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorOriginationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorOriginationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.OriginationRoute = schema.new({
   id = id.from(_N, "OriginationRoute"),
   type = "structure",
   members = {
      Host = schema.new({
         id = id.from(_N, "OriginationRoute", "Host"),
         type = "string",
         name = "Host",
         target_id = prelude.String.id,
      }),
      Port = schema.new({
         id = id.from(_N, "OriginationRoute", "Port"),
         type = "integer",
         name = "Port",
         target_id = prelude.Integer.id,
      }),
      Protocol = schema.new({
         id = id.from(_N, "OriginationRoute", "Protocol"),
         type = "string",
         name = "Protocol",
         target_id = prelude.String.id,
      }),
      Priority = schema.new({
         id = id.from(_N, "OriginationRoute", "Priority"),
         type = "integer",
         name = "Priority",
         target_id = prelude.Integer.id,
      }),
      Weight = schema.new({
         id = id.from(_N, "OriginationRoute", "Weight"),
         type = "integer",
         name = "Weight",
         target_id = prelude.Integer.id,
      }),
   },
})

M.Origination = schema.new({
   id = id.from(_N, "Origination"),
   type = "structure",
   members = {
      Routes = schema.new({
         id = id.from(_N, "Origination", "Routes"),
         type = "list",
         name = "Routes",
         target_id = prelude.Document.id,
         list_member = M.OriginationRoute,
      }),
      Disabled = schema.new({
         id = id.from(_N, "Origination", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetVoiceConnectorOriginationOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorOriginationResponse"),
   type = "structure",
   members = {
      Origination = schema.new({
         id = id.from(_N, "GetVoiceConnectorOriginationOutput", "Origination"),
         type = "structure",
         name = "Origination",
         target_id = id.from(_N, "Origination"),
         target = M.Origination,
      }),
   },
})

M.GetVoiceConnectorProxyInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorProxyRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorProxyInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.Proxy = schema.new({
   id = id.from(_N, "Proxy"),
   type = "structure",
   members = {
      DefaultSessionExpiryMinutes = schema.new({
         id = id.from(_N, "Proxy", "DefaultSessionExpiryMinutes"),
         type = "integer",
         name = "DefaultSessionExpiryMinutes",
         target_id = prelude.Integer.id,
      }),
      Disabled = schema.new({
         id = id.from(_N, "Proxy", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
      FallBackPhoneNumber = schema.new({
         id = id.from(_N, "Proxy", "FallBackPhoneNumber"),
         type = "string",
         name = "FallBackPhoneNumber",
         target_id = prelude.String.id,
      }),
      PhoneNumberCountries = schema.new({
         id = id.from(_N, "Proxy", "PhoneNumberCountries"),
         type = "list",
         name = "PhoneNumberCountries",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetVoiceConnectorProxyOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorProxyResponse"),
   type = "structure",
   members = {
      Proxy = schema.new({
         id = id.from(_N, "GetVoiceConnectorProxyOutput", "Proxy"),
         type = "structure",
         name = "Proxy",
         target_id = id.from(_N, "Proxy"),
         target = M.Proxy,
      }),
   },
})

M.GetVoiceConnectorStreamingConfigurationInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorStreamingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorStreamingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.MediaInsightsConfiguration = schema.new({
   id = id.from(_N, "MediaInsightsConfiguration"),
   type = "structure",
   members = {
      Disabled = schema.new({
         id = id.from(_N, "MediaInsightsConfiguration", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
      ConfigurationArn = schema.new({
         id = id.from(_N, "MediaInsightsConfiguration", "ConfigurationArn"),
         type = "string",
         name = "ConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.StreamingNotificationTarget = schema.new({
   id = id.from(_N, "StreamingNotificationTarget"),
   type = "structure",
   members = {
      NotificationTarget = schema.new({
         id = id.from(_N, "StreamingNotificationTarget", "NotificationTarget"),
         type = "string",
         name = "NotificationTarget",
         target_id = prelude.String.id,
      }),
   },
})

M.StreamingConfiguration = schema.new({
   id = id.from(_N, "StreamingConfiguration"),
   type = "structure",
   members = {
      DataRetentionInHours = schema.new({
         id = id.from(_N, "StreamingConfiguration", "DataRetentionInHours"),
         type = "integer",
         name = "DataRetentionInHours",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Disabled = schema.new({
         id = id.from(_N, "StreamingConfiguration", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StreamingNotificationTargets = schema.new({
         id = id.from(_N, "StreamingConfiguration", "StreamingNotificationTargets"),
         type = "list",
         name = "StreamingNotificationTargets",
         target_id = prelude.Document.id,
         list_member = M.StreamingNotificationTarget,
      }),
      MediaInsightsConfiguration = schema.new({
         id = id.from(_N, "StreamingConfiguration", "MediaInsightsConfiguration"),
         type = "structure",
         name = "MediaInsightsConfiguration",
         target_id = id.from(_N, "MediaInsightsConfiguration"),
         target = M.MediaInsightsConfiguration,
      }),
   },
})

M.GetVoiceConnectorStreamingConfigurationOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorStreamingConfigurationResponse"),
   type = "structure",
   members = {
      StreamingConfiguration = schema.new({
         id = id.from(_N, "GetVoiceConnectorStreamingConfigurationOutput", "StreamingConfiguration"),
         type = "structure",
         name = "StreamingConfiguration",
         target_id = id.from(_N, "StreamingConfiguration"),
         target = M.StreamingConfiguration,
      }),
   },
})

M.GetVoiceConnectorTerminationInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorTerminationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorTerminationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.Termination = schema.new({
   id = id.from(_N, "Termination"),
   type = "structure",
   members = {
      CpsLimit = schema.new({
         id = id.from(_N, "Termination", "CpsLimit"),
         type = "integer",
         name = "CpsLimit",
         target_id = prelude.Integer.id,
      }),
      DefaultPhoneNumber = schema.new({
         id = id.from(_N, "Termination", "DefaultPhoneNumber"),
         type = "string",
         name = "DefaultPhoneNumber",
         target_id = prelude.String.id,
      }),
      CallingRegions = schema.new({
         id = id.from(_N, "Termination", "CallingRegions"),
         type = "list",
         name = "CallingRegions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CidrAllowedList = schema.new({
         id = id.from(_N, "Termination", "CidrAllowedList"),
         type = "list",
         name = "CidrAllowedList",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Disabled = schema.new({
         id = id.from(_N, "Termination", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GetVoiceConnectorTerminationOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorTerminationResponse"),
   type = "structure",
   members = {
      Termination = schema.new({
         id = id.from(_N, "GetVoiceConnectorTerminationOutput", "Termination"),
         type = "structure",
         name = "Termination",
         target_id = id.from(_N, "Termination"),
         target = M.Termination,
      }),
   },
})

M.GetVoiceConnectorTerminationHealthInput = schema.new({
   id = id.from(_N, "GetVoiceConnectorTerminationHealthRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceConnectorTerminationHealthInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.TerminationHealth = schema.new({
   id = id.from(_N, "TerminationHealth"),
   type = "structure",
   members = {
      Timestamp = schema.new({
         id = id.from(_N, "TerminationHealth", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      Source = schema.new({
         id = id.from(_N, "TerminationHealth", "Source"),
         type = "string",
         name = "Source",
         target_id = prelude.String.id,
      }),
   },
})

M.GetVoiceConnectorTerminationHealthOutput = schema.new({
   id = id.from(_N, "GetVoiceConnectorTerminationHealthResponse"),
   type = "structure",
   members = {
      TerminationHealth = schema.new({
         id = id.from(_N, "GetVoiceConnectorTerminationHealthOutput", "TerminationHealth"),
         type = "structure",
         name = "TerminationHealth",
         target_id = id.from(_N, "TerminationHealth"),
         target = M.TerminationHealth,
      }),
   },
})

M.GetVoiceProfileInput = schema.new({
   id = id.from(_N, "GetVoiceProfileRequest"),
   type = "structure",
   members = {
      VoiceProfileId = schema.new({
         id = id.from(_N, "GetVoiceProfileInput", "VoiceProfileId"),
         type = "string",
         name = "VoiceProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetVoiceProfileOutput = schema.new({
   id = id.from(_N, "GetVoiceProfileResponse"),
   type = "structure",
   members = {
      VoiceProfile = schema.new({
         id = id.from(_N, "GetVoiceProfileOutput", "VoiceProfile"),
         type = "structure",
         name = "VoiceProfile",
         target_id = id.from(_N, "VoiceProfile"),
         target = M.VoiceProfile,
      }),
   },
})

M.GetVoiceProfileDomainInput = schema.new({
   id = id.from(_N, "GetVoiceProfileDomainRequest"),
   type = "structure",
   members = {
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "GetVoiceProfileDomainInput", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetVoiceProfileDomainOutput = schema.new({
   id = id.from(_N, "GetVoiceProfileDomainResponse"),
   type = "structure",
   members = {
      VoiceProfileDomain = schema.new({
         id = id.from(_N, "GetVoiceProfileDomainOutput", "VoiceProfileDomain"),
         type = "structure",
         name = "VoiceProfileDomain",
         target_id = id.from(_N, "VoiceProfileDomain"),
         target = M.VoiceProfileDomain,
      }),
   },
})

M.GetVoiceToneAnalysisTaskInput = schema.new({
   id = id.from(_N, "GetVoiceToneAnalysisTaskRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "GetVoiceToneAnalysisTaskInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VoiceToneAnalysisTaskId = schema.new({
         id = id.from(_N, "GetVoiceToneAnalysisTaskInput", "VoiceToneAnalysisTaskId"),
         type = "string",
         name = "VoiceToneAnalysisTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      IsCaller = schema.new({
         id = id.from(_N, "GetVoiceToneAnalysisTaskInput", "IsCaller"),
         type = "boolean",
         name = "IsCaller",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "isCaller" },
         },
      }),
   },
})

M.VoiceToneAnalysisTask = schema.new({
   id = id.from(_N, "VoiceToneAnalysisTask"),
   type = "structure",
   members = {
      VoiceToneAnalysisTaskId = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "VoiceToneAnalysisTaskId"),
         type = "string",
         name = "VoiceToneAnalysisTaskId",
         target_id = prelude.String.id,
      }),
      VoiceToneAnalysisTaskStatus = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "VoiceToneAnalysisTaskStatus"),
         type = "string",
         name = "VoiceToneAnalysisTaskStatus",
         target_id = prelude.String.id,
      }),
      CallDetails = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "CallDetails"),
         type = "structure",
         name = "CallDetails",
         target_id = id.from(_N, "CallDetails"),
         target = M.CallDetails,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      StartedTimestamp = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "StartedTimestamp"),
         type = "timestamp",
         name = "StartedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      StatusMessage = schema.new({
         id = id.from(_N, "VoiceToneAnalysisTask", "StatusMessage"),
         type = "string",
         name = "StatusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetVoiceToneAnalysisTaskOutput = schema.new({
   id = id.from(_N, "GetVoiceToneAnalysisTaskResponse"),
   type = "structure",
   members = {
      VoiceToneAnalysisTask = schema.new({
         id = id.from(_N, "GetVoiceToneAnalysisTaskOutput", "VoiceToneAnalysisTask"),
         type = "structure",
         name = "VoiceToneAnalysisTask",
         target_id = id.from(_N, "VoiceToneAnalysisTask"),
         target = M.VoiceToneAnalysisTask,
      }),
   },
})

M.ListAvailableVoiceConnectorRegionsInput = prelude.Unit

M.ListAvailableVoiceConnectorRegionsOutput = schema.new({
   id = id.from(_N, "ListAvailableVoiceConnectorRegionsResponse"),
   type = "structure",
   members = {
      VoiceConnectorRegions = schema.new({
         id = id.from(_N, "ListAvailableVoiceConnectorRegionsOutput", "VoiceConnectorRegions"),
         type = "list",
         name = "VoiceConnectorRegions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListPhoneNumberOrdersInput = schema.new({
   id = id.from(_N, "ListPhoneNumberOrdersRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListPhoneNumberOrdersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPhoneNumberOrdersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
   },
})

M.ListPhoneNumberOrdersOutput = schema.new({
   id = id.from(_N, "ListPhoneNumberOrdersResponse"),
   type = "structure",
   members = {
      PhoneNumberOrders = schema.new({
         id = id.from(_N, "ListPhoneNumberOrdersOutput", "PhoneNumberOrders"),
         type = "list",
         name = "PhoneNumberOrders",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberOrder,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPhoneNumberOrdersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPhoneNumbersInput = schema.new({
   id = id.from(_N, "ListPhoneNumbersRequest"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "ListPhoneNumbersInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      ProductType = schema.new({
         id = id.from(_N, "ListPhoneNumbersInput", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "product-type" },
         },
      }),
      FilterName = schema.new({
         id = id.from(_N, "ListPhoneNumbersInput", "FilterName"),
         type = "string",
         name = "FilterName",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "filter-name" },
         },
      }),
      FilterValue = schema.new({
         id = id.from(_N, "ListPhoneNumbersInput", "FilterValue"),
         type = "string",
         name = "FilterValue",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "filter-value" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPhoneNumbersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPhoneNumbersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListPhoneNumbersOutput = schema.new({
   id = id.from(_N, "ListPhoneNumbersResponse"),
   type = "structure",
   members = {
      PhoneNumbers = schema.new({
         id = id.from(_N, "ListPhoneNumbersOutput", "PhoneNumbers"),
         type = "list",
         name = "PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumber,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPhoneNumbersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListProxySessionsInput = schema.new({
   id = id.from(_N, "ListProxySessionsRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "ListProxySessionsInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Status = schema.new({
         id = id.from(_N, "ListProxySessionsInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProxySessionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListProxySessionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
   },
})

M.ListProxySessionsOutput = schema.new({
   id = id.from(_N, "ListProxySessionsResponse"),
   type = "structure",
   members = {
      ProxySessions = schema.new({
         id = id.from(_N, "ListProxySessionsOutput", "ProxySessions"),
         type = "list",
         name = "ProxySessions",
         target_id = prelude.Document.id,
         list_member = M.ProxySession,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListProxySessionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSipMediaApplicationsInput = schema.new({
   id = id.from(_N, "ListSipMediaApplicationsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "ListSipMediaApplicationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSipMediaApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListSipMediaApplicationsOutput = schema.new({
   id = id.from(_N, "ListSipMediaApplicationsResponse"),
   type = "structure",
   members = {
      SipMediaApplications = schema.new({
         id = id.from(_N, "ListSipMediaApplicationsOutput", "SipMediaApplications"),
         type = "list",
         name = "SipMediaApplications",
         target_id = prelude.Document.id,
         list_member = M.SipMediaApplication,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSipMediaApplicationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSipRulesInput = schema.new({
   id = id.from(_N, "ListSipRulesRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "ListSipRulesInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "sip-media-application" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListSipRulesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSipRulesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.ListSipRulesOutput = schema.new({
   id = id.from(_N, "ListSipRulesResponse"),
   type = "structure",
   members = {
      SipRules = schema.new({
         id = id.from(_N, "ListSipRulesOutput", "SipRules"),
         type = "list",
         name = "SipRules",
         target_id = prelude.Document.id,
         list_member = M.SipRule,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListSipRulesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListSupportedPhoneNumberCountriesInput = schema.new({
   id = id.from(_N, "ListSupportedPhoneNumberCountriesRequest"),
   type = "structure",
   members = {
      ProductType = schema.new({
         id = id.from(_N, "ListSupportedPhoneNumberCountriesInput", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "product-type" },
         },
      }),
   },
})

M.PhoneNumberCountry = schema.new({
   id = id.from(_N, "PhoneNumberCountry"),
   type = "structure",
   members = {
      CountryCode = schema.new({
         id = id.from(_N, "PhoneNumberCountry", "CountryCode"),
         type = "string",
         name = "CountryCode",
         target_id = prelude.String.id,
      }),
      SupportedPhoneNumberTypes = schema.new({
         id = id.from(_N, "PhoneNumberCountry", "SupportedPhoneNumberTypes"),
         type = "list",
         name = "SupportedPhoneNumberTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListSupportedPhoneNumberCountriesOutput = schema.new({
   id = id.from(_N, "ListSupportedPhoneNumberCountriesResponse"),
   type = "structure",
   members = {
      PhoneNumberCountries = schema.new({
         id = id.from(_N, "ListSupportedPhoneNumberCountriesOutput", "PhoneNumberCountries"),
         type = "list",
         name = "PhoneNumberCountries",
         target_id = prelude.Document.id,
         list_member = M.PhoneNumberCountry,
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
            [traits.HTTP_QUERY] = { name = "arn" },
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

M.ListVoiceConnectorGroupsInput = schema.new({
   id = id.from(_N, "ListVoiceConnectorGroupsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceConnectorGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListVoiceConnectorGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
   },
})

M.ListVoiceConnectorGroupsOutput = schema.new({
   id = id.from(_N, "ListVoiceConnectorGroupsResponse"),
   type = "structure",
   members = {
      VoiceConnectorGroups = schema.new({
         id = id.from(_N, "ListVoiceConnectorGroupsOutput", "VoiceConnectorGroups"),
         type = "list",
         name = "VoiceConnectorGroups",
         target_id = prelude.Document.id,
         list_member = M.VoiceConnectorGroup,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceConnectorGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListVoiceConnectorsInput = schema.new({
   id = id.from(_N, "ListVoiceConnectorsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceConnectorsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListVoiceConnectorsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
   },
})

M.ListVoiceConnectorsOutput = schema.new({
   id = id.from(_N, "ListVoiceConnectorsResponse"),
   type = "structure",
   members = {
      VoiceConnectors = schema.new({
         id = id.from(_N, "ListVoiceConnectorsOutput", "VoiceConnectors"),
         type = "list",
         name = "VoiceConnectors",
         target_id = prelude.Document.id,
         list_member = M.VoiceConnector,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceConnectorsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListVoiceConnectorTerminationCredentialsInput = schema.new({
   id = id.from(_N, "ListVoiceConnectorTerminationCredentialsRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "ListVoiceConnectorTerminationCredentialsInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.ListVoiceConnectorTerminationCredentialsOutput = schema.new({
   id = id.from(_N, "ListVoiceConnectorTerminationCredentialsResponse"),
   type = "structure",
   members = {
      Usernames = schema.new({
         id = id.from(_N, "ListVoiceConnectorTerminationCredentialsOutput", "Usernames"),
         type = "list",
         name = "Usernames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListVoiceProfileDomainsInput = schema.new({
   id = id.from(_N, "ListVoiceProfileDomainsRequest"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceProfileDomainsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListVoiceProfileDomainsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
   },
})

M.VoiceProfileDomainSummary = schema.new({
   id = id.from(_N, "VoiceProfileDomainSummary"),
   type = "structure",
   members = {
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "VoiceProfileDomainSummary", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
      }),
      VoiceProfileDomainArn = schema.new({
         id = id.from(_N, "VoiceProfileDomainSummary", "VoiceProfileDomainArn"),
         type = "string",
         name = "VoiceProfileDomainArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "VoiceProfileDomainSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "VoiceProfileDomainSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileDomainSummary", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileDomainSummary", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListVoiceProfileDomainsOutput = schema.new({
   id = id.from(_N, "ListVoiceProfileDomainsResponse"),
   type = "structure",
   members = {
      VoiceProfileDomains = schema.new({
         id = id.from(_N, "ListVoiceProfileDomainsOutput", "VoiceProfileDomains"),
         type = "list",
         name = "VoiceProfileDomains",
         target_id = prelude.Document.id,
         list_member = M.VoiceProfileDomainSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceProfileDomainsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListVoiceProfilesInput = schema.new({
   id = id.from(_N, "ListVoiceProfilesRequest"),
   type = "structure",
   members = {
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "ListVoiceProfilesInput", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "voice-profile-domain-id" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceProfilesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListVoiceProfilesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
   },
})

M.VoiceProfileSummary = schema.new({
   id = id.from(_N, "VoiceProfileSummary"),
   type = "structure",
   members = {
      VoiceProfileId = schema.new({
         id = id.from(_N, "VoiceProfileSummary", "VoiceProfileId"),
         type = "string",
         name = "VoiceProfileId",
         target_id = prelude.String.id,
      }),
      VoiceProfileArn = schema.new({
         id = id.from(_N, "VoiceProfileSummary", "VoiceProfileArn"),
         type = "string",
         name = "VoiceProfileArn",
         target_id = prelude.String.id,
      }),
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "VoiceProfileSummary", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
      }),
      CreatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileSummary", "CreatedTimestamp"),
         type = "timestamp",
         name = "CreatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      UpdatedTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileSummary", "UpdatedTimestamp"),
         type = "timestamp",
         name = "UpdatedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
      ExpirationTimestamp = schema.new({
         id = id.from(_N, "VoiceProfileSummary", "ExpirationTimestamp"),
         type = "timestamp",
         name = "ExpirationTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
         },
      }),
   },
})

M.ListVoiceProfilesOutput = schema.new({
   id = id.from(_N, "ListVoiceProfilesResponse"),
   type = "structure",
   members = {
      VoiceProfiles = schema.new({
         id = id.from(_N, "ListVoiceProfilesOutput", "VoiceProfiles"),
         type = "list",
         name = "VoiceProfiles",
         target_id = prelude.Document.id,
         list_member = M.VoiceProfileSummary,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListVoiceProfilesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PutSipMediaApplicationAlexaSkillConfigurationInput = schema.new({
   id = id.from(_N, "PutSipMediaApplicationAlexaSkillConfigurationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "PutSipMediaApplicationAlexaSkillConfigurationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SipMediaApplicationAlexaSkillConfiguration = schema.new({
         id = id.from(_N, "PutSipMediaApplicationAlexaSkillConfigurationInput", "SipMediaApplicationAlexaSkillConfiguration"),
         type = "structure",
         name = "SipMediaApplicationAlexaSkillConfiguration",
         target_id = id.from(_N, "SipMediaApplicationAlexaSkillConfiguration"),
         target = M.SipMediaApplicationAlexaSkillConfiguration,
      }),
   },
})

M.PutSipMediaApplicationAlexaSkillConfigurationOutput = schema.new({
   id = id.from(_N, "PutSipMediaApplicationAlexaSkillConfigurationResponse"),
   type = "structure",
   members = {
      SipMediaApplicationAlexaSkillConfiguration = schema.new({
         id = id.from(_N, "PutSipMediaApplicationAlexaSkillConfigurationOutput", "SipMediaApplicationAlexaSkillConfiguration"),
         type = "structure",
         name = "SipMediaApplicationAlexaSkillConfiguration",
         target_id = id.from(_N, "SipMediaApplicationAlexaSkillConfiguration"),
         target = M.SipMediaApplicationAlexaSkillConfiguration,
      }),
   },
})

M.PutSipMediaApplicationLoggingConfigurationInput = schema.new({
   id = id.from(_N, "PutSipMediaApplicationLoggingConfigurationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "PutSipMediaApplicationLoggingConfigurationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SipMediaApplicationLoggingConfiguration = schema.new({
         id = id.from(_N, "PutSipMediaApplicationLoggingConfigurationInput", "SipMediaApplicationLoggingConfiguration"),
         type = "structure",
         name = "SipMediaApplicationLoggingConfiguration",
         target_id = id.from(_N, "SipMediaApplicationLoggingConfiguration"),
         target = M.SipMediaApplicationLoggingConfiguration,
      }),
   },
})

M.PutSipMediaApplicationLoggingConfigurationOutput = schema.new({
   id = id.from(_N, "PutSipMediaApplicationLoggingConfigurationResponse"),
   type = "structure",
   members = {
      SipMediaApplicationLoggingConfiguration = schema.new({
         id = id.from(_N, "PutSipMediaApplicationLoggingConfigurationOutput", "SipMediaApplicationLoggingConfiguration"),
         type = "structure",
         name = "SipMediaApplicationLoggingConfiguration",
         target_id = id.from(_N, "SipMediaApplicationLoggingConfiguration"),
         target = M.SipMediaApplicationLoggingConfiguration,
      }),
   },
})

M.PutVoiceConnectorEmergencyCallingConfigurationInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorEmergencyCallingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorEmergencyCallingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      EmergencyCallingConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorEmergencyCallingConfigurationInput", "EmergencyCallingConfiguration"),
         type = "structure",
         name = "EmergencyCallingConfiguration",
         target_id = id.from(_N, "EmergencyCallingConfiguration"),
         target = M.EmergencyCallingConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutVoiceConnectorEmergencyCallingConfigurationOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorEmergencyCallingConfigurationResponse"),
   type = "structure",
   members = {
      EmergencyCallingConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorEmergencyCallingConfigurationOutput", "EmergencyCallingConfiguration"),
         type = "structure",
         name = "EmergencyCallingConfiguration",
         target_id = id.from(_N, "EmergencyCallingConfiguration"),
         target = M.EmergencyCallingConfiguration,
      }),
   },
})

M.PutVoiceConnectorExternalSystemsConfigurationInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorExternalSystemsConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorExternalSystemsConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SessionBorderControllerTypes = schema.new({
         id = id.from(_N, "PutVoiceConnectorExternalSystemsConfigurationInput", "SessionBorderControllerTypes"),
         type = "list",
         name = "SessionBorderControllerTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ContactCenterSystemTypes = schema.new({
         id = id.from(_N, "PutVoiceConnectorExternalSystemsConfigurationInput", "ContactCenterSystemTypes"),
         type = "list",
         name = "ContactCenterSystemTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.PutVoiceConnectorExternalSystemsConfigurationOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorExternalSystemsConfigurationResponse"),
   type = "structure",
   members = {
      ExternalSystemsConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorExternalSystemsConfigurationOutput", "ExternalSystemsConfiguration"),
         type = "structure",
         name = "ExternalSystemsConfiguration",
         target_id = id.from(_N, "ExternalSystemsConfiguration"),
         target = M.ExternalSystemsConfiguration,
      }),
   },
})

M.PutVoiceConnectorLoggingConfigurationInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorLoggingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorLoggingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      LoggingConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorLoggingConfigurationInput", "LoggingConfiguration"),
         type = "structure",
         name = "LoggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutVoiceConnectorLoggingConfigurationOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorLoggingConfigurationResponse"),
   type = "structure",
   members = {
      LoggingConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorLoggingConfigurationOutput", "LoggingConfiguration"),
         type = "structure",
         name = "LoggingConfiguration",
         target_id = id.from(_N, "LoggingConfiguration"),
         target = M.LoggingConfiguration,
      }),
   },
})

M.PutVoiceConnectorOriginationInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorOriginationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorOriginationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Origination = schema.new({
         id = id.from(_N, "PutVoiceConnectorOriginationInput", "Origination"),
         type = "structure",
         name = "Origination",
         target_id = id.from(_N, "Origination"),
         target = M.Origination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutVoiceConnectorOriginationOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorOriginationResponse"),
   type = "structure",
   members = {
      Origination = schema.new({
         id = id.from(_N, "PutVoiceConnectorOriginationOutput", "Origination"),
         type = "structure",
         name = "Origination",
         target_id = id.from(_N, "Origination"),
         target = M.Origination,
      }),
   },
})

M.PutVoiceConnectorProxyInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorProxyRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorProxyInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      DefaultSessionExpiryMinutes = schema.new({
         id = id.from(_N, "PutVoiceConnectorProxyInput", "DefaultSessionExpiryMinutes"),
         type = "integer",
         name = "DefaultSessionExpiryMinutes",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PhoneNumberPoolCountries = schema.new({
         id = id.from(_N, "PutVoiceConnectorProxyInput", "PhoneNumberPoolCountries"),
         type = "list",
         name = "PhoneNumberPoolCountries",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FallBackPhoneNumber = schema.new({
         id = id.from(_N, "PutVoiceConnectorProxyInput", "FallBackPhoneNumber"),
         type = "string",
         name = "FallBackPhoneNumber",
         target_id = prelude.String.id,
      }),
      Disabled = schema.new({
         id = id.from(_N, "PutVoiceConnectorProxyInput", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.PutVoiceConnectorProxyOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorProxyResponse"),
   type = "structure",
   members = {
      Proxy = schema.new({
         id = id.from(_N, "PutVoiceConnectorProxyOutput", "Proxy"),
         type = "structure",
         name = "Proxy",
         target_id = id.from(_N, "Proxy"),
         target = M.Proxy,
      }),
   },
})

M.PutVoiceConnectorStreamingConfigurationInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorStreamingConfigurationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorStreamingConfigurationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      StreamingConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorStreamingConfigurationInput", "StreamingConfiguration"),
         type = "structure",
         name = "StreamingConfiguration",
         target_id = id.from(_N, "StreamingConfiguration"),
         target = M.StreamingConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutVoiceConnectorStreamingConfigurationOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorStreamingConfigurationResponse"),
   type = "structure",
   members = {
      StreamingConfiguration = schema.new({
         id = id.from(_N, "PutVoiceConnectorStreamingConfigurationOutput", "StreamingConfiguration"),
         type = "structure",
         name = "StreamingConfiguration",
         target_id = id.from(_N, "StreamingConfiguration"),
         target = M.StreamingConfiguration,
      }),
   },
})

M.PutVoiceConnectorTerminationInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorTerminationRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorTerminationInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Termination = schema.new({
         id = id.from(_N, "PutVoiceConnectorTerminationInput", "Termination"),
         type = "structure",
         name = "Termination",
         target_id = id.from(_N, "Termination"),
         target = M.Termination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PutVoiceConnectorTerminationOutput = schema.new({
   id = id.from(_N, "PutVoiceConnectorTerminationResponse"),
   type = "structure",
   members = {
      Termination = schema.new({
         id = id.from(_N, "PutVoiceConnectorTerminationOutput", "Termination"),
         type = "structure",
         name = "Termination",
         target_id = id.from(_N, "Termination"),
         target = M.Termination,
      }),
   },
})

M.Credential = schema.new({
   id = id.from(_N, "Credential"),
   type = "structure",
   members = {
      Username = schema.new({
         id = id.from(_N, "Credential", "Username"),
         type = "string",
         name = "Username",
         target_id = prelude.String.id,
      }),
      Password = schema.new({
         id = id.from(_N, "Credential", "Password"),
         type = "string",
         name = "Password",
         target_id = prelude.String.id,
      }),
   },
})

M.PutVoiceConnectorTerminationCredentialsInput = schema.new({
   id = id.from(_N, "PutVoiceConnectorTerminationCredentialsRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "PutVoiceConnectorTerminationCredentialsInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Credentials = schema.new({
         id = id.from(_N, "PutVoiceConnectorTerminationCredentialsInput", "Credentials"),
         type = "list",
         name = "Credentials",
         target_id = prelude.Document.id,
         list_member = M.Credential,
      }),
   },
})

M.PutVoiceConnectorTerminationCredentialsOutput = prelude.Unit

M.RestorePhoneNumberInput = schema.new({
   id = id.from(_N, "RestorePhoneNumberRequest"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "RestorePhoneNumberInput", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.RestorePhoneNumberOutput = schema.new({
   id = id.from(_N, "RestorePhoneNumberResponse"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "RestorePhoneNumberOutput", "PhoneNumber"),
         type = "structure",
         name = "PhoneNumber",
         target_id = id.from(_N, "PhoneNumber"),
         target = M.PhoneNumber,
      }),
   },
})

M.SearchAvailablePhoneNumbersInput = schema.new({
   id = id.from(_N, "SearchAvailablePhoneNumbersRequest"),
   type = "structure",
   members = {
      AreaCode = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "AreaCode"),
         type = "string",
         name = "AreaCode",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "area-code" },
         },
      }),
      City = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "city" },
         },
      }),
      Country = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "country" },
         },
      }),
      State = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "state" },
         },
      }),
      TollFreePrefix = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "TollFreePrefix"),
         type = "string",
         name = "TollFreePrefix",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "toll-free-prefix" },
         },
      }),
      PhoneNumberType = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "PhoneNumberType"),
         type = "string",
         name = "PhoneNumberType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "phone-number-type" },
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "max-results" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "next-token" },
         },
      }),
   },
})

M.SearchAvailablePhoneNumbersOutput = schema.new({
   id = id.from(_N, "SearchAvailablePhoneNumbersResponse"),
   type = "structure",
   members = {
      E164PhoneNumbers = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersOutput", "E164PhoneNumbers"),
         type = "list",
         name = "E164PhoneNumbers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "SearchAvailablePhoneNumbersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartSpeakerSearchTaskInput = schema.new({
   id = id.from(_N, "StartSpeakerSearchTaskRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "StartSpeakerSearchTaskInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TransactionId = schema.new({
         id = id.from(_N, "StartSpeakerSearchTaskInput", "TransactionId"),
         type = "string",
         name = "TransactionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "StartSpeakerSearchTaskInput", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartSpeakerSearchTaskInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
      CallLeg = schema.new({
         id = id.from(_N, "StartSpeakerSearchTaskInput", "CallLeg"),
         type = "string",
         name = "CallLeg",
         target_id = prelude.String.id,
      }),
   },
})

M.StartSpeakerSearchTaskOutput = schema.new({
   id = id.from(_N, "StartSpeakerSearchTaskResponse"),
   type = "structure",
   members = {
      SpeakerSearchTask = schema.new({
         id = id.from(_N, "StartSpeakerSearchTaskOutput", "SpeakerSearchTask"),
         type = "structure",
         name = "SpeakerSearchTask",
         target_id = id.from(_N, "SpeakerSearchTask"),
         target = M.SpeakerSearchTask,
      }),
   },
})

M.UnprocessableEntityException = schema.new({
   id = id.from(_N, "UnprocessableEntityException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Code = schema.new({
         id = id.from(_N, "UnprocessableEntityException", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "UnprocessableEntityException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.StartVoiceToneAnalysisTaskInput = schema.new({
   id = id.from(_N, "StartVoiceToneAnalysisTaskRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TransactionId = schema.new({
         id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "TransactionId"),
         type = "string",
         name = "TransactionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LanguageCode = schema.new({
         id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "LanguageCode"),
         type = "string",
         name = "LanguageCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ClientRequestToken = schema.new({
         id = id.from(_N, "StartVoiceToneAnalysisTaskInput", "ClientRequestToken"),
         type = "string",
         name = "ClientRequestToken",
         target_id = prelude.String.id,
      }),
   },
})

M.StartVoiceToneAnalysisTaskOutput = schema.new({
   id = id.from(_N, "StartVoiceToneAnalysisTaskResponse"),
   type = "structure",
   members = {
      VoiceToneAnalysisTask = schema.new({
         id = id.from(_N, "StartVoiceToneAnalysisTaskOutput", "VoiceToneAnalysisTask"),
         type = "structure",
         name = "VoiceToneAnalysisTask",
         target_id = id.from(_N, "VoiceToneAnalysisTask"),
         target = M.VoiceToneAnalysisTask,
      }),
   },
})

M.StopSpeakerSearchTaskInput = schema.new({
   id = id.from(_N, "StopSpeakerSearchTaskRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "StopSpeakerSearchTaskInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SpeakerSearchTaskId = schema.new({
         id = id.from(_N, "StopSpeakerSearchTaskInput", "SpeakerSearchTaskId"),
         type = "string",
         name = "SpeakerSearchTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopSpeakerSearchTaskOutput = prelude.Unit

M.StopVoiceToneAnalysisTaskInput = schema.new({
   id = id.from(_N, "StopVoiceToneAnalysisTaskRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "StopVoiceToneAnalysisTaskInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      VoiceToneAnalysisTaskId = schema.new({
         id = id.from(_N, "StopVoiceToneAnalysisTaskInput", "VoiceToneAnalysisTaskId"),
         type = "string",
         name = "VoiceToneAnalysisTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.StopVoiceToneAnalysisTaskOutput = prelude.Unit

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

M.TagResourceOutput = prelude.Unit

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

M.UntagResourceOutput = prelude.Unit

M.UpdateGlobalSettingsInput = schema.new({
   id = id.from(_N, "UpdateGlobalSettingsRequest"),
   type = "structure",
   members = {
      VoiceConnector = schema.new({
         id = id.from(_N, "UpdateGlobalSettingsInput", "VoiceConnector"),
         type = "structure",
         name = "VoiceConnector",
         target_id = id.from(_N, "VoiceConnectorSettings"),
         target = M.VoiceConnectorSettings,
      }),
   },
})

M.UpdateGlobalSettingsOutput = prelude.Unit

M.UpdatePhoneNumberInput = schema.new({
   id = id.from(_N, "UpdatePhoneNumberRequest"),
   type = "structure",
   members = {
      PhoneNumberId = schema.new({
         id = id.from(_N, "UpdatePhoneNumberInput", "PhoneNumberId"),
         type = "string",
         name = "PhoneNumberId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ProductType = schema.new({
         id = id.from(_N, "UpdatePhoneNumberInput", "ProductType"),
         type = "string",
         name = "ProductType",
         target_id = prelude.String.id,
      }),
      CallingName = schema.new({
         id = id.from(_N, "UpdatePhoneNumberInput", "CallingName"),
         type = "string",
         name = "CallingName",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePhoneNumberInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePhoneNumberOutput = schema.new({
   id = id.from(_N, "UpdatePhoneNumberResponse"),
   type = "structure",
   members = {
      PhoneNumber = schema.new({
         id = id.from(_N, "UpdatePhoneNumberOutput", "PhoneNumber"),
         type = "structure",
         name = "PhoneNumber",
         target_id = id.from(_N, "PhoneNumber"),
         target = M.PhoneNumber,
      }),
   },
})

M.UpdatePhoneNumberSettingsInput = schema.new({
   id = id.from(_N, "UpdatePhoneNumberSettingsRequest"),
   type = "structure",
   members = {
      CallingName = schema.new({
         id = id.from(_N, "UpdatePhoneNumberSettingsInput", "CallingName"),
         type = "string",
         name = "CallingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdatePhoneNumberSettingsOutput = prelude.Unit

M.UpdateProxySessionInput = schema.new({
   id = id.from(_N, "UpdateProxySessionRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "UpdateProxySessionInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      ProxySessionId = schema.new({
         id = id.from(_N, "UpdateProxySessionInput", "ProxySessionId"),
         type = "string",
         name = "ProxySessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Capabilities = schema.new({
         id = id.from(_N, "UpdateProxySessionInput", "Capabilities"),
         type = "list",
         name = "Capabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExpiryMinutes = schema.new({
         id = id.from(_N, "UpdateProxySessionInput", "ExpiryMinutes"),
         type = "integer",
         name = "ExpiryMinutes",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UpdateProxySessionOutput = schema.new({
   id = id.from(_N, "UpdateProxySessionResponse"),
   type = "structure",
   members = {
      ProxySession = schema.new({
         id = id.from(_N, "UpdateProxySessionOutput", "ProxySession"),
         type = "structure",
         name = "ProxySession",
         target_id = id.from(_N, "ProxySession"),
         target = M.ProxySession,
      }),
   },
})

M.UpdateSipMediaApplicationInput = schema.new({
   id = id.from(_N, "UpdateSipMediaApplicationRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Endpoints = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationInput", "Endpoints"),
         type = "list",
         name = "Endpoints",
         target_id = prelude.Document.id,
         list_member = M.SipMediaApplicationEndpoint,
      }),
   },
})

M.UpdateSipMediaApplicationOutput = schema.new({
   id = id.from(_N, "UpdateSipMediaApplicationResponse"),
   type = "structure",
   members = {
      SipMediaApplication = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationOutput", "SipMediaApplication"),
         type = "structure",
         name = "SipMediaApplication",
         target_id = id.from(_N, "SipMediaApplication"),
         target = M.SipMediaApplication,
      }),
   },
})

M.UpdateSipMediaApplicationCallInput = schema.new({
   id = id.from(_N, "UpdateSipMediaApplicationCallRequest"),
   type = "structure",
   members = {
      SipMediaApplicationId = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationCallInput", "SipMediaApplicationId"),
         type = "string",
         name = "SipMediaApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TransactionId = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationCallInput", "TransactionId"),
         type = "string",
         name = "TransactionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Arguments = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationCallInput", "Arguments"),
         type = "map",
         name = "Arguments",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateSipMediaApplicationCallOutput = schema.new({
   id = id.from(_N, "UpdateSipMediaApplicationCallResponse"),
   type = "structure",
   members = {
      SipMediaApplicationCall = schema.new({
         id = id.from(_N, "UpdateSipMediaApplicationCallOutput", "SipMediaApplicationCall"),
         type = "structure",
         name = "SipMediaApplicationCall",
         target_id = id.from(_N, "SipMediaApplicationCall"),
         target = M.SipMediaApplicationCall,
      }),
   },
})

M.UpdateSipRuleInput = schema.new({
   id = id.from(_N, "UpdateSipRuleRequest"),
   type = "structure",
   members = {
      SipRuleId = schema.new({
         id = id.from(_N, "UpdateSipRuleInput", "SipRuleId"),
         type = "string",
         name = "SipRuleId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateSipRuleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Disabled = schema.new({
         id = id.from(_N, "UpdateSipRuleInput", "Disabled"),
         type = "boolean",
         name = "Disabled",
         target_id = prelude.Boolean.id,
      }),
      TargetApplications = schema.new({
         id = id.from(_N, "UpdateSipRuleInput", "TargetApplications"),
         type = "list",
         name = "TargetApplications",
         target_id = prelude.Document.id,
         list_member = M.SipRuleTargetApplication,
      }),
   },
})

M.UpdateSipRuleOutput = schema.new({
   id = id.from(_N, "UpdateSipRuleResponse"),
   type = "structure",
   members = {
      SipRule = schema.new({
         id = id.from(_N, "UpdateSipRuleOutput", "SipRule"),
         type = "structure",
         name = "SipRule",
         target_id = id.from(_N, "SipRule"),
         target = M.SipRule,
      }),
   },
})

M.UpdateVoiceConnectorInput = schema.new({
   id = id.from(_N, "UpdateVoiceConnectorRequest"),
   type = "structure",
   members = {
      VoiceConnectorId = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorInput", "VoiceConnectorId"),
         type = "string",
         name = "VoiceConnectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RequireEncryption = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorInput", "RequireEncryption"),
         type = "boolean",
         name = "RequireEncryption",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateVoiceConnectorOutput = schema.new({
   id = id.from(_N, "UpdateVoiceConnectorResponse"),
   type = "structure",
   members = {
      VoiceConnector = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorOutput", "VoiceConnector"),
         type = "structure",
         name = "VoiceConnector",
         target_id = id.from(_N, "VoiceConnector"),
         target = M.VoiceConnector,
      }),
   },
})

M.UpdateVoiceConnectorGroupInput = schema.new({
   id = id.from(_N, "UpdateVoiceConnectorGroupRequest"),
   type = "structure",
   members = {
      VoiceConnectorGroupId = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorGroupInput", "VoiceConnectorGroupId"),
         type = "string",
         name = "VoiceConnectorGroupId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VoiceConnectorItems = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorGroupInput", "VoiceConnectorItems"),
         type = "list",
         name = "VoiceConnectorItems",
         target_id = prelude.Document.id,
         list_member = M.VoiceConnectorItem,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateVoiceConnectorGroupOutput = schema.new({
   id = id.from(_N, "UpdateVoiceConnectorGroupResponse"),
   type = "structure",
   members = {
      VoiceConnectorGroup = schema.new({
         id = id.from(_N, "UpdateVoiceConnectorGroupOutput", "VoiceConnectorGroup"),
         type = "structure",
         name = "VoiceConnectorGroup",
         target_id = id.from(_N, "VoiceConnectorGroup"),
         target = M.VoiceConnectorGroup,
      }),
   },
})

M.UpdateVoiceProfileInput = schema.new({
   id = id.from(_N, "UpdateVoiceProfileRequest"),
   type = "structure",
   members = {
      VoiceProfileId = schema.new({
         id = id.from(_N, "UpdateVoiceProfileInput", "VoiceProfileId"),
         type = "string",
         name = "VoiceProfileId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SpeakerSearchTaskId = schema.new({
         id = id.from(_N, "UpdateVoiceProfileInput", "SpeakerSearchTaskId"),
         type = "string",
         name = "SpeakerSearchTaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateVoiceProfileOutput = schema.new({
   id = id.from(_N, "UpdateVoiceProfileResponse"),
   type = "structure",
   members = {
      VoiceProfile = schema.new({
         id = id.from(_N, "UpdateVoiceProfileOutput", "VoiceProfile"),
         type = "structure",
         name = "VoiceProfile",
         target_id = id.from(_N, "VoiceProfile"),
         target = M.VoiceProfile,
      }),
   },
})

M.UpdateVoiceProfileDomainInput = schema.new({
   id = id.from(_N, "UpdateVoiceProfileDomainRequest"),
   type = "structure",
   members = {
      VoiceProfileDomainId = schema.new({
         id = id.from(_N, "UpdateVoiceProfileDomainInput", "VoiceProfileDomainId"),
         type = "string",
         name = "VoiceProfileDomainId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateVoiceProfileDomainInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateVoiceProfileDomainInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateVoiceProfileDomainOutput = schema.new({
   id = id.from(_N, "UpdateVoiceProfileDomainResponse"),
   type = "structure",
   members = {
      VoiceProfileDomain = schema.new({
         id = id.from(_N, "UpdateVoiceProfileDomainOutput", "VoiceProfileDomain"),
         type = "structure",
         name = "VoiceProfileDomain",
         target_id = id.from(_N, "VoiceProfileDomain"),
         target = M.VoiceProfileDomain,
      }),
   },
})

M.ValidateE911AddressInput = schema.new({
   id = id.from(_N, "ValidateE911AddressRequest"),
   type = "structure",
   members = {
      AwsAccountId = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "AwsAccountId"),
         type = "string",
         name = "AwsAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StreetNumber = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "StreetNumber"),
         type = "string",
         name = "StreetNumber",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StreetInfo = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "StreetInfo"),
         type = "string",
         name = "StreetInfo",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      City = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "City"),
         type = "string",
         name = "City",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Country = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "Country"),
         type = "string",
         name = "Country",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PostalCode = schema.new({
         id = id.from(_N, "ValidateE911AddressInput", "PostalCode"),
         type = "string",
         name = "PostalCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ValidateE911AddressOutput = schema.new({
   id = id.from(_N, "ValidateE911AddressResponse"),
   type = "structure",
   members = {
      ValidationResult = schema.new({
         id = id.from(_N, "ValidateE911AddressOutput", "ValidationResult"),
         type = "integer",
         name = "ValidationResult",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AddressExternalId = schema.new({
         id = id.from(_N, "ValidateE911AddressOutput", "AddressExternalId"),
         type = "string",
         name = "AddressExternalId",
         target_id = prelude.String.id,
      }),
      Address = schema.new({
         id = id.from(_N, "ValidateE911AddressOutput", "Address"),
         type = "structure",
         name = "Address",
         target_id = id.from(_N, "Address"),
         target = M.Address,
      }),
      CandidateAddressList = schema.new({
         id = id.from(_N, "ValidateE911AddressOutput", "CandidateAddressList"),
         type = "list",
         name = "CandidateAddressList",
         target_id = prelude.Document.id,
         list_member = schema.new({ type = "structure", target = M.CandidateAddress, traits = { [traits.XML_NAME] = { name = "CandidateAddress" } } }),
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
   id = id.from("com.amazonaws.chimesdkvoice", "ChimeSDKTelephonyService"),
   version = "2022-08-03",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociatePhoneNumbersWithVoiceConnector = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "AssociatePhoneNumbersWithVoiceConnector"),
   input = M.AssociatePhoneNumbersWithVoiceConnectorInput,
   output = M.AssociatePhoneNumbersWithVoiceConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}?operation=associate-phone-numbers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociatePhoneNumbersWithVoiceConnectorGroup = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "AssociatePhoneNumbersWithVoiceConnectorGroup"),
   input = M.AssociatePhoneNumbersWithVoiceConnectorGroupInput,
   output = M.AssociatePhoneNumbersWithVoiceConnectorGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connector-groups/{VoiceConnectorGroupId}?operation=associate-phone-numbers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDeletePhoneNumber = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "BatchDeletePhoneNumber"),
   input = M.BatchDeletePhoneNumberInput,
   output = M.BatchDeletePhoneNumberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/phone-numbers?operation=batch-delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchUpdatePhoneNumber = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "BatchUpdatePhoneNumber"),
   input = M.BatchUpdatePhoneNumberInput,
   output = M.BatchUpdatePhoneNumberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/phone-numbers?operation=batch-update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePhoneNumberOrder = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreatePhoneNumberOrder"),
   input = M.CreatePhoneNumberOrderInput,
   output = M.CreatePhoneNumberOrderOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/phone-number-orders" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateProxySession = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateProxySession"),
   input = M.CreateProxySessionInput,
   output = M.CreateProxySessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSipMediaApplication = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateSipMediaApplication"),
   input = M.CreateSipMediaApplicationInput,
   output = M.CreateSipMediaApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sip-media-applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSipMediaApplicationCall = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateSipMediaApplicationCall"),
   input = M.CreateSipMediaApplicationCallInput,
   output = M.CreateSipMediaApplicationCallOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sip-media-applications/{SipMediaApplicationId}/calls" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSipRule = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateSipRule"),
   input = M.CreateSipRuleInput,
   output = M.CreateSipRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sip-rules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVoiceConnector = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateVoiceConnector"),
   input = M.CreateVoiceConnectorInput,
   output = M.CreateVoiceConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVoiceConnectorGroup = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateVoiceConnectorGroup"),
   input = M.CreateVoiceConnectorGroupInput,
   output = M.CreateVoiceConnectorGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connector-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVoiceProfile = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateVoiceProfile"),
   input = M.CreateVoiceProfileInput,
   output = M.CreateVoiceProfileOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-profiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateVoiceProfileDomain = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "CreateVoiceProfileDomain"),
   input = M.CreateVoiceProfileDomainInput,
   output = M.CreateVoiceProfileDomainOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-profile-domains" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePhoneNumber = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeletePhoneNumber"),
   input = M.DeletePhoneNumberInput,
   output = M.DeletePhoneNumberOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/phone-numbers/{PhoneNumberId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteProxySession = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteProxySession"),
   input = M.DeleteProxySessionInput,
   output = M.DeleteProxySessionOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSipMediaApplication = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteSipMediaApplication"),
   input = M.DeleteSipMediaApplicationInput,
   output = M.DeleteSipMediaApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/sip-media-applications/{SipMediaApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteSipRule = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteSipRule"),
   input = M.DeleteSipRuleInput,
   output = M.DeleteSipRuleOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/sip-rules/{SipRuleId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnector = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnector"),
   input = M.DeleteVoiceConnectorInput,
   output = M.DeleteVoiceConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorEmergencyCallingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorEmergencyCallingConfiguration"),
   input = M.DeleteVoiceConnectorEmergencyCallingConfigurationInput,
   output = M.DeleteVoiceConnectorEmergencyCallingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorExternalSystemsConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorExternalSystemsConfiguration"),
   input = M.DeleteVoiceConnectorExternalSystemsConfigurationInput,
   output = M.DeleteVoiceConnectorExternalSystemsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorGroup = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorGroup"),
   input = M.DeleteVoiceConnectorGroupInput,
   output = M.DeleteVoiceConnectorGroupOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connector-groups/{VoiceConnectorGroupId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorOrigination = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorOrigination"),
   input = M.DeleteVoiceConnectorOriginationInput,
   output = M.DeleteVoiceConnectorOriginationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/origination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorProxy = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorProxy"),
   input = M.DeleteVoiceConnectorProxyInput,
   output = M.DeleteVoiceConnectorProxyOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorStreamingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorStreamingConfiguration"),
   input = M.DeleteVoiceConnectorStreamingConfigurationInput,
   output = M.DeleteVoiceConnectorStreamingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorTermination = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorTermination"),
   input = M.DeleteVoiceConnectorTerminationInput,
   output = M.DeleteVoiceConnectorTerminationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-connectors/{VoiceConnectorId}/termination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceConnectorTerminationCredentials = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceConnectorTerminationCredentials"),
   input = M.DeleteVoiceConnectorTerminationCredentialsInput,
   output = M.DeleteVoiceConnectorTerminationCredentialsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceProfile = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceProfile"),
   input = M.DeleteVoiceProfileInput,
   output = M.DeleteVoiceProfileOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-profiles/{VoiceProfileId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteVoiceProfileDomain = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DeleteVoiceProfileDomain"),
   input = M.DeleteVoiceProfileDomainInput,
   output = M.DeleteVoiceProfileDomainOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/voice-profile-domains/{VoiceProfileDomainId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociatePhoneNumbersFromVoiceConnector = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DisassociatePhoneNumbersFromVoiceConnector"),
   input = M.DisassociatePhoneNumbersFromVoiceConnectorInput,
   output = M.DisassociatePhoneNumbersFromVoiceConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}?operation=disassociate-phone-numbers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociatePhoneNumbersFromVoiceConnectorGroup = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "DisassociatePhoneNumbersFromVoiceConnectorGroup"),
   input = M.DisassociatePhoneNumbersFromVoiceConnectorGroupInput,
   output = M.DisassociatePhoneNumbersFromVoiceConnectorGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connector-groups/{VoiceConnectorGroupId}?operation=disassociate-phone-numbers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetGlobalSettings = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetGlobalSettings"),
   input = M.GetGlobalSettingsInput,
   output = M.GetGlobalSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPhoneNumber = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetPhoneNumber"),
   input = M.GetPhoneNumberInput,
   output = M.GetPhoneNumberOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/phone-numbers/{PhoneNumberId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPhoneNumberOrder = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetPhoneNumberOrder"),
   input = M.GetPhoneNumberOrderInput,
   output = M.GetPhoneNumberOrderOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/phone-number-orders/{PhoneNumberOrderId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPhoneNumberSettings = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetPhoneNumberSettings"),
   input = M.GetPhoneNumberSettingsInput,
   output = M.GetPhoneNumberSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/settings/phone-number" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetProxySession = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetProxySession"),
   input = M.GetProxySessionInput,
   output = M.GetProxySessionOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSipMediaApplication = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetSipMediaApplication"),
   input = M.GetSipMediaApplicationInput,
   output = M.GetSipMediaApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sip-media-applications/{SipMediaApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSipMediaApplicationAlexaSkillConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetSipMediaApplicationAlexaSkillConfiguration"),
   input = M.GetSipMediaApplicationAlexaSkillConfigurationInput,
   output = M.GetSipMediaApplicationAlexaSkillConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSipMediaApplicationLoggingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetSipMediaApplicationLoggingConfiguration"),
   input = M.GetSipMediaApplicationLoggingConfigurationInput,
   output = M.GetSipMediaApplicationLoggingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sip-media-applications/{SipMediaApplicationId}/logging-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSipRule = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetSipRule"),
   input = M.GetSipRuleInput,
   output = M.GetSipRuleOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sip-rules/{SipRuleId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSpeakerSearchTask = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetSpeakerSearchTask"),
   input = M.GetSpeakerSearchTaskInput,
   output = M.GetSpeakerSearchTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnector = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnector"),
   input = M.GetVoiceConnectorInput,
   output = M.GetVoiceConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorEmergencyCallingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorEmergencyCallingConfiguration"),
   input = M.GetVoiceConnectorEmergencyCallingConfigurationInput,
   output = M.GetVoiceConnectorEmergencyCallingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorExternalSystemsConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorExternalSystemsConfiguration"),
   input = M.GetVoiceConnectorExternalSystemsConfigurationInput,
   output = M.GetVoiceConnectorExternalSystemsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorGroup = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorGroup"),
   input = M.GetVoiceConnectorGroupInput,
   output = M.GetVoiceConnectorGroupOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connector-groups/{VoiceConnectorGroupId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorLoggingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorLoggingConfiguration"),
   input = M.GetVoiceConnectorLoggingConfigurationInput,
   output = M.GetVoiceConnectorLoggingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/logging-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorOrigination = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorOrigination"),
   input = M.GetVoiceConnectorOriginationInput,
   output = M.GetVoiceConnectorOriginationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/origination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorProxy = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorProxy"),
   input = M.GetVoiceConnectorProxyInput,
   output = M.GetVoiceConnectorProxyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorStreamingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorStreamingConfiguration"),
   input = M.GetVoiceConnectorStreamingConfigurationInput,
   output = M.GetVoiceConnectorStreamingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorTermination = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorTermination"),
   input = M.GetVoiceConnectorTerminationInput,
   output = M.GetVoiceConnectorTerminationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/termination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceConnectorTerminationHealth = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceConnectorTerminationHealth"),
   input = M.GetVoiceConnectorTerminationHealthInput,
   output = M.GetVoiceConnectorTerminationHealthOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/termination/health" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceProfile = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceProfile"),
   input = M.GetVoiceProfileInput,
   output = M.GetVoiceProfileOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-profiles/{VoiceProfileId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceProfileDomain = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceProfileDomain"),
   input = M.GetVoiceProfileDomainInput,
   output = M.GetVoiceProfileDomainOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-profile-domains/{VoiceProfileDomainId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetVoiceToneAnalysisTask = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "GetVoiceToneAnalysisTask"),
   input = M.GetVoiceToneAnalysisTaskInput,
   output = M.GetVoiceToneAnalysisTaskOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAvailableVoiceConnectorRegions = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListAvailableVoiceConnectorRegions"),
   input = M.ListAvailableVoiceConnectorRegionsInput,
   output = M.ListAvailableVoiceConnectorRegionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connector-regions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPhoneNumberOrders = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListPhoneNumberOrders"),
   input = M.ListPhoneNumberOrdersInput,
   output = M.ListPhoneNumberOrdersOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/phone-number-orders" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPhoneNumbers = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListPhoneNumbers"),
   input = M.ListPhoneNumbersInput,
   output = M.ListPhoneNumbersOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/phone-numbers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListProxySessions = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListProxySessions"),
   input = M.ListProxySessionsInput,
   output = M.ListProxySessionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSipMediaApplications = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListSipMediaApplications"),
   input = M.ListSipMediaApplicationsInput,
   output = M.ListSipMediaApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sip-media-applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSipRules = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListSipRules"),
   input = M.ListSipRulesInput,
   output = M.ListSipRulesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/sip-rules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListSupportedPhoneNumberCountries = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListSupportedPhoneNumberCountries"),
   input = M.ListSupportedPhoneNumberCountriesInput,
   output = M.ListSupportedPhoneNumberCountriesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/phone-number-countries" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVoiceConnectorGroups = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListVoiceConnectorGroups"),
   input = M.ListVoiceConnectorGroupsInput,
   output = M.ListVoiceConnectorGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connector-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVoiceConnectors = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListVoiceConnectors"),
   input = M.ListVoiceConnectorsInput,
   output = M.ListVoiceConnectorsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVoiceConnectorTerminationCredentials = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListVoiceConnectorTerminationCredentials"),
   input = M.ListVoiceConnectorTerminationCredentialsInput,
   output = M.ListVoiceConnectorTerminationCredentialsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-connectors/{VoiceConnectorId}/termination/credentials" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVoiceProfileDomains = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListVoiceProfileDomains"),
   input = M.ListVoiceProfileDomainsInput,
   output = M.ListVoiceProfileDomainsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-profile-domains" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListVoiceProfiles = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ListVoiceProfiles"),
   input = M.ListVoiceProfilesInput,
   output = M.ListVoiceProfilesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/voice-profiles" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutSipMediaApplicationAlexaSkillConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutSipMediaApplicationAlexaSkillConfiguration"),
   input = M.PutSipMediaApplicationAlexaSkillConfigurationInput,
   output = M.PutSipMediaApplicationAlexaSkillConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sip-media-applications/{SipMediaApplicationId}/alexa-skill-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutSipMediaApplicationLoggingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutSipMediaApplicationLoggingConfiguration"),
   input = M.PutSipMediaApplicationLoggingConfigurationInput,
   output = M.PutSipMediaApplicationLoggingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sip-media-applications/{SipMediaApplicationId}/logging-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorEmergencyCallingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorEmergencyCallingConfiguration"),
   input = M.PutVoiceConnectorEmergencyCallingConfigurationInput,
   output = M.PutVoiceConnectorEmergencyCallingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/emergency-calling-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorExternalSystemsConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorExternalSystemsConfiguration"),
   input = M.PutVoiceConnectorExternalSystemsConfigurationInput,
   output = M.PutVoiceConnectorExternalSystemsConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/external-systems-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorLoggingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorLoggingConfiguration"),
   input = M.PutVoiceConnectorLoggingConfigurationInput,
   output = M.PutVoiceConnectorLoggingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/logging-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorOrigination = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorOrigination"),
   input = M.PutVoiceConnectorOriginationInput,
   output = M.PutVoiceConnectorOriginationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/origination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorProxy = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorProxy"),
   input = M.PutVoiceConnectorProxyInput,
   output = M.PutVoiceConnectorProxyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/programmable-numbers/proxy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorStreamingConfiguration = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorStreamingConfiguration"),
   input = M.PutVoiceConnectorStreamingConfigurationInput,
   output = M.PutVoiceConnectorStreamingConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/streaming-configuration" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorTermination = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorTermination"),
   input = M.PutVoiceConnectorTerminationInput,
   output = M.PutVoiceConnectorTerminationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}/termination" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutVoiceConnectorTerminationCredentials = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "PutVoiceConnectorTerminationCredentials"),
   input = M.PutVoiceConnectorTerminationCredentialsInput,
   output = M.PutVoiceConnectorTerminationCredentialsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/termination/credentials?operation=put" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RestorePhoneNumber = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "RestorePhoneNumber"),
   input = M.RestorePhoneNumberInput,
   output = M.RestorePhoneNumberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/phone-numbers/{PhoneNumberId}?operation=restore" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchAvailablePhoneNumbers = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "SearchAvailablePhoneNumbers"),
   input = M.SearchAvailablePhoneNumbersInput,
   output = M.SearchAvailablePhoneNumbersOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/search?type=phone-numbers" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSpeakerSearchTask = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "StartSpeakerSearchTask"),
   input = M.StartSpeakerSearchTaskInput,
   output = M.StartSpeakerSearchTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartVoiceToneAnalysisTask = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "StartVoiceToneAnalysisTask"),
   input = M.StartVoiceToneAnalysisTaskInput,
   output = M.StartVoiceToneAnalysisTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopSpeakerSearchTask = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "StopSpeakerSearchTask"),
   input = M.StopSpeakerSearchTaskInput,
   output = M.StopSpeakerSearchTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/speaker-search-tasks/{SpeakerSearchTaskId}?operation=stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopVoiceToneAnalysisTask = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "StopVoiceToneAnalysisTask"),
   input = M.StopVoiceToneAnalysisTaskInput,
   output = M.StopVoiceToneAnalysisTaskOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/voice-tone-analysis-tasks/{VoiceToneAnalysisTaskId}?operation=stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags?operation=tag-resource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags?operation=untag-resource" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateGlobalSettings = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateGlobalSettings"),
   input = M.UpdateGlobalSettingsInput,
   output = M.UpdateGlobalSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/settings" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePhoneNumber = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdatePhoneNumber"),
   input = M.UpdatePhoneNumberInput,
   output = M.UpdatePhoneNumberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/phone-numbers/{PhoneNumberId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePhoneNumberSettings = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdatePhoneNumberSettings"),
   input = M.UpdatePhoneNumberSettingsInput,
   output = M.UpdatePhoneNumberSettingsOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/settings/phone-number" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateProxySession = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateProxySession"),
   input = M.UpdateProxySessionInput,
   output = M.UpdateProxySessionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/voice-connectors/{VoiceConnectorId}/proxy-sessions/{ProxySessionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSipMediaApplication = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateSipMediaApplication"),
   input = M.UpdateSipMediaApplicationInput,
   output = M.UpdateSipMediaApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sip-media-applications/{SipMediaApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSipMediaApplicationCall = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateSipMediaApplicationCall"),
   input = M.UpdateSipMediaApplicationCallInput,
   output = M.UpdateSipMediaApplicationCallOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sip-media-applications/{SipMediaApplicationId}/calls/{TransactionId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateSipRule = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateSipRule"),
   input = M.UpdateSipRuleInput,
   output = M.UpdateSipRuleOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/sip-rules/{SipRuleId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVoiceConnector = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateVoiceConnector"),
   input = M.UpdateVoiceConnectorInput,
   output = M.UpdateVoiceConnectorOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connectors/{VoiceConnectorId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVoiceConnectorGroup = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateVoiceConnectorGroup"),
   input = M.UpdateVoiceConnectorGroupInput,
   output = M.UpdateVoiceConnectorGroupOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-connector-groups/{VoiceConnectorGroupId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVoiceProfile = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateVoiceProfile"),
   input = M.UpdateVoiceProfileInput,
   output = M.UpdateVoiceProfileOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-profiles/{VoiceProfileId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateVoiceProfileDomain = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "UpdateVoiceProfileDomain"),
   input = M.UpdateVoiceProfileDomainInput,
   output = M.UpdateVoiceProfileDomainOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/voice-profile-domains/{VoiceProfileDomainId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ValidateE911Address = schema.operation({
   id = id.from("com.amazonaws.chimesdkvoice", "ValidateE911Address"),
   input = M.ValidateE911AddressInput,
   output = M.ValidateE911AddressOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/emergency-calling/address" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
