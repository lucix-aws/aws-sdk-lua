

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.greengrassv2"

local M = {}

M.ValidationExceptionFieldList = schema.new({ type = "list", list_member = M.ValidationExceptionField })

M.AssociateClientDeviceWithCoreDeviceEntryList = schema.new({ type = "list", list_member = M.AssociateClientDeviceWithCoreDeviceEntry })

M.AssociateClientDeviceWithCoreDeviceErrorList = schema.new({ type = "list", list_member = M.AssociateClientDeviceWithCoreDeviceErrorEntry })

M.DisassociateClientDeviceFromCoreDeviceEntryList = schema.new({ type = "list", list_member = M.DisassociateClientDeviceFromCoreDeviceEntry })

M.DisassociateClientDeviceFromCoreDeviceErrorList = schema.new({ type = "list", list_member = M.DisassociateClientDeviceFromCoreDeviceErrorEntry })

M.TagMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ComponentDeploymentSpecifications = schema.new({ type = "map", map_key = prelude.String, map_value = M.ComponentDeploymentSpecification })

M.ComponentPlatformList = schema.new({ type = "list", list_member = M.ComponentPlatform })

M.connectivityInfoList = schema.new({ type = "list", list_member = M.ConnectivityInfo })

M.AssociatedClientDeviceList = schema.new({ type = "list", list_member = M.AssociatedClientDevice })

M.ComponentList = schema.new({ type = "list", list_member = M.Component })

M.ComponentVersionList = schema.new({ type = "list", list_member = M.ComponentVersionListItem })

M.CoreDevicesList = schema.new({ type = "list", list_member = M.CoreDevice })

M.DeploymentList = schema.new({ type = "list", list_member = M.Deployment })

M.EffectiveDeploymentsList = schema.new({ type = "list", list_member = M.EffectiveDeployment })

M.InstalledComponentList = schema.new({ type = "list", list_member = M.InstalledComponent })

M.ComponentCandidateList = schema.new({ type = "list", list_member = M.ComponentCandidate })

M.ResolvedComponentVersionsList = schema.new({ type = "list", list_member = M.ResolvedComponentVersion })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.ComponentDependencyMap = schema.new({ type = "map", map_key = prelude.String, map_value = M.ComponentDependencyRequirement })

M.StringMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.PlatformAttributesMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.LambdaEventSourceList = schema.new({ type = "list", list_member = M.LambdaEventSource })

M.LambdaExecArgsList = schema.new({ type = "list", list_member = prelude.String })

M.LambdaEnvironmentVariables = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.IoTJobAbortCriteriaList = schema.new({ type = "list", list_member = M.IoTJobAbortCriteria })

M.InstalledComponentLifecycleStatusCodeList = schema.new({ type = "list", list_member = prelude.String })

M.ComponentVersionRequirementMap = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.ComponentConfigurationPathList = schema.new({ type = "list", list_member = prelude.String })

M.EffectiveDeploymentErrorStack = schema.new({ type = "list", list_member = prelude.String })

M.EffectiveDeploymentErrorTypeList = schema.new({ type = "list", list_member = prelude.String })

M.LambdaVolumeList = schema.new({ type = "list", list_member = M.LambdaVolumeMount })

M.LambdaDeviceList = schema.new({ type = "list", list_member = M.LambdaDeviceMount })

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

