local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AssociateServiceQuotaTemplateInput",
}

M.AssociateServiceQuotaTemplateOutput = {
    type = "structure",
    id = "AssociateServiceQuotaTemplateOutput",
}

M.AWSServiceAccessNotEnabledException = {
    type = "structure",
    id = "AWSServiceAccessNotEnabledException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DependencyAccessDeniedException = {
    type = "structure",
    id = "DependencyAccessDeniedException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoAvailableOrganizationException = {
    type = "structure",
    id = "NoAvailableOrganizationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.OrganizationNotInAllFeaturesModeException = {
    type = "structure",
    id = "OrganizationNotInAllFeaturesModeException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ServiceException = {
    type = "structure",
    id = "ServiceException",
    error = "server",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TemplatesNotAvailableInRegionException = {
    type = "structure",
    id = "TemplatesNotAvailableInRegionException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TooManyRequestsException = {
    type = "structure",
    id = "TooManyRequestsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.CreateSupportCaseInput = {
    type = "structure",
    id = "CreateSupportCaseInput",
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
    id = "CreateSupportCaseOutput",
}

M.IllegalArgumentException = {
    type = "structure",
    id = "IllegalArgumentException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.InvalidResourceStateException = {
    type = "structure",
    id = "InvalidResourceStateException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.NoSuchResourceException = {
    type = "structure",
    id = "NoSuchResourceException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ResourceAlreadyExistsException = {
    type = "structure",
    id = "ResourceAlreadyExistsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.DeleteServiceQuotaIncreaseRequestFromTemplateInput = {
    type = "structure",
    id = "DeleteServiceQuotaIncreaseRequestFromTemplateInput",
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
    id = "DeleteServiceQuotaIncreaseRequestFromTemplateOutput",
}

M.DisassociateServiceQuotaTemplateInput = {
    type = "structure",
    id = "DisassociateServiceQuotaTemplateInput",
}

M.DisassociateServiceQuotaTemplateOutput = {
    type = "structure",
    id = "DisassociateServiceQuotaTemplateOutput",
}

M.ServiceQuotaTemplateNotInUseException = {
    type = "structure",
    id = "ServiceQuotaTemplateNotInUseException",
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
    id = "ErrorReason",
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
    id = "QuotaInfo",
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
    id = "GetAssociationForServiceQuotaTemplateInput",
}

M.ServiceQuotaTemplateAssociationStatus = {
    ASSOCIATED = "ASSOCIATED",
    DISASSOCIATED = "DISASSOCIATED",
}

M.GetAssociationForServiceQuotaTemplateOutput = {
    type = "structure",
    id = "GetAssociationForServiceQuotaTemplateOutput",
    members = {
        ServiceQuotaTemplateAssociationStatus = {
            type = "string",
        },
    },
}

M.GetAutoManagementConfigurationInput = {
    type = "structure",
    id = "GetAutoManagementConfigurationInput",
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
    id = "GetAutoManagementConfigurationOutput",
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
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.GetAWSDefaultServiceQuotaInput = {
    type = "structure",
    id = "GetAWSDefaultServiceQuotaInput",
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
    id = "QuotaPeriod",
    members = {
        PeriodValue = {
            type = "integer",
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
    id = "QuotaContextInfo",
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
    id = "MetricInfo",
    members = {
        MetricNamespace = {
            type = "string",
        },
        MetricName = {
            type = "string",
        },
        MetricDimensions = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
        MetricStatisticRecommendation = {
            type = "string",
        },
    },
}

M.ServiceQuota = {
    type = "structure",
    id = "ServiceQuota",
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
            type = "double",
        },
        Unit = {
            type = "string",
        },
        Adjustable = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        GlobalQuota = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
        UsageMetric = M.MetricInfo,
        Period = M.QuotaPeriod,
        ErrorReason = M.ErrorReason,
        QuotaAppliedAtLevel = {
            type = "string",
        },
        QuotaContext = M.QuotaContextInfo,
        Description = {
            type = "string",
        },
    },
}

M.GetAWSDefaultServiceQuotaOutput = {
    type = "structure",
    id = "GetAWSDefaultServiceQuotaOutput",
    members = {
        Quota = M.ServiceQuota,
    },
}

M.GetQuotaUtilizationReportInput = {
    type = "structure",
    id = "GetQuotaUtilizationReportInput",
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
            type = "integer",
        },
    },
}

