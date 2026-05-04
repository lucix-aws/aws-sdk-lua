local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConflictException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.EmptyFieldValue = {
    type = "structure",
}

M.FieldValueUnion = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
        doubleValue = {
            type = "double",
        },
        booleanValue = {
            type = "boolean",
        },
        emptyValue = M.EmptyFieldValue,
        userArnValue = {
            type = "string",
        },
    },
}

M.FieldValue = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = setmetatable({ traits = {
            required = true,
        } }, { __index = M.FieldValueUnion }),
    },
}

M.UserUnion = {
    type = "union",
    members = {
        userArn = {
            type = "string",
        },
        customEntity = {
            type = "string",
        },
    },
}

M.CreateCaseInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
        performedBy = M.UserUnion,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.CreateCaseOutput = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caseArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCaseInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCaseOutput = {
    type = "structure",
}

M.FieldIdentifier = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetCaseInput = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.FieldIdentifier,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.GetCaseOutput = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetCaseAuditEventsInput = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.AuditEventFieldValueUnion = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
        doubleValue = {
            type = "double",
        },
        booleanValue = {
            type = "boolean",
        },
        emptyValue = M.EmptyFieldValue,
        userArnValue = {
            type = "string",
        },
    },
}

M.AuditEventField = {
    type = "structure",
    members = {
        eventFieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oldValue = M.AuditEventFieldValueUnion,
        newValue = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AuditEventFieldValueUnion }),
    },
}

M.AuditEventPerformedBy = {
    type = "structure",
    members = {
        user = M.UserUnion,
        iamPrincipalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedItemType = {
    CONTACT = "Contact",
    COMMENT = "Comment",
    FILE = "File",
    SLA = "Sla",
    CONNECT_CASE = "ConnectCase",
    CUSTOM = "Custom",
}

M.AuditEventType = {
    CASE_CREATED = "Case.Created",
    CASE_UPDATED = "Case.Updated",
    RELATED_ITEM_CREATED = "RelatedItem.Created",
    RELATED_ITEM_DELETED = "RelatedItem.Deleted",
    RELATED_ITEM_UPDATED = "RelatedItem.Updated",
}

M.AuditEvent = {
    type = "structure",
    members = {
        eventId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedItemType = {
            type = "string",
        },
        performedTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        fields = {
            type = "list",
            member = M.AuditEventField,
            traits = {
                required = true,
            },
        },
        performedBy = M.AuditEventPerformedBy,
    },
}

M.GetCaseAuditEventsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        auditEvents = {
            type = "list",
            member = M.AuditEvent,
            traits = {
                required = true,
            },
        },
    },
}

M.ListCasesForContactInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        contactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CaseSummary = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListCasesForContactOutput = {
    type = "structure",
    members = {
        cases = {
            type = "list",
            member = M.CaseSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.CommentBodyTextType = {
    PLAINTEXT = "Text/Plain",
}

M.CommentContent = {
    type = "structure",
    members = {
        body = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ConnectCaseInputContent = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Contact = {
    type = "structure",
    members = {
        contactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomInputContent = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
    },
}

M.FileContent = {
    type = "structure",
    members = {
        fileArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SlaType = {
    CASE_FIELD = "CaseField",
}

M.SlaInputConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldId = {
            type = "string",
        },
        targetFieldValues = {
            type = "list",
            member = M.FieldValueUnion,
        },
        targetSlaMinutes = {
            type = "long",
            traits = {
                required = true,
            },
        },
    },
}

M.SlaInputContent = {
    type = "union",
    members = {
        slaInputConfiguration = M.SlaInputConfiguration,
    },
}

M.RelatedItemInputContent = {
    type = "union",
    members = {
        contact = M.Contact,
        comment = M.CommentContent,
        file = M.FileContent,
        sla = M.SlaInputContent,
        connectCase = M.ConnectCaseInputContent,
        custom = M.CustomInputContent,
    },
}

M.CreateRelatedItemInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedItemInputContent }),
        performedBy = M.UserUnion,
    },
}

M.CreateRelatedItemOutput = {
    type = "structure",
    members = {
        relatedItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedItemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteRelatedItemInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        relatedItemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteRelatedItemOutput = {
    type = "structure",
}

M.CommentFilter = {
    type = "structure",
}

M.ConnectCaseFilter = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
        },
    },
}

M.ContactFilter = {
    type = "structure",
    members = {
        channel = {
            type = "list",
            member = { type = "string" },
        },
        contactArn = {
            type = "string",
        },
    },
}

