local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.AppliedLevelEnum = {
    ACCOUNT = "ACCOUNT",
    RESOURCE = "RESOURCE",
    ALL = "ALL",
}

M.AssociateServiceQuotaTemplateInput = {
    type = "structure",
}

M.AssociateServiceQuotaTemplateOutput = {
    type = "structure",
}

M.AWSServiceAccessNotEnabledException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DependencyAccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoAvailableOrganizationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationNotInAllFeaturesModeException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TemplatesNotAvailableInRegionException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateSupportCaseInput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateSupportCaseOutput = {
    type = "structure",
}

M.IllegalArgumentException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResourceStateException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchResourceException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteServiceQuotaIncreaseRequestFromTemplateInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DeleteServiceQuotaIncreaseRequestFromTemplateOutput = {
    type = "structure",
}

M.DisassociateServiceQuotaTemplateInput = {
    type = "structure",
}

M.DisassociateServiceQuotaTemplateOutput = {
    type = "structure",
}

M.ServiceQuotaTemplateNotInUseException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ErrorCode = {
    DEPENDENCY_ACCESS_DENIED_ERROR = "DEPENDENCY_ACCESS_DENIED_ERROR",
    DEPENDENCY_THROTTLING_ERROR = "DEPENDENCY_THROTTLING_ERROR",
    DEPENDENCY_SERVICE_ERROR = "DEPENDENCY_SERVICE_ERROR",
    SERVICE_QUOTA_NOT_AVAILABLE_ERROR = "SERVICE_QUOTA_NOT_AVAILABLE_ERROR",
}

