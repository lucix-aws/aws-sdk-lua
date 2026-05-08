

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.billingconductor"

local M = {}

M.GroupByAttributesList = schema.new({ type = "list", list_member = prelude.String })

M.BillingGroupCostReportResultsList = schema.new({ type = "list", list_member = M.BillingGroupCostReportResultElement })

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.AccountAssociationsList = schema.new({ type = "list", list_member = M.AccountAssociationsListElement })

M.BillingGroupCostReportList = schema.new({ type = "list", list_member = M.BillingGroupCostReportElement })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.BillingGroupList = schema.new({ type = "list", list_member = M.BillingGroupListElement })

M.AccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.CustomLineItemList = schema.new({ type = "list", list_member = M.CustomLineItemListElement })

M.CustomLineItemBatchAssociationsList = schema.new({ type = "list", list_member = prelude.String })

M.AssociateResourcesResponseList = schema.new({ type = "list", list_member = M.AssociateResourceResponseElement })

M.CustomLineItemBatchDisassociationsList = schema.new({ type = "list", list_member = prelude.String })

M.DisassociateResourcesResponseList = schema.new({ type = "list", list_member = M.DisassociateResourceResponseElement })

M.CustomLineItemVersionList = schema.new({ type = "list", list_member = M.CustomLineItemVersionListElement })

M.ListResourcesAssociatedToCustomLineItemResponseList = schema.new({ type = "list", list_member = M.ListResourcesAssociatedToCustomLineItemResponseElement })

M.PricingPlanList = schema.new({ type = "list", list_member = M.PricingPlanListElement })

M.PricingRuleArnsInput = schema.new({ type = "list", list_member = prelude.String })

M.PricingRuleArnsNonEmptyInput = schema.new({ type = "list", list_member = prelude.String })

M.PricingPlanArns = schema.new({ type = "list", list_member = prelude.String })

M.PricingRuleList = schema.new({ type = "list", list_member = M.PricingRuleListElement })

M.PricingRuleArns = schema.new({ type = "list", list_member = prelude.String })

M.AccountIdFilterList = schema.new({ type = "list", list_member = prelude.String })

M.BillingGroupArnList = schema.new({ type = "list", list_member = prelude.String })

M.BillingGroupStatusList = schema.new({ type = "list", list_member = prelude.String })

M.PrimaryAccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.BillingGroupTypeList = schema.new({ type = "list", list_member = prelude.String })

M.StringSearches = schema.new({ type = "list", list_member = M.StringSearch })

M.ResponsibilityTransferArnsList = schema.new({ type = "list", list_member = prelude.String })

M.CustomLineItemNameList = schema.new({ type = "list", list_member = prelude.String })

M.CustomLineItemArns = schema.new({ type = "list", list_member = prelude.String })

M.LineItemFiltersList = schema.new({ type = "list", list_member = M.LineItemFilter })

M.AttributesList = schema.new({ type = "list", list_member = M.Attribute })

M.CustomLineItemAssociationsList = schema.new({ type = "list", list_member = prelude.String })

M.LineItemFilterValuesList = schema.new({ type = "list", list_member = prelude.String })

M.AttributeValueList = schema.new({ type = "list", list_member = prelude.String })

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

