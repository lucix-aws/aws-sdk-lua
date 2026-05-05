local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.waf"

local M = {}

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.ManagedKeys = schema.new({ type = "list", list_member = prelude.String })

M.SampledHTTPRequests = schema.new({ type = "list", list_member = M.SampledHTTPRequest })

M.ActivatedRules = schema.new({ type = "list", list_member = M.ActivatedRule })

M.ByteMatchSetSummaries = schema.new({ type = "list", list_member = M.ByteMatchSetSummary })

M.GeoMatchSetSummaries = schema.new({ type = "list", list_member = M.GeoMatchSetSummary })

M.IPSetSummaries = schema.new({ type = "list", list_member = M.IPSetSummary })

M.LoggingConfigurations = schema.new({ type = "list", list_member = M.LoggingConfiguration })

M.RuleSummaries = schema.new({ type = "list", list_member = M.RuleSummary })

M.RegexMatchSetSummaries = schema.new({ type = "list", list_member = M.RegexMatchSetSummary })

M.RegexPatternSetSummaries = schema.new({ type = "list", list_member = M.RegexPatternSetSummary })

M.RuleGroupSummaries = schema.new({ type = "list", list_member = M.RuleGroupSummary })

M.SizeConstraintSetSummaries = schema.new({ type = "list", list_member = M.SizeConstraintSetSummary })

M.SqlInjectionMatchSetSummaries = schema.new({ type = "list", list_member = M.SqlInjectionMatchSetSummary })

M.SubscribedRuleGroupSummaries = schema.new({ type = "list", list_member = M.SubscribedRuleGroupSummary })

M.WebACLSummaries = schema.new({ type = "list", list_member = M.WebACLSummary })

M.XssMatchSetSummaries = schema.new({ type = "list", list_member = M.XssMatchSetSummary })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ByteMatchSetUpdates = schema.new({ type = "list", list_member = M.ByteMatchSetUpdate })

M.GeoMatchSetUpdates = schema.new({ type = "list", list_member = M.GeoMatchSetUpdate })

M.IPSetUpdates = schema.new({ type = "list", list_member = M.IPSetUpdate })

M.RuleUpdates = schema.new({ type = "list", list_member = M.RuleUpdate })

M.RegexMatchSetUpdates = schema.new({ type = "list", list_member = M.RegexMatchSetUpdate })

M.RegexPatternSetUpdates = schema.new({ type = "list", list_member = M.RegexPatternSetUpdate })

M.RuleGroupUpdates = schema.new({ type = "list", list_member = M.RuleGroupUpdate })

M.SizeConstraintSetUpdates = schema.new({ type = "list", list_member = M.SizeConstraintSetUpdate })

M.SqlInjectionMatchSetUpdates = schema.new({ type = "list", list_member = M.SqlInjectionMatchSetUpdate })

M.WebACLUpdates = schema.new({ type = "list", list_member = M.WebACLUpdate })

M.XssMatchSetUpdates = schema.new({ type = "list", list_member = M.XssMatchSetUpdate })

M.ByteMatchTuples = schema.new({ type = "list", list_member = M.ByteMatchTuple })

M.GeoMatchConstraints = schema.new({ type = "list", list_member = M.GeoMatchConstraint })

M.IPSetDescriptors = schema.new({ type = "list", list_member = M.IPSetDescriptor })

M.Predicates = schema.new({ type = "list", list_member = M.Predicate })

M.RegexMatchTuples = schema.new({ type = "list", list_member = M.RegexMatchTuple })

M.RegexPatternStrings = schema.new({ type = "list", list_member = prelude.String })

M.SizeConstraints = schema.new({ type = "list", list_member = M.SizeConstraint })

M.SqlInjectionMatchTuples = schema.new({ type = "list", list_member = M.SqlInjectionMatchTuple })

M.XssMatchTuples = schema.new({ type = "list", list_member = M.XssMatchTuple })

M.LogDestinationConfigs = schema.new({ type = "list", list_member = prelude.String })

M.RedactedFields = schema.new({ type = "list", list_member = M.FieldToMatch })

M.ExcludedRules = schema.new({ type = "list", list_member = M.ExcludedRule })

M.HTTPHeaders = schema.new({ type = "list", list_member = M.HTTPHeader })

