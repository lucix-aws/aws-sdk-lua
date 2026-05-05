local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.partnercentralbenefits"

local M = {}

M.AmendmentList = schema.new({ type = "list", list_member = M.Amendment })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.FulfillmentTypes = schema.new({ type = "list", list_member = prelude.String })

M.Tags = schema.new({ type = "list", list_member = M.Tag })

M.Arns = schema.new({ type = "list", list_member = prelude.String })

M.Contacts = schema.new({ type = "list", list_member = M.Contact })

M.FileInputDetails = schema.new({ type = "list", list_member = M.FileInput })

M.Programs = schema.new({ type = "list", list_member = prelude.String })

M.BenefitIdentifiers = schema.new({ type = "list", list_member = prelude.String })

M.StatusReasonCodes = schema.new({ type = "list", list_member = prelude.String })

M.FileDetails = schema.new({ type = "list", list_member = M.FileDetail })

M.BenefitApplicationIdentifierList = schema.new({ type = "list", list_member = prelude.String })

M.BenefitAllocationStatusList = schema.new({ type = "list", list_member = prelude.String })

M.BenefitAllocationSummaries = schema.new({ type = "list", list_member = M.BenefitAllocationSummary })

M.Statuses = schema.new({ type = "list", list_member = prelude.String })

M.Stages = schema.new({ type = "list", list_member = prelude.String })

M.AssociatedResources = schema.new({ type = "list", list_member = M.AssociatedResource })

M.BenefitApplicationSummaries = schema.new({ type = "list", list_member = M.BenefitApplicationSummary })

M.BenefitStatuses = schema.new({ type = "list", list_member = prelude.String })