M.AssociateClientDeviceWithCoreDeviceEntry = schema.new({
   id = id.from(_N, "AssociateClientDeviceWithCoreDeviceEntry"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "AssociateClientDeviceWithCoreDeviceEntry", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.AssociateClientDeviceWithCoreDeviceErrorEntry = schema.new({
   id = id.from(_N, "AssociateClientDeviceWithCoreDeviceErrorEntry"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "AssociateClientDeviceWithCoreDeviceErrorEntry", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "AssociateClientDeviceWithCoreDeviceErrorEntry", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "AssociateClientDeviceWithCoreDeviceErrorEntry", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.AssociatedClientDevice = schema.new({
   id = id.from(_N, "AssociatedClientDevice"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "AssociatedClientDevice", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      associationTimestamp = schema.new({
         id = id.from(_N, "AssociatedClientDevice", "associationTimestamp"),
         type = "timestamp",
         name = "associationTimestamp",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AssociateServiceRoleToAccountInput = schema.new({
   id = id.from(_N, "AssociateServiceRoleToAccountRequest"),
   type = "structure",
   members = {
      roleArn = schema.new({
         id = id.from(_N, "AssociateServiceRoleToAccountInput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "RoleArn" },
         },
      }),
   },
})

M.AssociateServiceRoleToAccountOutput = schema.new({
   id = id.from(_N, "AssociateServiceRoleToAccountResponse"),
   type = "structure",
   members = {
      associatedAt = schema.new({
         id = id.from(_N, "AssociateServiceRoleToAccountOutput", "associatedAt"),
         type = "string",
         name = "associatedAt",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "AssociatedAt" },
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

M.BatchAssociateClientDeviceWithCoreDeviceInput = schema.new({
   id = id.from(_N, "BatchAssociateClientDeviceWithCoreDeviceRequest"),
   type = "structure",
   members = {
      entries = schema.new({
         id = id.from(_N, "BatchAssociateClientDeviceWithCoreDeviceInput", "entries"),
         type = "list",
         name = "entries",
         target_id = prelude.Document.id,
         list_member = M.AssociateClientDeviceWithCoreDeviceEntry,
      }),
      coreDeviceThingName = schema.new({
         id = id.from(_N, "BatchAssociateClientDeviceWithCoreDeviceInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.BatchAssociateClientDeviceWithCoreDeviceOutput = schema.new({
   id = id.from(_N, "BatchAssociateClientDeviceWithCoreDeviceResponse"),
   type = "structure",
   members = {
      errorEntries = schema.new({
         id = id.from(_N, "BatchAssociateClientDeviceWithCoreDeviceOutput", "errorEntries"),
         type = "list",
         name = "errorEntries",
         target_id = prelude.Document.id,
         list_member = M.AssociateClientDeviceWithCoreDeviceErrorEntry,
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
      resourceId = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceId"),
         type = "string",
         name = "resourceId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      resourceType = schema.new({
         id = id.from(_N, "ResourceNotFoundException", "resourceType"),
         type = "string",
         name = "resourceType",
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
      quotaCode = schema.new({
         id = id.from(_N, "ThrottlingException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ThrottlingException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
      }),
      retryAfterSeconds = schema.new({
         id = id.from(_N, "ThrottlingException", "retryAfterSeconds"),
         type = "integer",
         name = "retryAfterSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.HTTP_HEADER] = { name = "Retry-After" },
         },
      }),
   },
})

M.DisassociateClientDeviceFromCoreDeviceEntry = schema.new({
   id = id.from(_N, "DisassociateClientDeviceFromCoreDeviceEntry"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "DisassociateClientDeviceFromCoreDeviceEntry", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.BatchDisassociateClientDeviceFromCoreDeviceInput = schema.new({
   id = id.from(_N, "BatchDisassociateClientDeviceFromCoreDeviceRequest"),
   type = "structure",
   members = {
      entries = schema.new({
         id = id.from(_N, "BatchDisassociateClientDeviceFromCoreDeviceInput", "entries"),
         type = "list",
         name = "entries",
         target_id = prelude.Document.id,
         list_member = M.DisassociateClientDeviceFromCoreDeviceEntry,
      }),
      coreDeviceThingName = schema.new({
         id = id.from(_N, "BatchDisassociateClientDeviceFromCoreDeviceInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DisassociateClientDeviceFromCoreDeviceErrorEntry = schema.new({
   id = id.from(_N, "DisassociateClientDeviceFromCoreDeviceErrorEntry"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "DisassociateClientDeviceFromCoreDeviceErrorEntry", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
      }),
      code = schema.new({
         id = id.from(_N, "DisassociateClientDeviceFromCoreDeviceErrorEntry", "code"),
         type = "string",
         name = "code",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "DisassociateClientDeviceFromCoreDeviceErrorEntry", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.BatchDisassociateClientDeviceFromCoreDeviceOutput = schema.new({
   id = id.from(_N, "BatchDisassociateClientDeviceFromCoreDeviceResponse"),
   type = "structure",
   members = {
      errorEntries = schema.new({
         id = id.from(_N, "BatchDisassociateClientDeviceFromCoreDeviceOutput", "errorEntries"),
         type = "list",
         name = "errorEntries",
         target_id = prelude.Document.id,
         list_member = M.DisassociateClientDeviceFromCoreDeviceErrorEntry,
      }),
   },
})

M.CancelDeploymentInput = schema.new({
   id = id.from(_N, "CancelDeploymentRequest"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "CancelDeploymentInput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.CancelDeploymentOutput = schema.new({
   id = id.from(_N, "CancelDeploymentResponse"),
   type = "structure",
   members = {
      message = schema.new({
         id = id.from(_N, "CancelDeploymentOutput", "message"),
         type = "string",
         name = "message",
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

M.CloudComponentStatus = schema.new({
   id = id.from(_N, "CloudComponentStatus"),
   type = "structure",
   members = {
      componentState = schema.new({
         id = id.from(_N, "CloudComponentStatus", "componentState"),
         type = "string",
         name = "componentState",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "CloudComponentStatus", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
      errors = schema.new({
         id = id.from(_N, "CloudComponentStatus", "errors"),
         type = "map",
         name = "errors",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      vendorGuidance = schema.new({
         id = id.from(_N, "CloudComponentStatus", "vendorGuidance"),
         type = "string",
         name = "vendorGuidance",
         target_id = prelude.String.id,
      }),
      vendorGuidanceMessage = schema.new({
         id = id.from(_N, "CloudComponentStatus", "vendorGuidanceMessage"),
         type = "string",
         name = "vendorGuidanceMessage",
         target_id = prelude.String.id,
      }),
   },
})

M.ComponentPlatform = schema.new({
   id = id.from(_N, "ComponentPlatform"),
   type = "structure",
   members = {
      name = schema.new({
         id = id.from(_N, "ComponentPlatform", "name"),
         type = "string",
         name = "name",
         target_id = prelude.String.id,
      }),
      attributes = schema.new({
         id = id.from(_N, "ComponentPlatform", "attributes"),
         type = "map",
         name = "attributes",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ComponentLatestVersion = schema.new({
   id = id.from(_N, "ComponentLatestVersion"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "ComponentLatestVersion", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "ComponentLatestVersion", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      creationTimestamp = schema.new({
         id = id.from(_N, "ComponentLatestVersion", "creationTimestamp"),
         type = "timestamp",
         name = "creationTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      description = schema.new({
         id = id.from(_N, "ComponentLatestVersion", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      publisher = schema.new({
         id = id.from(_N, "ComponentLatestVersion", "publisher"),
         type = "string",
         name = "publisher",
         target_id = prelude.String.id,
      }),
      platforms = schema.new({
         id = id.from(_N, "ComponentLatestVersion", "platforms"),
         type = "list",
         name = "platforms",
         target_id = prelude.Document.id,
         list_member = M.ComponentPlatform,
      }),
   },
})

M.Component = schema.new({
   id = id.from(_N, "Component"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "Component", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      componentName = schema.new({
         id = id.from(_N, "Component", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      latestVersion = schema.new({
         id = id.from(_N, "Component", "latestVersion"),
         type = "structure",
         name = "latestVersion",
         target_id = id.from(_N, "ComponentLatestVersion"),
         target = M.ComponentLatestVersion,
      }),
   },
})

M.ComponentCandidate = schema.new({
   id = id.from(_N, "ComponentCandidate"),
   type = "structure",
   members = {
      componentName = schema.new({
         id = id.from(_N, "ComponentCandidate", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "ComponentCandidate", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      versionRequirements = schema.new({
         id = id.from(_N, "ComponentCandidate", "versionRequirements"),
         type = "map",
         name = "versionRequirements",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.ComponentConfigurationUpdate = schema.new({
   id = id.from(_N, "ComponentConfigurationUpdate"),
   type = "structure",
   members = {
      merge = schema.new({
         id = id.from(_N, "ComponentConfigurationUpdate", "merge"),
         type = "string",
         name = "merge",
         target_id = prelude.String.id,
      }),
      reset = schema.new({
         id = id.from(_N, "ComponentConfigurationUpdate", "reset"),
         type = "list",
         name = "reset",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ComponentDependencyRequirement = schema.new({
   id = id.from(_N, "ComponentDependencyRequirement"),
   type = "structure",
   members = {
      versionRequirement = schema.new({
         id = id.from(_N, "ComponentDependencyRequirement", "versionRequirement"),
         type = "string",
         name = "versionRequirement",
         target_id = prelude.String.id,
      }),
      dependencyType = schema.new({
         id = id.from(_N, "ComponentDependencyRequirement", "dependencyType"),
         type = "string",
         name = "dependencyType",
         target_id = prelude.String.id,
      }),
   },
})

M.SystemResourceLimits = schema.new({
   id = id.from(_N, "SystemResourceLimits"),
   type = "structure",
   members = {
      memory = schema.new({
         id = id.from(_N, "SystemResourceLimits", "memory"),
         type = "long",
         name = "memory",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      cpus = schema.new({
         id = id.from(_N, "SystemResourceLimits", "cpus"),
         type = "double",
         name = "cpus",
         target_id = prelude.Double.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
         },
      }),
   },
})

M.ComponentRunWith = schema.new({
   id = id.from(_N, "ComponentRunWith"),
   type = "structure",
   members = {
      posixUser = schema.new({
         id = id.from(_N, "ComponentRunWith", "posixUser"),
         type = "string",
         name = "posixUser",
         target_id = prelude.String.id,
      }),
      systemResourceLimits = schema.new({
         id = id.from(_N, "ComponentRunWith", "systemResourceLimits"),
         type = "structure",
         name = "systemResourceLimits",
         target_id = id.from(_N, "SystemResourceLimits"),
         target = M.SystemResourceLimits,
      }),
      windowsUser = schema.new({
         id = id.from(_N, "ComponentRunWith", "windowsUser"),
         type = "string",
         name = "windowsUser",
         target_id = prelude.String.id,
      }),
   },
})

M.ComponentDeploymentSpecification = schema.new({
   id = id.from(_N, "ComponentDeploymentSpecification"),
   type = "structure",
   members = {
      componentVersion = schema.new({
         id = id.from(_N, "ComponentDeploymentSpecification", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      configurationUpdate = schema.new({
         id = id.from(_N, "ComponentDeploymentSpecification", "configurationUpdate"),
         type = "structure",
         name = "configurationUpdate",
         target_id = id.from(_N, "ComponentConfigurationUpdate"),
         target = M.ComponentConfigurationUpdate,
      }),
      runWith = schema.new({
         id = id.from(_N, "ComponentDeploymentSpecification", "runWith"),
         type = "structure",
         name = "runWith",
         target_id = id.from(_N, "ComponentRunWith"),
         target = M.ComponentRunWith,
      }),
   },
})

M.ComponentVersionListItem = schema.new({
   id = id.from(_N, "ComponentVersionListItem"),
   type = "structure",
   members = {
      componentName = schema.new({
         id = id.from(_N, "ComponentVersionListItem", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "ComponentVersionListItem", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      arn = schema.new({
         id = id.from(_N, "ComponentVersionListItem", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
   },
})

M.ConnectivityInfo = schema.new({
   id = id.from(_N, "ConnectivityInfo"),
   type = "structure",
   members = {
      id = schema.new({
         id = id.from(_N, "ConnectivityInfo", "id"),
         type = "string",
         name = "id",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "Id" },
         },
      }),
      hostAddress = schema.new({
         id = id.from(_N, "ConnectivityInfo", "hostAddress"),
         type = "string",
         name = "hostAddress",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "HostAddress" },
         },
      }),
      portNumber = schema.new({
         id = id.from(_N, "ConnectivityInfo", "portNumber"),
         type = "integer",
         name = "portNumber",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = 0 },
            [traits.JSON_NAME] = { name = "PortNumber" },
         },
      }),
      metadata = schema.new({
         id = id.from(_N, "ConnectivityInfo", "metadata"),
         type = "string",
         name = "metadata",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "Metadata" },
         },
      }),
   },
})

M.CoreDevice = schema.new({
   id = id.from(_N, "CoreDevice"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "CoreDevice", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "CoreDevice", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      lastStatusUpdateTimestamp = schema.new({
         id = id.from(_N, "CoreDevice", "lastStatusUpdateTimestamp"),
         type = "timestamp",
         name = "lastStatusUpdateTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      platform = schema.new({
         id = id.from(_N, "CoreDevice", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
      architecture = schema.new({
         id = id.from(_N, "CoreDevice", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      runtime = schema.new({
         id = id.from(_N, "CoreDevice", "runtime"),
         type = "string",
         name = "runtime",
         target_id = prelude.String.id,
      }),
   },
})

M.LambdaEventSource = schema.new({
   id = id.from(_N, "LambdaEventSource"),
   type = "structure",
   members = {
      topic = schema.new({
         id = id.from(_N, "LambdaEventSource", "topic"),
         type = "string",
         name = "topic",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      type = schema.new({
         id = id.from(_N, "LambdaEventSource", "type"),
         type = "string",
         name = "type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.LambdaDeviceMount = schema.new({
   id = id.from(_N, "LambdaDeviceMount"),
   type = "structure",
   members = {
      path = schema.new({
         id = id.from(_N, "LambdaDeviceMount", "path"),
         type = "string",
         name = "path",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      permission = schema.new({
         id = id.from(_N, "LambdaDeviceMount", "permission"),
         type = "string",
         name = "permission",
         target_id = prelude.String.id,
      }),
      addGroupOwner = schema.new({
         id = id.from(_N, "LambdaDeviceMount", "addGroupOwner"),
         type = "boolean",
         name = "addGroupOwner",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.LambdaVolumeMount = schema.new({
   id = id.from(_N, "LambdaVolumeMount"),
   type = "structure",
   members = {
      sourcePath = schema.new({
         id = id.from(_N, "LambdaVolumeMount", "sourcePath"),
         type = "string",
         name = "sourcePath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      destinationPath = schema.new({
         id = id.from(_N, "LambdaVolumeMount", "destinationPath"),
         type = "string",
         name = "destinationPath",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      permission = schema.new({
         id = id.from(_N, "LambdaVolumeMount", "permission"),
         type = "string",
         name = "permission",
         target_id = prelude.String.id,
      }),
      addGroupOwner = schema.new({
         id = id.from(_N, "LambdaVolumeMount", "addGroupOwner"),
         type = "boolean",
         name = "addGroupOwner",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.LambdaContainerParams = schema.new({
   id = id.from(_N, "LambdaContainerParams"),
   type = "structure",
   members = {
      memorySizeInKB = schema.new({
         id = id.from(_N, "LambdaContainerParams", "memorySizeInKB"),
         type = "integer",
         name = "memorySizeInKB",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      mountROSysfs = schema.new({
         id = id.from(_N, "LambdaContainerParams", "mountROSysfs"),
         type = "boolean",
         name = "mountROSysfs",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      volumes = schema.new({
         id = id.from(_N, "LambdaContainerParams", "volumes"),
         type = "list",
         name = "volumes",
         target_id = prelude.Document.id,
         list_member = M.LambdaVolumeMount,
      }),
      devices = schema.new({
         id = id.from(_N, "LambdaContainerParams", "devices"),
         type = "list",
         name = "devices",
         target_id = prelude.Document.id,
         list_member = M.LambdaDeviceMount,
      }),
   },
})

M.LambdaLinuxProcessParams = schema.new({
   id = id.from(_N, "LambdaLinuxProcessParams"),
   type = "structure",
   members = {
      isolationMode = schema.new({
         id = id.from(_N, "LambdaLinuxProcessParams", "isolationMode"),
         type = "string",
         name = "isolationMode",
         target_id = prelude.String.id,
      }),
      containerParams = schema.new({
         id = id.from(_N, "LambdaLinuxProcessParams", "containerParams"),
         type = "structure",
         name = "containerParams",
         target_id = id.from(_N, "LambdaContainerParams"),
         target = M.LambdaContainerParams,
      }),
   },
})

M.LambdaExecutionParameters = schema.new({
   id = id.from(_N, "LambdaExecutionParameters"),
   type = "structure",
   members = {
      eventSources = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "eventSources"),
         type = "list",
         name = "eventSources",
         target_id = prelude.Document.id,
         list_member = M.LambdaEventSource,
      }),
      maxQueueSize = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "maxQueueSize"),
         type = "integer",
         name = "maxQueueSize",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      maxInstancesCount = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "maxInstancesCount"),
         type = "integer",
         name = "maxInstancesCount",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      maxIdleTimeInSeconds = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "maxIdleTimeInSeconds"),
         type = "integer",
         name = "maxIdleTimeInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      timeoutInSeconds = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "timeoutInSeconds"),
         type = "integer",
         name = "timeoutInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      statusTimeoutInSeconds = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "statusTimeoutInSeconds"),
         type = "integer",
         name = "statusTimeoutInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      pinned = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "pinned"),
         type = "boolean",
         name = "pinned",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      inputPayloadEncodingType = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "inputPayloadEncodingType"),
         type = "string",
         name = "inputPayloadEncodingType",
         target_id = prelude.String.id,
      }),
      execArgs = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "execArgs"),
         type = "list",
         name = "execArgs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      environmentVariables = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "environmentVariables"),
         type = "map",
         name = "environmentVariables",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      linuxProcessParams = schema.new({
         id = id.from(_N, "LambdaExecutionParameters", "linuxProcessParams"),
         type = "structure",
         name = "linuxProcessParams",
         target_id = id.from(_N, "LambdaLinuxProcessParams"),
         target = M.LambdaLinuxProcessParams,
      }),
   },
})

M.LambdaFunctionRecipeSource = schema.new({
   id = id.from(_N, "LambdaFunctionRecipeSource"),
   type = "structure",
   members = {
      lambdaArn = schema.new({
         id = id.from(_N, "LambdaFunctionRecipeSource", "lambdaArn"),
         type = "string",
         name = "lambdaArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      componentName = schema.new({
         id = id.from(_N, "LambdaFunctionRecipeSource", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "LambdaFunctionRecipeSource", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      componentPlatforms = schema.new({
         id = id.from(_N, "LambdaFunctionRecipeSource", "componentPlatforms"),
         type = "list",
         name = "componentPlatforms",
         target_id = prelude.Document.id,
         list_member = M.ComponentPlatform,
      }),
      componentDependencies = schema.new({
         id = id.from(_N, "LambdaFunctionRecipeSource", "componentDependencies"),
         type = "map",
         name = "componentDependencies",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ComponentDependencyRequirement,
      }),
      componentLambdaParameters = schema.new({
         id = id.from(_N, "LambdaFunctionRecipeSource", "componentLambdaParameters"),
         type = "structure",
         name = "componentLambdaParameters",
         target_id = id.from(_N, "LambdaExecutionParameters"),
         target = M.LambdaExecutionParameters,
      }),
   },
})

M.CreateComponentVersionInput = schema.new({
   id = id.from(_N, "CreateComponentVersionRequest"),
   type = "structure",
   members = {
      inlineRecipe = schema.new({
         id = id.from(_N, "CreateComponentVersionInput", "inlineRecipe"),
         type = "blob",
         name = "inlineRecipe",
         target_id = prelude.Blob.id,
      }),
      lambdaFunction = schema.new({
         id = id.from(_N, "CreateComponentVersionInput", "lambdaFunction"),
         type = "structure",
         name = "lambdaFunction",
         target_id = id.from(_N, "LambdaFunctionRecipeSource"),
         target = M.LambdaFunctionRecipeSource,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateComponentVersionInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateComponentVersionInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateComponentVersionOutput = schema.new({
   id = id.from(_N, "CreateComponentVersionResponse"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "CreateComponentVersionOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      componentName = schema.new({
         id = id.from(_N, "CreateComponentVersionOutput", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      componentVersion = schema.new({
         id = id.from(_N, "CreateComponentVersionOutput", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      creationTimestamp = schema.new({
         id = id.from(_N, "CreateComponentVersionOutput", "creationTimestamp"),
         type = "timestamp",
         name = "creationTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      status = schema.new({
         id = id.from(_N, "CreateComponentVersionOutput", "status"),
         type = "structure",
         name = "status",
         target_id = id.from(_N, "CloudComponentStatus"),
         target = M.CloudComponentStatus,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RequestAlreadyInProgressException = schema.new({
   id = id.from(_N, "RequestAlreadyInProgressException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "RequestAlreadyInProgressException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
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
      }),
      resourceType = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "resourceType"),
         type = "string",
         name = "resourceType",
         target_id = prelude.String.id,
      }),
      quotaCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "quotaCode"),
         type = "string",
         name = "quotaCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      serviceCode = schema.new({
         id = id.from(_N, "ServiceQuotaExceededException", "serviceCode"),
         type = "string",
         name = "serviceCode",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeploymentComponentUpdatePolicy = schema.new({
   id = id.from(_N, "DeploymentComponentUpdatePolicy"),
   type = "structure",
   members = {
      timeoutInSeconds = schema.new({
         id = id.from(_N, "DeploymentComponentUpdatePolicy", "timeoutInSeconds"),
         type = "integer",
         name = "timeoutInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
      action = schema.new({
         id = id.from(_N, "DeploymentComponentUpdatePolicy", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
      }),
   },
})

M.DeploymentConfigurationValidationPolicy = schema.new({
   id = id.from(_N, "DeploymentConfigurationValidationPolicy"),
   type = "structure",
   members = {
      timeoutInSeconds = schema.new({
         id = id.from(_N, "DeploymentConfigurationValidationPolicy", "timeoutInSeconds"),
         type = "integer",
         name = "timeoutInSeconds",
         target_id = prelude.Integer.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.DeploymentPolicies = schema.new({
   id = id.from(_N, "DeploymentPolicies"),
   type = "structure",
   members = {
      failureHandlingPolicy = schema.new({
         id = id.from(_N, "DeploymentPolicies", "failureHandlingPolicy"),
         type = "string",
         name = "failureHandlingPolicy",
         target_id = prelude.String.id,
      }),
      componentUpdatePolicy = schema.new({
         id = id.from(_N, "DeploymentPolicies", "componentUpdatePolicy"),
         type = "structure",
         name = "componentUpdatePolicy",
         target_id = id.from(_N, "DeploymentComponentUpdatePolicy"),
         target = M.DeploymentComponentUpdatePolicy,
      }),
      configurationValidationPolicy = schema.new({
         id = id.from(_N, "DeploymentPolicies", "configurationValidationPolicy"),
         type = "structure",
         name = "configurationValidationPolicy",
         target_id = id.from(_N, "DeploymentConfigurationValidationPolicy"),
         target = M.DeploymentConfigurationValidationPolicy,
      }),
   },
})

M.IoTJobAbortCriteria = schema.new({
   id = id.from(_N, "IoTJobAbortCriteria"),
   type = "structure",
   members = {
      failureType = schema.new({
         id = id.from(_N, "IoTJobAbortCriteria", "failureType"),
         type = "string",
         name = "failureType",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      action = schema.new({
         id = id.from(_N, "IoTJobAbortCriteria", "action"),
         type = "string",
         name = "action",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      thresholdPercentage = schema.new({
         id = id.from(_N, "IoTJobAbortCriteria", "thresholdPercentage"),
         type = "double",
         name = "thresholdPercentage",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.DEFAULT] = { value = 0 },
         },
      }),
      minNumberOfExecutedThings = schema.new({
         id = id.from(_N, "IoTJobAbortCriteria", "minNumberOfExecutedThings"),
         type = "integer",
         name = "minNumberOfExecutedThings",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IoTJobAbortConfig = schema.new({
   id = id.from(_N, "IoTJobAbortConfig"),
   type = "structure",
   members = {
      criteriaList = schema.new({
         id = id.from(_N, "IoTJobAbortConfig", "criteriaList"),
         type = "list",
         name = "criteriaList",
         target_id = prelude.Document.id,
         list_member = M.IoTJobAbortCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IoTJobRateIncreaseCriteria = schema.new({
   id = id.from(_N, "IoTJobRateIncreaseCriteria"),
   type = "structure",
   members = {
      numberOfNotifiedThings = schema.new({
         id = id.from(_N, "IoTJobRateIncreaseCriteria", "numberOfNotifiedThings"),
         type = "integer",
         name = "numberOfNotifiedThings",
         target_id = prelude.Integer.id,
      }),
      numberOfSucceededThings = schema.new({
         id = id.from(_N, "IoTJobRateIncreaseCriteria", "numberOfSucceededThings"),
         type = "integer",
         name = "numberOfSucceededThings",
         target_id = prelude.Integer.id,
      }),
   },
})

M.IoTJobExponentialRolloutRate = schema.new({
   id = id.from(_N, "IoTJobExponentialRolloutRate"),
   type = "structure",
   members = {
      baseRatePerMinute = schema.new({
         id = id.from(_N, "IoTJobExponentialRolloutRate", "baseRatePerMinute"),
         type = "integer",
         name = "baseRatePerMinute",
         target_id = prelude.Integer.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      incrementFactor = schema.new({
         id = id.from(_N, "IoTJobExponentialRolloutRate", "incrementFactor"),
         type = "double",
         name = "incrementFactor",
         target_id = prelude.Double.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      rateIncreaseCriteria = schema.new({
         id = id.from(_N, "IoTJobExponentialRolloutRate", "rateIncreaseCriteria"),
         type = "structure",
         name = "rateIncreaseCriteria",
         target_id = id.from(_N, "IoTJobRateIncreaseCriteria"),
         target = M.IoTJobRateIncreaseCriteria,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.IoTJobExecutionsRolloutConfig = schema.new({
   id = id.from(_N, "IoTJobExecutionsRolloutConfig"),
   type = "structure",
   members = {
      exponentialRate = schema.new({
         id = id.from(_N, "IoTJobExecutionsRolloutConfig", "exponentialRate"),
         type = "structure",
         name = "exponentialRate",
         target_id = id.from(_N, "IoTJobExponentialRolloutRate"),
         target = M.IoTJobExponentialRolloutRate,
      }),
      maximumPerMinute = schema.new({
         id = id.from(_N, "IoTJobExecutionsRolloutConfig", "maximumPerMinute"),
         type = "integer",
         name = "maximumPerMinute",
         target_id = prelude.Integer.id,
      }),
   },
})

M.IoTJobTimeoutConfig = schema.new({
   id = id.from(_N, "IoTJobTimeoutConfig"),
   type = "structure",
   members = {
      inProgressTimeoutInMinutes = schema.new({
         id = id.from(_N, "IoTJobTimeoutConfig", "inProgressTimeoutInMinutes"),
         type = "long",
         name = "inProgressTimeoutInMinutes",
         target_id = prelude.Long.id,
         traits = {
            [traits.DEFAULT] = { value = nil },
         },
      }),
   },
})

M.DeploymentIoTJobConfiguration = schema.new({
   id = id.from(_N, "DeploymentIoTJobConfiguration"),
   type = "structure",
   members = {
      jobExecutionsRolloutConfig = schema.new({
         id = id.from(_N, "DeploymentIoTJobConfiguration", "jobExecutionsRolloutConfig"),
         type = "structure",
         name = "jobExecutionsRolloutConfig",
         target_id = id.from(_N, "IoTJobExecutionsRolloutConfig"),
         target = M.IoTJobExecutionsRolloutConfig,
      }),
      abortConfig = schema.new({
         id = id.from(_N, "DeploymentIoTJobConfiguration", "abortConfig"),
         type = "structure",
         name = "abortConfig",
         target_id = id.from(_N, "IoTJobAbortConfig"),
         target = M.IoTJobAbortConfig,
      }),
      timeoutConfig = schema.new({
         id = id.from(_N, "DeploymentIoTJobConfiguration", "timeoutConfig"),
         type = "structure",
         name = "timeoutConfig",
         target_id = id.from(_N, "IoTJobTimeoutConfig"),
         target = M.IoTJobTimeoutConfig,
      }),
   },
})

M.CreateDeploymentInput = schema.new({
   id = id.from(_N, "CreateDeploymentRequest"),
   type = "structure",
   members = {
      targetArn = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deploymentName = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "deploymentName"),
         type = "string",
         name = "deploymentName",
         target_id = prelude.String.id,
      }),
      components = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "components"),
         type = "map",
         name = "components",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ComponentDeploymentSpecification,
      }),
      iotJobConfiguration = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "iotJobConfiguration"),
         type = "structure",
         name = "iotJobConfiguration",
         target_id = id.from(_N, "DeploymentIoTJobConfiguration"),
         target = M.DeploymentIoTJobConfiguration,
      }),
      deploymentPolicies = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "deploymentPolicies"),
         type = "structure",
         name = "deploymentPolicies",
         target_id = id.from(_N, "DeploymentPolicies"),
         target = M.DeploymentPolicies,
      }),
      parentTargetArn = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "parentTargetArn"),
         type = "string",
         name = "parentTargetArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      clientToken = schema.new({
         id = id.from(_N, "CreateDeploymentInput", "clientToken"),
         type = "string",
         name = "clientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.IDEMPOTENCY_TOKEN] = {},
         },
      }),
   },
})

M.CreateDeploymentOutput = schema.new({
   id = id.from(_N, "CreateDeploymentResponse"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "CreateDeploymentOutput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
      }),
      iotJobId = schema.new({
         id = id.from(_N, "CreateDeploymentOutput", "iotJobId"),
         type = "string",
         name = "iotJobId",
         target_id = prelude.String.id,
      }),
      iotJobArn = schema.new({
         id = id.from(_N, "CreateDeploymentOutput", "iotJobArn"),
         type = "string",
         name = "iotJobArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteComponentInput = schema.new({
   id = id.from(_N, "DeleteComponentRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DeleteComponentInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteComponentOutput = prelude.Unit

M.DeleteCoreDeviceInput = schema.new({
   id = id.from(_N, "DeleteCoreDeviceRequest"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "DeleteCoreDeviceInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteCoreDeviceOutput = prelude.Unit

M.DeleteDeploymentInput = schema.new({
   id = id.from(_N, "DeleteDeploymentRequest"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "DeleteDeploymentInput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteDeploymentOutput = prelude.Unit

M.Deployment = schema.new({
   id = id.from(_N, "Deployment"),
   type = "structure",
   members = {
      targetArn = schema.new({
         id = id.from(_N, "Deployment", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "Deployment", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      deploymentId = schema.new({
         id = id.from(_N, "Deployment", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
      }),
      deploymentName = schema.new({
         id = id.from(_N, "Deployment", "deploymentName"),
         type = "string",
         name = "deploymentName",
         target_id = prelude.String.id,
      }),
      creationTimestamp = schema.new({
         id = id.from(_N, "Deployment", "creationTimestamp"),
         type = "timestamp",
         name = "creationTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      deploymentStatus = schema.new({
         id = id.from(_N, "Deployment", "deploymentStatus"),
         type = "string",
         name = "deploymentStatus",
         target_id = prelude.String.id,
      }),
      isLatestForTarget = schema.new({
         id = id.from(_N, "Deployment", "isLatestForTarget"),
         type = "boolean",
         name = "isLatestForTarget",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      parentTargetArn = schema.new({
         id = id.from(_N, "Deployment", "parentTargetArn"),
         type = "string",
         name = "parentTargetArn",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeComponentInput = schema.new({
   id = id.from(_N, "DescribeComponentRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DescribeComponentInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DescribeComponentOutput = schema.new({
   id = id.from(_N, "DescribeComponentResponse"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      componentName = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      creationTimestamp = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "creationTimestamp"),
         type = "timestamp",
         name = "creationTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      publisher = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "publisher"),
         type = "string",
         name = "publisher",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "status"),
         type = "structure",
         name = "status",
         target_id = id.from(_N, "CloudComponentStatus"),
         target = M.CloudComponentStatus,
      }),
      platforms = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "platforms"),
         type = "list",
         name = "platforms",
         target_id = prelude.Document.id,
         list_member = M.ComponentPlatform,
      }),
      tags = schema.new({
         id = id.from(_N, "DescribeComponentOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.DisassociateServiceRoleFromAccountInput = schema.new({
   id = id.from(_N, "DisassociateServiceRoleFromAccountRequest"),
   type = "structure",
})

M.DisassociateServiceRoleFromAccountOutput = schema.new({
   id = id.from(_N, "DisassociateServiceRoleFromAccountResponse"),
   type = "structure",
   members = {
      disassociatedAt = schema.new({
         id = id.from(_N, "DisassociateServiceRoleFromAccountOutput", "disassociatedAt"),
         type = "string",
         name = "disassociatedAt",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "DisassociatedAt" },
         },
      }),
   },
})

M.EffectiveDeploymentStatusDetails = schema.new({
   id = id.from(_N, "EffectiveDeploymentStatusDetails"),
   type = "structure",
   members = {
      errorStack = schema.new({
         id = id.from(_N, "EffectiveDeploymentStatusDetails", "errorStack"),
         type = "list",
         name = "errorStack",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      errorTypes = schema.new({
         id = id.from(_N, "EffectiveDeploymentStatusDetails", "errorTypes"),
         type = "list",
         name = "errorTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.EffectiveDeployment = schema.new({
   id = id.from(_N, "EffectiveDeployment"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "EffectiveDeployment", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      deploymentName = schema.new({
         id = id.from(_N, "EffectiveDeployment", "deploymentName"),
         type = "string",
         name = "deploymentName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      iotJobId = schema.new({
         id = id.from(_N, "EffectiveDeployment", "iotJobId"),
         type = "string",
         name = "iotJobId",
         target_id = prelude.String.id,
      }),
      iotJobArn = schema.new({
         id = id.from(_N, "EffectiveDeployment", "iotJobArn"),
         type = "string",
         name = "iotJobArn",
         target_id = prelude.String.id,
      }),
      description = schema.new({
         id = id.from(_N, "EffectiveDeployment", "description"),
         type = "string",
         name = "description",
         target_id = prelude.String.id,
      }),
      targetArn = schema.new({
         id = id.from(_N, "EffectiveDeployment", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      coreDeviceExecutionStatus = schema.new({
         id = id.from(_N, "EffectiveDeployment", "coreDeviceExecutionStatus"),
         type = "string",
         name = "coreDeviceExecutionStatus",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      reason = schema.new({
         id = id.from(_N, "EffectiveDeployment", "reason"),
         type = "string",
         name = "reason",
         target_id = prelude.String.id,
      }),
      creationTimestamp = schema.new({
         id = id.from(_N, "EffectiveDeployment", "creationTimestamp"),
         type = "timestamp",
         name = "creationTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      modifiedTimestamp = schema.new({
         id = id.from(_N, "EffectiveDeployment", "modifiedTimestamp"),
         type = "timestamp",
         name = "modifiedTimestamp",
         target_id = prelude.Timestamp.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      statusDetails = schema.new({
         id = id.from(_N, "EffectiveDeployment", "statusDetails"),
         type = "structure",
         name = "statusDetails",
         target_id = id.from(_N, "EffectiveDeploymentStatusDetails"),
         target = M.EffectiveDeploymentStatusDetails,
      }),
   },
})

M.GetComponentInput = schema.new({
   id = id.from(_N, "GetComponentRequest"),
   type = "structure",
   members = {
      recipeOutputFormat = schema.new({
         id = id.from(_N, "GetComponentInput", "recipeOutputFormat"),
         type = "string",
         name = "recipeOutputFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "recipeOutputFormat" },
         },
      }),
      arn = schema.new({
         id = id.from(_N, "GetComponentInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetComponentOutput = schema.new({
   id = id.from(_N, "GetComponentResponse"),
   type = "structure",
   members = {
      recipeOutputFormat = schema.new({
         id = id.from(_N, "GetComponentOutput", "recipeOutputFormat"),
         type = "string",
         name = "recipeOutputFormat",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      recipe = schema.new({
         id = id.from(_N, "GetComponentOutput", "recipe"),
         type = "blob",
         name = "recipe",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      tags = schema.new({
         id = id.from(_N, "GetComponentOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetComponentVersionArtifactInput = schema.new({
   id = id.from(_N, "GetComponentVersionArtifactRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "GetComponentVersionArtifactInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      artifactName = schema.new({
         id = id.from(_N, "GetComponentVersionArtifactInput", "artifactName"),
         type = "string",
         name = "artifactName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      s3EndpointType = schema.new({
         id = id.from(_N, "GetComponentVersionArtifactInput", "s3EndpointType"),
         type = "string",
         name = "s3EndpointType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "s3EndpointType" },
         },
      }),
      iotEndpointType = schema.new({
         id = id.from(_N, "GetComponentVersionArtifactInput", "iotEndpointType"),
         type = "string",
         name = "iotEndpointType",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_HEADER] = { name = "x-amz-iot-endpoint-type" },
         },
      }),
   },
})

M.GetComponentVersionArtifactOutput = schema.new({
   id = id.from(_N, "GetComponentVersionArtifactResponse"),
   type = "structure",
   members = {
      preSignedUrl = schema.new({
         id = id.from(_N, "GetComponentVersionArtifactOutput", "preSignedUrl"),
         type = "string",
         name = "preSignedUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetConnectivityInfoInput = schema.new({
   id = id.from(_N, "GetConnectivityInfoRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "GetConnectivityInfoInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetConnectivityInfoOutput = schema.new({
   id = id.from(_N, "GetConnectivityInfoResponse"),
   type = "structure",
   members = {
      connectivityInfo = schema.new({
         id = id.from(_N, "GetConnectivityInfoOutput", "connectivityInfo"),
         type = "list",
         name = "connectivityInfo",
         target_id = prelude.Document.id,
         list_member = M.ConnectivityInfo,
         traits = {
            [traits.JSON_NAME] = { name = "ConnectivityInfo" },
         },
      }),
      message = schema.new({
         id = id.from(_N, "GetConnectivityInfoOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "Message" },
         },
      }),
   },
})

M.GetCoreDeviceInput = schema.new({
   id = id.from(_N, "GetCoreDeviceRequest"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "GetCoreDeviceInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCoreDeviceOutput = schema.new({
   id = id.from(_N, "GetCoreDeviceResponse"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
      }),
      coreVersion = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "coreVersion"),
         type = "string",
         name = "coreVersion",
         target_id = prelude.String.id,
      }),
      platform = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "platform"),
         type = "string",
         name = "platform",
         target_id = prelude.String.id,
      }),
      architecture = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "architecture"),
         type = "string",
         name = "architecture",
         target_id = prelude.String.id,
      }),
      runtime = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "runtime"),
         type = "string",
         name = "runtime",
         target_id = prelude.String.id,
      }),
      status = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
      }),
      lastStatusUpdateTimestamp = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "lastStatusUpdateTimestamp"),
         type = "timestamp",
         name = "lastStatusUpdateTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      tags = schema.new({
         id = id.from(_N, "GetCoreDeviceOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetDeploymentInput = schema.new({
   id = id.from(_N, "GetDeploymentRequest"),
   type = "structure",
   members = {
      deploymentId = schema.new({
         id = id.from(_N, "GetDeploymentInput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetDeploymentOutput = schema.new({
   id = id.from(_N, "GetDeploymentResponse"),
   type = "structure",
   members = {
      targetArn = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
      }),
      revisionId = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "revisionId"),
         type = "string",
         name = "revisionId",
         target_id = prelude.String.id,
      }),
      deploymentId = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "deploymentId"),
         type = "string",
         name = "deploymentId",
         target_id = prelude.String.id,
      }),
      deploymentName = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "deploymentName"),
         type = "string",
         name = "deploymentName",
         target_id = prelude.String.id,
      }),
      deploymentStatus = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "deploymentStatus"),
         type = "string",
         name = "deploymentStatus",
         target_id = prelude.String.id,
      }),
      iotJobId = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "iotJobId"),
         type = "string",
         name = "iotJobId",
         target_id = prelude.String.id,
      }),
      iotJobArn = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "iotJobArn"),
         type = "string",
         name = "iotJobArn",
         target_id = prelude.String.id,
      }),
      components = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "components"),
         type = "map",
         name = "components",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = M.ComponentDeploymentSpecification,
      }),
      deploymentPolicies = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "deploymentPolicies"),
         type = "structure",
         name = "deploymentPolicies",
         target_id = id.from(_N, "DeploymentPolicies"),
         target = M.DeploymentPolicies,
      }),
      iotJobConfiguration = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "iotJobConfiguration"),
         type = "structure",
         name = "iotJobConfiguration",
         target_id = id.from(_N, "DeploymentIoTJobConfiguration"),
         target = M.DeploymentIoTJobConfiguration,
      }),
      creationTimestamp = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "creationTimestamp"),
         type = "timestamp",
         name = "creationTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      isLatestForTarget = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "isLatestForTarget"),
         type = "boolean",
         name = "isLatestForTarget",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      parentTargetArn = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "parentTargetArn"),
         type = "string",
         name = "parentTargetArn",
         target_id = prelude.String.id,
      }),
      tags = schema.new({
         id = id.from(_N, "GetDeploymentOutput", "tags"),
         type = "map",
         name = "tags",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.GetServiceRoleForAccountInput = schema.new({
   id = id.from(_N, "GetServiceRoleForAccountRequest"),
   type = "structure",
})

M.GetServiceRoleForAccountOutput = schema.new({
   id = id.from(_N, "GetServiceRoleForAccountResponse"),
   type = "structure",
   members = {
      associatedAt = schema.new({
         id = id.from(_N, "GetServiceRoleForAccountOutput", "associatedAt"),
         type = "string",
         name = "associatedAt",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "AssociatedAt" },
         },
      }),
      roleArn = schema.new({
         id = id.from(_N, "GetServiceRoleForAccountOutput", "roleArn"),
         type = "string",
         name = "roleArn",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "RoleArn" },
         },
      }),
   },
})

M.ListClientDevicesAssociatedWithCoreDeviceInput = schema.new({
   id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceRequest"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListClientDevicesAssociatedWithCoreDeviceOutput = schema.new({
   id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceResponse"),
   type = "structure",
   members = {
      associatedClientDevices = schema.new({
         id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceOutput", "associatedClientDevices"),
         type = "list",
         name = "associatedClientDevices",
         target_id = prelude.Document.id,
         list_member = M.AssociatedClientDevice,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListClientDevicesAssociatedWithCoreDeviceOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListComponentsInput = schema.new({
   id = id.from(_N, "ListComponentsRequest"),
   type = "structure",
   members = {
      scope = schema.new({
         id = id.from(_N, "ListComponentsInput", "scope"),
         type = "string",
         name = "scope",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "scope" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListComponentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListComponentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListComponentsOutput = schema.new({
   id = id.from(_N, "ListComponentsResponse"),
   type = "structure",
   members = {
      components = schema.new({
         id = id.from(_N, "ListComponentsOutput", "components"),
         type = "list",
         name = "components",
         target_id = prelude.Document.id,
         list_member = M.Component,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListComponentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListComponentVersionsInput = schema.new({
   id = id.from(_N, "ListComponentVersionsRequest"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "ListComponentVersionsInput", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListComponentVersionsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListComponentVersionsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListComponentVersionsOutput = schema.new({
   id = id.from(_N, "ListComponentVersionsResponse"),
   type = "structure",
   members = {
      componentVersions = schema.new({
         id = id.from(_N, "ListComponentVersionsOutput", "componentVersions"),
         type = "list",
         name = "componentVersions",
         target_id = prelude.Document.id,
         list_member = M.ComponentVersionListItem,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListComponentVersionsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListCoreDevicesInput = schema.new({
   id = id.from(_N, "ListCoreDevicesRequest"),
   type = "structure",
   members = {
      thingGroupArn = schema.new({
         id = id.from(_N, "ListCoreDevicesInput", "thingGroupArn"),
         type = "string",
         name = "thingGroupArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "thingGroupArn" },
         },
      }),
      status = schema.new({
         id = id.from(_N, "ListCoreDevicesInput", "status"),
         type = "string",
         name = "status",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "status" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListCoreDevicesInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCoreDevicesInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      runtime = schema.new({
         id = id.from(_N, "ListCoreDevicesInput", "runtime"),
         type = "string",
         name = "runtime",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "runtime" },
         },
      }),
   },
})

M.ListCoreDevicesOutput = schema.new({
   id = id.from(_N, "ListCoreDevicesResponse"),
   type = "structure",
   members = {
      coreDevices = schema.new({
         id = id.from(_N, "ListCoreDevicesOutput", "coreDevices"),
         type = "list",
         name = "coreDevices",
         target_id = prelude.Document.id,
         list_member = M.CoreDevice,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListCoreDevicesOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListDeploymentsInput = schema.new({
   id = id.from(_N, "ListDeploymentsRequest"),
   type = "structure",
   members = {
      targetArn = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "targetArn"),
         type = "string",
         name = "targetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "targetArn" },
         },
      }),
      historyFilter = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "historyFilter"),
         type = "string",
         name = "historyFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "historyFilter" },
         },
      }),
      parentTargetArn = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "parentTargetArn"),
         type = "string",
         name = "parentTargetArn",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "parentTargetArn" },
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDeploymentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListDeploymentsOutput = schema.new({
   id = id.from(_N, "ListDeploymentsResponse"),
   type = "structure",
   members = {
      deployments = schema.new({
         id = id.from(_N, "ListDeploymentsOutput", "deployments"),
         type = "list",
         name = "deployments",
         target_id = prelude.Document.id,
         list_member = M.Deployment,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListDeploymentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListEffectiveDeploymentsInput = schema.new({
   id = id.from(_N, "ListEffectiveDeploymentsRequest"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "ListEffectiveDeploymentsInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListEffectiveDeploymentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEffectiveDeploymentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListEffectiveDeploymentsOutput = schema.new({
   id = id.from(_N, "ListEffectiveDeploymentsResponse"),
   type = "structure",
   members = {
      effectiveDeployments = schema.new({
         id = id.from(_N, "ListEffectiveDeploymentsOutput", "effectiveDeployments"),
         type = "list",
         name = "effectiveDeployments",
         target_id = prelude.Document.id,
         list_member = M.EffectiveDeployment,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListEffectiveDeploymentsOutput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
      }),
   },
})

M.ListInstalledComponentsInput = schema.new({
   id = id.from(_N, "ListInstalledComponentsRequest"),
   type = "structure",
   members = {
      coreDeviceThingName = schema.new({
         id = id.from(_N, "ListInstalledComponentsInput", "coreDeviceThingName"),
         type = "string",
         name = "coreDeviceThingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      maxResults = schema.new({
         id = id.from(_N, "ListInstalledComponentsInput", "maxResults"),
         type = "integer",
         name = "maxResults",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxResults" },
         },
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListInstalledComponentsInput", "nextToken"),
         type = "string",
         name = "nextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      topologyFilter = schema.new({
         id = id.from(_N, "ListInstalledComponentsInput", "topologyFilter"),
         type = "string",
         name = "topologyFilter",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "topologyFilter" },
         },
      }),
   },
})

M.InstalledComponent = schema.new({
   id = id.from(_N, "InstalledComponent"),
   type = "structure",
   members = {
      componentName = schema.new({
         id = id.from(_N, "InstalledComponent", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "InstalledComponent", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      lifecycleState = schema.new({
         id = id.from(_N, "InstalledComponent", "lifecycleState"),
         type = "string",
         name = "lifecycleState",
         target_id = prelude.String.id,
      }),
      lifecycleStateDetails = schema.new({
         id = id.from(_N, "InstalledComponent", "lifecycleStateDetails"),
         type = "string",
         name = "lifecycleStateDetails",
         target_id = prelude.String.id,
      }),
      isRoot = schema.new({
         id = id.from(_N, "InstalledComponent", "isRoot"),
         type = "boolean",
         name = "isRoot",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      lastStatusChangeTimestamp = schema.new({
         id = id.from(_N, "InstalledComponent", "lastStatusChangeTimestamp"),
         type = "timestamp",
         name = "lastStatusChangeTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      lastReportedTimestamp = schema.new({
         id = id.from(_N, "InstalledComponent", "lastReportedTimestamp"),
         type = "timestamp",
         name = "lastReportedTimestamp",
         target_id = prelude.Timestamp.id,
      }),
      lastInstallationSource = schema.new({
         id = id.from(_N, "InstalledComponent", "lastInstallationSource"),
         type = "string",
         name = "lastInstallationSource",
         target_id = prelude.String.id,
      }),
      lifecycleStatusCodes = schema.new({
         id = id.from(_N, "InstalledComponent", "lifecycleStatusCodes"),
         type = "list",
         name = "lifecycleStatusCodes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ListInstalledComponentsOutput = schema.new({
   id = id.from(_N, "ListInstalledComponentsResponse"),
   type = "structure",
   members = {
      installedComponents = schema.new({
         id = id.from(_N, "ListInstalledComponentsOutput", "installedComponents"),
         type = "list",
         name = "installedComponents",
         target_id = prelude.Document.id,
         list_member = M.InstalledComponent,
      }),
      nextToken = schema.new({
         id = id.from(_N, "ListInstalledComponentsOutput", "nextToken"),
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

M.ResolveComponentCandidatesInput = schema.new({
   id = id.from(_N, "ResolveComponentCandidatesRequest"),
   type = "structure",
   members = {
      platform = schema.new({
         id = id.from(_N, "ResolveComponentCandidatesInput", "platform"),
         type = "structure",
         name = "platform",
         target_id = id.from(_N, "ComponentPlatform"),
         target = M.ComponentPlatform,
      }),
      componentCandidates = schema.new({
         id = id.from(_N, "ResolveComponentCandidatesInput", "componentCandidates"),
         type = "list",
         name = "componentCandidates",
         target_id = prelude.Document.id,
         list_member = M.ComponentCandidate,
      }),
   },
})

M.ResolvedComponentVersion = schema.new({
   id = id.from(_N, "ResolvedComponentVersion"),
   type = "structure",
   members = {
      arn = schema.new({
         id = id.from(_N, "ResolvedComponentVersion", "arn"),
         type = "string",
         name = "arn",
         target_id = prelude.String.id,
      }),
      componentName = schema.new({
         id = id.from(_N, "ResolvedComponentVersion", "componentName"),
         type = "string",
         name = "componentName",
         target_id = prelude.String.id,
      }),
      componentVersion = schema.new({
         id = id.from(_N, "ResolvedComponentVersion", "componentVersion"),
         type = "string",
         name = "componentVersion",
         target_id = prelude.String.id,
      }),
      recipe = schema.new({
         id = id.from(_N, "ResolvedComponentVersion", "recipe"),
         type = "blob",
         name = "recipe",
         target_id = prelude.Blob.id,
      }),
      vendorGuidance = schema.new({
         id = id.from(_N, "ResolvedComponentVersion", "vendorGuidance"),
         type = "string",
         name = "vendorGuidance",
         target_id = prelude.String.id,
      }),
      message = schema.new({
         id = id.from(_N, "ResolvedComponentVersion", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ResolveComponentCandidatesOutput = schema.new({
   id = id.from(_N, "ResolveComponentCandidatesResponse"),
   type = "structure",
   members = {
      resolvedComponentVersions = schema.new({
         id = id.from(_N, "ResolveComponentCandidatesOutput", "resolvedComponentVersions"),
         type = "list",
         name = "resolvedComponentVersions",
         target_id = prelude.Document.id,
         list_member = M.ResolvedComponentVersion,
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

M.UpdateConnectivityInfoInput = schema.new({
   id = id.from(_N, "UpdateConnectivityInfoRequest"),
   type = "structure",
   members = {
      thingName = schema.new({
         id = id.from(_N, "UpdateConnectivityInfoInput", "thingName"),
         type = "string",
         name = "thingName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
            [traits.JSON_NAME] = { name = "ThingName" },
         },
      }),
      connectivityInfo = schema.new({
         id = id.from(_N, "UpdateConnectivityInfoInput", "connectivityInfo"),
         type = "list",
         name = "connectivityInfo",
         target_id = prelude.Document.id,
         list_member = M.ConnectivityInfo,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "ConnectivityInfo" },
         },
      }),
   },
})

M.UpdateConnectivityInfoOutput = schema.new({
   id = id.from(_N, "UpdateConnectivityInfoResponse"),
   type = "structure",
   members = {
      version = schema.new({
         id = id.from(_N, "UpdateConnectivityInfoOutput", "version"),
         type = "string",
         name = "version",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "Version" },
         },
      }),
      message = schema.new({
         id = id.from(_N, "UpdateConnectivityInfoOutput", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "Message" },
         },
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
   id = id.from("com.amazonaws.greengrassv2", "GreengrassV2"),
   version = "2020-11-30",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.AssociateServiceRoleToAccount = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "AssociateServiceRoleToAccount"),
   input = M.AssociateServiceRoleToAccountInput,
   output = M.AssociateServiceRoleToAccountOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/greengrass/servicerole" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchAssociateClientDeviceWithCoreDevice = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "BatchAssociateClientDeviceWithCoreDevice"),
   input = M.BatchAssociateClientDeviceWithCoreDeviceInput,
   output = M.BatchAssociateClientDeviceWithCoreDeviceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.BatchDisassociateClientDeviceFromCoreDevice = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "BatchDisassociateClientDeviceFromCoreDevice"),
   input = M.BatchDisassociateClientDeviceFromCoreDeviceInput,
   output = M.BatchDisassociateClientDeviceFromCoreDeviceOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelDeployment = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "CancelDeployment"),
   input = M.CancelDeploymentInput,
   output = M.CancelDeploymentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/greengrass/v2/deployments/{deploymentId}/cancel" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateComponentVersion = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "CreateComponentVersion"),
   input = M.CreateComponentVersionInput,
   output = M.CreateComponentVersionOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/greengrass/v2/createComponentVersion" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateDeployment = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "CreateDeployment"),
   input = M.CreateDeploymentInput,
   output = M.CreateDeploymentOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/greengrass/v2/deployments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteComponent = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "DeleteComponent"),
   input = M.DeleteComponentInput,
   output = M.DeleteComponentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/greengrass/v2/components/{arn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCoreDevice = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "DeleteCoreDevice"),
   input = M.DeleteCoreDeviceInput,
   output = M.DeleteCoreDeviceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteDeployment = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "DeleteDeployment"),
   input = M.DeleteDeploymentInput,
   output = M.DeleteDeploymentOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/greengrass/v2/deployments/{deploymentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeComponent = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "DescribeComponent"),
   input = M.DescribeComponentInput,
   output = M.DescribeComponentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/components/{arn}/metadata" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisassociateServiceRoleFromAccount = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "DisassociateServiceRoleFromAccount"),
   input = M.DisassociateServiceRoleFromAccountInput,
   output = M.DisassociateServiceRoleFromAccountOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/greengrass/servicerole" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetComponent = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "GetComponent"),
   input = M.GetComponentInput,
   output = M.GetComponentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/components/{arn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetComponentVersionArtifact = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "GetComponentVersionArtifact"),
   input = M.GetComponentVersionArtifactInput,
   output = M.GetComponentVersionArtifactOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/components/{arn}/artifacts/{artifactName+}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetConnectivityInfo = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "GetConnectivityInfo"),
   input = M.GetConnectivityInfoInput,
   output = M.GetConnectivityInfoOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/things/{thingName}/connectivityInfo" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCoreDevice = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "GetCoreDevice"),
   input = M.GetCoreDeviceInput,
   output = M.GetCoreDeviceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetDeployment = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "GetDeployment"),
   input = M.GetDeploymentInput,
   output = M.GetDeploymentOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/deployments/{deploymentId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetServiceRoleForAccount = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "GetServiceRoleForAccount"),
   input = M.GetServiceRoleForAccountInput,
   output = M.GetServiceRoleForAccountOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/servicerole" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListClientDevicesAssociatedWithCoreDevice = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListClientDevicesAssociatedWithCoreDevice"),
   input = M.ListClientDevicesAssociatedWithCoreDeviceInput,
   output = M.ListClientDevicesAssociatedWithCoreDeviceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListComponents = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListComponents"),
   input = M.ListComponentsInput,
   output = M.ListComponentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/components" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListComponentVersions = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListComponentVersions"),
   input = M.ListComponentVersionsInput,
   output = M.ListComponentVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/components/{arn}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListCoreDevices = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListCoreDevices"),
   input = M.ListCoreDevicesInput,
   output = M.ListCoreDevicesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/coreDevices" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListDeployments = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListDeployments"),
   input = M.ListDeploymentsInput,
   output = M.ListDeploymentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/deployments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListEffectiveDeployments = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListEffectiveDeployments"),
   input = M.ListEffectiveDeploymentsInput,
   output = M.ListEffectiveDeploymentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListInstalledComponents = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListInstalledComponents"),
   input = M.ListInstalledComponentsInput,
   output = M.ListInstalledComponentsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListTagsForResource = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ListTagsForResource"),
   input = M.ListTagsForResourceInput,
   output = M.ListTagsForResourceOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ResolveComponentCandidates = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "ResolveComponentCandidates"),
   input = M.ResolveComponentCandidatesInput,
   output = M.ResolveComponentCandidatesOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/greengrass/v2/resolveComponentCandidates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "TagResource"),
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
   id = id.from("com.amazonaws.greengrassv2", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/tags/{resourceArn}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateConnectivityInfo = schema.operation({
   id = id.from("com.amazonaws.greengrassv2", "UpdateConnectivityInfo"),
   input = M.UpdateConnectivityInfoInput,
   output = M.UpdateConnectivityInfoOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/greengrass/things/{thingName}/connectivityInfo" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