M.FieldFilter = {
    type = "union",
    members = {
        equalTo = M.FieldValue,
        contains = M.FieldValue,
        greaterThan = M.FieldValue,
        greaterThanOrEqualTo = M.FieldValue,
        lessThan = M.FieldValue,
        lessThanOrEqualTo = M.FieldValue,
    },
}

M.FileFilter = {
    type = "structure",
    members = {
        fileArn = {
            type = "string",
        },
    },
}

M.SlaStatus = {
    ACTIVE = "Active",
    OVERDUE = "Overdue",
    MET = "Met",
    NOT_MET = "NotMet",
}

M.SlaFilter = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        status = {
            type = "string",
        },
    },
}

M.ConnectCaseContent = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContactContent = {
    type = "structure",
    members = {
        contactArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        channel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        connectedToSystemTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
    },
}

M.CustomContent = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
    },
}

M.SlaConfiguration = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldId = {
            type = "string",
        },
        targetFieldValues = {
            type = "list",
            member = M.FieldValueUnion,
        },
        targetTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        completionTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.SlaContent = {
    type = "structure",
    members = {
        slaConfiguration = setmetatable({ traits = {
            required = true,
        } }, { __index = M.SlaConfiguration }),
    },
}

M.RelatedItemContent = {
    type = "union",
    members = {
        contact = M.ContactContent,
        comment = M.CommentContent,
        file = M.FileContent,
        sla = M.SlaContent,
        connectCase = M.ConnectCaseContent,
        custom = M.CustomContent,
    },
}

M.SearchRelatedItemsResponseItem = {
    type = "structure",
    members = {
        relatedItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedItemContent }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        performedBy = M.UserUnion,
    },
}

M.SearchRelatedItemsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        relatedItems = {
            type = "list",
            member = M.SearchRelatedItemsResponseItem,
            traits = {
                required = true,
            },
        },
    },
}

M.CommentUpdateContent = {
    type = "structure",
    members = {
        body = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contentType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomUpdateContent = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedItemUpdateContent = {
    type = "union",
    members = {
        comment = M.CommentUpdateContent,
        custom = M.CustomUpdateContent,
    },
}

M.UpdateRelatedItemInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        relatedItemId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedItemUpdateContent }),
        performedBy = M.UserUnion,
    },
}

M.UpdateRelatedItemOutput = {
    type = "structure",
    members = {
        relatedItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        relatedItemArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedItemContent }),
        associationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        lastUpdatedUser = M.UserUnion,
        createdBy = M.UserUnion,
    },
}

M.TagValue = {
    type = "structure",
    members = {
        key = {
            type = "string",
        },
        value = {
            type = "string",
        },
    },
}

M.TagFilter = {
    type = "union",
    members = {
        equalTo = M.TagValue,
    },
}

M.Order = {
    ASCENDING = "Asc",
    DESCENDING = "Desc",
}

M.Sort = {
    type = "structure",
    members = {
        fieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchCasesResponseItem = {
    type = "structure",
    members = {
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchCasesOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        cases = {
            type = "list",
            member = M.SearchCasesResponseItem,
            traits = {
                required = true,
            },
        },
        totalCount = {
            type = "long",
            traits = {
                default = 0,
            },
        },
    },
}

M.UpdateCaseInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.FieldValue,
            traits = {
                required = true,
            },
        },
        performedBy = M.UserUnion,
    },
}

M.UpdateCaseOutput = {
    type = "structure",
}