M.ErrorReason = {
    type = "structure",
    members = {
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.QuotaInfo = {
    type = "structure",
    members = {
        QuotaCode = {
            type = "string",
        },
        QuotaName = {
            type = "string",
        },
    },
}

M.GetAssociationForServiceQuotaTemplateInput = {
    type = "structure",
}

M.ServiceQuotaTemplateAssociationStatus = {
    ASSOCIATED = "ASSOCIATED",
    DISASSOCIATED = "DISASSOCIATED",
}

M.GetAssociationForServiceQuotaTemplateOutput = {
    type = "structure",
    members = {
        ServiceQuotaTemplateAssociationStatus = {
            type = "string",
        },
    },
}

M.GetAutoManagementConfigurationInput = {
    type = "structure",
}

M.OptInLevel = {
    ACCOUNT = "ACCOUNT",
}

M.OptInStatus = {
    ENABLED = "ENABLED",
    DISABLED = "DISABLED",
}

M.OptInType = {
    NotifyOnly = "NotifyOnly",
    NotifyAndAdjust = "NotifyAndAdjust",
}

M.GetAutoManagementConfigurationOutput = {
    type = "structure",
    members = {
        OptInLevel = {
            type = "string",
        },
        OptInType = {
            type = "string",
        },
        NotificationArn = {
            type = "string",
        },
        OptInStatus = {
            type = "string",
        },
        ExclusionList = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.GetAWSDefaultServiceQuotaInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PeriodUnit = {
    MICROSECOND = "MICROSECOND",
    MILLISECOND = "MILLISECOND",
    SECOND = "SECOND",
    MINUTE = "MINUTE",
    HOUR = "HOUR",
    DAY = "DAY",
    WEEK = "WEEK",
}

M.QuotaPeriod = {
    type = "structure",
    members = {
        PeriodValue = {
            type = "number",
        },
        PeriodUnit = {
            type = "string",
        },
    },
}

M.QuotaContextScope = {
    RESOURCE = "RESOURCE",
    ACCOUNT = "ACCOUNT",
}

M.QuotaContextInfo = {
    type = "structure",
    members = {
        ContextScope = {
            type = "string",
        },
        ContextScopeType = {
            type = "string",
        },
        ContextId = {
            type = "string",
        },
    },
}

M.MetricInfo = {
    type = "structure",
    members = {
        MetricNamespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        MetricDimensions = {
            type = "map",
            key_type = "string",
            value_type = "string",
        },
        MetricStatisticRecommendation = {
            type = "string",
        },
    },
}

M.ServiceQuota = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        QuotaArn = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
        QuotaName = {
            type = "string",
        },
        Value = {
            type = "number",
        },
        Unit = {
            type = "string",
        },
        Adjustable = {
            type = "boolean",
        },
        GlobalQuota = {
            type = "boolean",
        },
        UsageMetric = {
            type = "structure",
        },
        Period = {
            type = "structure",
        },
        ErrorReason = {
            type = "structure",
        },
        QuotaAppliedAtLevel = {
            type = "string",
        },
        QuotaContext = {
            type = "structure",
        },
        Description = {
            type = "string",
        },
    },
}

M.GetAWSDefaultServiceQuotaOutput = {
    type = "structure",
    members = {
        Quota = {
            type = "structure",
        },
    },
}

M.GetQuotaUtilizationReportInput = {
    type = "structure",
    members = {
        ReportId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.QuotaUtilizationInfo = {
    type = "structure",
    members = {
        QuotaCode = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        QuotaName = {
            type = "string",
        },
        Namespace = {
            type = "string",
        },
        Utilization = {
            type = "number",
        },
        DefaultValue = {
            type = "number",
        },
        AppliedValue = {
            type = "number",
        },
        ServiceName = {
            type = "string",
        },
        Adjustable = {
            type = "boolean",
        },
    },
}

M.ReportStatus = {
    PENDING = "PENDING",
    IN_PROGRESS = "IN_PROGRESS",
    COMPLETED = "COMPLETED",
    FAILED = "FAILED",
}

M.GetQuotaUtilizationReportOutput = {
    type = "structure",
    members = {
        ReportId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        GeneratedAt = {
            type = "timestamp",
        },
        TotalCount = {
            type = "number",
        },
        Quotas = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
        ErrorCode = {
            type = "string",
        },
        ErrorMessage = {
            type = "string",
        },
    },
}

M.GetRequestedServiceQuotaChangeInput = {
    type = "structure",
    members = {
        RequestId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.RequestType = {
    AutomaticManagement = "AutomaticManagement",
}

M.RequestStatus = {
    PENDING = "PENDING",
    CASE_OPENED = "CASE_OPENED",
    APPROVED = "APPROVED",
    DENIED = "DENIED",
    CASE_CLOSED = "CASE_CLOSED",
    NOT_APPROVED = "NOT_APPROVED",
    INVALID_REQUEST = "INVALID_REQUEST",
}

M.RequestedServiceQuotaChange = {
    type = "structure",
    members = {
        Id = {
            type = "string",
        },
        RequestType = {
            type = "string",
        },
        CaseId = {
            type = "string",
        },
        ServiceCode = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
        QuotaName = {
            type = "string",
        },
        DesiredValue = {
            type = "number",
        },
        Status = {
            type = "string",
        },
        Created = {
            type = "timestamp",
        },
        LastUpdated = {
            type = "timestamp",
        },
        Requester = {
            type = "string",
        },
        QuotaArn = {
            type = "string",
        },
        GlobalQuota = {
            type = "boolean",
        },
        Unit = {
            type = "string",
        },
        QuotaRequestedAtLevel = {
            type = "string",
        },
        QuotaContext = {
            type = "structure",
        },
    },
}

M.GetRequestedServiceQuotaChangeOutput = {
    type = "structure",
    members = {
        RequestedQuota = {
            type = "structure",
        },
    },
}

M.GetServiceQuotaInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ContextId = {
            type = "string",
        },
    },
}

M.GetServiceQuotaOutput = {
    type = "structure",
    members = {
        Quota = {
            type = "structure",
        },
    },
}

M.GetServiceQuotaIncreaseRequestFromTemplateInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaIncreaseRequestInTemplate = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
        QuotaCode = {
            type = "string",
        },
        QuotaName = {
            type = "string",
        },
        DesiredValue = {
            type = "number",
        },
        AwsRegion = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        GlobalQuota = {
            type = "boolean",
        },
    },
}

M.GetServiceQuotaIncreaseRequestFromTemplateOutput = {
    type = "structure",
    members = {
        ServiceQuotaIncreaseRequestInTemplate = {
            type = "structure",
        },
    },
}

M.Tag = {
    type = "structure",
    members = {
        Key = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Value = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InvalidPaginationTokenException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAWSDefaultServiceQuotasInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListAWSDefaultServiceQuotasOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Quotas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        QuotaRequestedAtLevel = {
            type = "string",
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RequestedQuotas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryByQuotaInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Status = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        QuotaRequestedAtLevel = {
            type = "string",
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryByQuotaOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        RequestedQuotas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListServiceQuotaIncreaseRequestsInTemplateInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
        },
        AwsRegion = {
            type = "string",
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ListServiceQuotaIncreaseRequestsInTemplateOutput = {
    type = "structure",
    members = {
        ServiceQuotaIncreaseRequestInTemplateList = {
            type = "list",
            member_type = "structure",
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServiceQuotasInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
        QuotaCode = {
            type = "string",
        },
        QuotaAppliedAtLevel = {
            type = "string",
        },
    },
}

M.ListServiceQuotasOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Quotas = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "number",
        },
    },
}

M.ServiceInfo = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
        },
        ServiceName = {
            type = "string",
        },
    },
}

M.ListServicesOutput = {
    type = "structure",
    members = {
        NextToken = {
            type = "string",
        },
        Services = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ListTagsForResourceOutput = {
    type = "structure",
    members = {
        Tags = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.PutServiceQuotaIncreaseRequestIntoTemplateInput = {
    type = "structure",
    members = {
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        AwsRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
    },
}

M.PutServiceQuotaIncreaseRequestIntoTemplateOutput = {
    type = "structure",
    members = {
        ServiceQuotaIncreaseRequestInTemplate = {
            type = "structure",
        },
    },
}

M.QuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestServiceQuotaIncreaseInput = {
    type = "structure",
    members = {
        ServiceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        QuotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        DesiredValue = {
            type = "number",
            traits = {
                required = true,
            },
        },
        ContextId = {
            type = "string",
        },
        SupportCaseAllowed = {
            type = "boolean",
        },
    },
}

M.RequestServiceQuotaIncreaseOutput = {
    type = "structure",
    members = {
        RequestedQuota = {
            type = "structure",
        },
    },
}

M.StartAutoManagementInput = {
    type = "structure",
    members = {
        OptInLevel = {
            type = "string",
            traits = {
                required = true,
            },
        },
        OptInType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        NotificationArn = {
            type = "string",
        },
        ExclusionList = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.StartAutoManagementOutput = {
    type = "structure",
}

M.StartQuotaUtilizationReportInput = {
    type = "structure",
}

M.StartQuotaUtilizationReportOutput = {
    type = "structure",
    members = {
        ReportId = {
            type = "string",
        },
        Status = {
            type = "string",
        },
        Message = {
            type = "string",
        },
    },
}

M.StopAutoManagementInput = {
    type = "structure",
}

M.StopAutoManagementOutput = {
    type = "structure",
}

M.TagPolicyViolationException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
}

M.TooManyTagsException = {
    type = "structure",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
}

M.UpdateAutoManagementInput = {
    type = "structure",
    members = {
        OptInType = {
            type = "string",
        },
        NotificationArn = {
            type = "string",
        },
        ExclusionList = {
            type = "map",
            key_type = "string",
            value_type = "list",
        },
    },
}

M.UpdateAutoManagementOutput = {
    type = "structure",
}

return M
