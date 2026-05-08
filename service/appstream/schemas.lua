

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.appstream"

local M = {}

M.StringList = schema.new({ type = "list", list_member = prelude.String })

M.UserStackAssociationList = schema.new({ type = "list", list_member = M.UserStackAssociation })

M.UserStackAssociationErrorList = schema.new({ type = "list", list_member = M.UserStackAssociationError })

M.Tags = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.AccessEndpointList = schema.new({ type = "list", list_member = M.AccessEndpoint })

M.Platforms = schema.new({ type = "list", list_member = prelude.String })

M.OrganizationalUnitDistinguishedNamesList = schema.new({ type = "list", list_member = prelude.String })

M.EntitlementAttributeList = schema.new({ type = "list", list_member = M.EntitlementAttribute })

M.UsbDeviceFilterStrings = schema.new({ type = "list", list_member = prelude.String })

M.AppCatalogConfig = schema.new({ type = "list", list_member = M.ApplicationConfig })

M.StorageConnectorList = schema.new({ type = "list", list_member = M.StorageConnector })

M.UserSettingList = schema.new({ type = "list", list_member = M.UserSetting })

M.EmbedHostDomains = schema.new({ type = "list", list_member = prelude.String })

M.ThemeFooterLinks = schema.new({ type = "list", list_member = M.ThemeFooterLink })

M.AppBlockBuilderAppBlockAssociationsList = schema.new({ type = "list", list_member = M.AppBlockBuilderAppBlockAssociation })

M.AppBlockBuilderList = schema.new({ type = "list", list_member = M.AppBlockBuilder })

M.ArnList = schema.new({ type = "list", list_member = prelude.String })

M.AppBlocks = schema.new({ type = "list", list_member = M.AppBlock })

M.ApplicationFleetAssociationList = schema.new({ type = "list", list_member = M.ApplicationFleetAssociation })

M.Applications = schema.new({ type = "list", list_member = M.Application })

M.AdminAppLicenseUsageList = schema.new({ type = "list", list_member = M.AdminAppLicenseUsageRecord })

M.DirectoryNameList = schema.new({ type = "list", list_member = prelude.String })

M.DirectoryConfigList = schema.new({ type = "list", list_member = M.DirectoryConfig })

M.EntitlementList = schema.new({ type = "list", list_member = M.Entitlement })

M.FleetList = schema.new({ type = "list", list_member = M.Fleet })

M.ImageBuilderList = schema.new({ type = "list", list_member = M.ImageBuilder })

M.AwsAccountIdList = schema.new({ type = "list", list_member = prelude.String })

M.SharedImagePermissionsList = schema.new({ type = "list", list_member = M.SharedImagePermissions })

M.ImageList = schema.new({ type = "list", list_member = M.Image })

M.SessionList = schema.new({ type = "list", list_member = M.Session })

M.SoftwareAssociationsList = schema.new({ type = "list", list_member = M.SoftwareAssociations })

M.StackList = schema.new({ type = "list", list_member = M.Stack })

M.UsageReportSubscriptionList = schema.new({ type = "list", list_member = M.UsageReportSubscription })

M.UserList = schema.new({ type = "list", list_member = M.User })

M.EntitledApplicationList = schema.new({ type = "list", list_member = M.EntitledApplication })

M.Filters = schema.new({ type = "list", list_member = M.Filter })

M.ExportImageTasks = schema.new({ type = "list", list_member = M.ExportImageTask })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.AppBlockBuilderAttributes = schema.new({ type = "list", list_member = prelude.String })

M.ApplicationAttributes = schema.new({ type = "list", list_member = prelude.String })

M.FleetAttributes = schema.new({ type = "list", list_member = prelude.String })

M.StackAttributes = schema.new({ type = "list", list_member = prelude.String })

M.ThemeAttributes = schema.new({ type = "list", list_member = prelude.String })

M.ErrorDetailsList = schema.new({ type = "list", list_member = M.ErrorDetails })

M.SubnetIdList = schema.new({ type = "list", list_member = prelude.String })

M.SecurityGroupIdList = schema.new({ type = "list", list_member = prelude.String })

M.ResourceErrors = schema.new({ type = "list", list_member = M.ResourceError })

M.Metadata = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.FleetErrors = schema.new({ type = "list", list_member = M.FleetError })

M.AgentAccessSettingList = schema.new({ type = "list", list_member = M.AgentAccessSetting })

M.StackErrors = schema.new({ type = "list", list_member = M.StackError })

M.DomainList = schema.new({ type = "list", list_member = prelude.String })

M.UrlPatternList = schema.new({ type = "list", list_member = prelude.String })

M.LastReportGenerationExecutionErrors = schema.new({ type = "list", list_member = M.LastReportGenerationExecutionError })

M.FilterValues = schema.new({ type = "list", list_member = prelude.String })

M.AccessEndpoint = schema.new({
   id = id.from(_N, "AccessEndpoint"),
   type = "structure",
   members = {
      EndpointType = schema.new({
         id = id.from(_N, "AccessEndpoint", "EndpointType"),
         type = "string",
         name = "EndpointType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VpceId = schema.new({
         id = id.from(_N, "AccessEndpoint", "VpceId"),
         type = "string",
         name = "VpceId",
         target_id = prelude.String.id,
      }),
   },
})