M.WafAction = schema.new({
    id = id.from(_N, "WafAction"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "WafAction", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ExcludedRule = schema.new({
    id = id.from(_N, "ExcludedRule"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "ExcludedRule", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WafOverrideAction = schema.new({
    id = id.from(_N, "WafOverrideAction"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "WafOverrideAction", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActivatedRule = schema.new({
    id = id.from(_N, "ActivatedRule"),
    type = "structure",
    members = {
        Priority = schema.new({
            id = id.from(_N, "ActivatedRule", "Priority"),
            type = "integer",
            name = "Priority",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RuleId = schema.new({
            id = id.from(_N, "ActivatedRule", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "ActivatedRule", "Action"),
            type = "structure",
            name = "Action",
            target_id = id.from(_N, "WafAction"),
            target = M.WafAction,
        }),
        OverrideAction = schema.new({
            id = id.from(_N, "ActivatedRule", "OverrideAction"),
            type = "structure",
            name = "OverrideAction",
            target_id = id.from(_N, "WafOverrideAction"),
            target = M.WafOverrideAction,
        }),
        Type = schema.new({
            id = id.from(_N, "ActivatedRule", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
        }),
        ExcludedRules = schema.new({
            id = id.from(_N, "ActivatedRule", "ExcludedRules"),
            type = "list",
            name = "ExcludedRules",
            target_id = prelude.Document.id,
            list_member = M.ExcludedRule,
        }),
    },
})

M.CreateByteMatchSetInput = schema.new({
    id = id.from(_N, "CreateByteMatchSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateByteMatchSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateByteMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.FieldToMatch = schema.new({
    id = id.from(_N, "FieldToMatch"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "FieldToMatch", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Data = schema.new({
            id = id.from(_N, "FieldToMatch", "Data"),
            type = "string",
            name = "Data",
            target_id = prelude.String.id,
        }),
    },
})

M.ByteMatchTuple = schema.new({
    id = id.from(_N, "ByteMatchTuple"),
    type = "structure",
    members = {
        FieldToMatch = schema.new({
            id = id.from(_N, "ByteMatchTuple", "FieldToMatch"),
            type = "structure",
            name = "FieldToMatch",
            target_id = id.from(_N, "FieldToMatch"),
            target = M.FieldToMatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TargetString = schema.new({
            id = id.from(_N, "ByteMatchTuple", "TargetString"),
            type = "blob",
            name = "TargetString",
            target_id = prelude.Blob.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TextTransformation = schema.new({
            id = id.from(_N, "ByteMatchTuple", "TextTransformation"),
            type = "string",
            name = "TextTransformation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        PositionalConstraint = schema.new({
            id = id.from(_N, "ByteMatchTuple", "PositionalConstraint"),
            type = "string",
            name = "PositionalConstraint",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ByteMatchSet = schema.new({
    id = id.from(_N, "ByteMatchSet"),
    type = "structure",
    members = {
        ByteMatchSetId = schema.new({
            id = id.from(_N, "ByteMatchSet", "ByteMatchSetId"),
            type = "string",
            name = "ByteMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ByteMatchSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        ByteMatchTuples = schema.new({
            id = id.from(_N, "ByteMatchSet", "ByteMatchTuples"),
            type = "list",
            name = "ByteMatchTuples",
            target_id = prelude.Document.id,
            list_member = M.ByteMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateByteMatchSetOutput = schema.new({
    id = id.from(_N, "CreateByteMatchSetResponse"),
    type = "structure",
    members = {
        ByteMatchSet = schema.new({
            id = id.from(_N, "CreateByteMatchSetOutput", "ByteMatchSet"),
            type = "structure",
            name = "ByteMatchSet",
            target_id = id.from(_N, "ByteMatchSet"),
            target = M.ByteMatchSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateByteMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFDisallowedNameException = schema.new({
    id = id.from(_N, "WAFDisallowedNameException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFDisallowedNameException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFInternalErrorException = schema.new({
    id = id.from(_N, "WAFInternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFInternalErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFInvalidAccountException = schema.new({
    id = id.from(_N, "WAFInvalidAccountException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
})

M.WAFInvalidParameterException = schema.new({
    id = id.from(_N, "WAFInvalidParameterException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        field = schema.new({
            id = id.from(_N, "WAFInvalidParameterException", "field"),
            type = "string",
            name = "field",
            target_id = prelude.String.id,
        }),
        parameter = schema.new({
            id = id.from(_N, "WAFInvalidParameterException", "parameter"),
            type = "string",
            name = "parameter",
            target_id = prelude.String.id,
        }),
        reason = schema.new({
            id = id.from(_N, "WAFInvalidParameterException", "reason"),
            type = "string",
            name = "reason",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFLimitsExceededException = schema.new({
    id = id.from(_N, "WAFLimitsExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFLimitsExceededException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFStaleDataException = schema.new({
    id = id.from(_N, "WAFStaleDataException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFStaleDataException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateGeoMatchSetInput = schema.new({
    id = id.from(_N, "CreateGeoMatchSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateGeoMatchSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateGeoMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GeoMatchConstraint = schema.new({
    id = id.from(_N, "GeoMatchConstraint"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GeoMatchConstraint", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "GeoMatchConstraint", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GeoMatchSet = schema.new({
    id = id.from(_N, "GeoMatchSet"),
    type = "structure",
    members = {
        GeoMatchSetId = schema.new({
            id = id.from(_N, "GeoMatchSet", "GeoMatchSetId"),
            type = "string",
            name = "GeoMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GeoMatchSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        GeoMatchConstraints = schema.new({
            id = id.from(_N, "GeoMatchSet", "GeoMatchConstraints"),
            type = "list",
            name = "GeoMatchConstraints",
            target_id = prelude.Document.id,
            list_member = M.GeoMatchConstraint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateGeoMatchSetOutput = schema.new({
    id = id.from(_N, "CreateGeoMatchSetResponse"),
    type = "structure",
    members = {
        GeoMatchSet = schema.new({
            id = id.from(_N, "CreateGeoMatchSetOutput", "GeoMatchSet"),
            type = "structure",
            name = "GeoMatchSet",
            target_id = id.from(_N, "GeoMatchSet"),
            target = M.GeoMatchSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateGeoMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateIPSetInput = schema.new({
    id = id.from(_N, "CreateIPSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateIPSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateIPSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IPSetDescriptor = schema.new({
    id = id.from(_N, "IPSetDescriptor"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "IPSetDescriptor", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "IPSetDescriptor", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IPSet = schema.new({
    id = id.from(_N, "IPSet"),
    type = "structure",
    members = {
        IPSetId = schema.new({
            id = id.from(_N, "IPSet", "IPSetId"),
            type = "string",
            name = "IPSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "IPSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        IPSetDescriptors = schema.new({
            id = id.from(_N, "IPSet", "IPSetDescriptors"),
            type = "list",
            name = "IPSetDescriptors",
            target_id = prelude.Document.id,
            list_member = M.IPSetDescriptor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateIPSetOutput = schema.new({
    id = id.from(_N, "CreateIPSetResponse"),
    type = "structure",
    members = {
        IPSet = schema.new({
            id = id.from(_N, "CreateIPSetOutput", "IPSet"),
            type = "structure",
            name = "IPSet",
            target_id = id.from(_N, "IPSet"),
            target = M.IPSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateIPSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
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

M.CreateRateBasedRuleInput = schema.new({
    id = id.from(_N, "CreateRateBasedRuleRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRateBasedRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "CreateRateBasedRuleInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RateKey = schema.new({
            id = id.from(_N, "CreateRateBasedRuleInput", "RateKey"),
            type = "string",
            name = "RateKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RateLimit = schema.new({
            id = id.from(_N, "CreateRateBasedRuleInput", "RateLimit"),
            type = "long",
            name = "RateLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRateBasedRuleInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRateBasedRuleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Predicate = schema.new({
    id = id.from(_N, "Predicate"),
    type = "structure",
    members = {
        Negated = schema.new({
            id = id.from(_N, "Predicate", "Negated"),
            type = "boolean",
            name = "Negated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "Predicate", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DataId = schema.new({
            id = id.from(_N, "Predicate", "DataId"),
            type = "string",
            name = "DataId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RateBasedRule = schema.new({
    id = id.from(_N, "RateBasedRule"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "RateBasedRule", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RateBasedRule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "RateBasedRule", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        MatchPredicates = schema.new({
            id = id.from(_N, "RateBasedRule", "MatchPredicates"),
            type = "list",
            name = "MatchPredicates",
            target_id = prelude.Document.id,
            list_member = M.Predicate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RateKey = schema.new({
            id = id.from(_N, "RateBasedRule", "RateKey"),
            type = "string",
            name = "RateKey",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RateLimit = schema.new({
            id = id.from(_N, "RateBasedRule", "RateLimit"),
            type = "long",
            name = "RateLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRateBasedRuleOutput = schema.new({
    id = id.from(_N, "CreateRateBasedRuleResponse"),
    type = "structure",
    members = {
        Rule = schema.new({
            id = id.from(_N, "CreateRateBasedRuleOutput", "Rule"),
            type = "structure",
            name = "Rule",
            target_id = id.from(_N, "RateBasedRule"),
            target = M.RateBasedRule,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRateBasedRuleOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFBadRequestException = schema.new({
    id = id.from(_N, "WAFBadRequestException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFBadRequestException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFTagOperationException = schema.new({
    id = id.from(_N, "WAFTagOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFTagOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFTagOperationInternalErrorException = schema.new({
    id = id.from(_N, "WAFTagOperationInternalErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFTagOperationInternalErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRegexMatchSetInput = schema.new({
    id = id.from(_N, "CreateRegexMatchSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRegexMatchSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRegexMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegexMatchTuple = schema.new({
    id = id.from(_N, "RegexMatchTuple"),
    type = "structure",
    members = {
        FieldToMatch = schema.new({
            id = id.from(_N, "RegexMatchTuple", "FieldToMatch"),
            type = "structure",
            name = "FieldToMatch",
            target_id = id.from(_N, "FieldToMatch"),
            target = M.FieldToMatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TextTransformation = schema.new({
            id = id.from(_N, "RegexMatchTuple", "TextTransformation"),
            type = "string",
            name = "TextTransformation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegexPatternSetId = schema.new({
            id = id.from(_N, "RegexMatchTuple", "RegexPatternSetId"),
            type = "string",
            name = "RegexPatternSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegexMatchSet = schema.new({
    id = id.from(_N, "RegexMatchSet"),
    type = "structure",
    members = {
        RegexMatchSetId = schema.new({
            id = id.from(_N, "RegexMatchSet", "RegexMatchSetId"),
            type = "string",
            name = "RegexMatchSetId",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "RegexMatchSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RegexMatchTuples = schema.new({
            id = id.from(_N, "RegexMatchSet", "RegexMatchTuples"),
            type = "list",
            name = "RegexMatchTuples",
            target_id = prelude.Document.id,
            list_member = M.RegexMatchTuple,
        }),
    },
})

M.CreateRegexMatchSetOutput = schema.new({
    id = id.from(_N, "CreateRegexMatchSetResponse"),
    type = "structure",
    members = {
        RegexMatchSet = schema.new({
            id = id.from(_N, "CreateRegexMatchSetOutput", "RegexMatchSet"),
            type = "structure",
            name = "RegexMatchSet",
            target_id = id.from(_N, "RegexMatchSet"),
            target = M.RegexMatchSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRegexMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRegexPatternSetInput = schema.new({
    id = id.from(_N, "CreateRegexPatternSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRegexPatternSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRegexPatternSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RegexPatternSet = schema.new({
    id = id.from(_N, "RegexPatternSet"),
    type = "structure",
    members = {
        RegexPatternSetId = schema.new({
            id = id.from(_N, "RegexPatternSet", "RegexPatternSetId"),
            type = "string",
            name = "RegexPatternSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RegexPatternSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        RegexPatternStrings = schema.new({
            id = id.from(_N, "RegexPatternSet", "RegexPatternStrings"),
            type = "list",
            name = "RegexPatternStrings",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRegexPatternSetOutput = schema.new({
    id = id.from(_N, "CreateRegexPatternSetResponse"),
    type = "structure",
    members = {
        RegexPatternSet = schema.new({
            id = id.from(_N, "CreateRegexPatternSetOutput", "RegexPatternSet"),
            type = "structure",
            name = "RegexPatternSet",
            target_id = id.from(_N, "RegexPatternSet"),
            target = M.RegexPatternSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRegexPatternSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRuleInput = schema.new({
    id = id.from(_N, "CreateRuleRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRuleInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "CreateRuleInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRuleInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRuleInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.Rule = schema.new({
    id = id.from(_N, "Rule"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "Rule", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "Rule", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "Rule", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        Predicates = schema.new({
            id = id.from(_N, "Rule", "Predicates"),
            type = "list",
            name = "Predicates",
            target_id = prelude.Document.id,
            list_member = M.Predicate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateRuleOutput = schema.new({
    id = id.from(_N, "CreateRuleResponse"),
    type = "structure",
    members = {
        Rule = schema.new({
            id = id.from(_N, "CreateRuleOutput", "Rule"),
            type = "structure",
            name = "Rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRuleOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRuleGroupInput = schema.new({
    id = id.from(_N, "CreateRuleGroupRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateRuleGroupInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "CreateRuleGroupInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRuleGroupInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateRuleGroupInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.RuleGroup = schema.new({
    id = id.from(_N, "RuleGroup"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "RuleGroup", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RuleGroup", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "RuleGroup", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateRuleGroupOutput = schema.new({
    id = id.from(_N, "CreateRuleGroupResponse"),
    type = "structure",
    members = {
        RuleGroup = schema.new({
            id = id.from(_N, "CreateRuleGroupOutput", "RuleGroup"),
            type = "structure",
            name = "RuleGroup",
            target_id = id.from(_N, "RuleGroup"),
            target = M.RuleGroup,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateRuleGroupOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSizeConstraintSetInput = schema.new({
    id = id.from(_N, "CreateSizeConstraintSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateSizeConstraintSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateSizeConstraintSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SizeConstraint = schema.new({
    id = id.from(_N, "SizeConstraint"),
    type = "structure",
    members = {
        FieldToMatch = schema.new({
            id = id.from(_N, "SizeConstraint", "FieldToMatch"),
            type = "structure",
            name = "FieldToMatch",
            target_id = id.from(_N, "FieldToMatch"),
            target = M.FieldToMatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TextTransformation = schema.new({
            id = id.from(_N, "SizeConstraint", "TextTransformation"),
            type = "string",
            name = "TextTransformation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "SizeConstraint", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Size = schema.new({
            id = id.from(_N, "SizeConstraint", "Size"),
            type = "long",
            name = "Size",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SizeConstraintSet = schema.new({
    id = id.from(_N, "SizeConstraintSet"),
    type = "structure",
    members = {
        SizeConstraintSetId = schema.new({
            id = id.from(_N, "SizeConstraintSet", "SizeConstraintSetId"),
            type = "string",
            name = "SizeConstraintSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "SizeConstraintSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SizeConstraints = schema.new({
            id = id.from(_N, "SizeConstraintSet", "SizeConstraints"),
            type = "list",
            name = "SizeConstraints",
            target_id = prelude.Document.id,
            list_member = M.SizeConstraint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSizeConstraintSetOutput = schema.new({
    id = id.from(_N, "CreateSizeConstraintSetResponse"),
    type = "structure",
    members = {
        SizeConstraintSet = schema.new({
            id = id.from(_N, "CreateSizeConstraintSetOutput", "SizeConstraintSet"),
            type = "structure",
            name = "SizeConstraintSet",
            target_id = id.from(_N, "SizeConstraintSet"),
            target = M.SizeConstraintSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateSizeConstraintSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSqlInjectionMatchSetInput = schema.new({
    id = id.from(_N, "CreateSqlInjectionMatchSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateSqlInjectionMatchSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateSqlInjectionMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SqlInjectionMatchTuple = schema.new({
    id = id.from(_N, "SqlInjectionMatchTuple"),
    type = "structure",
    members = {
        FieldToMatch = schema.new({
            id = id.from(_N, "SqlInjectionMatchTuple", "FieldToMatch"),
            type = "structure",
            name = "FieldToMatch",
            target_id = id.from(_N, "FieldToMatch"),
            target = M.FieldToMatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TextTransformation = schema.new({
            id = id.from(_N, "SqlInjectionMatchTuple", "TextTransformation"),
            type = "string",
            name = "TextTransformation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.SqlInjectionMatchSet = schema.new({
    id = id.from(_N, "SqlInjectionMatchSet"),
    type = "structure",
    members = {
        SqlInjectionMatchSetId = schema.new({
            id = id.from(_N, "SqlInjectionMatchSet", "SqlInjectionMatchSetId"),
            type = "string",
            name = "SqlInjectionMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "SqlInjectionMatchSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        SqlInjectionMatchTuples = schema.new({
            id = id.from(_N, "SqlInjectionMatchSet", "SqlInjectionMatchTuples"),
            type = "list",
            name = "SqlInjectionMatchTuples",
            target_id = prelude.Document.id,
            list_member = M.SqlInjectionMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSqlInjectionMatchSetOutput = schema.new({
    id = id.from(_N, "CreateSqlInjectionMatchSetResponse"),
    type = "structure",
    members = {
        SqlInjectionMatchSet = schema.new({
            id = id.from(_N, "CreateSqlInjectionMatchSetOutput", "SqlInjectionMatchSet"),
            type = "structure",
            name = "SqlInjectionMatchSet",
            target_id = id.from(_N, "SqlInjectionMatchSet"),
            target = M.SqlInjectionMatchSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateSqlInjectionMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWebACLInput = schema.new({
    id = id.from(_N, "CreateWebACLRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateWebACLInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "CreateWebACLInput", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DefaultAction = schema.new({
            id = id.from(_N, "CreateWebACLInput", "DefaultAction"),
            type = "structure",
            name = "DefaultAction",
            target_id = id.from(_N, "WafAction"),
            target = M.WafAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateWebACLInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Tags = schema.new({
            id = id.from(_N, "CreateWebACLInput", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.WebACL = schema.new({
    id = id.from(_N, "WebACL"),
    type = "structure",
    members = {
        WebACLId = schema.new({
            id = id.from(_N, "WebACL", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "WebACL", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "WebACL", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        DefaultAction = schema.new({
            id = id.from(_N, "WebACL", "DefaultAction"),
            type = "structure",
            name = "DefaultAction",
            target_id = id.from(_N, "WafAction"),
            target = M.WafAction,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Rules = schema.new({
            id = id.from(_N, "WebACL", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.ActivatedRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        WebACLArn = schema.new({
            id = id.from(_N, "WebACL", "WebACLArn"),
            type = "string",
            name = "WebACLArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWebACLOutput = schema.new({
    id = id.from(_N, "CreateWebACLResponse"),
    type = "structure",
    members = {
        WebACL = schema.new({
            id = id.from(_N, "CreateWebACLOutput", "WebACL"),
            type = "structure",
            name = "WebACL",
            target_id = id.from(_N, "WebACL"),
            target = M.WebACL,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateWebACLOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateWebACLMigrationStackInput = schema.new({
    id = id.from(_N, "CreateWebACLMigrationStackRequest"),
    type = "structure",
    members = {
        WebACLId = schema.new({
            id = id.from(_N, "CreateWebACLMigrationStackInput", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        S3BucketName = schema.new({
            id = id.from(_N, "CreateWebACLMigrationStackInput", "S3BucketName"),
            type = "string",
            name = "S3BucketName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IgnoreUnsupportedType = schema.new({
            id = id.from(_N, "CreateWebACLMigrationStackInput", "IgnoreUnsupportedType"),
            type = "boolean",
            name = "IgnoreUnsupportedType",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateWebACLMigrationStackOutput = schema.new({
    id = id.from(_N, "CreateWebACLMigrationStackResponse"),
    type = "structure",
    members = {
        S3ObjectUrl = schema.new({
            id = id.from(_N, "CreateWebACLMigrationStackOutput", "S3ObjectUrl"),
            type = "string",
            name = "S3ObjectUrl",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.WAFEntityMigrationException = schema.new({
    id = id.from(_N, "WAFEntityMigrationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFEntityMigrationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
        MigrationErrorType = schema.new({
            id = id.from(_N, "WAFEntityMigrationException", "MigrationErrorType"),
            type = "string",
            name = "MigrationErrorType",
            target_id = prelude.String.id,
        }),
        MigrationErrorReason = schema.new({
            id = id.from(_N, "WAFEntityMigrationException", "MigrationErrorReason"),
            type = "string",
            name = "MigrationErrorReason",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFInvalidOperationException = schema.new({
    id = id.from(_N, "WAFInvalidOperationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFInvalidOperationException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFNonexistentItemException = schema.new({
    id = id.from(_N, "WAFNonexistentItemException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFNonexistentItemException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateXssMatchSetInput = schema.new({
    id = id.from(_N, "CreateXssMatchSetRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateXssMatchSetInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateXssMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.XssMatchTuple = schema.new({
    id = id.from(_N, "XssMatchTuple"),
    type = "structure",
    members = {
        FieldToMatch = schema.new({
            id = id.from(_N, "XssMatchTuple", "FieldToMatch"),
            type = "structure",
            name = "FieldToMatch",
            target_id = id.from(_N, "FieldToMatch"),
            target = M.FieldToMatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TextTransformation = schema.new({
            id = id.from(_N, "XssMatchTuple", "TextTransformation"),
            type = "string",
            name = "TextTransformation",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.XssMatchSet = schema.new({
    id = id.from(_N, "XssMatchSet"),
    type = "structure",
    members = {
        XssMatchSetId = schema.new({
            id = id.from(_N, "XssMatchSet", "XssMatchSetId"),
            type = "string",
            name = "XssMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "XssMatchSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        XssMatchTuples = schema.new({
            id = id.from(_N, "XssMatchSet", "XssMatchTuples"),
            type = "list",
            name = "XssMatchTuples",
            target_id = prelude.Document.id,
            list_member = M.XssMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateXssMatchSetOutput = schema.new({
    id = id.from(_N, "CreateXssMatchSetResponse"),
    type = "structure",
    members = {
        XssMatchSet = schema.new({
            id = id.from(_N, "CreateXssMatchSetOutput", "XssMatchSet"),
            type = "structure",
            name = "XssMatchSet",
            target_id = id.from(_N, "XssMatchSet"),
            target = M.XssMatchSet,
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "CreateXssMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteByteMatchSetInput = schema.new({
    id = id.from(_N, "DeleteByteMatchSetRequest"),
    type = "structure",
    members = {
        ByteMatchSetId = schema.new({
            id = id.from(_N, "DeleteByteMatchSetInput", "ByteMatchSetId"),
            type = "string",
            name = "ByteMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteByteMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteByteMatchSetOutput = schema.new({
    id = id.from(_N, "DeleteByteMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteByteMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFNonEmptyEntityException = schema.new({
    id = id.from(_N, "WAFNonEmptyEntityException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFNonEmptyEntityException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFReferencedItemException = schema.new({
    id = id.from(_N, "WAFReferencedItemException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFReferencedItemException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteGeoMatchSetInput = schema.new({
    id = id.from(_N, "DeleteGeoMatchSetRequest"),
    type = "structure",
    members = {
        GeoMatchSetId = schema.new({
            id = id.from(_N, "DeleteGeoMatchSetInput", "GeoMatchSetId"),
            type = "string",
            name = "GeoMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteGeoMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteGeoMatchSetOutput = schema.new({
    id = id.from(_N, "DeleteGeoMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteGeoMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteIPSetInput = schema.new({
    id = id.from(_N, "DeleteIPSetRequest"),
    type = "structure",
    members = {
        IPSetId = schema.new({
            id = id.from(_N, "DeleteIPSetInput", "IPSetId"),
            type = "string",
            name = "IPSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteIPSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteIPSetOutput = schema.new({
    id = id.from(_N, "DeleteIPSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteIPSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteLoggingConfigurationInput = schema.new({
    id = id.from(_N, "DeleteLoggingConfigurationRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeleteLoggingConfigurationInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "DeleteLoggingConfigurationResponse"),
    type = "structure",
})

M.DeletePermissionPolicyInput = schema.new({
    id = id.from(_N, "DeletePermissionPolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "DeletePermissionPolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeletePermissionPolicyOutput = schema.new({
    id = id.from(_N, "DeletePermissionPolicyResponse"),
    type = "structure",
})

M.DeleteRateBasedRuleInput = schema.new({
    id = id.from(_N, "DeleteRateBasedRuleRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "DeleteRateBasedRuleInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRateBasedRuleInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRateBasedRuleOutput = schema.new({
    id = id.from(_N, "DeleteRateBasedRuleResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRateBasedRuleOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRegexMatchSetInput = schema.new({
    id = id.from(_N, "DeleteRegexMatchSetRequest"),
    type = "structure",
    members = {
        RegexMatchSetId = schema.new({
            id = id.from(_N, "DeleteRegexMatchSetInput", "RegexMatchSetId"),
            type = "string",
            name = "RegexMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRegexMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegexMatchSetOutput = schema.new({
    id = id.from(_N, "DeleteRegexMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRegexMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRegexPatternSetInput = schema.new({
    id = id.from(_N, "DeleteRegexPatternSetRequest"),
    type = "structure",
    members = {
        RegexPatternSetId = schema.new({
            id = id.from(_N, "DeleteRegexPatternSetInput", "RegexPatternSetId"),
            type = "string",
            name = "RegexPatternSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRegexPatternSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRegexPatternSetOutput = schema.new({
    id = id.from(_N, "DeleteRegexPatternSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRegexPatternSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRuleInput = schema.new({
    id = id.from(_N, "DeleteRuleRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "DeleteRuleInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRuleInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRuleOutput = schema.new({
    id = id.from(_N, "DeleteRuleResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRuleOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteRuleGroupInput = schema.new({
    id = id.from(_N, "DeleteRuleGroupRequest"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "DeleteRuleGroupInput", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRuleGroupInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteRuleGroupOutput = schema.new({
    id = id.from(_N, "DeleteRuleGroupResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteRuleGroupOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSizeConstraintSetInput = schema.new({
    id = id.from(_N, "DeleteSizeConstraintSetRequest"),
    type = "structure",
    members = {
        SizeConstraintSetId = schema.new({
            id = id.from(_N, "DeleteSizeConstraintSetInput", "SizeConstraintSetId"),
            type = "string",
            name = "SizeConstraintSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteSizeConstraintSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSizeConstraintSetOutput = schema.new({
    id = id.from(_N, "DeleteSizeConstraintSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteSizeConstraintSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteSqlInjectionMatchSetInput = schema.new({
    id = id.from(_N, "DeleteSqlInjectionMatchSetRequest"),
    type = "structure",
    members = {
        SqlInjectionMatchSetId = schema.new({
            id = id.from(_N, "DeleteSqlInjectionMatchSetInput", "SqlInjectionMatchSetId"),
            type = "string",
            name = "SqlInjectionMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteSqlInjectionMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteSqlInjectionMatchSetOutput = schema.new({
    id = id.from(_N, "DeleteSqlInjectionMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteSqlInjectionMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteWebACLInput = schema.new({
    id = id.from(_N, "DeleteWebACLRequest"),
    type = "structure",
    members = {
        WebACLId = schema.new({
            id = id.from(_N, "DeleteWebACLInput", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteWebACLInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteWebACLOutput = schema.new({
    id = id.from(_N, "DeleteWebACLResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteWebACLOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteXssMatchSetInput = schema.new({
    id = id.from(_N, "DeleteXssMatchSetRequest"),
    type = "structure",
    members = {
        XssMatchSetId = schema.new({
            id = id.from(_N, "DeleteXssMatchSetInput", "XssMatchSetId"),
            type = "string",
            name = "XssMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteXssMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteXssMatchSetOutput = schema.new({
    id = id.from(_N, "DeleteXssMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "DeleteXssMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetByteMatchSetInput = schema.new({
    id = id.from(_N, "GetByteMatchSetRequest"),
    type = "structure",
    members = {
        ByteMatchSetId = schema.new({
            id = id.from(_N, "GetByteMatchSetInput", "ByteMatchSetId"),
            type = "string",
            name = "ByteMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetByteMatchSetOutput = schema.new({
    id = id.from(_N, "GetByteMatchSetResponse"),
    type = "structure",
    members = {
        ByteMatchSet = schema.new({
            id = id.from(_N, "GetByteMatchSetOutput", "ByteMatchSet"),
            type = "structure",
            name = "ByteMatchSet",
            target_id = id.from(_N, "ByteMatchSet"),
            target = M.ByteMatchSet,
        }),
    },
})

M.GetChangeTokenInput = schema.new({
    id = id.from(_N, "GetChangeTokenRequest"),
    type = "structure",
})

M.GetChangeTokenOutput = schema.new({
    id = id.from(_N, "GetChangeTokenResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "GetChangeTokenOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.GetChangeTokenStatusInput = schema.new({
    id = id.from(_N, "GetChangeTokenStatusRequest"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "GetChangeTokenStatusInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetChangeTokenStatusOutput = schema.new({
    id = id.from(_N, "GetChangeTokenStatusResponse"),
    type = "structure",
    members = {
        ChangeTokenStatus = schema.new({
            id = id.from(_N, "GetChangeTokenStatusOutput", "ChangeTokenStatus"),
            type = "string",
            name = "ChangeTokenStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGeoMatchSetInput = schema.new({
    id = id.from(_N, "GetGeoMatchSetRequest"),
    type = "structure",
    members = {
        GeoMatchSetId = schema.new({
            id = id.from(_N, "GetGeoMatchSetInput", "GeoMatchSetId"),
            type = "string",
            name = "GeoMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGeoMatchSetOutput = schema.new({
    id = id.from(_N, "GetGeoMatchSetResponse"),
    type = "structure",
    members = {
        GeoMatchSet = schema.new({
            id = id.from(_N, "GetGeoMatchSetOutput", "GeoMatchSet"),
            type = "structure",
            name = "GeoMatchSet",
            target_id = id.from(_N, "GeoMatchSet"),
            target = M.GeoMatchSet,
        }),
    },
})

M.GetIPSetInput = schema.new({
    id = id.from(_N, "GetIPSetRequest"),
    type = "structure",
    members = {
        IPSetId = schema.new({
            id = id.from(_N, "GetIPSetInput", "IPSetId"),
            type = "string",
            name = "IPSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetIPSetOutput = schema.new({
    id = id.from(_N, "GetIPSetResponse"),
    type = "structure",
    members = {
        IPSet = schema.new({
            id = id.from(_N, "GetIPSetOutput", "IPSet"),
            type = "structure",
            name = "IPSet",
            target_id = id.from(_N, "IPSet"),
            target = M.IPSet,
        }),
    },
})

M.GetLoggingConfigurationInput = schema.new({
    id = id.from(_N, "GetLoggingConfigurationRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetLoggingConfigurationInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LoggingConfiguration = schema.new({
    id = id.from(_N, "LoggingConfiguration"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "LoggingConfiguration", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LogDestinationConfigs = schema.new({
            id = id.from(_N, "LoggingConfiguration", "LogDestinationConfigs"),
            type = "list",
            name = "LogDestinationConfigs",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RedactedFields = schema.new({
            id = id.from(_N, "LoggingConfiguration", "RedactedFields"),
            type = "list",
            name = "RedactedFields",
            target_id = prelude.Document.id,
            list_member = M.FieldToMatch,
        }),
    },
})

M.GetLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "GetLoggingConfigurationResponse"),
    type = "structure",
    members = {
        LoggingConfiguration = schema.new({
            id = id.from(_N, "GetLoggingConfigurationOutput", "LoggingConfiguration"),
            type = "structure",
            name = "LoggingConfiguration",
            target_id = id.from(_N, "LoggingConfiguration"),
            target = M.LoggingConfiguration,
        }),
    },
})

M.GetPermissionPolicyInput = schema.new({
    id = id.from(_N, "GetPermissionPolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "GetPermissionPolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetPermissionPolicyOutput = schema.new({
    id = id.from(_N, "GetPermissionPolicyResponse"),
    type = "structure",
    members = {
        Policy = schema.new({
            id = id.from(_N, "GetPermissionPolicyOutput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRateBasedRuleInput = schema.new({
    id = id.from(_N, "GetRateBasedRuleRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "GetRateBasedRuleInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRateBasedRuleOutput = schema.new({
    id = id.from(_N, "GetRateBasedRuleResponse"),
    type = "structure",
    members = {
        Rule = schema.new({
            id = id.from(_N, "GetRateBasedRuleOutput", "Rule"),
            type = "structure",
            name = "Rule",
            target_id = id.from(_N, "RateBasedRule"),
            target = M.RateBasedRule,
        }),
    },
})

M.GetRateBasedRuleManagedKeysInput = schema.new({
    id = id.from(_N, "GetRateBasedRuleManagedKeysRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "GetRateBasedRuleManagedKeysInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "GetRateBasedRuleManagedKeysInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRateBasedRuleManagedKeysOutput = schema.new({
    id = id.from(_N, "GetRateBasedRuleManagedKeysResponse"),
    type = "structure",
    members = {
        ManagedKeys = schema.new({
            id = id.from(_N, "GetRateBasedRuleManagedKeysOutput", "ManagedKeys"),
            type = "list",
            name = "ManagedKeys",
            target_id = prelude.Document.id,
            list_member = prelude.String,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "GetRateBasedRuleManagedKeysOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRegexMatchSetInput = schema.new({
    id = id.from(_N, "GetRegexMatchSetRequest"),
    type = "structure",
    members = {
        RegexMatchSetId = schema.new({
            id = id.from(_N, "GetRegexMatchSetInput", "RegexMatchSetId"),
            type = "string",
            name = "RegexMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRegexMatchSetOutput = schema.new({
    id = id.from(_N, "GetRegexMatchSetResponse"),
    type = "structure",
    members = {
        RegexMatchSet = schema.new({
            id = id.from(_N, "GetRegexMatchSetOutput", "RegexMatchSet"),
            type = "structure",
            name = "RegexMatchSet",
            target_id = id.from(_N, "RegexMatchSet"),
            target = M.RegexMatchSet,
        }),
    },
})

M.GetRegexPatternSetInput = schema.new({
    id = id.from(_N, "GetRegexPatternSetRequest"),
    type = "structure",
    members = {
        RegexPatternSetId = schema.new({
            id = id.from(_N, "GetRegexPatternSetInput", "RegexPatternSetId"),
            type = "string",
            name = "RegexPatternSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRegexPatternSetOutput = schema.new({
    id = id.from(_N, "GetRegexPatternSetResponse"),
    type = "structure",
    members = {
        RegexPatternSet = schema.new({
            id = id.from(_N, "GetRegexPatternSetOutput", "RegexPatternSet"),
            type = "structure",
            name = "RegexPatternSet",
            target_id = id.from(_N, "RegexPatternSet"),
            target = M.RegexPatternSet,
        }),
    },
})

M.GetRuleInput = schema.new({
    id = id.from(_N, "GetRuleRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "GetRuleInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRuleOutput = schema.new({
    id = id.from(_N, "GetRuleResponse"),
    type = "structure",
    members = {
        Rule = schema.new({
            id = id.from(_N, "GetRuleOutput", "Rule"),
            type = "structure",
            name = "Rule",
            target_id = id.from(_N, "Rule"),
            target = M.Rule,
        }),
    },
})

M.GetRuleGroupInput = schema.new({
    id = id.from(_N, "GetRuleGroupRequest"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "GetRuleGroupInput", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetRuleGroupOutput = schema.new({
    id = id.from(_N, "GetRuleGroupResponse"),
    type = "structure",
    members = {
        RuleGroup = schema.new({
            id = id.from(_N, "GetRuleGroupOutput", "RuleGroup"),
            type = "structure",
            name = "RuleGroup",
            target_id = id.from(_N, "RuleGroup"),
            target = M.RuleGroup,
        }),
    },
})

M.TimeWindow = schema.new({
    id = id.from(_N, "TimeWindow"),
    type = "structure",
    members = {
        StartTime = schema.new({
            id = id.from(_N, "TimeWindow", "StartTime"),
            type = "timestamp",
            name = "StartTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EndTime = schema.new({
            id = id.from(_N, "TimeWindow", "EndTime"),
            type = "timestamp",
            name = "EndTime",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSampledRequestsInput = schema.new({
    id = id.from(_N, "GetSampledRequestsRequest"),
    type = "structure",
    members = {
        WebAclId = schema.new({
            id = id.from(_N, "GetSampledRequestsInput", "WebAclId"),
            type = "string",
            name = "WebAclId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RuleId = schema.new({
            id = id.from(_N, "GetSampledRequestsInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TimeWindow = schema.new({
            id = id.from(_N, "GetSampledRequestsInput", "TimeWindow"),
            type = "structure",
            name = "TimeWindow",
            target_id = id.from(_N, "TimeWindow"),
            target = M.TimeWindow,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "GetSampledRequestsInput", "MaxItems"),
            type = "long",
            name = "MaxItems",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HTTPHeader = schema.new({
    id = id.from(_N, "HTTPHeader"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "HTTPHeader", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "HTTPHeader", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.HTTPRequest = schema.new({
    id = id.from(_N, "HTTPRequest"),
    type = "structure",
    members = {
        ClientIP = schema.new({
            id = id.from(_N, "HTTPRequest", "ClientIP"),
            type = "string",
            name = "ClientIP",
            target_id = prelude.String.id,
        }),
        Country = schema.new({
            id = id.from(_N, "HTTPRequest", "Country"),
            type = "string",
            name = "Country",
            target_id = prelude.String.id,
        }),
        URI = schema.new({
            id = id.from(_N, "HTTPRequest", "URI"),
            type = "string",
            name = "URI",
            target_id = prelude.String.id,
        }),
        Method = schema.new({
            id = id.from(_N, "HTTPRequest", "Method"),
            type = "string",
            name = "Method",
            target_id = prelude.String.id,
        }),
        HTTPVersion = schema.new({
            id = id.from(_N, "HTTPRequest", "HTTPVersion"),
            type = "string",
            name = "HTTPVersion",
            target_id = prelude.String.id,
        }),
        Headers = schema.new({
            id = id.from(_N, "HTTPRequest", "Headers"),
            type = "list",
            name = "Headers",
            target_id = prelude.Document.id,
            list_member = M.HTTPHeader,
        }),
    },
})

M.SampledHTTPRequest = schema.new({
    id = id.from(_N, "SampledHTTPRequest"),
    type = "structure",
    members = {
        Request = schema.new({
            id = id.from(_N, "SampledHTTPRequest", "Request"),
            type = "structure",
            name = "Request",
            target_id = id.from(_N, "HTTPRequest"),
            target = M.HTTPRequest,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Weight = schema.new({
            id = id.from(_N, "SampledHTTPRequest", "Weight"),
            type = "long",
            name = "Weight",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        Timestamp = schema.new({
            id = id.from(_N, "SampledHTTPRequest", "Timestamp"),
            type = "timestamp",
            name = "Timestamp",
            target_id = prelude.Timestamp.id,
        }),
        Action = schema.new({
            id = id.from(_N, "SampledHTTPRequest", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
        }),
        RuleWithinRuleGroup = schema.new({
            id = id.from(_N, "SampledHTTPRequest", "RuleWithinRuleGroup"),
            type = "string",
            name = "RuleWithinRuleGroup",
            target_id = prelude.String.id,
        }),
    },
})

M.GetSampledRequestsOutput = schema.new({
    id = id.from(_N, "GetSampledRequestsResponse"),
    type = "structure",
    members = {
        SampledRequests = schema.new({
            id = id.from(_N, "GetSampledRequestsOutput", "SampledRequests"),
            type = "list",
            name = "SampledRequests",
            target_id = prelude.Document.id,
            list_member = M.SampledHTTPRequest,
        }),
        PopulationSize = schema.new({
            id = id.from(_N, "GetSampledRequestsOutput", "PopulationSize"),
            type = "long",
            name = "PopulationSize",
            target_id = prelude.Long.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        TimeWindow = schema.new({
            id = id.from(_N, "GetSampledRequestsOutput", "TimeWindow"),
            type = "structure",
            name = "TimeWindow",
            target_id = id.from(_N, "TimeWindow"),
            target = M.TimeWindow,
        }),
    },
})

M.GetSizeConstraintSetInput = schema.new({
    id = id.from(_N, "GetSizeConstraintSetRequest"),
    type = "structure",
    members = {
        SizeConstraintSetId = schema.new({
            id = id.from(_N, "GetSizeConstraintSetInput", "SizeConstraintSetId"),
            type = "string",
            name = "SizeConstraintSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSizeConstraintSetOutput = schema.new({
    id = id.from(_N, "GetSizeConstraintSetResponse"),
    type = "structure",
    members = {
        SizeConstraintSet = schema.new({
            id = id.from(_N, "GetSizeConstraintSetOutput", "SizeConstraintSet"),
            type = "structure",
            name = "SizeConstraintSet",
            target_id = id.from(_N, "SizeConstraintSet"),
            target = M.SizeConstraintSet,
        }),
    },
})

M.GetSqlInjectionMatchSetInput = schema.new({
    id = id.from(_N, "GetSqlInjectionMatchSetRequest"),
    type = "structure",
    members = {
        SqlInjectionMatchSetId = schema.new({
            id = id.from(_N, "GetSqlInjectionMatchSetInput", "SqlInjectionMatchSetId"),
            type = "string",
            name = "SqlInjectionMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetSqlInjectionMatchSetOutput = schema.new({
    id = id.from(_N, "GetSqlInjectionMatchSetResponse"),
    type = "structure",
    members = {
        SqlInjectionMatchSet = schema.new({
            id = id.from(_N, "GetSqlInjectionMatchSetOutput", "SqlInjectionMatchSet"),
            type = "structure",
            name = "SqlInjectionMatchSet",
            target_id = id.from(_N, "SqlInjectionMatchSet"),
            target = M.SqlInjectionMatchSet,
        }),
    },
})

M.GetWebACLInput = schema.new({
    id = id.from(_N, "GetWebACLRequest"),
    type = "structure",
    members = {
        WebACLId = schema.new({
            id = id.from(_N, "GetWebACLInput", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetWebACLOutput = schema.new({
    id = id.from(_N, "GetWebACLResponse"),
    type = "structure",
    members = {
        WebACL = schema.new({
            id = id.from(_N, "GetWebACLOutput", "WebACL"),
            type = "structure",
            name = "WebACL",
            target_id = id.from(_N, "WebACL"),
            target = M.WebACL,
        }),
    },
})

M.GetXssMatchSetInput = schema.new({
    id = id.from(_N, "GetXssMatchSetRequest"),
    type = "structure",
    members = {
        XssMatchSetId = schema.new({
            id = id.from(_N, "GetXssMatchSetInput", "XssMatchSetId"),
            type = "string",
            name = "XssMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetXssMatchSetOutput = schema.new({
    id = id.from(_N, "GetXssMatchSetResponse"),
    type = "structure",
    members = {
        XssMatchSet = schema.new({
            id = id.from(_N, "GetXssMatchSetOutput", "XssMatchSet"),
            type = "structure",
            name = "XssMatchSet",
            target_id = id.from(_N, "XssMatchSet"),
            target = M.XssMatchSet,
        }),
    },
})

M.ListActivatedRulesInRuleGroupInput = schema.new({
    id = id.from(_N, "ListActivatedRulesInRuleGroupRequest"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "ListActivatedRulesInRuleGroupInput", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListActivatedRulesInRuleGroupInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListActivatedRulesInRuleGroupInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListActivatedRulesInRuleGroupOutput = schema.new({
    id = id.from(_N, "ListActivatedRulesInRuleGroupResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListActivatedRulesInRuleGroupOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        ActivatedRules = schema.new({
            id = id.from(_N, "ListActivatedRulesInRuleGroupOutput", "ActivatedRules"),
            type = "list",
            name = "ActivatedRules",
            target_id = prelude.Document.id,
            list_member = M.ActivatedRule,
        }),
    },
})

M.ListByteMatchSetsInput = schema.new({
    id = id.from(_N, "ListByteMatchSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListByteMatchSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListByteMatchSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ByteMatchSetSummary = schema.new({
    id = id.from(_N, "ByteMatchSetSummary"),
    type = "structure",
    members = {
        ByteMatchSetId = schema.new({
            id = id.from(_N, "ByteMatchSetSummary", "ByteMatchSetId"),
            type = "string",
            name = "ByteMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ByteMatchSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListByteMatchSetsOutput = schema.new({
    id = id.from(_N, "ListByteMatchSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListByteMatchSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        ByteMatchSets = schema.new({
            id = id.from(_N, "ListByteMatchSetsOutput", "ByteMatchSets"),
            type = "list",
            name = "ByteMatchSets",
            target_id = prelude.Document.id,
            list_member = M.ByteMatchSetSummary,
        }),
    },
})

M.ListGeoMatchSetsInput = schema.new({
    id = id.from(_N, "ListGeoMatchSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListGeoMatchSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListGeoMatchSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GeoMatchSetSummary = schema.new({
    id = id.from(_N, "GeoMatchSetSummary"),
    type = "structure",
    members = {
        GeoMatchSetId = schema.new({
            id = id.from(_N, "GeoMatchSetSummary", "GeoMatchSetId"),
            type = "string",
            name = "GeoMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "GeoMatchSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListGeoMatchSetsOutput = schema.new({
    id = id.from(_N, "ListGeoMatchSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListGeoMatchSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        GeoMatchSets = schema.new({
            id = id.from(_N, "ListGeoMatchSetsOutput", "GeoMatchSets"),
            type = "list",
            name = "GeoMatchSets",
            target_id = prelude.Document.id,
            list_member = M.GeoMatchSetSummary,
        }),
    },
})

M.ListIPSetsInput = schema.new({
    id = id.from(_N, "ListIPSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListIPSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListIPSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.IPSetSummary = schema.new({
    id = id.from(_N, "IPSetSummary"),
    type = "structure",
    members = {
        IPSetId = schema.new({
            id = id.from(_N, "IPSetSummary", "IPSetId"),
            type = "string",
            name = "IPSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "IPSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListIPSetsOutput = schema.new({
    id = id.from(_N, "ListIPSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListIPSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        IPSets = schema.new({
            id = id.from(_N, "ListIPSetsOutput", "IPSets"),
            type = "list",
            name = "IPSets",
            target_id = prelude.Document.id,
            list_member = M.IPSetSummary,
        }),
    },
})

M.ListLoggingConfigurationsInput = schema.new({
    id = id.from(_N, "ListLoggingConfigurationsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListLoggingConfigurationsOutput = schema.new({
    id = id.from(_N, "ListLoggingConfigurationsResponse"),
    type = "structure",
    members = {
        LoggingConfigurations = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsOutput", "LoggingConfigurations"),
            type = "list",
            name = "LoggingConfigurations",
            target_id = prelude.Document.id,
            list_member = M.LoggingConfiguration,
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListLoggingConfigurationsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRateBasedRulesInput = schema.new({
    id = id.from(_N, "ListRateBasedRulesRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRateBasedRulesInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListRateBasedRulesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RuleSummary = schema.new({
    id = id.from(_N, "RuleSummary"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "RuleSummary", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RuleSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRateBasedRulesOutput = schema.new({
    id = id.from(_N, "ListRateBasedRulesResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRateBasedRulesOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "ListRateBasedRulesOutput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.RuleSummary,
        }),
    },
})

M.ListRegexMatchSetsInput = schema.new({
    id = id.from(_N, "ListRegexMatchSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRegexMatchSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListRegexMatchSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RegexMatchSetSummary = schema.new({
    id = id.from(_N, "RegexMatchSetSummary"),
    type = "structure",
    members = {
        RegexMatchSetId = schema.new({
            id = id.from(_N, "RegexMatchSetSummary", "RegexMatchSetId"),
            type = "string",
            name = "RegexMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RegexMatchSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRegexMatchSetsOutput = schema.new({
    id = id.from(_N, "ListRegexMatchSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRegexMatchSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        RegexMatchSets = schema.new({
            id = id.from(_N, "ListRegexMatchSetsOutput", "RegexMatchSets"),
            type = "list",
            name = "RegexMatchSets",
            target_id = prelude.Document.id,
            list_member = M.RegexMatchSetSummary,
        }),
    },
})

M.ListRegexPatternSetsInput = schema.new({
    id = id.from(_N, "ListRegexPatternSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRegexPatternSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListRegexPatternSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RegexPatternSetSummary = schema.new({
    id = id.from(_N, "RegexPatternSetSummary"),
    type = "structure",
    members = {
        RegexPatternSetId = schema.new({
            id = id.from(_N, "RegexPatternSetSummary", "RegexPatternSetId"),
            type = "string",
            name = "RegexPatternSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RegexPatternSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRegexPatternSetsOutput = schema.new({
    id = id.from(_N, "ListRegexPatternSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRegexPatternSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        RegexPatternSets = schema.new({
            id = id.from(_N, "ListRegexPatternSetsOutput", "RegexPatternSets"),
            type = "list",
            name = "RegexPatternSets",
            target_id = prelude.Document.id,
            list_member = M.RegexPatternSetSummary,
        }),
    },
})

M.ListRuleGroupsInput = schema.new({
    id = id.from(_N, "ListRuleGroupsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRuleGroupsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListRuleGroupsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.RuleGroupSummary = schema.new({
    id = id.from(_N, "RuleGroupSummary"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "RuleGroupSummary", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "RuleGroupSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListRuleGroupsOutput = schema.new({
    id = id.from(_N, "ListRuleGroupsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRuleGroupsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        RuleGroups = schema.new({
            id = id.from(_N, "ListRuleGroupsOutput", "RuleGroups"),
            type = "list",
            name = "RuleGroups",
            target_id = prelude.Document.id,
            list_member = M.RuleGroupSummary,
        }),
    },
})

M.ListRulesInput = schema.new({
    id = id.from(_N, "ListRulesRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRulesInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListRulesInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.ListRulesOutput = schema.new({
    id = id.from(_N, "ListRulesResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListRulesOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Rules = schema.new({
            id = id.from(_N, "ListRulesOutput", "Rules"),
            type = "list",
            name = "Rules",
            target_id = prelude.Document.id,
            list_member = M.RuleSummary,
        }),
    },
})

M.ListSizeConstraintSetsInput = schema.new({
    id = id.from(_N, "ListSizeConstraintSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListSizeConstraintSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListSizeConstraintSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SizeConstraintSetSummary = schema.new({
    id = id.from(_N, "SizeConstraintSetSummary"),
    type = "structure",
    members = {
        SizeConstraintSetId = schema.new({
            id = id.from(_N, "SizeConstraintSetSummary", "SizeConstraintSetId"),
            type = "string",
            name = "SizeConstraintSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "SizeConstraintSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSizeConstraintSetsOutput = schema.new({
    id = id.from(_N, "ListSizeConstraintSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListSizeConstraintSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        SizeConstraintSets = schema.new({
            id = id.from(_N, "ListSizeConstraintSetsOutput", "SizeConstraintSets"),
            type = "list",
            name = "SizeConstraintSets",
            target_id = prelude.Document.id,
            list_member = M.SizeConstraintSetSummary,
        }),
    },
})

M.ListSqlInjectionMatchSetsInput = schema.new({
    id = id.from(_N, "ListSqlInjectionMatchSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListSqlInjectionMatchSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListSqlInjectionMatchSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SqlInjectionMatchSetSummary = schema.new({
    id = id.from(_N, "SqlInjectionMatchSetSummary"),
    type = "structure",
    members = {
        SqlInjectionMatchSetId = schema.new({
            id = id.from(_N, "SqlInjectionMatchSetSummary", "SqlInjectionMatchSetId"),
            type = "string",
            name = "SqlInjectionMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "SqlInjectionMatchSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSqlInjectionMatchSetsOutput = schema.new({
    id = id.from(_N, "ListSqlInjectionMatchSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListSqlInjectionMatchSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        SqlInjectionMatchSets = schema.new({
            id = id.from(_N, "ListSqlInjectionMatchSetsOutput", "SqlInjectionMatchSets"),
            type = "list",
            name = "SqlInjectionMatchSets",
            target_id = prelude.Document.id,
            list_member = M.SqlInjectionMatchSetSummary,
        }),
    },
})

M.ListSubscribedRuleGroupsInput = schema.new({
    id = id.from(_N, "ListSubscribedRuleGroupsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListSubscribedRuleGroupsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListSubscribedRuleGroupsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.SubscribedRuleGroupSummary = schema.new({
    id = id.from(_N, "SubscribedRuleGroupSummary"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "SubscribedRuleGroupSummary", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "SubscribedRuleGroupSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "SubscribedRuleGroupSummary", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListSubscribedRuleGroupsOutput = schema.new({
    id = id.from(_N, "ListSubscribedRuleGroupsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListSubscribedRuleGroupsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        RuleGroups = schema.new({
            id = id.from(_N, "ListSubscribedRuleGroupsOutput", "RuleGroups"),
            type = "list",
            name = "RuleGroups",
            target_id = prelude.Document.id,
            list_member = M.SubscribedRuleGroupSummary,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
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

M.TagInfoForResource = schema.new({
    id = id.from(_N, "TagInfoForResource"),
    type = "structure",
    members = {
        ResourceARN = schema.new({
            id = id.from(_N, "TagInfoForResource", "ResourceARN"),
            type = "string",
            name = "ResourceARN",
            target_id = prelude.String.id,
        }),
        TagList = schema.new({
            id = id.from(_N, "TagInfoForResource", "TagList"),
            type = "list",
            name = "TagList",
            target_id = prelude.Document.id,
            list_member = M.Tag,
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        TagInfoForResource = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "TagInfoForResource"),
            type = "structure",
            name = "TagInfoForResource",
            target_id = id.from(_N, "TagInfoForResource"),
            target = M.TagInfoForResource,
        }),
    },
})

M.ListWebACLsInput = schema.new({
    id = id.from(_N, "ListWebACLsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListWebACLsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListWebACLsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.WebACLSummary = schema.new({
    id = id.from(_N, "WebACLSummary"),
    type = "structure",
    members = {
        WebACLId = schema.new({
            id = id.from(_N, "WebACLSummary", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "WebACLSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListWebACLsOutput = schema.new({
    id = id.from(_N, "ListWebACLsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListWebACLsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        WebACLs = schema.new({
            id = id.from(_N, "ListWebACLsOutput", "WebACLs"),
            type = "list",
            name = "WebACLs",
            target_id = prelude.Document.id,
            list_member = M.WebACLSummary,
        }),
    },
})

M.ListXssMatchSetsInput = schema.new({
    id = id.from(_N, "ListXssMatchSetsRequest"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListXssMatchSetsInput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        Limit = schema.new({
            id = id.from(_N, "ListXssMatchSetsInput", "Limit"),
            type = "integer",
            name = "Limit",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.XssMatchSetSummary = schema.new({
    id = id.from(_N, "XssMatchSetSummary"),
    type = "structure",
    members = {
        XssMatchSetId = schema.new({
            id = id.from(_N, "XssMatchSetSummary", "XssMatchSetId"),
            type = "string",
            name = "XssMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "XssMatchSetSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListXssMatchSetsOutput = schema.new({
    id = id.from(_N, "ListXssMatchSetsResponse"),
    type = "structure",
    members = {
        NextMarker = schema.new({
            id = id.from(_N, "ListXssMatchSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        XssMatchSets = schema.new({
            id = id.from(_N, "ListXssMatchSetsOutput", "XssMatchSets"),
            type = "list",
            name = "XssMatchSets",
            target_id = prelude.Document.id,
            list_member = M.XssMatchSetSummary,
        }),
    },
})

M.PutLoggingConfigurationInput = schema.new({
    id = id.from(_N, "PutLoggingConfigurationRequest"),
    type = "structure",
    members = {
        LoggingConfiguration = schema.new({
            id = id.from(_N, "PutLoggingConfigurationInput", "LoggingConfiguration"),
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

M.PutLoggingConfigurationOutput = schema.new({
    id = id.from(_N, "PutLoggingConfigurationResponse"),
    type = "structure",
    members = {
        LoggingConfiguration = schema.new({
            id = id.from(_N, "PutLoggingConfigurationOutput", "LoggingConfiguration"),
            type = "structure",
            name = "LoggingConfiguration",
            target_id = id.from(_N, "LoggingConfiguration"),
            target = M.LoggingConfiguration,
        }),
    },
})

M.WAFServiceLinkedRoleErrorException = schema.new({
    id = id.from(_N, "WAFServiceLinkedRoleErrorException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFServiceLinkedRoleErrorException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PutPermissionPolicyInput = schema.new({
    id = id.from(_N, "PutPermissionPolicyRequest"),
    type = "structure",
    members = {
        ResourceArn = schema.new({
            id = id.from(_N, "PutPermissionPolicyInput", "ResourceArn"),
            type = "string",
            name = "ResourceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Policy = schema.new({
            id = id.from(_N, "PutPermissionPolicyInput", "Policy"),
            type = "string",
            name = "Policy",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutPermissionPolicyOutput = schema.new({
    id = id.from(_N, "PutPermissionPolicyResponse"),
    type = "structure",
})

M.WAFInvalidPermissionPolicyException = schema.new({
    id = id.from(_N, "WAFInvalidPermissionPolicyException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFInvalidPermissionPolicyException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
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

M.ByteMatchSetUpdate = schema.new({
    id = id.from(_N, "ByteMatchSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "ByteMatchSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ByteMatchTuple = schema.new({
            id = id.from(_N, "ByteMatchSetUpdate", "ByteMatchTuple"),
            type = "structure",
            name = "ByteMatchTuple",
            target_id = id.from(_N, "ByteMatchTuple"),
            target = M.ByteMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateByteMatchSetInput = schema.new({
    id = id.from(_N, "UpdateByteMatchSetRequest"),
    type = "structure",
    members = {
        ByteMatchSetId = schema.new({
            id = id.from(_N, "UpdateByteMatchSetInput", "ByteMatchSetId"),
            type = "string",
            name = "ByteMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateByteMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateByteMatchSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.ByteMatchSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateByteMatchSetOutput = schema.new({
    id = id.from(_N, "UpdateByteMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateByteMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFNonexistentContainerException = schema.new({
    id = id.from(_N, "WAFNonexistentContainerException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFNonexistentContainerException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GeoMatchSetUpdate = schema.new({
    id = id.from(_N, "GeoMatchSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "GeoMatchSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        GeoMatchConstraint = schema.new({
            id = id.from(_N, "GeoMatchSetUpdate", "GeoMatchConstraint"),
            type = "structure",
            name = "GeoMatchConstraint",
            target_id = id.from(_N, "GeoMatchConstraint"),
            target = M.GeoMatchConstraint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGeoMatchSetInput = schema.new({
    id = id.from(_N, "UpdateGeoMatchSetRequest"),
    type = "structure",
    members = {
        GeoMatchSetId = schema.new({
            id = id.from(_N, "UpdateGeoMatchSetInput", "GeoMatchSetId"),
            type = "string",
            name = "GeoMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateGeoMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateGeoMatchSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.GeoMatchSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateGeoMatchSetOutput = schema.new({
    id = id.from(_N, "UpdateGeoMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateGeoMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.IPSetUpdate = schema.new({
    id = id.from(_N, "IPSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "IPSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IPSetDescriptor = schema.new({
            id = id.from(_N, "IPSetUpdate", "IPSetDescriptor"),
            type = "structure",
            name = "IPSetDescriptor",
            target_id = id.from(_N, "IPSetDescriptor"),
            target = M.IPSetDescriptor,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateIPSetInput = schema.new({
    id = id.from(_N, "UpdateIPSetRequest"),
    type = "structure",
    members = {
        IPSetId = schema.new({
            id = id.from(_N, "UpdateIPSetInput", "IPSetId"),
            type = "string",
            name = "IPSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateIPSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateIPSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.IPSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateIPSetOutput = schema.new({
    id = id.from(_N, "UpdateIPSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateIPSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RuleUpdate = schema.new({
    id = id.from(_N, "RuleUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "RuleUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Predicate = schema.new({
            id = id.from(_N, "RuleUpdate", "Predicate"),
            type = "structure",
            name = "Predicate",
            target_id = id.from(_N, "Predicate"),
            target = M.Predicate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRateBasedRuleInput = schema.new({
    id = id.from(_N, "UpdateRateBasedRuleRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "UpdateRateBasedRuleInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRateBasedRuleInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateRateBasedRuleInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.RuleUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RateLimit = schema.new({
            id = id.from(_N, "UpdateRateBasedRuleInput", "RateLimit"),
            type = "long",
            name = "RateLimit",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRateBasedRuleOutput = schema.new({
    id = id.from(_N, "UpdateRateBasedRuleResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRateBasedRuleOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegexMatchSetUpdate = schema.new({
    id = id.from(_N, "RegexMatchSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "RegexMatchSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegexMatchTuple = schema.new({
            id = id.from(_N, "RegexMatchSetUpdate", "RegexMatchTuple"),
            type = "structure",
            name = "RegexMatchTuple",
            target_id = id.from(_N, "RegexMatchTuple"),
            target = M.RegexMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRegexMatchSetInput = schema.new({
    id = id.from(_N, "UpdateRegexMatchSetRequest"),
    type = "structure",
    members = {
        RegexMatchSetId = schema.new({
            id = id.from(_N, "UpdateRegexMatchSetInput", "RegexMatchSetId"),
            type = "string",
            name = "RegexMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateRegexMatchSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.RegexMatchSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRegexMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRegexMatchSetOutput = schema.new({
    id = id.from(_N, "UpdateRegexMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRegexMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RegexPatternSetUpdate = schema.new({
    id = id.from(_N, "RegexPatternSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "RegexPatternSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RegexPatternString = schema.new({
            id = id.from(_N, "RegexPatternSetUpdate", "RegexPatternString"),
            type = "string",
            name = "RegexPatternString",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRegexPatternSetInput = schema.new({
    id = id.from(_N, "UpdateRegexPatternSetRequest"),
    type = "structure",
    members = {
        RegexPatternSetId = schema.new({
            id = id.from(_N, "UpdateRegexPatternSetInput", "RegexPatternSetId"),
            type = "string",
            name = "RegexPatternSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateRegexPatternSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.RegexPatternSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRegexPatternSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRegexPatternSetOutput = schema.new({
    id = id.from(_N, "UpdateRegexPatternSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRegexPatternSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFInvalidRegexPatternException = schema.new({
    id = id.from(_N, "WAFInvalidRegexPatternException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFInvalidRegexPatternException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateRuleInput = schema.new({
    id = id.from(_N, "UpdateRuleRequest"),
    type = "structure",
    members = {
        RuleId = schema.new({
            id = id.from(_N, "UpdateRuleInput", "RuleId"),
            type = "string",
            name = "RuleId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRuleInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateRuleInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.RuleUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRuleOutput = schema.new({
    id = id.from(_N, "UpdateRuleResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRuleOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.RuleGroupUpdate = schema.new({
    id = id.from(_N, "RuleGroupUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "RuleGroupUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActivatedRule = schema.new({
            id = id.from(_N, "RuleGroupUpdate", "ActivatedRule"),
            type = "structure",
            name = "ActivatedRule",
            target_id = id.from(_N, "ActivatedRule"),
            target = M.ActivatedRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRuleGroupInput = schema.new({
    id = id.from(_N, "UpdateRuleGroupRequest"),
    type = "structure",
    members = {
        RuleGroupId = schema.new({
            id = id.from(_N, "UpdateRuleGroupInput", "RuleGroupId"),
            type = "string",
            name = "RuleGroupId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateRuleGroupInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.RuleGroupUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRuleGroupInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateRuleGroupOutput = schema.new({
    id = id.from(_N, "UpdateRuleGroupResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateRuleGroupOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SizeConstraintSetUpdate = schema.new({
    id = id.from(_N, "SizeConstraintSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "SizeConstraintSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SizeConstraint = schema.new({
            id = id.from(_N, "SizeConstraintSetUpdate", "SizeConstraint"),
            type = "structure",
            name = "SizeConstraint",
            target_id = id.from(_N, "SizeConstraint"),
            target = M.SizeConstraint,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSizeConstraintSetInput = schema.new({
    id = id.from(_N, "UpdateSizeConstraintSetRequest"),
    type = "structure",
    members = {
        SizeConstraintSetId = schema.new({
            id = id.from(_N, "UpdateSizeConstraintSetInput", "SizeConstraintSetId"),
            type = "string",
            name = "SizeConstraintSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateSizeConstraintSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateSizeConstraintSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.SizeConstraintSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSizeConstraintSetOutput = schema.new({
    id = id.from(_N, "UpdateSizeConstraintSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateSizeConstraintSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.SqlInjectionMatchSetUpdate = schema.new({
    id = id.from(_N, "SqlInjectionMatchSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "SqlInjectionMatchSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SqlInjectionMatchTuple = schema.new({
            id = id.from(_N, "SqlInjectionMatchSetUpdate", "SqlInjectionMatchTuple"),
            type = "structure",
            name = "SqlInjectionMatchTuple",
            target_id = id.from(_N, "SqlInjectionMatchTuple"),
            target = M.SqlInjectionMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSqlInjectionMatchSetInput = schema.new({
    id = id.from(_N, "UpdateSqlInjectionMatchSetRequest"),
    type = "structure",
    members = {
        SqlInjectionMatchSetId = schema.new({
            id = id.from(_N, "UpdateSqlInjectionMatchSetInput", "SqlInjectionMatchSetId"),
            type = "string",
            name = "SqlInjectionMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateSqlInjectionMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateSqlInjectionMatchSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.SqlInjectionMatchSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateSqlInjectionMatchSetOutput = schema.new({
    id = id.from(_N, "UpdateSqlInjectionMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateSqlInjectionMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WebACLUpdate = schema.new({
    id = id.from(_N, "WebACLUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "WebACLUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ActivatedRule = schema.new({
            id = id.from(_N, "WebACLUpdate", "ActivatedRule"),
            type = "structure",
            name = "ActivatedRule",
            target_id = id.from(_N, "ActivatedRule"),
            target = M.ActivatedRule,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateWebACLInput = schema.new({
    id = id.from(_N, "UpdateWebACLRequest"),
    type = "structure",
    members = {
        WebACLId = schema.new({
            id = id.from(_N, "UpdateWebACLInput", "WebACLId"),
            type = "string",
            name = "WebACLId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateWebACLInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateWebACLInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.WebACLUpdate,
        }),
        DefaultAction = schema.new({
            id = id.from(_N, "UpdateWebACLInput", "DefaultAction"),
            type = "structure",
            name = "DefaultAction",
            target_id = id.from(_N, "WafAction"),
            target = M.WafAction,
        }),
    },
})

M.UpdateWebACLOutput = schema.new({
    id = id.from(_N, "UpdateWebACLResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateWebACLOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
        }),
    },
})

M.WAFSubscriptionNotFoundException = schema.new({
    id = id.from(_N, "WAFSubscriptionNotFoundException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "WAFSubscriptionNotFoundException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.XssMatchSetUpdate = schema.new({
    id = id.from(_N, "XssMatchSetUpdate"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "XssMatchSetUpdate", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        XssMatchTuple = schema.new({
            id = id.from(_N, "XssMatchSetUpdate", "XssMatchTuple"),
            type = "structure",
            name = "XssMatchTuple",
            target_id = id.from(_N, "XssMatchTuple"),
            target = M.XssMatchTuple,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateXssMatchSetInput = schema.new({
    id = id.from(_N, "UpdateXssMatchSetRequest"),
    type = "structure",
    members = {
        XssMatchSetId = schema.new({
            id = id.from(_N, "UpdateXssMatchSetInput", "XssMatchSetId"),
            type = "string",
            name = "XssMatchSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateXssMatchSetInput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Updates = schema.new({
            id = id.from(_N, "UpdateXssMatchSetInput", "Updates"),
            type = "list",
            name = "Updates",
            target_id = prelude.Document.id,
            list_member = M.XssMatchSetUpdate,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateXssMatchSetOutput = schema.new({
    id = id.from(_N, "UpdateXssMatchSetResponse"),
    type = "structure",
    members = {
        ChangeToken = schema.new({
            id = id.from(_N, "UpdateXssMatchSetOutput", "ChangeToken"),
            type = "string",
            name = "ChangeToken",
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