M.CaseRuleIdentifier = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetCaseRuleInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseRules = {
            type = "list",
            member = M.CaseRuleIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.ParentChildFieldOptionsMapping = {
    type = "structure",
    members = {
        parentFieldOptionValue = {
            type = "string",
            traits = {
                required = true,
            },
        },
        childFieldOptionValues = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.FieldOptionsCaseRule = {
    type = "structure",
    members = {
        parentFieldId = {
            type = "string",
        },
        childFieldId = {
            type = "string",
        },
        parentChildFieldOptionsMappings = {
            type = "list",
            member = M.ParentChildFieldOptionsMapping,
            traits = {
                required = true,
            },
        },
    },
}

M.OperandOne = {
    type = "union",
    members = {
        fieldId = {
            type = "string",
        },
    },
}

M.EmptyOperandValue = {
    type = "structure",
}

M.OperandTwo = {
    type = "union",
    members = {
        stringValue = {
            type = "string",
        },
        booleanValue = {
            type = "boolean",
        },
        doubleValue = {
            type = "double",
        },
        emptyValue = M.EmptyOperandValue,
    },
}

M.BooleanOperands = {
    type = "structure",
    members = {
        operandOne = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OperandOne }),
        operandTwo = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OperandTwo }),
        result = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.CaseRuleError = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.CreateCaseRuleOutput = {
    type = "structure",
    members = {
        caseRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caseRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteCaseRuleInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteCaseRuleOutput = {
    type = "structure",
}

M.ListCaseRulesInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.RuleType = {
    REQUIRED = "Required",
    HIDDEN = "Hidden",
    FIELD_OPTIONS = "FieldOptions",
}

M.CaseRuleSummary = {
    type = "structure",
    members = {
        caseRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caseRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ruleType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
    },
}

M.ListCaseRulesOutput = {
    type = "structure",
    members = {
        caseRules = {
            type = "list",
            member = M.CaseRuleSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateCaseRuleOutput = {
    type = "structure",
}

M.CreateDomainInput = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DomainStatus = {
    ACTIVE = "Active",
    CREATION_IN_PROGRESS = "CreationInProgress",
    CREATION_FAILED = "CreationFailed",
}

M.CreateDomainOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteDomainInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteDomainOutput = {
    type = "structure",
}

M.GetCaseEventConfigurationInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.CaseEventIncludedData = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.FieldIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedItemEventIncludedData = {
    type = "structure",
    members = {
        includeContent = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.EventIncludedData = {
    type = "structure",
    members = {
        caseData = M.CaseEventIncludedData,
        relatedItemData = M.RelatedItemEventIncludedData,
    },
}

M.EventBridgeConfiguration = {
    type = "structure",
    members = {
        enabled = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        includedData = M.EventIncludedData,
    },
}

M.GetCaseEventConfigurationOutput = {
    type = "structure",
    members = {
        eventBridge = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventBridgeConfiguration }),
    },
}

M.GetDomainInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetDomainOutput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        domainStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.DomainSummary = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        domainArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    members = {
        domains = {
            type = "list",
            member = M.DomainSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.PutCaseEventConfigurationInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        eventBridge = setmetatable({ traits = {
            required = true,
        } }, { __index = M.EventBridgeConfiguration }),
    },
}

M.PutCaseEventConfigurationOutput = {
    type = "structure",
}

M.SearchAllRelatedItemsSortProperty = {
    ASSOCIATION_TIME = "AssociationTime",
    CASE_ID = "CaseId",
}

M.SearchAllRelatedItemsSort = {
    type = "structure",
    members = {
        sortProperty = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sortOrder = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.SearchAllRelatedItemsResponseItem = {
    type = "structure",
    members = {
        relatedItemId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        associationTime = {
            type = "timestamp",
            traits = {
                required = true,
                timestamp_format = "date-time",
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.RelatedItemContent }),
        performedBy = M.UserUnion,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.SearchAllRelatedItemsOutput = {
    type = "structure",
    members = {
        nextToken = {
            type = "string",
        },
        relatedItems = {
            type = "list",
            member = M.SearchAllRelatedItemsResponseItem,
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetFieldInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fields = {
            type = "list",
            member = M.FieldIdentifier,
            traits = {
                required = true,
            },
        },
    },
}

M.FieldError = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
        },
    },
}

M.TextAttributes = {
    type = "structure",
    members = {
        isMultiline = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.FieldAttributes = {
    type = "union",
    members = {
        text = M.TextAttributes,
    },
}

M.FieldNamespace = {
    SYSTEM = "System",
    CUSTOM = "Custom",
}

M.FieldType = {
    TEXT = "Text",
    NUMBER = "Number",
    BOOLEAN = "Boolean",
    DATE_TIME = "DateTime",
    SINGLE_SELECT = "SingleSelect",
    URL = "Url",
    USER = "User",
}

M.GetFieldResponse = {
    type = "structure",
    members = {
        fieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deleted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        attributes = M.FieldAttributes,
    },
}

M.BatchGetFieldOutput = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.GetFieldResponse,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.FieldError,
            traits = {
                required = true,
            },
        },
    },
}

M.FieldOption = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
        active = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutFieldOptionsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        options = {
            type = "list",
            member = M.FieldOption,
            traits = {
                required = true,
            },
        },
    },
}

M.FieldOptionError = {
    type = "structure",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchPutFieldOptionsOutput = {
    type = "structure",
    members = {
        errors = {
            type = "list",
            member = M.FieldOptionError,
        },
    },
}

M.CreateFieldInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        attributes = M.FieldAttributes,
    },
}

M.CreateFieldOutput = {
    type = "structure",
    members = {
        fieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteFieldInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteFieldOutput = {
    type = "structure",
}

M.ListFieldOptionsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        values = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "values",
            },
        },
    },
}

M.ListFieldOptionsOutput = {
    type = "structure",
    members = {
        options = {
            type = "list",
            member = M.FieldOption,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFieldsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.FieldSummary = {
    type = "structure",
    members = {
        fieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        type = {
            type = "string",
            traits = {
                required = true,
            },
        },
        namespace = {
            type = "string",
            traits = {
                required = true,
            },
        },
        attributes = M.FieldAttributes,
    },
}

M.ListFieldsOutput = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member = M.FieldSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateFieldInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        fieldId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        attributes = M.FieldAttributes,
    },
}

M.UpdateFieldOutput = {
    type = "structure",
}

M.FieldItem = {
    type = "structure",
    members = {
        id = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FieldGroup = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        fields = {
            type = "list",
            member = M.FieldItem,
            traits = {
                required = true,
            },
        },
    },
}

M.Section = {
    type = "union",
    members = {
        fieldGroup = M.FieldGroup,
    },
}

M.LayoutSections = {
    type = "structure",
    members = {
        sections = {
            type = "list",
            member = M.Section,
        },
    },
}

M.BasicLayout = {
    type = "structure",
    members = {
        topPanel = M.LayoutSections,
        moreInfo = M.LayoutSections,
    },
}

M.LayoutContent = {
    type = "union",
    members = {
        basic = M.BasicLayout,
    },
}

M.CreateLayoutInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LayoutContent }),
    },
}

