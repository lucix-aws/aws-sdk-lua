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
            type = "number",
        },
        booleanValue = {
            type = "boolean",
        },
        emptyValue = {
            type = "structure",
        },
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
        value = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        clientToken = {
            type = "string",
        },
        performedBy = {
            type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            key_type = "string",
            value_type = "string",
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
            type = "number",
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
            type = "number",
        },
        booleanValue = {
            type = "boolean",
        },
        emptyValue = {
            type = "structure",
        },
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
        oldValue = {
            type = "union",
        },
        newValue = {
            type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.AuditEventPerformedBy = {
    type = "structure",
    members = {
        user = {
            type = "union",
        },
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
            },
        },
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        performedBy = {
            type = "structure",
        },
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
            member_type = "structure",
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "union",
        },
        targetSlaMinutes = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.SlaInputContent = {
    type = "union",
    members = {
        slaInputConfiguration = {
            type = "structure",
        },
    },
}

M.RelatedItemInputContent = {
    type = "union",
    members = {
        contact = {
            type = "structure",
        },
        comment = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sla = {
            type = "union",
        },
        connectCase = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        performedBy = {
            type = "union",
        },
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
            member_type = "string",
        },
        contactArn = {
            type = "string",
        },
    },
}

M.FieldFilter = {
    type = "union",
    members = {
        equalTo = {
            type = "structure",
        },
        contains = {
            type = "structure",
        },
        greaterThan = {
            type = "structure",
        },
        greaterThanOrEqualTo = {
            type = "structure",
        },
        lessThan = {
            type = "structure",
        },
        lessThanOrEqualTo = {
            type = "structure",
        },
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
            },
        },
    },
}

M.CustomContent = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member_type = "structure",
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
            member_type = "union",
        },
        targetTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        completionTime = {
            type = "timestamp",
        },
    },
}

M.SlaContent = {
    type = "structure",
    members = {
        slaConfiguration = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedItemContent = {
    type = "union",
    members = {
        contact = {
            type = "structure",
        },
        comment = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sla = {
            type = "structure",
        },
        connectCase = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
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
            },
        },
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        performedBy = {
            type = "union",
        },
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
            member_type = "structure",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.RelatedItemUpdateContent = {
    type = "union",
    members = {
        comment = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        performedBy = {
            type = "union",
        },
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        associationTime = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        lastUpdatedUser = {
            type = "union",
        },
        createdBy = {
            type = "union",
        },
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
        equalTo = {
            type = "structure",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        totalCount = {
            type = "number",
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        performedBy = {
            type = "union",
        },
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
            member_type = "structure",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
        },
        emptyValue = {
            type = "structure",
        },
    },
}

M.BooleanOperands = {
    type = "structure",
    members = {
        operandOne = {
            type = "union",
            traits = {
                required = true,
            },
        },
        operandTwo = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
            type = "number",
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
            member_type = "structure",
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
            member_type = "structure",
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
        caseData = {
            type = "structure",
        },
        relatedItemData = {
            type = "structure",
        },
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
        includedData = {
            type = "structure",
        },
    },
}

M.GetCaseEventConfigurationOutput = {
    type = "structure",
    members = {
        eventBridge = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            key_type = "string",
            value_type = "string",
        },
    },
}

M.ListDomainsInput = {
    type = "structure",
    members = {
        maxResults = {
            type = "number",
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
            member_type = "structure",
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
        eventBridge = {
            type = "structure",
            traits = {
                required = true,
            },
        },
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
            },
        },
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        performedBy = {
            type = "union",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
            member_type = "structure",
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
            member_type = "structure",
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
        text = {
            type = "structure",
        },
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
            key_type = "string",
            value_type = "string",
        },
        deleted = {
            type = "boolean",
        },
        createdTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        attributes = {
            type = "union",
        },
    },
}

M.BatchGetFieldOutput = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
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
            member_type = "structure",
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
            member_type = "structure",
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
        attributes = {
            type = "union",
        },
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
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
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
            type = "number",
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
        attributes = {
            type = "union",
        },
    },
}

