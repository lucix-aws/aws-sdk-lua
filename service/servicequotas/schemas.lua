local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.servicequotas"

local M = {}

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

M.AssociateServiceQuotaTemplateInput = schema.new({
    id = id.from(_N, "AssociateServiceQuotaTemplateInput"),
    type = "structure",
})

M.AssociateServiceQuotaTemplateOutput = schema.new({
    id = id.from(_N, "AssociateServiceQuotaTemplateOutput"),
    type = "structure",
})

M.AWSServiceAccessNotEnabledException = schema.new({
    id = id.from(_N, "AWSServiceAccessNotEnabledException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "AWSServiceAccessNotEnabledException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DependencyAccessDeniedException = schema.new({
    id = id.from(_N, "DependencyAccessDeniedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "DependencyAccessDeniedException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoAvailableOrganizationException = schema.new({
    id = id.from(_N, "NoAvailableOrganizationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoAvailableOrganizationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.OrganizationNotInAllFeaturesModeException = schema.new({
    id = id.from(_N, "OrganizationNotInAllFeaturesModeException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "OrganizationNotInAllFeaturesModeException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceException = schema.new({
    id = id.from(_N, "ServiceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "server" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TemplatesNotAvailableInRegionException = schema.new({
    id = id.from(_N, "TemplatesNotAvailableInRegionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TemplatesNotAvailableInRegionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyRequestsException = schema.new({
    id = id.from(_N, "TooManyRequestsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyRequestsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateSupportCaseInput = schema.new({
    id = id.from(_N, "CreateSupportCaseInput"),
    type = "structure",
    members = {
        RequestId = schema.new({
            id = id.from(_N, "CreateSupportCaseInput", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateSupportCaseOutput = schema.new({
    id = id.from(_N, "CreateSupportCaseOutput"),
    type = "structure",
})

M.IllegalArgumentException = schema.new({
    id = id.from(_N, "IllegalArgumentException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "IllegalArgumentException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidResourceStateException = schema.new({
    id = id.from(_N, "InvalidResourceStateException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidResourceStateException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchResourceException = schema.new({
    id = id.from(_N, "NoSuchResourceException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchResourceException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ResourceAlreadyExistsException = schema.new({
    id = id.from(_N, "ResourceAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ResourceAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteServiceQuotaIncreaseRequestFromTemplateInput = schema.new({
    id = id.from(_N, "DeleteServiceQuotaIncreaseRequestFromTemplateInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "DeleteServiceQuotaIncreaseRequestFromTemplateInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "DeleteServiceQuotaIncreaseRequestFromTemplateInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "DeleteServiceQuotaIncreaseRequestFromTemplateInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteServiceQuotaIncreaseRequestFromTemplateOutput = schema.new({
    id = id.from(_N, "DeleteServiceQuotaIncreaseRequestFromTemplateOutput"),
    type = "structure",
})

M.DisassociateServiceQuotaTemplateInput = schema.new({
    id = id.from(_N, "DisassociateServiceQuotaTemplateInput"),
    type = "structure",
})

M.DisassociateServiceQuotaTemplateOutput = schema.new({
    id = id.from(_N, "DisassociateServiceQuotaTemplateOutput"),
    type = "structure",
})

M.ServiceQuotaTemplateNotInUseException = schema.new({
    id = id.from(_N, "ServiceQuotaTemplateNotInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "ServiceQuotaTemplateNotInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ErrorReason = schema.new({
    id = id.from(_N, "ErrorReason"),
    type = "structure",
    members = {
        ErrorCode = schema.new({
            id = id.from(_N, "ErrorReason", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "ErrorReason", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.QuotaInfo = schema.new({
    id = id.from(_N, "QuotaInfo"),
    type = "structure",
    members = {
        QuotaCode = schema.new({
            id = id.from(_N, "QuotaInfo", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        QuotaName = schema.new({
            id = id.from(_N, "QuotaInfo", "QuotaName"),
            type = "string",
            name = "QuotaName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAssociationForServiceQuotaTemplateInput = schema.new({
    id = id.from(_N, "GetAssociationForServiceQuotaTemplateInput"),
    type = "structure",
})

M.GetAssociationForServiceQuotaTemplateOutput = schema.new({
    id = id.from(_N, "GetAssociationForServiceQuotaTemplateOutput"),
    type = "structure",
    members = {
        ServiceQuotaTemplateAssociationStatus = schema.new({
            id = id.from(_N, "GetAssociationForServiceQuotaTemplateOutput", "ServiceQuotaTemplateAssociationStatus"),
            type = "string",
            name = "ServiceQuotaTemplateAssociationStatus",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAutoManagementConfigurationInput = schema.new({
    id = id.from(_N, "GetAutoManagementConfigurationInput"),
    type = "structure",
})

M.GetAutoManagementConfigurationOutput = schema.new({
    id = id.from(_N, "GetAutoManagementConfigurationOutput"),
    type = "structure",
    members = {
        OptInLevel = schema.new({
            id = id.from(_N, "GetAutoManagementConfigurationOutput", "OptInLevel"),
            type = "string",
            name = "OptInLevel",
            target_id = prelude.String.id,
        }),
        OptInType = schema.new({
            id = id.from(_N, "GetAutoManagementConfigurationOutput", "OptInType"),
            type = "string",
            name = "OptInType",
            target_id = prelude.String.id,
        }),
        NotificationArn = schema.new({
            id = id.from(_N, "GetAutoManagementConfigurationOutput", "NotificationArn"),
            type = "string",
            name = "NotificationArn",
            target_id = prelude.String.id,
        }),
        OptInStatus = schema.new({
            id = id.from(_N, "GetAutoManagementConfigurationOutput", "OptInStatus"),
            type = "string",
            name = "OptInStatus",
            target_id = prelude.String.id,
        }),
        ExclusionList = schema.new({
            id = id.from(_N, "GetAutoManagementConfigurationOutput", "ExclusionList"),
            type = "map",
            name = "ExclusionList",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.GetAWSDefaultServiceQuotaInput = schema.new({
    id = id.from(_N, "GetAWSDefaultServiceQuotaInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "GetAWSDefaultServiceQuotaInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "GetAWSDefaultServiceQuotaInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.QuotaPeriod = schema.new({
    id = id.from(_N, "QuotaPeriod"),
    type = "structure",
    members = {
        PeriodValue = schema.new({
            id = id.from(_N, "QuotaPeriod", "PeriodValue"),
            type = "integer",
            name = "PeriodValue",
            target_id = prelude.Integer.id,
        }),
        PeriodUnit = schema.new({
            id = id.from(_N, "QuotaPeriod", "PeriodUnit"),
            type = "string",
            name = "PeriodUnit",
            target_id = prelude.String.id,
        }),
    },
})

M.QuotaContextInfo = schema.new({
    id = id.from(_N, "QuotaContextInfo"),
    type = "structure",
    members = {
        ContextScope = schema.new({
            id = id.from(_N, "QuotaContextInfo", "ContextScope"),
            type = "string",
            name = "ContextScope",
            target_id = prelude.String.id,
        }),
        ContextScopeType = schema.new({
            id = id.from(_N, "QuotaContextInfo", "ContextScopeType"),
            type = "string",
            name = "ContextScopeType",
            target_id = prelude.String.id,
        }),
        ContextId = schema.new({
            id = id.from(_N, "QuotaContextInfo", "ContextId"),
            type = "string",
            name = "ContextId",
            target_id = prelude.String.id,
        }),
    },
})

M.MetricInfo = schema.new({
    id = id.from(_N, "MetricInfo"),
    type = "structure",
    members = {
        MetricNamespace = schema.new({
            id = id.from(_N, "MetricInfo", "MetricNamespace"),
            type = "string",
            name = "MetricNamespace",
            target_id = prelude.String.id,
        }),
        MetricName = schema.new({
            id = id.from(_N, "MetricInfo", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
        }),
        MetricDimensions = schema.new({
            id = id.from(_N, "MetricInfo", "MetricDimensions"),
            type = "map",
            name = "MetricDimensions",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.String,
        }),
        MetricStatisticRecommendation = schema.new({
            id = id.from(_N, "MetricInfo", "MetricStatisticRecommendation"),
            type = "string",
            name = "MetricStatisticRecommendation",
            target_id = prelude.String.id,
        }),
    },
})

M.ServiceQuota = schema.new({
    id = id.from(_N, "ServiceQuota"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuota", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ServiceQuota", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        QuotaArn = schema.new({
            id = id.from(_N, "ServiceQuota", "QuotaArn"),
            type = "string",
            name = "QuotaArn",
            target_id = prelude.String.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ServiceQuota", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        QuotaName = schema.new({
            id = id.from(_N, "ServiceQuota", "QuotaName"),
            type = "string",
            name = "QuotaName",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "ServiceQuota", "Value"),
            type = "double",
            name = "Value",
            target_id = prelude.Double.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "ServiceQuota", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        Adjustable = schema.new({
            id = id.from(_N, "ServiceQuota", "Adjustable"),
            type = "boolean",
            name = "Adjustable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        GlobalQuota = schema.new({
            id = id.from(_N, "ServiceQuota", "GlobalQuota"),
            type = "boolean",
            name = "GlobalQuota",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        UsageMetric = schema.new({
            id = id.from(_N, "ServiceQuota", "UsageMetric"),
            type = "structure",
            name = "UsageMetric",
            target_id = id.from(_N, "MetricInfo"),
            target = M.MetricInfo,
        }),
        Period = schema.new({
            id = id.from(_N, "ServiceQuota", "Period"),
            type = "structure",
            name = "Period",
            target_id = id.from(_N, "QuotaPeriod"),
            target = M.QuotaPeriod,
        }),
        ErrorReason = schema.new({
            id = id.from(_N, "ServiceQuota", "ErrorReason"),
            type = "structure",
            name = "ErrorReason",
            target_id = id.from(_N, "ErrorReason"),
            target = M.ErrorReason,
        }),
        QuotaAppliedAtLevel = schema.new({
            id = id.from(_N, "ServiceQuota", "QuotaAppliedAtLevel"),
            type = "string",
            name = "QuotaAppliedAtLevel",
            target_id = prelude.String.id,
        }),
        QuotaContext = schema.new({
            id = id.from(_N, "ServiceQuota", "QuotaContext"),
            type = "structure",
            name = "QuotaContext",
            target_id = id.from(_N, "QuotaContextInfo"),
            target = M.QuotaContextInfo,
        }),
        Description = schema.new({
            id = id.from(_N, "ServiceQuota", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAWSDefaultServiceQuotaOutput = schema.new({
    id = id.from(_N, "GetAWSDefaultServiceQuotaOutput"),
    type = "structure",
    members = {
        Quota = schema.new({
            id = id.from(_N, "GetAWSDefaultServiceQuotaOutput", "Quota"),
            type = "structure",
            name = "Quota",
            target_id = id.from(_N, "ServiceQuota"),
            target = M.ServiceQuota,
        }),
    },
})

M.GetQuotaUtilizationReportInput = schema.new({
    id = id.from(_N, "GetQuotaUtilizationReportInput"),
    type = "structure",
    members = {
        ReportId = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportInput", "ReportId"),
            type = "string",
            name = "ReportId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.QuotaUtilizationInfo = schema.new({
    id = id.from(_N, "QuotaUtilizationInfo"),
    type = "structure",
    members = {
        QuotaCode = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        QuotaName = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "QuotaName"),
            type = "string",
            name = "QuotaName",
            target_id = prelude.String.id,
        }),
        Namespace = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
        }),
        Utilization = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "Utilization"),
            type = "double",
            name = "Utilization",
            target_id = prelude.Double.id,
        }),
        DefaultValue = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "DefaultValue"),
            type = "double",
            name = "DefaultValue",
            target_id = prelude.Double.id,
        }),
        AppliedValue = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "AppliedValue"),
            type = "double",
            name = "AppliedValue",
            target_id = prelude.Double.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        Adjustable = schema.new({
            id = id.from(_N, "QuotaUtilizationInfo", "Adjustable"),
            type = "boolean",
            name = "Adjustable",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetQuotaUtilizationReportOutput = schema.new({
    id = id.from(_N, "GetQuotaUtilizationReportOutput"),
    type = "structure",
    members = {
        ReportId = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "ReportId"),
            type = "string",
            name = "ReportId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        GeneratedAt = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "GeneratedAt"),
            type = "timestamp",
            name = "GeneratedAt",
            target_id = prelude.Timestamp.id,
        }),
        TotalCount = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "TotalCount"),
            type = "integer",
            name = "TotalCount",
            target_id = prelude.Integer.id,
        }),
        Quotas = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "Quotas"),
            type = "list",
            name = "Quotas",
            target_id = prelude.Document.id,
            list_member = M.QuotaUtilizationInfo,
        }),
        NextToken = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        ErrorCode = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "ErrorCode"),
            type = "string",
            name = "ErrorCode",
            target_id = prelude.String.id,
        }),
        ErrorMessage = schema.new({
            id = id.from(_N, "GetQuotaUtilizationReportOutput", "ErrorMessage"),
            type = "string",
            name = "ErrorMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetRequestedServiceQuotaChangeInput = schema.new({
    id = id.from(_N, "GetRequestedServiceQuotaChangeInput"),
    type = "structure",
    members = {
        RequestId = schema.new({
            id = id.from(_N, "GetRequestedServiceQuotaChangeInput", "RequestId"),
            type = "string",
            name = "RequestId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.RequestedServiceQuotaChange = schema.new({
    id = id.from(_N, "RequestedServiceQuotaChange"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        RequestType = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "RequestType"),
            type = "string",
            name = "RequestType",
            target_id = prelude.String.id,
        }),
        CaseId = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "CaseId"),
            type = "string",
            name = "CaseId",
            target_id = prelude.String.id,
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        QuotaName = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "QuotaName"),
            type = "string",
            name = "QuotaName",
            target_id = prelude.String.id,
        }),
        DesiredValue = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "DesiredValue"),
            type = "double",
            name = "DesiredValue",
            target_id = prelude.Double.id,
        }),
        Status = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Created = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "Created"),
            type = "timestamp",
            name = "Created",
            target_id = prelude.Timestamp.id,
        }),
        LastUpdated = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "LastUpdated"),
            type = "timestamp",
            name = "LastUpdated",
            target_id = prelude.Timestamp.id,
        }),
        Requester = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "Requester"),
            type = "string",
            name = "Requester",
            target_id = prelude.String.id,
        }),
        QuotaArn = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "QuotaArn"),
            type = "string",
            name = "QuotaArn",
            target_id = prelude.String.id,
        }),
        GlobalQuota = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "GlobalQuota"),
            type = "boolean",
            name = "GlobalQuota",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
        Unit = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        QuotaRequestedAtLevel = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "QuotaRequestedAtLevel"),
            type = "string",
            name = "QuotaRequestedAtLevel",
            target_id = prelude.String.id,
        }),
        QuotaContext = schema.new({
            id = id.from(_N, "RequestedServiceQuotaChange", "QuotaContext"),
            type = "structure",
            name = "QuotaContext",
            target_id = id.from(_N, "QuotaContextInfo"),
            target = M.QuotaContextInfo,
        }),
    },
})

M.GetRequestedServiceQuotaChangeOutput = schema.new({
    id = id.from(_N, "GetRequestedServiceQuotaChangeOutput"),
    type = "structure",
    members = {
        RequestedQuota = schema.new({
            id = id.from(_N, "GetRequestedServiceQuotaChangeOutput", "RequestedQuota"),
            type = "structure",
            name = "RequestedQuota",
            target_id = id.from(_N, "RequestedServiceQuotaChange"),
            target = M.RequestedServiceQuotaChange,
        }),
    },
})

M.GetServiceQuotaInput = schema.new({
    id = id.from(_N, "GetServiceQuotaInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "GetServiceQuotaInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "GetServiceQuotaInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContextId = schema.new({
            id = id.from(_N, "GetServiceQuotaInput", "ContextId"),
            type = "string",
            name = "ContextId",
            target_id = prelude.String.id,
        }),
    },
})

M.GetServiceQuotaOutput = schema.new({
    id = id.from(_N, "GetServiceQuotaOutput"),
    type = "structure",
    members = {
        Quota = schema.new({
            id = id.from(_N, "GetServiceQuotaOutput", "Quota"),
            type = "structure",
            name = "Quota",
            target_id = id.from(_N, "ServiceQuota"),
            target = M.ServiceQuota,
        }),
    },
})

M.GetServiceQuotaIncreaseRequestFromTemplateInput = schema.new({
    id = id.from(_N, "GetServiceQuotaIncreaseRequestFromTemplateInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "GetServiceQuotaIncreaseRequestFromTemplateInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "GetServiceQuotaIncreaseRequestFromTemplateInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "GetServiceQuotaIncreaseRequestFromTemplateInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ServiceQuotaIncreaseRequestInTemplate = schema.new({
    id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        QuotaName = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "QuotaName"),
            type = "string",
            name = "QuotaName",
            target_id = prelude.String.id,
        }),
        DesiredValue = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "DesiredValue"),
            type = "double",
            name = "DesiredValue",
            target_id = prelude.Double.id,
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
        }),
        Unit = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "Unit"),
            type = "string",
            name = "Unit",
            target_id = prelude.String.id,
        }),
        GlobalQuota = schema.new({
            id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate", "GlobalQuota"),
            type = "boolean",
            name = "GlobalQuota",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.GetServiceQuotaIncreaseRequestFromTemplateOutput = schema.new({
    id = id.from(_N, "GetServiceQuotaIncreaseRequestFromTemplateOutput"),
    type = "structure",
    members = {
        ServiceQuotaIncreaseRequestInTemplate = schema.new({
            id = id.from(_N, "GetServiceQuotaIncreaseRequestFromTemplateOutput", "ServiceQuotaIncreaseRequestInTemplate"),
            type = "structure",
            name = "ServiceQuotaIncreaseRequestInTemplate",
            target_id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate"),
            target = M.ServiceQuotaIncreaseRequestInTemplate,
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

M.InvalidPaginationTokenException = schema.new({
    id = id.from(_N, "InvalidPaginationTokenException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "InvalidPaginationTokenException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListAWSDefaultServiceQuotasInput = schema.new({
    id = id.from(_N, "ListAWSDefaultServiceQuotasInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ListAWSDefaultServiceQuotasInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListAWSDefaultServiceQuotasInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListAWSDefaultServiceQuotasInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListAWSDefaultServiceQuotasOutput = schema.new({
    id = id.from(_N, "ListAWSDefaultServiceQuotasOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListAWSDefaultServiceQuotasOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Quotas = schema.new({
            id = id.from(_N, "ListAWSDefaultServiceQuotasOutput", "Quotas"),
            type = "list",
            name = "Quotas",
            target_id = prelude.Document.id,
            list_member = M.ServiceQuota,
        }),
    },
})

M.ListRequestedServiceQuotaChangeHistoryInput = schema.new({
    id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        QuotaRequestedAtLevel = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryInput", "QuotaRequestedAtLevel"),
            type = "string",
            name = "QuotaRequestedAtLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRequestedServiceQuotaChangeHistoryOutput = schema.new({
    id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        RequestedQuotas = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryOutput", "RequestedQuotas"),
            type = "list",
            name = "RequestedQuotas",
            target_id = prelude.Document.id,
            list_member = M.RequestedServiceQuotaChange,
        }),
    },
})

M.ListRequestedServiceQuotaChangeHistoryByQuotaInput = schema.new({
    id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        QuotaRequestedAtLevel = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaInput", "QuotaRequestedAtLevel"),
            type = "string",
            name = "QuotaRequestedAtLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListRequestedServiceQuotaChangeHistoryByQuotaOutput = schema.new({
    id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        RequestedQuotas = schema.new({
            id = id.from(_N, "ListRequestedServiceQuotaChangeHistoryByQuotaOutput", "RequestedQuotas"),
            type = "list",
            name = "RequestedQuotas",
            target_id = prelude.Document.id,
            list_member = M.RequestedServiceQuotaChange,
        }),
    },
})

M.ListServiceQuotaIncreaseRequestsInTemplateInput = schema.new({
    id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ListServiceQuotaIncreaseRequestsInTemplateOutput = schema.new({
    id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateOutput"),
    type = "structure",
    members = {
        ServiceQuotaIncreaseRequestInTemplateList = schema.new({
            id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateOutput", "ServiceQuotaIncreaseRequestInTemplateList"),
            type = "list",
            name = "ServiceQuotaIncreaseRequestInTemplateList",
            target_id = prelude.Document.id,
            list_member = M.ServiceQuotaIncreaseRequestInTemplate,
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServiceQuotaIncreaseRequestsInTemplateOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceQuotasInput = schema.new({
    id = id.from(_N, "ListServiceQuotasInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ListServiceQuotasInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListServiceQuotasInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServiceQuotasInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "ListServiceQuotasInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
        }),
        QuotaAppliedAtLevel = schema.new({
            id = id.from(_N, "ListServiceQuotasInput", "QuotaAppliedAtLevel"),
            type = "string",
            name = "QuotaAppliedAtLevel",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServiceQuotasOutput = schema.new({
    id = id.from(_N, "ListServiceQuotasOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListServiceQuotasOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Quotas = schema.new({
            id = id.from(_N, "ListServiceQuotasOutput", "Quotas"),
            type = "list",
            name = "Quotas",
            target_id = prelude.Document.id,
            list_member = M.ServiceQuota,
        }),
    },
})

M.ListServicesInput = schema.new({
    id = id.from(_N, "ListServicesInput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListServicesInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListServicesInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ServiceInfo = schema.new({
    id = id.from(_N, "ServiceInfo"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "ServiceInfo", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
        }),
        ServiceName = schema.new({
            id = id.from(_N, "ServiceInfo", "ServiceName"),
            type = "string",
            name = "ServiceName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListServicesOutput = schema.new({
    id = id.from(_N, "ListServicesOutput"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListServicesOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        Services = schema.new({
            id = id.from(_N, "ListServicesOutput", "Services"),
            type = "list",
            name = "Services",
            target_id = prelude.Document.id,
            list_member = M.ServiceInfo,
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceInput"),
    type = "structure",
    members = {
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

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceOutput"),
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

M.PutServiceQuotaIncreaseRequestIntoTemplateInput = schema.new({
    id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateInput"),
    type = "structure",
    members = {
        QuotaCode = schema.new({
            id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ServiceCode = schema.new({
            id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        AwsRegion = schema.new({
            id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateInput", "AwsRegion"),
            type = "string",
            name = "AwsRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredValue = schema.new({
            id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateInput", "DesiredValue"),
            type = "double",
            name = "DesiredValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.PutServiceQuotaIncreaseRequestIntoTemplateOutput = schema.new({
    id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateOutput"),
    type = "structure",
    members = {
        ServiceQuotaIncreaseRequestInTemplate = schema.new({
            id = id.from(_N, "PutServiceQuotaIncreaseRequestIntoTemplateOutput", "ServiceQuotaIncreaseRequestInTemplate"),
            type = "structure",
            name = "ServiceQuotaIncreaseRequestInTemplate",
            target_id = id.from(_N, "ServiceQuotaIncreaseRequestInTemplate"),
            target = M.ServiceQuotaIncreaseRequestInTemplate,
        }),
    },
})

M.QuotaExceededException = schema.new({
    id = id.from(_N, "QuotaExceededException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "QuotaExceededException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.RequestServiceQuotaIncreaseInput = schema.new({
    id = id.from(_N, "RequestServiceQuotaIncreaseInput"),
    type = "structure",
    members = {
        ServiceCode = schema.new({
            id = id.from(_N, "RequestServiceQuotaIncreaseInput", "ServiceCode"),
            type = "string",
            name = "ServiceCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        QuotaCode = schema.new({
            id = id.from(_N, "RequestServiceQuotaIncreaseInput", "QuotaCode"),
            type = "string",
            name = "QuotaCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DesiredValue = schema.new({
            id = id.from(_N, "RequestServiceQuotaIncreaseInput", "DesiredValue"),
            type = "double",
            name = "DesiredValue",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ContextId = schema.new({
            id = id.from(_N, "RequestServiceQuotaIncreaseInput", "ContextId"),
            type = "string",
            name = "ContextId",
            target_id = prelude.String.id,
        }),
        SupportCaseAllowed = schema.new({
            id = id.from(_N, "RequestServiceQuotaIncreaseInput", "SupportCaseAllowed"),
            type = "boolean",
            name = "SupportCaseAllowed",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.RequestServiceQuotaIncreaseOutput = schema.new({
    id = id.from(_N, "RequestServiceQuotaIncreaseOutput"),
    type = "structure",
    members = {
        RequestedQuota = schema.new({
            id = id.from(_N, "RequestServiceQuotaIncreaseOutput", "RequestedQuota"),
            type = "structure",
            name = "RequestedQuota",
            target_id = id.from(_N, "RequestedServiceQuotaChange"),
            target = M.RequestedServiceQuotaChange,
        }),
    },
})

M.StartAutoManagementInput = schema.new({
    id = id.from(_N, "StartAutoManagementInput"),
    type = "structure",
    members = {
        OptInLevel = schema.new({
            id = id.from(_N, "StartAutoManagementInput", "OptInLevel"),
            type = "string",
            name = "OptInLevel",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        OptInType = schema.new({
            id = id.from(_N, "StartAutoManagementInput", "OptInType"),
            type = "string",
            name = "OptInType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NotificationArn = schema.new({
            id = id.from(_N, "StartAutoManagementInput", "NotificationArn"),
            type = "string",
            name = "NotificationArn",
            target_id = prelude.String.id,
        }),
        ExclusionList = schema.new({
            id = id.from(_N, "StartAutoManagementInput", "ExclusionList"),
            type = "map",
            name = "ExclusionList",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.StartAutoManagementOutput = schema.new({
    id = id.from(_N, "StartAutoManagementOutput"),
    type = "structure",
})

M.StartQuotaUtilizationReportInput = schema.new({
    id = id.from(_N, "StartQuotaUtilizationReportInput"),
    type = "structure",
})

M.StartQuotaUtilizationReportOutput = schema.new({
    id = id.from(_N, "StartQuotaUtilizationReportOutput"),
    type = "structure",
    members = {
        ReportId = schema.new({
            id = id.from(_N, "StartQuotaUtilizationReportOutput", "ReportId"),
            type = "string",
            name = "ReportId",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "StartQuotaUtilizationReportOutput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        Message = schema.new({
            id = id.from(_N, "StartQuotaUtilizationReportOutput", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.StopAutoManagementInput = schema.new({
    id = id.from(_N, "StopAutoManagementInput"),
    type = "structure",
})

M.StopAutoManagementOutput = schema.new({
    id = id.from(_N, "StopAutoManagementOutput"),
    type = "structure",
})

M.TagPolicyViolationException = schema.new({
    id = id.from(_N, "TagPolicyViolationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TagPolicyViolationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.TagResourceInput = schema.new({
    id = id.from(_N, "TagResourceInput"),
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
    id = id.from(_N, "TagResourceOutput"),
    type = "structure",
})

M.TooManyTagsException = schema.new({
    id = id.from(_N, "TooManyTagsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "TooManyTagsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.UntagResourceInput = schema.new({
    id = id.from(_N, "UntagResourceInput"),
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
    id = id.from(_N, "UntagResourceOutput"),
    type = "structure",
})

M.UpdateAutoManagementInput = schema.new({
    id = id.from(_N, "UpdateAutoManagementInput"),
    type = "structure",
    members = {
        OptInType = schema.new({
            id = id.from(_N, "UpdateAutoManagementInput", "OptInType"),
            type = "string",
            name = "OptInType",
            target_id = prelude.String.id,
        }),
        NotificationArn = schema.new({
            id = id.from(_N, "UpdateAutoManagementInput", "NotificationArn"),
            type = "string",
            name = "NotificationArn",
            target_id = prelude.String.id,
        }),
        ExclusionList = schema.new({
            id = id.from(_N, "UpdateAutoManagementInput", "ExclusionList"),
            type = "map",
            name = "ExclusionList",
            target_id = prelude.Document.id,
            map_key = prelude.String,
            map_value = prelude.Document,
        }),
    },
})

M.UpdateAutoManagementOutput = schema.new({
    id = id.from(_N, "UpdateAutoManagementOutput"),
    type = "structure",
})

return M