M.QuotaUtilizationInfo = {
    type = "structure",
    id = "QuotaUtilizationInfo",
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
            type = "double",
        },
        DefaultValue = {
            type = "double",
        },
        AppliedValue = {
            type = "double",
        },
        ServiceName = {
            type = "string",
        },
        Adjustable = {
            type = "boolean",
            traits = {
                default = false,
            },
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
    id = "GetQuotaUtilizationReportOutput",
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
            type = "integer",
        },
        Quotas = {
            type = "list",
            member = M.QuotaUtilizationInfo,
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
    id = "GetRequestedServiceQuotaChangeInput",
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
    id = "RequestedServiceQuotaChange",
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
            type = "double",
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
            traits = {
                default = false,
            },
        },
        Unit = {
            type = "string",
        },
        QuotaRequestedAtLevel = {
            type = "string",
        },
        QuotaContext = M.QuotaContextInfo,
    },
}

M.GetRequestedServiceQuotaChangeOutput = {
    type = "structure",
    id = "GetRequestedServiceQuotaChangeOutput",
    members = {
        RequestedQuota = M.RequestedServiceQuotaChange,
    },
}

M.GetServiceQuotaInput = {
    type = "structure",
    id = "GetServiceQuotaInput",
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
    id = "GetServiceQuotaOutput",
    members = {
        Quota = M.ServiceQuota,
    },
}

M.GetServiceQuotaIncreaseRequestFromTemplateInput = {
    type = "structure",
    id = "GetServiceQuotaIncreaseRequestFromTemplateInput",
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
    id = "ServiceQuotaIncreaseRequestInTemplate",
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
            type = "double",
        },
        AwsRegion = {
            type = "string",
        },
        Unit = {
            type = "string",
        },
        GlobalQuota = {
            type = "boolean",
            traits = {
                default = false,
            },
        },
    },
}

M.GetServiceQuotaIncreaseRequestFromTemplateOutput = {
    type = "structure",
    id = "GetServiceQuotaIncreaseRequestFromTemplateOutput",
    members = {
        ServiceQuotaIncreaseRequestInTemplate = M.ServiceQuotaIncreaseRequestInTemplate,
    },
}

M.Tag = {
    type = "structure",
    id = "Tag",
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
    id = "InvalidPaginationTokenException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.ListAWSDefaultServiceQuotasInput = {
    type = "structure",
    id = "ListAWSDefaultServiceQuotasInput",
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
            type = "integer",
        },
    },
}

M.ListAWSDefaultServiceQuotasOutput = {
    type = "structure",
    id = "ListAWSDefaultServiceQuotasOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Quotas = {
            type = "list",
            member = M.ServiceQuota,
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryInput = {
    type = "structure",
    id = "ListRequestedServiceQuotaChangeHistoryInput",
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
            type = "integer",
        },
        QuotaRequestedAtLevel = {
            type = "string",
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryOutput = {
    type = "structure",
    id = "ListRequestedServiceQuotaChangeHistoryOutput",
    members = {
        NextToken = {
            type = "string",
        },
        RequestedQuotas = {
            type = "list",
            member = M.RequestedServiceQuotaChange,
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryByQuotaInput = {
    type = "structure",
    id = "ListRequestedServiceQuotaChangeHistoryByQuotaInput",
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
            type = "integer",
        },
        QuotaRequestedAtLevel = {
            type = "string",
        },
    },
}

M.ListRequestedServiceQuotaChangeHistoryByQuotaOutput = {
    type = "structure",
    id = "ListRequestedServiceQuotaChangeHistoryByQuotaOutput",
    members = {
        NextToken = {
            type = "string",
        },
        RequestedQuotas = {
            type = "list",
            member = M.RequestedServiceQuotaChange,
        },
    },
}

M.ListServiceQuotaIncreaseRequestsInTemplateInput = {
    type = "structure",
    id = "ListServiceQuotaIncreaseRequestsInTemplateInput",
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
            type = "integer",
        },
    },
}

M.ListServiceQuotaIncreaseRequestsInTemplateOutput = {
    type = "structure",
    id = "ListServiceQuotaIncreaseRequestsInTemplateOutput",
    members = {
        ServiceQuotaIncreaseRequestInTemplateList = {
            type = "list",
            member = M.ServiceQuotaIncreaseRequestInTemplate,
        },
        NextToken = {
            type = "string",
        },
    },
}

M.ListServiceQuotasInput = {
    type = "structure",
    id = "ListServiceQuotasInput",
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
            type = "integer",
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
    id = "ListServiceQuotasOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Quotas = {
            type = "list",
            member = M.ServiceQuota,
        },
    },
}