M.ListFieldsOutput = {
    type = "structure",
    members = {
        fields = {
            type = "list",
            member_type = "structure",
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
        attributes = {
            type = "union",
        },
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
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.Section = {
    type = "union",
    members = {
        fieldGroup = {
            type = "structure",
        },
    },
}

M.LayoutSections = {
    type = "structure",
    members = {
        sections = {
            type = "list",
            member_type = "union",
        },
    },
}

M.BasicLayout = {
    type = "structure",
    members = {
        topPanel = {
            type = "structure",
        },
        moreInfo = {
            type = "structure",
        },
    },
}

M.LayoutContent = {
    type = "union",
    members = {
        basic = {
            type = "structure",
        },
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        content = {
            type = "union",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        deleted = {
            type = "boolean",
        },
        createdTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
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
            type = "number",
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
            member_type = "structure",
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
        content = {
            type = "union",
        },
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
            key_type = "string",
            value_type = "string",
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
        layoutConfiguration = {
            type = "structure",
        },
        requiredFields = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        rules = {
            type = "list",
            member_type = "structure",
        },
        tagPropagationConfigurations = {
            type = "list",
            member_type = "structure",
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
        layoutConfiguration = {
            type = "structure",
        },
        requiredFields = {
            type = "list",
            member_type = "structure",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deleted = {
            type = "boolean",
        },
        createdTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        rules = {
            type = "list",
            member_type = "structure",
        },
        tagPropagationConfigurations = {
            type = "list",
            member_type = "structure",
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
            type = "number",
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
            member_type = "string",
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
            member_type = "structure",
        },
    },
}

M.ListTemplatesOutput = {
    type = "structure",
    members = {
        templates = {
            type = "list",
            member_type = "structure",
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
        layoutConfiguration = {
            type = "structure",
        },
        requiredFields = {
            type = "list",
            member_type = "structure",
        },
        status = {
            type = "string",
        },
        rules = {
            type = "list",
            member_type = "structure",
        },
        tagPropagationConfigurations = {
            type = "list",
            member_type = "structure",
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
            member_type = "string",
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
        field = {
            type = "union",
        },
        not = {
            type = "union",
        },
        tag = {
            type = "union",
        },
        andAll = {
            type = "list",
            member_type = "union",
        },
        orAll = {
            type = "list",
            member_type = "union",
        },
    },
}

M.CustomFieldsFilter = {
    type = "union",
    members = {
        field = {
            type = "union",
        },
        not = {
            type = "union",
        },
        andAll = {
            type = "list",
            member_type = "union",
        },
        orAll = {
            type = "list",
            member_type = "union",
        },
    },
}

M.BooleanCondition = {
    type = "union",
    members = {
        equalTo = {
            type = "structure",
        },
        notEqualTo = {
            type = "structure",
        },
        andAll = {
            type = "structure",
        },
        orAll = {
            type = "structure",
        },
    },
}

M.CompoundCondition = {
    type = "structure",
    members = {
        conditions = {
            type = "list",
            member_type = "union",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomFilter = {
    type = "structure",
    members = {
        fields = {
            type = "union",
        },
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
            member_type = "union",
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
            member_type = "union",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        searchTerm = {
            type = "string",
        },
        filter = {
            type = "union",
        },
        sorts = {
            type = "list",
            member_type = "structure",
        },
        fields = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.RelatedItemTypeFilter = {
    type = "union",
    members = {
        contact = {
            type = "structure",
        },
        comment = {
            type = "structure",
        },
        file = {
            type = "structure",
        },
        sla = {
            type = "structure",
        },
        connectCase = {
            type = "structure",
        },
        custom = {
            type = "structure",
        },
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "union",
        },
        sorts = {
            type = "list",
            member_type = "structure",
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
            type = "number",
        },
        nextToken = {
            type = "string",
        },
        filters = {
            type = "list",
            member_type = "union",
        },
    },
}

M.CaseRuleDetails = {
    type = "union",
    members = {
        required = {
            type = "structure",
        },
        fieldOptions = {
            type = "structure",
        },
        hidden = {
            type = "structure",
        },
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
        rule = {
            type = "union",
            traits = {
                required = true,
            },
        },
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
        rule = {
            type = "union",
            traits = {
                required = true,
            },
        },
        description = {
            type = "string",
        },
        deleted = {
            type = "boolean",
        },
        createdTime = {
            type = "timestamp",
        },
        lastModifiedTime = {
            type = "timestamp",
        },
        tags = {
            type = "map",
            key_type = "string",
            value_type = "string",
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
        rule = {
            type = "union",
        },
    },
}

M.BatchGetCaseRuleOutput = {
    type = "structure",
    members = {
        caseRules = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        unprocessedCaseRules = {
            type = "list",
            member_type = "string",
        },
    },
}

return M
