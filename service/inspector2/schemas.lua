

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.inspector2"

local M = {}

M.ValidationExceptionFields = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.AssociateConfigurationRequestList = schema.new({ type = "list", list_member = M.AssociateConfigurationRequest })

M.FailedAssociationResultList = schema.new({ type = "list", list_member = M.FailedAssociationResult })

M.SuccessfulAssociationResultList = schema.new({ type = "list", list_member = M.SuccessfulAssociationResult })

M.DisassociateConfigurationRequestList = schema.new({ type = "list", list_member = M.DisassociateConfigurationRequest })

M.AccountIdSet = schema.new({ type = "list", list_member = prelude.String })

M.AccountStateList = schema.new({ type = "list", list_member = M.AccountState })

M.FailedAccountList = schema.new({ type = "list", list_member = M.FailedAccount })

M.FindingArns = schema.new({ type = "list", list_member = prelude.String })

M.CodeSnippetResultList = schema.new({ type = "list", list_member = M.CodeSnippetResult })

M.CodeSnippetErrorList = schema.new({ type = "list", list_member = M.CodeSnippetError })

M.FindingArnList = schema.new({ type = "list", list_member = prelude.String })

M.FindingDetails = schema.new({ type = "list", list_member = M.FindingDetail })

M.FindingDetailsErrorList = schema.new({ type = "list", list_member = M.FindingDetailsError })

M.MeteringAccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.FreeTrialAccountInfoList = schema.new({ type = "list", list_member = M.FreeTrialAccountInfo })

M.FreeTrialInfoErrorList = schema.new({ type = "list", list_member = M.FreeTrialInfoError })

M.MemberAccountEc2DeepInspectionStatusStateList = schema.new({ type = "list", list_member = M.MemberAccountEc2DeepInspectionStatusState })

M.FailedMemberAccountEc2DeepInspectionStatusStateList = schema.new({ type = "list", list_member = M.FailedMemberAccountEc2DeepInspectionStatusState })

M.MemberAccountEc2DeepInspectionStatusList = schema.new({ type = "list", list_member = M.MemberAccountEc2DeepInspectionStatus })

M.CisTagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.DisableResourceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.AccountList = schema.new({ type = "list", list_member = M.Account })

M.EnableResourceTypeList = schema.new({ type = "list", list_member = prelude.String })

M.ReportTargetAccounts = schema.new({ type = "list", list_member = prelude.String })

M.CisScanResultDetailsList = schema.new({ type = "list", list_member = M.CisScanResultDetails })

M.ClusterInformationList = schema.new({ type = "list", list_member = M.ClusterInformation })

M.PathList = schema.new({ type = "list", list_member = prelude.String })

M.Permissions = schema.new({ type = "list", list_member = M.Permission })

M.CisScanConfigurationList = schema.new({ type = "list", list_member = M.CisScanConfiguration })

M.CisCheckAggregationList = schema.new({ type = "list", list_member = M.CisCheckAggregation })

M.CisTargetResourceAggregationList = schema.new({ type = "list", list_member = M.CisTargetResourceAggregation })

M.CisScanList = schema.new({ type = "list", list_member = M.CisScan })

M.IntegrationSummaries = schema.new({ type = "list", list_member = M.CodeSecurityIntegrationSummary })

M.CodeSecurityScanConfigurationAssociationSummaries = schema.new({ type = "list", list_member = M.CodeSecurityScanConfigurationAssociationSummary })

M.CodeSecurityScanConfigurationSummaries = schema.new({ type = "list", list_member = M.CodeSecurityScanConfigurationSummary })

M.CoveredResources = schema.new({ type = "list", list_member = M.CoveredResource })

M.CountsList = schema.new({ type = "list", list_member = M.Counts })

M.DelegatedAdminAccountList = schema.new({ type = "list", list_member = M.DelegatedAdminAccount })

M.FilterArnList = schema.new({ type = "list", list_member = prelude.String })

M.FilterList = schema.new({ type = "list", list_member = M.Filter })

M.StringFilterList = schema.new({ type = "list", list_member = M.StringFilter })

M.AggregationResponseList = schema.new({ type = "list", list_member = M.AggregationResponse })

M.FindingList = schema.new({ type = "list", list_member = M.Finding })

M.MemberList = schema.new({ type = "list", list_member = M.Member })

M.UsageAccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.UsageTotalList = schema.new({ type = "list", list_member = M.UsageTotal })

M.Vulnerabilities = schema.new({ type = "list", list_member = M.Vulnerability })

M.CisSessionMessages = schema.new({ type = "list", list_member = M.CisSessionMessage })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.TargetAccountList = schema.new({ type = "list", list_member = prelude.String })

M.TargetResourceTags = schema.new({ type = "map", map_key = prelude.String, map_value = M.TagValueList })

M.RuleSetCategories = schema.new({ type = "list", list_member = prelude.String })

M.DateFilterList = schema.new({ type = "list", list_member = M.DateFilter })

M.NumberFilterList = schema.new({ type = "list", list_member = M.NumberFilter })

M.MapFilterList = schema.new({ type = "list", list_member = M.MapFilter })

M.PortRangeFilterList = schema.new({ type = "list", list_member = M.PortRangeFilter })

M.PackageFilterList = schema.new({ type = "list", list_member = M.PackageFilter })

M.ResourceStringFilterList = schema.new({ type = "list", list_member = M.ResourceStringFilter })

M.ResourceMapFilterList = schema.new({ type = "list", list_member = M.ResourceMapFilter })

M.CisFindingStatusFilterList = schema.new({ type = "list", list_member = M.CisFindingStatusFilter })

M.CheckIdFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.TitleFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.CisSecurityLevelFilterList = schema.new({ type = "list", list_member = M.CisSecurityLevelFilter })

M.CisFindingArnFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.CisScanNameFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.ResourceTagFilterList = schema.new({ type = "list", list_member = M.TagFilter })

M.CisScanConfigurationArnFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.OneAccountIdFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.PlatformFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.CisNumberFilterList = schema.new({ type = "list", list_member = M.CisNumberFilter })

M.AccountIdFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.CisResultStatusFilterList = schema.new({ type = "list", list_member = M.CisResultStatusFilter })

M.ResourceIdFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.TargetStatusFilterList = schema.new({ type = "list", list_member = M.CisTargetStatusFilter })

M.TargetStatusReasonFilterList = schema.new({ type = "list", list_member = M.CisTargetStatusReasonFilter })

M.CisScanStatusFilterList = schema.new({ type = "list", list_member = M.CisScanStatusFilter })

M.CisScanDateFilterList = schema.new({ type = "list", list_member = M.CisDateFilter })

M.CisScanArnFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.CisScheduledByFilterList = schema.new({ type = "list", list_member = M.CisStringFilter })

M.CoverageStringFilterList = schema.new({ type = "list", list_member = M.CoverageStringFilter })

M.CoverageMapFilterList = schema.new({ type = "list", list_member = M.CoverageMapFilter })

M.CoverageDateFilterList = schema.new({ type = "list", list_member = M.CoverageDateFilter })

M.CoverageNumberFilterList = schema.new({ type = "list", list_member = M.CoverageNumberFilter })

M.VulnIdList = schema.new({ type = "list", list_member = prelude.String })

M.CodeLineList = schema.new({ type = "list", list_member = M.CodeLine })

M.SuggestedFixes = schema.new({ type = "list", list_member = M.SuggestedFix })

M.EvidenceList = schema.new({ type = "list", list_member = M.Evidence })

M.Ttps = schema.new({ type = "list", list_member = prelude.String })

M.Tools = schema.new({ type = "list", list_member = prelude.String })

M.VulnerabilityReferenceUrls = schema.new({ type = "list", list_member = prelude.String })

M.Cwes = schema.new({ type = "list", list_member = prelude.String })

M.FreeTrialInfoList = schema.new({ type = "list", list_member = M.FreeTrialInfo })

M.DaysList = schema.new({ type = "list", list_member = prelude.String })

M.TagValueList = schema.new({ type = "list", list_member = prelude.String })

M.ContinuousIntegrationScanSupportedEvents = schema.new({ type = "list", list_member = prelude.String })

M.ClusterDetailsList = schema.new({ type = "list", list_member = M.ClusterDetails })

M.ResourceList = schema.new({ type = "list", list_member = M.Resource })

M.UsageList = schema.new({ type = "list", list_member = M.Usage })

M.RelatedVulnerabilities = schema.new({ type = "list", list_member = prelude.String })

M.DetectionPlatforms = schema.new({ type = "list", list_member = prelude.String })

M.CisAccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.VulnerablePackageList = schema.new({ type = "list", list_member = M.VulnerablePackage })

M.CvssScoreList = schema.new({ type = "list", list_member = M.CvssScore })

M.VulnerabilityIdList = schema.new({ type = "list", list_member = prelude.String })

M.NonEmptyStringList = schema.new({ type = "list", list_member = prelude.String })

M.DetectorTagList = schema.new({ type = "list", list_member = prelude.String })

M.ReferenceUrls = schema.new({ type = "list", list_member = prelude.String })

M.CweList = schema.new({ type = "list", list_member = prelude.String })

M.Targets = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = prelude.String })

M.LambdaLayerList = schema.new({ type = "list", list_member = prelude.String })

M.CvssScoreAdjustmentList = schema.new({ type = "list", list_member = M.CvssScoreAdjustment })

M.StepList = schema.new({ type = "list", list_member = M.Step })

M.ProjectPeriodicScanConfigurationList = schema.new({ type = "list", list_member = M.ProjectPeriodicScanConfiguration })

M.ProjectContinuousIntegrationScanConfigurationList = schema.new({ type = "list", list_member = M.ProjectContinuousIntegrationScanConfiguration })

M.AwsEksWorkloadInfoList = schema.new({ type = "list", list_member = M.AwsEksWorkloadInfo })

M.IpV4AddressList = schema.new({ type = "list", list_member = prelude.String })

M.IpV6AddressList = schema.new({ type = "list", list_member = prelude.String })

M.ImageTagList = schema.new({ type = "list", list_member = prelude.String })

M.LayerList = schema.new({ type = "list", list_member = prelude.String })

M.ArchitectureList = schema.new({ type = "list", list_member = prelude.String })