M.ListServicesInput = {
    type = "structure",
    id = "ListServicesInput",
    members = {
        NextToken = {
            type = "string",
        },
        MaxResults = {
            type = "integer",
        },
    },
}

M.ServiceInfo = {
    type = "structure",
    id = "ServiceInfo",
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
    id = "ListServicesOutput",
    members = {
        NextToken = {
            type = "string",
        },
        Services = {
            type = "list",
            member = M.ServiceInfo,
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
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
    id = "ListTagsForResourceOutput",
    members = {
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.PutServiceQuotaIncreaseRequestIntoTemplateInput = {
    type = "structure",
    id = "PutServiceQuotaIncreaseRequestIntoTemplateInput",
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
            type = "double",
            traits = {
                required = true,
            },
        },
    },
}

M.PutServiceQuotaIncreaseRequestIntoTemplateOutput = {
    type = "structure",
    id = "PutServiceQuotaIncreaseRequestIntoTemplateOutput",
    members = {
        ServiceQuotaIncreaseRequestInTemplate = M.ServiceQuotaIncreaseRequestInTemplate,
    },
}

M.QuotaExceededException = {
    type = "structure",
    id = "QuotaExceededException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.RequestServiceQuotaIncreaseInput = {
    type = "structure",
    id = "RequestServiceQuotaIncreaseInput",
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
            type = "double",
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
    id = "RequestServiceQuotaIncreaseOutput",
    members = {
        RequestedQuota = M.RequestedServiceQuotaChange,
    },
}

M.StartAutoManagementInput = {
    type = "structure",
    id = "StartAutoManagementInput",
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
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.StartAutoManagementOutput = {
    type = "structure",
    id = "StartAutoManagementOutput",
}

M.StartQuotaUtilizationReportInput = {
    type = "structure",
    id = "StartQuotaUtilizationReportInput",
}

M.StartQuotaUtilizationReportOutput = {
    type = "structure",
    id = "StartQuotaUtilizationReportOutput",
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
    id = "StopAutoManagementInput",
}

M.StopAutoManagementOutput = {
    type = "structure",
    id = "StopAutoManagementOutput",
}

M.TagPolicyViolationException = {
    type = "structure",
    id = "TagPolicyViolationException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
            traits = {
                required = true,
            },
        },
    },
}

M.TagResourceOutput = {
    type = "structure",
    id = "TagResourceOutput",
}

M.TooManyTagsException = {
    type = "structure",
    id = "TooManyTagsException",
    error = "client",
    members = {
        Message = {
            type = "string",
        },
    },
}

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        ResourceARN = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

M.UpdateAutoManagementInput = {
    type = "structure",
    id = "UpdateAutoManagementInput",
    members = {
        OptInType = {
            type = "string",
        },
        NotificationArn = {
            type = "string",
        },
        ExclusionList = {
            type = "map",
            key = { type = "string" },
            value = { type = "list" },
        },
    },
}

M.UpdateAutoManagementOutput = {
    type = "structure",
    id = "UpdateAutoManagementOutput",
}

return M