M.BenefitSummaries = schema.new({ type = "list", list_member = M.BenefitSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.CreditCodes = schema.new({ type = "list", list_member = M.CreditCode })

M.BenefitIds = schema.new({ type = "list", list_member = prelude.String })

M.Attributes = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

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

M.AccessDetails = schema.new({
    id = id.from(_N, "AccessDetails"),
    type = "structure",
    members = {
        Description = schema.new({
            id = id.from(_N, "AccessDetails", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.Amendment = schema.new({
    id = id.from(_N, "Amendment"),
    type = "structure",
    members = {
        FieldPath = schema.new({
            id = id.from(_N, "Amendment", "FieldPath"),
            type = "string",
            name = "FieldPath",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NewValue = schema.new({
            id = id.from(_N, "Amendment", "NewValue"),
            type = "string",
            name = "NewValue",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AmendBenefitApplicationInput = schema.new({
    id = id.from(_N, "AmendBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "AmendBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "AmendBenefitApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "AmendBenefitApplicationInput", "Revision"),
            type = "string",
            name = "Revision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "AmendBenefitApplicationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AmendmentReason = schema.new({
            id = id.from(_N, "AmendBenefitApplicationInput", "AmendmentReason"),
            type = "string",
            name = "AmendmentReason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Amendments = schema.new({
            id = id.from(_N, "AmendBenefitApplicationInput", "Amendments"),
            type = "list",
            name = "Amendments",
            target_id = prelude.Document.id,
            list_member = M.Amendment,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AmendBenefitApplicationOutput = schema.new({
    id = id.from(_N, "AmendBenefitApplicationOutput"),
    type = "structure",
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
    },
})

M.ValidationExceptionField = schema.new({
    id = id.from(_N, "ValidationExceptionField"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Code = schema.new({
            id = id.from(_N, "ValidationExceptionField", "Code"),
            type = "string",
            name = "Code",
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
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FieldList = schema.new({
            id = id.from(_N, "ValidationException", "FieldList"),
            type = "list",
            name = "FieldList",
            target_id = prelude.Document.id,
            list_member = M.ValidationExceptionField,
        }),
    },
})

M.AssociateBenefitApplicationResourceInput = schema.new({
    id = id.from(_N, "AssociateBenefitApplicationResourceInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "AssociateBenefitApplicationResourceInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BenefitApplicationIdentifier = schema.new({
            id = id.from(_N, "AssociateBenefitApplicationResourceInput", "BenefitApplicationIdentifier"),
            type = "string",
            name = "BenefitApplicationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "AssociateBenefitApplicationResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AssociateBenefitApplicationResourceOutput = schema.new({
    id = id.from(_N, "AssociateBenefitApplicationResourceOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "AssociateBenefitApplicationResourceOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "AssociateBenefitApplicationResourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Revision = schema.new({
            id = id.from(_N, "AssociateBenefitApplicationResourceOutput", "Revision"),
            type = "string",
            name = "Revision",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociatedResource = schema.new({
    id = id.from(_N, "AssociatedResource"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "AssociatedResource", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceIdentifier = schema.new({
            id = id.from(_N, "AssociatedResource", "ResourceIdentifier"),
            type = "string",
            name = "ResourceIdentifier",
            target_id = prelude.String.id,
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "AssociatedResource", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
        }),
    },
})

M.BenefitAllocationSummary = schema.new({
    id = id.from(_N, "BenefitAllocationSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Catalog = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        BenefitId = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "BenefitId"),
            type = "string",
            name = "BenefitId",
            target_id = prelude.String.id,
        }),
        BenefitApplicationId = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "BenefitApplicationId"),
            type = "string",
            name = "BenefitApplicationId",
            target_id = prelude.String.id,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ExpiresAt = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "ExpiresAt"),
            type = "timestamp",
            name = "ExpiresAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ApplicableBenefitIds = schema.new({
            id = id.from(_N, "BenefitAllocationSummary", "ApplicableBenefitIds"),
            type = "list",
            name = "ApplicableBenefitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BenefitApplicationSummary = schema.new({
    id = id.from(_N, "BenefitApplicationSummary"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        BenefitId = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "BenefitId"),
            type = "string",
            name = "BenefitId",
            target_id = prelude.String.id,
        }),
        Programs = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Programs"),
            type = "list",
            name = "Programs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Stage = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        BenefitApplicationDetails = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "BenefitApplicationDetails"),
            type = "map",
            name = "BenefitApplicationDetails",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        AssociatedResources = schema.new({
            id = id.from(_N, "BenefitApplicationSummary", "AssociatedResources"),
            type = "list",
            name = "AssociatedResources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
    },
})

M.BenefitSummary = schema.new({
    id = id.from(_N, "BenefitSummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "BenefitSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Catalog = schema.new({
            id = id.from(_N, "BenefitSummary", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "BenefitSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "BenefitSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "BenefitSummary", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Programs = schema.new({
            id = id.from(_N, "BenefitSummary", "Programs"),
            type = "list",
            name = "Programs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "BenefitSummary", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "BenefitSummary", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelBenefitApplicationInput = schema.new({
    id = id.from(_N, "CancelBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "CancelBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CancelBenefitApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "CancelBenefitApplicationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "CancelBenefitApplicationInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
        }),
    },
})

M.CancelBenefitApplicationOutput = schema.new({
    id = id.from(_N, "CancelBenefitApplicationOutput"),
    type = "structure",
})

M.MonetaryValue = schema.new({
    id = id.from(_N, "MonetaryValue"),
    type = "structure",
    members = {
        Amount = schema.new({
            id = id.from(_N, "MonetaryValue", "Amount"),
            type = "string",
            name = "Amount",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CurrencyCode = schema.new({
            id = id.from(_N, "MonetaryValue", "CurrencyCode"),
            type = "string",
            name = "CurrencyCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IssuanceDetail = schema.new({
    id = id.from(_N, "IssuanceDetail"),
    type = "structure",
    members = {
        IssuanceId = schema.new({
            id = id.from(_N, "IssuanceDetail", "IssuanceId"),
            type = "string",
            name = "IssuanceId",
            target_id = prelude.String.id,
        }),
        IssuanceAmount = schema.new({
            id = id.from(_N, "IssuanceDetail", "IssuanceAmount"),
            type = "structure",
            name = "IssuanceAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
        }),
        IssuedAt = schema.new({
            id = id.from(_N, "IssuanceDetail", "IssuedAt"),
            type = "timestamp",
            name = "IssuedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.ConsumableDetails = schema.new({
    id = id.from(_N, "ConsumableDetails"),
    type = "structure",
    members = {
        AllocatedAmount = schema.new({
            id = id.from(_N, "ConsumableDetails", "AllocatedAmount"),
            type = "structure",
            name = "AllocatedAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
        }),
        RemainingAmount = schema.new({
            id = id.from(_N, "ConsumableDetails", "RemainingAmount"),
            type = "structure",
            name = "RemainingAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
        }),
        UtilizedAmount = schema.new({
            id = id.from(_N, "ConsumableDetails", "UtilizedAmount"),
            type = "structure",
            name = "UtilizedAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
        }),
        IssuanceDetails = schema.new({
            id = id.from(_N, "ConsumableDetails", "IssuanceDetails"),
            type = "structure",
            name = "IssuanceDetails",
            target_id = id.from(_N, "IssuanceDetail"),
            target = M.IssuanceDetail,
        }),
    },
})

M.Contact = schema.new({
    id = id.from(_N, "Contact"),
    type = "structure",
    members = {
        Email = schema.new({
            id = id.from(_N, "Contact", "Email"),
            type = "string",
            name = "Email",
            target_id = prelude.String.id,
        }),
        FirstName = schema.new({
            id = id.from(_N, "Contact", "FirstName"),
            type = "string",
            name = "FirstName",
            target_id = prelude.String.id,
        }),
        LastName = schema.new({
            id = id.from(_N, "Contact", "LastName"),
            type = "string",
            name = "LastName",
            target_id = prelude.String.id,
        }),
        BusinessTitle = schema.new({
            id = id.from(_N, "Contact", "BusinessTitle"),
            type = "string",
            name = "BusinessTitle",
            target_id = prelude.String.id,
        }),
        Phone = schema.new({
            id = id.from(_N, "Contact", "Phone"),
            type = "string",
            name = "Phone",
            target_id = prelude.String.id,
        }),
    },
})

M.FileInput = schema.new({
    id = id.from(_N, "FileInput"),
    type = "structure",
    members = {
        FileURI = schema.new({
            id = id.from(_N, "FileInput", "FileURI"),
            type = "string",
            name = "FileURI",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BusinessUseCase = schema.new({
            id = id.from(_N, "FileInput", "BusinessUseCase"),
            type = "string",
            name = "BusinessUseCase",
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

M.CreateBenefitApplicationInput = schema.new({
    id = id.from(_N, "CreateBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        BenefitIdentifier = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "BenefitIdentifier"),
            type = "string",
            name = "BenefitIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BenefitApplicationDetails = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "BenefitApplicationDetails"),
            type = "document",
            name = "BenefitApplicationDetails",
            target_id = prelude.Document.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
        AssociatedResources = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "AssociatedResources"),
            type = "list",
            name = "AssociatedResources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PartnerContacts = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "PartnerContacts"),
            type = "list",
            name = "PartnerContacts",
            target_id = prelude.Document.id,
            list_member = M.Contact,
        }),
        FileDetails = schema.new({
            id = id.from(_N, "CreateBenefitApplicationInput", "FileDetails"),
            type = "list",
            name = "FileDetails",
            target_id = prelude.Document.id,
            list_member = M.FileInput,
        }),
    },
})

M.CreateBenefitApplicationOutput = schema.new({
    id = id.from(_N, "CreateBenefitApplicationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateBenefitApplicationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "CreateBenefitApplicationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Revision = schema.new({
            id = id.from(_N, "CreateBenefitApplicationOutput", "Revision"),
            type = "string",
            name = "Revision",
            target_id = prelude.String.id,
        }),
    },
})

M.CreditCode = schema.new({
    id = id.from(_N, "CreditCode"),
    type = "structure",
    members = {
        AwsAccountId = schema.new({
            id = id.from(_N, "CreditCode", "AwsAccountId"),
            type = "string",
            name = "AwsAccountId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "CreditCode", "Value"),
            type = "structure",
            name = "Value",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsCreditCode = schema.new({
            id = id.from(_N, "CreditCode", "AwsCreditCode"),
            type = "string",
            name = "AwsCreditCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreditCode", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IssuedAt = schema.new({
            id = id.from(_N, "CreditCode", "IssuedAt"),
            type = "timestamp",
            name = "IssuedAt",
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
            id = id.from(_N, "CreditCode", "ExpiresAt"),
            type = "timestamp",
            name = "ExpiresAt",
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

M.CreditDetails = schema.new({
    id = id.from(_N, "CreditDetails"),
    type = "structure",
    members = {
        AllocatedAmount = schema.new({
            id = id.from(_N, "CreditDetails", "AllocatedAmount"),
            type = "structure",
            name = "AllocatedAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IssuedAmount = schema.new({
            id = id.from(_N, "CreditDetails", "IssuedAmount"),
            type = "structure",
            name = "IssuedAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Codes = schema.new({
            id = id.from(_N, "CreditDetails", "Codes"),
            type = "list",
            name = "Codes",
            target_id = prelude.Document.id,
            list_member = M.CreditCode,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateBenefitApplicationResourceInput = schema.new({
    id = id.from(_N, "DisassociateBenefitApplicationResourceInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "DisassociateBenefitApplicationResourceInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BenefitApplicationIdentifier = schema.new({
            id = id.from(_N, "DisassociateBenefitApplicationResourceInput", "BenefitApplicationIdentifier"),
            type = "string",
            name = "BenefitApplicationIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceArn = schema.new({
            id = id.from(_N, "DisassociateBenefitApplicationResourceInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DisassociateBenefitApplicationResourceOutput = schema.new({
    id = id.from(_N, "DisassociateBenefitApplicationResourceOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DisassociateBenefitApplicationResourceOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "DisassociateBenefitApplicationResourceOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Revision = schema.new({
            id = id.from(_N, "DisassociateBenefitApplicationResourceOutput", "Revision"),
            type = "string",
            name = "Revision",
            target_id = prelude.String.id,
        }),
    },
})

M.DisbursementDetails = schema.new({
    id = id.from(_N, "DisbursementDetails"),
    type = "structure",
    members = {
        DisbursedAmount = schema.new({
            id = id.from(_N, "DisbursementDetails", "DisbursedAmount"),
            type = "structure",
            name = "DisbursedAmount",
            target_id = id.from(_N, "MonetaryValue"),
            target = M.MonetaryValue,
        }),
        IssuanceDetails = schema.new({
            id = id.from(_N, "DisbursementDetails", "IssuanceDetails"),
            type = "structure",
            name = "IssuanceDetails",
            target_id = id.from(_N, "IssuanceDetail"),
            target = M.IssuanceDetail,
        }),
    },
})

M.FileDetail = schema.new({
    id = id.from(_N, "FileDetail"),
    type = "structure",
    members = {
        FileURI = schema.new({
            id = id.from(_N, "FileDetail", "FileURI"),
            type = "string",
            name = "FileURI",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BusinessUseCase = schema.new({
            id = id.from(_N, "FileDetail", "BusinessUseCase"),
            type = "string",
            name = "BusinessUseCase",
            target_id = prelude.String.id,
        }),
        FileName = schema.new({
            id = id.from(_N, "FileDetail", "FileName"),
            type = "string",
            name = "FileName",
            target_id = prelude.String.id,
        }),
        FileStatus = schema.new({
            id = id.from(_N, "FileDetail", "FileStatus"),
            type = "string",
            name = "FileStatus",
            target_id = prelude.String.id,
        }),
        FileStatusReason = schema.new({
            id = id.from(_N, "FileDetail", "FileStatusReason"),
            type = "string",
            name = "FileStatusReason",
            target_id = prelude.String.id,
        }),
        FileType = schema.new({
            id = id.from(_N, "FileDetail", "FileType"),
            type = "string",
            name = "FileType",
            target_id = prelude.String.id,
        }),
        CreatedBy = schema.new({
            id = id.from(_N, "FileDetail", "CreatedBy"),
            type = "string",
            name = "CreatedBy",
            target_id = prelude.String.id,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "FileDetail", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.FulfillmentDetails = schema.new({
    id = id.from(_N, "FulfillmentDetails"),
    type = "union",
    members = {
        DisbursementDetails = schema.new({
            id = id.from(_N, "FulfillmentDetails", "DisbursementDetails"),
            type = "structure",
            name = "DisbursementDetails",
            target_id = id.from(_N, "DisbursementDetails"),
            target = M.DisbursementDetails,
        }),
        ConsumableDetails = schema.new({
            id = id.from(_N, "FulfillmentDetails", "ConsumableDetails"),
            type = "structure",
            name = "ConsumableDetails",
            target_id = id.from(_N, "ConsumableDetails"),
            target = M.ConsumableDetails,
        }),
        CreditDetails = schema.new({
            id = id.from(_N, "FulfillmentDetails", "CreditDetails"),
            type = "structure",
            name = "CreditDetails",
            target_id = id.from(_N, "CreditDetails"),
            target = M.CreditDetails,
        }),
        AccessDetails = schema.new({
            id = id.from(_N, "FulfillmentDetails", "AccessDetails"),
            type = "structure",
            name = "AccessDetails",
            target_id = id.from(_N, "AccessDetails"),
            target = M.AccessDetails,
        }),
    },
})

M.GetBenefitInput = schema.new({
    id = id.from(_N, "GetBenefitInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "GetBenefitInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "GetBenefitInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBenefitOutput = schema.new({
    id = id.from(_N, "GetBenefitOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Catalog = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Programs = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Programs"),
            type = "list",
            name = "Programs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "GetBenefitOutput", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BenefitRequestSchema = schema.new({
            id = id.from(_N, "GetBenefitOutput", "BenefitRequestSchema"),
            type = "document",
            name = "BenefitRequestSchema",
            target_id = prelude.Document.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetBenefitOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
    },
})

M.GetBenefitAllocationInput = schema.new({
    id = id.from(_N, "GetBenefitAllocationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "GetBenefitAllocationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "GetBenefitAllocationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBenefitAllocationOutput = schema.new({
    id = id.from(_N, "GetBenefitAllocationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Catalog = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        BenefitApplicationId = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "BenefitApplicationId"),
            type = "string",
            name = "BenefitApplicationId",
            target_id = prelude.String.id,
        }),
        BenefitId = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "BenefitId"),
            type = "string",
            name = "BenefitId",
            target_id = prelude.String.id,
        }),
        FulfillmentType = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "FulfillmentType"),
            type = "string",
            name = "FulfillmentType",
            target_id = prelude.String.id,
        }),
        ApplicableBenefitIds = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "ApplicableBenefitIds"),
            type = "list",
            name = "ApplicableBenefitIds",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FulfillmentDetail = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "FulfillmentDetail"),
            type = "union",
            name = "FulfillmentDetail",
            target_id = id.from(_N, "FulfillmentDetails"),
            target = M.FulfillmentDetails,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        StartsAt = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "StartsAt"),
            type = "timestamp",
            name = "StartsAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        ExpiresAt = schema.new({
            id = id.from(_N, "GetBenefitAllocationOutput", "ExpiresAt"),
            type = "timestamp",
            name = "ExpiresAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
    },
})

M.GetBenefitApplicationInput = schema.new({
    id = id.from(_N, "GetBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "GetBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "GetBenefitApplicationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetBenefitApplicationOutput = schema.new({
    id = id.from(_N, "GetBenefitApplicationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Catalog = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
        }),
        BenefitId = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "BenefitId"),
            type = "string",
            name = "BenefitId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BenefitApplicationDetails = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "BenefitApplicationDetails"),
            type = "document",
            name = "BenefitApplicationDetails",
            target_id = prelude.Document.id,
        }),
        Programs = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Programs"),
            type = "list",
            name = "Programs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Stage = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Stage"),
            type = "string",
            name = "Stage",
            target_id = prelude.String.id,
        }),
        StatusReason = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "StatusReason"),
            type = "string",
            name = "StatusReason",
            target_id = prelude.String.id,
        }),
        StatusReasonCode = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "StatusReasonCode"),
            type = "string",
            name = "StatusReasonCode",
            target_id = prelude.String.id,
        }),
        StatusReasonCodes = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "StatusReasonCodes"),
            type = "list",
            name = "StatusReasonCodes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        CreatedAt = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "CreatedAt"),
            type = "timestamp",
            name = "CreatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        UpdatedAt = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "UpdatedAt"),
            type = "timestamp",
            name = "UpdatedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.TIMESTAMP_FORMAT] = { format = "date-time" },
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "Revision"),
            type = "string",
            name = "Revision",
            target_id = prelude.String.id,
        }),
        AssociatedResources = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "AssociatedResources"),
            type = "list",
            name = "AssociatedResources",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        PartnerContacts = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "PartnerContacts"),
            type = "list",
            name = "PartnerContacts",
            target_id = prelude.Document.id,
            list_member = M.Contact,
        }),
        FileDetails = schema.new({
            id = id.from(_N, "GetBenefitApplicationOutput", "FileDetails"),
            type = "list",
            name = "FileDetails",
            target_id = prelude.Document.id,
            list_member = M.FileDetail,
        }),
    },
})

M.ListBenefitAllocationsInput = schema.new({
    id = id.from(_N, "ListBenefitAllocationsInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BenefitIdentifiers = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "BenefitIdentifiers"),
            type = "list",
            name = "BenefitIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BenefitApplicationIdentifiers = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "BenefitApplicationIdentifiers"),
            type = "list",
            name = "BenefitApplicationIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "Status"),
            type = "list",
            name = "Status",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBenefitAllocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBenefitAllocationsOutput = schema.new({
    id = id.from(_N, "ListBenefitAllocationsOutput"),
    type = "structure",
    members = {
        BenefitAllocationSummaries = schema.new({
            id = id.from(_N, "ListBenefitAllocationsOutput", "BenefitAllocationSummaries"),
            type = "list",
            name = "BenefitAllocationSummaries",
            target_id = prelude.Document.id,
            list_member = M.BenefitAllocationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBenefitAllocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBenefitApplicationsInput = schema.new({
    id = id.from(_N, "ListBenefitApplicationsInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Programs = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "Programs"),
            type = "list",
            name = "Programs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        BenefitIdentifiers = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "BenefitIdentifiers"),
            type = "list",
            name = "BenefitIdentifiers",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "Status"),
            type = "list",
            name = "Status",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Stages = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "Stages"),
            type = "list",
            name = "Stages",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        AssociatedResources = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "AssociatedResources"),
            type = "list",
            name = "AssociatedResources",
            target_id = prelude.Document.id,
            list_member = M.AssociatedResource,
        }),
        AssociatedResourceArns = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "AssociatedResourceArns"),
            type = "list",
            name = "AssociatedResourceArns",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBenefitApplicationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBenefitApplicationsOutput = schema.new({
    id = id.from(_N, "ListBenefitApplicationsOutput"),
    type = "structure",
    members = {
        BenefitApplicationSummaries = schema.new({
            id = id.from(_N, "ListBenefitApplicationsOutput", "BenefitApplicationSummaries"),
            type = "list",
            name = "BenefitApplicationSummaries",
            target_id = prelude.Document.id,
            list_member = M.BenefitApplicationSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBenefitApplicationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBenefitsInput = schema.new({
    id = id.from(_N, "ListBenefitsInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "ListBenefitsInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Programs = schema.new({
            id = id.from(_N, "ListBenefitsInput", "Programs"),
            type = "list",
            name = "Programs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        FulfillmentTypes = schema.new({
            id = id.from(_N, "ListBenefitsInput", "FulfillmentTypes"),
            type = "list",
            name = "FulfillmentTypes",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        Status = schema.new({
            id = id.from(_N, "ListBenefitsInput", "Status"),
            type = "list",
            name = "Status",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListBenefitsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBenefitsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListBenefitsOutput = schema.new({
    id = id.from(_N, "ListBenefitsOutput"),
    type = "structure",
    members = {
        BenefitSummaries = schema.new({
            id = id.from(_N, "ListBenefitsOutput", "BenefitSummaries"),
            type = "list",
            name = "BenefitSummaries",
            target_id = prelude.Document.id,
            list_member = M.BenefitSummary,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListBenefitsOutput", "NextToken"),
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
        resourceArn = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
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
        tags = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "tags"),
            type = "list",
            name = "tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.RecallBenefitApplicationInput = schema.new({
    id = id.from(_N, "RecallBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "RecallBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "RecallBenefitApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
        }),
        Identifier = schema.new({
            id = id.from(_N, "RecallBenefitApplicationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Reason = schema.new({
            id = id.from(_N, "RecallBenefitApplicationInput", "Reason"),
            type = "string",
            name = "Reason",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RecallBenefitApplicationOutput = schema.new({
    id = id.from(_N, "RecallBenefitApplicationOutput"),
    type = "structure",
})

M.SubmitBenefitApplicationInput = schema.new({
    id = id.from(_N, "SubmitBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "SubmitBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Identifier = schema.new({
            id = id.from(_N, "SubmitBenefitApplicationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SubmitBenefitApplicationOutput = schema.new({
    id = id.from(_N, "SubmitBenefitApplicationOutput"),
    type = "structure",
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
            },
        }),
        tags = schema.new({
            id = id.from(_N, "TagResourceInput", "tags"),
            type = "list",
            name = "tags",
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
        resourceArn = schema.new({
            id = id.from(_N, "UntagResourceInput", "resourceArn"),
            type = "string",
            name = "resourceArn",
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
    id = id.from(_N, "UntagResourceResponse"),
    type = "structure",
})

M.UpdateBenefitApplicationInput = schema.new({
    id = id.from(_N, "UpdateBenefitApplicationInput"),
    type = "structure",
    members = {
        Catalog = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "Catalog"),
            type = "string",
            name = "Catalog",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ClientToken = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "ClientToken"),
            type = "string",
            name = "ClientToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
        Identifier = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "Identifier"),
            type = "string",
            name = "Identifier",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Revision = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "Revision"),
            type = "string",
            name = "Revision",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        BenefitApplicationDetails = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "BenefitApplicationDetails"),
            type = "document",
            name = "BenefitApplicationDetails",
            target_id = prelude.Document.id,
        }),
        PartnerContacts = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "PartnerContacts"),
            type = "list",
            name = "PartnerContacts",
            target_id = prelude.Document.id,
            list_member = M.Contact,
        }),
        FileDetails = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationInput", "FileDetails"),
            type = "list",
            name = "FileDetails",
            target_id = prelude.Document.id,
            list_member = M.FileInput,
        }),
    },
})

M.UpdateBenefitApplicationOutput = schema.new({
    id = id.from(_N, "UpdateBenefitApplicationOutput"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Arn = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationOutput", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Revision = schema.new({
            id = id.from(_N, "UpdateBenefitApplicationOutput", "Revision"),
            type = "string",
            name = "Revision",
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