M.AdminAppLicenseUsageRecord = schema.new({
   id = id.from(_N, "AdminAppLicenseUsageRecord"),
   type = "structure",
   members = {
      UserArn = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "UserArn"),
         type = "string",
         name = "UserArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BillingPeriod = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OwnerAWSAccountId = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "OwnerAWSAccountId"),
         type = "string",
         name = "OwnerAWSAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SubscriptionFirstUsedDate = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "SubscriptionFirstUsedDate"),
         type = "timestamp",
         name = "SubscriptionFirstUsedDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SubscriptionLastUsedDate = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "SubscriptionLastUsedDate"),
         type = "timestamp",
         name = "SubscriptionLastUsedDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LicenseType = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "LicenseType"),
         type = "string",
         name = "LicenseType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "AdminAppLicenseUsageRecord", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AgentAccessSetting = schema.new({
   id = id.from(_N, "AgentAccessSetting"),
   type = "structure",
   members = {
      AgentAction = schema.new({
         id = id.from(_N, "AgentAccessSetting", "AgentAction"),
         type = "string",
         name = "AgentAction",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Permission = schema.new({
         id = id.from(_N, "AgentAccessSetting", "Permission"),
         type = "string",
         name = "Permission",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AgentAccessConfig = schema.new({
   id = id.from(_N, "AgentAccessConfig"),
   type = "structure",
   members = {
      Settings = schema.new({
         id = id.from(_N, "AgentAccessConfig", "Settings"),
         type = "list",
         name = "Settings",
         target_id = prelude.Document.id,
         list_member = M.AgentAccessSetting,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3BucketArn = schema.new({
         id = id.from(_N, "AgentAccessConfig", "S3BucketArn"),
         type = "string",
         name = "S3BucketArn",
         target_id = prelude.String.id,
      }),
      ScreenshotsUploadEnabled = schema.new({
         id = id.from(_N, "AgentAccessConfig", "ScreenshotsUploadEnabled"),
         type = "boolean",
         name = "ScreenshotsUploadEnabled",
         target_id = prelude.Boolean.id,
      }),
      ScreenResolution = schema.new({
         id = id.from(_N, "AgentAccessConfig", "ScreenResolution"),
         type = "string",
         name = "ScreenResolution",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ScreenImageFormat = schema.new({
         id = id.from(_N, "AgentAccessConfig", "ScreenImageFormat"),
         type = "string",
         name = "ScreenImageFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AgentAccessConfigForUpdate = schema.new({
   id = id.from(_N, "AgentAccessConfigForUpdate"),
   type = "structure",
   members = {
      Settings = schema.new({
         id = id.from(_N, "AgentAccessConfigForUpdate", "Settings"),
         type = "list",
         name = "Settings",
         target_id = prelude.Document.id,
         list_member = M.AgentAccessSetting,
      }),
      S3BucketArn = schema.new({
         id = id.from(_N, "AgentAccessConfigForUpdate", "S3BucketArn"),
         type = "string",
         name = "S3BucketArn",
         target_id = prelude.String.id,
      }),
      ScreenshotsUploadEnabled = schema.new({
         id = id.from(_N, "AgentAccessConfigForUpdate", "ScreenshotsUploadEnabled"),
         type = "boolean",
         name = "ScreenshotsUploadEnabled",
         target_id = prelude.Boolean.id,
      }),
      ScreenResolution = schema.new({
         id = id.from(_N, "AgentAccessConfigForUpdate", "ScreenResolution"),
         type = "string",
         name = "ScreenResolution",
         target_id = prelude.String.id,
      }),
      ScreenImageFormat = schema.new({
         id = id.from(_N, "AgentAccessConfigForUpdate", "ScreenImageFormat"),
         type = "string",
         name = "ScreenImageFormat",
         target_id = prelude.String.id,
      }),
   },
})

M.ErrorDetails = schema.new({
   id = id.from(_N, "ErrorDetails"),
   type = "structure",
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "ErrorDetails", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "ErrorDetails", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.S3Location = schema.new({
   id = id.from(_N, "S3Location"),
   type = "structure",
   members = {
      S3Bucket = schema.new({
         id = id.from(_N, "S3Location", "S3Bucket"),
         type = "string",
         name = "S3Bucket",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      S3Key = schema.new({
         id = id.from(_N, "S3Location", "S3Key"),
         type = "string",
         name = "S3Key",
         target_id = prelude.String.id,
      }),
   },
})

M.ScriptDetails = schema.new({
   id = id.from(_N, "ScriptDetails"),
   type = "structure",
   members = {
      ScriptS3Location = schema.new({
         id = id.from(_N, "ScriptDetails", "ScriptS3Location"),
         type = "structure",
         name = "ScriptS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExecutablePath = schema.new({
         id = id.from(_N, "ScriptDetails", "ExecutablePath"),
         type = "string",
         name = "ExecutablePath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ExecutableParameters = schema.new({
         id = id.from(_N, "ScriptDetails", "ExecutableParameters"),
         type = "string",
         name = "ExecutableParameters",
         target_id = prelude.String.id,
      }),
      TimeoutInSeconds = schema.new({
         id = id.from(_N, "ScriptDetails", "TimeoutInSeconds"),
         type = "integer",
         name = "TimeoutInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AppBlock = schema.new({
   id = id.from(_N, "AppBlock"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "AppBlock", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "AppBlock", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "AppBlock", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "AppBlock", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      SourceS3Location = schema.new({
         id = id.from(_N, "AppBlock", "SourceS3Location"),
         type = "structure",
         name = "SourceS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      SetupScriptDetails = schema.new({
         id = id.from(_N, "AppBlock", "SetupScriptDetails"),
         type = "structure",
         name = "SetupScriptDetails",
         target_id = id.from(_N, "ScriptDetails"),
         target = M.ScriptDetails,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "AppBlock", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      PostSetupScriptDetails = schema.new({
         id = id.from(_N, "AppBlock", "PostSetupScriptDetails"),
         type = "structure",
         name = "PostSetupScriptDetails",
         target_id = id.from(_N, "ScriptDetails"),
         target = M.ScriptDetails,
      }),
      PackagingType = schema.new({
         id = id.from(_N, "AppBlock", "PackagingType"),
         type = "string",
         name = "PackagingType",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "AppBlock", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      AppBlockErrors = schema.new({
         id = id.from(_N, "AppBlock", "AppBlockErrors"),
         type = "list",
         name = "AppBlockErrors",
         target_id = prelude.Document.id,
         list_member = M.ErrorDetails,
      }),
   },
})

M.ResourceError = schema.new({
   id = id.from(_N, "ResourceError"),
   type = "structure",
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "ResourceError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "ResourceError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
      ErrorTimestamp = schema.new({
         id = id.from(_N, "ResourceError", "ErrorTimestamp"),
         type = "timestamp",
         name = "ErrorTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AppBlockBuilderStateChangeReason = schema.new({
   id = id.from(_N, "AppBlockBuilderStateChangeReason"),
   type = "structure",
   members = {
      Code = schema.new({
         id = id.from(_N, "AppBlockBuilderStateChangeReason", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "AppBlockBuilderStateChangeReason", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.VpcConfig = schema.new({
   id = id.from(_N, "VpcConfig"),
   type = "structure",
   members = {
      SubnetIds = schema.new({
         id = id.from(_N, "VpcConfig", "SubnetIds"),
         type = "list",
         name = "SubnetIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SecurityGroupIds = schema.new({
         id = id.from(_N, "VpcConfig", "SecurityGroupIds"),
         type = "list",
         name = "SecurityGroupIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.AppBlockBuilder = schema.new({
   id = id.from(_N, "AppBlockBuilder"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "AppBlockBuilder", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "AppBlockBuilder", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DisplayName = schema.new({
         id = id.from(_N, "AppBlockBuilder", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "AppBlockBuilder", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "AppBlockBuilder", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InstanceType = schema.new({
         id = id.from(_N, "AppBlockBuilder", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "AppBlockBuilder", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "AppBlockBuilder", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "AppBlockBuilder", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "AppBlockBuilder", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "AppBlockBuilder", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      AppBlockBuilderErrors = schema.new({
         id = id.from(_N, "AppBlockBuilder", "AppBlockBuilderErrors"),
         type = "list",
         name = "AppBlockBuilderErrors",
         target_id = prelude.Document.id,
         list_member = M.ResourceError,
      }),
      StateChangeReason = schema.new({
         id = id.from(_N, "AppBlockBuilder", "StateChangeReason"),
         type = "structure",
         name = "StateChangeReason",
         target_id = id.from(_N, "AppBlockBuilderStateChangeReason"),
         target = M.AppBlockBuilderStateChangeReason,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "AppBlockBuilder", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "AppBlockBuilder", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.AppBlockBuilderAppBlockAssociation = schema.new({
   id = id.from(_N, "AppBlockBuilderAppBlockAssociation"),
   type = "structure",
   members = {
      AppBlockArn = schema.new({
         id = id.from(_N, "AppBlockBuilderAppBlockAssociation", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AppBlockBuilderName = schema.new({
         id = id.from(_N, "AppBlockBuilderAppBlockAssociation", "AppBlockBuilderName"),
         type = "string",
         name = "AppBlockBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ApplicationConfig = schema.new({
   id = id.from(_N, "ApplicationConfig"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ApplicationConfig", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DisplayName = schema.new({
         id = id.from(_N, "ApplicationConfig", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      AbsoluteAppPath = schema.new({
         id = id.from(_N, "ApplicationConfig", "AbsoluteAppPath"),
         type = "string",
         name = "AbsoluteAppPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AbsoluteIconPath = schema.new({
         id = id.from(_N, "ApplicationConfig", "AbsoluteIconPath"),
         type = "string",
         name = "AbsoluteIconPath",
         target_id = prelude.String.id,
      }),
      AbsoluteManifestPath = schema.new({
         id = id.from(_N, "ApplicationConfig", "AbsoluteManifestPath"),
         type = "string",
         name = "AbsoluteManifestPath",
         target_id = prelude.String.id,
      }),
      WorkingDirectory = schema.new({
         id = id.from(_N, "ApplicationConfig", "WorkingDirectory"),
         type = "string",
         name = "WorkingDirectory",
         target_id = prelude.String.id,
      }),
      LaunchParameters = schema.new({
         id = id.from(_N, "ApplicationConfig", "LaunchParameters"),
         type = "string",
         name = "LaunchParameters",
         target_id = prelude.String.id,
      }),
   },
})

M.Application = schema.new({
   id = id.from(_N, "Application"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Application", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Application", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      IconURL = schema.new({
         id = id.from(_N, "Application", "IconURL"),
         type = "string",
         name = "IconURL",
         target_id = prelude.String.id,
      }),
      LaunchPath = schema.new({
         id = id.from(_N, "Application", "LaunchPath"),
         type = "string",
         name = "LaunchPath",
         target_id = prelude.String.id,
      }),
      LaunchParameters = schema.new({
         id = id.from(_N, "Application", "LaunchParameters"),
         type = "string",
         name = "LaunchParameters",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "Application", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      Metadata = schema.new({
         id = id.from(_N, "Application", "Metadata"),
         type = "map",
         name = "Metadata",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      WorkingDirectory = schema.new({
         id = id.from(_N, "Application", "WorkingDirectory"),
         type = "string",
         name = "WorkingDirectory",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "Application", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Arn = schema.new({
         id = id.from(_N, "Application", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      AppBlockArn = schema.new({
         id = id.from(_N, "Application", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
      }),
      IconS3Location = schema.new({
         id = id.from(_N, "Application", "IconS3Location"),
         type = "structure",
         name = "IconS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      Platforms = schema.new({
         id = id.from(_N, "Application", "Platforms"),
         type = "list",
         name = "Platforms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      InstanceFamilies = schema.new({
         id = id.from(_N, "Application", "InstanceFamilies"),
         type = "list",
         name = "InstanceFamilies",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Application", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ApplicationFleetAssociation = schema.new({
   id = id.from(_N, "ApplicationFleetAssociation"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "ApplicationFleetAssociation", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "ApplicationFleetAssociation", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ApplicationSettings = schema.new({
   id = id.from(_N, "ApplicationSettings"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ApplicationSettings", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SettingsGroup = schema.new({
         id = id.from(_N, "ApplicationSettings", "SettingsGroup"),
         type = "string",
         name = "SettingsGroup",
         target_id = prelude.String.id,
      }),
   },
})

M.ApplicationSettingsResponse = schema.new({
   id = id.from(_N, "ApplicationSettingsResponse"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "ApplicationSettingsResponse", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      SettingsGroup = schema.new({
         id = id.from(_N, "ApplicationSettingsResponse", "SettingsGroup"),
         type = "string",
         name = "SettingsGroup",
         target_id = prelude.String.id,
      }),
      S3BucketName = schema.new({
         id = id.from(_N, "ApplicationSettingsResponse", "S3BucketName"),
         type = "string",
         name = "S3BucketName",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateAppBlockBuilderAppBlockInput = schema.new({
   id = id.from(_N, "AssociateAppBlockBuilderAppBlockRequest"),
   type = "structure",
   members = {
      AppBlockArn = schema.new({
         id = id.from(_N, "AssociateAppBlockBuilderAppBlockInput", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AppBlockBuilderName = schema.new({
         id = id.from(_N, "AssociateAppBlockBuilderAppBlockInput", "AppBlockBuilderName"),
         type = "string",
         name = "AppBlockBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateAppBlockBuilderAppBlockOutput = schema.new({
   id = id.from(_N, "AssociateAppBlockBuilderAppBlockResult"),
   type = "structure",
   members = {
      AppBlockBuilderAppBlockAssociation = schema.new({
         id = id.from(_N, "AssociateAppBlockBuilderAppBlockOutput", "AppBlockBuilderAppBlockAssociation"),
         type = "structure",
         name = "AppBlockBuilderAppBlockAssociation",
         target_id = id.from(_N, "AppBlockBuilderAppBlockAssociation"),
         target = M.AppBlockBuilderAppBlockAssociation,
      }),
   },
})

M.ConcurrentModificationException = schema.new({
   id = id.from(_N, "ConcurrentModificationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ConcurrentModificationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidParameterCombinationException = schema.new({
   id = id.from(_N, "InvalidParameterCombinationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidParameterCombinationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.LimitExceededException = schema.new({
   id = id.from(_N, "LimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "LimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.OperationNotPermittedException = schema.new({
   id = id.from(_N, "OperationNotPermittedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "OperationNotPermittedException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
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
      }),
   },
})

M.AssociateApplicationFleetInput = schema.new({
   id = id.from(_N, "AssociateApplicationFleetRequest"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "AssociateApplicationFleetInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "AssociateApplicationFleetInput", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateApplicationFleetOutput = schema.new({
   id = id.from(_N, "AssociateApplicationFleetResult"),
   type = "structure",
   members = {
      ApplicationFleetAssociation = schema.new({
         id = id.from(_N, "AssociateApplicationFleetOutput", "ApplicationFleetAssociation"),
         type = "structure",
         name = "ApplicationFleetAssociation",
         target_id = id.from(_N, "ApplicationFleetAssociation"),
         target = M.ApplicationFleetAssociation,
      }),
   },
})

M.AssociateApplicationToEntitlementInput = schema.new({
   id = id.from(_N, "AssociateApplicationToEntitlementRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "AssociateApplicationToEntitlementInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EntitlementName = schema.new({
         id = id.from(_N, "AssociateApplicationToEntitlementInput", "EntitlementName"),
         type = "string",
         name = "EntitlementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "AssociateApplicationToEntitlementInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateApplicationToEntitlementOutput = schema.new({
   id = id.from(_N, "AssociateApplicationToEntitlementResult"),
   type = "structure",
})

M.EntitlementNotFoundException = schema.new({
   id = id.from(_N, "EntitlementNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "EntitlementNotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateFleetInput = schema.new({
   id = id.from(_N, "AssociateFleetRequest"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "AssociateFleetInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "AssociateFleetInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateFleetOutput = schema.new({
   id = id.from(_N, "AssociateFleetResult"),
   type = "structure",
})

M.IncompatibleImageException = schema.new({
   id = id.from(_N, "IncompatibleImageException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "IncompatibleImageException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidAccountStatusException = schema.new({
   id = id.from(_N, "InvalidAccountStatusException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidAccountStatusException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociateSoftwareToImageBuilderInput = schema.new({
   id = id.from(_N, "AssociateSoftwareToImageBuilderRequest"),
   type = "structure",
   members = {
      ImageBuilderName = schema.new({
         id = id.from(_N, "AssociateSoftwareToImageBuilderInput", "ImageBuilderName"),
         type = "string",
         name = "ImageBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SoftwareNames = schema.new({
         id = id.from(_N, "AssociateSoftwareToImageBuilderInput", "SoftwareNames"),
         type = "list",
         name = "SoftwareNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateSoftwareToImageBuilderOutput = schema.new({
   id = id.from(_N, "AssociateSoftwareToImageBuilderResult"),
   type = "structure",
})

M.UserStackAssociation = schema.new({
   id = id.from(_N, "UserStackAssociation"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "UserStackAssociation", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserName = schema.new({
         id = id.from(_N, "UserStackAssociation", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "UserStackAssociation", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SendEmailNotification = schema.new({
         id = id.from(_N, "UserStackAssociation", "SendEmailNotification"),
         type = "boolean",
         name = "SendEmailNotification",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.BatchAssociateUserStackInput = schema.new({
   id = id.from(_N, "BatchAssociateUserStackRequest"),
   type = "structure",
   members = {
      UserStackAssociations = schema.new({
         id = id.from(_N, "BatchAssociateUserStackInput", "UserStackAssociations"),
         type = "list",
         name = "UserStackAssociations",
         target_id = prelude.Document.id,
         list_member = M.UserStackAssociation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UserStackAssociationError = schema.new({
   id = id.from(_N, "UserStackAssociationError"),
   type = "structure",
   members = {
      UserStackAssociation = schema.new({
         id = id.from(_N, "UserStackAssociationError", "UserStackAssociation"),
         type = "structure",
         name = "UserStackAssociation",
         target_id = id.from(_N, "UserStackAssociation"),
         target = M.UserStackAssociation,
      }),
      ErrorCode = schema.new({
         id = id.from(_N, "UserStackAssociationError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "UserStackAssociationError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchAssociateUserStackOutput = schema.new({
   id = id.from(_N, "BatchAssociateUserStackResult"),
   type = "structure",
   members = {
      errors = schema.new({
         id = id.from(_N, "BatchAssociateUserStackOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.UserStackAssociationError,
      }),
   },
})

M.BatchDisassociateUserStackInput = schema.new({
   id = id.from(_N, "BatchDisassociateUserStackRequest"),
   type = "structure",
   members = {
      UserStackAssociations = schema.new({
         id = id.from(_N, "BatchDisassociateUserStackInput", "UserStackAssociations"),
         type = "list",
         name = "UserStackAssociations",
         target_id = prelude.Document.id,
         list_member = M.UserStackAssociation,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDisassociateUserStackOutput = schema.new({
   id = id.from(_N, "BatchDisassociateUserStackResult"),
   type = "structure",
   members = {
      errors = schema.new({
         id = id.from(_N, "BatchDisassociateUserStackOutput", "errors"),
         type = "list",
         name = "errors",
         target_id = prelude.Document.id,
         list_member = M.UserStackAssociationError,
      }),
   },
})

M.CertificateBasedAuthProperties = schema.new({
   id = id.from(_N, "CertificateBasedAuthProperties"),
   type = "structure",
   members = {
      Status = schema.new({
         id = id.from(_N, "CertificateBasedAuthProperties", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      CertificateAuthorityArn = schema.new({
         id = id.from(_N, "CertificateBasedAuthProperties", "CertificateAuthorityArn"),
         type = "string",
         name = "CertificateAuthorityArn",
         target_id = prelude.String.id,
      }),
   },
})

M.ComputeCapacity = schema.new({
   id = id.from(_N, "ComputeCapacity"),
   type = "structure",
   members = {
      DesiredInstances = schema.new({
         id = id.from(_N, "ComputeCapacity", "DesiredInstances"),
         type = "integer",
         name = "DesiredInstances",
         target_id = prelude.Integer.id,
      }),
      DesiredSessions = schema.new({
         id = id.from(_N, "ComputeCapacity", "DesiredSessions"),
         type = "integer",
         name = "DesiredSessions",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ComputeCapacityStatus = schema.new({
   id = id.from(_N, "ComputeCapacityStatus"),
   type = "structure",
   members = {
      Desired = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "Desired"),
         type = "integer",
         name = "Desired",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Running = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "Running"),
         type = "integer",
         name = "Running",
         target_id = prelude.Integer.id,
      }),
      InUse = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "InUse"),
         type = "integer",
         name = "InUse",
         target_id = prelude.Integer.id,
      }),
      Available = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "Available"),
         type = "integer",
         name = "Available",
         target_id = prelude.Integer.id,
      }),
      DesiredUserSessions = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "DesiredUserSessions"),
         type = "integer",
         name = "DesiredUserSessions",
         target_id = prelude.Integer.id,
      }),
      AvailableUserSessions = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "AvailableUserSessions"),
         type = "integer",
         name = "AvailableUserSessions",
         target_id = prelude.Integer.id,
      }),
      ActiveUserSessions = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "ActiveUserSessions"),
         type = "integer",
         name = "ActiveUserSessions",
         target_id = prelude.Integer.id,
      }),
      ActualUserSessions = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "ActualUserSessions"),
         type = "integer",
         name = "ActualUserSessions",
         target_id = prelude.Integer.id,
      }),
      Draining = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "Draining"),
         type = "integer",
         name = "Draining",
         target_id = prelude.Integer.id,
      }),
      DrainModeActiveUserSessions = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "DrainModeActiveUserSessions"),
         type = "integer",
         name = "DrainModeActiveUserSessions",
         target_id = prelude.Integer.id,
      }),
      DrainModeUnusedUserSessions = schema.new({
         id = id.from(_N, "ComputeCapacityStatus", "DrainModeUnusedUserSessions"),
         type = "integer",
         name = "DrainModeUnusedUserSessions",
         target_id = prelude.Integer.id,
      }),
   },
})

M.UrlRedirectionConfig = schema.new({
   id = id.from(_N, "UrlRedirectionConfig"),
   type = "structure",
   members = {
      Enabled = schema.new({
         id = id.from(_N, "UrlRedirectionConfig", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AllowedUrls = schema.new({
         id = id.from(_N, "UrlRedirectionConfig", "AllowedUrls"),
         type = "list",
         name = "AllowedUrls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DeniedUrls = schema.new({
         id = id.from(_N, "UrlRedirectionConfig", "DeniedUrls"),
         type = "list",
         name = "DeniedUrls",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ContentRedirection = schema.new({
   id = id.from(_N, "ContentRedirection"),
   type = "structure",
   members = {
      HostToClient = schema.new({
         id = id.from(_N, "ContentRedirection", "HostToClient"),
         type = "structure",
         name = "HostToClient",
         target_id = id.from(_N, "UrlRedirectionConfig"),
         target = M.UrlRedirectionConfig,
      }),
   },
})

M.CopyImageInput = schema.new({
   id = id.from(_N, "CopyImageRequest"),
   type = "structure",
   members = {
      SourceImageName = schema.new({
         id = id.from(_N, "CopyImageInput", "SourceImageName"),
         type = "string",
         name = "SourceImageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationImageName = schema.new({
         id = id.from(_N, "CopyImageInput", "DestinationImageName"),
         type = "string",
         name = "DestinationImageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationRegion = schema.new({
         id = id.from(_N, "CopyImageInput", "DestinationRegion"),
         type = "string",
         name = "DestinationRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationImageDescription = schema.new({
         id = id.from(_N, "CopyImageInput", "DestinationImageDescription"),
         type = "string",
         name = "DestinationImageDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.CopyImageOutput = schema.new({
   id = id.from(_N, "CopyImageResponse"),
   type = "structure",
   members = {
      DestinationImageName = schema.new({
         id = id.from(_N, "CopyImageOutput", "DestinationImageName"),
         type = "string",
         name = "DestinationImageName",
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

M.ResourceNotAvailableException = schema.new({
   id = id.from(_N, "ResourceNotAvailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ResourceNotAvailableException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAppBlockInput = schema.new({
   id = id.from(_N, "CreateAppBlockRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      SourceS3Location = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "SourceS3Location"),
         type = "structure",
         name = "SourceS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SetupScriptDetails = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "SetupScriptDetails"),
         type = "structure",
         name = "SetupScriptDetails",
         target_id = id.from(_N, "ScriptDetails"),
         target = M.ScriptDetails,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      PostSetupScriptDetails = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "PostSetupScriptDetails"),
         type = "structure",
         name = "PostSetupScriptDetails",
         target_id = id.from(_N, "ScriptDetails"),
         target = M.ScriptDetails,
      }),
      PackagingType = schema.new({
         id = id.from(_N, "CreateAppBlockInput", "PackagingType"),
         type = "string",
         name = "PackagingType",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAppBlockOutput = schema.new({
   id = id.from(_N, "CreateAppBlockResult"),
   type = "structure",
   members = {
      AppBlock = schema.new({
         id = id.from(_N, "CreateAppBlockOutput", "AppBlock"),
         type = "structure",
         name = "AppBlock",
         target_id = id.from(_N, "AppBlock"),
         target = M.AppBlock,
      }),
   },
})

M.CreateAppBlockBuilderInput = schema.new({
   id = id.from(_N, "CreateAppBlockBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      Platform = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InstanceType = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderInput", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateAppBlockBuilderOutput = schema.new({
   id = id.from(_N, "CreateAppBlockBuilderResult"),
   type = "structure",
   members = {
      AppBlockBuilder = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderOutput", "AppBlockBuilder"),
         type = "structure",
         name = "AppBlockBuilder",
         target_id = id.from(_N, "AppBlockBuilder"),
         target = M.AppBlockBuilder,
      }),
   },
})

M.InvalidRoleException = schema.new({
   id = id.from(_N, "InvalidRoleException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "InvalidRoleException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.RequestLimitExceededException = schema.new({
   id = id.from(_N, "RequestLimitExceededException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "RequestLimitExceededException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAppBlockBuilderStreamingURLInput = schema.new({
   id = id.from(_N, "CreateAppBlockBuilderStreamingURLRequest"),
   type = "structure",
   members = {
      AppBlockBuilderName = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderStreamingURLInput", "AppBlockBuilderName"),
         type = "string",
         name = "AppBlockBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Validity = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderStreamingURLInput", "Validity"),
         type = "long",
         name = "Validity",
         target_id = prelude.Long.id,
      }),
   },
})

M.CreateAppBlockBuilderStreamingURLOutput = schema.new({
   id = id.from(_N, "CreateAppBlockBuilderStreamingURLResult"),
   type = "structure",
   members = {
      StreamingURL = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderStreamingURLOutput", "StreamingURL"),
         type = "string",
         name = "StreamingURL",
         target_id = prelude.String.id,
      }),
      Expires = schema.new({
         id = id.from(_N, "CreateAppBlockBuilderStreamingURLOutput", "Expires"),
         type = "timestamp",
         name = "Expires",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateApplicationInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      IconS3Location = schema.new({
         id = id.from(_N, "CreateApplicationInput", "IconS3Location"),
         type = "structure",
         name = "IconS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      LaunchPath = schema.new({
         id = id.from(_N, "CreateApplicationInput", "LaunchPath"),
         type = "string",
         name = "LaunchPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WorkingDirectory = schema.new({
         id = id.from(_N, "CreateApplicationInput", "WorkingDirectory"),
         type = "string",
         name = "WorkingDirectory",
         target_id = prelude.String.id,
      }),
      LaunchParameters = schema.new({
         id = id.from(_N, "CreateApplicationInput", "LaunchParameters"),
         type = "string",
         name = "LaunchParameters",
         target_id = prelude.String.id,
      }),
      Platforms = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Platforms"),
         type = "list",
         name = "Platforms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      InstanceFamilies = schema.new({
         id = id.from(_N, "CreateApplicationInput", "InstanceFamilies"),
         type = "list",
         name = "InstanceFamilies",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AppBlockArn = schema.new({
         id = id.from(_N, "CreateApplicationInput", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResult"),
   type = "structure",
   members = {
      Application = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Application"),
         type = "structure",
         name = "Application",
         target_id = id.from(_N, "Application"),
         target = M.Application,
      }),
   },
})

M.ServiceAccountCredentials = schema.new({
   id = id.from(_N, "ServiceAccountCredentials"),
   type = "structure",
   members = {
      AccountName = schema.new({
         id = id.from(_N, "ServiceAccountCredentials", "AccountName"),
         type = "string",
         name = "AccountName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AccountPassword = schema.new({
         id = id.from(_N, "ServiceAccountCredentials", "AccountPassword"),
         type = "string",
         name = "AccountPassword",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateDirectoryConfigInput = schema.new({
   id = id.from(_N, "CreateDirectoryConfigRequest"),
   type = "structure",
   members = {
      DirectoryName = schema.new({
         id = id.from(_N, "CreateDirectoryConfigInput", "DirectoryName"),
         type = "string",
         name = "DirectoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OrganizationalUnitDistinguishedNames = schema.new({
         id = id.from(_N, "CreateDirectoryConfigInput", "OrganizationalUnitDistinguishedNames"),
         type = "list",
         name = "OrganizationalUnitDistinguishedNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ServiceAccountCredentials = schema.new({
         id = id.from(_N, "CreateDirectoryConfigInput", "ServiceAccountCredentials"),
         type = "structure",
         name = "ServiceAccountCredentials",
         target_id = id.from(_N, "ServiceAccountCredentials"),
         target = M.ServiceAccountCredentials,
      }),
      CertificateBasedAuthProperties = schema.new({
         id = id.from(_N, "CreateDirectoryConfigInput", "CertificateBasedAuthProperties"),
         type = "structure",
         name = "CertificateBasedAuthProperties",
         target_id = id.from(_N, "CertificateBasedAuthProperties"),
         target = M.CertificateBasedAuthProperties,
      }),
   },
})

M.DirectoryConfig = schema.new({
   id = id.from(_N, "DirectoryConfig"),
   type = "structure",
   members = {
      DirectoryName = schema.new({
         id = id.from(_N, "DirectoryConfig", "DirectoryName"),
         type = "string",
         name = "DirectoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OrganizationalUnitDistinguishedNames = schema.new({
         id = id.from(_N, "DirectoryConfig", "OrganizationalUnitDistinguishedNames"),
         type = "list",
         name = "OrganizationalUnitDistinguishedNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ServiceAccountCredentials = schema.new({
         id = id.from(_N, "DirectoryConfig", "ServiceAccountCredentials"),
         type = "structure",
         name = "ServiceAccountCredentials",
         target_id = id.from(_N, "ServiceAccountCredentials"),
         target = M.ServiceAccountCredentials,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "DirectoryConfig", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      CertificateBasedAuthProperties = schema.new({
         id = id.from(_N, "DirectoryConfig", "CertificateBasedAuthProperties"),
         type = "structure",
         name = "CertificateBasedAuthProperties",
         target_id = id.from(_N, "CertificateBasedAuthProperties"),
         target = M.CertificateBasedAuthProperties,
      }),
   },
})

M.CreateDirectoryConfigOutput = schema.new({
   id = id.from(_N, "CreateDirectoryConfigResult"),
   type = "structure",
   members = {
      DirectoryConfig = schema.new({
         id = id.from(_N, "CreateDirectoryConfigOutput", "DirectoryConfig"),
         type = "structure",
         name = "DirectoryConfig",
         target_id = id.from(_N, "DirectoryConfig"),
         target = M.DirectoryConfig,
      }),
   },
})

M.EntitlementAttribute = schema.new({
   id = id.from(_N, "EntitlementAttribute"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "EntitlementAttribute", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Value = schema.new({
         id = id.from(_N, "EntitlementAttribute", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateEntitlementInput = schema.new({
   id = id.from(_N, "CreateEntitlementRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateEntitlementInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "CreateEntitlementInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateEntitlementInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      AppVisibility = schema.new({
         id = id.from(_N, "CreateEntitlementInput", "AppVisibility"),
         type = "string",
         name = "AppVisibility",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "CreateEntitlementInput", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.EntitlementAttribute,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Entitlement = schema.new({
   id = id.from(_N, "Entitlement"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Entitlement", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "Entitlement", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "Entitlement", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      AppVisibility = schema.new({
         id = id.from(_N, "Entitlement", "AppVisibility"),
         type = "string",
         name = "AppVisibility",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Attributes = schema.new({
         id = id.from(_N, "Entitlement", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.EntitlementAttribute,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Entitlement", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      LastModifiedTime = schema.new({
         id = id.from(_N, "Entitlement", "LastModifiedTime"),
         type = "timestamp",
         name = "LastModifiedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateEntitlementOutput = schema.new({
   id = id.from(_N, "CreateEntitlementResult"),
   type = "structure",
   members = {
      Entitlement = schema.new({
         id = id.from(_N, "CreateEntitlementOutput", "Entitlement"),
         type = "structure",
         name = "Entitlement",
         target_id = id.from(_N, "Entitlement"),
         target = M.Entitlement,
      }),
   },
})

M.EntitlementAlreadyExistsException = schema.new({
   id = id.from(_N, "EntitlementAlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "EntitlementAlreadyExistsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateExportImageTaskInput = schema.new({
   id = id.from(_N, "CreateExportImageTaskRequest"),
   type = "structure",
   members = {
      ImageName = schema.new({
         id = id.from(_N, "CreateExportImageTaskInput", "ImageName"),
         type = "string",
         name = "ImageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AmiName = schema.new({
         id = id.from(_N, "CreateExportImageTaskInput", "AmiName"),
         type = "string",
         name = "AmiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "CreateExportImageTaskInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagSpecifications = schema.new({
         id = id.from(_N, "CreateExportImageTaskInput", "TagSpecifications"),
         type = "map",
         name = "TagSpecifications",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AmiDescription = schema.new({
         id = id.from(_N, "CreateExportImageTaskInput", "AmiDescription"),
         type = "string",
         name = "AmiDescription",
         target_id = prelude.String.id,
      }),
   },
})

M.ExportImageTask = schema.new({
   id = id.from(_N, "ExportImageTask"),
   type = "structure",
   members = {
      TaskId = schema.new({
         id = id.from(_N, "ExportImageTask", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImageArn = schema.new({
         id = id.from(_N, "ExportImageTask", "ImageArn"),
         type = "string",
         name = "ImageArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AmiName = schema.new({
         id = id.from(_N, "ExportImageTask", "AmiName"),
         type = "string",
         name = "AmiName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CreatedDate = schema.new({
         id = id.from(_N, "ExportImageTask", "CreatedDate"),
         type = "timestamp",
         name = "CreatedDate",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AmiDescription = schema.new({
         id = id.from(_N, "ExportImageTask", "AmiDescription"),
         type = "string",
         name = "AmiDescription",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ExportImageTask", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      AmiId = schema.new({
         id = id.from(_N, "ExportImageTask", "AmiId"),
         type = "string",
         name = "AmiId",
         target_id = prelude.String.id,
      }),
      TagSpecifications = schema.new({
         id = id.from(_N, "ExportImageTask", "TagSpecifications"),
         type = "map",
         name = "TagSpecifications",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      ErrorDetails = schema.new({
         id = id.from(_N, "ExportImageTask", "ErrorDetails"),
         type = "list",
         name = "ErrorDetails",
         target_id = prelude.Document.id,
         list_member = M.ErrorDetails,
      }),
   },
})

M.CreateExportImageTaskOutput = schema.new({
   id = id.from(_N, "CreateExportImageTaskResult"),
   type = "structure",
   members = {
      ExportImageTask = schema.new({
         id = id.from(_N, "CreateExportImageTaskOutput", "ExportImageTask"),
         type = "structure",
         name = "ExportImageTask",
         target_id = id.from(_N, "ExportImageTask"),
         target = M.ExportImageTask,
      }),
   },
})

M.DomainJoinInfo = schema.new({
   id = id.from(_N, "DomainJoinInfo"),
   type = "structure",
   members = {
      DirectoryName = schema.new({
         id = id.from(_N, "DomainJoinInfo", "DirectoryName"),
         type = "string",
         name = "DirectoryName",
         target_id = prelude.String.id,
      }),
      OrganizationalUnitDistinguishedName = schema.new({
         id = id.from(_N, "DomainJoinInfo", "OrganizationalUnitDistinguishedName"),
         type = "string",
         name = "OrganizationalUnitDistinguishedName",
         target_id = prelude.String.id,
      }),
   },
})

M.VolumeConfig = schema.new({
   id = id.from(_N, "VolumeConfig"),
   type = "structure",
   members = {
      VolumeSizeInGb = schema.new({
         id = id.from(_N, "VolumeConfig", "VolumeSizeInGb"),
         type = "integer",
         name = "VolumeSizeInGb",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateFleetInput = schema.new({
   id = id.from(_N, "CreateFleetRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateFleetInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImageName = schema.new({
         id = id.from(_N, "CreateFleetInput", "ImageName"),
         type = "string",
         name = "ImageName",
         target_id = prelude.String.id,
      }),
      ImageArn = schema.new({
         id = id.from(_N, "CreateFleetInput", "ImageArn"),
         type = "string",
         name = "ImageArn",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "CreateFleetInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FleetType = schema.new({
         id = id.from(_N, "CreateFleetInput", "FleetType"),
         type = "string",
         name = "FleetType",
         target_id = prelude.String.id,
      }),
      ComputeCapacity = schema.new({
         id = id.from(_N, "CreateFleetInput", "ComputeCapacity"),
         type = "structure",
         name = "ComputeCapacity",
         target_id = id.from(_N, "ComputeCapacity"),
         target = M.ComputeCapacity,
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "CreateFleetInput", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
      }),
      MaxUserDurationInSeconds = schema.new({
         id = id.from(_N, "CreateFleetInput", "MaxUserDurationInSeconds"),
         type = "integer",
         name = "MaxUserDurationInSeconds",
         target_id = prelude.Integer.id,
      }),
      DisconnectTimeoutInSeconds = schema.new({
         id = id.from(_N, "CreateFleetInput", "DisconnectTimeoutInSeconds"),
         type = "integer",
         name = "DisconnectTimeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateFleetInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateFleetInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "CreateFleetInput", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      DomainJoinInfo = schema.new({
         id = id.from(_N, "CreateFleetInput", "DomainJoinInfo"),
         type = "structure",
         name = "DomainJoinInfo",
         target_id = id.from(_N, "DomainJoinInfo"),
         target = M.DomainJoinInfo,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateFleetInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      IdleDisconnectTimeoutInSeconds = schema.new({
         id = id.from(_N, "CreateFleetInput", "IdleDisconnectTimeoutInSeconds"),
         type = "integer",
         name = "IdleDisconnectTimeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "CreateFleetInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      StreamView = schema.new({
         id = id.from(_N, "CreateFleetInput", "StreamView"),
         type = "string",
         name = "StreamView",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "CreateFleetInput", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      MaxConcurrentSessions = schema.new({
         id = id.from(_N, "CreateFleetInput", "MaxConcurrentSessions"),
         type = "integer",
         name = "MaxConcurrentSessions",
         target_id = prelude.Integer.id,
      }),
      UsbDeviceFilterStrings = schema.new({
         id = id.from(_N, "CreateFleetInput", "UsbDeviceFilterStrings"),
         type = "list",
         name = "UsbDeviceFilterStrings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SessionScriptS3Location = schema.new({
         id = id.from(_N, "CreateFleetInput", "SessionScriptS3Location"),
         type = "structure",
         name = "SessionScriptS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      MaxSessionsPerInstance = schema.new({
         id = id.from(_N, "CreateFleetInput", "MaxSessionsPerInstance"),
         type = "integer",
         name = "MaxSessionsPerInstance",
         target_id = prelude.Integer.id,
      }),
      RootVolumeConfig = schema.new({
         id = id.from(_N, "CreateFleetInput", "RootVolumeConfig"),
         type = "structure",
         name = "RootVolumeConfig",
         target_id = id.from(_N, "VolumeConfig"),
         target = M.VolumeConfig,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "CreateFleetInput", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.FleetError = schema.new({
   id = id.from(_N, "FleetError"),
   type = "structure",
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "FleetError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "FleetError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.Fleet = schema.new({
   id = id.from(_N, "Fleet"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "Fleet", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Name = schema.new({
         id = id.from(_N, "Fleet", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Fleet", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "Fleet", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      ImageName = schema.new({
         id = id.from(_N, "Fleet", "ImageName"),
         type = "string",
         name = "ImageName",
         target_id = prelude.String.id,
      }),
      ImageArn = schema.new({
         id = id.from(_N, "Fleet", "ImageArn"),
         type = "string",
         name = "ImageArn",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "Fleet", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FleetType = schema.new({
         id = id.from(_N, "Fleet", "FleetType"),
         type = "string",
         name = "FleetType",
         target_id = prelude.String.id,
      }),
      ComputeCapacityStatus = schema.new({
         id = id.from(_N, "Fleet", "ComputeCapacityStatus"),
         type = "structure",
         name = "ComputeCapacityStatus",
         target_id = id.from(_N, "ComputeCapacityStatus"),
         target = M.ComputeCapacityStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxUserDurationInSeconds = schema.new({
         id = id.from(_N, "Fleet", "MaxUserDurationInSeconds"),
         type = "integer",
         name = "MaxUserDurationInSeconds",
         target_id = prelude.Integer.id,
      }),
      DisconnectTimeoutInSeconds = schema.new({
         id = id.from(_N, "Fleet", "DisconnectTimeoutInSeconds"),
         type = "integer",
         name = "DisconnectTimeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
      State = schema.new({
         id = id.from(_N, "Fleet", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "Fleet", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Fleet", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      FleetErrors = schema.new({
         id = id.from(_N, "Fleet", "FleetErrors"),
         type = "list",
         name = "FleetErrors",
         target_id = prelude.Document.id,
         list_member = M.FleetError,
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "Fleet", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      DomainJoinInfo = schema.new({
         id = id.from(_N, "Fleet", "DomainJoinInfo"),
         type = "structure",
         name = "DomainJoinInfo",
         target_id = id.from(_N, "DomainJoinInfo"),
         target = M.DomainJoinInfo,
      }),
      IdleDisconnectTimeoutInSeconds = schema.new({
         id = id.from(_N, "Fleet", "IdleDisconnectTimeoutInSeconds"),
         type = "integer",
         name = "IdleDisconnectTimeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "Fleet", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      StreamView = schema.new({
         id = id.from(_N, "Fleet", "StreamView"),
         type = "string",
         name = "StreamView",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "Fleet", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      MaxConcurrentSessions = schema.new({
         id = id.from(_N, "Fleet", "MaxConcurrentSessions"),
         type = "integer",
         name = "MaxConcurrentSessions",
         target_id = prelude.Integer.id,
      }),
      UsbDeviceFilterStrings = schema.new({
         id = id.from(_N, "Fleet", "UsbDeviceFilterStrings"),
         type = "list",
         name = "UsbDeviceFilterStrings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SessionScriptS3Location = schema.new({
         id = id.from(_N, "Fleet", "SessionScriptS3Location"),
         type = "structure",
         name = "SessionScriptS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      MaxSessionsPerInstance = schema.new({
         id = id.from(_N, "Fleet", "MaxSessionsPerInstance"),
         type = "integer",
         name = "MaxSessionsPerInstance",
         target_id = prelude.Integer.id,
      }),
      RootVolumeConfig = schema.new({
         id = id.from(_N, "Fleet", "RootVolumeConfig"),
         type = "structure",
         name = "RootVolumeConfig",
         target_id = id.from(_N, "VolumeConfig"),
         target = M.VolumeConfig,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "Fleet", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateFleetOutput = schema.new({
   id = id.from(_N, "CreateFleetResult"),
   type = "structure",
   members = {
      Fleet = schema.new({
         id = id.from(_N, "CreateFleetOutput", "Fleet"),
         type = "structure",
         name = "Fleet",
         target_id = id.from(_N, "Fleet"),
         target = M.Fleet,
      }),
   },
})

M.CreateImageBuilderInput = schema.new({
   id = id.from(_N, "CreateImageBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImageName = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "ImageName"),
         type = "string",
         name = "ImageName",
         target_id = prelude.String.id,
      }),
      ImageArn = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "ImageArn"),
         type = "string",
         name = "ImageArn",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      DomainJoinInfo = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "DomainJoinInfo"),
         type = "structure",
         name = "DomainJoinInfo",
         target_id = id.from(_N, "DomainJoinInfo"),
         target = M.DomainJoinInfo,
      }),
      AppstreamAgentVersion = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "AppstreamAgentVersion"),
         type = "string",
         name = "AppstreamAgentVersion",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      RootVolumeConfig = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "RootVolumeConfig"),
         type = "structure",
         name = "RootVolumeConfig",
         target_id = id.from(_N, "VolumeConfig"),
         target = M.VolumeConfig,
      }),
      SoftwaresToInstall = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "SoftwaresToInstall"),
         type = "list",
         name = "SoftwaresToInstall",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SoftwaresToUninstall = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "SoftwaresToUninstall"),
         type = "list",
         name = "SoftwaresToUninstall",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "CreateImageBuilderInput", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.NetworkAccessConfiguration = schema.new({
   id = id.from(_N, "NetworkAccessConfiguration"),
   type = "structure",
   members = {
      EniPrivateIpAddress = schema.new({
         id = id.from(_N, "NetworkAccessConfiguration", "EniPrivateIpAddress"),
         type = "string",
         name = "EniPrivateIpAddress",
         target_id = prelude.String.id,
      }),
      EniIpv6Addresses = schema.new({
         id = id.from(_N, "NetworkAccessConfiguration", "EniIpv6Addresses"),
         type = "list",
         name = "EniIpv6Addresses",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      EniId = schema.new({
         id = id.from(_N, "NetworkAccessConfiguration", "EniId"),
         type = "string",
         name = "EniId",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageBuilderStateChangeReason = schema.new({
   id = id.from(_N, "ImageBuilderStateChangeReason"),
   type = "structure",
   members = {
      Code = schema.new({
         id = id.from(_N, "ImageBuilderStateChangeReason", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ImageBuilderStateChangeReason", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.ImageBuilder = schema.new({
   id = id.from(_N, "ImageBuilder"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ImageBuilder", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "ImageBuilder", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      ImageArn = schema.new({
         id = id.from(_N, "ImageBuilder", "ImageArn"),
         type = "string",
         name = "ImageArn",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "ImageBuilder", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "ImageBuilder", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "ImageBuilder", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "ImageBuilder", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "ImageBuilder", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "ImageBuilder", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "ImageBuilder", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      StateChangeReason = schema.new({
         id = id.from(_N, "ImageBuilder", "StateChangeReason"),
         type = "structure",
         name = "StateChangeReason",
         target_id = id.from(_N, "ImageBuilderStateChangeReason"),
         target = M.ImageBuilderStateChangeReason,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "ImageBuilder", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "ImageBuilder", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      DomainJoinInfo = schema.new({
         id = id.from(_N, "ImageBuilder", "DomainJoinInfo"),
         type = "structure",
         name = "DomainJoinInfo",
         target_id = id.from(_N, "DomainJoinInfo"),
         target = M.DomainJoinInfo,
      }),
      NetworkAccessConfiguration = schema.new({
         id = id.from(_N, "ImageBuilder", "NetworkAccessConfiguration"),
         type = "structure",
         name = "NetworkAccessConfiguration",
         target_id = id.from(_N, "NetworkAccessConfiguration"),
         target = M.NetworkAccessConfiguration,
      }),
      ImageBuilderErrors = schema.new({
         id = id.from(_N, "ImageBuilder", "ImageBuilderErrors"),
         type = "list",
         name = "ImageBuilderErrors",
         target_id = prelude.Document.id,
         list_member = M.ResourceError,
      }),
      AppstreamAgentVersion = schema.new({
         id = id.from(_N, "ImageBuilder", "AppstreamAgentVersion"),
         type = "string",
         name = "AppstreamAgentVersion",
         target_id = prelude.String.id,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "ImageBuilder", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      RootVolumeConfig = schema.new({
         id = id.from(_N, "ImageBuilder", "RootVolumeConfig"),
         type = "structure",
         name = "RootVolumeConfig",
         target_id = id.from(_N, "VolumeConfig"),
         target = M.VolumeConfig,
      }),
      LatestAppstreamAgentVersion = schema.new({
         id = id.from(_N, "ImageBuilder", "LatestAppstreamAgentVersion"),
         type = "string",
         name = "LatestAppstreamAgentVersion",
         target_id = prelude.String.id,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "ImageBuilder", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateImageBuilderOutput = schema.new({
   id = id.from(_N, "CreateImageBuilderResult"),
   type = "structure",
   members = {
      ImageBuilder = schema.new({
         id = id.from(_N, "CreateImageBuilderOutput", "ImageBuilder"),
         type = "structure",
         name = "ImageBuilder",
         target_id = id.from(_N, "ImageBuilder"),
         target = M.ImageBuilder,
      }),
   },
})

M.CreateImageBuilderStreamingURLInput = schema.new({
   id = id.from(_N, "CreateImageBuilderStreamingURLRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateImageBuilderStreamingURLInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Validity = schema.new({
         id = id.from(_N, "CreateImageBuilderStreamingURLInput", "Validity"),
         type = "long",
         name = "Validity",
         target_id = prelude.Long.id,
      }),
   },
})

M.CreateImageBuilderStreamingURLOutput = schema.new({
   id = id.from(_N, "CreateImageBuilderStreamingURLResult"),
   type = "structure",
   members = {
      StreamingURL = schema.new({
         id = id.from(_N, "CreateImageBuilderStreamingURLOutput", "StreamingURL"),
         type = "string",
         name = "StreamingURL",
         target_id = prelude.String.id,
      }),
      Expires = schema.new({
         id = id.from(_N, "CreateImageBuilderStreamingURLOutput", "Expires"),
         type = "timestamp",
         name = "Expires",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.RuntimeValidationConfig = schema.new({
   id = id.from(_N, "RuntimeValidationConfig"),
   type = "structure",
   members = {
      IntendedInstanceType = schema.new({
         id = id.from(_N, "RuntimeValidationConfig", "IntendedInstanceType"),
         type = "string",
         name = "IntendedInstanceType",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateImportedImageInput = schema.new({
   id = id.from(_N, "CreateImportedImageRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SourceAmiId = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "SourceAmiId"),
         type = "string",
         name = "SourceAmiId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      RuntimeValidationConfig = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "RuntimeValidationConfig"),
         type = "structure",
         name = "RuntimeValidationConfig",
         target_id = id.from(_N, "RuntimeValidationConfig"),
         target = M.RuntimeValidationConfig,
      }),
      AgentSoftwareVersion = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "AgentSoftwareVersion"),
         type = "string",
         name = "AgentSoftwareVersion",
         target_id = prelude.String.id,
      }),
      AppCatalogConfig = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "AppCatalogConfig"),
         type = "list",
         name = "AppCatalogConfig",
         target_id = prelude.Document.id,
         list_member = M.ApplicationConfig,
      }),
      DryRun = schema.new({
         id = id.from(_N, "CreateImportedImageInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ImagePermissions = schema.new({
   id = id.from(_N, "ImagePermissions"),
   type = "structure",
   members = {
      allowFleet = schema.new({
         id = id.from(_N, "ImagePermissions", "allowFleet"),
         type = "boolean",
         name = "allowFleet",
         target_id = prelude.Boolean.id,
      }),
      allowImageBuilder = schema.new({
         id = id.from(_N, "ImagePermissions", "allowImageBuilder"),
         type = "boolean",
         name = "allowImageBuilder",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.ImageStateChangeReason = schema.new({
   id = id.from(_N, "ImageStateChangeReason"),
   type = "structure",
   members = {
      Code = schema.new({
         id = id.from(_N, "ImageStateChangeReason", "Code"),
         type = "string",
         name = "Code",
         target_id = prelude.String.id,
      }),
      Message = schema.new({
         id = id.from(_N, "ImageStateChangeReason", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.Image = schema.new({
   id = id.from(_N, "Image"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Image", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "Image", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      BaseImageArn = schema.new({
         id = id.from(_N, "Image", "BaseImageArn"),
         type = "string",
         name = "BaseImageArn",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Image", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "Image", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      Visibility = schema.new({
         id = id.from(_N, "Image", "Visibility"),
         type = "string",
         name = "Visibility",
         target_id = prelude.String.id,
      }),
      ImageBuilderSupported = schema.new({
         id = id.from(_N, "Image", "ImageBuilderSupported"),
         type = "boolean",
         name = "ImageBuilderSupported",
         target_id = prelude.Boolean.id,
      }),
      ImageBuilderName = schema.new({
         id = id.from(_N, "Image", "ImageBuilderName"),
         type = "string",
         name = "ImageBuilderName",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "Image", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "Image", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      StateChangeReason = schema.new({
         id = id.from(_N, "Image", "StateChangeReason"),
         type = "structure",
         name = "StateChangeReason",
         target_id = id.from(_N, "ImageStateChangeReason"),
         target = M.ImageStateChangeReason,
      }),
      Applications = schema.new({
         id = id.from(_N, "Image", "Applications"),
         type = "list",
         name = "Applications",
         target_id = prelude.Document.id,
         list_member = M.Application,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Image", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      PublicBaseImageReleasedDate = schema.new({
         id = id.from(_N, "Image", "PublicBaseImageReleasedDate"),
         type = "timestamp",
         name = "PublicBaseImageReleasedDate",
         target_id = prelude.Timestamp.id,
      }),
      AppstreamAgentVersion = schema.new({
         id = id.from(_N, "Image", "AppstreamAgentVersion"),
         type = "string",
         name = "AppstreamAgentVersion",
         target_id = prelude.String.id,
      }),
      ImagePermissions = schema.new({
         id = id.from(_N, "Image", "ImagePermissions"),
         type = "structure",
         name = "ImagePermissions",
         target_id = id.from(_N, "ImagePermissions"),
         target = M.ImagePermissions,
      }),
      ImageErrors = schema.new({
         id = id.from(_N, "Image", "ImageErrors"),
         type = "list",
         name = "ImageErrors",
         target_id = prelude.Document.id,
         list_member = M.ResourceError,
      }),
      LatestAppstreamAgentVersion = schema.new({
         id = id.from(_N, "Image", "LatestAppstreamAgentVersion"),
         type = "string",
         name = "LatestAppstreamAgentVersion",
         target_id = prelude.String.id,
      }),
      SupportedInstanceFamilies = schema.new({
         id = id.from(_N, "Image", "SupportedInstanceFamilies"),
         type = "list",
         name = "SupportedInstanceFamilies",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DynamicAppProvidersEnabled = schema.new({
         id = id.from(_N, "Image", "DynamicAppProvidersEnabled"),
         type = "string",
         name = "DynamicAppProvidersEnabled",
         target_id = prelude.String.id,
      }),
      ImageSharedWithOthers = schema.new({
         id = id.from(_N, "Image", "ImageSharedWithOthers"),
         type = "string",
         name = "ImageSharedWithOthers",
         target_id = prelude.String.id,
      }),
      ManagedSoftwareIncluded = schema.new({
         id = id.from(_N, "Image", "ManagedSoftwareIncluded"),
         type = "boolean",
         name = "ManagedSoftwareIncluded",
         target_id = prelude.Boolean.id,
      }),
      ImageType = schema.new({
         id = id.from(_N, "Image", "ImageType"),
         type = "string",
         name = "ImageType",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateImportedImageOutput = schema.new({
   id = id.from(_N, "CreateImportedImageResult"),
   type = "structure",
   members = {
      Image = schema.new({
         id = id.from(_N, "CreateImportedImageOutput", "Image"),
         type = "structure",
         name = "Image",
         target_id = id.from(_N, "Image"),
         target = M.Image,
      }),
   },
})

M.DryRunOperationException = schema.new({
   id = id.from(_N, "DryRunOperationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "DryRunOperationException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.StorageConnector = schema.new({
   id = id.from(_N, "StorageConnector"),
   type = "structure",
   members = {
      ConnectorType = schema.new({
         id = id.from(_N, "StorageConnector", "ConnectorType"),
         type = "string",
         name = "ConnectorType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ResourceIdentifier = schema.new({
         id = id.from(_N, "StorageConnector", "ResourceIdentifier"),
         type = "string",
         name = "ResourceIdentifier",
         target_id = prelude.String.id,
      }),
      Domains = schema.new({
         id = id.from(_N, "StorageConnector", "Domains"),
         type = "list",
         name = "Domains",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DomainsRequireAdminConsent = schema.new({
         id = id.from(_N, "StorageConnector", "DomainsRequireAdminConsent"),
         type = "list",
         name = "DomainsRequireAdminConsent",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.StreamingExperienceSettings = schema.new({
   id = id.from(_N, "StreamingExperienceSettings"),
   type = "structure",
   members = {
      PreferredProtocol = schema.new({
         id = id.from(_N, "StreamingExperienceSettings", "PreferredProtocol"),
         type = "string",
         name = "PreferredProtocol",
         target_id = prelude.String.id,
      }),
   },
})

M.UserSetting = schema.new({
   id = id.from(_N, "UserSetting"),
   type = "structure",
   members = {
      Action = schema.new({
         id = id.from(_N, "UserSetting", "Action"),
         type = "string",
         name = "Action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Permission = schema.new({
         id = id.from(_N, "UserSetting", "Permission"),
         type = "string",
         name = "Permission",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaximumLength = schema.new({
         id = id.from(_N, "UserSetting", "MaximumLength"),
         type = "integer",
         name = "MaximumLength",
         target_id = prelude.Integer.id,
      }),
   },
})

M.CreateStackInput = schema.new({
   id = id.from(_N, "CreateStackRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "CreateStackInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateStackInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "CreateStackInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      StorageConnectors = schema.new({
         id = id.from(_N, "CreateStackInput", "StorageConnectors"),
         type = "list",
         name = "StorageConnectors",
         target_id = prelude.Document.id,
         list_member = M.StorageConnector,
      }),
      RedirectURL = schema.new({
         id = id.from(_N, "CreateStackInput", "RedirectURL"),
         type = "string",
         name = "RedirectURL",
         target_id = prelude.String.id,
      }),
      FeedbackURL = schema.new({
         id = id.from(_N, "CreateStackInput", "FeedbackURL"),
         type = "string",
         name = "FeedbackURL",
         target_id = prelude.String.id,
      }),
      UserSettings = schema.new({
         id = id.from(_N, "CreateStackInput", "UserSettings"),
         type = "list",
         name = "UserSettings",
         target_id = prelude.Document.id,
         list_member = M.UserSetting,
      }),
      ApplicationSettings = schema.new({
         id = id.from(_N, "CreateStackInput", "ApplicationSettings"),
         type = "structure",
         name = "ApplicationSettings",
         target_id = id.from(_N, "ApplicationSettings"),
         target = M.ApplicationSettings,
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateStackInput", "Tags"),
         type = "map",
         name = "Tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "CreateStackInput", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      EmbedHostDomains = schema.new({
         id = id.from(_N, "CreateStackInput", "EmbedHostDomains"),
         type = "list",
         name = "EmbedHostDomains",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      StreamingExperienceSettings = schema.new({
         id = id.from(_N, "CreateStackInput", "StreamingExperienceSettings"),
         type = "structure",
         name = "StreamingExperienceSettings",
         target_id = id.from(_N, "StreamingExperienceSettings"),
         target = M.StreamingExperienceSettings,
      }),
      ContentRedirection = schema.new({
         id = id.from(_N, "CreateStackInput", "ContentRedirection"),
         type = "structure",
         name = "ContentRedirection",
         target_id = id.from(_N, "ContentRedirection"),
         target = M.ContentRedirection,
      }),
      AgentAccessConfig = schema.new({
         id = id.from(_N, "CreateStackInput", "AgentAccessConfig"),
         type = "structure",
         name = "AgentAccessConfig",
         target_id = id.from(_N, "AgentAccessConfig"),
         target = M.AgentAccessConfig,
      }),
   },
})

M.StackError = schema.new({
   id = id.from(_N, "StackError"),
   type = "structure",
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "StackError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "StackError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.Stack = schema.new({
   id = id.from(_N, "Stack"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "Stack", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "Stack", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "Stack", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "Stack", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Stack", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      StorageConnectors = schema.new({
         id = id.from(_N, "Stack", "StorageConnectors"),
         type = "list",
         name = "StorageConnectors",
         target_id = prelude.Document.id,
         list_member = M.StorageConnector,
      }),
      RedirectURL = schema.new({
         id = id.from(_N, "Stack", "RedirectURL"),
         type = "string",
         name = "RedirectURL",
         target_id = prelude.String.id,
      }),
      FeedbackURL = schema.new({
         id = id.from(_N, "Stack", "FeedbackURL"),
         type = "string",
         name = "FeedbackURL",
         target_id = prelude.String.id,
      }),
      StackErrors = schema.new({
         id = id.from(_N, "Stack", "StackErrors"),
         type = "list",
         name = "StackErrors",
         target_id = prelude.Document.id,
         list_member = M.StackError,
      }),
      UserSettings = schema.new({
         id = id.from(_N, "Stack", "UserSettings"),
         type = "list",
         name = "UserSettings",
         target_id = prelude.Document.id,
         list_member = M.UserSetting,
      }),
      ApplicationSettings = schema.new({
         id = id.from(_N, "Stack", "ApplicationSettings"),
         type = "structure",
         name = "ApplicationSettings",
         target_id = id.from(_N, "ApplicationSettingsResponse"),
         target = M.ApplicationSettingsResponse,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "Stack", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      EmbedHostDomains = schema.new({
         id = id.from(_N, "Stack", "EmbedHostDomains"),
         type = "list",
         name = "EmbedHostDomains",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      StreamingExperienceSettings = schema.new({
         id = id.from(_N, "Stack", "StreamingExperienceSettings"),
         type = "structure",
         name = "StreamingExperienceSettings",
         target_id = id.from(_N, "StreamingExperienceSettings"),
         target = M.StreamingExperienceSettings,
      }),
      ContentRedirection = schema.new({
         id = id.from(_N, "Stack", "ContentRedirection"),
         type = "structure",
         name = "ContentRedirection",
         target_id = id.from(_N, "ContentRedirection"),
         target = M.ContentRedirection,
      }),
      AgentAccessConfig = schema.new({
         id = id.from(_N, "Stack", "AgentAccessConfig"),
         type = "structure",
         name = "AgentAccessConfig",
         target_id = id.from(_N, "AgentAccessConfig"),
         target = M.AgentAccessConfig,
      }),
   },
})

M.CreateStackOutput = schema.new({
   id = id.from(_N, "CreateStackResult"),
   type = "structure",
   members = {
      Stack = schema.new({
         id = id.from(_N, "CreateStackOutput", "Stack"),
         type = "structure",
         name = "Stack",
         target_id = id.from(_N, "Stack"),
         target = M.Stack,
      }),
   },
})

M.CreateStreamingURLInput = schema.new({
   id = id.from(_N, "CreateStreamingURLRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "CreateStreamingURLInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FleetName = schema.new({
         id = id.from(_N, "CreateStreamingURLInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "CreateStreamingURLInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationId = schema.new({
         id = id.from(_N, "CreateStreamingURLInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
      }),
      Validity = schema.new({
         id = id.from(_N, "CreateStreamingURLInput", "Validity"),
         type = "long",
         name = "Validity",
         target_id = prelude.Long.id,
      }),
      SessionContext = schema.new({
         id = id.from(_N, "CreateStreamingURLInput", "SessionContext"),
         type = "string",
         name = "SessionContext",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateStreamingURLOutput = schema.new({
   id = id.from(_N, "CreateStreamingURLResult"),
   type = "structure",
   members = {
      StreamingURL = schema.new({
         id = id.from(_N, "CreateStreamingURLOutput", "StreamingURL"),
         type = "string",
         name = "StreamingURL",
         target_id = prelude.String.id,
      }),
      Expires = schema.new({
         id = id.from(_N, "CreateStreamingURLOutput", "Expires"),
         type = "timestamp",
         name = "Expires",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.ThemeFooterLink = schema.new({
   id = id.from(_N, "ThemeFooterLink"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "ThemeFooterLink", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      FooterLinkURL = schema.new({
         id = id.from(_N, "ThemeFooterLink", "FooterLinkURL"),
         type = "string",
         name = "FooterLinkURL",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateThemeForStackInput = schema.new({
   id = id.from(_N, "CreateThemeForStackRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "CreateThemeForStackInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FooterLinks = schema.new({
         id = id.from(_N, "CreateThemeForStackInput", "FooterLinks"),
         type = "list",
         name = "FooterLinks",
         target_id = prelude.Document.id,
         list_member = M.ThemeFooterLink,
      }),
      TitleText = schema.new({
         id = id.from(_N, "CreateThemeForStackInput", "TitleText"),
         type = "string",
         name = "TitleText",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ThemeStyling = schema.new({
         id = id.from(_N, "CreateThemeForStackInput", "ThemeStyling"),
         type = "string",
         name = "ThemeStyling",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OrganizationLogoS3Location = schema.new({
         id = id.from(_N, "CreateThemeForStackInput", "OrganizationLogoS3Location"),
         type = "structure",
         name = "OrganizationLogoS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FaviconS3Location = schema.new({
         id = id.from(_N, "CreateThemeForStackInput", "FaviconS3Location"),
         type = "structure",
         name = "FaviconS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.Theme = schema.new({
   id = id.from(_N, "Theme"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "Theme", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
      }),
      State = schema.new({
         id = id.from(_N, "Theme", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      ThemeTitleText = schema.new({
         id = id.from(_N, "Theme", "ThemeTitleText"),
         type = "string",
         name = "ThemeTitleText",
         target_id = prelude.String.id,
      }),
      ThemeStyling = schema.new({
         id = id.from(_N, "Theme", "ThemeStyling"),
         type = "string",
         name = "ThemeStyling",
         target_id = prelude.String.id,
      }),
      ThemeFooterLinks = schema.new({
         id = id.from(_N, "Theme", "ThemeFooterLinks"),
         type = "list",
         name = "ThemeFooterLinks",
         target_id = prelude.Document.id,
         list_member = M.ThemeFooterLink,
      }),
      ThemeOrganizationLogoURL = schema.new({
         id = id.from(_N, "Theme", "ThemeOrganizationLogoURL"),
         type = "string",
         name = "ThemeOrganizationLogoURL",
         target_id = prelude.String.id,
      }),
      ThemeFaviconURL = schema.new({
         id = id.from(_N, "Theme", "ThemeFaviconURL"),
         type = "string",
         name = "ThemeFaviconURL",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "Theme", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.CreateThemeForStackOutput = schema.new({
   id = id.from(_N, "CreateThemeForStackResult"),
   type = "structure",
   members = {
      Theme = schema.new({
         id = id.from(_N, "CreateThemeForStackOutput", "Theme"),
         type = "structure",
         name = "Theme",
         target_id = id.from(_N, "Theme"),
         target = M.Theme,
      }),
   },
})

M.CreateUpdatedImageInput = schema.new({
   id = id.from(_N, "CreateUpdatedImageRequest"),
   type = "structure",
   members = {
      existingImageName = schema.new({
         id = id.from(_N, "CreateUpdatedImageInput", "existingImageName"),
         type = "string",
         name = "existingImageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      newImageName = schema.new({
         id = id.from(_N, "CreateUpdatedImageInput", "newImageName"),
         type = "string",
         name = "newImageName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      newImageDescription = schema.new({
         id = id.from(_N, "CreateUpdatedImageInput", "newImageDescription"),
         type = "string",
         name = "newImageDescription",
         target_id = prelude.String.id,
      }),
      newImageDisplayName = schema.new({
         id = id.from(_N, "CreateUpdatedImageInput", "newImageDisplayName"),
         type = "string",
         name = "newImageDisplayName",
         target_id = prelude.String.id,
      }),
      newImageTags = schema.new({
         id = id.from(_N, "CreateUpdatedImageInput", "newImageTags"),
         type = "map",
         name = "newImageTags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      dryRun = schema.new({
         id = id.from(_N, "CreateUpdatedImageInput", "dryRun"),
         type = "boolean",
         name = "dryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateUpdatedImageOutput = schema.new({
   id = id.from(_N, "CreateUpdatedImageResult"),
   type = "structure",
   members = {
      image = schema.new({
         id = id.from(_N, "CreateUpdatedImageOutput", "image"),
         type = "structure",
         name = "image",
         target_id = id.from(_N, "Image"),
         target = M.Image,
      }),
      canUpdateImage = schema.new({
         id = id.from(_N, "CreateUpdatedImageOutput", "canUpdateImage"),
         type = "boolean",
         name = "canUpdateImage",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateUsageReportSubscriptionInput = schema.new({
   id = id.from(_N, "CreateUsageReportSubscriptionRequest"),
   type = "structure",
})

M.CreateUsageReportSubscriptionOutput = schema.new({
   id = id.from(_N, "CreateUsageReportSubscriptionResult"),
   type = "structure",
   members = {
      S3BucketName = schema.new({
         id = id.from(_N, "CreateUsageReportSubscriptionOutput", "S3BucketName"),
         type = "string",
         name = "S3BucketName",
         target_id = prelude.String.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "CreateUsageReportSubscriptionOutput", "Schedule"),
         type = "string",
         name = "Schedule",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateUserInput = schema.new({
   id = id.from(_N, "CreateUserRequest"),
   type = "structure",
   members = {
      UserName = schema.new({
         id = id.from(_N, "CreateUserInput", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MessageAction = schema.new({
         id = id.from(_N, "CreateUserInput", "MessageAction"),
         type = "string",
         name = "MessageAction",
         target_id = prelude.String.id,
      }),
      FirstName = schema.new({
         id = id.from(_N, "CreateUserInput", "FirstName"),
         type = "string",
         name = "FirstName",
         target_id = prelude.String.id,
      }),
      LastName = schema.new({
         id = id.from(_N, "CreateUserInput", "LastName"),
         type = "string",
         name = "LastName",
         target_id = prelude.String.id,
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "CreateUserInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateUserOutput = schema.new({
   id = id.from(_N, "CreateUserResult"),
   type = "structure",
})

M.DeleteAppBlockInput = schema.new({
   id = id.from(_N, "DeleteAppBlockRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteAppBlockInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAppBlockOutput = schema.new({
   id = id.from(_N, "DeleteAppBlockResult"),
   type = "structure",
})

M.ResourceInUseException = schema.new({
   id = id.from(_N, "ResourceInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      Message = schema.new({
         id = id.from(_N, "ResourceInUseException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAppBlockBuilderInput = schema.new({
   id = id.from(_N, "DeleteAppBlockBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteAppBlockBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAppBlockBuilderOutput = schema.new({
   id = id.from(_N, "DeleteAppBlockBuilderResult"),
   type = "structure",
})

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = schema.new({
   id = id.from(_N, "DeleteApplicationResult"),
   type = "structure",
})

M.DeleteDirectoryConfigInput = schema.new({
   id = id.from(_N, "DeleteDirectoryConfigRequest"),
   type = "structure",
   members = {
      DirectoryName = schema.new({
         id = id.from(_N, "DeleteDirectoryConfigInput", "DirectoryName"),
         type = "string",
         name = "DirectoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteDirectoryConfigOutput = schema.new({
   id = id.from(_N, "DeleteDirectoryConfigResult"),
   type = "structure",
})

M.DeleteEntitlementInput = schema.new({
   id = id.from(_N, "DeleteEntitlementRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteEntitlementInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "DeleteEntitlementInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteEntitlementOutput = schema.new({
   id = id.from(_N, "DeleteEntitlementResult"),
   type = "structure",
})

M.DeleteFleetInput = schema.new({
   id = id.from(_N, "DeleteFleetRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteFleetInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteFleetOutput = schema.new({
   id = id.from(_N, "DeleteFleetResult"),
   type = "structure",
})

M.DeleteImageInput = schema.new({
   id = id.from(_N, "DeleteImageRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteImageInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteImageOutput = schema.new({
   id = id.from(_N, "DeleteImageResult"),
   type = "structure",
   members = {
      Image = schema.new({
         id = id.from(_N, "DeleteImageOutput", "Image"),
         type = "structure",
         name = "Image",
         target_id = id.from(_N, "Image"),
         target = M.Image,
      }),
   },
})

M.DeleteImageBuilderInput = schema.new({
   id = id.from(_N, "DeleteImageBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteImageBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteImageBuilderOutput = schema.new({
   id = id.from(_N, "DeleteImageBuilderResult"),
   type = "structure",
   members = {
      ImageBuilder = schema.new({
         id = id.from(_N, "DeleteImageBuilderOutput", "ImageBuilder"),
         type = "structure",
         name = "ImageBuilder",
         target_id = id.from(_N, "ImageBuilder"),
         target = M.ImageBuilder,
      }),
   },
})

M.DeleteImagePermissionsInput = schema.new({
   id = id.from(_N, "DeleteImagePermissionsRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteImagePermissionsInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SharedAccountId = schema.new({
         id = id.from(_N, "DeleteImagePermissionsInput", "SharedAccountId"),
         type = "string",
         name = "SharedAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteImagePermissionsOutput = schema.new({
   id = id.from(_N, "DeleteImagePermissionsResult"),
   type = "structure",
})

M.DeleteStackInput = schema.new({
   id = id.from(_N, "DeleteStackRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DeleteStackInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteStackOutput = schema.new({
   id = id.from(_N, "DeleteStackResult"),
   type = "structure",
})

M.DeleteThemeForStackInput = schema.new({
   id = id.from(_N, "DeleteThemeForStackRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "DeleteThemeForStackInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteThemeForStackOutput = schema.new({
   id = id.from(_N, "DeleteThemeForStackResult"),
   type = "structure",
})

M.DeleteUsageReportSubscriptionInput = schema.new({
   id = id.from(_N, "DeleteUsageReportSubscriptionRequest"),
   type = "structure",
})

M.DeleteUsageReportSubscriptionOutput = schema.new({
   id = id.from(_N, "DeleteUsageReportSubscriptionResult"),
   type = "structure",
})

M.DeleteUserInput = schema.new({
   id = id.from(_N, "DeleteUserRequest"),
   type = "structure",
   members = {
      UserName = schema.new({
         id = id.from(_N, "DeleteUserInput", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "DeleteUserInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteUserOutput = schema.new({
   id = id.from(_N, "DeleteUserResult"),
   type = "structure",
})

M.DescribeAppBlockBuilderAppBlockAssociationsInput = schema.new({
   id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsRequest"),
   type = "structure",
   members = {
      AppBlockArn = schema.new({
         id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsInput", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
      }),
      AppBlockBuilderName = schema.new({
         id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsInput", "AppBlockBuilderName"),
         type = "string",
         name = "AppBlockBuilderName",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAppBlockBuilderAppBlockAssociationsOutput = schema.new({
   id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsResult"),
   type = "structure",
   members = {
      AppBlockBuilderAppBlockAssociations = schema.new({
         id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsOutput", "AppBlockBuilderAppBlockAssociations"),
         type = "list",
         name = "AppBlockBuilderAppBlockAssociations",
         target_id = prelude.Document.id,
         list_member = M.AppBlockBuilderAppBlockAssociation,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppBlockBuilderAppBlockAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAppBlockBuildersInput = schema.new({
   id = id.from(_N, "DescribeAppBlockBuildersRequest"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "DescribeAppBlockBuildersInput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppBlockBuildersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeAppBlockBuildersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeAppBlockBuildersOutput = schema.new({
   id = id.from(_N, "DescribeAppBlockBuildersResult"),
   type = "structure",
   members = {
      AppBlockBuilders = schema.new({
         id = id.from(_N, "DescribeAppBlockBuildersOutput", "AppBlockBuilders"),
         type = "list",
         name = "AppBlockBuilders",
         target_id = prelude.Document.id,
         list_member = M.AppBlockBuilder,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppBlockBuildersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAppBlocksInput = schema.new({
   id = id.from(_N, "DescribeAppBlocksRequest"),
   type = "structure",
   members = {
      Arns = schema.new({
         id = id.from(_N, "DescribeAppBlocksInput", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppBlocksInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeAppBlocksInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeAppBlocksOutput = schema.new({
   id = id.from(_N, "DescribeAppBlocksResult"),
   type = "structure",
   members = {
      AppBlocks = schema.new({
         id = id.from(_N, "DescribeAppBlocksOutput", "AppBlocks"),
         type = "list",
         name = "AppBlocks",
         target_id = prelude.Document.id,
         list_member = M.AppBlock,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppBlocksOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeApplicationFleetAssociationsInput = schema.new({
   id = id.from(_N, "DescribeApplicationFleetAssociationsRequest"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "DescribeApplicationFleetAssociationsInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "DescribeApplicationFleetAssociationsInput", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeApplicationFleetAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeApplicationFleetAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeApplicationFleetAssociationsOutput = schema.new({
   id = id.from(_N, "DescribeApplicationFleetAssociationsResult"),
   type = "structure",
   members = {
      ApplicationFleetAssociations = schema.new({
         id = id.from(_N, "DescribeApplicationFleetAssociationsOutput", "ApplicationFleetAssociations"),
         type = "list",
         name = "ApplicationFleetAssociations",
         target_id = prelude.Document.id,
         list_member = M.ApplicationFleetAssociation,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeApplicationFleetAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeApplicationsInput = schema.new({
   id = id.from(_N, "DescribeApplicationsRequest"),
   type = "structure",
   members = {
      Arns = schema.new({
         id = id.from(_N, "DescribeApplicationsInput", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeApplicationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeApplicationsOutput = schema.new({
   id = id.from(_N, "DescribeApplicationsResult"),
   type = "structure",
   members = {
      Applications = schema.new({
         id = id.from(_N, "DescribeApplicationsOutput", "Applications"),
         type = "list",
         name = "Applications",
         target_id = prelude.Document.id,
         list_member = M.Application,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeApplicationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAppLicenseUsageInput = schema.new({
   id = id.from(_N, "DescribeAppLicenseUsageRequest"),
   type = "structure",
   members = {
      BillingPeriod = schema.new({
         id = id.from(_N, "DescribeAppLicenseUsageInput", "BillingPeriod"),
         type = "string",
         name = "BillingPeriod",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeAppLicenseUsageInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppLicenseUsageInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeAppLicenseUsageOutput = schema.new({
   id = id.from(_N, "DescribeAppLicenseUsageResult"),
   type = "structure",
   members = {
      AppLicenseUsages = schema.new({
         id = id.from(_N, "DescribeAppLicenseUsageOutput", "AppLicenseUsages"),
         type = "list",
         name = "AppLicenseUsages",
         target_id = prelude.Document.id,
         list_member = M.AdminAppLicenseUsageRecord,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeAppLicenseUsageOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDirectoryConfigsInput = schema.new({
   id = id.from(_N, "DescribeDirectoryConfigsRequest"),
   type = "structure",
   members = {
      DirectoryNames = schema.new({
         id = id.from(_N, "DescribeDirectoryConfigsInput", "DirectoryNames"),
         type = "list",
         name = "DirectoryNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeDirectoryConfigsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeDirectoryConfigsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeDirectoryConfigsOutput = schema.new({
   id = id.from(_N, "DescribeDirectoryConfigsResult"),
   type = "structure",
   members = {
      DirectoryConfigs = schema.new({
         id = id.from(_N, "DescribeDirectoryConfigsOutput", "DirectoryConfigs"),
         type = "list",
         name = "DirectoryConfigs",
         target_id = prelude.Document.id,
         list_member = M.DirectoryConfig,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeDirectoryConfigsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeEntitlementsInput = schema.new({
   id = id.from(_N, "DescribeEntitlementsRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribeEntitlementsInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      StackName = schema.new({
         id = id.from(_N, "DescribeEntitlementsInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeEntitlementsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeEntitlementsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeEntitlementsOutput = schema.new({
   id = id.from(_N, "DescribeEntitlementsResult"),
   type = "structure",
   members = {
      Entitlements = schema.new({
         id = id.from(_N, "DescribeEntitlementsOutput", "Entitlements"),
         type = "list",
         name = "Entitlements",
         target_id = prelude.Document.id,
         list_member = M.Entitlement,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeEntitlementsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeFleetsInput = schema.new({
   id = id.from(_N, "DescribeFleetsRequest"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "DescribeFleetsInput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeFleetsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeFleetsOutput = schema.new({
   id = id.from(_N, "DescribeFleetsResult"),
   type = "structure",
   members = {
      Fleets = schema.new({
         id = id.from(_N, "DescribeFleetsOutput", "Fleets"),
         type = "list",
         name = "Fleets",
         target_id = prelude.Document.id,
         list_member = M.Fleet,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeFleetsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImageBuildersInput = schema.new({
   id = id.from(_N, "DescribeImageBuildersRequest"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "DescribeImageBuildersInput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeImageBuildersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeImageBuildersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImageBuildersOutput = schema.new({
   id = id.from(_N, "DescribeImageBuildersResult"),
   type = "structure",
   members = {
      ImageBuilders = schema.new({
         id = id.from(_N, "DescribeImageBuildersOutput", "ImageBuilders"),
         type = "list",
         name = "ImageBuilders",
         target_id = prelude.Document.id,
         list_member = M.ImageBuilder,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeImageBuildersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImagePermissionsInput = schema.new({
   id = id.from(_N, "DescribeImagePermissionsRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribeImagePermissionsInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeImagePermissionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      SharedAwsAccountIds = schema.new({
         id = id.from(_N, "DescribeImagePermissionsInput", "SharedAwsAccountIds"),
         type = "list",
         name = "SharedAwsAccountIds",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeImagePermissionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SharedImagePermissions = schema.new({
   id = id.from(_N, "SharedImagePermissions"),
   type = "structure",
   members = {
      sharedAccountId = schema.new({
         id = id.from(_N, "SharedImagePermissions", "sharedAccountId"),
         type = "string",
         name = "sharedAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      imagePermissions = schema.new({
         id = id.from(_N, "SharedImagePermissions", "imagePermissions"),
         type = "structure",
         name = "imagePermissions",
         target_id = id.from(_N, "ImagePermissions"),
         target = M.ImagePermissions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeImagePermissionsOutput = schema.new({
   id = id.from(_N, "DescribeImagePermissionsResult"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "DescribeImagePermissionsOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      SharedImagePermissionsList = schema.new({
         id = id.from(_N, "DescribeImagePermissionsOutput", "SharedImagePermissionsList"),
         type = "list",
         name = "SharedImagePermissionsList",
         target_id = prelude.Document.id,
         list_member = M.SharedImagePermissions,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeImagePermissionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeImagesInput = schema.new({
   id = id.from(_N, "DescribeImagesRequest"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "DescribeImagesInput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Arns = schema.new({
         id = id.from(_N, "DescribeImagesInput", "Arns"),
         type = "list",
         name = "Arns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Type = schema.new({
         id = id.from(_N, "DescribeImagesInput", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeImagesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeImagesInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.DescribeImagesOutput = schema.new({
   id = id.from(_N, "DescribeImagesResult"),
   type = "structure",
   members = {
      Images = schema.new({
         id = id.from(_N, "DescribeImagesOutput", "Images"),
         type = "list",
         name = "Images",
         target_id = prelude.Document.id,
         list_member = M.Image,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeImagesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeSessionsInput = schema.new({
   id = id.from(_N, "DescribeSessionsRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FleetName = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      Limit = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
      }),
      InstanceId = schema.new({
         id = id.from(_N, "DescribeSessionsInput", "InstanceId"),
         type = "string",
         name = "InstanceId",
         target_id = prelude.String.id,
      }),
   },
})

M.Session = schema.new({
   id = id.from(_N, "Session"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "Session", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      UserId = schema.new({
         id = id.from(_N, "Session", "UserId"),
         type = "string",
         name = "UserId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "Session", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FleetName = schema.new({
         id = id.from(_N, "Session", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      State = schema.new({
         id = id.from(_N, "Session", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ConnectionState = schema.new({
         id = id.from(_N, "Session", "ConnectionState"),
         type = "string",
         name = "ConnectionState",
         target_id = prelude.String.id,
      }),
      StartTime = schema.new({
         id = id.from(_N, "Session", "StartTime"),
         type = "timestamp",
         name = "StartTime",
         target_id = prelude.Timestamp.id,
      }),
      MaxExpirationTime = schema.new({
         id = id.from(_N, "Session", "MaxExpirationTime"),
         type = "timestamp",
         name = "MaxExpirationTime",
         target_id = prelude.Timestamp.id,
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "Session", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
      }),
      NetworkAccessConfiguration = schema.new({
         id = id.from(_N, "Session", "NetworkAccessConfiguration"),
         type = "structure",
         name = "NetworkAccessConfiguration",
         target_id = id.from(_N, "NetworkAccessConfiguration"),
         target = M.NetworkAccessConfiguration,
      }),
      InstanceId = schema.new({
         id = id.from(_N, "Session", "InstanceId"),
         type = "string",
         name = "InstanceId",
         target_id = prelude.String.id,
      }),
      InstanceDrainStatus = schema.new({
         id = id.from(_N, "Session", "InstanceDrainStatus"),
         type = "string",
         name = "InstanceDrainStatus",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeSessionsOutput = schema.new({
   id = id.from(_N, "DescribeSessionsResult"),
   type = "structure",
   members = {
      Sessions = schema.new({
         id = id.from(_N, "DescribeSessionsOutput", "Sessions"),
         type = "list",
         name = "Sessions",
         target_id = prelude.Document.id,
         list_member = M.Session,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeSessionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeSoftwareAssociationsInput = schema.new({
   id = id.from(_N, "DescribeSoftwareAssociationsRequest"),
   type = "structure",
   members = {
      AssociatedResource = schema.new({
         id = id.from(_N, "DescribeSoftwareAssociationsInput", "AssociatedResource"),
         type = "string",
         name = "AssociatedResource",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeSoftwareAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeSoftwareAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.SoftwareAssociations = schema.new({
   id = id.from(_N, "SoftwareAssociations"),
   type = "structure",
   members = {
      SoftwareName = schema.new({
         id = id.from(_N, "SoftwareAssociations", "SoftwareName"),
         type = "string",
         name = "SoftwareName",
         target_id = prelude.String.id,
      }),
      Status = schema.new({
         id = id.from(_N, "SoftwareAssociations", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      DeploymentError = schema.new({
         id = id.from(_N, "SoftwareAssociations", "DeploymentError"),
         type = "list",
         name = "DeploymentError",
         target_id = prelude.Document.id,
         list_member = M.ErrorDetails,
      }),
   },
})

M.DescribeSoftwareAssociationsOutput = schema.new({
   id = id.from(_N, "DescribeSoftwareAssociationsResult"),
   type = "structure",
   members = {
      AssociatedResource = schema.new({
         id = id.from(_N, "DescribeSoftwareAssociationsOutput", "AssociatedResource"),
         type = "string",
         name = "AssociatedResource",
         target_id = prelude.String.id,
      }),
      SoftwareAssociations = schema.new({
         id = id.from(_N, "DescribeSoftwareAssociationsOutput", "SoftwareAssociations"),
         type = "list",
         name = "SoftwareAssociations",
         target_id = prelude.Document.id,
         list_member = M.SoftwareAssociations,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeSoftwareAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeStacksInput = schema.new({
   id = id.from(_N, "DescribeStacksRequest"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "DescribeStacksInput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeStacksInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeStacksOutput = schema.new({
   id = id.from(_N, "DescribeStacksResult"),
   type = "structure",
   members = {
      Stacks = schema.new({
         id = id.from(_N, "DescribeStacksOutput", "Stacks"),
         type = "list",
         name = "Stacks",
         target_id = prelude.Document.id,
         list_member = M.Stack,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeStacksOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeThemeForStackInput = schema.new({
   id = id.from(_N, "DescribeThemeForStackRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "DescribeThemeForStackInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeThemeForStackOutput = schema.new({
   id = id.from(_N, "DescribeThemeForStackResult"),
   type = "structure",
   members = {
      Theme = schema.new({
         id = id.from(_N, "DescribeThemeForStackOutput", "Theme"),
         type = "structure",
         name = "Theme",
         target_id = id.from(_N, "Theme"),
         target = M.Theme,
      }),
   },
})

M.DescribeUsageReportSubscriptionsInput = schema.new({
   id = id.from(_N, "DescribeUsageReportSubscriptionsRequest"),
   type = "structure",
   members = {
      MaxResults = schema.new({
         id = id.from(_N, "DescribeUsageReportSubscriptionsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeUsageReportSubscriptionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.LastReportGenerationExecutionError = schema.new({
   id = id.from(_N, "LastReportGenerationExecutionError"),
   type = "structure",
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "LastReportGenerationExecutionError", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
      }),
      ErrorMessage = schema.new({
         id = id.from(_N, "LastReportGenerationExecutionError", "ErrorMessage"),
         type = "string",
         name = "ErrorMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.UsageReportSubscription = schema.new({
   id = id.from(_N, "UsageReportSubscription"),
   type = "structure",
   members = {
      S3BucketName = schema.new({
         id = id.from(_N, "UsageReportSubscription", "S3BucketName"),
         type = "string",
         name = "S3BucketName",
         target_id = prelude.String.id,
      }),
      Schedule = schema.new({
         id = id.from(_N, "UsageReportSubscription", "Schedule"),
         type = "string",
         name = "Schedule",
         target_id = prelude.String.id,
      }),
      LastGeneratedReportDate = schema.new({
         id = id.from(_N, "UsageReportSubscription", "LastGeneratedReportDate"),
         type = "timestamp",
         name = "LastGeneratedReportDate",
         target_id = prelude.Timestamp.id,
      }),
      SubscriptionErrors = schema.new({
         id = id.from(_N, "UsageReportSubscription", "SubscriptionErrors"),
         type = "list",
         name = "SubscriptionErrors",
         target_id = prelude.Document.id,
         list_member = M.LastReportGenerationExecutionError,
      }),
   },
})

M.DescribeUsageReportSubscriptionsOutput = schema.new({
   id = id.from(_N, "DescribeUsageReportSubscriptionsResult"),
   type = "structure",
   members = {
      UsageReportSubscriptions = schema.new({
         id = id.from(_N, "DescribeUsageReportSubscriptionsOutput", "UsageReportSubscriptions"),
         type = "list",
         name = "UsageReportSubscriptions",
         target_id = prelude.Document.id,
         list_member = M.UsageReportSubscription,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeUsageReportSubscriptionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeUsersInput = schema.new({
   id = id.from(_N, "DescribeUsersRequest"),
   type = "structure",
   members = {
      AuthenticationType = schema.new({
         id = id.from(_N, "DescribeUsersInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeUsersInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeUsersInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.User = schema.new({
   id = id.from(_N, "User"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "User", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      UserName = schema.new({
         id = id.from(_N, "User", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "User", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
      }),
      Status = schema.new({
         id = id.from(_N, "User", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
      }),
      FirstName = schema.new({
         id = id.from(_N, "User", "FirstName"),
         type = "string",
         name = "FirstName",
         target_id = prelude.String.id,
      }),
      LastName = schema.new({
         id = id.from(_N, "User", "LastName"),
         type = "string",
         name = "LastName",
         target_id = prelude.String.id,
      }),
      CreatedTime = schema.new({
         id = id.from(_N, "User", "CreatedTime"),
         type = "timestamp",
         name = "CreatedTime",
         target_id = prelude.Timestamp.id,
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "User", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DescribeUsersOutput = schema.new({
   id = id.from(_N, "DescribeUsersResult"),
   type = "structure",
   members = {
      Users = schema.new({
         id = id.from(_N, "DescribeUsersOutput", "Users"),
         type = "list",
         name = "Users",
         target_id = prelude.Document.id,
         list_member = M.User,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeUsersOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeUserStackAssociationsInput = schema.new({
   id = id.from(_N, "DescribeUserStackAssociationsRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
      }),
      UserName = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsInput", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeUserStackAssociationsOutput = schema.new({
   id = id.from(_N, "DescribeUserStackAssociationsResult"),
   type = "structure",
   members = {
      UserStackAssociations = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsOutput", "UserStackAssociations"),
         type = "list",
         name = "UserStackAssociations",
         target_id = prelude.Document.id,
         list_member = M.UserStackAssociation,
      }),
      NextToken = schema.new({
         id = id.from(_N, "DescribeUserStackAssociationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.DisableUserInput = schema.new({
   id = id.from(_N, "DisableUserRequest"),
   type = "structure",
   members = {
      UserName = schema.new({
         id = id.from(_N, "DisableUserInput", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "DisableUserInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableUserOutput = schema.new({
   id = id.from(_N, "DisableUserResult"),
   type = "structure",
})

M.DisassociateAppBlockBuilderAppBlockInput = schema.new({
   id = id.from(_N, "DisassociateAppBlockBuilderAppBlockRequest"),
   type = "structure",
   members = {
      AppBlockArn = schema.new({
         id = id.from(_N, "DisassociateAppBlockBuilderAppBlockInput", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AppBlockBuilderName = schema.new({
         id = id.from(_N, "DisassociateAppBlockBuilderAppBlockInput", "AppBlockBuilderName"),
         type = "string",
         name = "AppBlockBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateAppBlockBuilderAppBlockOutput = schema.new({
   id = id.from(_N, "DisassociateAppBlockBuilderAppBlockResult"),
   type = "structure",
})

M.DisassociateApplicationFleetInput = schema.new({
   id = id.from(_N, "DisassociateApplicationFleetRequest"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "DisassociateApplicationFleetInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationArn = schema.new({
         id = id.from(_N, "DisassociateApplicationFleetInput", "ApplicationArn"),
         type = "string",
         name = "ApplicationArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateApplicationFleetOutput = schema.new({
   id = id.from(_N, "DisassociateApplicationFleetResult"),
   type = "structure",
})

M.DisassociateApplicationFromEntitlementInput = schema.new({
   id = id.from(_N, "DisassociateApplicationFromEntitlementRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "DisassociateApplicationFromEntitlementInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EntitlementName = schema.new({
         id = id.from(_N, "DisassociateApplicationFromEntitlementInput", "EntitlementName"),
         type = "string",
         name = "EntitlementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "DisassociateApplicationFromEntitlementInput", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateApplicationFromEntitlementOutput = schema.new({
   id = id.from(_N, "DisassociateApplicationFromEntitlementResult"),
   type = "structure",
})

M.DisassociateFleetInput = schema.new({
   id = id.from(_N, "DisassociateFleetRequest"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "DisassociateFleetInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "DisassociateFleetInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateFleetOutput = schema.new({
   id = id.from(_N, "DisassociateFleetResult"),
   type = "structure",
})

M.DisassociateSoftwareFromImageBuilderInput = schema.new({
   id = id.from(_N, "DisassociateSoftwareFromImageBuilderRequest"),
   type = "structure",
   members = {
      ImageBuilderName = schema.new({
         id = id.from(_N, "DisassociateSoftwareFromImageBuilderInput", "ImageBuilderName"),
         type = "string",
         name = "ImageBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SoftwareNames = schema.new({
         id = id.from(_N, "DisassociateSoftwareFromImageBuilderInput", "SoftwareNames"),
         type = "list",
         name = "SoftwareNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisassociateSoftwareFromImageBuilderOutput = schema.new({
   id = id.from(_N, "DisassociateSoftwareFromImageBuilderResult"),
   type = "structure",
})

M.DrainSessionInstanceInput = schema.new({
   id = id.from(_N, "DrainSessionInstanceRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "DrainSessionInstanceInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DrainSessionInstanceOutput = schema.new({
   id = id.from(_N, "DrainSessionInstanceResult"),
   type = "structure",
})

M.EnableUserInput = schema.new({
   id = id.from(_N, "EnableUserRequest"),
   type = "structure",
   members = {
      UserName = schema.new({
         id = id.from(_N, "EnableUserInput", "UserName"),
         type = "string",
         name = "UserName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AuthenticationType = schema.new({
         id = id.from(_N, "EnableUserInput", "AuthenticationType"),
         type = "string",
         name = "AuthenticationType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnableUserOutput = schema.new({
   id = id.from(_N, "EnableUserResult"),
   type = "structure",
})

M.EntitledApplication = schema.new({
   id = id.from(_N, "EntitledApplication"),
   type = "structure",
   members = {
      ApplicationIdentifier = schema.new({
         id = id.from(_N, "EntitledApplication", "ApplicationIdentifier"),
         type = "string",
         name = "ApplicationIdentifier",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExpireSessionInput = schema.new({
   id = id.from(_N, "ExpireSessionRequest"),
   type = "structure",
   members = {
      SessionId = schema.new({
         id = id.from(_N, "ExpireSessionInput", "SessionId"),
         type = "string",
         name = "SessionId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ExpireSessionOutput = schema.new({
   id = id.from(_N, "ExpireSessionResult"),
   type = "structure",
})

M.Filter = schema.new({
   id = id.from(_N, "Filter"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "Filter", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Values = schema.new({
         id = id.from(_N, "Filter", "Values"),
         type = "list",
         name = "Values",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetExportImageTaskInput = schema.new({
   id = id.from(_N, "GetExportImageTaskRequest"),
   type = "structure",
   members = {
      TaskId = schema.new({
         id = id.from(_N, "GetExportImageTaskInput", "TaskId"),
         type = "string",
         name = "TaskId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetExportImageTaskOutput = schema.new({
   id = id.from(_N, "GetExportImageTaskResult"),
   type = "structure",
   members = {
      ExportImageTask = schema.new({
         id = id.from(_N, "GetExportImageTaskOutput", "ExportImageTask"),
         type = "structure",
         name = "ExportImageTask",
         target_id = id.from(_N, "ExportImageTask"),
         target = M.ExportImageTask,
      }),
   },
})

M.ListAssociatedFleetsInput = schema.new({
   id = id.from(_N, "ListAssociatedFleetsRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "ListAssociatedFleetsInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAssociatedFleetsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAssociatedFleetsOutput = schema.new({
   id = id.from(_N, "ListAssociatedFleetsResult"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "ListAssociatedFleetsOutput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAssociatedFleetsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAssociatedStacksInput = schema.new({
   id = id.from(_N, "ListAssociatedStacksRequest"),
   type = "structure",
   members = {
      FleetName = schema.new({
         id = id.from(_N, "ListAssociatedStacksInput", "FleetName"),
         type = "string",
         name = "FleetName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAssociatedStacksInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAssociatedStacksOutput = schema.new({
   id = id.from(_N, "ListAssociatedStacksResult"),
   type = "structure",
   members = {
      Names = schema.new({
         id = id.from(_N, "ListAssociatedStacksOutput", "Names"),
         type = "list",
         name = "Names",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListAssociatedStacksOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEntitledApplicationsInput = schema.new({
   id = id.from(_N, "ListEntitledApplicationsRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "ListEntitledApplicationsInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EntitlementName = schema.new({
         id = id.from(_N, "ListEntitledApplicationsInput", "EntitlementName"),
         type = "string",
         name = "EntitlementName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEntitledApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListEntitledApplicationsInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ListEntitledApplicationsOutput = schema.new({
   id = id.from(_N, "ListEntitledApplicationsResult"),
   type = "structure",
   members = {
      EntitledApplications = schema.new({
         id = id.from(_N, "ListEntitledApplicationsOutput", "EntitledApplications"),
         type = "list",
         name = "EntitledApplications",
         target_id = prelude.Document.id,
         list_member = M.EntitledApplication,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListEntitledApplicationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExportImageTasksInput = schema.new({
   id = id.from(_N, "ListExportImageTasksRequest"),
   type = "structure",
   members = {
      Filters = schema.new({
         id = id.from(_N, "ListExportImageTasksInput", "Filters"),
         type = "list",
         name = "Filters",
         target_id = prelude.Document.id,
         list_member = M.Filter,
      }),
      MaxResults = schema.new({
         id = id.from(_N, "ListExportImageTasksInput", "MaxResults"),
         type = "integer",
         name = "MaxResults",
         target_id = prelude.Integer.id,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListExportImageTasksInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListExportImageTasksOutput = schema.new({
   id = id.from(_N, "ListExportImageTasksResult"),
   type = "structure",
   members = {
      ExportImageTasks = schema.new({
         id = id.from(_N, "ListExportImageTasksOutput", "ExportImageTasks"),
         type = "list",
         name = "ExportImageTasks",
         target_id = prelude.Document.id,
         list_member = M.ExportImageTask,
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListExportImageTasksOutput", "NextToken"),
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

M.StartAppBlockBuilderInput = schema.new({
   id = id.from(_N, "StartAppBlockBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StartAppBlockBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartAppBlockBuilderOutput = schema.new({
   id = id.from(_N, "StartAppBlockBuilderResult"),
   type = "structure",
   members = {
      AppBlockBuilder = schema.new({
         id = id.from(_N, "StartAppBlockBuilderOutput", "AppBlockBuilder"),
         type = "structure",
         name = "AppBlockBuilder",
         target_id = id.from(_N, "AppBlockBuilder"),
         target = M.AppBlockBuilder,
      }),
   },
})

M.StartFleetInput = schema.new({
   id = id.from(_N, "StartFleetRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StartFleetInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StartFleetOutput = schema.new({
   id = id.from(_N, "StartFleetResult"),
   type = "structure",
})

M.StartImageBuilderInput = schema.new({
   id = id.from(_N, "StartImageBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StartImageBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      AppstreamAgentVersion = schema.new({
         id = id.from(_N, "StartImageBuilderInput", "AppstreamAgentVersion"),
         type = "string",
         name = "AppstreamAgentVersion",
         target_id = prelude.String.id,
      }),
   },
})

M.StartImageBuilderOutput = schema.new({
   id = id.from(_N, "StartImageBuilderResult"),
   type = "structure",
   members = {
      ImageBuilder = schema.new({
         id = id.from(_N, "StartImageBuilderOutput", "ImageBuilder"),
         type = "structure",
         name = "ImageBuilder",
         target_id = id.from(_N, "ImageBuilder"),
         target = M.ImageBuilder,
      }),
   },
})

M.StartSoftwareDeploymentToImageBuilderInput = schema.new({
   id = id.from(_N, "StartSoftwareDeploymentToImageBuilderRequest"),
   type = "structure",
   members = {
      ImageBuilderName = schema.new({
         id = id.from(_N, "StartSoftwareDeploymentToImageBuilderInput", "ImageBuilderName"),
         type = "string",
         name = "ImageBuilderName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RetryFailedDeployments = schema.new({
         id = id.from(_N, "StartSoftwareDeploymentToImageBuilderInput", "RetryFailedDeployments"),
         type = "boolean",
         name = "RetryFailedDeployments",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.StartSoftwareDeploymentToImageBuilderOutput = schema.new({
   id = id.from(_N, "StartSoftwareDeploymentToImageBuilderResult"),
   type = "structure",
})

M.StopAppBlockBuilderInput = schema.new({
   id = id.from(_N, "StopAppBlockBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StopAppBlockBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopAppBlockBuilderOutput = schema.new({
   id = id.from(_N, "StopAppBlockBuilderResult"),
   type = "structure",
   members = {
      AppBlockBuilder = schema.new({
         id = id.from(_N, "StopAppBlockBuilderOutput", "AppBlockBuilder"),
         type = "structure",
         name = "AppBlockBuilder",
         target_id = id.from(_N, "AppBlockBuilder"),
         target = M.AppBlockBuilder,
      }),
   },
})

M.StopFleetInput = schema.new({
   id = id.from(_N, "StopFleetRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StopFleetInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopFleetOutput = schema.new({
   id = id.from(_N, "StopFleetResult"),
   type = "structure",
})

M.StopImageBuilderInput = schema.new({
   id = id.from(_N, "StopImageBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "StopImageBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.StopImageBuilderOutput = schema.new({
   id = id.from(_N, "StopImageBuilderResult"),
   type = "structure",
   members = {
      ImageBuilder = schema.new({
         id = id.from(_N, "StopImageBuilderOutput", "ImageBuilder"),
         type = "structure",
         name = "ImageBuilder",
         target_id = id.from(_N, "ImageBuilder"),
         target = M.ImageBuilder,
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

M.UpdateAppBlockBuilderInput = schema.new({
   id = id.from(_N, "UpdateAppBlockBuilderRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      AttributesToDelete = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "AttributesToDelete"),
         type = "list",
         name = "AttributesToDelete",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderInput", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateAppBlockBuilderOutput = schema.new({
   id = id.from(_N, "UpdateAppBlockBuilderResult"),
   type = "structure",
   members = {
      AppBlockBuilder = schema.new({
         id = id.from(_N, "UpdateAppBlockBuilderOutput", "AppBlockBuilder"),
         type = "structure",
         name = "AppBlockBuilder",
         target_id = id.from(_N, "AppBlockBuilder"),
         target = M.AppBlockBuilder,
      }),
   },
})

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DisplayName = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      IconS3Location = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "IconS3Location"),
         type = "structure",
         name = "IconS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      LaunchPath = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "LaunchPath"),
         type = "string",
         name = "LaunchPath",
         target_id = prelude.String.id,
      }),
      WorkingDirectory = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "WorkingDirectory"),
         type = "string",
         name = "WorkingDirectory",
         target_id = prelude.String.id,
      }),
      LaunchParameters = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "LaunchParameters"),
         type = "string",
         name = "LaunchParameters",
         target_id = prelude.String.id,
      }),
      AppBlockArn = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "AppBlockArn"),
         type = "string",
         name = "AppBlockArn",
         target_id = prelude.String.id,
      }),
      AttributesToDelete = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "AttributesToDelete"),
         type = "list",
         name = "AttributesToDelete",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResult"),
   type = "structure",
   members = {
      Application = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Application"),
         type = "structure",
         name = "Application",
         target_id = id.from(_N, "Application"),
         target = M.Application,
      }),
   },
})

M.UpdateDirectoryConfigInput = schema.new({
   id = id.from(_N, "UpdateDirectoryConfigRequest"),
   type = "structure",
   members = {
      DirectoryName = schema.new({
         id = id.from(_N, "UpdateDirectoryConfigInput", "DirectoryName"),
         type = "string",
         name = "DirectoryName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      OrganizationalUnitDistinguishedNames = schema.new({
         id = id.from(_N, "UpdateDirectoryConfigInput", "OrganizationalUnitDistinguishedNames"),
         type = "list",
         name = "OrganizationalUnitDistinguishedNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      ServiceAccountCredentials = schema.new({
         id = id.from(_N, "UpdateDirectoryConfigInput", "ServiceAccountCredentials"),
         type = "structure",
         name = "ServiceAccountCredentials",
         target_id = id.from(_N, "ServiceAccountCredentials"),
         target = M.ServiceAccountCredentials,
      }),
      CertificateBasedAuthProperties = schema.new({
         id = id.from(_N, "UpdateDirectoryConfigInput", "CertificateBasedAuthProperties"),
         type = "structure",
         name = "CertificateBasedAuthProperties",
         target_id = id.from(_N, "CertificateBasedAuthProperties"),
         target = M.CertificateBasedAuthProperties,
      }),
   },
})

M.UpdateDirectoryConfigOutput = schema.new({
   id = id.from(_N, "UpdateDirectoryConfigResult"),
   type = "structure",
   members = {
      DirectoryConfig = schema.new({
         id = id.from(_N, "UpdateDirectoryConfigOutput", "DirectoryConfig"),
         type = "structure",
         name = "DirectoryConfig",
         target_id = id.from(_N, "DirectoryConfig"),
         target = M.DirectoryConfig,
      }),
   },
})

M.UpdateEntitlementInput = schema.new({
   id = id.from(_N, "UpdateEntitlementRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateEntitlementInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "UpdateEntitlementInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateEntitlementInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      AppVisibility = schema.new({
         id = id.from(_N, "UpdateEntitlementInput", "AppVisibility"),
         type = "string",
         name = "AppVisibility",
         target_id = prelude.String.id,
      }),
      Attributes = schema.new({
         id = id.from(_N, "UpdateEntitlementInput", "Attributes"),
         type = "list",
         name = "Attributes",
         target_id = prelude.Document.id,
         list_member = M.EntitlementAttribute,
      }),
   },
})

M.UpdateEntitlementOutput = schema.new({
   id = id.from(_N, "UpdateEntitlementResult"),
   type = "structure",
   members = {
      Entitlement = schema.new({
         id = id.from(_N, "UpdateEntitlementOutput", "Entitlement"),
         type = "structure",
         name = "Entitlement",
         target_id = id.from(_N, "Entitlement"),
         target = M.Entitlement,
      }),
   },
})

M.UpdateFleetInput = schema.new({
   id = id.from(_N, "UpdateFleetRequest"),
   type = "structure",
   members = {
      ImageName = schema.new({
         id = id.from(_N, "UpdateFleetInput", "ImageName"),
         type = "string",
         name = "ImageName",
         target_id = prelude.String.id,
      }),
      ImageArn = schema.new({
         id = id.from(_N, "UpdateFleetInput", "ImageArn"),
         type = "string",
         name = "ImageArn",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateFleetInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      InstanceType = schema.new({
         id = id.from(_N, "UpdateFleetInput", "InstanceType"),
         type = "string",
         name = "InstanceType",
         target_id = prelude.String.id,
      }),
      ComputeCapacity = schema.new({
         id = id.from(_N, "UpdateFleetInput", "ComputeCapacity"),
         type = "structure",
         name = "ComputeCapacity",
         target_id = id.from(_N, "ComputeCapacity"),
         target = M.ComputeCapacity,
      }),
      VpcConfig = schema.new({
         id = id.from(_N, "UpdateFleetInput", "VpcConfig"),
         type = "structure",
         name = "VpcConfig",
         target_id = id.from(_N, "VpcConfig"),
         target = M.VpcConfig,
      }),
      MaxUserDurationInSeconds = schema.new({
         id = id.from(_N, "UpdateFleetInput", "MaxUserDurationInSeconds"),
         type = "integer",
         name = "MaxUserDurationInSeconds",
         target_id = prelude.Integer.id,
      }),
      DisconnectTimeoutInSeconds = schema.new({
         id = id.from(_N, "UpdateFleetInput", "DisconnectTimeoutInSeconds"),
         type = "integer",
         name = "DisconnectTimeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
      DeleteVpcConfig = schema.new({
         id = id.from(_N, "UpdateFleetInput", "DeleteVpcConfig"),
         type = "boolean",
         name = "DeleteVpcConfig",
         target_id = prelude.Boolean.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateFleetInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      DisplayName = schema.new({
         id = id.from(_N, "UpdateFleetInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      EnableDefaultInternetAccess = schema.new({
         id = id.from(_N, "UpdateFleetInput", "EnableDefaultInternetAccess"),
         type = "boolean",
         name = "EnableDefaultInternetAccess",
         target_id = prelude.Boolean.id,
      }),
      DomainJoinInfo = schema.new({
         id = id.from(_N, "UpdateFleetInput", "DomainJoinInfo"),
         type = "structure",
         name = "DomainJoinInfo",
         target_id = id.from(_N, "DomainJoinInfo"),
         target = M.DomainJoinInfo,
      }),
      IdleDisconnectTimeoutInSeconds = schema.new({
         id = id.from(_N, "UpdateFleetInput", "IdleDisconnectTimeoutInSeconds"),
         type = "integer",
         name = "IdleDisconnectTimeoutInSeconds",
         target_id = prelude.Integer.id,
      }),
      AttributesToDelete = schema.new({
         id = id.from(_N, "UpdateFleetInput", "AttributesToDelete"),
         type = "list",
         name = "AttributesToDelete",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      IamRoleArn = schema.new({
         id = id.from(_N, "UpdateFleetInput", "IamRoleArn"),
         type = "string",
         name = "IamRoleArn",
         target_id = prelude.String.id,
      }),
      StreamView = schema.new({
         id = id.from(_N, "UpdateFleetInput", "StreamView"),
         type = "string",
         name = "StreamView",
         target_id = prelude.String.id,
      }),
      Platform = schema.new({
         id = id.from(_N, "UpdateFleetInput", "Platform"),
         type = "string",
         name = "Platform",
         target_id = prelude.String.id,
      }),
      MaxConcurrentSessions = schema.new({
         id = id.from(_N, "UpdateFleetInput", "MaxConcurrentSessions"),
         type = "integer",
         name = "MaxConcurrentSessions",
         target_id = prelude.Integer.id,
      }),
      UsbDeviceFilterStrings = schema.new({
         id = id.from(_N, "UpdateFleetInput", "UsbDeviceFilterStrings"),
         type = "list",
         name = "UsbDeviceFilterStrings",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SessionScriptS3Location = schema.new({
         id = id.from(_N, "UpdateFleetInput", "SessionScriptS3Location"),
         type = "structure",
         name = "SessionScriptS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      MaxSessionsPerInstance = schema.new({
         id = id.from(_N, "UpdateFleetInput", "MaxSessionsPerInstance"),
         type = "integer",
         name = "MaxSessionsPerInstance",
         target_id = prelude.Integer.id,
      }),
      RootVolumeConfig = schema.new({
         id = id.from(_N, "UpdateFleetInput", "RootVolumeConfig"),
         type = "structure",
         name = "RootVolumeConfig",
         target_id = id.from(_N, "VolumeConfig"),
         target = M.VolumeConfig,
      }),
      DisableIMDSV1 = schema.new({
         id = id.from(_N, "UpdateFleetInput", "DisableIMDSV1"),
         type = "boolean",
         name = "DisableIMDSV1",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.UpdateFleetOutput = schema.new({
   id = id.from(_N, "UpdateFleetResult"),
   type = "structure",
   members = {
      Fleet = schema.new({
         id = id.from(_N, "UpdateFleetOutput", "Fleet"),
         type = "structure",
         name = "Fleet",
         target_id = id.from(_N, "Fleet"),
         target = M.Fleet,
      }),
   },
})

M.UpdateImagePermissionsInput = schema.new({
   id = id.from(_N, "UpdateImagePermissionsRequest"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "UpdateImagePermissionsInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SharedAccountId = schema.new({
         id = id.from(_N, "UpdateImagePermissionsInput", "SharedAccountId"),
         type = "string",
         name = "SharedAccountId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImagePermissions = schema.new({
         id = id.from(_N, "UpdateImagePermissionsInput", "ImagePermissions"),
         type = "structure",
         name = "ImagePermissions",
         target_id = id.from(_N, "ImagePermissions"),
         target = M.ImagePermissions,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateImagePermissionsOutput = schema.new({
   id = id.from(_N, "UpdateImagePermissionsResult"),
   type = "structure",
})

M.UpdateStackInput = schema.new({
   id = id.from(_N, "UpdateStackRequest"),
   type = "structure",
   members = {
      DisplayName = schema.new({
         id = id.from(_N, "UpdateStackInput", "DisplayName"),
         type = "string",
         name = "DisplayName",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateStackInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateStackInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      StorageConnectors = schema.new({
         id = id.from(_N, "UpdateStackInput", "StorageConnectors"),
         type = "list",
         name = "StorageConnectors",
         target_id = prelude.Document.id,
         list_member = M.StorageConnector,
      }),
      DeleteStorageConnectors = schema.new({
         id = id.from(_N, "UpdateStackInput", "DeleteStorageConnectors"),
         type = "boolean",
         name = "DeleteStorageConnectors",
         target_id = prelude.Boolean.id,
      }),
      RedirectURL = schema.new({
         id = id.from(_N, "UpdateStackInput", "RedirectURL"),
         type = "string",
         name = "RedirectURL",
         target_id = prelude.String.id,
      }),
      FeedbackURL = schema.new({
         id = id.from(_N, "UpdateStackInput", "FeedbackURL"),
         type = "string",
         name = "FeedbackURL",
         target_id = prelude.String.id,
      }),
      AttributesToDelete = schema.new({
         id = id.from(_N, "UpdateStackInput", "AttributesToDelete"),
         type = "list",
         name = "AttributesToDelete",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      UserSettings = schema.new({
         id = id.from(_N, "UpdateStackInput", "UserSettings"),
         type = "list",
         name = "UserSettings",
         target_id = prelude.Document.id,
         list_member = M.UserSetting,
      }),
      ApplicationSettings = schema.new({
         id = id.from(_N, "UpdateStackInput", "ApplicationSettings"),
         type = "structure",
         name = "ApplicationSettings",
         target_id = id.from(_N, "ApplicationSettings"),
         target = M.ApplicationSettings,
      }),
      AccessEndpoints = schema.new({
         id = id.from(_N, "UpdateStackInput", "AccessEndpoints"),
         type = "list",
         name = "AccessEndpoints",
         target_id = prelude.Document.id,
         list_member = M.AccessEndpoint,
      }),
      EmbedHostDomains = schema.new({
         id = id.from(_N, "UpdateStackInput", "EmbedHostDomains"),
         type = "list",
         name = "EmbedHostDomains",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      StreamingExperienceSettings = schema.new({
         id = id.from(_N, "UpdateStackInput", "StreamingExperienceSettings"),
         type = "structure",
         name = "StreamingExperienceSettings",
         target_id = id.from(_N, "StreamingExperienceSettings"),
         target = M.StreamingExperienceSettings,
      }),
      ContentRedirection = schema.new({
         id = id.from(_N, "UpdateStackInput", "ContentRedirection"),
         type = "structure",
         name = "ContentRedirection",
         target_id = id.from(_N, "ContentRedirection"),
         target = M.ContentRedirection,
      }),
      AgentAccessConfig = schema.new({
         id = id.from(_N, "UpdateStackInput", "AgentAccessConfig"),
         type = "structure",
         name = "AgentAccessConfig",
         target_id = id.from(_N, "AgentAccessConfigForUpdate"),
         target = M.AgentAccessConfigForUpdate,
      }),
   },
})

M.UpdateStackOutput = schema.new({
   id = id.from(_N, "UpdateStackResult"),
   type = "structure",
   members = {
      Stack = schema.new({
         id = id.from(_N, "UpdateStackOutput", "Stack"),
         type = "structure",
         name = "Stack",
         target_id = id.from(_N, "Stack"),
         target = M.Stack,
      }),
   },
})

M.UpdateThemeForStackInput = schema.new({
   id = id.from(_N, "UpdateThemeForStackRequest"),
   type = "structure",
   members = {
      StackName = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      FooterLinks = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "FooterLinks"),
         type = "list",
         name = "FooterLinks",
         target_id = prelude.Document.id,
         list_member = M.ThemeFooterLink,
      }),
      TitleText = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "TitleText"),
         type = "string",
         name = "TitleText",
         target_id = prelude.String.id,
      }),
      ThemeStyling = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "ThemeStyling"),
         type = "string",
         name = "ThemeStyling",
         target_id = prelude.String.id,
      }),
      OrganizationLogoS3Location = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "OrganizationLogoS3Location"),
         type = "structure",
         name = "OrganizationLogoS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      FaviconS3Location = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "FaviconS3Location"),
         type = "structure",
         name = "FaviconS3Location",
         target_id = id.from(_N, "S3Location"),
         target = M.S3Location,
      }),
      State = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "State"),
         type = "string",
         name = "State",
         target_id = prelude.String.id,
      }),
      AttributesToDelete = schema.new({
         id = id.from(_N, "UpdateThemeForStackInput", "AttributesToDelete"),
         type = "list",
         name = "AttributesToDelete",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.UpdateThemeForStackOutput = schema.new({
   id = id.from(_N, "UpdateThemeForStackResult"),
   type = "structure",
   members = {
      Theme = schema.new({
         id = id.from(_N, "UpdateThemeForStackOutput", "Theme"),
         type = "structure",
         name = "Theme",
         target_id = id.from(_N, "Theme"),
         target = M.Theme,
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
   id = id.from("com.amazonaws.appstream", "PhotonAdminProxyService"),
   version = "2016-12-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateAppBlockBuilderAppBlock = schema.operation({
   id = id.from("com.amazonaws.appstream", "AssociateAppBlockBuilderAppBlock"),
   input = M.AssociateAppBlockBuilderAppBlockInput,
   output = M.AssociateAppBlockBuilderAppBlockOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateApplicationFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "AssociateApplicationFleet"),
   input = M.AssociateApplicationFleetInput,
   output = M.AssociateApplicationFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateApplicationToEntitlement = schema.operation({
   id = id.from("com.amazonaws.appstream", "AssociateApplicationToEntitlement"),
   input = M.AssociateApplicationToEntitlementInput,
   output = M.AssociateApplicationToEntitlementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "AssociateFleet"),
   input = M.AssociateFleetInput,
   output = M.AssociateFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateSoftwareToImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "AssociateSoftwareToImageBuilder"),
   input = M.AssociateSoftwareToImageBuilderInput,
   output = M.AssociateSoftwareToImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchAssociateUserStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "BatchAssociateUserStack"),
   input = M.BatchAssociateUserStackInput,
   output = M.BatchAssociateUserStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDisassociateUserStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "BatchDisassociateUserStack"),
   input = M.BatchDisassociateUserStackInput,
   output = M.BatchDisassociateUserStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CopyImage = schema.operation({
   id = id.from("com.amazonaws.appstream", "CopyImage"),
   input = M.CopyImageInput,
   output = M.CopyImageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAppBlock = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateAppBlock"),
   input = M.CreateAppBlockInput,
   output = M.CreateAppBlockOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAppBlockBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateAppBlockBuilder"),
   input = M.CreateAppBlockBuilderInput,
   output = M.CreateAppBlockBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAppBlockBuilderStreamingURL = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateAppBlockBuilderStreamingURL"),
   input = M.CreateAppBlockBuilderStreamingURLInput,
   output = M.CreateAppBlockBuilderStreamingURLOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDirectoryConfig = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateDirectoryConfig"),
   input = M.CreateDirectoryConfigInput,
   output = M.CreateDirectoryConfigOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateEntitlement = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateEntitlement"),
   input = M.CreateEntitlementInput,
   output = M.CreateEntitlementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateExportImageTask = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateExportImageTask"),
   input = M.CreateExportImageTaskInput,
   output = M.CreateExportImageTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateFleet"),
   input = M.CreateFleetInput,
   output = M.CreateFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateImageBuilder"),
   input = M.CreateImageBuilderInput,
   output = M.CreateImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateImageBuilderStreamingURL = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateImageBuilderStreamingURL"),
   input = M.CreateImageBuilderStreamingURLInput,
   output = M.CreateImageBuilderStreamingURLOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateImportedImage = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateImportedImage"),
   input = M.CreateImportedImageInput,
   output = M.CreateImportedImageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateStack"),
   input = M.CreateStackInput,
   output = M.CreateStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateStreamingURL = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateStreamingURL"),
   input = M.CreateStreamingURLInput,
   output = M.CreateStreamingURLOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateThemeForStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateThemeForStack"),
   input = M.CreateThemeForStackInput,
   output = M.CreateThemeForStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUpdatedImage = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateUpdatedImage"),
   input = M.CreateUpdatedImageInput,
   output = M.CreateUpdatedImageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUsageReportSubscription = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateUsageReportSubscription"),
   input = M.CreateUsageReportSubscriptionInput,
   output = M.CreateUsageReportSubscriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateUser = schema.operation({
   id = id.from("com.amazonaws.appstream", "CreateUser"),
   input = M.CreateUserInput,
   output = M.CreateUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAppBlock = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteAppBlock"),
   input = M.DeleteAppBlockInput,
   output = M.DeleteAppBlockOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAppBlockBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteAppBlockBuilder"),
   input = M.DeleteAppBlockBuilderInput,
   output = M.DeleteAppBlockBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDirectoryConfig = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteDirectoryConfig"),
   input = M.DeleteDirectoryConfigInput,
   output = M.DeleteDirectoryConfigOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteEntitlement = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteEntitlement"),
   input = M.DeleteEntitlementInput,
   output = M.DeleteEntitlementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteFleet"),
   input = M.DeleteFleetInput,
   output = M.DeleteFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImage = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteImage"),
   input = M.DeleteImageInput,
   output = M.DeleteImageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteImageBuilder"),
   input = M.DeleteImageBuilderInput,
   output = M.DeleteImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImagePermissions = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteImagePermissions"),
   input = M.DeleteImagePermissionsInput,
   output = M.DeleteImagePermissionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteStack"),
   input = M.DeleteStackInput,
   output = M.DeleteStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteThemeForStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteThemeForStack"),
   input = M.DeleteThemeForStackInput,
   output = M.DeleteThemeForStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUsageReportSubscription = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteUsageReportSubscription"),
   input = M.DeleteUsageReportSubscriptionInput,
   output = M.DeleteUsageReportSubscriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteUser = schema.operation({
   id = id.from("com.amazonaws.appstream", "DeleteUser"),
   input = M.DeleteUserInput,
   output = M.DeleteUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAppBlockBuilderAppBlockAssociations = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeAppBlockBuilderAppBlockAssociations"),
   input = M.DescribeAppBlockBuilderAppBlockAssociationsInput,
   output = M.DescribeAppBlockBuilderAppBlockAssociationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAppBlockBuilders = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeAppBlockBuilders"),
   input = M.DescribeAppBlockBuildersInput,
   output = M.DescribeAppBlockBuildersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAppBlocks = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeAppBlocks"),
   input = M.DescribeAppBlocksInput,
   output = M.DescribeAppBlocksOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeApplicationFleetAssociations = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeApplicationFleetAssociations"),
   input = M.DescribeApplicationFleetAssociationsInput,
   output = M.DescribeApplicationFleetAssociationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeApplications = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeApplications"),
   input = M.DescribeApplicationsInput,
   output = M.DescribeApplicationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeAppLicenseUsage = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeAppLicenseUsage"),
   input = M.DescribeAppLicenseUsageInput,
   output = M.DescribeAppLicenseUsageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeDirectoryConfigs = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeDirectoryConfigs"),
   input = M.DescribeDirectoryConfigsInput,
   output = M.DescribeDirectoryConfigsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeEntitlements = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeEntitlements"),
   input = M.DescribeEntitlementsInput,
   output = M.DescribeEntitlementsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeFleets = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeFleets"),
   input = M.DescribeFleetsInput,
   output = M.DescribeFleetsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImageBuilders = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeImageBuilders"),
   input = M.DescribeImageBuildersInput,
   output = M.DescribeImageBuildersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImagePermissions = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeImagePermissions"),
   input = M.DescribeImagePermissionsInput,
   output = M.DescribeImagePermissionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeImages = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeImages"),
   input = M.DescribeImagesInput,
   output = M.DescribeImagesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSessions = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeSessions"),
   input = M.DescribeSessionsInput,
   output = M.DescribeSessionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeSoftwareAssociations = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeSoftwareAssociations"),
   input = M.DescribeSoftwareAssociationsInput,
   output = M.DescribeSoftwareAssociationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeStacks = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeStacks"),
   input = M.DescribeStacksInput,
   output = M.DescribeStacksOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeThemeForStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeThemeForStack"),
   input = M.DescribeThemeForStackInput,
   output = M.DescribeThemeForStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUsageReportSubscriptions = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeUsageReportSubscriptions"),
   input = M.DescribeUsageReportSubscriptionsInput,
   output = M.DescribeUsageReportSubscriptionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUsers = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeUsers"),
   input = M.DescribeUsersInput,
   output = M.DescribeUsersOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeUserStackAssociations = schema.operation({
   id = id.from("com.amazonaws.appstream", "DescribeUserStackAssociations"),
   input = M.DescribeUserStackAssociationsInput,
   output = M.DescribeUserStackAssociationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableUser = schema.operation({
   id = id.from("com.amazonaws.appstream", "DisableUser"),
   input = M.DisableUserInput,
   output = M.DisableUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateAppBlockBuilderAppBlock = schema.operation({
   id = id.from("com.amazonaws.appstream", "DisassociateAppBlockBuilderAppBlock"),
   input = M.DisassociateAppBlockBuilderAppBlockInput,
   output = M.DisassociateAppBlockBuilderAppBlockOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateApplicationFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "DisassociateApplicationFleet"),
   input = M.DisassociateApplicationFleetInput,
   output = M.DisassociateApplicationFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateApplicationFromEntitlement = schema.operation({
   id = id.from("com.amazonaws.appstream", "DisassociateApplicationFromEntitlement"),
   input = M.DisassociateApplicationFromEntitlementInput,
   output = M.DisassociateApplicationFromEntitlementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "DisassociateFleet"),
   input = M.DisassociateFleetInput,
   output = M.DisassociateFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateSoftwareFromImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "DisassociateSoftwareFromImageBuilder"),
   input = M.DisassociateSoftwareFromImageBuilderInput,
   output = M.DisassociateSoftwareFromImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DrainSessionInstance = schema.operation({
   id = id.from("com.amazonaws.appstream", "DrainSessionInstance"),
   input = M.DrainSessionInstanceInput,
   output = M.DrainSessionInstanceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableUser = schema.operation({
   id = id.from("com.amazonaws.appstream", "EnableUser"),
   input = M.EnableUserInput,
   output = M.EnableUserOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ExpireSession = schema.operation({
   id = id.from("com.amazonaws.appstream", "ExpireSession"),
   input = M.ExpireSessionInput,
   output = M.ExpireSessionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetExportImageTask = schema.operation({
   id = id.from("com.amazonaws.appstream", "GetExportImageTask"),
   input = M.GetExportImageTaskInput,
   output = M.GetExportImageTaskOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssociatedFleets = schema.operation({
   id = id.from("com.amazonaws.appstream", "ListAssociatedFleets"),
   input = M.ListAssociatedFleetsInput,
   output = M.ListAssociatedFleetsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAssociatedStacks = schema.operation({
   id = id.from("com.amazonaws.appstream", "ListAssociatedStacks"),
   input = M.ListAssociatedStacksInput,
   output = M.ListAssociatedStacksOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEntitledApplications = schema.operation({
   id = id.from("com.amazonaws.appstream", "ListEntitledApplications"),
   input = M.ListEntitledApplicationsInput,
   output = M.ListEntitledApplicationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListExportImageTasks = schema.operation({
   id = id.from("com.amazonaws.appstream", "ListExportImageTasks"),
   input = M.ListExportImageTasksInput,
   output = M.ListExportImageTasksOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.appstream", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartAppBlockBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "StartAppBlockBuilder"),
   input = M.StartAppBlockBuilderInput,
   output = M.StartAppBlockBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "StartFleet"),
   input = M.StartFleetInput,
   output = M.StartFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "StartImageBuilder"),
   input = M.StartImageBuilderInput,
   output = M.StartImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StartSoftwareDeploymentToImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "StartSoftwareDeploymentToImageBuilder"),
   input = M.StartSoftwareDeploymentToImageBuilderInput,
   output = M.StartSoftwareDeploymentToImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopAppBlockBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "StopAppBlockBuilder"),
   input = M.StopAppBlockBuilderInput,
   output = M.StopAppBlockBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "StopFleet"),
   input = M.StopFleetInput,
   output = M.StopFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.StopImageBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "StopImageBuilder"),
   input = M.StopImageBuilderInput,
   output = M.StopImageBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.appstream", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.appstream", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAppBlockBuilder = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateAppBlockBuilder"),
   input = M.UpdateAppBlockBuilderInput,
   output = M.UpdateAppBlockBuilderOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateDirectoryConfig = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateDirectoryConfig"),
   input = M.UpdateDirectoryConfigInput,
   output = M.UpdateDirectoryConfigOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateEntitlement = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateEntitlement"),
   input = M.UpdateEntitlementInput,
   output = M.UpdateEntitlementOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateFleet = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateFleet"),
   input = M.UpdateFleetInput,
   output = M.UpdateFleetOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateImagePermissions = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateImagePermissions"),
   input = M.UpdateImagePermissionsInput,
   output = M.UpdateImagePermissionsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateStack"),
   input = M.UpdateStackInput,
   output = M.UpdateStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateThemeForStack = schema.operation({
   id = id.from("com.amazonaws.appstream", "UpdateThemeForStack"),
   input = M.UpdateThemeForStackInput,
   output = M.UpdateThemeForStackOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