M.SubnetIdList = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.AccessDeniedException = schema.new({
   id = id.from(_N, "AccessDeniedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AccessDeniedException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceStatus = schema.new({
   id = id.from(_N, "ResourceStatus"),
   type = "structure",
   members = {
      ec2 = schema.new({
         id = id.from(_N, "ResourceStatus", "ec2"),
         type = "string",
         name = "ec2",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ecr = schema.new({
         id = id.from(_N, "ResourceStatus", "ecr"),
         type = "string",
         name = "ecr",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lambda = schema.new({
         id = id.from(_N, "ResourceStatus", "lambda"),
         type = "string",
         name = "lambda",
         target_id = prelude.String.id,
      }),
      lambdaCode = schema.new({
         id = id.from(_N, "ResourceStatus", "lambdaCode"),
         type = "string",
         name = "lambdaCode",
         target_id = prelude.String.id,
      }),
      codeRepository = schema.new({
         id = id.from(_N, "ResourceStatus", "codeRepository"),
         type = "string",
         name = "codeRepository",
         target_id = prelude.String.id,
      }),
   },
})

M.Account = schema.new({
   id = id.from(_N, "Account"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "Account", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "Account", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceStatus = schema.new({
         id = id.from(_N, "Account", "resourceStatus"),
         type = "structure",
         name = "resourceStatus",
         target_id = id.from(_N, "ResourceStatus"),
         target = M.ResourceStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AccountAggregation = schema.new({
   id = id.from(_N, "AccountAggregation"),
   type = "structure",
   members = {
      findingType = schema.new({
         id = id.from(_N, "AccountAggregation", "findingType"),
         type = "string",
         name = "findingType",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "AccountAggregation", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "AccountAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "AccountAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.SeverityCounts = schema.new({
   id = id.from(_N, "SeverityCounts"),
   type = "structure",
   members = {
      all = schema.new({
         id = id.from(_N, "SeverityCounts", "all"),
         type = "long",
         name = "all",
         target_id = prelude.Long.id,
      }),
      medium = schema.new({
         id = id.from(_N, "SeverityCounts", "medium"),
         type = "long",
         name = "medium",
         target_id = prelude.Long.id,
      }),
      high = schema.new({
         id = id.from(_N, "SeverityCounts", "high"),
         type = "long",
         name = "high",
         target_id = prelude.Long.id,
      }),
      critical = schema.new({
         id = id.from(_N, "SeverityCounts", "critical"),
         type = "long",
         name = "critical",
         target_id = prelude.Long.id,
      }),
   },
})

M.AccountAggregationResponse = schema.new({
   id = id.from(_N, "AccountAggregationResponse"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AccountAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "AccountAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      exploitAvailableCount = schema.new({
         id = id.from(_N, "AccountAggregationResponse", "exploitAvailableCount"),
         type = "long",
         name = "exploitAvailableCount",
         target_id = prelude.Long.id,
      }),
      fixAvailableCount = schema.new({
         id = id.from(_N, "AccountAggregationResponse", "fixAvailableCount"),
         type = "long",
         name = "fixAvailableCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.CisStringFilter = schema.new({
   id = id.from(_N, "CisStringFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisStringFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisStringFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.State = schema.new({
   id = id.from(_N, "State"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "State", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCode = schema.new({
         id = id.from(_N, "State", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "State", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceState = schema.new({
   id = id.from(_N, "ResourceState"),
   type = "structure",
   members = {
      ec2 = schema.new({
         id = id.from(_N, "ResourceState", "ec2"),
         type = "structure",
         name = "ec2",
         target_id = id.from(_N, "State"),
         target = M.State,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ecr = schema.new({
         id = id.from(_N, "ResourceState", "ecr"),
         type = "structure",
         name = "ecr",
         target_id = id.from(_N, "State"),
         target = M.State,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lambda = schema.new({
         id = id.from(_N, "ResourceState", "lambda"),
         type = "structure",
         name = "lambda",
         target_id = id.from(_N, "State"),
         target = M.State,
      }),
      lambdaCode = schema.new({
         id = id.from(_N, "ResourceState", "lambdaCode"),
         type = "structure",
         name = "lambdaCode",
         target_id = id.from(_N, "State"),
         target = M.State,
      }),
      codeRepository = schema.new({
         id = id.from(_N, "ResourceState", "codeRepository"),
         type = "structure",
         name = "codeRepository",
         target_id = id.from(_N, "State"),
         target = M.State,
      }),
   },
})

M.AccountState = schema.new({
   id = id.from(_N, "AccountState"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AccountState", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      state = schema.new({
         id = id.from(_N, "AccountState", "state"),
         type = "structure",
         name = "state",
         target_id = id.from(_N, "State"),
         target = M.State,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceState = schema.new({
         id = id.from(_N, "AccountState", "resourceState"),
         type = "structure",
         name = "resourceState",
         target_id = id.from(_N, "ResourceState"),
         target = M.ResourceState,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StringFilter = schema.new({
   id = id.from(_N, "StringFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "StringFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "StringFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AmiAggregation = schema.new({
   id = id.from(_N, "AmiAggregation"),
   type = "structure",
   members = {
      amis = schema.new({
         id = id.from(_N, "AmiAggregation", "amis"),
         type = "list",
         name = "amis",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "AmiAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "AmiAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.NumberFilter = schema.new({
   id = id.from(_N, "NumberFilter"),
   type = "structure",
   members = {
      upperInclusive = schema.new({
         id = id.from(_N, "NumberFilter", "upperInclusive"),
         type = "double",
         name = "upperInclusive",
         target_id = prelude.Double.id,
      }),
      lowerInclusive = schema.new({
         id = id.from(_N, "NumberFilter", "lowerInclusive"),
         type = "double",
         name = "lowerInclusive",
         target_id = prelude.Double.id,
      }),
   },
})

M.DateFilter = schema.new({
   id = id.from(_N, "DateFilter"),
   type = "structure",
   members = {
      startInclusive = schema.new({
         id = id.from(_N, "DateFilter", "startInclusive"),
         type = "timestamp",
         name = "startInclusive",
         target_id = prelude.Timestamp.id,
      }),
      endInclusive = schema.new({
         id = id.from(_N, "DateFilter", "endInclusive"),
         type = "timestamp",
         name = "endInclusive",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AwsEcrContainerAggregation = schema.new({
   id = id.from(_N, "AwsEcrContainerAggregation"),
   type = "structure",
   members = {
      resourceIds = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "resourceIds"),
         type = "list",
         name = "resourceIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      imageShas = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "imageShas"),
         type = "list",
         name = "imageShas",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      repositories = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "repositories"),
         type = "list",
         name = "repositories",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      architectures = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "architectures"),
         type = "list",
         name = "architectures",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      imageTags = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "imageTags"),
         type = "list",
         name = "imageTags",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
      lastInUseAt = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "lastInUseAt"),
         type = "list",
         name = "lastInUseAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      inUseCount = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregation", "inUseCount"),
         type = "list",
         name = "inUseCount",
         target_id = prelude.Document.id,
         list_member = M.NumberFilter,
      }),
   },
})

M.CodeRepositoryAggregation = schema.new({
   id = id.from(_N, "CodeRepositoryAggregation"),
   type = "structure",
   members = {
      projectNames = schema.new({
         id = id.from(_N, "CodeRepositoryAggregation", "projectNames"),
         type = "list",
         name = "projectNames",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      providerTypes = schema.new({
         id = id.from(_N, "CodeRepositoryAggregation", "providerTypes"),
         type = "list",
         name = "providerTypes",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "CodeRepositoryAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "CodeRepositoryAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
      resourceIds = schema.new({
         id = id.from(_N, "CodeRepositoryAggregation", "resourceIds"),
         type = "list",
         name = "resourceIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
   },
})

M.MapFilter = schema.new({
   id = id.from(_N, "MapFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "MapFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "MapFilter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "MapFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.Ec2InstanceAggregation = schema.new({
   id = id.from(_N, "Ec2InstanceAggregation"),
   type = "structure",
   members = {
      amis = schema.new({
         id = id.from(_N, "Ec2InstanceAggregation", "amis"),
         type = "list",
         name = "amis",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      operatingSystems = schema.new({
         id = id.from(_N, "Ec2InstanceAggregation", "operatingSystems"),
         type = "list",
         name = "operatingSystems",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      instanceIds = schema.new({
         id = id.from(_N, "Ec2InstanceAggregation", "instanceIds"),
         type = "list",
         name = "instanceIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      instanceTags = schema.new({
         id = id.from(_N, "Ec2InstanceAggregation", "instanceTags"),
         type = "list",
         name = "instanceTags",
         target_id = prelude.Document.id,
         list_member = M.MapFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "Ec2InstanceAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "Ec2InstanceAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.FindingTypeAggregation = schema.new({
   id = id.from(_N, "FindingTypeAggregation"),
   type = "structure",
   members = {
      findingType = schema.new({
         id = id.from(_N, "FindingTypeAggregation", "findingType"),
         type = "string",
         name = "findingType",
         target_id = prelude.String.id,
      }),
      resourceType = schema.new({
         id = id.from(_N, "FindingTypeAggregation", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "FindingTypeAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "FindingTypeAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageLayerAggregation = schema.new({
   id = id.from(_N, "ImageLayerAggregation"),
   type = "structure",
   members = {
      repositories = schema.new({
         id = id.from(_N, "ImageLayerAggregation", "repositories"),
         type = "list",
         name = "repositories",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      resourceIds = schema.new({
         id = id.from(_N, "ImageLayerAggregation", "resourceIds"),
         type = "list",
         name = "resourceIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      layerHashes = schema.new({
         id = id.from(_N, "ImageLayerAggregation", "layerHashes"),
         type = "list",
         name = "layerHashes",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ImageLayerAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ImageLayerAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaFunctionAggregation = schema.new({
   id = id.from(_N, "LambdaFunctionAggregation"),
   type = "structure",
   members = {
      resourceIds = schema.new({
         id = id.from(_N, "LambdaFunctionAggregation", "resourceIds"),
         type = "list",
         name = "resourceIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      functionNames = schema.new({
         id = id.from(_N, "LambdaFunctionAggregation", "functionNames"),
         type = "list",
         name = "functionNames",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      runtimes = schema.new({
         id = id.from(_N, "LambdaFunctionAggregation", "runtimes"),
         type = "list",
         name = "runtimes",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      functionTags = schema.new({
         id = id.from(_N, "LambdaFunctionAggregation", "functionTags"),
         type = "list",
         name = "functionTags",
         target_id = prelude.Document.id,
         list_member = M.MapFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "LambdaFunctionAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "LambdaFunctionAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaLayerAggregation = schema.new({
   id = id.from(_N, "LambdaLayerAggregation"),
   type = "structure",
   members = {
      functionNames = schema.new({
         id = id.from(_N, "LambdaLayerAggregation", "functionNames"),
         type = "list",
         name = "functionNames",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      resourceIds = schema.new({
         id = id.from(_N, "LambdaLayerAggregation", "resourceIds"),
         type = "list",
         name = "resourceIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      layerArns = schema.new({
         id = id.from(_N, "LambdaLayerAggregation", "layerArns"),
         type = "list",
         name = "layerArns",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "LambdaLayerAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "LambdaLayerAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageAggregation = schema.new({
   id = id.from(_N, "PackageAggregation"),
   type = "structure",
   members = {
      packageNames = schema.new({
         id = id.from(_N, "PackageAggregation", "packageNames"),
         type = "list",
         name = "packageNames",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "PackageAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "PackageAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.RepositoryAggregation = schema.new({
   id = id.from(_N, "RepositoryAggregation"),
   type = "structure",
   members = {
      repositories = schema.new({
         id = id.from(_N, "RepositoryAggregation", "repositories"),
         type = "list",
         name = "repositories",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "RepositoryAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "RepositoryAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
   },
})

M.TitleAggregation = schema.new({
   id = id.from(_N, "TitleAggregation"),
   type = "structure",
   members = {
      titles = schema.new({
         id = id.from(_N, "TitleAggregation", "titles"),
         type = "list",
         name = "titles",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      vulnerabilityIds = schema.new({
         id = id.from(_N, "TitleAggregation", "vulnerabilityIds"),
         type = "list",
         name = "vulnerabilityIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      resourceType = schema.new({
         id = id.from(_N, "TitleAggregation", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      sortOrder = schema.new({
         id = id.from(_N, "TitleAggregation", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "TitleAggregation", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
      }),
      findingType = schema.new({
         id = id.from(_N, "TitleAggregation", "findingType"),
         type = "string",
         name = "findingType",
         target_id = prelude.String.id,
      }),
   },
})

M.AggregationRequest = schema.new({
   id = id.from(_N, "AggregationRequest"),
   type = "union",
   members = {
      accountAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "accountAggregation"),
         type = "structure",
         name = "accountAggregation",
         target_id = id.from(_N, "AccountAggregation"),
         target = M.AccountAggregation,
      }),
      amiAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "amiAggregation"),
         type = "structure",
         name = "amiAggregation",
         target_id = id.from(_N, "AmiAggregation"),
         target = M.AmiAggregation,
      }),
      awsEcrContainerAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "awsEcrContainerAggregation"),
         type = "structure",
         name = "awsEcrContainerAggregation",
         target_id = id.from(_N, "AwsEcrContainerAggregation"),
         target = M.AwsEcrContainerAggregation,
      }),
      ec2InstanceAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "ec2InstanceAggregation"),
         type = "structure",
         name = "ec2InstanceAggregation",
         target_id = id.from(_N, "Ec2InstanceAggregation"),
         target = M.Ec2InstanceAggregation,
      }),
      findingTypeAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "findingTypeAggregation"),
         type = "structure",
         name = "findingTypeAggregation",
         target_id = id.from(_N, "FindingTypeAggregation"),
         target = M.FindingTypeAggregation,
      }),
      imageLayerAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "imageLayerAggregation"),
         type = "structure",
         name = "imageLayerAggregation",
         target_id = id.from(_N, "ImageLayerAggregation"),
         target = M.ImageLayerAggregation,
      }),
      packageAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "packageAggregation"),
         type = "structure",
         name = "packageAggregation",
         target_id = id.from(_N, "PackageAggregation"),
         target = M.PackageAggregation,
      }),
      repositoryAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "repositoryAggregation"),
         type = "structure",
         name = "repositoryAggregation",
         target_id = id.from(_N, "RepositoryAggregation"),
         target = M.RepositoryAggregation,
      }),
      titleAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "titleAggregation"),
         type = "structure",
         name = "titleAggregation",
         target_id = id.from(_N, "TitleAggregation"),
         target = M.TitleAggregation,
      }),
      lambdaLayerAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "lambdaLayerAggregation"),
         type = "structure",
         name = "lambdaLayerAggregation",
         target_id = id.from(_N, "LambdaLayerAggregation"),
         target = M.LambdaLayerAggregation,
      }),
      lambdaFunctionAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "lambdaFunctionAggregation"),
         type = "structure",
         name = "lambdaFunctionAggregation",
         target_id = id.from(_N, "LambdaFunctionAggregation"),
         target = M.LambdaFunctionAggregation,
      }),
      codeRepositoryAggregation = schema.new({
         id = id.from(_N, "AggregationRequest", "codeRepositoryAggregation"),
         type = "structure",
         name = "codeRepositoryAggregation",
         target_id = id.from(_N, "CodeRepositoryAggregation"),
         target = M.CodeRepositoryAggregation,
      }),
   },
})

M.AmiAggregationResponse = schema.new({
   id = id.from(_N, "AmiAggregationResponse"),
   type = "structure",
   members = {
      ami = schema.new({
         id = id.from(_N, "AmiAggregationResponse", "ami"),
         type = "string",
         name = "ami",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "AmiAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "AmiAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      affectedInstances = schema.new({
         id = id.from(_N, "AmiAggregationResponse", "affectedInstances"),
         type = "long",
         name = "affectedInstances",
         target_id = prelude.Long.id,
      }),
   },
})

M.AwsEcrContainerAggregationResponse = schema.new({
   id = id.from(_N, "AwsEcrContainerAggregationResponse"),
   type = "structure",
   members = {
      resourceId = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageSha = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "imageSha"),
         type = "string",
         name = "imageSha",
         target_id = prelude.String.id,
      }),
      repository = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
      }),
      architecture = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      imageTags = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "imageTags"),
         type = "list",
         name = "imageTags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      accountId = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      lastInUseAt = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "lastInUseAt"),
         type = "timestamp",
         name = "lastInUseAt",
         target_id = prelude.Timestamp.id,
      }),
      inUseCount = schema.new({
         id = id.from(_N, "AwsEcrContainerAggregationResponse", "inUseCount"),
         type = "long",
         name = "inUseCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.CodeRepositoryAggregationResponse = schema.new({
   id = id.from(_N, "CodeRepositoryAggregationResponse"),
   type = "structure",
   members = {
      projectNames = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "projectNames"),
         type = "string",
         name = "projectNames",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      providerType = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "providerType"),
         type = "string",
         name = "providerType",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      exploitAvailableActiveFindingsCount = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "exploitAvailableActiveFindingsCount"),
         type = "long",
         name = "exploitAvailableActiveFindingsCount",
         target_id = prelude.Long.id,
      }),
      fixAvailableActiveFindingsCount = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "fixAvailableActiveFindingsCount"),
         type = "long",
         name = "fixAvailableActiveFindingsCount",
         target_id = prelude.Long.id,
      }),
      accountId = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      resourceId = schema.new({
         id = id.from(_N, "CodeRepositoryAggregationResponse", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
      }),
   },
})

M.Ec2InstanceAggregationResponse = schema.new({
   id = id.from(_N, "Ec2InstanceAggregationResponse"),
   type = "structure",
   members = {
      instanceId = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "instanceId"),
         type = "string",
         name = "instanceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ami = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "ami"),
         type = "string",
         name = "ami",
         target_id = prelude.String.id,
      }),
      operatingSystem = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "operatingSystem"),
         type = "string",
         name = "operatingSystem",
         target_id = prelude.String.id,
      }),
      instanceTags = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "instanceTags"),
         type = "map",
         name = "instanceTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      accountId = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      networkFindings = schema.new({
         id = id.from(_N, "Ec2InstanceAggregationResponse", "networkFindings"),
         type = "long",
         name = "networkFindings",
         target_id = prelude.Long.id,
      }),
   },
})

M.FindingTypeAggregationResponse = schema.new({
   id = id.from(_N, "FindingTypeAggregationResponse"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "FindingTypeAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "FindingTypeAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      exploitAvailableCount = schema.new({
         id = id.from(_N, "FindingTypeAggregationResponse", "exploitAvailableCount"),
         type = "long",
         name = "exploitAvailableCount",
         target_id = prelude.Long.id,
      }),
      fixAvailableCount = schema.new({
         id = id.from(_N, "FindingTypeAggregationResponse", "fixAvailableCount"),
         type = "long",
         name = "fixAvailableCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.ImageLayerAggregationResponse = schema.new({
   id = id.from(_N, "ImageLayerAggregationResponse"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "ImageLayerAggregationResponse", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ImageLayerAggregationResponse", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      layerHash = schema.new({
         id = id.from(_N, "ImageLayerAggregationResponse", "layerHash"),
         type = "string",
         name = "layerHash",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "ImageLayerAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      severityCounts = schema.new({
         id = id.from(_N, "ImageLayerAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
   },
})

M.LambdaFunctionAggregationResponse = schema.new({
   id = id.from(_N, "LambdaFunctionAggregationResponse"),
   type = "structure",
   members = {
      resourceId = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      functionName = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "functionName"),
         type = "string",
         name = "functionName",
         target_id = prelude.String.id,
      }),
      runtime = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "runtime"),
         type = "string",
         name = "runtime",
         target_id = prelude.String.id,
      }),
      lambdaTags = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "lambdaTags"),
         type = "map",
         name = "lambdaTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      accountId = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      lastModifiedAt = schema.new({
         id = id.from(_N, "LambdaFunctionAggregationResponse", "lastModifiedAt"),
         type = "timestamp",
         name = "lastModifiedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.LambdaLayerAggregationResponse = schema.new({
   id = id.from(_N, "LambdaLayerAggregationResponse"),
   type = "structure",
   members = {
      functionName = schema.new({
         id = id.from(_N, "LambdaLayerAggregationResponse", "functionName"),
         type = "string",
         name = "functionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "LambdaLayerAggregationResponse", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      layerArn = schema.new({
         id = id.from(_N, "LambdaLayerAggregationResponse", "layerArn"),
         type = "string",
         name = "layerArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "LambdaLayerAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      severityCounts = schema.new({
         id = id.from(_N, "LambdaLayerAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
   },
})

M.PackageAggregationResponse = schema.new({
   id = id.from(_N, "PackageAggregationResponse"),
   type = "structure",
   members = {
      packageName = schema.new({
         id = id.from(_N, "PackageAggregationResponse", "packageName"),
         type = "string",
         name = "packageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "PackageAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "PackageAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
   },
})

M.RepositoryAggregationResponse = schema.new({
   id = id.from(_N, "RepositoryAggregationResponse"),
   type = "structure",
   members = {
      repository = schema.new({
         id = id.from(_N, "RepositoryAggregationResponse", "repository"),
         type = "string",
         name = "repository",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "RepositoryAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "RepositoryAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
      affectedImages = schema.new({
         id = id.from(_N, "RepositoryAggregationResponse", "affectedImages"),
         type = "long",
         name = "affectedImages",
         target_id = prelude.Long.id,
      }),
   },
})

M.TitleAggregationResponse = schema.new({
   id = id.from(_N, "TitleAggregationResponse"),
   type = "structure",
   members = {
      title = schema.new({
         id = id.from(_N, "TitleAggregationResponse", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vulnerabilityId = schema.new({
         id = id.from(_N, "TitleAggregationResponse", "vulnerabilityId"),
         type = "string",
         name = "vulnerabilityId",
         target_id = prelude.String.id,
      }),
      accountId = schema.new({
         id = id.from(_N, "TitleAggregationResponse", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      severityCounts = schema.new({
         id = id.from(_N, "TitleAggregationResponse", "severityCounts"),
         type = "structure",
         name = "severityCounts",
         target_id = id.from(_N, "SeverityCounts"),
         target = M.SeverityCounts,
      }),
   },
})

M.AggregationResponse = schema.new({
   id = id.from(_N, "AggregationResponse"),
   type = "union",
   members = {
      accountAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "accountAggregation"),
         type = "structure",
         name = "accountAggregation",
         target_id = id.from(_N, "AccountAggregationResponse"),
         target = M.AccountAggregationResponse,
      }),
      amiAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "amiAggregation"),
         type = "structure",
         name = "amiAggregation",
         target_id = id.from(_N, "AmiAggregationResponse"),
         target = M.AmiAggregationResponse,
      }),
      awsEcrContainerAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "awsEcrContainerAggregation"),
         type = "structure",
         name = "awsEcrContainerAggregation",
         target_id = id.from(_N, "AwsEcrContainerAggregationResponse"),
         target = M.AwsEcrContainerAggregationResponse,
      }),
      ec2InstanceAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "ec2InstanceAggregation"),
         type = "structure",
         name = "ec2InstanceAggregation",
         target_id = id.from(_N, "Ec2InstanceAggregationResponse"),
         target = M.Ec2InstanceAggregationResponse,
      }),
      findingTypeAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "findingTypeAggregation"),
         type = "structure",
         name = "findingTypeAggregation",
         target_id = id.from(_N, "FindingTypeAggregationResponse"),
         target = M.FindingTypeAggregationResponse,
      }),
      imageLayerAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "imageLayerAggregation"),
         type = "structure",
         name = "imageLayerAggregation",
         target_id = id.from(_N, "ImageLayerAggregationResponse"),
         target = M.ImageLayerAggregationResponse,
      }),
      packageAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "packageAggregation"),
         type = "structure",
         name = "packageAggregation",
         target_id = id.from(_N, "PackageAggregationResponse"),
         target = M.PackageAggregationResponse,
      }),
      repositoryAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "repositoryAggregation"),
         type = "structure",
         name = "repositoryAggregation",
         target_id = id.from(_N, "RepositoryAggregationResponse"),
         target = M.RepositoryAggregationResponse,
      }),
      titleAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "titleAggregation"),
         type = "structure",
         name = "titleAggregation",
         target_id = id.from(_N, "TitleAggregationResponse"),
         target = M.TitleAggregationResponse,
      }),
      lambdaLayerAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "lambdaLayerAggregation"),
         type = "structure",
         name = "lambdaLayerAggregation",
         target_id = id.from(_N, "LambdaLayerAggregationResponse"),
         target = M.LambdaLayerAggregationResponse,
      }),
      lambdaFunctionAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "lambdaFunctionAggregation"),
         type = "structure",
         name = "lambdaFunctionAggregation",
         target_id = id.from(_N, "LambdaFunctionAggregationResponse"),
         target = M.LambdaFunctionAggregationResponse,
      }),
      codeRepositoryAggregation = schema.new({
         id = id.from(_N, "AggregationResponse", "codeRepositoryAggregation"),
         type = "structure",
         name = "codeRepositoryAggregation",
         target_id = id.from(_N, "CodeRepositoryAggregationResponse"),
         target = M.CodeRepositoryAggregationResponse,
      }),
   },
})

M.CodeSecurityResource = schema.new({
   id = id.from(_N, "CodeSecurityResource"),
   type = "union",
   members = {
      projectId = schema.new({
         id = id.from(_N, "CodeSecurityResource", "projectId"),
         type = "string",
         name = "projectId",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateConfigurationRequest = schema.new({
   id = id.from(_N, "AssociateConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "AssociateConfigurationRequest", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "AssociateConfigurationRequest", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateMemberInput = schema.new({
   id = id.from(_N, "AssociateMemberRequest"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AssociateMemberInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateMemberOutput = schema.new({
   id = id.from(_N, "AssociateMemberResponse"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "AssociateMemberOutput", "accountId"),
         type = "string",
         name = "accountId",
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
      message = schema.new({
         id = id.from(_N, "InternalServerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "InternalServerException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
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
      message = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceId"),
         type = "string",
         name = "resourceId",
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
      message = schema.new({
         id = id.from(_N, "ThrottlingException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
   },
})

M.ValidationExceptionField = schema.new({
   id = id.from(_N, "ValidationExceptionField"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ValidationExceptionField", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "ValidationExceptionField", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "ValidationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "ValidationException", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      fields = schema.new({
         id = id.from(_N, "ValidationException", "fields"),
         type = "list",
         name = "fields",
         target_id = prelude.Document.id,
         list_member = M.ValidationExceptionField,
      }),
   },
})

M.AtigData = schema.new({
   id = id.from(_N, "AtigData"),
   type = "structure",
   members = {
      firstSeen = schema.new({
         id = id.from(_N, "AtigData", "firstSeen"),
         type = "timestamp",
         name = "firstSeen",
         target_id = prelude.Timestamp.id,
      }),
      lastSeen = schema.new({
         id = id.from(_N, "AtigData", "lastSeen"),
         type = "timestamp",
         name = "lastSeen",
         target_id = prelude.Timestamp.id,
      }),
      targets = schema.new({
         id = id.from(_N, "AtigData", "targets"),
         type = "list",
         name = "targets",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ttps = schema.new({
         id = id.from(_N, "AtigData", "ttps"),
         type = "list",
         name = "ttps",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AutoEnable = schema.new({
   id = id.from(_N, "AutoEnable"),
   type = "structure",
   members = {
      ec2 = schema.new({
         id = id.from(_N, "AutoEnable", "ec2"),
         type = "boolean",
         name = "ec2",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ecr = schema.new({
         id = id.from(_N, "AutoEnable", "ecr"),
         type = "boolean",
         name = "ecr",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lambda = schema.new({
         id = id.from(_N, "AutoEnable", "lambda"),
         type = "boolean",
         name = "lambda",
         target_id = prelude.Boolean.id,
      }),
      lambdaCode = schema.new({
         id = id.from(_N, "AutoEnable", "lambdaCode"),
         type = "boolean",
         name = "lambdaCode",
         target_id = prelude.Boolean.id,
      }),
      codeRepository = schema.new({
         id = id.from(_N, "AutoEnable", "codeRepository"),
         type = "boolean",
         name = "codeRepository",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AwsEc2InstanceDetails = schema.new({
   id = id.from(_N, "AwsEc2InstanceDetails"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      imageId = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "imageId"),
         type = "string",
         name = "imageId",
         target_id = prelude.String.id,
      }),
      ipV4Addresses = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "ipV4Addresses"),
         type = "list",
         name = "ipV4Addresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ipV6Addresses = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "ipV6Addresses"),
         type = "list",
         name = "ipV6Addresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      keyName = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "keyName"),
         type = "string",
         name = "keyName",
         target_id = prelude.String.id,
      }),
      iamInstanceProfileArn = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "iamInstanceProfileArn"),
         type = "string",
         name = "iamInstanceProfileArn",
         target_id = prelude.String.id,
      }),
      vpcId = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
      }),
      subnetId = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "subnetId"),
         type = "string",
         name = "subnetId",
         target_id = prelude.String.id,
      }),
      launchedAt = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "launchedAt"),
         type = "timestamp",
         name = "launchedAt",
         target_id = prelude.Timestamp.id,
      }),
      platform = schema.new({
         id = id.from(_N, "AwsEc2InstanceDetails", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
   },
})

M.AwsEcrContainerImageDetails = schema.new({
   id = id.from(_N, "AwsEcrContainerImageDetails"),
   type = "structure",
   members = {
      repositoryName = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "repositoryName"),
         type = "string",
         name = "repositoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imageTags = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "imageTags"),
         type = "list",
         name = "imageTags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      pushedAt = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "pushedAt"),
         type = "timestamp",
         name = "pushedAt",
         target_id = prelude.Timestamp.id,
      }),
      author = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "author"),
         type = "string",
         name = "author",
         target_id = prelude.String.id,
      }),
      architecture = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      imageHash = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "imageHash"),
         type = "string",
         name = "imageHash",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      registry = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "registry"),
         type = "string",
         name = "registry",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      platform = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
      lastInUseAt = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "lastInUseAt"),
         type = "timestamp",
         name = "lastInUseAt",
         target_id = prelude.Timestamp.id,
      }),
      inUseCount = schema.new({
         id = id.from(_N, "AwsEcrContainerImageDetails", "inUseCount"),
         type = "long",
         name = "inUseCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.AwsEcsMetadataDetails = schema.new({
   id = id.from(_N, "AwsEcsMetadataDetails"),
   type = "structure",
   members = {
      detailsGroup = schema.new({
         id = id.from(_N, "AwsEcsMetadataDetails", "detailsGroup"),
         type = "string",
         name = "detailsGroup",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      taskDefinitionArn = schema.new({
         id = id.from(_N, "AwsEcsMetadataDetails", "taskDefinitionArn"),
         type = "string",
         name = "taskDefinitionArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AwsEksWorkloadInfo = schema.new({
   id = id.from(_N, "AwsEksWorkloadInfo"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "AwsEksWorkloadInfo", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "AwsEksWorkloadInfo", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AwsEksMetadataDetails = schema.new({
   id = id.from(_N, "AwsEksMetadataDetails"),
   type = "structure",
   members = {
      namespace = schema.new({
         id = id.from(_N, "AwsEksMetadataDetails", "namespace"),
         type = "string",
         name = "namespace",
         target_id = prelude.String.id,
      }),
      workloadInfoList = schema.new({
         id = id.from(_N, "AwsEksMetadataDetails", "workloadInfoList"),
         type = "list",
         name = "workloadInfoList",
         target_id = prelude.Document.id,
         list_member = M.AwsEksWorkloadInfo,
      }),
   },
})

M.LambdaVpcConfig = schema.new({
   id = id.from(_N, "LambdaVpcConfig"),
   type = "structure",
   members = {
      subnetIds = schema.new({
         id = id.from(_N, "LambdaVpcConfig", "subnetIds"),
         type = "list",
         name = "subnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      securityGroupIds = schema.new({
         id = id.from(_N, "LambdaVpcConfig", "securityGroupIds"),
         type = "list",
         name = "securityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      vpcId = schema.new({
         id = id.from(_N, "LambdaVpcConfig", "vpcId"),
         type = "string",
         name = "vpcId",
         target_id = prelude.String.id,
      }),
   },
})

M.AwsLambdaFunctionDetails = schema.new({
   id = id.from(_N, "AwsLambdaFunctionDetails"),
   type = "structure",
   members = {
      functionName = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "functionName"),
         type = "string",
         name = "functionName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      runtime = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "runtime"),
         type = "string",
         name = "runtime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      codeSha256 = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "codeSha256"),
         type = "string",
         name = "codeSha256",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      executionRoleArn = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "executionRoleArn"),
         type = "string",
         name = "executionRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      layers = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "layers"),
         type = "list",
         name = "layers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      vpcConfig = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "vpcConfig"),
         type = "structure",
         name = "vpcConfig",
         target_id = id.from(_N, "LambdaVpcConfig"),
         target = M.LambdaVpcConfig,
      }),
      packageType = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "packageType"),
         type = "string",
         name = "packageType",
         target_id = prelude.String.id,
      }),
      architectures = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "architectures"),
         type = "list",
         name = "architectures",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      lastModifiedAt = schema.new({
         id = id.from(_N, "AwsLambdaFunctionDetails", "lastModifiedAt"),
         type = "timestamp",
         name = "lastModifiedAt",
         target_id = prelude.Timestamp.id,
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
      message = schema.new({
         id = id.from(_N, "BadRequestException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchAssociateCodeSecurityScanConfigurationInput = schema.new({
   id = id.from(_N, "BatchAssociateCodeSecurityScanConfigurationRequest"),
   type = "structure",
   members = {
      associateConfigurationRequests = schema.new({
         id = id.from(_N, "BatchAssociateCodeSecurityScanConfigurationInput", "associateConfigurationRequests"),
         type = "list",
         name = "associateConfigurationRequests",
         target_id = prelude.Document.id,
         list_member = M.AssociateConfigurationRequest,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FailedAssociationResult = schema.new({
   id = id.from(_N, "FailedAssociationResult"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "FailedAssociationResult", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
      }),
      resource = schema.new({
         id = id.from(_N, "FailedAssociationResult", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
      }),
      statusCode = schema.new({
         id = id.from(_N, "FailedAssociationResult", "statusCode"),
         type = "string",
         name = "statusCode",
         target_id = prelude.String.id,
      }),
      statusMessage = schema.new({
         id = id.from(_N, "FailedAssociationResult", "statusMessage"),
         type = "string",
         name = "statusMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.SuccessfulAssociationResult = schema.new({
   id = id.from(_N, "SuccessfulAssociationResult"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "SuccessfulAssociationResult", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
      }),
      resource = schema.new({
         id = id.from(_N, "SuccessfulAssociationResult", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
      }),
   },
})

M.BatchAssociateCodeSecurityScanConfigurationOutput = schema.new({
   id = id.from(_N, "BatchAssociateCodeSecurityScanConfigurationResponse"),
   type = "structure",
   members = {
      failedAssociations = schema.new({
         id = id.from(_N, "BatchAssociateCodeSecurityScanConfigurationOutput", "failedAssociations"),
         type = "list",
         name = "failedAssociations",
         target_id = prelude.Document.id,
         list_member = M.FailedAssociationResult,
      }),
      successfulAssociations = schema.new({
         id = id.from(_N, "BatchAssociateCodeSecurityScanConfigurationOutput", "successfulAssociations"),
         type = "list",
         name = "successfulAssociations",
         target_id = prelude.Document.id,
         list_member = M.SuccessfulAssociationResult,
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
      message = schema.new({
         id = id.from(_N, "ConflictException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "ConflictException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ConflictException", "resourceType"),
         type = "string",
         name = "resourceType",
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
      message = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateConfigurationRequest = schema.new({
   id = id.from(_N, "DisassociateConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "DisassociateConfigurationRequest", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "DisassociateConfigurationRequest", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDisassociateCodeSecurityScanConfigurationInput = schema.new({
   id = id.from(_N, "BatchDisassociateCodeSecurityScanConfigurationRequest"),
   type = "structure",
   members = {
      disassociateConfigurationRequests = schema.new({
         id = id.from(_N, "BatchDisassociateCodeSecurityScanConfigurationInput", "disassociateConfigurationRequests"),
         type = "list",
         name = "disassociateConfigurationRequests",
         target_id = prelude.Document.id,
         list_member = M.DisassociateConfigurationRequest,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDisassociateCodeSecurityScanConfigurationOutput = schema.new({
   id = id.from(_N, "BatchDisassociateCodeSecurityScanConfigurationResponse"),
   type = "structure",
   members = {
      failedAssociations = schema.new({
         id = id.from(_N, "BatchDisassociateCodeSecurityScanConfigurationOutput", "failedAssociations"),
         type = "list",
         name = "failedAssociations",
         target_id = prelude.Document.id,
         list_member = M.FailedAssociationResult,
      }),
      successfulAssociations = schema.new({
         id = id.from(_N, "BatchDisassociateCodeSecurityScanConfigurationOutput", "successfulAssociations"),
         type = "list",
         name = "successfulAssociations",
         target_id = prelude.Document.id,
         list_member = M.SuccessfulAssociationResult,
      }),
   },
})

M.BatchGetAccountStatusInput = schema.new({
   id = id.from(_N, "BatchGetAccountStatusRequest"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "BatchGetAccountStatusInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.FailedAccount = schema.new({
   id = id.from(_N, "FailedAccount"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "FailedAccount", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "FailedAccount", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      resourceStatus = schema.new({
         id = id.from(_N, "FailedAccount", "resourceStatus"),
         type = "structure",
         name = "resourceStatus",
         target_id = id.from(_N, "ResourceStatus"),
         target = M.ResourceStatus,
      }),
      errorCode = schema.new({
         id = id.from(_N, "FailedAccount", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "FailedAccount", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetAccountStatusOutput = schema.new({
   id = id.from(_N, "BatchGetAccountStatusResponse"),
   type = "structure",
   members = {
      accounts = schema.new({
         id = id.from(_N, "BatchGetAccountStatusOutput", "accounts"),
         type = "list",
         name = "accounts",
         target_id = prelude.Document.id,
         list_member = M.AccountState,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      failedAccounts = schema.new({
         id = id.from(_N, "BatchGetAccountStatusOutput", "failedAccounts"),
         type = "list",
         name = "failedAccounts",
         target_id = prelude.Document.id,
         list_member = M.FailedAccount,
      }),
   },
})

M.BatchGetCodeSnippetInput = schema.new({
   id = id.from(_N, "BatchGetCodeSnippetRequest"),
   type = "structure",
   members = {
      findingArns = schema.new({
         id = id.from(_N, "BatchGetCodeSnippetInput", "findingArns"),
         type = "list",
         name = "findingArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CodeLine = schema.new({
   id = id.from(_N, "CodeLine"),
   type = "structure",
   members = {
      content = schema.new({
         id = id.from(_N, "CodeLine", "content"),
         type = "string",
         name = "content",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lineNumber = schema.new({
         id = id.from(_N, "CodeLine", "lineNumber"),
         type = "integer",
         name = "lineNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SuggestedFix = schema.new({
   id = id.from(_N, "SuggestedFix"),
   type = "structure",
   members = {
      description = schema.new({
         id = id.from(_N, "SuggestedFix", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "SuggestedFix", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
   },
})

M.CodeSnippetResult = schema.new({
   id = id.from(_N, "CodeSnippetResult"),
   type = "structure",
   members = {
      findingArn = schema.new({
         id = id.from(_N, "CodeSnippetResult", "findingArn"),
         type = "string",
         name = "findingArn",
         target_id = prelude.String.id,
      }),
      startLine = schema.new({
         id = id.from(_N, "CodeSnippetResult", "startLine"),
         type = "integer",
         name = "startLine",
         target_id = prelude.Integer.id,
      }),
      endLine = schema.new({
         id = id.from(_N, "CodeSnippetResult", "endLine"),
         type = "integer",
         name = "endLine",
         target_id = prelude.Integer.id,
      }),
      codeSnippet = schema.new({
         id = id.from(_N, "CodeSnippetResult", "codeSnippet"),
         type = "list",
         name = "codeSnippet",
         target_id = prelude.Document.id,
         list_member = M.CodeLine,
      }),
      suggestedFixes = schema.new({
         id = id.from(_N, "CodeSnippetResult", "suggestedFixes"),
         type = "list",
         name = "suggestedFixes",
         target_id = prelude.Document.id,
         list_member = M.SuggestedFix,
      }),
   },
})

M.CodeSnippetError = schema.new({
   id = id.from(_N, "CodeSnippetError"),
   type = "structure",
   members = {
      findingArn = schema.new({
         id = id.from(_N, "CodeSnippetError", "findingArn"),
         type = "string",
         name = "findingArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCode = schema.new({
         id = id.from(_N, "CodeSnippetError", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "CodeSnippetError", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetCodeSnippetOutput = schema.new({
   id = id.from(_N, "BatchGetCodeSnippetResponse"),
   type = "structure",
   members = {
      codeSnippetResults = schema.new({
         id = id.from(_N, "BatchGetCodeSnippetOutput", "codeSnippetResults"),
         type = "list",
         name = "codeSnippetResults",
         target_id = prelude.Document.id,
         list_member = M.CodeSnippetResult,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchGetCodeSnippetOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.CodeSnippetError,
      }),
   },
})

M.BatchGetFindingDetailsInput = schema.new({
   id = id.from(_N, "BatchGetFindingDetailsRequest"),
   type = "structure",
   members = {
      findingArns = schema.new({
         id = id.from(_N, "BatchGetFindingDetailsInput", "findingArns"),
         type = "list",
         name = "findingArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FindingDetailsError = schema.new({
   id = id.from(_N, "FindingDetailsError"),
   type = "structure",
   members = {
      findingArn = schema.new({
         id = id.from(_N, "FindingDetailsError", "findingArn"),
         type = "string",
         name = "findingArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorCode = schema.new({
         id = id.from(_N, "FindingDetailsError", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      errorMessage = schema.new({
         id = id.from(_N, "FindingDetailsError", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisaData = schema.new({
   id = id.from(_N, "CisaData"),
   type = "structure",
   members = {
      dateAdded = schema.new({
         id = id.from(_N, "CisaData", "dateAdded"),
         type = "timestamp",
         name = "dateAdded",
         target_id = prelude.Timestamp.id,
      }),
      dateDue = schema.new({
         id = id.from(_N, "CisaData", "dateDue"),
         type = "timestamp",
         name = "dateDue",
         target_id = prelude.Timestamp.id,
      }),
      action = schema.new({
         id = id.from(_N, "CisaData", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.Evidence = schema.new({
   id = id.from(_N, "Evidence"),
   type = "structure",
   members = {
      evidenceRule = schema.new({
         id = id.from(_N, "Evidence", "evidenceRule"),
         type = "string",
         name = "evidenceRule",
         target_id = prelude.String.id,
      }),
      evidenceDetail = schema.new({
         id = id.from(_N, "Evidence", "evidenceDetail"),
         type = "string",
         name = "evidenceDetail",
         target_id = prelude.String.id,
      }),
      severity = schema.new({
         id = id.from(_N, "Evidence", "severity"),
         type = "string",
         name = "severity",
         target_id = prelude.String.id,
      }),
   },
})

M.ExploitObserved = schema.new({
   id = id.from(_N, "ExploitObserved"),
   type = "structure",
   members = {
      lastSeen = schema.new({
         id = id.from(_N, "ExploitObserved", "lastSeen"),
         type = "timestamp",
         name = "lastSeen",
         target_id = prelude.Timestamp.id,
      }),
      firstSeen = schema.new({
         id = id.from(_N, "ExploitObserved", "firstSeen"),
         type = "timestamp",
         name = "firstSeen",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.FindingDetail = schema.new({
   id = id.from(_N, "FindingDetail"),
   type = "structure",
   members = {
      findingArn = schema.new({
         id = id.from(_N, "FindingDetail", "findingArn"),
         type = "string",
         name = "findingArn",
         target_id = prelude.String.id,
      }),
      cisaData = schema.new({
         id = id.from(_N, "FindingDetail", "cisaData"),
         type = "structure",
         name = "cisaData",
         target_id = id.from(_N, "CisaData"),
         target = M.CisaData,
      }),
      riskScore = schema.new({
         id = id.from(_N, "FindingDetail", "riskScore"),
         type = "integer",
         name = "riskScore",
         target_id = prelude.Integer.id,
      }),
      evidences = schema.new({
         id = id.from(_N, "FindingDetail", "evidences"),
         type = "list",
         name = "evidences",
         target_id = prelude.Document.id,
         list_member = M.Evidence,
      }),
      ttps = schema.new({
         id = id.from(_N, "FindingDetail", "ttps"),
         type = "list",
         name = "ttps",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      tools = schema.new({
         id = id.from(_N, "FindingDetail", "tools"),
         type = "list",
         name = "tools",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      exploitObserved = schema.new({
         id = id.from(_N, "FindingDetail", "exploitObserved"),
         type = "structure",
         name = "exploitObserved",
         target_id = id.from(_N, "ExploitObserved"),
         target = M.ExploitObserved,
      }),
      referenceUrls = schema.new({
         id = id.from(_N, "FindingDetail", "referenceUrls"),
         type = "list",
         name = "referenceUrls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      cwes = schema.new({
         id = id.from(_N, "FindingDetail", "cwes"),
         type = "list",
         name = "cwes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      epssScore = schema.new({
         id = id.from(_N, "FindingDetail", "epssScore"),
         type = "double",
         name = "epssScore",
         target_id = prelude.Double.id,
      }),
   },
})

M.BatchGetFindingDetailsOutput = schema.new({
   id = id.from(_N, "BatchGetFindingDetailsResponse"),
   type = "structure",
   members = {
      findingDetails = schema.new({
         id = id.from(_N, "BatchGetFindingDetailsOutput", "findingDetails"),
         type = "list",
         name = "findingDetails",
         target_id = prelude.Document.id,
         list_member = M.FindingDetail,
      }),
      errors = schema.new({
         id = id.from(_N, "BatchGetFindingDetailsOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.FindingDetailsError,
      }),
   },
})

M.BatchGetFreeTrialInfoInput = schema.new({
   id = id.from(_N, "BatchGetFreeTrialInfoRequest"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "BatchGetFreeTrialInfoInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FreeTrialInfo = schema.new({
   id = id.from(_N, "FreeTrialInfo"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "FreeTrialInfo", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      start = schema.new({
         id = id.from(_N, "FreeTrialInfo", "start"),
         type = "timestamp",
         name = "start",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ["end"] = schema.new({
         id = id.from(_N, "FreeTrialInfo", "end"),
         type = "timestamp",
         name = "end",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "FreeTrialInfo", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FreeTrialAccountInfo = schema.new({
   id = id.from(_N, "FreeTrialAccountInfo"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "FreeTrialAccountInfo", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      freeTrialInfo = schema.new({
         id = id.from(_N, "FreeTrialAccountInfo", "freeTrialInfo"),
         type = "list",
         name = "freeTrialInfo",
         target_id = prelude.Document.id,
         list_member = M.FreeTrialInfo,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.FreeTrialInfoError = schema.new({
   id = id.from(_N, "FreeTrialInfoError"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "FreeTrialInfoError", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      code = schema.new({
         id = id.from(_N, "FreeTrialInfoError", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "FreeTrialInfoError", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetFreeTrialInfoOutput = schema.new({
   id = id.from(_N, "BatchGetFreeTrialInfoResponse"),
   type = "structure",
   members = {
      accounts = schema.new({
         id = id.from(_N, "BatchGetFreeTrialInfoOutput", "accounts"),
         type = "list",
         name = "accounts",
         target_id = prelude.Document.id,
         list_member = M.FreeTrialAccountInfo,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      failedAccounts = schema.new({
         id = id.from(_N, "BatchGetFreeTrialInfoOutput", "failedAccounts"),
         type = "list",
         name = "failedAccounts",
         target_id = prelude.Document.id,
         list_member = M.FreeTrialInfoError,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchGetMemberEc2DeepInspectionStatusInput = schema.new({
   id = id.from(_N, "BatchGetMemberEc2DeepInspectionStatusRequest"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "BatchGetMemberEc2DeepInspectionStatusInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.MemberAccountEc2DeepInspectionStatusState = schema.new({
   id = id.from(_N, "MemberAccountEc2DeepInspectionStatusState"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "MemberAccountEc2DeepInspectionStatusState", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "MemberAccountEc2DeepInspectionStatusState", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "MemberAccountEc2DeepInspectionStatusState", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.FailedMemberAccountEc2DeepInspectionStatusState = schema.new({
   id = id.from(_N, "FailedMemberAccountEc2DeepInspectionStatusState"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "FailedMemberAccountEc2DeepInspectionStatusState", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ec2ScanStatus = schema.new({
         id = id.from(_N, "FailedMemberAccountEc2DeepInspectionStatusState", "ec2ScanStatus"),
         type = "string",
         name = "ec2ScanStatus",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "FailedMemberAccountEc2DeepInspectionStatusState", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchGetMemberEc2DeepInspectionStatusOutput = schema.new({
   id = id.from(_N, "BatchGetMemberEc2DeepInspectionStatusResponse"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "BatchGetMemberEc2DeepInspectionStatusOutput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = M.MemberAccountEc2DeepInspectionStatusState,
      }),
      failedAccountIds = schema.new({
         id = id.from(_N, "BatchGetMemberEc2DeepInspectionStatusOutput", "failedAccountIds"),
         type = "list",
         name = "failedAccountIds",
         target_id = prelude.Document.id,
         list_member = M.FailedMemberAccountEc2DeepInspectionStatusState,
      }),
   },
})

M.MemberAccountEc2DeepInspectionStatus = schema.new({
   id = id.from(_N, "MemberAccountEc2DeepInspectionStatus"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "MemberAccountEc2DeepInspectionStatus", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      activateDeepInspection = schema.new({
         id = id.from(_N, "MemberAccountEc2DeepInspectionStatus", "activateDeepInspection"),
         type = "boolean",
         name = "activateDeepInspection",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchUpdateMemberEc2DeepInspectionStatusInput = schema.new({
   id = id.from(_N, "BatchUpdateMemberEc2DeepInspectionStatusRequest"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "BatchUpdateMemberEc2DeepInspectionStatusInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = M.MemberAccountEc2DeepInspectionStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchUpdateMemberEc2DeepInspectionStatusOutput = schema.new({
   id = id.from(_N, "BatchUpdateMemberEc2DeepInspectionStatusResponse"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "BatchUpdateMemberEc2DeepInspectionStatusOutput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = M.MemberAccountEc2DeepInspectionStatusState,
      }),
      failedAccountIds = schema.new({
         id = id.from(_N, "BatchUpdateMemberEc2DeepInspectionStatusOutput", "failedAccountIds"),
         type = "list",
         name = "failedAccountIds",
         target_id = prelude.Document.id,
         list_member = M.FailedMemberAccountEc2DeepInspectionStatusState,
      }),
   },
})

M.CancelFindingsReportInput = schema.new({
   id = id.from(_N, "CancelFindingsReportRequest"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "CancelFindingsReportInput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelFindingsReportOutput = schema.new({
   id = id.from(_N, "CancelFindingsReportResponse"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "CancelFindingsReportOutput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelSbomExportInput = schema.new({
   id = id.from(_N, "CancelSbomExportRequest"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "CancelSbomExportInput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelSbomExportOutput = schema.new({
   id = id.from(_N, "CancelSbomExportResponse"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "CancelSbomExportOutput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
      }),
   },
})

M.StatusCounts = schema.new({
   id = id.from(_N, "StatusCounts"),
   type = "structure",
   members = {
      failed = schema.new({
         id = id.from(_N, "StatusCounts", "failed"),
         type = "integer",
         name = "failed",
         target_id = prelude.Integer.id,
      }),
      skipped = schema.new({
         id = id.from(_N, "StatusCounts", "skipped"),
         type = "integer",
         name = "skipped",
         target_id = prelude.Integer.id,
      }),
      passed = schema.new({
         id = id.from(_N, "StatusCounts", "passed"),
         type = "integer",
         name = "passed",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CisCheckAggregation = schema.new({
   id = id.from(_N, "CisCheckAggregation"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "CisCheckAggregation", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      checkId = schema.new({
         id = id.from(_N, "CisCheckAggregation", "checkId"),
         type = "string",
         name = "checkId",
         target_id = prelude.String.id,
      }),
      title = schema.new({
         id = id.from(_N, "CisCheckAggregation", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
      }),
      checkDescription = schema.new({
         id = id.from(_N, "CisCheckAggregation", "checkDescription"),
         type = "string",
         name = "checkDescription",
         target_id = prelude.String.id,
      }),
      level = schema.new({
         id = id.from(_N, "CisCheckAggregation", "level"),
         type = "string",
         name = "level",
         target_id = prelude.String.id,
      }),
      accountId = schema.new({
         id = id.from(_N, "CisCheckAggregation", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      statusCounts = schema.new({
         id = id.from(_N, "CisCheckAggregation", "statusCounts"),
         type = "structure",
         name = "statusCounts",
         target_id = id.from(_N, "StatusCounts"),
         target = M.StatusCounts,
      }),
      platform = schema.new({
         id = id.from(_N, "CisCheckAggregation", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
   },
})

M.CisDateFilter = schema.new({
   id = id.from(_N, "CisDateFilter"),
   type = "structure",
   members = {
      earliestScanStartTime = schema.new({
         id = id.from(_N, "CisDateFilter", "earliestScanStartTime"),
         type = "timestamp",
         name = "earliestScanStartTime",
         target_id = prelude.Timestamp.id,
      }),
      latestScanStartTime = schema.new({
         id = id.from(_N, "CisDateFilter", "latestScanStartTime"),
         type = "timestamp",
         name = "latestScanStartTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CisFindingStatusFilter = schema.new({
   id = id.from(_N, "CisFindingStatusFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisFindingStatusFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisFindingStatusFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisNumberFilter = schema.new({
   id = id.from(_N, "CisNumberFilter"),
   type = "structure",
   members = {
      upperInclusive = schema.new({
         id = id.from(_N, "CisNumberFilter", "upperInclusive"),
         type = "integer",
         name = "upperInclusive",
         target_id = prelude.Integer.id,
      }),
      lowerInclusive = schema.new({
         id = id.from(_N, "CisNumberFilter", "lowerInclusive"),
         type = "integer",
         name = "lowerInclusive",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CisResultStatusFilter = schema.new({
   id = id.from(_N, "CisResultStatusFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisResultStatusFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisResultStatusFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisTargets = schema.new({
   id = id.from(_N, "CisTargets"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "CisTargets", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      targetResourceTags = schema.new({
         id = id.from(_N, "CisTargets", "targetResourceTags"),
         type = "map",
         name = "targetResourceTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.CisScan = schema.new({
   id = id.from(_N, "CisScan"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "CisScan", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scanConfigurationArn = schema.new({
         id = id.from(_N, "CisScan", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CisScan", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      scanName = schema.new({
         id = id.from(_N, "CisScan", "scanName"),
         type = "string",
         name = "scanName",
         target_id = prelude.String.id,
      }),
      scanDate = schema.new({
         id = id.from(_N, "CisScan", "scanDate"),
         type = "timestamp",
         name = "scanDate",
         target_id = prelude.Timestamp.id,
      }),
      failedChecks = schema.new({
         id = id.from(_N, "CisScan", "failedChecks"),
         type = "integer",
         name = "failedChecks",
         target_id = prelude.Integer.id,
      }),
      totalChecks = schema.new({
         id = id.from(_N, "CisScan", "totalChecks"),
         type = "integer",
         name = "totalChecks",
         target_id = prelude.Integer.id,
      }),
      targets = schema.new({
         id = id.from(_N, "CisScan", "targets"),
         type = "structure",
         name = "targets",
         target_id = id.from(_N, "CisTargets"),
         target = M.CisTargets,
      }),
      scheduledBy = schema.new({
         id = id.from(_N, "CisScan", "scheduledBy"),
         type = "string",
         name = "scheduledBy",
         target_id = prelude.String.id,
      }),
      securityLevel = schema.new({
         id = id.from(_N, "CisScan", "securityLevel"),
         type = "string",
         name = "securityLevel",
         target_id = prelude.String.id,
      }),
   },
})

M.Time = schema.new({
   id = id.from(_N, "Time"),
   type = "structure",
   members = {
      timeOfDay = schema.new({
         id = id.from(_N, "Time", "timeOfDay"),
         type = "string",
         name = "timeOfDay",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      timezone = schema.new({
         id = id.from(_N, "Time", "timezone"),
         type = "string",
         name = "timezone",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DailySchedule = schema.new({
   id = id.from(_N, "DailySchedule"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "DailySchedule", "startTime"),
         type = "structure",
         name = "startTime",
         target_id = id.from(_N, "Time"),
         target = M.Time,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.MonthlySchedule = schema.new({
   id = id.from(_N, "MonthlySchedule"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "MonthlySchedule", "startTime"),
         type = "structure",
         name = "startTime",
         target_id = id.from(_N, "Time"),
         target = M.Time,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      day = schema.new({
         id = id.from(_N, "MonthlySchedule", "day"),
         type = "string",
         name = "day",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.OneTimeSchedule = schema.new({
   id = id.from(_N, "OneTimeSchedule"),
   type = "structure",
})

M.WeeklySchedule = schema.new({
   id = id.from(_N, "WeeklySchedule"),
   type = "structure",
   members = {
      startTime = schema.new({
         id = id.from(_N, "WeeklySchedule", "startTime"),
         type = "structure",
         name = "startTime",
         target_id = id.from(_N, "Time"),
         target = M.Time,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      days = schema.new({
         id = id.from(_N, "WeeklySchedule", "days"),
         type = "list",
         name = "days",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Schedule = schema.new({
   id = id.from(_N, "Schedule"),
   type = "union",
   members = {
      oneTime = schema.new({
         id = id.from(_N, "Schedule", "oneTime"),
         type = "structure",
         name = "oneTime",
         target_id = id.from(_N, "OneTimeSchedule"),
         target = M.OneTimeSchedule,
      }),
      daily = schema.new({
         id = id.from(_N, "Schedule", "daily"),
         type = "structure",
         name = "daily",
         target_id = id.from(_N, "DailySchedule"),
         target = M.DailySchedule,
      }),
      weekly = schema.new({
         id = id.from(_N, "Schedule", "weekly"),
         type = "structure",
         name = "weekly",
         target_id = id.from(_N, "WeeklySchedule"),
         target = M.WeeklySchedule,
      }),
      monthly = schema.new({
         id = id.from(_N, "Schedule", "monthly"),
         type = "structure",
         name = "monthly",
         target_id = id.from(_N, "MonthlySchedule"),
         target = M.MonthlySchedule,
      }),
   },
})

M.CisScanConfiguration = schema.new({
   id = id.from(_N, "CisScanConfiguration"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "CisScanConfiguration", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ownerId = schema.new({
         id = id.from(_N, "CisScanConfiguration", "ownerId"),
         type = "string",
         name = "ownerId",
         target_id = prelude.String.id,
      }),
      scanName = schema.new({
         id = id.from(_N, "CisScanConfiguration", "scanName"),
         type = "string",
         name = "scanName",
         target_id = prelude.String.id,
      }),
      securityLevel = schema.new({
         id = id.from(_N, "CisScanConfiguration", "securityLevel"),
         type = "string",
         name = "securityLevel",
         target_id = prelude.String.id,
      }),
      schedule = schema.new({
         id = id.from(_N, "CisScanConfiguration", "schedule"),
         type = "union",
         name = "schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
      }),
      targets = schema.new({
         id = id.from(_N, "CisScanConfiguration", "targets"),
         type = "structure",
         name = "targets",
         target_id = id.from(_N, "CisTargets"),
         target = M.CisTargets,
      }),
      tags = schema.new({
         id = id.from(_N, "CisScanConfiguration", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CisScanResultDetails = schema.new({
   id = id.from(_N, "CisScanResultDetails"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "CisScanResultDetails", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "CisScanResultDetails", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      targetResourceId = schema.new({
         id = id.from(_N, "CisScanResultDetails", "targetResourceId"),
         type = "string",
         name = "targetResourceId",
         target_id = prelude.String.id,
      }),
      platform = schema.new({
         id = id.from(_N, "CisScanResultDetails", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "CisScanResultDetails", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "CisScanResultDetails", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      checkId = schema.new({
         id = id.from(_N, "CisScanResultDetails", "checkId"),
         type = "string",
         name = "checkId",
         target_id = prelude.String.id,
      }),
      title = schema.new({
         id = id.from(_N, "CisScanResultDetails", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
      }),
      checkDescription = schema.new({
         id = id.from(_N, "CisScanResultDetails", "checkDescription"),
         type = "string",
         name = "checkDescription",
         target_id = prelude.String.id,
      }),
      remediation = schema.new({
         id = id.from(_N, "CisScanResultDetails", "remediation"),
         type = "string",
         name = "remediation",
         target_id = prelude.String.id,
      }),
      level = schema.new({
         id = id.from(_N, "CisScanResultDetails", "level"),
         type = "string",
         name = "level",
         target_id = prelude.String.id,
      }),
      findingArn = schema.new({
         id = id.from(_N, "CisScanResultDetails", "findingArn"),
         type = "string",
         name = "findingArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CisSecurityLevelFilter = schema.new({
   id = id.from(_N, "CisSecurityLevelFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisSecurityLevelFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisSecurityLevelFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisScanResultDetailsFilterCriteria = schema.new({
   id = id.from(_N, "CisScanResultDetailsFilterCriteria"),
   type = "structure",
   members = {
      findingStatusFilters = schema.new({
         id = id.from(_N, "CisScanResultDetailsFilterCriteria", "findingStatusFilters"),
         type = "list",
         name = "findingStatusFilters",
         target_id = prelude.Document.id,
         list_member = M.CisFindingStatusFilter,
      }),
      checkIdFilters = schema.new({
         id = id.from(_N, "CisScanResultDetailsFilterCriteria", "checkIdFilters"),
         type = "list",
         name = "checkIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      titleFilters = schema.new({
         id = id.from(_N, "CisScanResultDetailsFilterCriteria", "titleFilters"),
         type = "list",
         name = "titleFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      securityLevelFilters = schema.new({
         id = id.from(_N, "CisScanResultDetailsFilterCriteria", "securityLevelFilters"),
         type = "list",
         name = "securityLevelFilters",
         target_id = prelude.Document.id,
         list_member = M.CisSecurityLevelFilter,
      }),
      findingArnFilters = schema.new({
         id = id.from(_N, "CisScanResultDetailsFilterCriteria", "findingArnFilters"),
         type = "list",
         name = "findingArnFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
   },
})

M.CisScanResultsAggregatedByChecksFilterCriteria = schema.new({
   id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria"),
   type = "structure",
   members = {
      accountIdFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria", "accountIdFilters"),
         type = "list",
         name = "accountIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      checkIdFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria", "checkIdFilters"),
         type = "list",
         name = "checkIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      titleFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria", "titleFilters"),
         type = "list",
         name = "titleFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      platformFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria", "platformFilters"),
         type = "list",
         name = "platformFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      failedResourcesFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria", "failedResourcesFilters"),
         type = "list",
         name = "failedResourcesFilters",
         target_id = prelude.Document.id,
         list_member = M.CisNumberFilter,
      }),
      securityLevelFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria", "securityLevelFilters"),
         type = "list",
         name = "securityLevelFilters",
         target_id = prelude.Document.id,
         list_member = M.CisSecurityLevelFilter,
      }),
   },
})

M.TagFilter = schema.new({
   id = id.from(_N, "TagFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "TagFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "TagFilter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "TagFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisTargetStatusFilter = schema.new({
   id = id.from(_N, "CisTargetStatusFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisTargetStatusFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisTargetStatusFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisTargetStatusReasonFilter = schema.new({
   id = id.from(_N, "CisTargetStatusReasonFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisTargetStatusReasonFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisTargetStatusReasonFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisScanResultsAggregatedByTargetResourceFilterCriteria = schema.new({
   id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria"),
   type = "structure",
   members = {
      accountIdFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "accountIdFilters"),
         type = "list",
         name = "accountIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      statusFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "statusFilters"),
         type = "list",
         name = "statusFilters",
         target_id = prelude.Document.id,
         list_member = M.CisResultStatusFilter,
      }),
      checkIdFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "checkIdFilters"),
         type = "list",
         name = "checkIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      targetResourceIdFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "targetResourceIdFilters"),
         type = "list",
         name = "targetResourceIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      targetResourceTagFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "targetResourceTagFilters"),
         type = "list",
         name = "targetResourceTagFilters",
         target_id = prelude.Document.id,
         list_member = M.TagFilter,
      }),
      platformFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "platformFilters"),
         type = "list",
         name = "platformFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      targetStatusFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "targetStatusFilters"),
         type = "list",
         name = "targetStatusFilters",
         target_id = prelude.Document.id,
         list_member = M.CisTargetStatusFilter,
      }),
      targetStatusReasonFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "targetStatusReasonFilters"),
         type = "list",
         name = "targetStatusReasonFilters",
         target_id = prelude.Document.id,
         list_member = M.CisTargetStatusReasonFilter,
      }),
      failedChecksFilters = schema.new({
         id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria", "failedChecksFilters"),
         type = "list",
         name = "failedChecksFilters",
         target_id = prelude.Document.id,
         list_member = M.CisNumberFilter,
      }),
   },
})

M.CisScanStatusFilter = schema.new({
   id = id.from(_N, "CisScanStatusFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CisScanStatusFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CisScanStatusFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisSessionMessage = schema.new({
   id = id.from(_N, "CisSessionMessage"),
   type = "structure",
   members = {
      ruleId = schema.new({
         id = id.from(_N, "CisSessionMessage", "ruleId"),
         type = "string",
         name = "ruleId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CisSessionMessage", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      cisRuleDetails = schema.new({
         id = id.from(_N, "CisSessionMessage", "cisRuleDetails"),
         type = "blob",
         name = "cisRuleDetails",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CisTargetResourceAggregation = schema.new({
   id = id.from(_N, "CisTargetResourceAggregation"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetResourceId = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "targetResourceId"),
         type = "string",
         name = "targetResourceId",
         target_id = prelude.String.id,
      }),
      accountId = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      targetResourceTags = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "targetResourceTags"),
         type = "map",
         name = "targetResourceTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
      statusCounts = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "statusCounts"),
         type = "structure",
         name = "statusCounts",
         target_id = id.from(_N, "StatusCounts"),
         target = M.StatusCounts,
      }),
      platform = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
      targetStatus = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "targetStatus"),
         type = "string",
         name = "targetStatus",
         target_id = prelude.String.id,
      }),
      targetStatusReason = schema.new({
         id = id.from(_N, "CisTargetResourceAggregation", "targetStatusReason"),
         type = "string",
         name = "targetStatusReason",
         target_id = prelude.String.id,
      }),
   },
})

M.ClusterMetadata = schema.new({
   id = id.from(_N, "ClusterMetadata"),
   type = "union",
   members = {
      awsEcsMetadataDetails = schema.new({
         id = id.from(_N, "ClusterMetadata", "awsEcsMetadataDetails"),
         type = "structure",
         name = "awsEcsMetadataDetails",
         target_id = id.from(_N, "AwsEcsMetadataDetails"),
         target = M.AwsEcsMetadataDetails,
      }),
      awsEksMetadataDetails = schema.new({
         id = id.from(_N, "ClusterMetadata", "awsEksMetadataDetails"),
         type = "structure",
         name = "awsEksMetadataDetails",
         target_id = id.from(_N, "AwsEksMetadataDetails"),
         target = M.AwsEksMetadataDetails,
      }),
   },
})

M.ClusterDetails = schema.new({
   id = id.from(_N, "ClusterDetails"),
   type = "structure",
   members = {
      lastInUse = schema.new({
         id = id.from(_N, "ClusterDetails", "lastInUse"),
         type = "timestamp",
         name = "lastInUse",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      runningUnitCount = schema.new({
         id = id.from(_N, "ClusterDetails", "runningUnitCount"),
         type = "long",
         name = "runningUnitCount",
         target_id = prelude.Long.id,
      }),
      stoppedUnitCount = schema.new({
         id = id.from(_N, "ClusterDetails", "stoppedUnitCount"),
         type = "long",
         name = "stoppedUnitCount",
         target_id = prelude.Long.id,
      }),
      clusterMetadata = schema.new({
         id = id.from(_N, "ClusterDetails", "clusterMetadata"),
         type = "union",
         name = "clusterMetadata",
         target_id = id.from(_N, "ClusterMetadata"),
         target = M.ClusterMetadata,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ClusterForImageFilterCriteria = schema.new({
   id = id.from(_N, "ClusterForImageFilterCriteria"),
   type = "structure",
   members = {
      resourceId = schema.new({
         id = id.from(_N, "ClusterForImageFilterCriteria", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ClusterInformation = schema.new({
   id = id.from(_N, "ClusterInformation"),
   type = "structure",
   members = {
      clusterArn = schema.new({
         id = id.from(_N, "ClusterInformation", "clusterArn"),
         type = "string",
         name = "clusterArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clusterDetails = schema.new({
         id = id.from(_N, "ClusterInformation", "clusterDetails"),
         type = "list",
         name = "clusterDetails",
         target_id = prelude.Document.id,
         list_member = M.ClusterDetails,
      }),
   },
})

M.CodeFilePath = schema.new({
   id = id.from(_N, "CodeFilePath"),
   type = "structure",
   members = {
      fileName = schema.new({
         id = id.from(_N, "CodeFilePath", "fileName"),
         type = "string",
         name = "fileName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filePath = schema.new({
         id = id.from(_N, "CodeFilePath", "filePath"),
         type = "string",
         name = "filePath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      startLine = schema.new({
         id = id.from(_N, "CodeFilePath", "startLine"),
         type = "integer",
         name = "startLine",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = nil },
         },
      }),
      endLine = schema.new({
         id = id.from(_N, "CodeFilePath", "endLine"),
         type = "integer",
         name = "endLine",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.CodeRepositoryDetails = schema.new({
   id = id.from(_N, "CodeRepositoryDetails"),
   type = "structure",
   members = {
      projectName = schema.new({
         id = id.from(_N, "CodeRepositoryDetails", "projectName"),
         type = "string",
         name = "projectName",
         target_id = prelude.String.id,
      }),
      integrationArn = schema.new({
         id = id.from(_N, "CodeRepositoryDetails", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
      }),
      providerType = schema.new({
         id = id.from(_N, "CodeRepositoryDetails", "providerType"),
         type = "string",
         name = "providerType",
         target_id = prelude.String.id,
      }),
   },
})

M.ScanStatus = schema.new({
   id = id.from(_N, "ScanStatus"),
   type = "structure",
   members = {
      statusCode = schema.new({
         id = id.from(_N, "ScanStatus", "statusCode"),
         type = "string",
         name = "statusCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "ScanStatus", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CodeRepositoryOnDemandScan = schema.new({
   id = id.from(_N, "CodeRepositoryOnDemandScan"),
   type = "structure",
   members = {
      lastScannedCommitId = schema.new({
         id = id.from(_N, "CodeRepositoryOnDemandScan", "lastScannedCommitId"),
         type = "string",
         name = "lastScannedCommitId",
         target_id = prelude.String.id,
      }),
      lastScanAt = schema.new({
         id = id.from(_N, "CodeRepositoryOnDemandScan", "lastScanAt"),
         type = "timestamp",
         name = "lastScanAt",
         target_id = prelude.Timestamp.id,
      }),
      scanStatus = schema.new({
         id = id.from(_N, "CodeRepositoryOnDemandScan", "scanStatus"),
         type = "structure",
         name = "scanStatus",
         target_id = id.from(_N, "ScanStatus"),
         target = M.ScanStatus,
      }),
   },
})

M.ProjectContinuousIntegrationScanConfiguration = schema.new({
   id = id.from(_N, "ProjectContinuousIntegrationScanConfiguration"),
   type = "structure",
   members = {
      supportedEvent = schema.new({
         id = id.from(_N, "ProjectContinuousIntegrationScanConfiguration", "supportedEvent"),
         type = "string",
         name = "supportedEvent",
         target_id = prelude.String.id,
      }),
      ruleSetCategories = schema.new({
         id = id.from(_N, "ProjectContinuousIntegrationScanConfiguration", "ruleSetCategories"),
         type = "list",
         name = "ruleSetCategories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ProjectPeriodicScanConfiguration = schema.new({
   id = id.from(_N, "ProjectPeriodicScanConfiguration"),
   type = "structure",
   members = {
      frequencyExpression = schema.new({
         id = id.from(_N, "ProjectPeriodicScanConfiguration", "frequencyExpression"),
         type = "string",
         name = "frequencyExpression",
         target_id = prelude.String.id,
      }),
      ruleSetCategories = schema.new({
         id = id.from(_N, "ProjectPeriodicScanConfiguration", "ruleSetCategories"),
         type = "list",
         name = "ruleSetCategories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ProjectCodeSecurityScanConfiguration = schema.new({
   id = id.from(_N, "ProjectCodeSecurityScanConfiguration"),
   type = "structure",
   members = {
      periodicScanConfigurations = schema.new({
         id = id.from(_N, "ProjectCodeSecurityScanConfiguration", "periodicScanConfigurations"),
         type = "list",
         name = "periodicScanConfigurations",
         target_id = prelude.Document.id,
         list_member = M.ProjectPeriodicScanConfiguration,
      }),
      continuousIntegrationScanConfigurations = schema.new({
         id = id.from(_N, "ProjectCodeSecurityScanConfiguration", "continuousIntegrationScanConfigurations"),
         type = "list",
         name = "continuousIntegrationScanConfigurations",
         target_id = prelude.Document.id,
         list_member = M.ProjectContinuousIntegrationScanConfiguration,
      }),
   },
})

M.CodeRepositoryMetadata = schema.new({
   id = id.from(_N, "CodeRepositoryMetadata"),
   type = "structure",
   members = {
      projectName = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "projectName"),
         type = "string",
         name = "projectName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      integrationArn = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
      }),
      providerType = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "providerType"),
         type = "string",
         name = "providerType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      providerTypeVisibility = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "providerTypeVisibility"),
         type = "string",
         name = "providerTypeVisibility",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastScannedCommitId = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "lastScannedCommitId"),
         type = "string",
         name = "lastScannedCommitId",
         target_id = prelude.String.id,
      }),
      scanConfiguration = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "scanConfiguration"),
         type = "structure",
         name = "scanConfiguration",
         target_id = id.from(_N, "ProjectCodeSecurityScanConfiguration"),
         target = M.ProjectCodeSecurityScanConfiguration,
      }),
      onDemandScan = schema.new({
         id = id.from(_N, "CodeRepositoryMetadata", "onDemandScan"),
         type = "structure",
         name = "onDemandScan",
         target_id = id.from(_N, "CodeRepositoryOnDemandScan"),
         target = M.CodeRepositoryOnDemandScan,
      }),
   },
})

M.CodeSecurityIntegrationSummary = schema.new({
   id = id.from(_N, "CodeSecurityIntegrationSummary"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdOn = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "createdOn"),
         type = "timestamp",
         name = "createdOn",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdateOn = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "lastUpdateOn"),
         type = "timestamp",
         name = "lastUpdateOn",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CodeSecurityIntegrationSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ContinuousIntegrationScanConfiguration = schema.new({
   id = id.from(_N, "ContinuousIntegrationScanConfiguration"),
   type = "structure",
   members = {
      supportedEvents = schema.new({
         id = id.from(_N, "ContinuousIntegrationScanConfiguration", "supportedEvents"),
         type = "list",
         name = "supportedEvents",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PeriodicScanConfiguration = schema.new({
   id = id.from(_N, "PeriodicScanConfiguration"),
   type = "structure",
   members = {
      frequency = schema.new({
         id = id.from(_N, "PeriodicScanConfiguration", "frequency"),
         type = "string",
         name = "frequency",
         target_id = prelude.String.id,
      }),
      frequencyExpression = schema.new({
         id = id.from(_N, "PeriodicScanConfiguration", "frequencyExpression"),
         type = "string",
         name = "frequencyExpression",
         target_id = prelude.String.id,
      }),
   },
})

M.CodeSecurityScanConfiguration = schema.new({
   id = id.from(_N, "CodeSecurityScanConfiguration"),
   type = "structure",
   members = {
      periodicScanConfiguration = schema.new({
         id = id.from(_N, "CodeSecurityScanConfiguration", "periodicScanConfiguration"),
         type = "structure",
         name = "periodicScanConfiguration",
         target_id = id.from(_N, "PeriodicScanConfiguration"),
         target = M.PeriodicScanConfiguration,
      }),
      continuousIntegrationScanConfiguration = schema.new({
         id = id.from(_N, "CodeSecurityScanConfiguration", "continuousIntegrationScanConfiguration"),
         type = "structure",
         name = "continuousIntegrationScanConfiguration",
         target_id = id.from(_N, "ContinuousIntegrationScanConfiguration"),
         target = M.ContinuousIntegrationScanConfiguration,
      }),
      ruleSetCategories = schema.new({
         id = id.from(_N, "CodeSecurityScanConfiguration", "ruleSetCategories"),
         type = "list",
         name = "ruleSetCategories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CodeSecurityScanConfigurationAssociationSummary = schema.new({
   id = id.from(_N, "CodeSecurityScanConfigurationAssociationSummary"),
   type = "structure",
   members = {
      resource = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationAssociationSummary", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
      }),
   },
})

M.ScopeSettings = schema.new({
   id = id.from(_N, "ScopeSettings"),
   type = "structure",
   members = {
      projectSelectionScope = schema.new({
         id = id.from(_N, "ScopeSettings", "projectSelectionScope"),
         type = "string",
         name = "projectSelectionScope",
         target_id = prelude.String.id,
      }),
   },
})

M.CodeSecurityScanConfigurationSummary = schema.new({
   id = id.from(_N, "CodeSecurityScanConfigurationSummary"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ownerAccountId = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "ownerAccountId"),
         type = "string",
         name = "ownerAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      periodicScanFrequency = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "periodicScanFrequency"),
         type = "string",
         name = "periodicScanFrequency",
         target_id = prelude.String.id,
      }),
      frequencyExpression = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "frequencyExpression"),
         type = "string",
         name = "frequencyExpression",
         target_id = prelude.String.id,
      }),
      continuousIntegrationScanSupportedEvents = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "continuousIntegrationScanSupportedEvents"),
         type = "list",
         name = "continuousIntegrationScanSupportedEvents",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ruleSetCategories = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "ruleSetCategories"),
         type = "list",
         name = "ruleSetCategories",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scopeSettings = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "scopeSettings"),
         type = "structure",
         name = "scopeSettings",
         target_id = id.from(_N, "ScopeSettings"),
         target = M.ScopeSettings,
      }),
      tags = schema.new({
         id = id.from(_N, "CodeSecurityScanConfigurationSummary", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CodeVulnerabilityDetails = schema.new({
   id = id.from(_N, "CodeVulnerabilityDetails"),
   type = "structure",
   members = {
      filePath = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "filePath"),
         type = "structure",
         name = "filePath",
         target_id = id.from(_N, "CodeFilePath"),
         target = M.CodeFilePath,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      detectorTags = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "detectorTags"),
         type = "list",
         name = "detectorTags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      referenceUrls = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "referenceUrls"),
         type = "list",
         name = "referenceUrls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ruleId = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "ruleId"),
         type = "string",
         name = "ruleId",
         target_id = prelude.String.id,
      }),
      sourceLambdaLayerArn = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "sourceLambdaLayerArn"),
         type = "string",
         name = "sourceLambdaLayerArn",
         target_id = prelude.String.id,
      }),
      detectorId = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "detectorId"),
         type = "string",
         name = "detectorId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      detectorName = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "detectorName"),
         type = "string",
         name = "detectorName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      cwes = schema.new({
         id = id.from(_N, "CodeVulnerabilityDetails", "cwes"),
         type = "list",
         name = "cwes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ComputePlatform = schema.new({
   id = id.from(_N, "ComputePlatform"),
   type = "structure",
   members = {
      vendor = schema.new({
         id = id.from(_N, "ComputePlatform", "vendor"),
         type = "string",
         name = "vendor",
         target_id = prelude.String.id,
      }),
      product = schema.new({
         id = id.from(_N, "ComputePlatform", "product"),
         type = "string",
         name = "product",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "ComputePlatform", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
      }),
   },
})

M.Counts = schema.new({
   id = id.from(_N, "Counts"),
   type = "structure",
   members = {
      count = schema.new({
         id = id.from(_N, "Counts", "count"),
         type = "long",
         name = "count",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      groupKey = schema.new({
         id = id.from(_N, "Counts", "groupKey"),
         type = "string",
         name = "groupKey",
         target_id = prelude.String.id,
      }),
   },
})

M.CoverageDateFilter = schema.new({
   id = id.from(_N, "CoverageDateFilter"),
   type = "structure",
   members = {
      startInclusive = schema.new({
         id = id.from(_N, "CoverageDateFilter", "startInclusive"),
         type = "timestamp",
         name = "startInclusive",
         target_id = prelude.Timestamp.id,
      }),
      endInclusive = schema.new({
         id = id.from(_N, "CoverageDateFilter", "endInclusive"),
         type = "timestamp",
         name = "endInclusive",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CoverageStringFilter = schema.new({
   id = id.from(_N, "CoverageStringFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CoverageStringFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CoverageStringFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CoverageMapFilter = schema.new({
   id = id.from(_N, "CoverageMapFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "CoverageMapFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "CoverageMapFilter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "CoverageMapFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.CoverageNumberFilter = schema.new({
   id = id.from(_N, "CoverageNumberFilter"),
   type = "structure",
   members = {
      upperInclusive = schema.new({
         id = id.from(_N, "CoverageNumberFilter", "upperInclusive"),
         type = "long",
         name = "upperInclusive",
         target_id = prelude.Long.id,
      }),
      lowerInclusive = schema.new({
         id = id.from(_N, "CoverageNumberFilter", "lowerInclusive"),
         type = "long",
         name = "lowerInclusive",
         target_id = prelude.Long.id,
      }),
   },
})

M.CoverageFilterCriteria = schema.new({
   id = id.from(_N, "CoverageFilterCriteria"),
   type = "structure",
   members = {
      scanStatusCode = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "scanStatusCode"),
         type = "list",
         name = "scanStatusCode",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      scanStatusReason = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "scanStatusReason"),
         type = "list",
         name = "scanStatusReason",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      accountId = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "accountId"),
         type = "list",
         name = "accountId",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      resourceId = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "resourceId"),
         type = "list",
         name = "resourceId",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      resourceType = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "resourceType"),
         type = "list",
         name = "resourceType",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      scanType = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "scanType"),
         type = "list",
         name = "scanType",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      ecrRepositoryName = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "ecrRepositoryName"),
         type = "list",
         name = "ecrRepositoryName",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      ecrImageTags = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "ecrImageTags"),
         type = "list",
         name = "ecrImageTags",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      ec2InstanceTags = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "ec2InstanceTags"),
         type = "list",
         name = "ec2InstanceTags",
         target_id = prelude.Document.id,
         list_member = M.CoverageMapFilter,
      }),
      lambdaFunctionName = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "lambdaFunctionName"),
         type = "list",
         name = "lambdaFunctionName",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      lambdaFunctionTags = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "lambdaFunctionTags"),
         type = "list",
         name = "lambdaFunctionTags",
         target_id = prelude.Document.id,
         list_member = M.CoverageMapFilter,
      }),
      lambdaFunctionRuntime = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "lambdaFunctionRuntime"),
         type = "list",
         name = "lambdaFunctionRuntime",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      lastScannedAt = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "lastScannedAt"),
         type = "list",
         name = "lastScannedAt",
         target_id = prelude.Document.id,
         list_member = M.CoverageDateFilter,
      }),
      scanMode = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "scanMode"),
         type = "list",
         name = "scanMode",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      imagePulledAt = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "imagePulledAt"),
         type = "list",
         name = "imagePulledAt",
         target_id = prelude.Document.id,
         list_member = M.CoverageDateFilter,
      }),
      ecrImageLastInUseAt = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "ecrImageLastInUseAt"),
         type = "list",
         name = "ecrImageLastInUseAt",
         target_id = prelude.Document.id,
         list_member = M.CoverageDateFilter,
      }),
      ecrImageInUseCount = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "ecrImageInUseCount"),
         type = "list",
         name = "ecrImageInUseCount",
         target_id = prelude.Document.id,
         list_member = M.CoverageNumberFilter,
      }),
      codeRepositoryProjectName = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "codeRepositoryProjectName"),
         type = "list",
         name = "codeRepositoryProjectName",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      codeRepositoryProviderType = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "codeRepositoryProviderType"),
         type = "list",
         name = "codeRepositoryProviderType",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      codeRepositoryProviderTypeVisibility = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "codeRepositoryProviderTypeVisibility"),
         type = "list",
         name = "codeRepositoryProviderTypeVisibility",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
      lastScannedCommitId = schema.new({
         id = id.from(_N, "CoverageFilterCriteria", "lastScannedCommitId"),
         type = "list",
         name = "lastScannedCommitId",
         target_id = prelude.Document.id,
         list_member = M.CoverageStringFilter,
      }),
   },
})

M.Ec2Metadata = schema.new({
   id = id.from(_N, "Ec2Metadata"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "Ec2Metadata", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      amiId = schema.new({
         id = id.from(_N, "Ec2Metadata", "amiId"),
         type = "string",
         name = "amiId",
         target_id = prelude.String.id,
      }),
      platform = schema.new({
         id = id.from(_N, "Ec2Metadata", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
   },
})

M.EcrContainerImageMetadata = schema.new({
   id = id.from(_N, "EcrContainerImageMetadata"),
   type = "structure",
   members = {
      tags = schema.new({
         id = id.from(_N, "EcrContainerImageMetadata", "tags"),
         type = "list",
         name = "tags",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      imagePulledAt = schema.new({
         id = id.from(_N, "EcrContainerImageMetadata", "imagePulledAt"),
         type = "timestamp",
         name = "imagePulledAt",
         target_id = prelude.Timestamp.id,
      }),
      lastInUseAt = schema.new({
         id = id.from(_N, "EcrContainerImageMetadata", "lastInUseAt"),
         type = "timestamp",
         name = "lastInUseAt",
         target_id = prelude.Timestamp.id,
      }),
      inUseCount = schema.new({
         id = id.from(_N, "EcrContainerImageMetadata", "inUseCount"),
         type = "long",
         name = "inUseCount",
         target_id = prelude.Long.id,
      }),
   },
})

M.EcrRepositoryMetadata = schema.new({
   id = id.from(_N, "EcrRepositoryMetadata"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "EcrRepositoryMetadata", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      scanFrequency = schema.new({
         id = id.from(_N, "EcrRepositoryMetadata", "scanFrequency"),
         type = "string",
         name = "scanFrequency",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaFunctionMetadata = schema.new({
   id = id.from(_N, "LambdaFunctionMetadata"),
   type = "structure",
   members = {
      functionTags = schema.new({
         id = id.from(_N, "LambdaFunctionMetadata", "functionTags"),
         type = "map",
         name = "functionTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      layers = schema.new({
         id = id.from(_N, "LambdaFunctionMetadata", "layers"),
         type = "list",
         name = "layers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      functionName = schema.new({
         id = id.from(_N, "LambdaFunctionMetadata", "functionName"),
         type = "string",
         name = "functionName",
         target_id = prelude.String.id,
      }),
      runtime = schema.new({
         id = id.from(_N, "LambdaFunctionMetadata", "runtime"),
         type = "string",
         name = "runtime",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceScanMetadata = schema.new({
   id = id.from(_N, "ResourceScanMetadata"),
   type = "structure",
   members = {
      ecrRepository = schema.new({
         id = id.from(_N, "ResourceScanMetadata", "ecrRepository"),
         type = "structure",
         name = "ecrRepository",
         target_id = id.from(_N, "EcrRepositoryMetadata"),
         target = M.EcrRepositoryMetadata,
      }),
      ecrImage = schema.new({
         id = id.from(_N, "ResourceScanMetadata", "ecrImage"),
         type = "structure",
         name = "ecrImage",
         target_id = id.from(_N, "EcrContainerImageMetadata"),
         target = M.EcrContainerImageMetadata,
      }),
      ec2 = schema.new({
         id = id.from(_N, "ResourceScanMetadata", "ec2"),
         type = "structure",
         name = "ec2",
         target_id = id.from(_N, "Ec2Metadata"),
         target = M.Ec2Metadata,
      }),
      lambdaFunction = schema.new({
         id = id.from(_N, "ResourceScanMetadata", "lambdaFunction"),
         type = "structure",
         name = "lambdaFunction",
         target_id = id.from(_N, "LambdaFunctionMetadata"),
         target = M.LambdaFunctionMetadata,
      }),
      codeRepository = schema.new({
         id = id.from(_N, "ResourceScanMetadata", "codeRepository"),
         type = "structure",
         name = "codeRepository",
         target_id = id.from(_N, "CodeRepositoryMetadata"),
         target = M.CodeRepositoryMetadata,
      }),
   },
})

M.CoveredResource = schema.new({
   id = id.from(_N, "CoveredResource"),
   type = "structure",
   members = {
      resourceType = schema.new({
         id = id.from(_N, "CoveredResource", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceId = schema.new({
         id = id.from(_N, "CoveredResource", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "CoveredResource", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scanType = schema.new({
         id = id.from(_N, "CoveredResource", "scanType"),
         type = "string",
         name = "scanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scanStatus = schema.new({
         id = id.from(_N, "CoveredResource", "scanStatus"),
         type = "structure",
         name = "scanStatus",
         target_id = id.from(_N, "ScanStatus"),
         target = M.ScanStatus,
      }),
      resourceMetadata = schema.new({
         id = id.from(_N, "CoveredResource", "resourceMetadata"),
         type = "structure",
         name = "resourceMetadata",
         target_id = id.from(_N, "ResourceScanMetadata"),
         target = M.ResourceScanMetadata,
      }),
      lastScannedAt = schema.new({
         id = id.from(_N, "CoveredResource", "lastScannedAt"),
         type = "timestamp",
         name = "lastScannedAt",
         target_id = prelude.Timestamp.id,
      }),
      scanMode = schema.new({
         id = id.from(_N, "CoveredResource", "scanMode"),
         type = "string",
         name = "scanMode",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCisTargets = schema.new({
   id = id.from(_N, "CreateCisTargets"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "CreateCisTargets", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetResourceTags = schema.new({
         id = id.from(_N, "CreateCisTargets", "targetResourceTags"),
         type = "map",
         name = "targetResourceTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateCisScanConfigurationInput = schema.new({
   id = id.from(_N, "CreateCisScanConfigurationRequest"),
   type = "structure",
   members = {
      scanName = schema.new({
         id = id.from(_N, "CreateCisScanConfigurationInput", "scanName"),
         type = "string",
         name = "scanName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      securityLevel = schema.new({
         id = id.from(_N, "CreateCisScanConfigurationInput", "securityLevel"),
         type = "string",
         name = "securityLevel",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      schedule = schema.new({
         id = id.from(_N, "CreateCisScanConfigurationInput", "schedule"),
         type = "union",
         name = "schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targets = schema.new({
         id = id.from(_N, "CreateCisScanConfigurationInput", "targets"),
         type = "structure",
         name = "targets",
         target_id = id.from(_N, "CreateCisTargets"),
         target = M.CreateCisTargets,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateCisScanConfigurationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateCisScanConfigurationOutput = schema.new({
   id = id.from(_N, "CreateCisScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "CreateCisScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateGitLabSelfManagedIntegrationDetail = schema.new({
   id = id.from(_N, "CreateGitLabSelfManagedIntegrationDetail"),
   type = "structure",
   members = {
      instanceUrl = schema.new({
         id = id.from(_N, "CreateGitLabSelfManagedIntegrationDetail", "instanceUrl"),
         type = "string",
         name = "instanceUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accessToken = schema.new({
         id = id.from(_N, "CreateGitLabSelfManagedIntegrationDetail", "accessToken"),
         type = "string",
         name = "accessToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateIntegrationDetail = schema.new({
   id = id.from(_N, "CreateIntegrationDetail"),
   type = "union",
   members = {
      gitlabSelfManaged = schema.new({
         id = id.from(_N, "CreateIntegrationDetail", "gitlabSelfManaged"),
         type = "structure",
         name = "gitlabSelfManaged",
         target_id = id.from(_N, "CreateGitLabSelfManagedIntegrationDetail"),
         target = M.CreateGitLabSelfManagedIntegrationDetail,
      }),
   },
})

M.CreateCodeSecurityIntegrationInput = schema.new({
   id = id.from(_N, "CreateCodeSecurityIntegrationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationInput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      details = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationInput", "details"),
         type = "union",
         name = "details",
         target_id = id.from(_N, "CreateIntegrationDetail"),
         target = M.CreateIntegrationDetail,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateCodeSecurityIntegrationOutput = schema.new({
   id = id.from(_N, "CreateCodeSecurityIntegrationResponse"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationOutput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      authorizationUrl = schema.new({
         id = id.from(_N, "CreateCodeSecurityIntegrationOutput", "authorizationUrl"),
         type = "string",
         name = "authorizationUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCodeSecurityScanConfigurationInput = schema.new({
   id = id.from(_N, "CreateCodeSecurityScanConfigurationRequest"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "CreateCodeSecurityScanConfigurationInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      level = schema.new({
         id = id.from(_N, "CreateCodeSecurityScanConfigurationInput", "level"),
         type = "string",
         name = "level",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configuration = schema.new({
         id = id.from(_N, "CreateCodeSecurityScanConfigurationInput", "configuration"),
         type = "structure",
         name = "configuration",
         target_id = id.from(_N, "CodeSecurityScanConfiguration"),
         target = M.CodeSecurityScanConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scopeSettings = schema.new({
         id = id.from(_N, "CreateCodeSecurityScanConfigurationInput", "scopeSettings"),
         type = "structure",
         name = "scopeSettings",
         target_id = id.from(_N, "ScopeSettings"),
         target = M.ScopeSettings,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateCodeSecurityScanConfigurationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateCodeSecurityScanConfigurationOutput = schema.new({
   id = id.from(_N, "CreateCodeSecurityScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "CreateCodeSecurityScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.PortRangeFilter = schema.new({
   id = id.from(_N, "PortRangeFilter"),
   type = "structure",
   members = {
      beginInclusive = schema.new({
         id = id.from(_N, "PortRangeFilter", "beginInclusive"),
         type = "integer",
         name = "beginInclusive",
         target_id = prelude.Integer.id,
      }),
      endInclusive = schema.new({
         id = id.from(_N, "PortRangeFilter", "endInclusive"),
         type = "integer",
         name = "endInclusive",
         target_id = prelude.Integer.id,
      }),
   },
})

M.PackageFilter = schema.new({
   id = id.from(_N, "PackageFilter"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "PackageFilter", "name"),
         type = "structure",
         name = "name",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      version = schema.new({
         id = id.from(_N, "PackageFilter", "version"),
         type = "structure",
         name = "version",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      epoch = schema.new({
         id = id.from(_N, "PackageFilter", "epoch"),
         type = "structure",
         name = "epoch",
         target_id = id.from(_N, "NumberFilter"),
         target = M.NumberFilter,
      }),
      release = schema.new({
         id = id.from(_N, "PackageFilter", "release"),
         type = "structure",
         name = "release",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      architecture = schema.new({
         id = id.from(_N, "PackageFilter", "architecture"),
         type = "structure",
         name = "architecture",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      sourceLayerHash = schema.new({
         id = id.from(_N, "PackageFilter", "sourceLayerHash"),
         type = "structure",
         name = "sourceLayerHash",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      sourceLambdaLayerArn = schema.new({
         id = id.from(_N, "PackageFilter", "sourceLambdaLayerArn"),
         type = "structure",
         name = "sourceLambdaLayerArn",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
      filePath = schema.new({
         id = id.from(_N, "PackageFilter", "filePath"),
         type = "structure",
         name = "filePath",
         target_id = id.from(_N, "StringFilter"),
         target = M.StringFilter,
      }),
   },
})

M.FilterCriteria = schema.new({
   id = id.from(_N, "FilterCriteria"),
   type = "structure",
   members = {
      findingArn = schema.new({
         id = id.from(_N, "FilterCriteria", "findingArn"),
         type = "list",
         name = "findingArn",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      awsAccountId = schema.new({
         id = id.from(_N, "FilterCriteria", "awsAccountId"),
         type = "list",
         name = "awsAccountId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      findingType = schema.new({
         id = id.from(_N, "FilterCriteria", "findingType"),
         type = "list",
         name = "findingType",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      severity = schema.new({
         id = id.from(_N, "FilterCriteria", "severity"),
         type = "list",
         name = "severity",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      firstObservedAt = schema.new({
         id = id.from(_N, "FilterCriteria", "firstObservedAt"),
         type = "list",
         name = "firstObservedAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      lastObservedAt = schema.new({
         id = id.from(_N, "FilterCriteria", "lastObservedAt"),
         type = "list",
         name = "lastObservedAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "FilterCriteria", "updatedAt"),
         type = "list",
         name = "updatedAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      findingStatus = schema.new({
         id = id.from(_N, "FilterCriteria", "findingStatus"),
         type = "list",
         name = "findingStatus",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      title = schema.new({
         id = id.from(_N, "FilterCriteria", "title"),
         type = "list",
         name = "title",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      inspectorScore = schema.new({
         id = id.from(_N, "FilterCriteria", "inspectorScore"),
         type = "list",
         name = "inspectorScore",
         target_id = prelude.Document.id,
         list_member = M.NumberFilter,
      }),
      resourceType = schema.new({
         id = id.from(_N, "FilterCriteria", "resourceType"),
         type = "list",
         name = "resourceType",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      resourceId = schema.new({
         id = id.from(_N, "FilterCriteria", "resourceId"),
         type = "list",
         name = "resourceId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      resourceTags = schema.new({
         id = id.from(_N, "FilterCriteria", "resourceTags"),
         type = "list",
         name = "resourceTags",
         target_id = prelude.Document.id,
         list_member = M.MapFilter,
      }),
      ec2InstanceImageId = schema.new({
         id = id.from(_N, "FilterCriteria", "ec2InstanceImageId"),
         type = "list",
         name = "ec2InstanceImageId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ec2InstanceVpcId = schema.new({
         id = id.from(_N, "FilterCriteria", "ec2InstanceVpcId"),
         type = "list",
         name = "ec2InstanceVpcId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ec2InstanceSubnetId = schema.new({
         id = id.from(_N, "FilterCriteria", "ec2InstanceSubnetId"),
         type = "list",
         name = "ec2InstanceSubnetId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ecrImagePushedAt = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImagePushedAt"),
         type = "list",
         name = "ecrImagePushedAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      ecrImageArchitecture = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageArchitecture"),
         type = "list",
         name = "ecrImageArchitecture",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ecrImageRegistry = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageRegistry"),
         type = "list",
         name = "ecrImageRegistry",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ecrImageRepositoryName = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageRepositoryName"),
         type = "list",
         name = "ecrImageRepositoryName",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ecrImageTags = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageTags"),
         type = "list",
         name = "ecrImageTags",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ecrImageHash = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageHash"),
         type = "list",
         name = "ecrImageHash",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      ecrImageLastInUseAt = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageLastInUseAt"),
         type = "list",
         name = "ecrImageLastInUseAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      ecrImageInUseCount = schema.new({
         id = id.from(_N, "FilterCriteria", "ecrImageInUseCount"),
         type = "list",
         name = "ecrImageInUseCount",
         target_id = prelude.Document.id,
         list_member = M.NumberFilter,
      }),
      portRange = schema.new({
         id = id.from(_N, "FilterCriteria", "portRange"),
         type = "list",
         name = "portRange",
         target_id = prelude.Document.id,
         list_member = M.PortRangeFilter,
      }),
      networkProtocol = schema.new({
         id = id.from(_N, "FilterCriteria", "networkProtocol"),
         type = "list",
         name = "networkProtocol",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      componentId = schema.new({
         id = id.from(_N, "FilterCriteria", "componentId"),
         type = "list",
         name = "componentId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      componentType = schema.new({
         id = id.from(_N, "FilterCriteria", "componentType"),
         type = "list",
         name = "componentType",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      vulnerabilityId = schema.new({
         id = id.from(_N, "FilterCriteria", "vulnerabilityId"),
         type = "list",
         name = "vulnerabilityId",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      vulnerabilitySource = schema.new({
         id = id.from(_N, "FilterCriteria", "vulnerabilitySource"),
         type = "list",
         name = "vulnerabilitySource",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      vendorSeverity = schema.new({
         id = id.from(_N, "FilterCriteria", "vendorSeverity"),
         type = "list",
         name = "vendorSeverity",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      vulnerablePackages = schema.new({
         id = id.from(_N, "FilterCriteria", "vulnerablePackages"),
         type = "list",
         name = "vulnerablePackages",
         target_id = prelude.Document.id,
         list_member = M.PackageFilter,
      }),
      relatedVulnerabilities = schema.new({
         id = id.from(_N, "FilterCriteria", "relatedVulnerabilities"),
         type = "list",
         name = "relatedVulnerabilities",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      fixAvailable = schema.new({
         id = id.from(_N, "FilterCriteria", "fixAvailable"),
         type = "list",
         name = "fixAvailable",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      lambdaFunctionName = schema.new({
         id = id.from(_N, "FilterCriteria", "lambdaFunctionName"),
         type = "list",
         name = "lambdaFunctionName",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      lambdaFunctionLayers = schema.new({
         id = id.from(_N, "FilterCriteria", "lambdaFunctionLayers"),
         type = "list",
         name = "lambdaFunctionLayers",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      lambdaFunctionRuntime = schema.new({
         id = id.from(_N, "FilterCriteria", "lambdaFunctionRuntime"),
         type = "list",
         name = "lambdaFunctionRuntime",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      lambdaFunctionLastModifiedAt = schema.new({
         id = id.from(_N, "FilterCriteria", "lambdaFunctionLastModifiedAt"),
         type = "list",
         name = "lambdaFunctionLastModifiedAt",
         target_id = prelude.Document.id,
         list_member = M.DateFilter,
      }),
      lambdaFunctionExecutionRoleArn = schema.new({
         id = id.from(_N, "FilterCriteria", "lambdaFunctionExecutionRoleArn"),
         type = "list",
         name = "lambdaFunctionExecutionRoleArn",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      exploitAvailable = schema.new({
         id = id.from(_N, "FilterCriteria", "exploitAvailable"),
         type = "list",
         name = "exploitAvailable",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      codeVulnerabilityDetectorName = schema.new({
         id = id.from(_N, "FilterCriteria", "codeVulnerabilityDetectorName"),
         type = "list",
         name = "codeVulnerabilityDetectorName",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      codeVulnerabilityDetectorTags = schema.new({
         id = id.from(_N, "FilterCriteria", "codeVulnerabilityDetectorTags"),
         type = "list",
         name = "codeVulnerabilityDetectorTags",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      codeVulnerabilityFilePath = schema.new({
         id = id.from(_N, "FilterCriteria", "codeVulnerabilityFilePath"),
         type = "list",
         name = "codeVulnerabilityFilePath",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      epssScore = schema.new({
         id = id.from(_N, "FilterCriteria", "epssScore"),
         type = "list",
         name = "epssScore",
         target_id = prelude.Document.id,
         list_member = M.NumberFilter,
      }),
      codeRepositoryProjectName = schema.new({
         id = id.from(_N, "FilterCriteria", "codeRepositoryProjectName"),
         type = "list",
         name = "codeRepositoryProjectName",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      codeRepositoryProviderType = schema.new({
         id = id.from(_N, "FilterCriteria", "codeRepositoryProviderType"),
         type = "list",
         name = "codeRepositoryProviderType",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
   },
})

M.CreateFilterInput = schema.new({
   id = id.from(_N, "CreateFilterRequest"),
   type = "structure",
   members = {
      action = schema.new({
         id = id.from(_N, "CreateFilterInput", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "CreateFilterInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "CreateFilterInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "CreateFilterInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "CreateFilterInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      reason = schema.new({
         id = id.from(_N, "CreateFilterInput", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateFilterOutput = schema.new({
   id = id.from(_N, "CreateFilterResponse"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "CreateFilterOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Destination = schema.new({
   id = id.from(_N, "Destination"),
   type = "structure",
   members = {
      bucketName = schema.new({
         id = id.from(_N, "Destination", "bucketName"),
         type = "string",
         name = "bucketName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      keyPrefix = schema.new({
         id = id.from(_N, "Destination", "keyPrefix"),
         type = "string",
         name = "keyPrefix",
         target_id = prelude.String.id,
      }),
      kmsKeyArn = schema.new({
         id = id.from(_N, "Destination", "kmsKeyArn"),
         type = "string",
         name = "kmsKeyArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateFindingsReportInput = schema.new({
   id = id.from(_N, "CreateFindingsReportRequest"),
   type = "structure",
   members = {
      filterCriteria = schema.new({
         id = id.from(_N, "CreateFindingsReportInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
      reportFormat = schema.new({
         id = id.from(_N, "CreateFindingsReportInput", "reportFormat"),
         type = "string",
         name = "reportFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Destination = schema.new({
         id = id.from(_N, "CreateFindingsReportInput", "s3Destination"),
         type = "structure",
         name = "s3Destination",
         target_id = id.from(_N, "Destination"),
         target = M.Destination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateFindingsReportOutput = schema.new({
   id = id.from(_N, "CreateFindingsReportResponse"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "CreateFindingsReportOutput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceStringFilter = schema.new({
   id = id.from(_N, "ResourceStringFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "ResourceStringFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "ResourceStringFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResourceMapFilter = schema.new({
   id = id.from(_N, "ResourceMapFilter"),
   type = "structure",
   members = {
      comparison = schema.new({
         id = id.from(_N, "ResourceMapFilter", "comparison"),
         type = "string",
         name = "comparison",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      key = schema.new({
         id = id.from(_N, "ResourceMapFilter", "key"),
         type = "string",
         name = "key",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      value = schema.new({
         id = id.from(_N, "ResourceMapFilter", "value"),
         type = "string",
         name = "value",
         target_id = prelude.String.id,
      }),
   },
})

M.ResourceFilterCriteria = schema.new({
   id = id.from(_N, "ResourceFilterCriteria"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "accountId"),
         type = "list",
         name = "accountId",
         target_id = prelude.Document.id,
         list_member = M.ResourceStringFilter,
      }),
      resourceId = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "resourceId"),
         type = "list",
         name = "resourceId",
         target_id = prelude.Document.id,
         list_member = M.ResourceStringFilter,
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "resourceType"),
         type = "list",
         name = "resourceType",
         target_id = prelude.Document.id,
         list_member = M.ResourceStringFilter,
      }),
      ecrRepositoryName = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "ecrRepositoryName"),
         type = "list",
         name = "ecrRepositoryName",
         target_id = prelude.Document.id,
         list_member = M.ResourceStringFilter,
      }),
      lambdaFunctionName = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "lambdaFunctionName"),
         type = "list",
         name = "lambdaFunctionName",
         target_id = prelude.Document.id,
         list_member = M.ResourceStringFilter,
      }),
      ecrImageTags = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "ecrImageTags"),
         type = "list",
         name = "ecrImageTags",
         target_id = prelude.Document.id,
         list_member = M.ResourceStringFilter,
      }),
      ec2InstanceTags = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "ec2InstanceTags"),
         type = "list",
         name = "ec2InstanceTags",
         target_id = prelude.Document.id,
         list_member = M.ResourceMapFilter,
      }),
      lambdaFunctionTags = schema.new({
         id = id.from(_N, "ResourceFilterCriteria", "lambdaFunctionTags"),
         type = "list",
         name = "lambdaFunctionTags",
         target_id = prelude.Document.id,
         list_member = M.ResourceMapFilter,
      }),
   },
})

M.CreateSbomExportInput = schema.new({
   id = id.from(_N, "CreateSbomExportRequest"),
   type = "structure",
   members = {
      resourceFilterCriteria = schema.new({
         id = id.from(_N, "CreateSbomExportInput", "resourceFilterCriteria"),
         type = "structure",
         name = "resourceFilterCriteria",
         target_id = id.from(_N, "ResourceFilterCriteria"),
         target = M.ResourceFilterCriteria,
      }),
      reportFormat = schema.new({
         id = id.from(_N, "CreateSbomExportInput", "reportFormat"),
         type = "string",
         name = "reportFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      s3Destination = schema.new({
         id = id.from(_N, "CreateSbomExportInput", "s3Destination"),
         type = "structure",
         name = "s3Destination",
         target_id = id.from(_N, "Destination"),
         target = M.Destination,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateSbomExportOutput = schema.new({
   id = id.from(_N, "CreateSbomExportResponse"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "CreateSbomExportOutput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
      }),
   },
})

M.Cvss2 = schema.new({
   id = id.from(_N, "Cvss2"),
   type = "structure",
   members = {
      baseScore = schema.new({
         id = id.from(_N, "Cvss2", "baseScore"),
         type = "double",
         name = "baseScore",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      scoringVector = schema.new({
         id = id.from(_N, "Cvss2", "scoringVector"),
         type = "string",
         name = "scoringVector",
         target_id = prelude.String.id,
      }),
   },
})

M.Cvss3 = schema.new({
   id = id.from(_N, "Cvss3"),
   type = "structure",
   members = {
      baseScore = schema.new({
         id = id.from(_N, "Cvss3", "baseScore"),
         type = "double",
         name = "baseScore",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      scoringVector = schema.new({
         id = id.from(_N, "Cvss3", "scoringVector"),
         type = "string",
         name = "scoringVector",
         target_id = prelude.String.id,
      }),
   },
})

M.Cvss4 = schema.new({
   id = id.from(_N, "Cvss4"),
   type = "structure",
   members = {
      baseScore = schema.new({
         id = id.from(_N, "Cvss4", "baseScore"),
         type = "double",
         name = "baseScore",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      scoringVector = schema.new({
         id = id.from(_N, "Cvss4", "scoringVector"),
         type = "string",
         name = "scoringVector",
         target_id = prelude.String.id,
      }),
   },
})

M.CvssScore = schema.new({
   id = id.from(_N, "CvssScore"),
   type = "structure",
   members = {
      baseScore = schema.new({
         id = id.from(_N, "CvssScore", "baseScore"),
         type = "double",
         name = "baseScore",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scoringVector = schema.new({
         id = id.from(_N, "CvssScore", "scoringVector"),
         type = "string",
         name = "scoringVector",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "CvssScore", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      source = schema.new({
         id = id.from(_N, "CvssScore", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CvssScoreAdjustment = schema.new({
   id = id.from(_N, "CvssScoreAdjustment"),
   type = "structure",
   members = {
      metric = schema.new({
         id = id.from(_N, "CvssScoreAdjustment", "metric"),
         type = "string",
         name = "metric",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "CvssScoreAdjustment", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CvssScoreDetails = schema.new({
   id = id.from(_N, "CvssScoreDetails"),
   type = "structure",
   members = {
      scoreSource = schema.new({
         id = id.from(_N, "CvssScoreDetails", "scoreSource"),
         type = "string",
         name = "scoreSource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      cvssSource = schema.new({
         id = id.from(_N, "CvssScoreDetails", "cvssSource"),
         type = "string",
         name = "cvssSource",
         target_id = prelude.String.id,
      }),
      version = schema.new({
         id = id.from(_N, "CvssScoreDetails", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      score = schema.new({
         id = id.from(_N, "CvssScoreDetails", "score"),
         type = "double",
         name = "score",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scoringVector = schema.new({
         id = id.from(_N, "CvssScoreDetails", "scoringVector"),
         type = "string",
         name = "scoringVector",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      adjustments = schema.new({
         id = id.from(_N, "CvssScoreDetails", "adjustments"),
         type = "list",
         name = "adjustments",
         target_id = prelude.Document.id,
         list_member = M.CvssScoreAdjustment,
      }),
   },
})

M.DelegatedAdmin = schema.new({
   id = id.from(_N, "DelegatedAdmin"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DelegatedAdmin", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      relationshipStatus = schema.new({
         id = id.from(_N, "DelegatedAdmin", "relationshipStatus"),
         type = "string",
         name = "relationshipStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DelegatedAdminAccount = schema.new({
   id = id.from(_N, "DelegatedAdminAccount"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DelegatedAdminAccount", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DelegatedAdminAccount", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteCisScanConfigurationInput = schema.new({
   id = id.from(_N, "DeleteCisScanConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "DeleteCisScanConfigurationInput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCisScanConfigurationOutput = schema.new({
   id = id.from(_N, "DeleteCisScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "DeleteCisScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCodeSecurityIntegrationInput = schema.new({
   id = id.from(_N, "DeleteCodeSecurityIntegrationRequest"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "DeleteCodeSecurityIntegrationInput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCodeSecurityIntegrationOutput = schema.new({
   id = id.from(_N, "DeleteCodeSecurityIntegrationResponse"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "DeleteCodeSecurityIntegrationOutput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteCodeSecurityScanConfigurationInput = schema.new({
   id = id.from(_N, "DeleteCodeSecurityScanConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "DeleteCodeSecurityScanConfigurationInput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCodeSecurityScanConfigurationOutput = schema.new({
   id = id.from(_N, "DeleteCodeSecurityScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "DeleteCodeSecurityScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteFilterInput = schema.new({
   id = id.from(_N, "DeleteFilterRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteFilterInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteFilterOutput = schema.new({
   id = id.from(_N, "DeleteFilterResponse"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteFilterOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeOrganizationConfigurationInput = schema.new({
   id = id.from(_N, "DescribeOrganizationConfigurationRequest"),
   type = "structure",
})

M.DescribeOrganizationConfigurationOutput = schema.new({
   id = id.from(_N, "DescribeOrganizationConfigurationResponse"),
   type = "structure",
   members = {
      autoEnable = schema.new({
         id = id.from(_N, "DescribeOrganizationConfigurationOutput", "autoEnable"),
         type = "structure",
         name = "autoEnable",
         target_id = id.from(_N, "AutoEnable"),
         target = M.AutoEnable,
      }),
      maxAccountLimitReached = schema.new({
         id = id.from(_N, "DescribeOrganizationConfigurationOutput", "maxAccountLimitReached"),
         type = "boolean",
         name = "maxAccountLimitReached",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.DisableInput = schema.new({
   id = id.from(_N, "DisableRequest"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "DisableInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      resourceTypes = schema.new({
         id = id.from(_N, "DisableInput", "resourceTypes"),
         type = "list",
         name = "resourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DisableOutput = schema.new({
   id = id.from(_N, "DisableResponse"),
   type = "structure",
   members = {
      accounts = schema.new({
         id = id.from(_N, "DisableOutput", "accounts"),
         type = "list",
         name = "accounts",
         target_id = prelude.Document.id,
         list_member = M.Account,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      failedAccounts = schema.new({
         id = id.from(_N, "DisableOutput", "failedAccounts"),
         type = "list",
         name = "failedAccounts",
         target_id = prelude.Document.id,
         list_member = M.FailedAccount,
      }),
   },
})

M.DisableDelegatedAdminAccountInput = schema.new({
   id = id.from(_N, "DisableDelegatedAdminAccountRequest"),
   type = "structure",
   members = {
      delegatedAdminAccountId = schema.new({
         id = id.from(_N, "DisableDelegatedAdminAccountInput", "delegatedAdminAccountId"),
         type = "string",
         name = "delegatedAdminAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableDelegatedAdminAccountOutput = schema.new({
   id = id.from(_N, "DisableDelegatedAdminAccountResponse"),
   type = "structure",
   members = {
      delegatedAdminAccountId = schema.new({
         id = id.from(_N, "DisableDelegatedAdminAccountOutput", "delegatedAdminAccountId"),
         type = "string",
         name = "delegatedAdminAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateMemberInput = schema.new({
   id = id.from(_N, "DisassociateMemberRequest"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DisassociateMemberInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateMemberOutput = schema.new({
   id = id.from(_N, "DisassociateMemberResponse"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "DisassociateMemberOutput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Ec2Configuration = schema.new({
   id = id.from(_N, "Ec2Configuration"),
   type = "structure",
   members = {
      scanMode = schema.new({
         id = id.from(_N, "Ec2Configuration", "scanMode"),
         type = "string",
         name = "scanMode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Ec2ScanModeState = schema.new({
   id = id.from(_N, "Ec2ScanModeState"),
   type = "structure",
   members = {
      scanMode = schema.new({
         id = id.from(_N, "Ec2ScanModeState", "scanMode"),
         type = "string",
         name = "scanMode",
         target_id = prelude.String.id,
      }),
      scanModeStatus = schema.new({
         id = id.from(_N, "Ec2ScanModeState", "scanModeStatus"),
         type = "string",
         name = "scanModeStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.Ec2ConfigurationState = schema.new({
   id = id.from(_N, "Ec2ConfigurationState"),
   type = "structure",
   members = {
      scanModeState = schema.new({
         id = id.from(_N, "Ec2ConfigurationState", "scanModeState"),
         type = "structure",
         name = "scanModeState",
         target_id = id.from(_N, "Ec2ScanModeState"),
         target = M.Ec2ScanModeState,
      }),
   },
})

M.EcrConfiguration = schema.new({
   id = id.from(_N, "EcrConfiguration"),
   type = "structure",
   members = {
      rescanDuration = schema.new({
         id = id.from(_N, "EcrConfiguration", "rescanDuration"),
         type = "string",
         name = "rescanDuration",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      pullDateRescanDuration = schema.new({
         id = id.from(_N, "EcrConfiguration", "pullDateRescanDuration"),
         type = "string",
         name = "pullDateRescanDuration",
         target_id = prelude.String.id,
      }),
      pullDateRescanMode = schema.new({
         id = id.from(_N, "EcrConfiguration", "pullDateRescanMode"),
         type = "string",
         name = "pullDateRescanMode",
         target_id = prelude.String.id,
      }),
   },
})

M.EcrRescanDurationState = schema.new({
   id = id.from(_N, "EcrRescanDurationState"),
   type = "structure",
   members = {
      rescanDuration = schema.new({
         id = id.from(_N, "EcrRescanDurationState", "rescanDuration"),
         type = "string",
         name = "rescanDuration",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "EcrRescanDurationState", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "EcrRescanDurationState", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      pullDateRescanDuration = schema.new({
         id = id.from(_N, "EcrRescanDurationState", "pullDateRescanDuration"),
         type = "string",
         name = "pullDateRescanDuration",
         target_id = prelude.String.id,
      }),
      pullDateRescanMode = schema.new({
         id = id.from(_N, "EcrRescanDurationState", "pullDateRescanMode"),
         type = "string",
         name = "pullDateRescanMode",
         target_id = prelude.String.id,
      }),
   },
})

M.EcrConfigurationState = schema.new({
   id = id.from(_N, "EcrConfigurationState"),
   type = "structure",
   members = {
      rescanDurationState = schema.new({
         id = id.from(_N, "EcrConfigurationState", "rescanDurationState"),
         type = "structure",
         name = "rescanDurationState",
         target_id = id.from(_N, "EcrRescanDurationState"),
         target = M.EcrRescanDurationState,
      }),
   },
})

M.EnableInput = schema.new({
   id = id.from(_N, "EnableRequest"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "EnableInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      resourceTypes = schema.new({
         id = id.from(_N, "EnableInput", "resourceTypes"),
         type = "list",
         name = "resourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "EnableInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.EnableOutput = schema.new({
   id = id.from(_N, "EnableResponse"),
   type = "structure",
   members = {
      accounts = schema.new({
         id = id.from(_N, "EnableOutput", "accounts"),
         type = "list",
         name = "accounts",
         target_id = prelude.Document.id,
         list_member = M.Account,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      failedAccounts = schema.new({
         id = id.from(_N, "EnableOutput", "failedAccounts"),
         type = "list",
         name = "failedAccounts",
         target_id = prelude.Document.id,
         list_member = M.FailedAccount,
      }),
   },
})

M.EnableDelegatedAdminAccountInput = schema.new({
   id = id.from(_N, "EnableDelegatedAdminAccountRequest"),
   type = "structure",
   members = {
      delegatedAdminAccountId = schema.new({
         id = id.from(_N, "EnableDelegatedAdminAccountInput", "delegatedAdminAccountId"),
         type = "string",
         name = "delegatedAdminAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      clientToken = schema.new({
         id = id.from(_N, "EnableDelegatedAdminAccountInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.EnableDelegatedAdminAccountOutput = schema.new({
   id = id.from(_N, "EnableDelegatedAdminAccountResponse"),
   type = "structure",
   members = {
      delegatedAdminAccountId = schema.new({
         id = id.from(_N, "EnableDelegatedAdminAccountOutput", "delegatedAdminAccountId"),
         type = "string",
         name = "delegatedAdminAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Epss = schema.new({
   id = id.from(_N, "Epss"),
   type = "structure",
   members = {
      score = schema.new({
         id = id.from(_N, "Epss", "score"),
         type = "double",
         name = "score",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.EpssDetails = schema.new({
   id = id.from(_N, "EpssDetails"),
   type = "structure",
   members = {
      score = schema.new({
         id = id.from(_N, "EpssDetails", "score"),
         type = "double",
         name = "score",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ExploitabilityDetails = schema.new({
   id = id.from(_N, "ExploitabilityDetails"),
   type = "structure",
   members = {
      lastKnownExploitAt = schema.new({
         id = id.from(_N, "ExploitabilityDetails", "lastKnownExploitAt"),
         type = "timestamp",
         name = "lastKnownExploitAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.Filter = schema.new({
   id = id.from(_N, "Filter"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "Filter", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ownerId = schema.new({
         id = id.from(_N, "Filter", "ownerId"),
         type = "string",
         name = "ownerId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "Filter", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      criteria = schema.new({
         id = id.from(_N, "Filter", "criteria"),
         type = "structure",
         name = "criteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      action = schema.new({
         id = id.from(_N, "Filter", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdAt = schema.new({
         id = id.from(_N, "Filter", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "Filter", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "Filter", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      reason = schema.new({
         id = id.from(_N, "Filter", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "Filter", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.InspectorScoreDetails = schema.new({
   id = id.from(_N, "InspectorScoreDetails"),
   type = "structure",
   members = {
      adjustedCvss = schema.new({
         id = id.from(_N, "InspectorScoreDetails", "adjustedCvss"),
         type = "structure",
         name = "adjustedCvss",
         target_id = id.from(_N, "CvssScoreDetails"),
         target = M.CvssScoreDetails,
      }),
   },
})

M.Step = schema.new({
   id = id.from(_N, "Step"),
   type = "structure",
   members = {
      componentId = schema.new({
         id = id.from(_N, "Step", "componentId"),
         type = "string",
         name = "componentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      componentType = schema.new({
         id = id.from(_N, "Step", "componentType"),
         type = "string",
         name = "componentType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      componentArn = schema.new({
         id = id.from(_N, "Step", "componentArn"),
         type = "string",
         name = "componentArn",
         target_id = prelude.String.id,
      }),
   },
})

M.NetworkPath = schema.new({
   id = id.from(_N, "NetworkPath"),
   type = "structure",
   members = {
      steps = schema.new({
         id = id.from(_N, "NetworkPath", "steps"),
         type = "list",
         name = "steps",
         target_id = prelude.Document.id,
         list_member = M.Step,
      }),
   },
})

M.PortRange = schema.new({
   id = id.from(_N, "PortRange"),
   type = "structure",
   members = {
      begin = schema.new({
         id = id.from(_N, "PortRange", "begin"),
         type = "integer",
         name = "begin",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ["end"] = schema.new({
         id = id.from(_N, "PortRange", "end"),
         type = "integer",
         name = "end",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.NetworkReachabilityDetails = schema.new({
   id = id.from(_N, "NetworkReachabilityDetails"),
   type = "structure",
   members = {
      openPortRange = schema.new({
         id = id.from(_N, "NetworkReachabilityDetails", "openPortRange"),
         type = "structure",
         name = "openPortRange",
         target_id = id.from(_N, "PortRange"),
         target = M.PortRange,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      protocol = schema.new({
         id = id.from(_N, "NetworkReachabilityDetails", "protocol"),
         type = "string",
         name = "protocol",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      networkPath = schema.new({
         id = id.from(_N, "NetworkReachabilityDetails", "networkPath"),
         type = "structure",
         name = "networkPath",
         target_id = id.from(_N, "NetworkPath"),
         target = M.NetworkPath,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.VulnerablePackage = schema.new({
   id = id.from(_N, "VulnerablePackage"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "VulnerablePackage", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      version = schema.new({
         id = id.from(_N, "VulnerablePackage", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sourceLayerHash = schema.new({
         id = id.from(_N, "VulnerablePackage", "sourceLayerHash"),
         type = "string",
         name = "sourceLayerHash",
         target_id = prelude.String.id,
      }),
      epoch = schema.new({
         id = id.from(_N, "VulnerablePackage", "epoch"),
         type = "integer",
         name = "epoch",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      release = schema.new({
         id = id.from(_N, "VulnerablePackage", "release"),
         type = "string",
         name = "release",
         target_id = prelude.String.id,
      }),
      arch = schema.new({
         id = id.from(_N, "VulnerablePackage", "arch"),
         type = "string",
         name = "arch",
         target_id = prelude.String.id,
      }),
      packageManager = schema.new({
         id = id.from(_N, "VulnerablePackage", "packageManager"),
         type = "string",
         name = "packageManager",
         target_id = prelude.String.id,
      }),
      filePath = schema.new({
         id = id.from(_N, "VulnerablePackage", "filePath"),
         type = "string",
         name = "filePath",
         target_id = prelude.String.id,
      }),
      fixedInVersion = schema.new({
         id = id.from(_N, "VulnerablePackage", "fixedInVersion"),
         type = "string",
         name = "fixedInVersion",
         target_id = prelude.String.id,
      }),
      remediation = schema.new({
         id = id.from(_N, "VulnerablePackage", "remediation"),
         type = "string",
         name = "remediation",
         target_id = prelude.String.id,
      }),
      sourceLambdaLayerArn = schema.new({
         id = id.from(_N, "VulnerablePackage", "sourceLambdaLayerArn"),
         type = "string",
         name = "sourceLambdaLayerArn",
         target_id = prelude.String.id,
      }),
   },
})

M.PackageVulnerabilityDetails = schema.new({
   id = id.from(_N, "PackageVulnerabilityDetails"),
   type = "structure",
   members = {
      vulnerabilityId = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "vulnerabilityId"),
         type = "string",
         name = "vulnerabilityId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      vulnerablePackages = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "vulnerablePackages"),
         type = "list",
         name = "vulnerablePackages",
         target_id = prelude.Document.id,
         list_member = M.VulnerablePackage,
      }),
      source = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      cvss = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "cvss"),
         type = "list",
         name = "cvss",
         target_id = prelude.Document.id,
         list_member = M.CvssScore,
      }),
      relatedVulnerabilities = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "relatedVulnerabilities"),
         type = "list",
         name = "relatedVulnerabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      sourceUrl = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "sourceUrl"),
         type = "string",
         name = "sourceUrl",
         target_id = prelude.String.id,
      }),
      vendorSeverity = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "vendorSeverity"),
         type = "string",
         name = "vendorSeverity",
         target_id = prelude.String.id,
      }),
      vendorCreatedAt = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "vendorCreatedAt"),
         type = "timestamp",
         name = "vendorCreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      vendorUpdatedAt = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "vendorUpdatedAt"),
         type = "timestamp",
         name = "vendorUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      referenceUrls = schema.new({
         id = id.from(_N, "PackageVulnerabilityDetails", "referenceUrls"),
         type = "list",
         name = "referenceUrls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.Recommendation = schema.new({
   id = id.from(_N, "Recommendation"),
   type = "structure",
   members = {
      text = schema.new({
         id = id.from(_N, "Recommendation", "text"),
         type = "string",
         name = "text",
         target_id = prelude.String.id,
      }),
      Url = schema.new({
         id = id.from(_N, "Recommendation", "Url"),
         type = "string",
         name = "Url",
         target_id = prelude.String.id,
      }),
   },
})

M.Remediation = schema.new({
   id = id.from(_N, "Remediation"),
   type = "structure",
   members = {
      recommendation = schema.new({
         id = id.from(_N, "Remediation", "recommendation"),
         type = "structure",
         name = "recommendation",
         target_id = id.from(_N, "Recommendation"),
         target = M.Recommendation,
      }),
   },
})

M.ResourceDetails = schema.new({
   id = id.from(_N, "ResourceDetails"),
   type = "structure",
   members = {
      awsEc2Instance = schema.new({
         id = id.from(_N, "ResourceDetails", "awsEc2Instance"),
         type = "structure",
         name = "awsEc2Instance",
         target_id = id.from(_N, "AwsEc2InstanceDetails"),
         target = M.AwsEc2InstanceDetails,
      }),
      awsEcrContainerImage = schema.new({
         id = id.from(_N, "ResourceDetails", "awsEcrContainerImage"),
         type = "structure",
         name = "awsEcrContainerImage",
         target_id = id.from(_N, "AwsEcrContainerImageDetails"),
         target = M.AwsEcrContainerImageDetails,
      }),
      awsLambdaFunction = schema.new({
         id = id.from(_N, "ResourceDetails", "awsLambdaFunction"),
         type = "structure",
         name = "awsLambdaFunction",
         target_id = id.from(_N, "AwsLambdaFunctionDetails"),
         target = M.AwsLambdaFunctionDetails,
      }),
      codeRepository = schema.new({
         id = id.from(_N, "ResourceDetails", "codeRepository"),
         type = "structure",
         name = "codeRepository",
         target_id = id.from(_N, "CodeRepositoryDetails"),
         target = M.CodeRepositoryDetails,
      }),
   },
})

M.Resource = schema.new({
   id = id.from(_N, "Resource"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "Resource", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      id = schema.new({
         id = id.from(_N, "Resource", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      partition = schema.new({
         id = id.from(_N, "Resource", "partition"),
         type = "string",
         name = "partition",
         target_id = prelude.String.id,
      }),
      region = schema.new({
         id = id.from(_N, "Resource", "region"),
         type = "string",
         name = "region",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "Resource", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      details = schema.new({
         id = id.from(_N, "Resource", "details"),
         type = "structure",
         name = "details",
         target_id = id.from(_N, "ResourceDetails"),
         target = M.ResourceDetails,
      }),
   },
})

M.Finding = schema.new({
   id = id.from(_N, "Finding"),
   type = "structure",
   members = {
      findingArn = schema.new({
         id = id.from(_N, "Finding", "findingArn"),
         type = "string",
         name = "findingArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      awsAccountId = schema.new({
         id = id.from(_N, "Finding", "awsAccountId"),
         type = "string",
         name = "awsAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "Finding", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      description = schema.new({
         id = id.from(_N, "Finding", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      title = schema.new({
         id = id.from(_N, "Finding", "title"),
         type = "string",
         name = "title",
         target_id = prelude.String.id,
      }),
      remediation = schema.new({
         id = id.from(_N, "Finding", "remediation"),
         type = "structure",
         name = "remediation",
         target_id = id.from(_N, "Remediation"),
         target = M.Remediation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      severity = schema.new({
         id = id.from(_N, "Finding", "severity"),
         type = "string",
         name = "severity",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      firstObservedAt = schema.new({
         id = id.from(_N, "Finding", "firstObservedAt"),
         type = "timestamp",
         name = "firstObservedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastObservedAt = schema.new({
         id = id.from(_N, "Finding", "lastObservedAt"),
         type = "timestamp",
         name = "lastObservedAt",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      updatedAt = schema.new({
         id = id.from(_N, "Finding", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      status = schema.new({
         id = id.from(_N, "Finding", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resources = schema.new({
         id = id.from(_N, "Finding", "resources"),
         type = "list",
         name = "resources",
         target_id = prelude.Document.id,
         list_member = M.Resource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      inspectorScore = schema.new({
         id = id.from(_N, "Finding", "inspectorScore"),
         type = "double",
         name = "inspectorScore",
         target_id = prelude.Double.id,
      }),
      inspectorScoreDetails = schema.new({
         id = id.from(_N, "Finding", "inspectorScoreDetails"),
         type = "structure",
         name = "inspectorScoreDetails",
         target_id = id.from(_N, "InspectorScoreDetails"),
         target = M.InspectorScoreDetails,
      }),
      networkReachabilityDetails = schema.new({
         id = id.from(_N, "Finding", "networkReachabilityDetails"),
         type = "structure",
         name = "networkReachabilityDetails",
         target_id = id.from(_N, "NetworkReachabilityDetails"),
         target = M.NetworkReachabilityDetails,
      }),
      packageVulnerabilityDetails = schema.new({
         id = id.from(_N, "Finding", "packageVulnerabilityDetails"),
         type = "structure",
         name = "packageVulnerabilityDetails",
         target_id = id.from(_N, "PackageVulnerabilityDetails"),
         target = M.PackageVulnerabilityDetails,
      }),
      fixAvailable = schema.new({
         id = id.from(_N, "Finding", "fixAvailable"),
         type = "string",
         name = "fixAvailable",
         target_id = prelude.String.id,
      }),
      exploitAvailable = schema.new({
         id = id.from(_N, "Finding", "exploitAvailable"),
         type = "string",
         name = "exploitAvailable",
         target_id = prelude.String.id,
      }),
      exploitabilityDetails = schema.new({
         id = id.from(_N, "Finding", "exploitabilityDetails"),
         type = "structure",
         name = "exploitabilityDetails",
         target_id = id.from(_N, "ExploitabilityDetails"),
         target = M.ExploitabilityDetails,
      }),
      codeVulnerabilityDetails = schema.new({
         id = id.from(_N, "Finding", "codeVulnerabilityDetails"),
         type = "structure",
         name = "codeVulnerabilityDetails",
         target_id = id.from(_N, "CodeVulnerabilityDetails"),
         target = M.CodeVulnerabilityDetails,
      }),
      epss = schema.new({
         id = id.from(_N, "Finding", "epss"),
         type = "structure",
         name = "epss",
         target_id = id.from(_N, "EpssDetails"),
         target = M.EpssDetails,
      }),
   },
})

M.GetCisScanReportInput = schema.new({
   id = id.from(_N, "GetCisScanReportRequest"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "GetCisScanReportInput", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetAccounts = schema.new({
         id = id.from(_N, "GetCisScanReportInput", "targetAccounts"),
         type = "list",
         name = "targetAccounts",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      reportFormat = schema.new({
         id = id.from(_N, "GetCisScanReportInput", "reportFormat"),
         type = "string",
         name = "reportFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "PDF" },
         },
      }),
   },
})

M.GetCisScanReportOutput = schema.new({
   id = id.from(_N, "GetCisScanReportResponse"),
   type = "structure",
   members = {
      url = schema.new({
         id = id.from(_N, "GetCisScanReportOutput", "url"),
         type = "string",
         name = "url",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetCisScanReportOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCisScanResultDetailsInput = schema.new({
   id = id.from(_N, "GetCisScanResultDetailsRequest"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      targetResourceId = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "targetResourceId"),
         type = "string",
         name = "targetResourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      accountId = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "CisScanResultDetailsFilterCriteria"),
         target = M.CisScanResultDetailsFilterCriteria,
      }),
      sortBy = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "CHECK_ID" },
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 300 },
         },
      }),
   },
})

M.GetCisScanResultDetailsOutput = schema.new({
   id = id.from(_N, "GetCisScanResultDetailsResponse"),
   type = "structure",
   members = {
      scanResultDetails = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsOutput", "scanResultDetails"),
         type = "list",
         name = "scanResultDetails",
         target_id = prelude.Document.id,
         list_member = M.CisScanResultDetails,
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetCisScanResultDetailsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetClustersForImageInput = schema.new({
   id = id.from(_N, "GetClustersForImageRequest"),
   type = "structure",
   members = {
      filter = schema.new({
         id = id.from(_N, "GetClustersForImageInput", "filter"),
         type = "structure",
         name = "filter",
         target_id = id.from(_N, "ClusterForImageFilterCriteria"),
         target = M.ClusterForImageFilterCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "GetClustersForImageInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetClustersForImageInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetClustersForImageOutput = schema.new({
   id = id.from(_N, "GetClustersForImageResponse"),
   type = "structure",
   members = {
      cluster = schema.new({
         id = id.from(_N, "GetClustersForImageOutput", "cluster"),
         type = "list",
         name = "cluster",
         target_id = prelude.Document.id,
         list_member = M.ClusterInformation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "GetClustersForImageOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCodeSecurityIntegrationInput = schema.new({
   id = id.from(_N, "GetCodeSecurityIntegrationRequest"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationInput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetCodeSecurityIntegrationOutput = schema.new({
   id = id.from(_N, "GetCodeSecurityIntegrationResponse"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      name = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      createdOn = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "createdOn"),
         type = "timestamp",
         name = "createdOn",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      lastUpdateOn = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "lastUpdateOn"),
         type = "timestamp",
         name = "lastUpdateOn",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      authorizationUrl = schema.new({
         id = id.from(_N, "GetCodeSecurityIntegrationOutput", "authorizationUrl"),
         type = "string",
         name = "authorizationUrl",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCodeSecurityScanInput = schema.new({
   id = id.from(_N, "GetCodeSecurityScanRequest"),
   type = "structure",
   members = {
      resource = schema.new({
         id = id.from(_N, "GetCodeSecurityScanInput", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scanId = schema.new({
         id = id.from(_N, "GetCodeSecurityScanInput", "scanId"),
         type = "string",
         name = "scanId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCodeSecurityScanOutput = schema.new({
   id = id.from(_N, "GetCodeSecurityScanResponse"),
   type = "structure",
   members = {
      scanId = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "scanId"),
         type = "string",
         name = "scanId",
         target_id = prelude.String.id,
      }),
      resource = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
      }),
      accountId = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      statusReason = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "statusReason"),
         type = "string",
         name = "statusReason",
         target_id = prelude.String.id,
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
      lastCommitId = schema.new({
         id = id.from(_N, "GetCodeSecurityScanOutput", "lastCommitId"),
         type = "string",
         name = "lastCommitId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetCodeSecurityScanConfigurationInput = schema.new({
   id = id.from(_N, "GetCodeSecurityScanConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationInput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetCodeSecurityScanConfigurationOutput = schema.new({
   id = id.from(_N, "GetCodeSecurityScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
      }),
      name = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      configuration = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "configuration"),
         type = "structure",
         name = "configuration",
         target_id = id.from(_N, "CodeSecurityScanConfiguration"),
         target = M.CodeSecurityScanConfiguration,
      }),
      level = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "level"),
         type = "string",
         name = "level",
         target_id = prelude.String.id,
      }),
      scopeSettings = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "scopeSettings"),
         type = "structure",
         name = "scopeSettings",
         target_id = id.from(_N, "ScopeSettings"),
         target = M.ScopeSettings,
      }),
      createdAt = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "createdAt"),
         type = "timestamp",
         name = "createdAt",
         target_id = prelude.Timestamp.id,
      }),
      lastUpdatedAt = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "lastUpdatedAt"),
         type = "timestamp",
         name = "lastUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      tags = schema.new({
         id = id.from(_N, "GetCodeSecurityScanConfigurationOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetConfigurationInput = schema.new({
   id = id.from(_N, "GetConfigurationRequest"),
   type = "structure",
})

M.GetConfigurationOutput = schema.new({
   id = id.from(_N, "GetConfigurationResponse"),
   type = "structure",
   members = {
      ecrConfiguration = schema.new({
         id = id.from(_N, "GetConfigurationOutput", "ecrConfiguration"),
         type = "structure",
         name = "ecrConfiguration",
         target_id = id.from(_N, "EcrConfigurationState"),
         target = M.EcrConfigurationState,
      }),
      ec2Configuration = schema.new({
         id = id.from(_N, "GetConfigurationOutput", "ec2Configuration"),
         type = "structure",
         name = "ec2Configuration",
         target_id = id.from(_N, "Ec2ConfigurationState"),
         target = M.Ec2ConfigurationState,
      }),
   },
})

M.GetDelegatedAdminAccountInput = schema.new({
   id = id.from(_N, "GetDelegatedAdminAccountRequest"),
   type = "structure",
})

M.GetDelegatedAdminAccountOutput = schema.new({
   id = id.from(_N, "GetDelegatedAdminAccountResponse"),
   type = "structure",
   members = {
      delegatedAdmin = schema.new({
         id = id.from(_N, "GetDelegatedAdminAccountOutput", "delegatedAdmin"),
         type = "structure",
         name = "delegatedAdmin",
         target_id = id.from(_N, "DelegatedAdmin"),
         target = M.DelegatedAdmin,
      }),
   },
})

M.GetEc2DeepInspectionConfigurationInput = schema.new({
   id = id.from(_N, "GetEc2DeepInspectionConfigurationRequest"),
   type = "structure",
})

M.GetEc2DeepInspectionConfigurationOutput = schema.new({
   id = id.from(_N, "GetEc2DeepInspectionConfigurationResponse"),
   type = "structure",
   members = {
      packagePaths = schema.new({
         id = id.from(_N, "GetEc2DeepInspectionConfigurationOutput", "packagePaths"),
         type = "list",
         name = "packagePaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      orgPackagePaths = schema.new({
         id = id.from(_N, "GetEc2DeepInspectionConfigurationOutput", "orgPackagePaths"),
         type = "list",
         name = "orgPackagePaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      status = schema.new({
         id = id.from(_N, "GetEc2DeepInspectionConfigurationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "GetEc2DeepInspectionConfigurationOutput", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.GetEncryptionKeyInput = schema.new({
   id = id.from(_N, "GetEncryptionKeyRequest"),
   type = "structure",
   members = {
      scanType = schema.new({
         id = id.from(_N, "GetEncryptionKeyInput", "scanType"),
         type = "string",
         name = "scanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "scanType" },
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "GetEncryptionKeyInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_QUERY] = { name = "resourceType" },
         },
      }),
   },
})

M.GetEncryptionKeyOutput = schema.new({
   id = id.from(_N, "GetEncryptionKeyResponse"),
   type = "structure",
   members = {
      kmsKeyId = schema.new({
         id = id.from(_N, "GetEncryptionKeyOutput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetFindingsReportStatusInput = schema.new({
   id = id.from(_N, "GetFindingsReportStatusRequest"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "GetFindingsReportStatusInput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetFindingsReportStatusOutput = schema.new({
   id = id.from(_N, "GetFindingsReportStatusResponse"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "GetFindingsReportStatusOutput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetFindingsReportStatusOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "GetFindingsReportStatusOutput", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "GetFindingsReportStatusOutput", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
      destination = schema.new({
         id = id.from(_N, "GetFindingsReportStatusOutput", "destination"),
         type = "structure",
         name = "destination",
         target_id = id.from(_N, "Destination"),
         target = M.Destination,
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "GetFindingsReportStatusOutput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
   },
})

M.GetMemberInput = schema.new({
   id = id.from(_N, "GetMemberRequest"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "GetMemberInput", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Member = schema.new({
   id = id.from(_N, "Member"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "Member", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      relationshipStatus = schema.new({
         id = id.from(_N, "Member", "relationshipStatus"),
         type = "string",
         name = "relationshipStatus",
         target_id = prelude.String.id,
      }),
      delegatedAdminAccountId = schema.new({
         id = id.from(_N, "Member", "delegatedAdminAccountId"),
         type = "string",
         name = "delegatedAdminAccountId",
         target_id = prelude.String.id,
      }),
      updatedAt = schema.new({
         id = id.from(_N, "Member", "updatedAt"),
         type = "timestamp",
         name = "updatedAt",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetMemberOutput = schema.new({
   id = id.from(_N, "GetMemberResponse"),
   type = "structure",
   members = {
      member = schema.new({
         id = id.from(_N, "GetMemberOutput", "member"),
         type = "structure",
         name = "member",
         target_id = id.from(_N, "Member"),
         target = M.Member,
      }),
   },
})

M.GetSbomExportInput = schema.new({
   id = id.from(_N, "GetSbomExportRequest"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "GetSbomExportInput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetSbomExportOutput = schema.new({
   id = id.from(_N, "GetSbomExportResponse"),
   type = "structure",
   members = {
      reportId = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "reportId"),
         type = "string",
         name = "reportId",
         target_id = prelude.String.id,
      }),
      format = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "format"),
         type = "string",
         name = "format",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorCode = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "errorCode"),
         type = "string",
         name = "errorCode",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
      s3Destination = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "s3Destination"),
         type = "structure",
         name = "s3Destination",
         target_id = id.from(_N, "Destination"),
         target = M.Destination,
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "GetSbomExportOutput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "ResourceFilterCriteria"),
         target = M.ResourceFilterCriteria,
      }),
   },
})

M.ListAccountPermissionsInput = schema.new({
   id = id.from(_N, "ListAccountPermissionsRequest"),
   type = "structure",
   members = {
      service = schema.new({
         id = id.from(_N, "ListAccountPermissionsInput", "service"),
         type = "string",
         name = "service",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListAccountPermissionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAccountPermissionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Permission = schema.new({
   id = id.from(_N, "Permission"),
   type = "structure",
   members = {
      service = schema.new({
         id = id.from(_N, "Permission", "service"),
         type = "string",
         name = "service",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      operation = schema.new({
         id = id.from(_N, "Permission", "operation"),
         type = "string",
         name = "operation",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListAccountPermissionsOutput = schema.new({
   id = id.from(_N, "ListAccountPermissionsResponse"),
   type = "structure",
   members = {
      permissions = schema.new({
         id = id.from(_N, "ListAccountPermissionsOutput", "permissions"),
         type = "list",
         name = "permissions",
         target_id = prelude.Document.id,
         list_member = M.Permission,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListAccountPermissionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCisScanConfigurationsFilterCriteria = schema.new({
   id = id.from(_N, "ListCisScanConfigurationsFilterCriteria"),
   type = "structure",
   members = {
      scanNameFilters = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsFilterCriteria", "scanNameFilters"),
         type = "list",
         name = "scanNameFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      targetResourceTagFilters = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsFilterCriteria", "targetResourceTagFilters"),
         type = "list",
         name = "targetResourceTagFilters",
         target_id = prelude.Document.id,
         list_member = M.TagFilter,
      }),
      scanConfigurationArnFilters = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsFilterCriteria", "scanConfigurationArnFilters"),
         type = "list",
         name = "scanConfigurationArnFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
   },
})

M.ListCisScanConfigurationsInput = schema.new({
   id = id.from(_N, "ListCisScanConfigurationsRequest"),
   type = "structure",
   members = {
      filterCriteria = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "ListCisScanConfigurationsFilterCriteria"),
         target = M.ListCisScanConfigurationsFilterCriteria,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsInput", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "SCAN_NAME" },
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 100 },
         },
      }),
   },
})

M.ListCisScanConfigurationsOutput = schema.new({
   id = id.from(_N, "ListCisScanConfigurationsResponse"),
   type = "structure",
   members = {
      scanConfigurations = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsOutput", "scanConfigurations"),
         type = "list",
         name = "scanConfigurations",
         target_id = prelude.Document.id,
         list_member = M.CisScanConfiguration,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScanConfigurationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCisScanResultsAggregatedByChecksInput = schema.new({
   id = id.from(_N, "ListCisScanResultsAggregatedByChecksRequest"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksInput", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "CisScanResultsAggregatedByChecksFilterCriteria"),
         target = M.CisScanResultsAggregatedByChecksFilterCriteria,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksInput", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "FAILED_COUNTS" },
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 100 },
         },
      }),
   },
})

M.ListCisScanResultsAggregatedByChecksOutput = schema.new({
   id = id.from(_N, "ListCisScanResultsAggregatedByChecksResponse"),
   type = "structure",
   members = {
      checkAggregations = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksOutput", "checkAggregations"),
         type = "list",
         name = "checkAggregations",
         target_id = prelude.Document.id,
         list_member = M.CisCheckAggregation,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByChecksOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCisScanResultsAggregatedByTargetResourceInput = schema.new({
   id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceRequest"),
   type = "structure",
   members = {
      scanArn = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceInput", "scanArn"),
         type = "string",
         name = "scanArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "CisScanResultsAggregatedByTargetResourceFilterCriteria"),
         target = M.CisScanResultsAggregatedByTargetResourceFilterCriteria,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceInput", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "FAILED_COUNTS" },
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 100 },
         },
      }),
   },
})

M.ListCisScanResultsAggregatedByTargetResourceOutput = schema.new({
   id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceResponse"),
   type = "structure",
   members = {
      targetResourceAggregations = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceOutput", "targetResourceAggregations"),
         type = "list",
         name = "targetResourceAggregations",
         target_id = prelude.Document.id,
         list_member = M.CisTargetResourceAggregation,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScanResultsAggregatedByTargetResourceOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCisScansFilterCriteria = schema.new({
   id = id.from(_N, "ListCisScansFilterCriteria"),
   type = "structure",
   members = {
      scanNameFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "scanNameFilters"),
         type = "list",
         name = "scanNameFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      targetResourceTagFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "targetResourceTagFilters"),
         type = "list",
         name = "targetResourceTagFilters",
         target_id = prelude.Document.id,
         list_member = M.TagFilter,
      }),
      targetResourceIdFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "targetResourceIdFilters"),
         type = "list",
         name = "targetResourceIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      scanStatusFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "scanStatusFilters"),
         type = "list",
         name = "scanStatusFilters",
         target_id = prelude.Document.id,
         list_member = M.CisScanStatusFilter,
      }),
      scanAtFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "scanAtFilters"),
         type = "list",
         name = "scanAtFilters",
         target_id = prelude.Document.id,
         list_member = M.CisDateFilter,
      }),
      scanConfigurationArnFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "scanConfigurationArnFilters"),
         type = "list",
         name = "scanConfigurationArnFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      scanArnFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "scanArnFilters"),
         type = "list",
         name = "scanArnFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      scheduledByFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "scheduledByFilters"),
         type = "list",
         name = "scheduledByFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
      failedChecksFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "failedChecksFilters"),
         type = "list",
         name = "failedChecksFilters",
         target_id = prelude.Document.id,
         list_member = M.CisNumberFilter,
      }),
      targetAccountIdFilters = schema.new({
         id = id.from(_N, "ListCisScansFilterCriteria", "targetAccountIdFilters"),
         type = "list",
         name = "targetAccountIdFilters",
         target_id = prelude.Document.id,
         list_member = M.CisStringFilter,
      }),
   },
})

M.ListCisScansInput = schema.new({
   id = id.from(_N, "ListCisScansRequest"),
   type = "structure",
   members = {
      filterCriteria = schema.new({
         id = id.from(_N, "ListCisScansInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "ListCisScansFilterCriteria"),
         target = M.ListCisScansFilterCriteria,
      }),
      detailLevel = schema.new({
         id = id.from(_N, "ListCisScansInput", "detailLevel"),
         type = "string",
         name = "detailLevel",
         target_id = prelude.String.id,
      }),
      sortBy = schema.new({
         id = id.from(_N, "ListCisScansInput", "sortBy"),
         type = "string",
         name = "sortBy",
         target_id = prelude.String.id,
         traits = {
            [traits.DEFAULT] = { value = "SCAN_START_DATE" },
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "ListCisScansInput", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScansInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCisScansInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 100 },
         },
      }),
   },
})

M.ListCisScansOutput = schema.new({
   id = id.from(_N, "ListCisScansResponse"),
   type = "structure",
   members = {
      scans = schema.new({
         id = id.from(_N, "ListCisScansOutput", "scans"),
         type = "list",
         name = "scans",
         target_id = prelude.Document.id,
         list_member = M.CisScan,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCisScansOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCodeSecurityIntegrationsInput = schema.new({
   id = id.from(_N, "ListCodeSecurityIntegrationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListCodeSecurityIntegrationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCodeSecurityIntegrationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListCodeSecurityIntegrationsOutput = schema.new({
   id = id.from(_N, "ListCodeSecurityIntegrationsResponse"),
   type = "structure",
   members = {
      integrations = schema.new({
         id = id.from(_N, "ListCodeSecurityIntegrationsOutput", "integrations"),
         type = "list",
         name = "integrations",
         target_id = prelude.Document.id,
         list_member = M.CodeSecurityIntegrationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCodeSecurityIntegrationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCodeSecurityScanConfigurationAssociationsInput = schema.new({
   id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsInput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListCodeSecurityScanConfigurationAssociationsOutput = schema.new({
   id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsResponse"),
   type = "structure",
   members = {
      associations = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsOutput", "associations"),
         type = "list",
         name = "associations",
         target_id = prelude.Document.id,
         list_member = M.CodeSecurityScanConfigurationAssociationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationAssociationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCodeSecurityScanConfigurationsInput = schema.new({
   id = id.from(_N, "ListCodeSecurityScanConfigurationsRequest"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
   },
})

M.ListCodeSecurityScanConfigurationsOutput = schema.new({
   id = id.from(_N, "ListCodeSecurityScanConfigurationsResponse"),
   type = "structure",
   members = {
      configurations = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationsOutput", "configurations"),
         type = "list",
         name = "configurations",
         target_id = prelude.Document.id,
         list_member = M.CodeSecurityScanConfigurationSummary,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCodeSecurityScanConfigurationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCoverageInput = schema.new({
   id = id.from(_N, "ListCoverageRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListCoverageInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCoverageInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "ListCoverageInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "CoverageFilterCriteria"),
         target = M.CoverageFilterCriteria,
      }),
   },
})

M.ListCoverageOutput = schema.new({
   id = id.from(_N, "ListCoverageResponse"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListCoverageOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      coveredResources = schema.new({
         id = id.from(_N, "ListCoverageOutput", "coveredResources"),
         type = "list",
         name = "coveredResources",
         target_id = prelude.Document.id,
         list_member = M.CoveredResource,
      }),
   },
})

M.ListCoverageStatisticsInput = schema.new({
   id = id.from(_N, "ListCoverageStatisticsRequest"),
   type = "structure",
   members = {
      filterCriteria = schema.new({
         id = id.from(_N, "ListCoverageStatisticsInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "CoverageFilterCriteria"),
         target = M.CoverageFilterCriteria,
      }),
      groupBy = schema.new({
         id = id.from(_N, "ListCoverageStatisticsInput", "groupBy"),
         type = "string",
         name = "groupBy",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCoverageStatisticsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCoverageStatisticsOutput = schema.new({
   id = id.from(_N, "ListCoverageStatisticsResponse"),
   type = "structure",
   members = {
      countsByGroup = schema.new({
         id = id.from(_N, "ListCoverageStatisticsOutput", "countsByGroup"),
         type = "list",
         name = "countsByGroup",
         target_id = prelude.Document.id,
         list_member = M.Counts,
      }),
      totalCounts = schema.new({
         id = id.from(_N, "ListCoverageStatisticsOutput", "totalCounts"),
         type = "long",
         name = "totalCounts",
         target_id = prelude.Long.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCoverageStatisticsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDelegatedAdminAccountsInput = schema.new({
   id = id.from(_N, "ListDelegatedAdminAccountsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListDelegatedAdminAccountsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDelegatedAdminAccountsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDelegatedAdminAccountsOutput = schema.new({
   id = id.from(_N, "ListDelegatedAdminAccountsResponse"),
   type = "structure",
   members = {
      delegatedAdminAccounts = schema.new({
         id = id.from(_N, "ListDelegatedAdminAccountsOutput", "delegatedAdminAccounts"),
         type = "list",
         name = "delegatedAdminAccounts",
         target_id = prelude.Document.id,
         list_member = M.DelegatedAdminAccount,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDelegatedAdminAccountsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFiltersInput = schema.new({
   id = id.from(_N, "ListFiltersRequest"),
   type = "structure",
   members = {
      arns = schema.new({
         id = id.from(_N, "ListFiltersInput", "arns"),
         type = "list",
         name = "arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      action = schema.new({
         id = id.from(_N, "ListFiltersInput", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFiltersInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFiltersInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListFiltersOutput = schema.new({
   id = id.from(_N, "ListFiltersResponse"),
   type = "structure",
   members = {
      filters = schema.new({
         id = id.from(_N, "ListFiltersOutput", "filters"),
         type = "list",
         name = "filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFiltersOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListFindingAggregationsInput = schema.new({
   id = id.from(_N, "ListFindingAggregationsRequest"),
   type = "structure",
   members = {
      aggregationType = schema.new({
         id = id.from(_N, "ListFindingAggregationsInput", "aggregationType"),
         type = "string",
         name = "aggregationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFindingAggregationsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListFindingAggregationsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      accountIds = schema.new({
         id = id.from(_N, "ListFindingAggregationsInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = M.StringFilter,
      }),
      aggregationRequest = schema.new({
         id = id.from(_N, "ListFindingAggregationsInput", "aggregationRequest"),
         type = "union",
         name = "aggregationRequest",
         target_id = id.from(_N, "AggregationRequest"),
         target = M.AggregationRequest,
      }),
   },
})

M.ListFindingAggregationsOutput = schema.new({
   id = id.from(_N, "ListFindingAggregationsResponse"),
   type = "structure",
   members = {
      aggregationType = schema.new({
         id = id.from(_N, "ListFindingAggregationsOutput", "aggregationType"),
         type = "string",
         name = "aggregationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      responses = schema.new({
         id = id.from(_N, "ListFindingAggregationsOutput", "responses"),
         type = "list",
         name = "responses",
         target_id = prelude.Document.id,
         list_member = M.AggregationResponse,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFindingAggregationsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SortCriteria = schema.new({
   id = id.from(_N, "SortCriteria"),
   type = "structure",
   members = {
      field = schema.new({
         id = id.from(_N, "SortCriteria", "field"),
         type = "string",
         name = "field",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sortOrder = schema.new({
         id = id.from(_N, "SortCriteria", "sortOrder"),
         type = "string",
         name = "sortOrder",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListFindingsInput = schema.new({
   id = id.from(_N, "ListFindingsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListFindingsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListFindingsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "ListFindingsInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
      sortCriteria = schema.new({
         id = id.from(_N, "ListFindingsInput", "sortCriteria"),
         type = "structure",
         name = "sortCriteria",
         target_id = id.from(_N, "SortCriteria"),
         target = M.SortCriteria,
      }),
   },
})

M.ListFindingsOutput = schema.new({
   id = id.from(_N, "ListFindingsResponse"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListFindingsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      findings = schema.new({
         id = id.from(_N, "ListFindingsOutput", "findings"),
         type = "list",
         name = "findings",
         target_id = prelude.Document.id,
         list_member = M.Finding,
      }),
   },
})

M.ListMembersInput = schema.new({
   id = id.from(_N, "ListMembersRequest"),
   type = "structure",
   members = {
      onlyAssociated = schema.new({
         id = id.from(_N, "ListMembersInput", "onlyAssociated"),
         type = "boolean",
         name = "onlyAssociated",
         target_id = prelude.Boolean.id,
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListMembersInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMembersInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListMembersOutput = schema.new({
   id = id.from(_N, "ListMembersResponse"),
   type = "structure",
   members = {
      members = schema.new({
         id = id.from(_N, "ListMembersOutput", "members"),
         type = "list",
         name = "members",
         target_id = prelude.Document.id,
         list_member = M.Member,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListMembersOutput", "nextToken"),
         type = "string",
         name = "nextToken",
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
            [traits.HTTP_LABEL] = {},
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
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ListUsageTotalsInput = schema.new({
   id = id.from(_N, "ListUsageTotalsRequest"),
   type = "structure",
   members = {
      maxResults = schema.new({
         id = id.from(_N, "ListUsageTotalsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListUsageTotalsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      accountIds = schema.new({
         id = id.from(_N, "ListUsageTotalsInput", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.Usage = schema.new({
   id = id.from(_N, "Usage"),
   type = "structure",
   members = {
      type = schema.new({
         id = id.from(_N, "Usage", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
      }),
      total = schema.new({
         id = id.from(_N, "Usage", "total"),
         type = "double",
         name = "total",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      estimatedMonthlyCost = schema.new({
         id = id.from(_N, "Usage", "estimatedMonthlyCost"),
         type = "double",
         name = "estimatedMonthlyCost",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      currency = schema.new({
         id = id.from(_N, "Usage", "currency"),
         type = "string",
         name = "currency",
         target_id = prelude.String.id,
      }),
   },
})

M.UsageTotal = schema.new({
   id = id.from(_N, "UsageTotal"),
   type = "structure",
   members = {
      accountId = schema.new({
         id = id.from(_N, "UsageTotal", "accountId"),
         type = "string",
         name = "accountId",
         target_id = prelude.String.id,
      }),
      usage = schema.new({
         id = id.from(_N, "UsageTotal", "usage"),
         type = "list",
         name = "usage",
         target_id = prelude.Document.id,
         list_member = M.Usage,
      }),
   },
})

M.ListUsageTotalsOutput = schema.new({
   id = id.from(_N, "ListUsageTotalsResponse"),
   type = "structure",
   members = {
      nextToken = schema.new({
         id = id.from(_N, "ListUsageTotalsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
      totals = schema.new({
         id = id.from(_N, "ListUsageTotalsOutput", "totals"),
         type = "list",
         name = "totals",
         target_id = prelude.Document.id,
         list_member = M.UsageTotal,
      }),
   },
})

M.ResetEncryptionKeyInput = schema.new({
   id = id.from(_N, "ResetEncryptionKeyRequest"),
   type = "structure",
   members = {
      scanType = schema.new({
         id = id.from(_N, "ResetEncryptionKeyInput", "scanType"),
         type = "string",
         name = "scanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResetEncryptionKeyInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ResetEncryptionKeyOutput = schema.new({
   id = id.from(_N, "ResetEncryptionKeyResponse"),
   type = "structure",
})

M.SearchVulnerabilitiesFilterCriteria = schema.new({
   id = id.from(_N, "SearchVulnerabilitiesFilterCriteria"),
   type = "structure",
   members = {
      vulnerabilityIds = schema.new({
         id = id.from(_N, "SearchVulnerabilitiesFilterCriteria", "vulnerabilityIds"),
         type = "list",
         name = "vulnerabilityIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SearchVulnerabilitiesInput = schema.new({
   id = id.from(_N, "SearchVulnerabilitiesRequest"),
   type = "structure",
   members = {
      filterCriteria = schema.new({
         id = id.from(_N, "SearchVulnerabilitiesInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "SearchVulnerabilitiesFilterCriteria"),
         target = M.SearchVulnerabilitiesFilterCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchVulnerabilitiesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.Vulnerability = schema.new({
   id = id.from(_N, "Vulnerability"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "Vulnerability", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      cwes = schema.new({
         id = id.from(_N, "Vulnerability", "cwes"),
         type = "list",
         name = "cwes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      cisaData = schema.new({
         id = id.from(_N, "Vulnerability", "cisaData"),
         type = "structure",
         name = "cisaData",
         target_id = id.from(_N, "CisaData"),
         target = M.CisaData,
      }),
      source = schema.new({
         id = id.from(_N, "Vulnerability", "source"),
         type = "string",
         name = "source",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "Vulnerability", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      atigData = schema.new({
         id = id.from(_N, "Vulnerability", "atigData"),
         type = "structure",
         name = "atigData",
         target_id = id.from(_N, "AtigData"),
         target = M.AtigData,
      }),
      vendorSeverity = schema.new({
         id = id.from(_N, "Vulnerability", "vendorSeverity"),
         type = "string",
         name = "vendorSeverity",
         target_id = prelude.String.id,
      }),
      cvss4 = schema.new({
         id = id.from(_N, "Vulnerability", "cvss4"),
         type = "structure",
         name = "cvss4",
         target_id = id.from(_N, "Cvss4"),
         target = M.Cvss4,
      }),
      cvss3 = schema.new({
         id = id.from(_N, "Vulnerability", "cvss3"),
         type = "structure",
         name = "cvss3",
         target_id = id.from(_N, "Cvss3"),
         target = M.Cvss3,
      }),
      relatedVulnerabilities = schema.new({
         id = id.from(_N, "Vulnerability", "relatedVulnerabilities"),
         type = "list",
         name = "relatedVulnerabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      cvss2 = schema.new({
         id = id.from(_N, "Vulnerability", "cvss2"),
         type = "structure",
         name = "cvss2",
         target_id = id.from(_N, "Cvss2"),
         target = M.Cvss2,
      }),
      vendorCreatedAt = schema.new({
         id = id.from(_N, "Vulnerability", "vendorCreatedAt"),
         type = "timestamp",
         name = "vendorCreatedAt",
         target_id = prelude.Timestamp.id,
      }),
      vendorUpdatedAt = schema.new({
         id = id.from(_N, "Vulnerability", "vendorUpdatedAt"),
         type = "timestamp",
         name = "vendorUpdatedAt",
         target_id = prelude.Timestamp.id,
      }),
      sourceUrl = schema.new({
         id = id.from(_N, "Vulnerability", "sourceUrl"),
         type = "string",
         name = "sourceUrl",
         target_id = prelude.String.id,
      }),
      referenceUrls = schema.new({
         id = id.from(_N, "Vulnerability", "referenceUrls"),
         type = "list",
         name = "referenceUrls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      exploitObserved = schema.new({
         id = id.from(_N, "Vulnerability", "exploitObserved"),
         type = "structure",
         name = "exploitObserved",
         target_id = id.from(_N, "ExploitObserved"),
         target = M.ExploitObserved,
      }),
      detectionPlatforms = schema.new({
         id = id.from(_N, "Vulnerability", "detectionPlatforms"),
         type = "list",
         name = "detectionPlatforms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      epss = schema.new({
         id = id.from(_N, "Vulnerability", "epss"),
         type = "structure",
         name = "epss",
         target_id = id.from(_N, "Epss"),
         target = M.Epss,
      }),
   },
})

M.SearchVulnerabilitiesOutput = schema.new({
   id = id.from(_N, "SearchVulnerabilitiesResponse"),
   type = "structure",
   members = {
      vulnerabilities = schema.new({
         id = id.from(_N, "SearchVulnerabilitiesOutput", "vulnerabilities"),
         type = "list",
         name = "vulnerabilities",
         target_id = prelude.Document.id,
         list_member = M.Vulnerability,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "SearchVulnerabilitiesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SendCisSessionHealthInput = schema.new({
   id = id.from(_N, "SendCisSessionHealthRequest"),
   type = "structure",
   members = {
      scanJobId = schema.new({
         id = id.from(_N, "SendCisSessionHealthInput", "scanJobId"),
         type = "string",
         name = "scanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionToken = schema.new({
         id = id.from(_N, "SendCisSessionHealthInput", "sessionToken"),
         type = "string",
         name = "sessionToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendCisSessionHealthOutput = schema.new({
   id = id.from(_N, "SendCisSessionHealthResponse"),
   type = "structure",
})

M.SendCisSessionTelemetryInput = schema.new({
   id = id.from(_N, "SendCisSessionTelemetryRequest"),
   type = "structure",
   members = {
      scanJobId = schema.new({
         id = id.from(_N, "SendCisSessionTelemetryInput", "scanJobId"),
         type = "string",
         name = "scanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionToken = schema.new({
         id = id.from(_N, "SendCisSessionTelemetryInput", "sessionToken"),
         type = "string",
         name = "sessionToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      messages = schema.new({
         id = id.from(_N, "SendCisSessionTelemetryInput", "messages"),
         type = "list",
         name = "messages",
         target_id = prelude.Document.id,
         list_member = M.CisSessionMessage,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.SendCisSessionTelemetryOutput = schema.new({
   id = id.from(_N, "SendCisSessionTelemetryResponse"),
   type = "structure",
})

M.StartCisSessionMessage = schema.new({
   id = id.from(_N, "StartCisSessionMessage"),
   type = "structure",
   members = {
      sessionToken = schema.new({
         id = id.from(_N, "StartCisSessionMessage", "sessionToken"),
         type = "string",
         name = "sessionToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartCisSessionInput = schema.new({
   id = id.from(_N, "StartCisSessionRequest"),
   type = "structure",
   members = {
      scanJobId = schema.new({
         id = id.from(_N, "StartCisSessionInput", "scanJobId"),
         type = "string",
         name = "scanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "StartCisSessionInput", "message"),
         type = "structure",
         name = "message",
         target_id = id.from(_N, "StartCisSessionMessage"),
         target = M.StartCisSessionMessage,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartCisSessionOutput = schema.new({
   id = id.from(_N, "StartCisSessionResponse"),
   type = "structure",
})

M.StartCodeSecurityScanInput = schema.new({
   id = id.from(_N, "StartCodeSecurityScanRequest"),
   type = "structure",
   members = {
      clientToken = schema.new({
         id = id.from(_N, "StartCodeSecurityScanInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
      resource = schema.new({
         id = id.from(_N, "StartCodeSecurityScanInput", "resource"),
         type = "union",
         name = "resource",
         target_id = id.from(_N, "CodeSecurityResource"),
         target = M.CodeSecurityResource,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartCodeSecurityScanOutput = schema.new({
   id = id.from(_N, "StartCodeSecurityScanResponse"),
   type = "structure",
   members = {
      scanId = schema.new({
         id = id.from(_N, "StartCodeSecurityScanOutput", "scanId"),
         type = "string",
         name = "scanId",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "StartCodeSecurityScanOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
   },
})

M.StopCisMessageProgress = schema.new({
   id = id.from(_N, "StopCisMessageProgress"),
   type = "structure",
   members = {
      totalChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "totalChecks"),
         type = "integer",
         name = "totalChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      successfulChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "successfulChecks"),
         type = "integer",
         name = "successfulChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      failedChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "failedChecks"),
         type = "integer",
         name = "failedChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      notEvaluatedChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "notEvaluatedChecks"),
         type = "integer",
         name = "notEvaluatedChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      unknownChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "unknownChecks"),
         type = "integer",
         name = "unknownChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      notApplicableChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "notApplicableChecks"),
         type = "integer",
         name = "notApplicableChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      informationalChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "informationalChecks"),
         type = "integer",
         name = "informationalChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      errorChecks = schema.new({
         id = id.from(_N, "StopCisMessageProgress", "errorChecks"),
         type = "integer",
         name = "errorChecks",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.StopCisSessionMessage = schema.new({
   id = id.from(_N, "StopCisSessionMessage"),
   type = "structure",
   members = {
      status = schema.new({
         id = id.from(_N, "StopCisSessionMessage", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "StopCisSessionMessage", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
      progress = schema.new({
         id = id.from(_N, "StopCisSessionMessage", "progress"),
         type = "structure",
         name = "progress",
         target_id = id.from(_N, "StopCisMessageProgress"),
         target = M.StopCisMessageProgress,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      computePlatform = schema.new({
         id = id.from(_N, "StopCisSessionMessage", "computePlatform"),
         type = "structure",
         name = "computePlatform",
         target_id = id.from(_N, "ComputePlatform"),
         target = M.ComputePlatform,
      }),
      benchmarkVersion = schema.new({
         id = id.from(_N, "StopCisSessionMessage", "benchmarkVersion"),
         type = "string",
         name = "benchmarkVersion",
         target_id = prelude.String.id,
      }),
      benchmarkProfile = schema.new({
         id = id.from(_N, "StopCisSessionMessage", "benchmarkProfile"),
         type = "string",
         name = "benchmarkProfile",
         target_id = prelude.String.id,
      }),
   },
})

M.StopCisSessionInput = schema.new({
   id = id.from(_N, "StopCisSessionRequest"),
   type = "structure",
   members = {
      scanJobId = schema.new({
         id = id.from(_N, "StopCisSessionInput", "scanJobId"),
         type = "string",
         name = "scanJobId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      sessionToken = schema.new({
         id = id.from(_N, "StopCisSessionInput", "sessionToken"),
         type = "string",
         name = "sessionToken",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      message = schema.new({
         id = id.from(_N, "StopCisSessionInput", "message"),
         type = "structure",
         name = "message",
         target_id = id.from(_N, "StopCisSessionMessage"),
         target = M.StopCisSessionMessage,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopCisSessionOutput = schema.new({
   id = id.from(_N, "StopCisSessionResponse"),
   type = "structure",
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
            [traits.HTTP_LABEL] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "TagResourceInput", "tags"),
         type = "map",
         name = "tags",
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
      resourceArn = schema.new({
         id = id.from(_N, "UntagResourceInput", "resourceArn"),
         type = "string",
         name = "resourceArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
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
            [traits.HTTP_QUERY] = { name = "tagKeys" },
         },
      }),
   },
})

M.UntagResourceOutput = schema.new({
   id = id.from(_N, "UntagResourceResponse"),
   type = "structure",
})

M.UpdateCisTargets = schema.new({
   id = id.from(_N, "UpdateCisTargets"),
   type = "structure",
   members = {
      accountIds = schema.new({
         id = id.from(_N, "UpdateCisTargets", "accountIds"),
         type = "list",
         name = "accountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      targetResourceTags = schema.new({
         id = id.from(_N, "UpdateCisTargets", "targetResourceTags"),
         type = "map",
         name = "targetResourceTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = schema.new({ type = "list", list_member = prelude.String }),
      }),
   },
})

M.UpdateCisScanConfigurationInput = schema.new({
   id = id.from(_N, "UpdateCisScanConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "UpdateCisScanConfigurationInput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scanName = schema.new({
         id = id.from(_N, "UpdateCisScanConfigurationInput", "scanName"),
         type = "string",
         name = "scanName",
         target_id = prelude.String.id,
      }),
      securityLevel = schema.new({
         id = id.from(_N, "UpdateCisScanConfigurationInput", "securityLevel"),
         type = "string",
         name = "securityLevel",
         target_id = prelude.String.id,
      }),
      schedule = schema.new({
         id = id.from(_N, "UpdateCisScanConfigurationInput", "schedule"),
         type = "union",
         name = "schedule",
         target_id = id.from(_N, "Schedule"),
         target = M.Schedule,
      }),
      targets = schema.new({
         id = id.from(_N, "UpdateCisScanConfigurationInput", "targets"),
         type = "structure",
         name = "targets",
         target_id = id.from(_N, "UpdateCisTargets"),
         target = M.UpdateCisTargets,
      }),
   },
})

M.UpdateCisScanConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateCisScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "UpdateCisScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateGitHubIntegrationDetail = schema.new({
   id = id.from(_N, "UpdateGitHubIntegrationDetail"),
   type = "structure",
   members = {
      code = schema.new({
         id = id.from(_N, "UpdateGitHubIntegrationDetail", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      installationId = schema.new({
         id = id.from(_N, "UpdateGitHubIntegrationDetail", "installationId"),
         type = "string",
         name = "installationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateGitLabSelfManagedIntegrationDetail = schema.new({
   id = id.from(_N, "UpdateGitLabSelfManagedIntegrationDetail"),
   type = "structure",
   members = {
      authCode = schema.new({
         id = id.from(_N, "UpdateGitLabSelfManagedIntegrationDetail", "authCode"),
         type = "string",
         name = "authCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateIntegrationDetails = schema.new({
   id = id.from(_N, "UpdateIntegrationDetails"),
   type = "union",
   members = {
      gitlabSelfManaged = schema.new({
         id = id.from(_N, "UpdateIntegrationDetails", "gitlabSelfManaged"),
         type = "structure",
         name = "gitlabSelfManaged",
         target_id = id.from(_N, "UpdateGitLabSelfManagedIntegrationDetail"),
         target = M.UpdateGitLabSelfManagedIntegrationDetail,
      }),
      github = schema.new({
         id = id.from(_N, "UpdateIntegrationDetails", "github"),
         type = "structure",
         name = "github",
         target_id = id.from(_N, "UpdateGitHubIntegrationDetail"),
         target = M.UpdateGitHubIntegrationDetail,
      }),
   },
})

M.UpdateCodeSecurityIntegrationInput = schema.new({
   id = id.from(_N, "UpdateCodeSecurityIntegrationRequest"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "UpdateCodeSecurityIntegrationInput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      details = schema.new({
         id = id.from(_N, "UpdateCodeSecurityIntegrationInput", "details"),
         type = "union",
         name = "details",
         target_id = id.from(_N, "UpdateIntegrationDetails"),
         target = M.UpdateIntegrationDetails,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCodeSecurityIntegrationOutput = schema.new({
   id = id.from(_N, "UpdateCodeSecurityIntegrationResponse"),
   type = "structure",
   members = {
      integrationArn = schema.new({
         id = id.from(_N, "UpdateCodeSecurityIntegrationOutput", "integrationArn"),
         type = "string",
         name = "integrationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "UpdateCodeSecurityIntegrationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCodeSecurityScanConfigurationInput = schema.new({
   id = id.from(_N, "UpdateCodeSecurityScanConfigurationRequest"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "UpdateCodeSecurityScanConfigurationInput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configuration = schema.new({
         id = id.from(_N, "UpdateCodeSecurityScanConfigurationInput", "configuration"),
         type = "structure",
         name = "configuration",
         target_id = id.from(_N, "CodeSecurityScanConfiguration"),
         target = M.CodeSecurityScanConfiguration,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateCodeSecurityScanConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateCodeSecurityScanConfigurationResponse"),
   type = "structure",
   members = {
      scanConfigurationArn = schema.new({
         id = id.from(_N, "UpdateCodeSecurityScanConfigurationOutput", "scanConfigurationArn"),
         type = "string",
         name = "scanConfigurationArn",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateConfigurationInput = schema.new({
   id = id.from(_N, "UpdateConfigurationRequest"),
   type = "structure",
   members = {
      ecrConfiguration = schema.new({
         id = id.from(_N, "UpdateConfigurationInput", "ecrConfiguration"),
         type = "structure",
         name = "ecrConfiguration",
         target_id = id.from(_N, "EcrConfiguration"),
         target = M.EcrConfiguration,
      }),
      ec2Configuration = schema.new({
         id = id.from(_N, "UpdateConfigurationInput", "ec2Configuration"),
         type = "structure",
         name = "ec2Configuration",
         target_id = id.from(_N, "Ec2Configuration"),
         target = M.Ec2Configuration,
      }),
   },
})

M.UpdateConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateConfigurationResponse"),
   type = "structure",
})

M.UpdateEc2DeepInspectionConfigurationInput = schema.new({
   id = id.from(_N, "UpdateEc2DeepInspectionConfigurationRequest"),
   type = "structure",
   members = {
      activateDeepInspection = schema.new({
         id = id.from(_N, "UpdateEc2DeepInspectionConfigurationInput", "activateDeepInspection"),
         type = "boolean",
         name = "activateDeepInspection",
         target_id = prelude.Boolean.id,
      }),
      packagePaths = schema.new({
         id = id.from(_N, "UpdateEc2DeepInspectionConfigurationInput", "packagePaths"),
         type = "list",
         name = "packagePaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateEc2DeepInspectionConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateEc2DeepInspectionConfigurationResponse"),
   type = "structure",
   members = {
      packagePaths = schema.new({
         id = id.from(_N, "UpdateEc2DeepInspectionConfigurationOutput", "packagePaths"),
         type = "list",
         name = "packagePaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      orgPackagePaths = schema.new({
         id = id.from(_N, "UpdateEc2DeepInspectionConfigurationOutput", "orgPackagePaths"),
         type = "list",
         name = "orgPackagePaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      status = schema.new({
         id = id.from(_N, "UpdateEc2DeepInspectionConfigurationOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      errorMessage = schema.new({
         id = id.from(_N, "UpdateEc2DeepInspectionConfigurationOutput", "errorMessage"),
         type = "string",
         name = "errorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateEncryptionKeyInput = schema.new({
   id = id.from(_N, "UpdateEncryptionKeyRequest"),
   type = "structure",
   members = {
      kmsKeyId = schema.new({
         id = id.from(_N, "UpdateEncryptionKeyInput", "kmsKeyId"),
         type = "string",
         name = "kmsKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      scanType = schema.new({
         id = id.from(_N, "UpdateEncryptionKeyInput", "scanType"),
         type = "string",
         name = "scanType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "UpdateEncryptionKeyInput", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateEncryptionKeyOutput = schema.new({
   id = id.from(_N, "UpdateEncryptionKeyResponse"),
   type = "structure",
})

M.UpdateFilterInput = schema.new({
   id = id.from(_N, "UpdateFilterRequest"),
   type = "structure",
   members = {
      action = schema.new({
         id = id.from(_N, "UpdateFilterInput", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "UpdateFilterInput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      filterCriteria = schema.new({
         id = id.from(_N, "UpdateFilterInput", "filterCriteria"),
         type = "structure",
         name = "filterCriteria",
         target_id = id.from(_N, "FilterCriteria"),
         target = M.FilterCriteria,
      }),
      name = schema.new({
         id = id.from(_N, "UpdateFilterInput", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      filterArn = schema.new({
         id = id.from(_N, "UpdateFilterInput", "filterArn"),
         type = "string",
         name = "filterArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "UpdateFilterInput", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateFilterOutput = schema.new({
   id = id.from(_N, "UpdateFilterResponse"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "UpdateFilterOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateOrganizationConfigurationInput = schema.new({
   id = id.from(_N, "UpdateOrganizationConfigurationRequest"),
   type = "structure",
   members = {
      autoEnable = schema.new({
         id = id.from(_N, "UpdateOrganizationConfigurationInput", "autoEnable"),
         type = "structure",
         name = "autoEnable",
         target_id = id.from(_N, "AutoEnable"),
         target = M.AutoEnable,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateOrganizationConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateOrganizationConfigurationResponse"),
   type = "structure",
   members = {
      autoEnable = schema.new({
         id = id.from(_N, "UpdateOrganizationConfigurationOutput", "autoEnable"),
         type = "structure",
         name = "autoEnable",
         target_id = id.from(_N, "AutoEnable"),
         target = M.AutoEnable,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateOrgEc2DeepInspectionConfigurationInput = schema.new({
   id = id.from(_N, "UpdateOrgEc2DeepInspectionConfigurationRequest"),
   type = "structure",
   members = {
      orgPackagePaths = schema.new({
         id = id.from(_N, "UpdateOrgEc2DeepInspectionConfigurationInput", "orgPackagePaths"),
         type = "list",
         name = "orgPackagePaths",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateOrgEc2DeepInspectionConfigurationOutput = schema.new({
   id = id.from(_N, "UpdateOrgEc2DeepInspectionConfigurationResponse"),
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
   id = id.from("com.amazonaws.inspector2", "Inspector2"),
   version = "2020-06-08",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateMember = schema.operation({
   id = id.from("com.amazonaws.inspector2", "AssociateMember"),
   input = M.AssociateMemberInput,
   output = M.AssociateMemberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/members/associate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchAssociateCodeSecurityScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchAssociateCodeSecurityScanConfiguration"),
   input = M.BatchAssociateCodeSecurityScanConfigurationInput,
   output = M.BatchAssociateCodeSecurityScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/batch/associate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDisassociateCodeSecurityScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchDisassociateCodeSecurityScanConfiguration"),
   input = M.BatchDisassociateCodeSecurityScanConfigurationInput,
   output = M.BatchDisassociateCodeSecurityScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/batch/disassociate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetAccountStatus = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchGetAccountStatus"),
   input = M.BatchGetAccountStatusInput,
   output = M.BatchGetAccountStatusOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/status/batch/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetCodeSnippet = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchGetCodeSnippet"),
   input = M.BatchGetCodeSnippetInput,
   output = M.BatchGetCodeSnippetOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesnippet/batchget" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetFindingDetails = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchGetFindingDetails"),
   input = M.BatchGetFindingDetailsInput,
   output = M.BatchGetFindingDetailsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/findings/details/batch/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetFreeTrialInfo = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchGetFreeTrialInfo"),
   input = M.BatchGetFreeTrialInfoInput,
   output = M.BatchGetFreeTrialInfoOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/freetrialinfo/batchget" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchGetMemberEc2DeepInspectionStatus = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchGetMemberEc2DeepInspectionStatus"),
   input = M.BatchGetMemberEc2DeepInspectionStatusInput,
   output = M.BatchGetMemberEc2DeepInspectionStatusOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ec2deepinspectionstatus/member/batch/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchUpdateMemberEc2DeepInspectionStatus = schema.operation({
   id = id.from("com.amazonaws.inspector2", "BatchUpdateMemberEc2DeepInspectionStatus"),
   input = M.BatchUpdateMemberEc2DeepInspectionStatusInput,
   output = M.BatchUpdateMemberEc2DeepInspectionStatusOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ec2deepinspectionstatus/member/batch/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelFindingsReport = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CancelFindingsReport"),
   input = M.CancelFindingsReportInput,
   output = M.CancelFindingsReportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/reporting/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelSbomExport = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CancelSbomExport"),
   input = M.CancelSbomExportInput,
   output = M.CancelSbomExportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sbomexport/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCisScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CreateCisScanConfiguration"),
   input = M.CreateCisScanConfigurationInput,
   output = M.CreateCisScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-configuration/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCodeSecurityIntegration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CreateCodeSecurityIntegration"),
   input = M.CreateCodeSecurityIntegrationInput,
   output = M.CreateCodeSecurityIntegrationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/integration/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCodeSecurityScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CreateCodeSecurityScanConfiguration"),
   input = M.CreateCodeSecurityScanConfigurationInput,
   output = M.CreateCodeSecurityScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateFilter = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CreateFilter"),
   input = M.CreateFilterInput,
   output = M.CreateFilterOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/filters/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateFindingsReport = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CreateFindingsReport"),
   input = M.CreateFindingsReportInput,
   output = M.CreateFindingsReportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/reporting/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateSbomExport = schema.operation({
   id = id.from("com.amazonaws.inspector2", "CreateSbomExport"),
   input = M.CreateSbomExportInput,
   output = M.CreateSbomExportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sbomexport/create" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCisScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DeleteCisScanConfiguration"),
   input = M.DeleteCisScanConfigurationInput,
   output = M.DeleteCisScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-configuration/delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCodeSecurityIntegration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DeleteCodeSecurityIntegration"),
   input = M.DeleteCodeSecurityIntegrationInput,
   output = M.DeleteCodeSecurityIntegrationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/integration/delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCodeSecurityScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DeleteCodeSecurityScanConfiguration"),
   input = M.DeleteCodeSecurityScanConfigurationInput,
   output = M.DeleteCodeSecurityScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteFilter = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DeleteFilter"),
   input = M.DeleteFilterInput,
   output = M.DeleteFilterOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/filters/delete" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeOrganizationConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DescribeOrganizationConfiguration"),
   input = M.DescribeOrganizationConfigurationInput,
   output = M.DescribeOrganizationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/organizationconfiguration/describe" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Disable = schema.operation({
   id = id.from("com.amazonaws.inspector2", "Disable"),
   input = M.DisableInput,
   output = M.DisableOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/disable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableDelegatedAdminAccount = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DisableDelegatedAdminAccount"),
   input = M.DisableDelegatedAdminAccountInput,
   output = M.DisableDelegatedAdminAccountOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delegatedadminaccounts/disable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateMember = schema.operation({
   id = id.from("com.amazonaws.inspector2", "DisassociateMember"),
   input = M.DisassociateMemberInput,
   output = M.DisassociateMemberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/members/disassociate" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Enable = schema.operation({
   id = id.from("com.amazonaws.inspector2", "Enable"),
   input = M.EnableInput,
   output = M.EnableOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/enable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableDelegatedAdminAccount = schema.operation({
   id = id.from("com.amazonaws.inspector2", "EnableDelegatedAdminAccount"),
   input = M.EnableDelegatedAdminAccountInput,
   output = M.EnableDelegatedAdminAccountOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delegatedadminaccounts/enable" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCisScanReport = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetCisScanReport"),
   input = M.GetCisScanReportInput,
   output = M.GetCisScanReportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan/report/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCisScanResultDetails = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetCisScanResultDetails"),
   input = M.GetCisScanResultDetailsInput,
   output = M.GetCisScanResultDetailsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-result/details/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetClustersForImage = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetClustersForImage"),
   input = M.GetClustersForImageInput,
   output = M.GetClustersForImageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cluster/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCodeSecurityIntegration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetCodeSecurityIntegration"),
   input = M.GetCodeSecurityIntegrationInput,
   output = M.GetCodeSecurityIntegrationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/integration/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCodeSecurityScan = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetCodeSecurityScan"),
   input = M.GetCodeSecurityScanInput,
   output = M.GetCodeSecurityScanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCodeSecurityScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetCodeSecurityScanConfiguration"),
   input = M.GetCodeSecurityScanConfigurationInput,
   output = M.GetCodeSecurityScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetConfiguration"),
   input = M.GetConfigurationInput,
   output = M.GetConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/configuration/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDelegatedAdminAccount = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetDelegatedAdminAccount"),
   input = M.GetDelegatedAdminAccountInput,
   output = M.GetDelegatedAdminAccountOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delegatedadminaccounts/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEc2DeepInspectionConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetEc2DeepInspectionConfiguration"),
   input = M.GetEc2DeepInspectionConfigurationInput,
   output = M.GetEc2DeepInspectionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ec2deepinspectionconfiguration/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetEncryptionKey = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetEncryptionKey"),
   input = M.GetEncryptionKeyInput,
   output = M.GetEncryptionKeyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/encryptionkey/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetFindingsReportStatus = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetFindingsReportStatus"),
   input = M.GetFindingsReportStatusInput,
   output = M.GetFindingsReportStatusOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/reporting/status/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetMember = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetMember"),
   input = M.GetMemberInput,
   output = M.GetMemberOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/members/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetSbomExport = schema.operation({
   id = id.from("com.amazonaws.inspector2", "GetSbomExport"),
   input = M.GetSbomExportInput,
   output = M.GetSbomExportOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/sbomexport/get" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAccountPermissions = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListAccountPermissions"),
   input = M.ListAccountPermissionsInput,
   output = M.ListAccountPermissionsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/accountpermissions/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCisScanConfigurations = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCisScanConfigurations"),
   input = M.ListCisScanConfigurationsInput,
   output = M.ListCisScanConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-configuration/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCisScanResultsAggregatedByChecks = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCisScanResultsAggregatedByChecks"),
   input = M.ListCisScanResultsAggregatedByChecksInput,
   output = M.ListCisScanResultsAggregatedByChecksOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-result/check/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCisScanResultsAggregatedByTargetResource = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCisScanResultsAggregatedByTargetResource"),
   input = M.ListCisScanResultsAggregatedByTargetResourceInput,
   output = M.ListCisScanResultsAggregatedByTargetResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-result/resource/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCisScans = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCisScans"),
   input = M.ListCisScansInput,
   output = M.ListCisScansOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCodeSecurityIntegrations = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCodeSecurityIntegrations"),
   input = M.ListCodeSecurityIntegrationsInput,
   output = M.ListCodeSecurityIntegrationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/integration/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCodeSecurityScanConfigurationAssociations = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCodeSecurityScanConfigurationAssociations"),
   input = M.ListCodeSecurityScanConfigurationAssociationsInput,
   output = M.ListCodeSecurityScanConfigurationAssociationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/associations/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCodeSecurityScanConfigurations = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCodeSecurityScanConfigurations"),
   input = M.ListCodeSecurityScanConfigurationsInput,
   output = M.ListCodeSecurityScanConfigurationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCoverage = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCoverage"),
   input = M.ListCoverageInput,
   output = M.ListCoverageOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/coverage/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCoverageStatistics = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListCoverageStatistics"),
   input = M.ListCoverageStatisticsInput,
   output = M.ListCoverageStatisticsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/coverage/statistics/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDelegatedAdminAccounts = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListDelegatedAdminAccounts"),
   input = M.ListDelegatedAdminAccountsInput,
   output = M.ListDelegatedAdminAccountsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/delegatedadminaccounts/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFilters = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListFilters"),
   input = M.ListFiltersInput,
   output = M.ListFiltersOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/filters/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFindingAggregations = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListFindingAggregations"),
   input = M.ListFindingAggregationsInput,
   output = M.ListFindingAggregationsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/findings/aggregation/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListFindings = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListFindings"),
   input = M.ListFindingsInput,
   output = M.ListFindingsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/findings/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListMembers = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListMembers"),
   input = M.ListMembersInput,
   output = M.ListMembersOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/members/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListUsageTotals = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ListUsageTotals"),
   input = M.ListUsageTotalsInput,
   output = M.ListUsageTotalsOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/usage/list" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResetEncryptionKey = schema.operation({
   id = id.from("com.amazonaws.inspector2", "ResetEncryptionKey"),
   input = M.ResetEncryptionKeyInput,
   output = M.ResetEncryptionKeyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/encryptionkey/reset" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SearchVulnerabilities = schema.operation({
   id = id.from("com.amazonaws.inspector2", "SearchVulnerabilities"),
   input = M.SearchVulnerabilitiesInput,
   output = M.SearchVulnerabilitiesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/vulnerabilities/search" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendCisSessionHealth = schema.operation({
   id = id.from("com.amazonaws.inspector2", "SendCisSessionHealth"),
   input = M.SendCisSessionHealthInput,
   output = M.SendCisSessionHealthOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/cissession/health/send" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.SendCisSessionTelemetry = schema.operation({
   id = id.from("com.amazonaws.inspector2", "SendCisSessionTelemetry"),
   input = M.SendCisSessionTelemetryInput,
   output = M.SendCisSessionTelemetryOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/cissession/telemetry/send" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartCisSession = schema.operation({
   id = id.from("com.amazonaws.inspector2", "StartCisSession"),
   input = M.StartCisSessionInput,
   output = M.StartCisSessionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/cissession/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartCodeSecurityScan = schema.operation({
   id = id.from("com.amazonaws.inspector2", "StartCodeSecurityScan"),
   input = M.StartCodeSecurityScanInput,
   output = M.StartCodeSecurityScanOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan/start" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopCisSession = schema.operation({
   id = id.from("com.amazonaws.inspector2", "StopCisSession"),
   input = M.StopCisSessionInput,
   output = M.StopCisSessionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/cissession/stop" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.inspector2", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCisScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateCisScanConfiguration"),
   input = M.UpdateCisScanConfigurationInput,
   output = M.UpdateCisScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/cis/scan-configuration/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCodeSecurityIntegration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateCodeSecurityIntegration"),
   input = M.UpdateCodeSecurityIntegrationInput,
   output = M.UpdateCodeSecurityIntegrationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/integration/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCodeSecurityScanConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateCodeSecurityScanConfiguration"),
   input = M.UpdateCodeSecurityScanConfigurationInput,
   output = M.UpdateCodeSecurityScanConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/codesecurity/scan-configuration/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateConfiguration"),
   input = M.UpdateConfigurationInput,
   output = M.UpdateConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/configuration/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEc2DeepInspectionConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateEc2DeepInspectionConfiguration"),
   input = M.UpdateEc2DeepInspectionConfigurationInput,
   output = M.UpdateEc2DeepInspectionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ec2deepinspectionconfiguration/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEncryptionKey = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateEncryptionKey"),
   input = M.UpdateEncryptionKeyInput,
   output = M.UpdateEncryptionKeyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/encryptionkey/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateFilter = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateFilter"),
   input = M.UpdateFilterInput,
   output = M.UpdateFilterOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/filters/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateOrganizationConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateOrganizationConfiguration"),
   input = M.UpdateOrganizationConfigurationInput,
   output = M.UpdateOrganizationConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/organizationconfiguration/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateOrgEc2DeepInspectionConfiguration = schema.operation({
   id = id.from("com.amazonaws.inspector2", "UpdateOrgEc2DeepInspectionConfiguration"),
   input = M.UpdateOrgEc2DeepInspectionConfigurationInput,
   output = M.UpdateOrgEc2DeepInspectionConfigurationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/ec2deepinspectionconfiguration/org/update" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