M.AccountAssociationsListElement = schema.new({
   id = id.from(_N, "AccountAssociationsListElement"),
   type = "structure",
   members = {
      AccountId = schema.new({
         id = id.from(_N, "AccountAssociationsListElement", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      BillingGroupArn = schema.new({
         id = id.from(_N, "AccountAssociationsListElement", "BillingGroupArn"),
         type = "string",
         name = "BillingGroupArn",
         target_id = prelude.String.id,
      }),
      AccountName = schema.new({
         id = id.from(_N, "AccountAssociationsListElement", "AccountName"),
         type = "string",
         name = "AccountName",
         target_id = prelude.String.id,
      }),
      AccountEmail = schema.new({
         id = id.from(_N, "AccountAssociationsListElement", "AccountEmail"),
         type = "string",
         name = "AccountEmail",
         target_id = prelude.String.id,
      }),
   },
})

M.AccountGrouping = schema.new({
   id = id.from(_N, "AccountGrouping"),
   type = "structure",
   members = {
      LinkedAccountIds = schema.new({
         id = id.from(_N, "AccountGrouping", "LinkedAccountIds"),
         type = "list",
         name = "LinkedAccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.DEFAULT] = { value = {} },
         },
      }),
      AutoAssociate = schema.new({
         id = id.from(_N, "AccountGrouping", "AutoAssociate"),
         type = "boolean",
         name = "AutoAssociate",
         target_id = prelude.Boolean.id,
      }),
      ResponsibilityTransferArn = schema.new({
         id = id.from(_N, "AccountGrouping", "ResponsibilityTransferArn"),
         type = "string",
         name = "ResponsibilityTransferArn",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateAccountsInput = schema.new({
   id = id.from(_N, "AssociateAccountsInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AssociateAccountsInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountIds = schema.new({
         id = id.from(_N, "AssociateAccountsInput", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateAccountsOutput = schema.new({
   id = id.from(_N, "AssociateAccountsOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AssociateAccountsOutput", "Arn"),
         type = "string",
         name = "Arn",
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
      Reason = schema.new({
         id = id.from(_N, "ConflictException", "Reason"),
         type = "string",
         name = "Reason",
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
      RetryAfterSeconds = schema.new({
         id = id.from(_N, "InternalServerException", "RetryAfterSeconds"),
         type = "integer",
         name = "RetryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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

M.ServiceLimitExceededException = schema.new({
   id = id.from(_N, "ServiceLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ServiceLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceId = schema.new({
         id = id.from(_N, "ServiceLimitExceededException", "ResourceId"),
         type = "string",
         name = "ResourceId",
         target_id = prelude.String.id,
      }),
      ResourceType = schema.new({
         id = id.from(_N, "ServiceLimitExceededException", "ResourceType"),
         type = "string",
         name = "ResourceType",
         target_id = prelude.String.id,
      }),
      LimitCode = schema.new({
         id = id.from(_N, "ServiceLimitExceededException", "LimitCode"),
         type = "string",
         name = "LimitCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServiceCode = schema.new({
         id = id.from(_N, "ServiceLimitExceededException", "ServiceCode"),
         type = "string",
         name = "ServiceCode",
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
      RetryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "RetryAfterSeconds"),
         type = "integer",
         name = "RetryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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
      Fields = schema.new({
         id = id.from(_N, "ValidationException", "Fields"),
         type = "list",
         name = "Fields",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
      }),
   },
})

M.AssociatePricingRulesInput = schema.new({
   id = id.from(_N, "AssociatePricingRulesInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AssociatePricingRulesInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PricingRuleArns = schema.new({
         id = id.from(_N, "AssociatePricingRulesInput", "PricingRuleArns"),
         type = "list",
         name = "PricingRuleArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociatePricingRulesOutput = schema.new({
   id = id.from(_N, "AssociatePricingRulesOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AssociatePricingRulesOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateResourceError = schema.new({
   id = id.from(_N, "AssociateResourceError"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "AssociateResourceError", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
      Reason = schema.new({
         id = id.from(_N, "AssociateResourceError", "Reason"),
         type = "string",
         name = "Reason",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateResourceResponseElement = schema.new({
   id = id.from(_N, "AssociateResourceResponseElement"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AssociateResourceResponseElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Error = schema.new({
         id = id.from(_N, "AssociateResourceResponseElement", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "AssociateResourceError"),
         target = M.AssociateResourceError,
      }),
   },
})

M.Attribute = schema.new({
   id = id.from(_N, "Attribute"),
   type = "structure",
   members = {
      Key = schema.new({
         id = id.from(_N, "Attribute", "Key"),
         type = "string",
         name = "Key",
         target_id = prelude.String.id,
      }),
      Value = schema.new({
         id = id.from(_N, "Attribute", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
      }),
   },
})

M.ComputationPreference = schema.new({
   id = id.from(_N, "ComputationPreference"),
   type = "structure",
   members = {
      PricingPlanArn = schema.new({
         id = id.from(_N, "ComputationPreference", "PricingPlanArn"),
         type = "string",
         name = "PricingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateBillingGroupInput = schema.new({
   id = id.from(_N, "CreateBillingGroupInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountGrouping = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "AccountGrouping"),
         type = "structure",
         name = "AccountGrouping",
         target_id = id.from(_N, "AccountGrouping"),
         target = M.AccountGrouping,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ComputationPreference = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "ComputationPreference"),
         type = "structure",
         name = "ComputationPreference",
         target_id = id.from(_N, "ComputationPreference"),
         target = M.ComputationPreference,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PrimaryAccountId = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "PrimaryAccountId"),
         type = "string",
         name = "PrimaryAccountId",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateBillingGroupInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateBillingGroupOutput = schema.new({
   id = id.from(_N, "CreateBillingGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateBillingGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteBillingGroupInput = schema.new({
   id = id.from(_N, "DeleteBillingGroupInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeleteBillingGroupInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteBillingGroupOutput = schema.new({
   id = id.from(_N, "DeleteBillingGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeleteBillingGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociateAccountsInput = schema.new({
   id = id.from(_N, "DisassociateAccountsInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DisassociateAccountsInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountIds = schema.new({
         id = id.from(_N, "DisassociateAccountsInput", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateAccountsOutput = schema.new({
   id = id.from(_N, "DisassociateAccountsOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DisassociateAccountsOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.StringSearch = schema.new({
   id = id.from(_N, "StringSearch"),
   type = "structure",
   members = {
      SearchOption = schema.new({
         id = id.from(_N, "StringSearch", "SearchOption"),
         type = "string",
         name = "SearchOption",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SearchValue = schema.new({
         id = id.from(_N, "StringSearch", "SearchValue"),
         type = "string",
         name = "SearchValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListBillingGroupsFilter = schema.new({
   id = id.from(_N, "ListBillingGroupsFilter"),
   type = "structure",
   members = {
      Arns = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      PricingPlan = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "PricingPlan"),
         type = "string",
         name = "PricingPlan",
         target_id = prelude.String.id,
      }),
      Statuses = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "Statuses"),
         type = "list",
         name = "Statuses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AutoAssociate = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "AutoAssociate"),
         type = "boolean",
         name = "AutoAssociate",
         target_id = prelude.Boolean.id,
      }),
      PrimaryAccountIds = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "PrimaryAccountIds"),
         type = "list",
         name = "PrimaryAccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      BillingGroupTypes = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "BillingGroupTypes"),
         type = "list",
         name = "BillingGroupTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Names = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = M.StringSearch,
      }),
      ResponsibilityTransferArns = schema.new({
         id = id.from(_N, "ListBillingGroupsFilter", "ResponsibilityTransferArns"),
         type = "list",
         name = "ResponsibilityTransferArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListBillingGroupsInput = schema.new({
   id = id.from(_N, "ListBillingGroupsInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListBillingGroupsInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListBillingGroupsFilter"),
         target = M.ListBillingGroupsFilter,
      }),
   },
})

M.ListBillingGroupAccountGrouping = schema.new({
   id = id.from(_N, "ListBillingGroupAccountGrouping"),
   type = "structure",
   members = {
      AutoAssociate = schema.new({
         id = id.from(_N, "ListBillingGroupAccountGrouping", "AutoAssociate"),
         type = "boolean",
         name = "AutoAssociate",
         target_id = prelude.Boolean.id,
      }),
      ResponsibilityTransferArn = schema.new({
         id = id.from(_N, "ListBillingGroupAccountGrouping", "ResponsibilityTransferArn"),
         type = "string",
         name = "ResponsibilityTransferArn",
         target_id = prelude.String.id,
      }),
   },
})

M.BillingGroupListElement = schema.new({
   id = id.from(_N, "BillingGroupListElement"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "BillingGroupListElement", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "BillingGroupListElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "BillingGroupListElement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      PrimaryAccountId = schema.new({
         id = id.from(_N, "BillingGroupListElement", "PrimaryAccountId"),
         type = "string",
         name = "PrimaryAccountId",
         target_id = prelude.String.id,
      }),
      ComputationPreference = schema.new({
         id = id.from(_N, "BillingGroupListElement", "ComputationPreference"),
         type = "structure",
         name = "ComputationPreference",
         target_id = id.from(_N, "ComputationPreference"),
         target = M.ComputationPreference,
      }),
      Size = schema.new({
         id = id.from(_N, "BillingGroupListElement", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "BillingGroupListElement", "CreationTime"),
         type = "long",
         name = "CreationTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "BillingGroupListElement", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "BillingGroupListElement", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "BillingGroupListElement", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      AccountGrouping = schema.new({
         id = id.from(_N, "BillingGroupListElement", "AccountGrouping"),
         type = "structure",
         name = "AccountGrouping",
         target_id = id.from(_N, "ListBillingGroupAccountGrouping"),
         target = M.ListBillingGroupAccountGrouping,
      }),
      BillingGroupType = schema.new({
         id = id.from(_N, "BillingGroupListElement", "BillingGroupType"),
         type = "string",
         name = "BillingGroupType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBillingGroupsOutput = schema.new({
   id = id.from(_N, "ListBillingGroupsOutput"),
   type = "structure",
   members = {
      BillingGroups = schema.new({
         id = id.from(_N, "ListBillingGroupsOutput", "BillingGroups"),
         type = "list",
         name = "BillingGroups",
         target_id = prelude.Document.id,
         list_member = M.BillingGroupListElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBillingGroupsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateBillingGroupAccountGrouping = schema.new({
   id = id.from(_N, "UpdateBillingGroupAccountGrouping"),
   type = "structure",
   members = {
      AutoAssociate = schema.new({
         id = id.from(_N, "UpdateBillingGroupAccountGrouping", "AutoAssociate"),
         type = "boolean",
         name = "AutoAssociate",
         target_id = prelude.Boolean.id,
      }),
      ResponsibilityTransferArn = schema.new({
         id = id.from(_N, "UpdateBillingGroupAccountGrouping", "ResponsibilityTransferArn"),
         type = "string",
         name = "ResponsibilityTransferArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateBillingGroupInput = schema.new({
   id = id.from(_N, "UpdateBillingGroupInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      ComputationPreference = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "ComputationPreference"),
         type = "structure",
         name = "ComputationPreference",
         target_id = id.from(_N, "ComputationPreference"),
         target = M.ComputationPreference,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      AccountGrouping = schema.new({
         id = id.from(_N, "UpdateBillingGroupInput", "AccountGrouping"),
         type = "structure",
         name = "AccountGrouping",
         target_id = id.from(_N, "UpdateBillingGroupAccountGrouping"),
         target = M.UpdateBillingGroupAccountGrouping,
      }),
   },
})

M.UpdateBillingGroupOutput = schema.new({
   id = id.from(_N, "UpdateBillingGroupOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      PrimaryAccountId = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "PrimaryAccountId"),
         type = "string",
         name = "PrimaryAccountId",
         target_id = prelude.String.id,
      }),
      PricingPlanArn = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "PricingPlanArn"),
         type = "string",
         name = "PricingPlanArn",
         target_id = prelude.String.id,
      }),
      Size = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      StatusReason = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "StatusReason"),
         type = "string",
         name = "StatusReason",
         target_id = prelude.String.id,
      }),
      AccountGrouping = schema.new({
         id = id.from(_N, "UpdateBillingGroupOutput", "AccountGrouping"),
         type = "structure",
         name = "AccountGrouping",
         target_id = id.from(_N, "UpdateBillingGroupAccountGrouping"),
         target = M.UpdateBillingGroupAccountGrouping,
      }),
   },
})

M.CustomLineItemBillingPeriodRange = schema.new({
   id = id.from(_N, "CustomLineItemBillingPeriodRange"),
   type = "structure",
   members = {
      InclusiveStartBillingPeriod = schema.new({
         id = id.from(_N, "CustomLineItemBillingPeriodRange", "InclusiveStartBillingPeriod"),
         type = "string",
         name = "InclusiveStartBillingPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExclusiveEndBillingPeriod = schema.new({
         id = id.from(_N, "CustomLineItemBillingPeriodRange", "ExclusiveEndBillingPeriod"),
         type = "string",
         name = "ExclusiveEndBillingPeriod",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchAssociateResourcesToCustomLineItemInput = schema.new({
   id = id.from(_N, "BatchAssociateResourcesToCustomLineItemInput"),
   type = "structure",
   members = {
      TargetArn = schema.new({
         id = id.from(_N, "BatchAssociateResourcesToCustomLineItemInput", "TargetArn"),
         type = "string",
         name = "TargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceArns = schema.new({
         id = id.from(_N, "BatchAssociateResourcesToCustomLineItemInput", "ResourceArns"),
         type = "list",
         name = "ResourceArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingPeriodRange = schema.new({
         id = id.from(_N, "BatchAssociateResourcesToCustomLineItemInput", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "CustomLineItemBillingPeriodRange"),
         target = M.CustomLineItemBillingPeriodRange,
      }),
   },
})

M.BatchAssociateResourcesToCustomLineItemOutput = schema.new({
   id = id.from(_N, "BatchAssociateResourcesToCustomLineItemOutput"),
   type = "structure",
   members = {
      SuccessfullyAssociatedResources = schema.new({
         id = id.from(_N, "BatchAssociateResourcesToCustomLineItemOutput", "SuccessfullyAssociatedResources"),
         type = "list",
         name = "SuccessfullyAssociatedResources",
         target_id = prelude.Document.id,
         list_member = M.AssociateResourceResponseElement,
      }),
      FailedAssociatedResources = schema.new({
         id = id.from(_N, "BatchAssociateResourcesToCustomLineItemOutput", "FailedAssociatedResources"),
         type = "list",
         name = "FailedAssociatedResources",
         target_id = prelude.Document.id,
         list_member = M.AssociateResourceResponseElement,
      }),
   },
})

M.BatchDisassociateResourcesFromCustomLineItemInput = schema.new({
   id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemInput"),
   type = "structure",
   members = {
      TargetArn = schema.new({
         id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemInput", "TargetArn"),
         type = "string",
         name = "TargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceArns = schema.new({
         id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemInput", "ResourceArns"),
         type = "list",
         name = "ResourceArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingPeriodRange = schema.new({
         id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemInput", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "CustomLineItemBillingPeriodRange"),
         target = M.CustomLineItemBillingPeriodRange,
      }),
   },
})

M.DisassociateResourceResponseElement = schema.new({
   id = id.from(_N, "DisassociateResourceResponseElement"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DisassociateResourceResponseElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Error = schema.new({
         id = id.from(_N, "DisassociateResourceResponseElement", "Error"),
         type = "structure",
         name = "Error",
         target_id = id.from(_N, "AssociateResourceError"),
         target = M.AssociateResourceError,
      }),
   },
})

M.BatchDisassociateResourcesFromCustomLineItemOutput = schema.new({
   id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemOutput"),
   type = "structure",
   members = {
      SuccessfullyDisassociatedResources = schema.new({
         id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemOutput", "SuccessfullyDisassociatedResources"),
         type = "list",
         name = "SuccessfullyDisassociatedResources",
         target_id = prelude.Document.id,
         list_member = M.DisassociateResourceResponseElement,
      }),
      FailedDisassociatedResources = schema.new({
         id = id.from(_N, "BatchDisassociateResourcesFromCustomLineItemOutput", "FailedDisassociatedResources"),
         type = "list",
         name = "FailedDisassociatedResources",
         target_id = prelude.Document.id,
         list_member = M.DisassociateResourceResponseElement,
      }),
   },
})

M.CustomLineItemFlatChargeDetails = schema.new({
   id = id.from(_N, "CustomLineItemFlatChargeDetails"),
   type = "structure",
   members = {
      ChargeValue = schema.new({
         id = id.from(_N, "CustomLineItemFlatChargeDetails", "ChargeValue"),
         type = "double",
         name = "ChargeValue",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LineItemFilter = schema.new({
   id = id.from(_N, "LineItemFilter"),
   type = "structure",
   members = {
      Attribute = schema.new({
         id = id.from(_N, "LineItemFilter", "Attribute"),
         type = "string",
         name = "Attribute",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MatchOption = schema.new({
         id = id.from(_N, "LineItemFilter", "MatchOption"),
         type = "string",
         name = "MatchOption",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "LineItemFilter", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.DEFAULT] = { value = {} },
         },
      }),
      AttributeValues = schema.new({
         id = id.from(_N, "LineItemFilter", "AttributeValues"),
         type = "list",
         name = "AttributeValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CustomLineItemPercentageChargeDetails = schema.new({
   id = id.from(_N, "CustomLineItemPercentageChargeDetails"),
   type = "structure",
   members = {
      PercentageValue = schema.new({
         id = id.from(_N, "CustomLineItemPercentageChargeDetails", "PercentageValue"),
         type = "double",
         name = "PercentageValue",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AssociatedValues = schema.new({
         id = id.from(_N, "CustomLineItemPercentageChargeDetails", "AssociatedValues"),
         type = "list",
         name = "AssociatedValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.CustomLineItemChargeDetails = schema.new({
   id = id.from(_N, "CustomLineItemChargeDetails"),
   type = "structure",
   members = {
      Flat = schema.new({
         id = id.from(_N, "CustomLineItemChargeDetails", "Flat"),
         type = "structure",
         name = "Flat",
         target_id = id.from(_N, "CustomLineItemFlatChargeDetails"),
         target = M.CustomLineItemFlatChargeDetails,
      }),
      Percentage = schema.new({
         id = id.from(_N, "CustomLineItemChargeDetails", "Percentage"),
         type = "structure",
         name = "Percentage",
         target_id = id.from(_N, "CustomLineItemPercentageChargeDetails"),
         target = M.CustomLineItemPercentageChargeDetails,
      }),
      Type = schema.new({
         id = id.from(_N, "CustomLineItemChargeDetails", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LineItemFilters = schema.new({
         id = id.from(_N, "CustomLineItemChargeDetails", "LineItemFilters"),
         type = "list",
         name = "LineItemFilters",
         target_id = prelude.Document.id,
         list_member = M.LineItemFilter,
      }),
   },
})

M.PresentationObject = schema.new({
   id = id.from(_N, "PresentationObject"),
   type = "structure",
   members = {
      Service = schema.new({
         id = id.from(_N, "PresentationObject", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateCustomLineItemInput = schema.new({
   id = id.from(_N, "CreateCustomLineItemInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingGroupArn = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "BillingGroupArn"),
         type = "string",
         name = "BillingGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingPeriodRange = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "CustomLineItemBillingPeriodRange"),
         target = M.CustomLineItemBillingPeriodRange,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ChargeDetails = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "ChargeDetails"),
         type = "structure",
         name = "ChargeDetails",
         target_id = id.from(_N, "CustomLineItemChargeDetails"),
         target = M.CustomLineItemChargeDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountId = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      ComputationRule = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "ComputationRule"),
         type = "string",
         name = "ComputationRule",
         target_id = prelude.String.id,
      }),
      PresentationDetails = schema.new({
         id = id.from(_N, "CreateCustomLineItemInput", "PresentationDetails"),
         type = "structure",
         name = "PresentationDetails",
         target_id = id.from(_N, "PresentationObject"),
         target = M.PresentationObject,
      }),
   },
})

M.CreateCustomLineItemOutput = schema.new({
   id = id.from(_N, "CreateCustomLineItemOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreateCustomLineItemOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteCustomLineItemInput = schema.new({
   id = id.from(_N, "DeleteCustomLineItemInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeleteCustomLineItemInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingPeriodRange = schema.new({
         id = id.from(_N, "DeleteCustomLineItemInput", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "CustomLineItemBillingPeriodRange"),
         target = M.CustomLineItemBillingPeriodRange,
      }),
   },
})

M.DeleteCustomLineItemOutput = schema.new({
   id = id.from(_N, "DeleteCustomLineItemOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeleteCustomLineItemOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomLineItemsFilter = schema.new({
   id = id.from(_N, "ListCustomLineItemsFilter"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "ListCustomLineItemsFilter", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      BillingGroups = schema.new({
         id = id.from(_N, "ListCustomLineItemsFilter", "BillingGroups"),
         type = "list",
         name = "BillingGroups",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Arns = schema.new({
         id = id.from(_N, "ListCustomLineItemsFilter", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      AccountIds = schema.new({
         id = id.from(_N, "ListCustomLineItemsFilter", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListCustomLineItemsInput = schema.new({
   id = id.from(_N, "ListCustomLineItemsInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListCustomLineItemsInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomLineItemsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomLineItemsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListCustomLineItemsInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListCustomLineItemsFilter"),
         target = M.ListCustomLineItemsFilter,
      }),
   },
})

M.ListCustomLineItemFlatChargeDetails = schema.new({
   id = id.from(_N, "ListCustomLineItemFlatChargeDetails"),
   type = "structure",
   members = {
      ChargeValue = schema.new({
         id = id.from(_N, "ListCustomLineItemFlatChargeDetails", "ChargeValue"),
         type = "double",
         name = "ChargeValue",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListCustomLineItemPercentageChargeDetails = schema.new({
   id = id.from(_N, "ListCustomLineItemPercentageChargeDetails"),
   type = "structure",
   members = {
      PercentageValue = schema.new({
         id = id.from(_N, "ListCustomLineItemPercentageChargeDetails", "PercentageValue"),
         type = "double",
         name = "PercentageValue",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListCustomLineItemChargeDetails = schema.new({
   id = id.from(_N, "ListCustomLineItemChargeDetails"),
   type = "structure",
   members = {
      Flat = schema.new({
         id = id.from(_N, "ListCustomLineItemChargeDetails", "Flat"),
         type = "structure",
         name = "Flat",
         target_id = id.from(_N, "ListCustomLineItemFlatChargeDetails"),
         target = M.ListCustomLineItemFlatChargeDetails,
      }),
      Percentage = schema.new({
         id = id.from(_N, "ListCustomLineItemChargeDetails", "Percentage"),
         type = "structure",
         name = "Percentage",
         target_id = id.from(_N, "ListCustomLineItemPercentageChargeDetails"),
         target = M.ListCustomLineItemPercentageChargeDetails,
      }),
      Type = schema.new({
         id = id.from(_N, "ListCustomLineItemChargeDetails", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LineItemFilters = schema.new({
         id = id.from(_N, "ListCustomLineItemChargeDetails", "LineItemFilters"),
         type = "list",
         name = "LineItemFilters",
         target_id = prelude.Document.id,
         list_member = M.LineItemFilter,
      }),
   },
})

M.CustomLineItemListElement = schema.new({
   id = id.from(_N, "CustomLineItemListElement"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ChargeDetails = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "ChargeDetails"),
         type = "structure",
         name = "ChargeDetails",
         target_id = id.from(_N, "ListCustomLineItemChargeDetails"),
         target = M.ListCustomLineItemChargeDetails,
      }),
      CurrencyCode = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "CurrencyCode"),
         type = "string",
         name = "CurrencyCode",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ProductCode = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "ProductCode"),
         type = "string",
         name = "ProductCode",
         target_id = prelude.String.id,
      }),
      BillingGroupArn = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "BillingGroupArn"),
         type = "string",
         name = "BillingGroupArn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "CreationTime"),
         type = "long",
         name = "CreationTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AssociationSize = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "AssociationSize"),
         type = "long",
         name = "AssociationSize",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AccountId = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      ComputationRule = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "ComputationRule"),
         type = "string",
         name = "ComputationRule",
         target_id = prelude.String.id,
      }),
      PresentationDetails = schema.new({
         id = id.from(_N, "CustomLineItemListElement", "PresentationDetails"),
         type = "structure",
         name = "PresentationDetails",
         target_id = id.from(_N, "PresentationObject"),
         target = M.PresentationObject,
      }),
   },
})

M.ListCustomLineItemsOutput = schema.new({
   id = id.from(_N, "ListCustomLineItemsOutput"),
   type = "structure",
   members = {
      CustomLineItems = schema.new({
         id = id.from(_N, "ListCustomLineItemsOutput", "CustomLineItems"),
         type = "list",
         name = "CustomLineItems",
         target_id = prelude.Document.id,
         list_member = M.CustomLineItemListElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomLineItemsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomLineItemVersionsBillingPeriodRangeFilter = schema.new({
   id = id.from(_N, "ListCustomLineItemVersionsBillingPeriodRangeFilter"),
   type = "structure",
   members = {
      StartBillingPeriod = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsBillingPeriodRangeFilter", "StartBillingPeriod"),
         type = "string",
         name = "StartBillingPeriod",
         target_id = prelude.String.id,
      }),
      EndBillingPeriod = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsBillingPeriodRangeFilter", "EndBillingPeriod"),
         type = "string",
         name = "EndBillingPeriod",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCustomLineItemVersionsFilter = schema.new({
   id = id.from(_N, "ListCustomLineItemVersionsFilter"),
   type = "structure",
   members = {
      BillingPeriodRange = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsFilter", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "ListCustomLineItemVersionsBillingPeriodRangeFilter"),
         target = M.ListCustomLineItemVersionsBillingPeriodRangeFilter,
      }),
   },
})

M.ListCustomLineItemVersionsInput = schema.new({
   id = id.from(_N, "ListCustomLineItemVersionsInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListCustomLineItemVersionsFilter"),
         target = M.ListCustomLineItemVersionsFilter,
      }),
   },
})

M.CustomLineItemVersionListElement = schema.new({
   id = id.from(_N, "CustomLineItemVersionListElement"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      ChargeDetails = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "ChargeDetails"),
         type = "structure",
         name = "ChargeDetails",
         target_id = id.from(_N, "ListCustomLineItemChargeDetails"),
         target = M.ListCustomLineItemChargeDetails,
      }),
      CurrencyCode = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "CurrencyCode"),
         type = "string",
         name = "CurrencyCode",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ProductCode = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "ProductCode"),
         type = "string",
         name = "ProductCode",
         target_id = prelude.String.id,
      }),
      BillingGroupArn = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "BillingGroupArn"),
         type = "string",
         name = "BillingGroupArn",
         target_id = prelude.String.id,
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "CreationTime"),
         type = "long",
         name = "CreationTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AssociationSize = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "AssociationSize"),
         type = "long",
         name = "AssociationSize",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      StartBillingPeriod = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "StartBillingPeriod"),
         type = "string",
         name = "StartBillingPeriod",
         target_id = prelude.String.id,
      }),
      EndBillingPeriod = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "EndBillingPeriod"),
         type = "string",
         name = "EndBillingPeriod",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "StartTime"),
         type = "long",
         name = "StartTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AccountId = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      ComputationRule = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "ComputationRule"),
         type = "string",
         name = "ComputationRule",
         target_id = prelude.String.id,
      }),
      PresentationDetails = schema.new({
         id = id.from(_N, "CustomLineItemVersionListElement", "PresentationDetails"),
         type = "structure",
         name = "PresentationDetails",
         target_id = id.from(_N, "PresentationObject"),
         target = M.PresentationObject,
      }),
   },
})

M.ListCustomLineItemVersionsOutput = schema.new({
   id = id.from(_N, "ListCustomLineItemVersionsOutput"),
   type = "structure",
   members = {
      CustomLineItemVersions = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsOutput", "CustomLineItemVersions"),
         type = "list",
         name = "CustomLineItemVersions",
         target_id = prelude.Document.id,
         list_member = M.CustomLineItemVersionListElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListCustomLineItemVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourcesAssociatedToCustomLineItemFilter = schema.new({
   id = id.from(_N, "ListResourcesAssociatedToCustomLineItemFilter"),
   type = "structure",
   members = {
      Relationship = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemFilter", "Relationship"),
         type = "string",
         name = "Relationship",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourcesAssociatedToCustomLineItemInput = schema.new({
   id = id.from(_N, "ListResourcesAssociatedToCustomLineItemInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListResourcesAssociatedToCustomLineItemFilter"),
         target = M.ListResourcesAssociatedToCustomLineItemFilter,
      }),
   },
})

M.ListResourcesAssociatedToCustomLineItemResponseElement = schema.new({
   id = id.from(_N, "ListResourcesAssociatedToCustomLineItemResponseElement"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemResponseElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Relationship = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemResponseElement", "Relationship"),
         type = "string",
         name = "Relationship",
         target_id = prelude.String.id,
      }),
      EndBillingPeriod = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemResponseElement", "EndBillingPeriod"),
         type = "string",
         name = "EndBillingPeriod",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourcesAssociatedToCustomLineItemOutput = schema.new({
   id = id.from(_N, "ListResourcesAssociatedToCustomLineItemOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      AssociatedResources = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemOutput", "AssociatedResources"),
         type = "list",
         name = "AssociatedResources",
         target_id = prelude.Document.id,
         list_member = M.ListResourcesAssociatedToCustomLineItemResponseElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListResourcesAssociatedToCustomLineItemOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateCustomLineItemFlatChargeDetails = schema.new({
   id = id.from(_N, "UpdateCustomLineItemFlatChargeDetails"),
   type = "structure",
   members = {
      ChargeValue = schema.new({
         id = id.from(_N, "UpdateCustomLineItemFlatChargeDetails", "ChargeValue"),
         type = "double",
         name = "ChargeValue",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCustomLineItemPercentageChargeDetails = schema.new({
   id = id.from(_N, "UpdateCustomLineItemPercentageChargeDetails"),
   type = "structure",
   members = {
      PercentageValue = schema.new({
         id = id.from(_N, "UpdateCustomLineItemPercentageChargeDetails", "PercentageValue"),
         type = "double",
         name = "PercentageValue",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCustomLineItemChargeDetails = schema.new({
   id = id.from(_N, "UpdateCustomLineItemChargeDetails"),
   type = "structure",
   members = {
      Flat = schema.new({
         id = id.from(_N, "UpdateCustomLineItemChargeDetails", "Flat"),
         type = "structure",
         name = "Flat",
         target_id = id.from(_N, "UpdateCustomLineItemFlatChargeDetails"),
         target = M.UpdateCustomLineItemFlatChargeDetails,
      }),
      Percentage = schema.new({
         id = id.from(_N, "UpdateCustomLineItemChargeDetails", "Percentage"),
         type = "structure",
         name = "Percentage",
         target_id = id.from(_N, "UpdateCustomLineItemPercentageChargeDetails"),
         target = M.UpdateCustomLineItemPercentageChargeDetails,
      }),
      LineItemFilters = schema.new({
         id = id.from(_N, "UpdateCustomLineItemChargeDetails", "LineItemFilters"),
         type = "list",
         name = "LineItemFilters",
         target_id = prelude.Document.id,
         list_member = M.LineItemFilter,
      }),
   },
})

M.UpdateCustomLineItemInput = schema.new({
   id = id.from(_N, "UpdateCustomLineItemInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdateCustomLineItemInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateCustomLineItemInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateCustomLineItemInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ChargeDetails = schema.new({
         id = id.from(_N, "UpdateCustomLineItemInput", "ChargeDetails"),
         type = "structure",
         name = "ChargeDetails",
         target_id = id.from(_N, "UpdateCustomLineItemChargeDetails"),
         target = M.UpdateCustomLineItemChargeDetails,
      }),
      BillingPeriodRange = schema.new({
         id = id.from(_N, "UpdateCustomLineItemInput", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "CustomLineItemBillingPeriodRange"),
         target = M.CustomLineItemBillingPeriodRange,
      }),
   },
})

M.UpdateCustomLineItemOutput = schema.new({
   id = id.from(_N, "UpdateCustomLineItemOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      BillingGroupArn = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "BillingGroupArn"),
         type = "string",
         name = "BillingGroupArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ChargeDetails = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "ChargeDetails"),
         type = "structure",
         name = "ChargeDetails",
         target_id = id.from(_N, "ListCustomLineItemChargeDetails"),
         target = M.ListCustomLineItemChargeDetails,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      AssociationSize = schema.new({
         id = id.from(_N, "UpdateCustomLineItemOutput", "AssociationSize"),
         type = "long",
         name = "AssociationSize",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.BillingPeriodRange = schema.new({
   id = id.from(_N, "BillingPeriodRange"),
   type = "structure",
   members = {
      InclusiveStartBillingPeriod = schema.new({
         id = id.from(_N, "BillingPeriodRange", "InclusiveStartBillingPeriod"),
         type = "string",
         name = "InclusiveStartBillingPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExclusiveEndBillingPeriod = schema.new({
         id = id.from(_N, "BillingPeriodRange", "ExclusiveEndBillingPeriod"),
         type = "string",
         name = "ExclusiveEndBillingPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetBillingGroupCostReportInput = schema.new({
   id = id.from(_N, "GetBillingGroupCostReportInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingPeriodRange = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportInput", "BillingPeriodRange"),
         type = "structure",
         name = "BillingPeriodRange",
         target_id = id.from(_N, "BillingPeriodRange"),
         target = M.BillingPeriodRange,
      }),
      GroupBy = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportInput", "GroupBy"),
         type = "list",
         name = "GroupBy",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.BillingGroupCostReportResultElement = schema.new({
   id = id.from(_N, "BillingGroupCostReportResultElement"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      AWSCost = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "AWSCost"),
         type = "string",
         name = "AWSCost",
         target_id = prelude.String.id,
      }),
      ProformaCost = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "ProformaCost"),
         type = "string",
         name = "ProformaCost",
         target_id = prelude.String.id,
      }),
      Margin = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "Margin"),
         type = "string",
         name = "Margin",
         target_id = prelude.String.id,
      }),
      MarginPercentage = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "MarginPercentage"),
         type = "string",
         name = "MarginPercentage",
         target_id = prelude.String.id,
      }),
      Currency = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "Currency"),
         type = "string",
         name = "Currency",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "BillingGroupCostReportResultElement", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.Attribute,
      }),
   },
})

M.GetBillingGroupCostReportOutput = schema.new({
   id = id.from(_N, "GetBillingGroupCostReportOutput"),
   type = "structure",
   members = {
      BillingGroupCostReportResults = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportOutput", "BillingGroupCostReportResults"),
         type = "list",
         name = "BillingGroupCostReportResults",
         target_id = prelude.Document.id,
         list_member = M.BillingGroupCostReportResultElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "GetBillingGroupCostReportOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAccountAssociationsFilter = schema.new({
   id = id.from(_N, "ListAccountAssociationsFilter"),
   type = "structure",
   members = {
      Association = schema.new({
         id = id.from(_N, "ListAccountAssociationsFilter", "Association"),
         type = "string",
         name = "Association",
         target_id = prelude.String.id,
      }),
      AccountId = schema.new({
         id = id.from(_N, "ListAccountAssociationsFilter", "AccountId"),
         type = "string",
         name = "AccountId",
         target_id = prelude.String.id,
      }),
      AccountIds = schema.new({
         id = id.from(_N, "ListAccountAssociationsFilter", "AccountIds"),
         type = "list",
         name = "AccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListAccountAssociationsInput = schema.new({
   id = id.from(_N, "ListAccountAssociationsInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListAccountAssociationsInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListAccountAssociationsInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListAccountAssociationsFilter"),
         target = M.ListAccountAssociationsFilter,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAccountAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAccountAssociationsOutput = schema.new({
   id = id.from(_N, "ListAccountAssociationsOutput"),
   type = "structure",
   members = {
      LinkedAccounts = schema.new({
         id = id.from(_N, "ListAccountAssociationsOutput", "LinkedAccounts"),
         type = "list",
         name = "LinkedAccounts",
         target_id = prelude.Document.id,
         list_member = M.AccountAssociationsListElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAccountAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBillingGroupCostReportsFilter = schema.new({
   id = id.from(_N, "ListBillingGroupCostReportsFilter"),
   type = "structure",
   members = {
      BillingGroupArns = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsFilter", "BillingGroupArns"),
         type = "list",
         name = "BillingGroupArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListBillingGroupCostReportsInput = schema.new({
   id = id.from(_N, "ListBillingGroupCostReportsInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListBillingGroupCostReportsFilter"),
         target = M.ListBillingGroupCostReportsFilter,
      }),
   },
})

M.BillingGroupCostReportElement = schema.new({
   id = id.from(_N, "BillingGroupCostReportElement"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "BillingGroupCostReportElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      AWSCost = schema.new({
         id = id.from(_N, "BillingGroupCostReportElement", "AWSCost"),
         type = "string",
         name = "AWSCost",
         target_id = prelude.String.id,
      }),
      ProformaCost = schema.new({
         id = id.from(_N, "BillingGroupCostReportElement", "ProformaCost"),
         type = "string",
         name = "ProformaCost",
         target_id = prelude.String.id,
      }),
      Margin = schema.new({
         id = id.from(_N, "BillingGroupCostReportElement", "Margin"),
         type = "string",
         name = "Margin",
         target_id = prelude.String.id,
      }),
      MarginPercentage = schema.new({
         id = id.from(_N, "BillingGroupCostReportElement", "MarginPercentage"),
         type = "string",
         name = "MarginPercentage",
         target_id = prelude.String.id,
      }),
      Currency = schema.new({
         id = id.from(_N, "BillingGroupCostReportElement", "Currency"),
         type = "string",
         name = "Currency",
         target_id = prelude.String.id,
      }),
   },
})

M.ListBillingGroupCostReportsOutput = schema.new({
   id = id.from(_N, "ListBillingGroupCostReportsOutput"),
   type = "structure",
   members = {
      BillingGroupCostReports = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsOutput", "BillingGroupCostReports"),
         type = "list",
         name = "BillingGroupCostReports",
         target_id = prelude.Document.id,
         list_member = M.BillingGroupCostReportElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListBillingGroupCostReportsOutput", "NextToken"),
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

M.CreatePricingPlanInput = schema.new({
   id = id.from(_N, "CreatePricingPlanInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreatePricingPlanInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreatePricingPlanInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreatePricingPlanInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      PricingRuleArns = schema.new({
         id = id.from(_N, "CreatePricingPlanInput", "PricingRuleArns"),
         type = "list",
         name = "PricingRuleArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreatePricingPlanInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreatePricingPlanOutput = schema.new({
   id = id.from(_N, "CreatePricingPlanOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreatePricingPlanOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeletePricingPlanInput = schema.new({
   id = id.from(_N, "DeletePricingPlanInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeletePricingPlanInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletePricingPlanOutput = schema.new({
   id = id.from(_N, "DeletePricingPlanOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeletePricingPlanOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.DisassociatePricingRulesInput = schema.new({
   id = id.from(_N, "DisassociatePricingRulesInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DisassociatePricingRulesInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PricingRuleArns = schema.new({
         id = id.from(_N, "DisassociatePricingRulesInput", "PricingRuleArns"),
         type = "list",
         name = "PricingRuleArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociatePricingRulesOutput = schema.new({
   id = id.from(_N, "DisassociatePricingRulesOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DisassociatePricingRulesOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingPlansFilter = schema.new({
   id = id.from(_N, "ListPricingPlansFilter"),
   type = "structure",
   members = {
      Arns = schema.new({
         id = id.from(_N, "ListPricingPlansFilter", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListPricingPlansInput = schema.new({
   id = id.from(_N, "ListPricingPlansInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingPlansInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListPricingPlansInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListPricingPlansFilter"),
         target = M.ListPricingPlansFilter,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPricingPlansInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingPlansInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.PricingPlanListElement = schema.new({
   id = id.from(_N, "PricingPlanListElement"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "PricingPlanListElement", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "PricingPlanListElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "PricingPlanListElement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Size = schema.new({
         id = id.from(_N, "PricingPlanListElement", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "PricingPlanListElement", "CreationTime"),
         type = "long",
         name = "CreationTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "PricingPlanListElement", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ListPricingPlansOutput = schema.new({
   id = id.from(_N, "ListPricingPlansOutput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingPlansOutput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      PricingPlans = schema.new({
         id = id.from(_N, "ListPricingPlansOutput", "PricingPlans"),
         type = "list",
         name = "PricingPlans",
         target_id = prelude.Document.id,
         list_member = M.PricingPlanListElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingPlansOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingPlansAssociatedWithPricingRuleInput = schema.new({
   id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      PricingRuleArn = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleInput", "PricingRuleArn"),
         type = "string",
         name = "PricingRuleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingPlansAssociatedWithPricingRuleOutput = schema.new({
   id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleOutput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleOutput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      PricingRuleArn = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleOutput", "PricingRuleArn"),
         type = "string",
         name = "PricingRuleArn",
         target_id = prelude.String.id,
      }),
      PricingPlanArns = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleOutput", "PricingPlanArns"),
         type = "list",
         name = "PricingPlanArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingPlansAssociatedWithPricingRuleOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePricingPlanInput = schema.new({
   id = id.from(_N, "UpdatePricingPlanInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdatePricingPlanInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePricingPlanInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdatePricingPlanInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdatePricingPlanOutput = schema.new({
   id = id.from(_N, "UpdatePricingPlanOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdatePricingPlanOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePricingPlanOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdatePricingPlanOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Size = schema.new({
         id = id.from(_N, "UpdatePricingPlanOutput", "Size"),
         type = "long",
         name = "Size",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "UpdatePricingPlanOutput", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.CreateFreeTierConfig = schema.new({
   id = id.from(_N, "CreateFreeTierConfig"),
   type = "structure",
   members = {
      Activated = schema.new({
         id = id.from(_N, "CreateFreeTierConfig", "Activated"),
         type = "boolean",
         name = "Activated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateTieringInput = schema.new({
   id = id.from(_N, "CreateTieringInput"),
   type = "structure",
   members = {
      FreeTier = schema.new({
         id = id.from(_N, "CreateTieringInput", "FreeTier"),
         type = "structure",
         name = "FreeTier",
         target_id = id.from(_N, "CreateFreeTierConfig"),
         target = M.CreateFreeTierConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreatePricingRuleInput = schema.new({
   id = id.from(_N, "CreatePricingRuleInput"),
   type = "structure",
   members = {
      ClientToken = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "X-Amzn-Client-Token" },
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Scope = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Scope"),
         type = "string",
         name = "Scope",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Type = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ModifierPercentage = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "ModifierPercentage"),
         type = "double",
         name = "ModifierPercentage",
         target_id = prelude.Double.id,
      }),
      Service = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      BillingEntity = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "BillingEntity"),
         type = "string",
         name = "BillingEntity",
         target_id = prelude.String.id,
      }),
      Tiering = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Tiering"),
         type = "structure",
         name = "Tiering",
         target_id = id.from(_N, "CreateTieringInput"),
         target = M.CreateTieringInput,
      }),
      UsageType = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "UsageType"),
         type = "string",
         name = "UsageType",
         target_id = prelude.String.id,
      }),
      Operation = schema.new({
         id = id.from(_N, "CreatePricingRuleInput", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
      }),
   },
})

M.CreatePricingRuleOutput = schema.new({
   id = id.from(_N, "CreatePricingRuleOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "CreatePricingRuleOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeletePricingRuleInput = schema.new({
   id = id.from(_N, "DeletePricingRuleInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeletePricingRuleInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeletePricingRuleOutput = schema.new({
   id = id.from(_N, "DeletePricingRuleOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "DeletePricingRuleOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingRulesFilter = schema.new({
   id = id.from(_N, "ListPricingRulesFilter"),
   type = "structure",
   members = {
      Arns = schema.new({
         id = id.from(_N, "ListPricingRulesFilter", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListPricingRulesInput = schema.new({
   id = id.from(_N, "ListPricingRulesInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingRulesInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      Filters = schema.new({
         id = id.from(_N, "ListPricingRulesInput", "Filters"),
         type = "structure",
         name = "Filters",
         target_id = id.from(_N, "ListPricingRulesFilter"),
         target = M.ListPricingRulesFilter,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPricingRulesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingRulesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.FreeTierConfig = schema.new({
   id = id.from(_N, "FreeTierConfig"),
   type = "structure",
   members = {
      Activated = schema.new({
         id = id.from(_N, "FreeTierConfig", "Activated"),
         type = "boolean",
         name = "Activated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Tiering = schema.new({
   id = id.from(_N, "Tiering"),
   type = "structure",
   members = {
      FreeTier = schema.new({
         id = id.from(_N, "Tiering", "FreeTier"),
         type = "structure",
         name = "FreeTier",
         target_id = id.from(_N, "FreeTierConfig"),
         target = M.FreeTierConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PricingRuleListElement = schema.new({
   id = id.from(_N, "PricingRuleListElement"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Scope = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Scope"),
         type = "string",
         name = "Scope",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      ModifierPercentage = schema.new({
         id = id.from(_N, "PricingRuleListElement", "ModifierPercentage"),
         type = "double",
         name = "ModifierPercentage",
         target_id = prelude.Double.id,
      }),
      Service = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
      }),
      AssociatedPricingPlanCount = schema.new({
         id = id.from(_N, "PricingRuleListElement", "AssociatedPricingPlanCount"),
         type = "long",
         name = "AssociatedPricingPlanCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "PricingRuleListElement", "CreationTime"),
         type = "long",
         name = "CreationTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "PricingRuleListElement", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      BillingEntity = schema.new({
         id = id.from(_N, "PricingRuleListElement", "BillingEntity"),
         type = "string",
         name = "BillingEntity",
         target_id = prelude.String.id,
      }),
      Tiering = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Tiering"),
         type = "structure",
         name = "Tiering",
         target_id = id.from(_N, "Tiering"),
         target = M.Tiering,
      }),
      UsageType = schema.new({
         id = id.from(_N, "PricingRuleListElement", "UsageType"),
         type = "string",
         name = "UsageType",
         target_id = prelude.String.id,
      }),
      Operation = schema.new({
         id = id.from(_N, "PricingRuleListElement", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingRulesOutput = schema.new({
   id = id.from(_N, "ListPricingRulesOutput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingRulesOutput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      PricingRules = schema.new({
         id = id.from(_N, "ListPricingRulesOutput", "PricingRules"),
         type = "list",
         name = "PricingRules",
         target_id = prelude.Document.id,
         list_member = M.PricingRuleListElement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingRulesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingRulesAssociatedToPricingPlanInput = schema.new({
   id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanInput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      PricingPlanArn = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanInput", "PricingPlanArn"),
         type = "string",
         name = "PricingPlanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListPricingRulesAssociatedToPricingPlanOutput = schema.new({
   id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanOutput"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanOutput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
      }),
      PricingPlanArn = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanOutput", "PricingPlanArn"),
         type = "string",
         name = "PricingPlanArn",
         target_id = prelude.String.id,
      }),
      PricingRuleArns = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanOutput", "PricingRuleArns"),
         type = "list",
         name = "PricingRuleArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListPricingRulesAssociatedToPricingPlanOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateFreeTierConfig = schema.new({
   id = id.from(_N, "UpdateFreeTierConfig"),
   type = "structure",
   members = {
      Activated = schema.new({
         id = id.from(_N, "UpdateFreeTierConfig", "Activated"),
         type = "boolean",
         name = "Activated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateTieringInput = schema.new({
   id = id.from(_N, "UpdateTieringInput"),
   type = "structure",
   members = {
      FreeTier = schema.new({
         id = id.from(_N, "UpdateTieringInput", "FreeTier"),
         type = "structure",
         name = "FreeTier",
         target_id = id.from(_N, "UpdateFreeTierConfig"),
         target = M.UpdateFreeTierConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdatePricingRuleInput = schema.new({
   id = id.from(_N, "UpdatePricingRuleInput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdatePricingRuleInput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePricingRuleInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdatePricingRuleInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "UpdatePricingRuleInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      ModifierPercentage = schema.new({
         id = id.from(_N, "UpdatePricingRuleInput", "ModifierPercentage"),
         type = "double",
         name = "ModifierPercentage",
         target_id = prelude.Double.id,
      }),
      Tiering = schema.new({
         id = id.from(_N, "UpdatePricingRuleInput", "Tiering"),
         type = "structure",
         name = "Tiering",
         target_id = id.from(_N, "UpdateTieringInput"),
         target = M.UpdateTieringInput,
      }),
   },
})

M.UpdatePricingRuleOutput = schema.new({
   id = id.from(_N, "UpdatePricingRuleOutput"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Scope = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Scope"),
         type = "string",
         name = "Scope",
         target_id = prelude.String.id,
      }),
      Type = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      ModifierPercentage = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "ModifierPercentage"),
         type = "double",
         name = "ModifierPercentage",
         target_id = prelude.Double.id,
      }),
      Service = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Service"),
         type = "string",
         name = "Service",
         target_id = prelude.String.id,
      }),
      AssociatedPricingPlanCount = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "AssociatedPricingPlanCount"),
         type = "long",
         name = "AssociatedPricingPlanCount",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "LastModifiedTime"),
         type = "long",
         name = "LastModifiedTime",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      BillingEntity = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "BillingEntity"),
         type = "string",
         name = "BillingEntity",
         target_id = prelude.String.id,
      }),
      Tiering = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Tiering"),
         type = "structure",
         name = "Tiering",
         target_id = id.from(_N, "UpdateTieringInput"),
         target = M.UpdateTieringInput,
      }),
      UsageType = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "UsageType"),
         type = "string",
         name = "UsageType",
         target_id = prelude.String.id,
      }),
      Operation = schema.new({
         id = id.from(_N, "UpdatePricingRuleOutput", "Operation"),
         type = "string",
         name = "Operation",
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
   id = id.from("com.amazonaws.billingconductor", "AWSBillingConductor"),
   version = "2021-07-30",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateAccounts = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "AssociateAccounts"),
   input = M.AssociateAccountsInput,
   output = M.AssociateAccountsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/associate-accounts" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociatePricingRules = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "AssociatePricingRules"),
   input = M.AssociatePricingRulesInput,
   output = M.AssociatePricingRulesOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/associate-pricing-rules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchAssociateResourcesToCustomLineItem = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "BatchAssociateResourcesToCustomLineItem"),
   input = M.BatchAssociateResourcesToCustomLineItemInput,
   output = M.BatchAssociateResourcesToCustomLineItemOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/batch-associate-resources-to-custom-line-item" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDisassociateResourcesFromCustomLineItem = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "BatchDisassociateResourcesFromCustomLineItem"),
   input = M.BatchDisassociateResourcesFromCustomLineItemInput,
   output = M.BatchDisassociateResourcesFromCustomLineItemOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/batch-disassociate-resources-from-custom-line-item" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateBillingGroup = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "CreateBillingGroup"),
   input = M.CreateBillingGroupInput,
   output = M.CreateBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/create-billing-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCustomLineItem = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "CreateCustomLineItem"),
   input = M.CreateCustomLineItemInput,
   output = M.CreateCustomLineItemOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/create-custom-line-item" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePricingPlan = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "CreatePricingPlan"),
   input = M.CreatePricingPlanInput,
   output = M.CreatePricingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/create-pricing-plan" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreatePricingRule = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "CreatePricingRule"),
   input = M.CreatePricingRuleInput,
   output = M.CreatePricingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/create-pricing-rule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteBillingGroup = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "DeleteBillingGroup"),
   input = M.DeleteBillingGroupInput,
   output = M.DeleteBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delete-billing-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomLineItem = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "DeleteCustomLineItem"),
   input = M.DeleteCustomLineItemInput,
   output = M.DeleteCustomLineItemOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delete-custom-line-item" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePricingPlan = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "DeletePricingPlan"),
   input = M.DeletePricingPlanInput,
   output = M.DeletePricingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delete-pricing-plan" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeletePricingRule = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "DeletePricingRule"),
   input = M.DeletePricingRuleInput,
   output = M.DeletePricingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delete-pricing-rule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateAccounts = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "DisassociateAccounts"),
   input = M.DisassociateAccountsInput,
   output = M.DisassociateAccountsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/disassociate-accounts" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociatePricingRules = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "DisassociatePricingRules"),
   input = M.DisassociatePricingRulesInput,
   output = M.DisassociatePricingRulesOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/disassociate-pricing-rules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetBillingGroupCostReport = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "GetBillingGroupCostReport"),
   input = M.GetBillingGroupCostReportInput,
   output = M.GetBillingGroupCostReportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/get-billing-group-cost-report" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccountAssociations = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListAccountAssociations"),
   input = M.ListAccountAssociationsInput,
   output = M.ListAccountAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-account-associations" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBillingGroupCostReports = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListBillingGroupCostReports"),
   input = M.ListBillingGroupCostReportsInput,
   output = M.ListBillingGroupCostReportsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-billing-group-cost-reports" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListBillingGroups = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListBillingGroups"),
   input = M.ListBillingGroupsInput,
   output = M.ListBillingGroupsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-billing-groups" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomLineItems = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListCustomLineItems"),
   input = M.ListCustomLineItemsInput,
   output = M.ListCustomLineItemsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-custom-line-items" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCustomLineItemVersions = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListCustomLineItemVersions"),
   input = M.ListCustomLineItemVersionsInput,
   output = M.ListCustomLineItemVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-custom-line-item-versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPricingPlans = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListPricingPlans"),
   input = M.ListPricingPlansInput,
   output = M.ListPricingPlansOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-pricing-plans" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPricingPlansAssociatedWithPricingRule = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListPricingPlansAssociatedWithPricingRule"),
   input = M.ListPricingPlansAssociatedWithPricingRuleInput,
   output = M.ListPricingPlansAssociatedWithPricingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-pricing-plans-associated-with-pricing-rule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPricingRules = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListPricingRules"),
   input = M.ListPricingRulesInput,
   output = M.ListPricingRulesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-pricing-rules" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListPricingRulesAssociatedToPricingPlan = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListPricingRulesAssociatedToPricingPlan"),
   input = M.ListPricingRulesAssociatedToPricingPlanInput,
   output = M.ListPricingRulesAssociatedToPricingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-pricing-rules-associated-to-pricing-plan" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListResourcesAssociatedToCustomLineItem = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListResourcesAssociatedToCustomLineItem"),
   input = M.ListResourcesAssociatedToCustomLineItemInput,
   output = M.ListResourcesAssociatedToCustomLineItemOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/list-resources-associated-to-custom-line-item" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "ListTagsForResource"),
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
   id = id.from("com.amazonaws.billingconductor", "TagResource"),
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
   id = id.from("com.amazonaws.billingconductor", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{ResourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateBillingGroup = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "UpdateBillingGroup"),
   input = M.UpdateBillingGroupInput,
   output = M.UpdateBillingGroupOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/update-billing-group" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCustomLineItem = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "UpdateCustomLineItem"),
   input = M.UpdateCustomLineItemInput,
   output = M.UpdateCustomLineItemOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/update-custom-line-item" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePricingPlan = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "UpdatePricingPlan"),
   input = M.UpdatePricingPlanInput,
   output = M.UpdatePricingPlanOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/update-pricing-plan" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePricingRule = schema.operation({
   id = id.from("com.amazonaws.billingconductor", "UpdatePricingRule"),
   input = M.UpdatePricingRuleInput,
   output = M.UpdatePricingRuleOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/update-pricing-rule" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