M.CreateLayoutOutput = {
    type = "structure",
    members = {
        layoutId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layoutArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteLayoutInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        layoutId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteLayoutOutput = {
    type = "structure",
}

M.GetLayoutInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        layoutId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetLayoutOutput = {
    type = "structure",
    members = {
        layoutId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layoutArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        content = setmetatable({ traits = {
            required = true,
        } }, { __index = M.LayoutContent }),
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        deleted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.ListLayoutsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
    },
}

M.LayoutSummary = {
    type = "structure",
    members = {
        layoutId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        layoutArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListLayoutsOutput = {
    type = "structure",
    members = {
        layouts = {
            type = "list",
            member = M.LayoutSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateLayoutInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        layoutId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        content = M.LayoutContent,
    },
}

M.UpdateLayoutOutput = {
    type = "structure",
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.LayoutConfiguration = {
    type = "structure",
    members = {
        defaultLayout = {
            type = "string",
        },
    },
}

M.RequiredField = {
    type = "structure",
    members = {
        fieldId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TemplateRule = {
    type = "structure",
    members = {
        caseRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldId = {
            type = "string",
            traits = {
                default = "NULL",
            },
        },
    },
}

M.TemplateStatus = {
    ACTIVE = "Active",
    INACTIVE = "Inactive",
}

M.TagPropagationResourceType = {
    CASES = "Cases",
}

M.TagPropagationConfiguration = {
    type = "structure",
    members = {
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagMap = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.CreateTemplateInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        layoutConfiguration = M.LayoutConfiguration,
        requiredFields = {
            type = "list",
            member = M.RequiredField,
        },
        status = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.TemplateRule,
        },
        tagPropagationConfigurations = {
            type = "list",
            member = M.TagPropagationConfiguration,
        },
    },
}

M.CreateTemplateOutput = {
    type = "structure",
    members = {
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteTemplateInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeleteTemplateOutput = {
    type = "structure",
}

M.GetTemplateInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetTemplateOutput = {
    type = "structure",
    members = {
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        layoutConfiguration = M.LayoutConfiguration,
        requiredFields = {
            type = "list",
            member = M.RequiredField,
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deleted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        rules = {
            type = "list",
            member = M.TemplateRule,
        },
        tagPropagationConfigurations = {
            type = "list",
            member = M.TagPropagationConfiguration,
        },
    },
}

M.ListTemplatesInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                http_query = "maxResults",
            },
        },
        nextToken = {
            type = "string",
            traits = {
                http_query = "nextToken",
            },
        },
        status = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "status",
            },
        },
    },
}

M.TemplateSummary = {
    type = "structure",
    members = {
        templateId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tagPropagationConfigurations = {
            type = "list",
            member = M.TagPropagationConfiguration,
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    members = {
        templates = {
            type = "list",
            member = M.TemplateSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.UpdateTemplateInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        templateId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        layoutConfiguration = M.LayoutConfiguration,
        requiredFields = {
            type = "list",
            member = M.RequiredField,
        },
        status = {
            type = "string",
        },
        rules = {
            type = "list",
            member = M.TemplateRule,
        },
        tagPropagationConfigurations = {
            type = "list",
            member = M.TagPropagationConfiguration,
        },
    },
}

M.UpdateTemplateOutput = {
    type = "structure",
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        arn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.CaseFilter = {
    type = "union",
    members = {
        field = M.FieldFilter,
        not = M.CaseFilter,
        tag = M.TagFilter,
        andAll = {
            type = "list",
            member = M.CaseFilter,
        },
        orAll = {
            type = "list",
            member = M.CaseFilter,
        },
    },
}

M.CustomFieldsFilter = {
    type = "union",
    members = {
        field = M.FieldFilter,
        not = M.CustomFieldsFilter,
        andAll = {
            type = "list",
            member = M.CustomFieldsFilter,
        },
        orAll = {
            type = "list",
            member = M.CustomFieldsFilter,
        },
    },
}

M.BooleanCondition = {
    type = "union",
    members = {
        equalTo = M.BooleanOperands,
        notEqualTo = M.BooleanOperands,
        andAll = M.CompoundCondition,
        orAll = M.CompoundCondition,
    },
}

M.CompoundCondition = {
    type = "structure",
    members = {
        conditions = {
            type = "list",
            member = M.BooleanCondition,
            traits = {
                required = true,
            },
        },
    },
}

M.CustomFilter = {
    type = "structure",
    members = {
        fields = M.CustomFieldsFilter,
    },
}

M.HiddenCaseRule = {
    type = "structure",
    members = {
        defaultValue = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.BooleanCondition,
            traits = {
                required = true,
            },
        },
    },
}

M.RequiredCaseRule = {
    type = "structure",
    members = {
        defaultValue = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
        conditions = {
            type = "list",
            member = M.BooleanCondition,
            traits = {
                required = true,
            },
        },
    },
}

M.SearchCasesInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
        searchTerm = {
            type = "string",
        },
        filter = M.CaseFilter,
        sorts = {
            type = "list",
            member = M.Sort,
        },
        fields = {
            type = "list",
            member = M.FieldIdentifier,
        },
    },
}

M.RelatedItemTypeFilter = {
    type = "union",
    members = {
        contact = M.ContactFilter,
        comment = M.CommentFilter,
        file = M.FileFilter,
        sla = M.SlaFilter,
        connectCase = M.ConnectCaseFilter,
        custom = M.CustomFilter,
    },
}

M.SearchAllRelatedItemsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.RelatedItemTypeFilter,
        },
        sorts = {
            type = "list",
            member = M.SearchAllRelatedItemsSort,
        },
    },
}

M.SearchRelatedItemsInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
            traits = {
                default = nil,
            },
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member = M.RelatedItemTypeFilter,
        },
    },
}

M.CaseRuleDetails = {
    type = "union",
    members = {
        required = M.RequiredCaseRule,
        fieldOptions = M.FieldOptionsCaseRule,
        hidden = M.HiddenCaseRule,
    },
}

M.CreateCaseRuleInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CaseRuleDetails }),
    },
}

M.GetCaseRuleResponse = {
    type = "structure",
    members = {
        caseRuleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        caseRuleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        rule = setmetatable({ traits = {
            required = true,
        } }, { __index = M.CaseRuleDetails }),
        description = {
            type = "string",
        },
        deleted = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        createdTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        lastModifiedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.UpdateCaseRuleInput = {
    type = "structure",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        caseRuleId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        name = {
            type = "string",
        },
        description = {
            type = "string",
        },
        rule = M.CaseRuleDetails,
    },
}

M.BatchGetCaseRuleOutput = {
    type = "structure",
    members = {
        caseRules = {
            type = "list",
            member = M.GetCaseRuleResponse,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.CaseRuleError,
            traits = {
                required = true,
            },
        },
        unprocessedCaseRules = {
            type = "list",
            member = { type = "string" },
        },
    },
}

return M
